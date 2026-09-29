extends Node2D


onready var camera: Camera2D = $Camera2D
#this centers
var offset: Vector2 = Vector2(-552, 50)

func set_camera_position(p_player_pos: Vector2) -> void:
	#set the position while following the offset value
	#skip y position while sending
	#position = offset + p_player_pos
	#lets test lerp by lerping x and y separately
	position.x = lerp(position.x, offset.x + p_player_pos.x, 0.1)
	position.y = lerp(position.y, offset.y + p_player_pos.y, 0.1)
	#happy with how camera moves
	#print("New camera position is: %s", [position])
 
