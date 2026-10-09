extends Label

func _process(delta: float) -> void:
	var fps = Engine.get_frames_per_second()
	var frame_time = delta * 1000.0
	
	text = "FPS: %d\nFrame Time: %.2f ms" % [fps, frame_time]
