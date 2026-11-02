# COAR - General

## Grading
Total | (/20p)
-|-
Risc-V test (in class, hands-on programming) | 3p
Risc-V project (homework) | 6p
Intel-x86 test (in class, hands-on programming) | 3p
Intel-x86 project (homework) | 6 + 2p (32b + 64b vesions)

Lecture tests 1 & 2 are carried out during laboratory classes, but are graded as part of the lecture.

## Schedule
1. Risc-V introduction ([code](../resources/RiscVUppercase.asm)) + projects assignment,
2. Risc-V test (in class, hands-on programming, 2nd hour) + Risc-V theory continued (1st hour),
3. Lecture test 1 (in class, theory),
4. Intel-x86 introduction (1st hour, [code](../resources/x86)) + [**Risc-V**](RiscVTopics.md) project submission (2nd hour, deadline!),
5. Intel-x86 test (in class, hands-on programming),
6. [**Intel-x86**](IntelTopics.md) project submission (deadline!),
7. Lecture test 2 (in class, theory).

Projects can/shall be consulted during each class.

n | Excercise                    | Group 105         | Group 106
-|-|-|-
1 | Risc-V introduction          | 27.10 10:15 (2h)  | 3.11 10:15 (2h)
2 | Risc-V test                  | 10.11 10:15 (2h)  | 17.11 10:15 (2h)
3 | Lecture test 1               | 24.11 11:15 (1h)  | 24.11 10:15 (1h)
4 | Intel-x86 introduction       | 8.12 10:15 (2h)   | 1.12 10:15 (2h)
5 | Intel-x86 test               | 22.12 10:15 (2h)  | 15.12 10:15 (2h)
6 | Intel-x86 project submission | 19.01 10:15 (2h)  | 12.01 10:15 (2h)
7 | Lecture test 2               | 26.01 11:15 (1h)  | 26.01 10:15 (1h)

## Risc-V, Intel x86 tests (in class, hands-on programming)
Assignments for the tests will be to process c-string texts entered by the user (analogous to the examples shown during introduction of each architecture). The difficulty may be slightly higher - there may be a need to implement a nested loop (a loop within a loop - one nesting level, no deeper). Exemplary assignments include:
 - sort characters within a c-string according their ASCII codes,
 - remove selected characters from a c-string (without the use of a temporary buffer).

#### Additional information:
- Assignments for both tests shall be implemented using the same environments as the ones used in the introductory class (RARS simulator for Risc-V, Makefile for Intel-x86),
- Materials, such as documentation, notes, previously written code etc. can be used during the tests,,
- Half the points are assigned for implementing a correct solution, the other half for it's quality,
- Solutions which do not work are not evaluated,
- To receive a grade it is required to advocate for & defend the implemented solution,
- The projects and in-class tests shall be done personally and individually,
- Any attempt to submit work of anyone else (including AI) will result in zeroing the score of all the laboratories.

#### Risc-V:
  - New line character ('\n') shall be treated as a valid part of the c-string (simply, as one of the characters).