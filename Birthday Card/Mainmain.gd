extends Node2D

var pixel_width = 20
var imageh =0
var imagew = 0
var color1 
var instance
var image
var particle = preload("res://Particle.tscn")
var explosion = preload("res://Explosion.tscn")
var building
var curx = 0
var cury = 0
var speed = 2
var square = false
var center
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	image = load("Watermelon.png")
	#image.rotate_90(0)
	#imageh = image.get_height()
	#imagew = image.get_width()
	#image.resize(imagew/20, imageh/20)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	for i in range(100):
		if building:
			build()
	print(speed)
func buildcanvas():
	pass
	imageh = image.get_height()
	imagew = image.get_width()
	center = Vector2(imagew*pixel_width/2, imageh*pixel_width/2)
	print(imageh)
	print(imagew)
	curx = 0
	cury = 0
	building = true

func build():
	color1 = image.get_pixel(curx,cury)
	if color1[3] == 1:
		spawn(Vector2(20*curx,20*cury),color1)
	print(str(curx)+","+str(cury))
	curx+= 1
	if curx >= imagew:
		curx = 0
		cury +=1
	if cury >= imageh:
		building = false
		curx =0
		cury =0
func spawn(position1, color):
	instance = particle.instantiate()
	$Pixels.add_child(instance)
	instance.global_position = position1
	instance.info(color, position1,speed, square)


func _on_button_pressed():
	for i in $Pixels.get_children():
		i.queue_free()
	buildcanvas()
	pass # Replace with function body.

func _on_button_2_pressed():
	for i in $Pixels.get_children():
		i.get_child(0).speed = 0
	speed = 0
	pass # Replace with function body.pass # Replace with function body.


func _on_button_3_pressed():
	for i in $Pixels.get_children():
		i.get_child(0).speed = 10
	speed = 10
	pass # Replace with function body.


func _on_button_4_pressed():
	for i in $Pixels.get_children():
		i.get_child(0).speed = 2
	speed = 1
	pass # Replace with function body.


func _on_button_5_pressed():
	for i in $Pixels.get_children():
		i.collisions()
	pass # Replace with function body.


func _on_button_6_pressed():
	square = true
	for i in $Pixels.get_children():
		i.queue_free()
	buildcanvas()
	square = false
	pass # Replace with function body.


func _on_button_7_pressed():
	pass # Replace with function body.
	var instance = explosion.instantiate()
	add_child(instance)
