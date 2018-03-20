extends Node





func ready():
#	print("XX")
	get_node("HTTPRequest").request("http://localhost/godot_http_request/game.json")
	





func _on_HTTPRequest_request_completed( result, response_code, headers, body ):
	print(result)
	
