extends Node


@onready var score_label: Label = $"../player/Camera2D/Label2"


var score = 0
func add_points():
	score +=1
	score_label.text= str(score)
	
