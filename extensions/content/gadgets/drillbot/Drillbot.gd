extends "res://content/gadgets/drillbot/Drillbot.gd"

signal state_changed(new_state)
signal modded_drillbot_added()
var _state: int = State.SLEEPING

func setState(to):
	super.setState(to)
	emit_signal("state_changed", to)
	
func _ready():
	super._ready()
	setState(_state)
