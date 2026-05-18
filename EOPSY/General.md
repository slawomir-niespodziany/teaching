# EOPSY - General

## Grading & Schedule
Total                                   | (/40p)    | Group 101         | Group 107
-|-|-|-
Syscall                                 | 8p        | 17.03, **24.03**  | 18.03, **25.03**
Scheduler                               | 8p        | 31.03, **14.04**  | 1.04, **8.04**
Synchronization (semaphores & monitors) | 8p        | 21.04, **28.04**  | 15.04, **22.04**
Formal verification                     | 4p        | **5.05**          | **29.04**
Filesystem                              | 8p        | 19.05, **26.05**  | 6.05, **13.05**
Server                                  | 4p        | **9.06**          | **20.05**

 - **Bold** date indicates the deadline for the corresponding assignment,
 - Assignments shall be solved personally and individually.
 - A single assignment can be submitted past the deadline (with 50% point loss) at the end of the semester. 

## Assignments
### Syscall
Implement a syscall function, accepting a _pid_ and two int variable pointers. The syscall shall return _height_ of the subtree below the process of the given _pid_ and process _count_ at the lowest level of that subtree:

 > void getSubtreeInfo(int pid, int *pHeight, int *pCount);

Mind, that proces descriptors (process_info_t structures) are kept in a (red-black, binary) tree, but this is simply a way of storing the structures. The red-black tree **does not** reflect the process tree, which results from the parent-child relationship between processes.
 
Part of the assignment is also to:
- implement a simple C/C++ program which will use the implemented syscall and display the result on screen,
- prepare (at least) two non-trivial use-cases to demonstrate the correctness of the implemented method,
- be ready to answer questions about the solution (concept and implementation), without looking into the code.

#### Archiving & sending the work
When done, you shall sent all the modified/created files (**only** those) via email (otherwise, the grade will be **0p**, the deadline for sending is 7 days from assignment deadline). The files shall be packed in an archive named:
_syscall\_\<student_id\>\_\<surname\>\_\<name\>.tar_
it shall also reflect **where** the files were located in the Phoenix source directory. 
Use the following command to archive everything (in Ubuntu, in the source root directory _phoenix-rtos-project_, adjust the file list for your case):
 > cd phoenix-rtos-project\
 > tar -zcvf syscall_0123_niespodziany_slawomir.tar phoenix-rtos-kernel/syscalls.h _user/hello/Makefile _user/hello/main.c

Other archives/other formats will not be accepted (including the archives which have *everything* archived in them). 

 ### Scheduler
 Implement a scheduling algorithm, which handles two process classes - **interactive** and **batch**. A process shall be treated as an _interactive_ process by default. A syscall shall be implemented to allow for changing the process class to _batch_ and back to _interactive_. The algorithm shall handle processes as follows:
 - _interactive_ processes shall be scheduled in a **round-robin** regime. An interactive process is granted one cpu tick. After that tick elapses other _interactive_ processes shall be granted one tick each and so the cycle repeats.
 - _batch_ processes shall be scheduled in a **first-in-first-out** regime. When a _batch_ process is scheduled for execution it does execute until it finishes (not allowing other _batch_ processes to execute until then). 
 - _interactive_ processes have priority over _batch_ processes. When both _interactive_ and _batch_ processes are ready for execution, the algorithm shall only execute _interactive_ processes.
 - Process class can be changed dynamically during runtime (when the processes execute). The algorithm shall consider the fact that any process may have its class changed at any time.

Part of the assignment is also to:
 - prepare C/C++ examples of processes fo both classes,
 - prepare (at least) two non-trivial use-cases to demonstrate the correctness of the implemented method (running several processes of both classes),
 - be ready to answer questions about the solution (concept and implementation), without looking into the code.

The assignment files shall be archived & sent the same way as for the assignment #1.

## Synchronization w/semaphores
Implement a FIFO queue which holds up to 16 elements. Each element is of a specified type (A/B/C) and has a value assigned (8-bit unsigned). The queue shall synchronize passing the elements between producer- and consumer- processes:
 - There are three producer processes (one for each element type). Each producer creates between 64-128 elements of the corresponding type. No delays.
 - There are two consumer processes:
  - The first consumer consumes elements of type A or B (single elements, one by one). It is only allowed to consume these elements if the queue does NOT consist of element C. 
  - The second consumer consumes elements of all three types (at once) - if the queue consists of element C. If the queue consists of ONLY elements C then the consumer is allowed to consume elements C alone (one by one). 
 - The solution shall be implemented in C or C++, using processes, shared memory and semaphores in Linux (not necessarily Phoenix).
 - Proper demonstration shall be prepared.

The assignment files shall be archived & sent the same way as for the assignment #1.


## Formal verification
Verify the algorithm implemented in the previous assignment.

## Filesystem
Implement a filesystem, which will store its data in a single file in Linux, which will allow the following basic operations:
 - upload selected file from linux into your filesystem,
 - list files stored in your filesystem,
 - delete selected file from your filesystem,
 - download selected file from your filesystem back into linux.

No particular implementation or design is required.
The assignment files shall be archived & sent the same way as for the assignment #1.

## Server
Implement a server which accepts binary data (e.g. a file from the filesystem) and calculates CRC8 for this data. The server shall allow for calculating crc for multiple files. Assumption: After the file is loaded the user will always read the corresponding checksum value. 

No particular implementation or design is required.
The assignment files shall be archived & sent the same way as for the assignment #1.