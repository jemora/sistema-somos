extends Node2D

var CSV





var PanicArr = []


var request
var status = 1

func _ready():
	add_to_group("CSV")

#	get_node("HTTPRequest").request("http://localhost/godot_http_request/game.json")
#	get_node("HTTPRequest").request("http://localhost/godot_http_request/game.csv")
#	get_node("HTTPRequest").request("http://orinoco.local/multiplataforma/Panic.csv")
#	get_node("HTTPRequest").request("http://localhost/godot_http_request/Panic.csv")
#	get_node("HTTPRequest").request("http://fundacite-amazonas.gob.ve/prueba/Panic.csv")





#	get_node("HTTPRequest").connect("request_completed", self, "_on_HTTPRequest_request_completed")


	if has_node("Button_1"):
		get_node("Button_1").connect("pressed", self, "_reiniciar")



	var item = get_tree().get_nodes_in_group("item")
	for actualizar in item:
		actualizar.actualizar()
#		print("Actualizado...")








func _on_HTTPRequest_request_completed( result, response_code, headers, body ):
	
	
	if result == HTTPRequest.RESULT_SUCCESS:
		if response_code == 200:


			if status == 1: # descargar archivo web al disco-----------------
				request = get_node("HTTPRequest")
#				request.request("http://orinoco.local/multiplataforma/Panic.csv")
				request.request("http://fundacite-amazonas.gob.ve/prueba/ticket.csv")
				request.set_download_file("user://ticket.csv")
				
				print("Datos actualizados correctamente.")
				get_node("Mensaje1").set_text("Datos actualizados correctamente. "+ str(headers))
				status = 0
				
				var item = get_tree().get_nodes_in_group("item")
				for actualizar in item:
					actualizar.actualizar()
#					print("WW")


#				CSV = body.get_string_from_ascii() # CSV
#				PanicArr.append(CSV)
#				print(PanicArr)



	else:
		print("Error leyendo el archivo web")
		get_node("Mensaje1").set_text("Error leyendo el archivo web."+ str(response_code))
		




	
	
func _reiniciar():
#	get_tree().reload_current_scene()
	
	var item = get_tree().get_nodes_in_group("item")
	for actualizar in item:
		actualizar.actualizar()
		print("Ya...")
	
	
