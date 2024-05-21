extends CharacterBody2D
@export var speed=10000
var direction=Vector2.ZERO

func _ready():
	self.name="Ball"
	randomize()
	direction = Vector2(randf() * 2 - 1, randf() * 2 - 1).normalized() # set random start direction

func _process(delta):
	velocity=direction*speed*delta
	move_and_slide()
	


func _on_visible_on_screen_notifier_2d_screen_exited():
	pass # Replace with function body.


func _on_area_2d_body_entered(body):
	if(body.name=="Background"|| body.name=="Player"):
		direction= -direction
