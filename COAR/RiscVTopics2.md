## Risc-V project topics
1. Histogram stretching + histogram equalization. Two resulting images in separate files. Histograms comparison.
2. Image size extension using bilinear interpolation. 
3. Binary image mirror reflection (input image in BMP format with 1 bit/pixel, performance optimization).
4. Image filtering with Robert's filter ([Roberts cross](https://en.wikipedia.org/wiki/Roberts_cross)).
5. Image filtering with Prewitt's filter. 
6. Image filtering with median filter (mask of size 5x5, performance optimization).
7. Threshold with Otsu method. RGB image converted to grayscale.
8. [Mean Adaptive Threshold](https://homepages.inf.ed.ac.uk/rbf/HIPR2/adpthrsh.htm). Input image in grayscale.
9. Floyda-Steinberga color reduction algorithm. Input image WITHOUT color palette.
10. Line drawing with Xiaolin Wu algorithm.
11. Newton's fractal f(z) = z^3 - 1 (+translation, drawing on a BMP file of arbitrary size, displayed complex plane area proportional to image size).
12. Newton's fractal f(z) = z^5 - 1 (+zoom, image midpoint in z=0, drawing on a BMP file of arbitrary size, displayed complex plane area proportional to image size).
13. Three point Bezier curve.
14. Triangle shading (coordinates & colors read from console). 
15. Calucliating sine & cosine values using CORDIC algorithm (no images involved). 
16. Orthogonal projection of two triangles (z-buffer, coordinates read from console). 

[Assignment table](https://wutwaw-my.sharepoint.com/:x:/g/personal/slawomir_niespodziany_pw_edu_pl/ERwLc89tU91BrhZMLEFLZn4B0fcK_YF8B_xaa77L4twK6A?e=HZKwos)

## Risc-V project requirements
Requirements for implementing Risc-V projects (failure to comply will result in a lower grade):

- All the projects which deal with image processing shall operate on [BMP](https://en.wikipedia.org/wiki/BMP_file_format) files. A BMP file (or multiple) shall already exist in the filesystem. The program shall handle any image size (width/height) up to some reasonable limit (selected by the student). The file shall be opened and read from/writtten to. The file shall NOT be created by the program,
- Image width is arbitrary (padding shall be handled),
- Bitmap memory shall be allocated dynamically:
  - read BMP file header to a statically allocated mamory buffer (typically ~56B),
	- read image width & height from the header,
	- dynamically allocate memory for the bitmap (use sbrk syscall),
	- read bitmap to the allocated memory area,
- Depending on the selected topic, some user data shall be read using the console,
- Floating point types (float/double/..) usage is NOT allowed,
- Operations involving the values, which are powers of 2, shall be implemented using bit operations:
  - Multiplication: M * (2^N) => M << N,
  - Division: M / (2^N) => M >> N,
  - Modulo: M % (2^N) => M & (2^N - 1) - or a bit mask with N ones, e.g. 7 % 4 = 7 % 2^2 = 7 & (2^2 - 1) = 7 & 0x03 = 0b0111 & 0b0011 = 0b0011
- Correctness of the implemented algorithm shall be demonstrated, including edge-cases. Design decisions may limit the functionality and complexity, but they shall be conciously accepted (with the awareness of both positive & negative consequences).
- Reasonable design decisions shall be conducted when it comes to details not directly resulting from the topic,
- Source code shall be formatted: 
    - labels - no identation, 
    - code - one indentation,
- Number of syscalls shall be minimized - e.g. read/write the whole pixel row to/from a file, instead of each pixel individually, OR whole image at once, instead of each row individually, etc.
- Performance shall be optimized by keeping the data in memory - e.g. processing the whole image while storing it in memory, instead of processing each row individually from disk, etc.
- Number of memory accesses shall be minimized - e.g. by transferring whole words to/from memory, instead of single bytes (lw/sw instructions, instead lb/sb),
- To receive a grade it will be necessary to advocate & defend the implemented solution.