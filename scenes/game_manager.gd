extends Node

var score = 0

@onready var score_label = $scoreLabel

func add_point():
	score += 1
	score_label.text = "ypu colleted " + str(score) + " coins."
