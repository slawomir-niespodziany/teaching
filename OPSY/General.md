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

## Assignments
### Syscall
Implement a syscall function, accepting a _pid_ and two int variable pointer. The syscall shall return _height_ of the subtree below the process of the given _pid_ and process _count_ at the lowest level of that subtree.
void getSubtreeInfo(int pid, int *pHeight, int *pCount);
 
Mind, that proces descriptors (process_info_t structures) are kept in a (red-black) tree, but this is simply a way to store the structures. The red-black tree **does not** reflect the process tree, which results from the parent-child relationship between processes.
 
Part of the assignment is also to:
- implement a simple C/C++ program which will use the implemented syscall and dispplay the result on screen,
- prepare (at least) two non-trivial use-cases to demonstrate the correctness,
- be ready to annswer questions about the solution (concept and implementation) without looking into the code.
 
<!-- * When done, you shall sent all the modified/created files (and ONLY those) to me on the Teams chat. The files shall be packed in an archive named syscall_<student_id/number_only>_<surname>_<name>.tar, and it shall also reflect WHERE the files were located in the Phoenix source directory. Use the following command to archive everything (in Ubuntu, in the source root directory phoenix-rtos-project & adjust the file list for your case):
cd phoenix-rtos-project
tar -zcvf syscall_0000_niespodziany_slawomir.tar phoenix-rtos-kernel/syscalls.h _user/hello/Makefile _user/hello/main.c
 
Below is an example of a correctly working solution (we count the distance up to the init process): -->
