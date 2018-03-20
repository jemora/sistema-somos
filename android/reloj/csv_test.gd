extends Sprite

var csv_file = ("user://Panic.csv")

var DICT_HEADERS_LIST = []
var dict_to_append = []

func _ready():



#	pass


#func db_import(csv_file,dict_to_append,DICT_HEADERS_LIST):
#EDITED: In order to loop through keys of keys as noted in the
#EDITED section of the first post, EXTRA ARG is called DICT_HEADERS_LIST
	var file = File.new()
#creates a new Class instance.  
# A var will store this reference as 'file'. (file is not a string)
	file.open(csv_file, 1)
#the file is read into memory.  
# The .csv can now be manipulated with File methods.
	var is_header = true
#this bool will toggle to false once the while loop has run once.
	var  attributes_list =  []
#this list will store the first item of each column of the .csv
	file.seek(0)
#this makes sure that the reader's cursor position is at the first character.
	var temp_dict = {}
#a temporary dictionary which will only live within a call of this func.
	while !file.eof_reached():
#this says 'While the reader's cursor is not on the last character in the .csv
		var line = file.get_csv_line()
    #a variable called line will store an array of all of 
    # the Comma Separated Strings on one line of the .csv file




		if is_header == true:

    #Is the bool is_header true?
			attributes_list = line
        #yes, it is, so set the pre-made array variable above the while loop 
        # to equal the first line (which is also an array)
			for item in attributes_list:
        #EDITED: In order to loop through keys of keys #for each item in that array variable,
				DICT_HEADERS_LIST.append(item)
#				print(DICT_HEADERS_LIST)
            #EDITED: In order to loop through keys of keys #append the 
            # list-as-arg with whatever column header is being iterated over.
#			is_header = false
        #the above loop will not continue because now is_header is false.  
        # You now have a list of header attributes which will be used as keys to 
        # locate the specific values entered below them in the .csv file.
		else:
    #the header list has been created and is_header is false, so continue below
			for i in range(0,attributes_list.size()):
        #for each index, from the smallest to largest possible value in the array
	#			temp_dict[attributes_list[i]] = line[i]
#				var X = []
#				X[attributes_list[i]] = line[i]
				print(attributes_list[i])
            #create a key in the temp_dict variable that is named some item 
            # of the attribute_list i.e. the list of headers.
            #which header is used is notated by the index.
            #this created key will be defined i.e. have the value of an item in an array of strings 
            # i.e. the array of strings taken from a line in the .csv file.
#			dict_to_append[line[0]] = temp_dict
        #our permanent dictionary which we want to create will have a key 
        # that is named to be the first item in every line but the first's first item
#			temp_dict = {}
        #Edited as of 8/26/2016 , temp dict has to be cleared or it will only contain the last value
#	print(dict_to_append)
	
	











	"""
extends Sprite

var csv_file = ("user://Panic.csv")

var DICT_HEADERS_LIST = []
var dict_to_append = []

func _ready():



#	pass


#func db_import(csv_file,dict_to_append,DICT_HEADERS_LIST):
#EDITED: In order to loop through keys of keys as noted in the
#EDITED section of the first post, EXTRA ARG is called DICT_HEADERS_LIST
	var file = File.new()
#creates a new Class instance.  
# A var will store this reference as 'file'. (file is not a string)
	file.open(csv_file, 1)
#the file is read into memory.  
# The .csv can now be manipulated with File methods.
	var is_header = true
#this bool will toggle to false once the while loop has run once.
	var  attributes_list =  []
#this list will store the first item of each column of the .csv
	file.seek(0)
#this makes sure that the reader's cursor position is at the first character.
	var temp_dict = {}
#a temporary dictionary which will only live within a call of this func.
	while !file.eof_reached():
#this says 'While the reader's cursor is not on the last character in the .csv
		var line = file.get_csv_line()
    #a variable called line will store an array of all of 
    # the Comma Separated Strings on one line of the .csv file
		if is_header == true:

    #Is the bool is_header true?
			attributes_list = line
        #yes, it is, so set the pre-made array variable above the while loop 
        # to equal the first line (which is also an array)
			for item in attributes_list:
        #EDITED: In order to loop through keys of keys #for each item in that array variable,
				DICT_HEADERS_LIST.append(item)
#				print(DICT_HEADERS_LIST)
            #EDITED: In order to loop through keys of keys #append the 
            # list-as-arg with whatever column header is being iterated over.
			is_header = false
        #the above loop will not continue because now is_header is false.  
        # You now have a list of header attributes which will be used as keys to 
        # locate the specific values entered below them in the .csv file.
		else:
    #the header list has been created and is_header is false, so continue below
			for i in range(0,attributes_list.size()):
        #for each index, from the smallest to largest possible value in the array
				temp_dict[attributes_list[i]] = line[i]
            #create a key in the temp_dict variable that is named some item 
            # of the attribute_list i.e. the list of headers.
            #which header is used is notated by the index.
            #this created key will be defined i.e. have the value of an item in an array of strings 
            # i.e. the array of strings taken from a line in the .csv file.
			dict_to_append[line[0]] = temp_dict
        #our permanent dictionary which we want to create will have a key 
        # that is named to be the first item in every line but the first's first item
			temp_dict = {}
        #Edited as of 8/26/2016 , temp dict has to be cleared or it will only contain the last value
	print(dict_to_append)
	"""



	