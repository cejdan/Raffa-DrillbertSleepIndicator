extends HudElement

func _ready():
	# This scene isn't actually ready until the drillbot.tscn is ready.
	# Wait for that one.
	var current_tree = get_tree()
	current_tree.connect("node_added", _on_node_added)
	$Sleeping.show()


func _on_node_added(node):
	if node.is_in_group("drillbots"):
		var drillbots = node
		drillbots.connect("state_changed", _on_drillbot_state_changed)

func _on_drillbot_state_changed(new_state):
	if new_state == 2: 
		# 2 is sleeping, I would prefer to use the enum name state.SLEEPING 
		# but I don't know how to import that var from drillbot.gd in this scene.
		# Maybe the signal could emit the string name "SLEEPING" instead? Still learning!
		$Sleeping.show()
		$Awake.hide()
	else:
		$Sleeping.hide()
		$Awake.show()
