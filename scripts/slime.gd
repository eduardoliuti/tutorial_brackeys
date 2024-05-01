extends Node2D

@onready var ray_cast_left = $RayCastLeft
@onready var ray_cast_right = $RayCastRight
@onready var animated_sprite = $AnimatedSprite2D

var direction = 1
const SPEED = 60

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true 
	elif ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	
	position.x += SPEED * direction * delta
