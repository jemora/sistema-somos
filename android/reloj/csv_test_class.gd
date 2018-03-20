extends Node

class Panic:
	export(String) var id = ""
	export(String) var cedula = "0"
	export(String) var carnet = ""
	export(String) var nombre = "" # title = nombre
#	export var controlGroup = 0
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


var f = File.new()
var PanicArr = []



var path = ("user://ticket.csv")



#--------------------------- LISTAS ----------------
var total_nombre = []

var add_estado
var estado_total = [] # almacenar la variable id
var estado_pendiente = [] # almacenar la variable id
var estado_proceso = [] # almacenar la variable id
var estado_solusionado = [] # almacenar la variable id





func _ready():
	add_to_group("http_csv")




#	pass

#Read CSV file and return array of all Panics
#func csv_to_PanicArray(path) :
#	print(path)



    
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
		var totales
		totales = csv_firstline[1]
#		print(totales)
 


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
			print(total_nombre)
			
			
			
			
			rowNumber = rowNumber + 1
			
#			var global = get_tree().get_nodes_in_group("global")
#			for estado in global:
#				estado.add_estado = PanicArr[rowNumber].nombre




   
		f.close()
	    
		return PanicArr
	
