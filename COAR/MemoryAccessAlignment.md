# Memory access alignment
## Rule
Memory in a computer system must be accessed according to alignment rule. This results from several [reasons](https://stackoverflow.com/questions/381244/purpose-of-memory-alignment). The rule states that:

```
An operand in memory must be accessed at an address divisible by its size.
```

## Explanation
This applies to accessing memory with *load* and *store* instructions. In Risc-V architecture there are several such instructions. They differ in their operand size. Because of the rule, these instructions always expect an address, whose nummeric value meets the follwowing criteria:
Load | Store | Transfer size | Address criteria (in *a7*)
-|-|-|-
*ld t0, 0(a7)* | *sd zero, 0(a7)* | 8B | a7 % 8 == 0
*lw t0, 0(a7)* | *sw zero, 0(a7)* | 4B | a7 % 4 == 0
*lh t0, 0(a7)* | *sh zero, 0(a7)* | 2B | a7 % 2 == 0
*lb t0, 0(a7)* | *sb zero, 0(a7)* | 1B | a7 % 1 == 0

Note, that:
- ld and sd instructions are only avaliable in 64b architectures,
- **lb and sb instructions are always aligned**

For example, for an *lw* (load word) instruction, which loads a word of size of 4B, the address of the loaded word must be divisible by 4. It may not be of a form of *4N+1*, *4N+2*, or *4N+3*.


Fulfilling this requirement is the developers responsibility. Failure to adhere will likely result in rising an exception by the CPU and thus crashing the program (e.g. Risc-V, ARM architectures). In real life, the outcome depends on the underlying CPU architecture. There are architectures, which allow for unaligned accesses (e.g. x86). However, because of the problems which may follow (performance degradation, portability issues) it is recommended to avoid them. 

To ensure proper alignment, buffers shall always be allocated at a correct boundary. This can be achieved by *alignas()* specifier in C++, or *.align* (or equivalent) macro in assembly language, etc.

## High level language implications
### Incorrect example
Let's consider the following C code example. The code owns a buffer and intends to interpret its content as both *char* and *int* types:

```
char buffer[8];

void f(void) {
    char *pChar = (char*) (&buffer[0]);
    char *pInt = (int*) (&buffer[0]);

    *(pChar + 0) = 'a';
    *(pChar + 1) = 'b';
    *(pChar + 2) = 'c';
    *(pChar + 3) = 'd';

    *(pInt + 1) // address equivalent to *(pChar + 4)
        = 123456789;

    // ... e.g. send it all via network
}
```

The problem is not obvious. From the language perspective (syntax, semantics) it is perfectly correct. 

The problem occurs in the line where an integer is assigned to the buffer - *\*(pInt + 1)* = ... - but this is not where it originates from. Depending on the compiler's decision the buffer may be allocated at an addres which is aligned at 4B boudary or not. The compiler is free to optimize, because the buffer was declared as an array of chars (which does not need any specific alignment). 

This is an extremely tricky problem. It will materialise on a per-build basis (one build may work, another may not). If the buffer was dynamically allocated, the problem would be even more difficult to track - alignment would depend on the allocator's dynamic choice - on a per-run basis.

### The fix
A fix to this problem is trivial. Simply declare the buffer as the most restrictive type:

```
int buffer[2];

...
```

Now it can be accessed as both desired types. It occupies the same amount of memory, but its alignment is deterministic (nor the compiler, not the allocator can place it at an unaligned address now).