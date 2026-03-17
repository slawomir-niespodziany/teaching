## x86 project topics

1. Z-buffer - drawing three independent trinagles, with vertices translation in 3D.
2. Bilinear image scaling (interpolation). 
3. 2D image affine transform (tilt + zoom + translation).
4. Convolution filter, dependent on the distance (r) from a selectable point in the image:
```
        |  0 -1  0 |   |   1/9  10/9   1/9 |
mask  = | -1  5 -1 | + |  10/9 -44/9  10/9 | * w, where w = min(1, r / (min(width, height) / 2))
        |  0 -1  0 |   |   1/9  10/9   1/9 | 
```
5. Image filtering with Prewitt filter. Smoothly adjustable filtration direction. 
6. Rotations of a 3D scene composed of points and lines, connecting those points (no surfaces). Perspective projection of a tetrahedron skeleton. 
7. Alpha-blending between two images, depending on a sine function value, around an interactively selectable point.
8. Swirl effect on an image. Interactive parameters.
9. Tetrahedron orthogonal projection - different wall colors, rotation in two different planes, z-buffer.
10. 2D image affine transform (rotation + translation).
11. Newtons fractal f(z) = z^3 - 1 with zoom and translation (implementation using single precision numbers - float).
12. Newtons fractal f(z) = z^5 - 1 with zoom and translation (implementation using double precision numbers - double).
13. Five point Bezier curve.
14. Triangle shading with its vertices translation. 
15. Lissajous curves. 
16. Tetrahedron skeleton perspective projection - edges of different colors + rotation in two different planes. 

### Assignment
The assigned topic number is the same as for the Risc-V project.

## x86 project requirements
Requirements for implementing Risc-V projects (failure to comply will result in a lower grade):
- Implementation shall be hybrid - high-level part written in C/C++, core algorithm in assembly,
- C/C++ is required and must work for passing, but it is not a subject for grading,

C/C++ part:
- Program shall be interactive - user shall be able to change parameters while the application is running (without reloading the program, e.g. using mouse scroll to zoom in/out - or keyboard) and observe the resulting changes,
- Program shall use a graphics library (Allegro, OpenGL etc.) for handling user interactions (keyboard/mouse), loading (if required) and displaying graphics, saving the results is NOT required,
- Project do NOT have to operate on BMP files, it is recommended to use data structures provided by the selected library,
- Resource acquisition shall happen on C/C++ level - the assembly function shall receive input data/parameters and pointers to already allocated memory buffers for the result,
- Exemplary prototype of assembly function:

void f(int width, int height, char *pInputImg, char *pOutputImg, int algoSpecificParam0, float algoSpecificParam1, ...);

- Exemplary implementation of the high-level part (in pseudocode):
 
````{verbatim}
allocateBuffers();
readDataFromFiles(); // if required
setParamsToDefaultValues();
while(true) {
	f(...); // call assembly function
	displayResult();
	readUserInput(); // this function shall block and wait for user interaction
	modifyParams(); // according to user input
}
````

Assembly part:
- Assembly part shall be a single function,
- Single call of the assembly function shall profice the full result of the underlying algorithm (e.g. render the full picture, not individual pixels/lines), 
- Assembly code shall use floating point arithmetics (single or double precision),
- Vector units can be used (not required),
- Programs shall be implemented in 32b (graded up to 6 points) and 64b (additional 2 points) variants.