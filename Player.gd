extends "res://Mob.gd"


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _physics_process(delta):
	var mouse_position = get_local_mouse_position()
	velocity = position.direction_to(mouse_position) * speed
	print(mouse_position)
	if position.distance_to(mouse_position) > radius:
		velocity = move_and_slide(velocity)


func _pick_color():
	color = Color.blue
