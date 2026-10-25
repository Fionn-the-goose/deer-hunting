extends Node2D
var blende : CanvasModulate
var background_audio : AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	blende =  $"/root/DontDestroyOnLoad/blende"
	background_audio = $"/root/DontDestroyOnLoad/ambient"
	blende.visible = false
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_button_down() -> void:
	blende.visible = true
	background_audio.play()
	get_tree().change_scene_to_file("res://assets/scenes/levels/forest_start.tscn")
