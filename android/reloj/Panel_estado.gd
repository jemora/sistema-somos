extends Panel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():

	set_process(true)


	get_node("Button").connect("pressed",self,"_popup")

	pass




func _process(delta):
	get_node("Label1").set_text(str(get_name()))


func _popup():
	get_owner().get_node("PopupPanel").show()
	get_owner().get_node("PopupPanel").set_exclusive(1)
	get_owner().get_node("PopupPanel").popup()