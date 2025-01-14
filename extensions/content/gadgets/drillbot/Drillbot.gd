extends "res://content/gadgets/drillbot/Drillbot.gd"

func goToSleep():
	super.goToSleep()
	Data.apply("drillbert.sleeping", true)
	#print("Drillbert went to sleep!")

func wakeUp():
	super.wakeUp()
	Data.apply("drillbert.sleeping", false)
	#print("Good morning Drillbert! Did you have any dreams?")
