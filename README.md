# mult-circle
Modular multiplication circle visualizer written using the processing Java visual library. 
Requires the [G4P](http://www.lagers.org.uk/g4p/index.html) and [QScript](http://www.lagers.org.uk/qscript/index.html) libraries by Peter Lager.

## What is a modular multiplication circle?
A modular multiplication circle is a function visualizer that works on two principles:
1) You have a circle with n evenly spaced points.
2) The function draws a line from point x with point f(x), where x is the position of the point. Ex: the first point has x=0, second has x=1, etc. Fractional values of f(x) are allowed in this visualizer.

Using these rules and different types of functions you can create interesting shapes and mathematical art.

## How to use: 

The application has two windows: the controls window and the graph window.

### Graph window
The graph window displays the current function being drawn. If a modulator is used, it will attempt to update at 60fps.
### Controls window
The controls window has several controls:
- You can insert an equation to graph and QScript will parse it and analyze it. Use x as the variable and "mod" if you wish to use a modulator.
- The large horizontal slider adjusts how many points are being drawn in the graph. The default is 100.
- The vertical slider adjusts the size of the circle in the graph window.
- There are "mod" settings to set and adjust how the modulator behaves. You can set an intial value and an increment. There are also options to choose if mod is incremented linearly or exponentially. There is a button to reset the mod and a visualizer that shows its current value.
### Using the modulator
If you want to create an animation or have the visualizer move, you can use "mod" in your function to represent a variable that changes every frame. For example: `x=mod` will rotate as mod increases.
