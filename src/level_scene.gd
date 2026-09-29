extends Node2D


onready var cam: Node2D = $level_camera
onready var player: KinematicBody2D = $player


func _physics_process(_p_delta: float) -> void:
	cam.set_camera_position(player.get_player_position())
