extends Control

onready var ct1 = $CT1
onready var ct2 = $CT2
onready var ct3 = $CT3

var a:float = 1.0
var a_step:float = 0.25


func _on_ToggleFullscreenButton_pressed():
	OS.window_fullscreen = not OS.window_fullscreen
	$ToggleFullscreenButton.release_focus()


func _process(delta):
	a -= a_step * delta
	if a < 0 or a > 1:
		a = clamp(a, 0, 1)
		a_step *= -1
	ct1.rect_rotation += a_step
	ct2.modulate.a = a
	ct3.rect_rotation += a_step * 2
