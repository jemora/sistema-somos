
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
	Registros_ID = get_owner().get_node(".").tipo_total

	var tipos = ""
	
	if Registros_ID[iconIndex] == "1":
		tipos = " Alimentación"
	if Registros_ID[iconIndex] == "2":
		tipos = " BNBT"
	if Registros_ID[iconIndex] == "3":
		tipos = " Ciencia, Tecnologia e Innovacion"
	if Registros_ID[iconIndex] == "4":
		tipos = " Comunas"
	if Registros_ID[iconIndex] == "5":
		tipos = " Creditos"
	if Registros_ID[iconIndex] == "6":
		tipos = " Educacion (inicial, basica, media)"
	if Registros_ID[iconIndex] == "7":
		tipos = " Educacion Universitaria"
	if Registros_ID[iconIndex] == "8":
		tipos = " Empleos"
	if Registros_ID[iconIndex] == "9":
		tipos = " Identificacion / Migracion"
	if Registros_ID[iconIndex] == "10":
		tipos = " Maltrato Infantil"
	if Registros_ID[iconIndex] == "11":
		tipos = " Mision JGH"
	if Registros_ID[iconIndex] == "12":
		tipos = " Salud"
	if Registros_ID[iconIndex] == "13":
		tipos = " Servicios Publicos"
	if Registros_ID[iconIndex] == "14":
		tipos = " Vivienda"




	get_node("Label").set_text(tipos)
#	get_node("Label").set_text(str(Registros_ID[iconIndex]))
#	get_node("Label1").set_text(Registros_ID.cedula)
#	get_node("Label2").set_text(Registros_ID.description)
#	total_item = get_node("/root/global").Registros[0].Name
#	total_item = get_node("/root/global").Registros.size() # total de registros
#	get_node("Label3").set_text(str(total_item))
#	print(total_item)







