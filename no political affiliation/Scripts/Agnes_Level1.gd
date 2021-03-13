extends Node2D

var note = preload("res://Scenes/Note.tscn")

var y_position_spawn = -100



func note(playback, timing, pos):
	var delay = 600 / 550
	if playback >= timing - delay and playback <= timing + 0.05 - delay:
		spawn(pos)


func spawn(pos):
	var note_instance = note.instance()
	if pos == 1:
		note_instance.set_position(Vector2(362, y_position_spawn))
		self.add_child(note_instance)
	elif pos == 2:
		note_instance.set_position(Vector2(462, y_position_spawn))
		self.add_child(note_instance)
	elif pos == 3:
		note_instance.set_position(Vector2(562, y_position_spawn))
		self.add_child(note_instance)
	elif pos == 4:
		note_instance.set_position(Vector2(662, y_position_spawn))
		self.add_child(note_instance)


#set the notes spawning time using the function note(), which takes three
#arguments: playback, the current position of the song, timing, the moment 
#you want the note to spawn, and pos, which rail you want the note to spawn in.

func _process(_delta):
	var playback = $Music.get_playback_position()
	note(playback, 2.03, 1)
	note(playback, 4.06, 2)
	note(playback, 6.07, 3)
	note(playback, 8.10, 4)
	note(playback, 8.60, 4)
	note(playback, 9.20, 4)
	note(playback, 9.7, 4)
	note(playback, 10.1, 4)
	note(playback, 10.5, 4)
	note(playback, 10.9, 4)
	note(playback, 11.3, 4)
	note(playback, 11.7, 4)
	note(playback, 12.1, 4)
