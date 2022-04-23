extends KinematicBody2D


# Declare member variables here.
var radius = 0
var color = Color.fuchsia
var speed = 0
var velocity = Vector2()


# Called on instantiation
func _ready():
	# Set initial values of Mob
	_pick_color()
	increase_radius(10)
	increase_speed(50)
	set_collision_layer(1)
	set_collision_mask(1)
	get_node("MobDetectionArea").set_collision_layer(2)
	get_node("MobDetectionArea").set_collision_mask(2)


# Called every tick
func _process(delta):
	# update() calls _draw() (AKA it re-draws the Mob to the current location)
	update()


# Icreases radius by _amount, can be passed a negative value
func increase_radius(_amount):
	radius += _amount
	get_node("MobHitbox").shape.radius = radius
	get_node("MobDetectionArea/MobDetectionAreaHitbox").shape.radius = radius * 3


# Increases speed by _amount, can be passed a negative value
func increase_speed(_amount):
	speed += _amount


# Picks color of Mob
func _pick_color():
	color = Color.fuchsia


# Draws Mob to screen
func _draw():
	draw_circle(position, radius, color)
