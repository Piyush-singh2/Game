extends Node

@onready var score_label: Label = $Label


var score = 0
func add_points():
	score +=1
	score_label.text= str(score)
	
