extends Area2D
@onready var Scene : Node2D = $"root/Scene" as Node2D
@onready var Scene_Nr : int = int(self.name.substr(13))
@onready var cursor : Node2D = $"root/DontDestroyOnLoad/Cursor" as Node2D
@export var next_level : PackedScene
var enter

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(Scene_Nr)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_mouse_entered() -> void:
	#Scene.currentTrigger = Scene_Nr
	print(Scene)
	Scene.swap_level(Scene_Nr)
	pass # Replace with function body.
