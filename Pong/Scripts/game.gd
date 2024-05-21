extends Node2D

var player=preload("res://Scenes/player.tscn")
var ball=preload("res://Scenes/ball.tscn")

func _ready():
	add_child(player.instantiate())
	
	var center_position=Vector2(get_viewport_rect().size.x / 2, get_viewport_rect().size.y / 2)
	var ball_instance=ball.instantiate()
	ball_instance.position=center_position
	add_child(ball_instance)
