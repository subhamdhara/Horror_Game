extends StaticBody3D

var toggle = false
@export var interactable = true
@onready var animation_player: AnimationPlayer = $"../../AnimationPlayer"

func interact():
	if interactable == true:
		interactable = false
		toggle = !toggle
		if toggle == false:
			animation_player.play("close")
		if toggle == true:
			animation_player.play("open")
		await get_tree().create_timer(1.0, false).timeout
		interactable = true
