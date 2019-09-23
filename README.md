A study/reminder for using Viewport in Godot Engine 3.1.1 to generate a composite texture that can be used for proper transparency effects (fade in/out without).

However there are two issues that should be solved:

1. The imported texture (rounded rectangle) has a grayish blend on its borders where its alpha goes to 0, even though at Import the `Fix Alpha Border` was on.
2. Rotated and downscaled textures do not apply filtering at all, so the image looks pixelated.

