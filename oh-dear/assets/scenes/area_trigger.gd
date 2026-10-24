extends Area2D
@onready var Scene : Node2D = $"." as Node2D
@onready var Scene_Nr : int = int(self.name.substr(13))

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(Scene_Nr)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
