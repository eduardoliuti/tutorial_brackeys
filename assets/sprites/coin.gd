extends Area2D


func _on_body_entered(body):
	print("+1 coin!") # Replace with function body.
	queue_free() 
