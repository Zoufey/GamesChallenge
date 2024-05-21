extends RigidBody2D
@export var speed=100
var velocity=Vector2.ZERO

func _process(delta):
	velocity=Vector2.ZERO
	
	#todo:add pause action
	if (Input.is_action_pressed("move_down")):
		velocity.y=speed*delta
	if (Input.is_action_pressed("move_up")):
		velocity.y=-speed*delta
	move_and_collide(velocity)
