extends "res://Mob.gd"


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _physics_process(delta):
	pass


func _pick_color():
	randomize()
	var colors = [
		Color.red,
		Color.orange,
		Color.yellow,
		Color.green,
		Color.indigo,
		Color.violet
	]
	color = colors[randi() % colors.size()]
