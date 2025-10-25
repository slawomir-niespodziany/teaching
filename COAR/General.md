# COAR - General

## Grading
Total | (/20p)
-|-
Risc-V test (in class, hands-on programming) | 3p
Risc-V project (homework) | 6p
Intel-x86 test (in class, hands-on programming) | 3
Intel-x86 project (homework) | 6 + 2p (32b + 64b vesions)

Lecture tests 1 & 2 are carried out during laboratory classes, but are graded as part of the lecture.

## Schedule
1. Risc-V introduction ([RiscVUppercase.asm](../resources/RiscVUppercase.asm)) + projects assignment,
2. Risc-V test (in class, hands-on programming, 2nd hour) + Risc-V theory continued (1st hour),
3. Lecture test 1 (in class, theory),
4. Intel-x86 introduction (1st hour) + [**Risc-V project**](RiscVTopics.md) submission (2nd hour, deadline!),
5. Intel-x86 test (in class, hands-on programming),
6. [**Intel-x86 project**](IntelTopics.md) submission (deadline!),
7. Lecture test 2 (in class, theory).

Projects can/shall be consulted during each class.

n | Excercise                    | Group 103         | Group 104
-|-|-|-
1 | Risc-V introduction          | 28.10 14:15 (2h)  | 21.10 14:15 (2h)
2 | Risc-V test                  | 18.11 14:15 (2h)  | 4.11 14:15 (2h)
3 | Lecture test 1               | 25.11 15:15 (1h)  | 25.11 14:15 (1h)
4 | Intel-x86 introduction       | 9.12 14:15 (2h)   | 2.12 14:15 (2h)
5 | Intel-x86 test               | 23.12 14:15 (2h)  | 16.12 14:15 (2h)
6 | Intel-x86 project submission | 20.01 14:15 (2h)  | 13.01 14:15 (2h)
7 | Lecture test 2               | 27.01 15:15 (1h)  | 27.01 14:15 (1h)

## Risc-V, Intel x86 tests (in class, hands-on programming)
Assignments for the tests will be to process c-string texts entered by the user (analogous to the examples shown during introduction of each architecture). The difficulty may be slightly higher - there may be a need to implement a nested loop (a loop within a loop - one nesting level, no deeper). Exemplary assignments include:
 - sort characters within a c-string according their ASCII codes,
 - remove selected characters from a c-string (without the use of a temporary buffer).

#### Additional information:
- Assignments for both tests shall be implemented using the same environments as the ones used in the introductory class (RARS simulator for Risc-V, Makefile for Intel-x86),
- Materials, such as documentation, notes, previously written code etc. can be used during the tests,
- Any cooperation with other people (and AI-based tools) is forbidden during the tests,
- Half the points are assigned for implementing a correct solution, the other half for it's quality,
- Solutions which do not work are not evaluated,
- To receive a grade it may be necessary to advocate & defend the implemented solution.

#### Risc-V:
  - New line character ('\n') shall be treated as a valid part of the c-string (simply, as one of the characters).