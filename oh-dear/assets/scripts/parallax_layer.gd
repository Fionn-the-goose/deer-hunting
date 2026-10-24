extends Node2D
@export var influence : float = .2
@export var Sprite : Sprite2D
@onready var cursor : Node2D = $"/root/DontDestroyOnLoad/Cursor" as Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if Sprite!=null:
		var currentSprite = self.get_child(0) as Sprite2D
		currentSprite.texture = Sprite
	pass 

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var pos : Vector2  = cursor.position
	position.x = pos.x * influence
	position.y = pos.y * influence * 0.5
