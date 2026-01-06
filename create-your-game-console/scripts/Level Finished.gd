extends Area2D

@onready var level_cleared: Label = $LevelCleared


func _on_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	level_cleared.text="Congrats Level Cleared"
	
	
