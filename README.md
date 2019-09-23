A study/reminder for using Viewport in Godot Engine 3.1.1 to generate a composite texture that can be used for proper transparency effects (fade in/out without).

However there ~~are two issues~~ is one issue that should be solved:

1. ~~The imported texture (rounded rectangle) has a grayish blend on its borders where its alpha goes to 0, even though at Import the `Fix Alpha Border` was on.~~ Fixed in [8e04c30](https://github.com/sszigeti/godot3.1.1-viewport-texture-study/commit/8e04c30bd5b0619a26db1df2ff9883fc76d6afde) by using a proper `CanvasItemMaterial` as per [Calinou's suggestion](https://www.reddit.com/r/godot/comments/d848ch/full_code_for_using_viewport_to_generate/f187e6j/).
2. Rotated and downscaled textures do not apply filtering at all, so the image looks pixelated.

![A screenshot](https://raw.githubusercontent.com/sszigeti/godot3.1.1-viewport-texture-study/master/screenshot.png)

