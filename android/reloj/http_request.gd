extends Node2D



class Panic:
	export(String) var id = ""
	export(String) var cedula = "0"
	export(String) var carnet = ""
	export(String) var nombre = "" # title = nombre
	export(String) var edad = ""
	export(String) var direccion = ""

	export(String) var telefono = ""
	export(String) var cargaFam = ""
	export(String) var description = ""
	export(String) var f_modificado = "" # updated_at = fecha de modificacion
	export(String) var f_creado = "" # created_at = fecha de registro
	export(String) var tipo_solicitud = "" # kind_id = tipo de solicitud

	export(String) var permisos = "" # user_id = permisos
	export(String) var institucion = "" # project_id = institucion
	export(String) var categoria = "" # category_id = categoria
	export(String) var prioridad = "" # priority_id = prioridad
	export(String) var estado = "" # status_id



var path = ("user://ticket.csv")

var configFile = ConfigFile.new()
var fecha_actulizado


var f = File.new()
var PanicArr = []

var CSV
var request
var status = 1
var CSV_descargado = 0


var Registros = []
var total_registros



export (Theme) var pendiente
export (Theme) var proceso
export (Theme) var solucionado
export (Theme) var tema_item

#--------------------------- LISTAS ----------------
var total_nombre = []

var add_estado
var estado_total = [] # almacenar la variable id
var estado_pendiente = [] # almacenar la variable id
var estado_proceso = [] # almacenar la variable id
var estado_solusionado = [] # almacenar la variable id

var cedula_total = []
var edad_total = []
var tipo_total = []


var tipo_alimentacion = []
var tipo_BNBT = []
var tipo_CTI = []
var tipo_Comunas = []
var tipo_Creditos = []
var tipo_educacion_inicial = []
var tipo_educacion_universitaria = []
var tipo_Empleos = []
var tipo_Identificacion = []
var tipo_Maltrato_Infantil = []
var tipo_Mision_JGH = []
var tipo_Salud = []
var tipo_Servicios_Publicos = []
var tipo_Vivienda = []









var activo = 1
var error = 2
var fecha






func _ready():
	add_to_group("CSV")
	
	set_process(true)

	VisualServer.set_default_clear_color(Color(0.8,0.8,0.8,1.0))
	OS.set_window_title("Somos") # titulo de la ventana de la aplicación
#	get_tree().set_auto_accept_quit(false)


#	http.connect("loading",self,"_on_loading")
#	http.connect("loaded",self,"_on_loaded")
#	http.get("http://orinoco.local/multiplataforma/ticket.csv","/page?id=1",80,false) #domain,url,port,useSSL

#	get_node("Mensaje").set_text("Cargando datos, por favor espere...")

	get_node("Total").set_theme(solucionado)
	get_node("Pendiente").set_theme(pendiente)
	get_node("En proceso").set_theme(proceso)
	get_node("Solucionados").set_theme(solucionado)
	get_node("Panel_informacion").set_theme(solucionado)
	get_node("PopupPanel").set_theme(solucionado)


	var item = get_tree().get_nodes_in_group("item_theme")
	for actualizar in item:
		actualizar.set_theme(tema_item)


#================= BOTONES ===================

#	get_node("Button").connect("pressed", self, "_on_Button_pressed")
	get_node("Recargar").connect("pressed", self, "_recargar")
	get_node("PopupPanel/Button").connect("pressed",self,"cerrar_popup")

#==============================================


	get_node("Total/Button").set_text("H")
	get_node("Pendiente/Button").set_text("3")
	get_node("En proceso/Button").set_text("B")
	get_node("Solucionados/Button").set_text("D")

	get_node("Panel_informacion/Label").set_text("Actualizando estado de solicitud......")
	get_node("Mensaje").set_text("Verificando datos web, por favor espere...")






#================= HTTP ===================

#	get_node("HTTPRequest").request("http://localhost/godot_http_request/game.json")
#	get_node("HTTPRequest").request("http://orinoco.local/multiplataforma/ticket.csv")
	get_node("HTTPRequest").request("http://fundacite-amazonas.gob.ve/somos/export/ticket.csv")
#-------------------------------------------------
	get_node("HTTPRequest").connect("request_completed", self, "_on_HTTPRequest_request_completed")
#==========================================




func _recargar():
	status = 0
	print("Recargando...")
	get_tree().reload_current_scene()





func _on_HTTPRequest_request_completed( result, response_code, headers, body ):


	if result == HTTPRequest.RESULT_SUCCESS:

		
		if response_code == 200 and status == 1:
			print("Recargando...")


			if status == 1:
				
				request = get_node("HTTPRequest") # descargar archivo web al disco-----------------
#				request.request("http://orinoco.local/multiplataforma/ticket.csv") # maria y jose
				request.request("http://fundacite-amazonas.gob.ve/somos/export/ticket.csv")
				request.set_download_file("user://ticket.csv")



				print("Datos actualizados correctamente.")
#				get_node("Mensaje1").set_text("Datos actualizados correctamente. "+ str(headers))
				get_node("Mensaje").set_text("Datos actualizados correctamente.")
				status = 0

#				CSV = body.get_string_from_ascii() # CSV
#				PanicArr.append(CSV)
#				print(PanicArr)

				var segundos = OS.get_time()["second"]
				var minutos = OS.get_time()["minute"]
				var hora = OS.get_time()["hour"]
				var time = OS.get_time(1)
				var datetime = OS.get_datetime(1)
				fecha = str(datetime["day"])+"-"+str(datetime["month"])+"-"+str(datetime["year"])+" a las "+str(hora)+":"+str(minutos).pad_zeros(2)+str(" minutos")
				print(fecha)
				configFile.load("user://datos.csv") # llama el archivo
				configFile.set_value("FECHA", "actualizado", fecha)
				configFile.save("user://datos.csv") # guarda el archivo





	else:
		print("Error leyendo el archivo web")
		status = 0
		configFile.load("user://datos.csv") # llama el archivo
		if configFile.has_section_key("FECHA", "actualizado"):
			fecha_actulizado = configFile.get_value("FECHA", "actualizado", fecha)
			get_node("Mensaje").set_text("Error accediendo al servidor web, es posible que no tenga conexión a internet. La ultima actualización de datos fué el "+ str(fecha_actulizado))
#			print(fecha_actulizado)





	if status == 0:
#				var item = get_tree().get_nodes_in_group("item")
#				for actualizar in item:
#					actualizar.actualizar()
			actualizar()
#			print(status)
			pass





#============================================================
#============================================================

func actualizar():
	var CSV = ConfigFile.new()
	error = CSV.load("user://ticket.csv")
#	print(error)
#	print(status)




	if error == 19:
		get_node("Mensaje").set_text("¡Lo siento! aun no hay datos descargados, por favor verifique su conexión a internet y vuelva a intentar.")
#		print("CSV-NO_EXISTE")

	if error == 0: # VERIFICA QUE EL ARCHIVO HAYA SIDO COPIADO EN EL DISCO
#		get_node("Mensaje").set_text("Datos descargados con exito...")
#		print("CSV-EXISTE")
		CSV_descargado = 1



	if CSV_descargado == 1:
		
		var open_return = f.open(path, 1)  # Example "res://csv/Panic.csv", 1 = READ
		var fileExist = f.file_exists(path)

		
		if fileExist == false:
			print("Error Error Error: File Can't be Load ", path)
			print("Error Error Error: open() ffunc() return code = " + var2str(open_return))
			print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!")
		else:



    
		    #(1) READ 1st CSV Line - header        
			f.open(path, 1)
			var csv_firstline = f.get_csv_line()  #: csv_firstline is array
#			var totales
#			totales = csv_firstline[1]
#			print(totales)
	 
	
	
	#		for item in csv_firstline:
	#			if item == "cedula":
					
	#				print("xx")
	
	
	
	
			var rowNumber = 0
		    #(2) READ rest of it - line by line
			while f.eof_reached() == false:

				var csv_line = f.get_csv_line()
				PanicArr.append(1)
	#			print(PanicArr) # Numero de regisros ---------------------------
				PanicArr[rowNumber] = Panic.new() #
	#			print(PanicArr.size()) # Numero de regisros ---------------------------
	
	
	
	
	
				var columnsCount = 0
		        #(3) Parse each line and set value to the class
				for column in csv_line:
					var todo = csv_firstline[columnsCount] #todo is a Column's name
	#				print(todo)
				
	
	
	
	
					if todo == "id" :
	#					PanicArr[rowNumber].iconName = column # setClassName
						PanicArr[rowNumber].id = int(column)
	#					PanicArr[rowNumber].iconIndex = int(column.right(5))
	
					elif todo == "cedula" :
						PanicArr[rowNumber].cedula = column
					elif todo == "carnet" :
						PanicArr[rowNumber].carnet = column
					elif todo == "title" :
						PanicArr[rowNumber].nombre = column
					elif todo == "edad" :
						PanicArr[rowNumber].edad = column
					elif todo == "direccion" :
						PanicArr[rowNumber].direccion = column
	
					elif todo == "telefono" :
						PanicArr[rowNumber].telefono = column
					elif todo == "cargaFam" :
						PanicArr[rowNumber].cargaFam = column
					elif todo == "description" :
						PanicArr[rowNumber].description = column
					elif todo == "updated_at" :
						PanicArr[rowNumber].f_modificado = column
					elif todo == "created_at" :
						PanicArr[rowNumber].f_creado = column
	
					elif todo == "kind_id" :
						PanicArr[rowNumber].tipo_solicitud = column
					elif todo == "user_id" :
						PanicArr[rowNumber].permisos = column
					elif todo == "project_id" :
						PanicArr[rowNumber].institucion = column
					elif todo == "category_id" :
						PanicArr[rowNumber].categoria = column
					elif todo == "priority_id" :
						PanicArr[rowNumber].prioridad = column
					elif todo == "status_id" :
						PanicArr[rowNumber].estado = column
	
	
	
	
	
	#				var registro_N = PanicArr[rowNumber] # filas
	#				print(registro_N.nombre)
	
	#				total_nombre.append(registro_N.nombre) # ID de cada columna
		           
		           ##################################################
		           ######### Add New Class memeber if it need over here.  Update class and CSV file with new column
		           ##################################################   
					columnsCount = columnsCount + 1
	#			print(PanicArr[rowNumber].iconName ," ", PanicArr[rowNumber].iconIndex," ", PanicArr[rowNumber].Name," ", PanicArr[rowNumber].nicName," ", PanicArr[rowNumber].controlGroup ," ", PanicArr[rowNumber].note)
	#			print(PanicArr[rowNumber].nombre )
				total_nombre.append(PanicArr[rowNumber].nombre) # ID de cada columna
				estado_total.append(PanicArr[rowNumber].estado) # ID de cada columna
				cedula_total.append(PanicArr[rowNumber].cedula) # ID de cada columna
				edad_total.append(PanicArr[rowNumber].edad) # ID de cada columna
				tipo_total.append(PanicArr[rowNumber].tipo_solicitud) # ID de cada columna



#				print(cedula_total[0])








#				print(estado_total)


				rowNumber = rowNumber + 1


			f.close() 
			cargar_datos()

			var item = get_tree().get_nodes_in_group("item")
			for actualizar in item:
				actualizar.actualizar()


			return PanicArr


#============================================================
#============================================================





func _process(delta):
#	cargar_datos()



#	get_node("Total/Label").set_text(str(PanicArr.size()-1))
#	get_node("Pendiente/Label").set_text(str(get_node("/root/global").estado_pendiente.size()))
#	get_node("En proceso/Label").set_text(str(get_node("/root/global").estado_proceso.size()))
#	get_node("Solucionados/Label").set_text(str(get_node("/root/global").estado_solusionado.size()))
#	get_node("Panel_informacion/Label").set_text("Actualizando estado de solicitud "+str(get_node("/root/global").estado_total.size()) + " / " + (str(get_node("/root/global").Registros.size()-1)))

	pass





#============================================================
#============================================================

func cargar_datos():

	if CSV_descargado == 1 and activo == 1:
		activo = 0
		
		var estado_1 = "1"
		var pendiente

		var estado_2 = "2"
		var proceso

		var estado_3 = "3"
		var solusionado













#		total_registros = Registros.size() -1
		get_node("Total/Label").set_text(str(PanicArr.size()-1))
#		get_node("Pendiente/Label").set_text(str(estado_pendiente.size()))
		get_node("Panel_informacion/Label").set_text("Actualizando estado de solicitud "+str(PanicArr.size()-1) + " / " + (str(PanicArr.size()-1)))







#-----------------LISTAS DESGLOSADAS PENDIENTE-----------------------

#-----------------estado_pendiente-----------------------
		for i in range(0, estado_total.size()):
			if(estado_total[i] == estado_1): # ubica la pocision de la variable (estado_) en la lista (estado_total)
				pendiente = i


#				if next == estado_total.size(): # cuando next lea toda la lista estado_total
				estado_pendiente.append(pendiente) # -------LISTA ESTADO PENDIENTE (1) -------
#				print("estado_pendiente ", estado_pendiente)
#				print("estado_pendiente_total ", estado_pendiente.size())
				get_node("Pendiente/Label").set_text(str(estado_pendiente.size()))


#-----------------estado en proceso-----------------------
		for i in range(0, estado_total.size()):
			if(estado_total[i] == estado_2): # ubica la pocision de la variable (estado_) en la lista (estado_total)
				proceso = i

#				if next == estado_total.size(): # cuando next lea toda la lista estado_total
				estado_proceso.append(proceso) # -------LISTA ESTADO EN PROCESO (2) -------
#				print("estado_proceso ", estado_proceso)
				get_node("En proceso/Label").set_text(str(estado_proceso.size()))


#-----------------estado solusionado -----------------------
		for i in range(0, estado_total.size()):
			if(estado_total[i] == estado_3): # ubica la pocision de la variable (estado_) en la lista (estado_total)
				solusionado = i

#				if next == estado_total.size(): # cuando next lea toda la lista estado_total
				estado_solusionado.append(solusionado) # -------LISTA ESTADO EN PROCESO (3) -------
#				print("estado_solusionado ", estado_solusionado)
				get_node("Solucionados/Label").set_text(str(estado_solusionado.size()))








#-----------------LISTAS DESGLOSADAS TIPOS -----------------------

#----------------- tipo_Alimentacion (0) -----------------------
		for i in range(0, tipo_total.size()):
			if(tipo_total[i] == "1"): # ubica la pocision de la variable (estado_) en la lista (estado_total)
				var alimentacion
				alimentacion = i


#				if next == estado_total.size(): # cuando next lea toda la lista estado_total
				tipo_alimentacion.append(alimentacion) # -------LISTA TIPO PENDIENTE (1) -------
#				print("tipo_alimentacion ", tipo_alimentacion)
#				print("tipo_alimentacion ", tipo_alimentacion.size())
#				get_node("Pendiente/Label").set_text(str(estado_pendiente.size()))













#============================================================
#============================================================



func _notification(what):
	if what == MainLoop.NOTIFICATION_WM_QUIT_REQUEST:
		get_node("Mensaje").set_text("Salir----")




func _on_loading(loaded,total):
	var percent = loaded*100/total
	print(percent)

func _on_loaded(result):
	var result_string = result.get_string_from_ascii()
	print(result_string)



func _on_Button_pressed():
	get_tree().change_scene("res://datos_http.scn")
	
	
func cerrar_popup():
	get_node("PopupPanel").hide()
	get_node("PopupPanel").set_exclusive(0)





	
