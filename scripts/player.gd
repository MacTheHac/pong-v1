extends CharacterBody2D

const SPEED := 520.0
const LEFT_LIMIT := 150.0
const RIGHT_LIMIT := 810.0

func _physics_process(_delta: float) -> void:
	var direction := Input.get_axis("move_left", "move_right")
	velocity.x = direction * SPEED
	velocity.y = 0.0

	move_and_slide()
	position.x = clamp(position.x, LEFT_LIMIT, RIGHT_LIMIT)
