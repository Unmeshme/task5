extends KinematicBody2D



var velocity: Vector2 = Vector2.ZERO
var gravity: float = 2000
var jump_power: float = -650
var move_speed: float = 400


func get_input() -> void:
	if Input.is_action_just_pressed("jump"):
		velocity.y = jump_power


func _physics_process(p_delta: float) -> void:
	get_input()
	velocity.y += gravity * p_delta
	velocity.x = move_speed

	#move and slide already calculates the delta time calculation
	velocity = move_and_slide(velocity, Vector2.UP)

func get_player_position() -> Vector2:
	var m_position: Vector2 = position
	
	if position.y < 300:
		m_position.y = -100
	else:
		m_position.y = 0
	return m_position
