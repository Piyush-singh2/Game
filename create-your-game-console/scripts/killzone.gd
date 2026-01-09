extends Area2D


# Called when the node enters the scene tree for the first time.
@onready var timer: Timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	print("U died")
	body.get_node("CollisionShape2D").queue_free()
	Engine.time_scale = 0.5
	timer.start()

func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().change_scene_to_file("res://scenes/death_scene.tscn")

func _ready():
	Global.last_scene_path = get_tree().current_scene.scene_file_path
