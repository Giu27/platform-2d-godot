extends AnimatedSprite2D

class_name AnimationController 
@onready var player: Player = $".."

const MOVEMENT_TO_IDLE = {
	"run_right" : "idle_right",
	"run_left" : "idle_left"
}

func play_mov_animation(velocity):
	if velocity.x > 0:
		play("run_right")
	elif velocity.x < 0:
		play("run_left")
func play_idle_animation():
	if MOVEMENT_TO_IDLE.keys().has(animation):
		play(MOVEMENT_TO_IDLE[animation])
