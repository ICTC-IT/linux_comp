#!/usr/bin/python

# IMPORTS
from Tkinter import *
import os

# CLASSES
class Application(Frame):
	# FUNCTIONS

	## HELP FUNCTION CALL
	def help(self):
		# REPLACE THIS WITH THE FULL HELP FUNCTION
		os.system("ls")

	## WIDGET CREATION FUNCTION
	def createWidgets(self):

		# SETTING QUIT PROP.
		self.QUIT            = Button(self)
		self.QUIT["text"]    = "QUIT"
		self.QUIT["fg"]      = "red"
		self.QUIT["command"] = self.quit

		# SETTING QUIT GEO.
		self.QUIT.pack({"side": "left"})

		# SETTING HELP PROP.
		self.help_call            = Button(self)
		self.help_call["text"]    = "help"
		self.help_call["command"] = self.help

		# SETTING SAYHI GEO.
		self.help_call.pack({"side": "left"})

	## INITIALIZATION FUNCTION
	def __init__(self, master=None):
		Frame.__init__(self, master)
		self.pack()
		self.createWidgets()

# CALLING FUNCTIIONS AND CLASSES
root = Tk()
app  = Application(master=root)
app.mainloop()
root.destroy()
