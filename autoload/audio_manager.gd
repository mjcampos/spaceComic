extends Node


# file_string is [prefix]_[filename]
func play_audio(file_string : String):
	var prefix = file_string.get_slice("_", 0)
	match prefix:
		"music":
			$PlayerMusic.stream = $ResMusic.get_resource(file_string.get_slice("_", 1))
			$PlayerMusic.play()
		"ui":
			$PlayerUI.stream = $ResUI.get_resource(file_string.get_slice("_", 1))
			$PlayerUI.play()
		"sfx":
			$PlayerSFX.stream = $ResSFX.get_resource(file_string.get_slice("_", 1))
			$PlayerSFX.play()
		"vo":
			$PlayerVO.stream = $ResVO.get_resource(file_string.get_slice("_", 1))
			$PlayerVO.play()
		_:
			print("Audio playback failed: Unknown sound file prefix")
