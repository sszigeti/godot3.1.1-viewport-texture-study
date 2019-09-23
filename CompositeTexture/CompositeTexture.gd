extends Control

export(Color) var bg_color:Color setget _set_bg_color
export(Color) var text_color:Color setget _set_text_color


func _set_bg_color(new_color:Color) -> void:
	$Viewport/Bg.modulate = new_color

func _set_text_color(new_color:Color) -> void:
	$Viewport/Text.modulate = new_color
