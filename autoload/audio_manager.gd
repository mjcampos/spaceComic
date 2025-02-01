extends Node

func play_audio(resource_name : String):
	print(resource_name)
	var prefix = resource_name.get_slice("_", 0)
	match prefix:
		"music":
			$PlayerMusic.stream = $ResMusic.get_resource(resource_name)
			$PlayerMusic.play()
		"ui":
			$PlayerUI.stream = $ResUI.get_resource(resource_name)
			$PlayerUI.play()
		"sfx":
			$PlayerSFX.stream = $ResSFX.get_resource(resource_name)
			$PlayerSFX.play()
		"vo":
			$PlayerVO.stream = $ResVO.get_resource(resource_name)
			$PlayerVO.play()
		_:
			print("Audio playback failed: Unknown sound file prefix")
