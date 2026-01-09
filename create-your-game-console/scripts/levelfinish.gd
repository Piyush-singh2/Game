extends Node2D


@onready var label_2: Label = $"../Label2"

#
#func level_cleared():
	#if level_number >= Global.max_level_unlocked:
		#Global.max_level_unlocked = level_number + 1
#



func _on_area_2d_body_entered(body: Node2D) -> void:
	label_2.text = "Congratulations level cleared"
	
	get_tree().change_scene_to_file("res://scenes/level_cleared.tscn")
	
