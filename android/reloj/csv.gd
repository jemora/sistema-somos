
extends Button


var Registros_ID 
var nodeThis 
var iconIndex

var total_item

export var Item = 0


func _ready():
	add_to_group("item")
	add_to_group("item_theme")
#	actualizar()

#	Registros_ID = get_owner().get_node(".").total_nombre



func actualizar():
	nodeThis = get_node(".")
	var name = nodeThis.get_name()
	iconIndex = int(name.right(4))
	#This Icon
#	Registros_ID =  get_node("/root/global").Registros[iconIndex]
	Registros_ID = get_owner().get_node(".").total_nombre

	get_node("Label").set_text(str(Registros_ID[iconIndex]))
#	get_node("Label1").set_text(Registros_ID.cedula)
#	get_node("Label2").set_text(Registros_ID.description)
#	total_item = get_node("/root/global").Registros[0].Name
#	total_item = get_node("/root/global").Registros.size() # total de registros
#	get_node("Label3").set_text(str(total_item))
#	print(total_item)

