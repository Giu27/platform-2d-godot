extends CharacterBody2D

const SPEED = 5000.0
var direction = Vector2(1, 0)

func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	if $RayCast2Dl.is_colliding():
		direction.x = 1
	elif $RayCast2Dr.is_colliding():
		direction.x = -1

	if direction:
		velocity.x = direction.x * SPEED * delta


	move_and_slide()
