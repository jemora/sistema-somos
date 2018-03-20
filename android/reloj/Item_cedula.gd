
extends Button


var Registros_ID 
var nodeThis 
var iconIndex

var total_item


export var tipo_campo = 1 # columnas de la tabla, los tipos estan en ready

var Item = 0      # numero de las filas para crear las tablas, NO debe ser mayor que los registros en la lista o genera error.
var N_fila = 0 # la variable que buscara en las listas
var filtrar_por = 4 #Tipos:
# 1 Registro general
# 2 estado_pendiente
# 3 estado_proceso
# 4 estado_solusionado


func _ready():
	add_to_group("item")
	add_to_group("item_theme")
#	actualizar()





	connect("pressed",self,"_popup")



	if tipo_campo ==1:
		get_node("Label").set_text("Cédula")
	if tipo_campo ==2:
		get_node("Label").set_text("Nombre")
	if tipo_campo ==3:
		get_node("Label").set_text("Edad")
	if tipo_campo ==4:
		get_node("Label").set_text("Tipo de caso")




func actualizar():
	nodeThis = get_node(".")
	var name = nodeThis.get_name()
	iconIndex = int(name.right(4))



	if tipo_campo ==1:
		Registros_ID = get_owner().get_node(".").cedula_total
	if tipo_campo ==2:
		Registros_ID = get_owner().get_node(".").total_nombre
	if tipo_campo ==3:
		Registros_ID = get_owner().get_node(".").edad_total
	if tipo_campo ==4:
		Registros_ID = get_owner().get_node(".").tipo_total




	if filtrar_por == 1: # registro general
		N_fila = Item




	if filtrar_por == 2: # estado_pendiente	
		var estado_pendiente = get_owner().get_node(".").estado_pendiente
		N_fila = estado_pendiente[Item]

	if filtrar_por == 3: # estado_proceso	
		var estado_proceso = get_owner().get_node(".").estado_proceso
		N_fila = estado_proceso[Item]

	if filtrar_por == 4: # estado_proceso	
		var estado_solusionado = get_owner().get_node(".").estado_solusionado
		N_fila = estado_solusionado[Item]
#		print("estado_solusionado ", estado_solusionado)



	get_node("Label").set_text(str(Registros_ID[N_fila]))
#	get_node("Label1").set_text(Registros_ID.cedula)
#	get_node("Label2").set_text(Registros_ID.description)
#	total_item = get_node("/root/global").Registros[0].Name
#	total_item = get_node("/root/global").Registros.size() # total de registros
#	get_node("Label3").set_text(str(total_item))
#	print(N_fila)

#	print_prueba = get_owner().get_node(".").estado_pendiente
#	print("print_prueba ", str(print_prueba[N_fila]))




func _popup():
	get_owner().get_node("PopupPanel").show()
	get_owner().get_node("PopupPanel").set_exclusive(1)
	get_owner().get_node("PopupPanel").popup()



