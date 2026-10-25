extends Area2D
@onready var Scene_Nr : int = int(self.name.substr(13))
@onready var cursor : Node2D
@export var next_level : PackedScene
var has_enter : bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(Scene_Nr)
	cursor = $"/root/DontDestroyOnLoad/Cursor"
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event: InputEvent) -> void:
	if event.is_action("click") && has_enter:
		cursor.active.texture = load("res://assets/deer/Kreuzbert.png")
		get_tree().change_scene_to_packed(next_level)

func _on_mouse_entered() -> void:
	#Scene.currentTrigger = Scene_Nr
	has_enter = true
	cursor.active.texture = load("res://assets/dev_sprites/DEV_blende.2.png")
	pass # Replace with function body.

func _on_mouse_exited() -> void:	
	has_enter = false
	cursor.active.texture = load("res://assets/deer/Kreuzbert.png")
	pass # Replace with function body.
