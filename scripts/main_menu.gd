extends Control

@onready var music_player: AudioStreamPlayer = $"Music Player"
@onready var button_audio: AudioStreamPlayer = $Button_audio_test/button_audio

@onready var MASTER_BUS_ID = AudioServer.get_bus_index("Master")
@onready var MUSIC_BUS_ID = AudioServer.get_bus_index("Music")
@onready var SFX_BUS_ID = AudioServer.get_bus_index("SFX")

@onready var audio_menu: Control = %"Audio Menu"
@onready var buttons: Control = %"Main Buttons"

func _on_button_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/game.tscn")
	Dialogic.start("res://dialogic/timelines/timeline-teste.dtl")
	
func _on_button_load_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/load_menu.tscn")
	
func _on_button_options_pressed() -> void:
	buttons.visible = false
	audio_menu.visible = true

func _on_comeback_button_pressed() -> void:
	buttons.visible = true
	audio_menu.visible = false

func _on_button_extras_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/extras_menu.tscn")

func _on_button_quit_pressed() -> void:
	get_tree().quit()

func _on_button_audio_test_pressed() -> void:
	button_audio.play()

# Audios
func _on_master_slider_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(MASTER_BUS_ID, linear_to_db(value))

func _on_music_slider_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(MUSIC_BUS_ID, linear_to_db(value))

func _on_sfx_slider_value_changed(value: float) -> void:
	AudioServer.set_bus_volume_db(SFX_BUS_ID, linear_to_db(value))
