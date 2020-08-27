import serial
from tkinter import messagebox
import ttk
import mysql.connector as myp
import time
import datetime
try:
    from tkinter import *
except:
    from tkinter import *



def ex():
    ex = messagebox.askyesno(title= "Quit", message="Are you Sure?")
    if ex >0:
        root.destroy()
        return
thing = ' '

class main:
    def __init__(self,root,ser):
        self.ser=ser
        self.root=root
        self.root.title("RFID DATA MONITOR")
        self.root.geometry('700x300-30+30')
        self.root.resizable(width=True,height=True)

        self.s = StringVar()
        self.s1 = StringVar()

        self.tree = ttk.Treeview(root)
        self.tree["columns"] = ("TimeStamp", "UID", "Authentication")
        self.tree.column("TimeStamp", width=150)
        self.tree.column("UID", width=100)
        self.tree.column("Authentication", width=100)
        
        self.tree.heading("TimeStamp", text="Time")
        self.tree.heading("UID", text="UID")
        self.tree.heading("Authentication", text="Authentication")
        
        self.tree.pack()
        self.root.after(60,self.min)

    def min(self):

        thing = self.ser.readline().decode('ascii')
        string = str(thing)
        #print(string) Used for testing whether serial connection is open or not
        i=0
        j=0
        #Splicing recieved output into individual components using ':' delimiter. Change delimiter if RFID uses some other symbol
        for i in range(0, len(string)):
            if string[i] == ':':
                break
        v = string[0:i]
        for j in range(i+1, len(string)):
            if string[j] == ':':
                break
        c = string[i+1:j]
        self.s.set(v)
        self.s1.set(c)

        self.root.after(500, self.min)

        #Connect To Database
        conn = myp.connect(
        host="localhost",
        user="root",
        passwd="1234",
        database="rfidreader"
        )
        #Create Cursor
        cur = conn.cursor()
        if len(v)>0 and len(c)>0:

            unix = time.time()
            date = str(datetime.datetime.fromtimestamp(unix).strftime('%Y-%m-%d %H:%M:%S'))
            sql1= "INSERT INTO carddetails(datestamp, uid, authmessage) VALUES (%s,%s,%s)"
            val1= (date, v, c)
            cur.execute(sql1,val1)
            conn.commit()
            #Connection
            conn = myp.connect(
            host="localhost",
            user="root",
            passwd="1234",
            database="rfidreader"
            )
            #Create Cursor
            cur = conn.cursor()
            cur.execute('SELECT datestamp, uid, authmessage FROM carddetails ORDER BY datestamp DESC LIMIT 10')
            for row in cur.fetchall():
                    print(row)
            self.tree.insert("", 0, text="FETCHED --- >", values=(date, v, c))
        self.root.update()


def stopServer():
    sure=messagebox.askyesno(title='Quit',message='Are you Sure?')
    if sure >0:
        root.destroy()
        return
def startServer():
    com = 'com4' #Change value if using different COM Port
    ser = serial.Serial(com, 9600, timeout=0)

    main(root,ser)
    return

root = Tk()

root.geometry("500x250+50+50")
root.title('RFID DATA MONITOR')
root.resizable(width=True,height=True)

startServer()

#Menu
menubar=Menu(root)
optionsmenu = Menu(menubar, tearoff = 0)
optionsmenu.add_command(label="Exit", command= ex)
optionsmenu.add_separator()
menubar.add_cascade(label="Options",menu=optionsmenu)
root.config(menu=menubar)
root.mainloop()
