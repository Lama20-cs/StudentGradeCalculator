# Student Grade Calculator

A university group project written in **MIPS Assembly**. The program takes a student's grades in three subjects, calculates the total and the average, and determines the final letter grade.

## Features

- **Input:** prompts the user to enter the grade for each of the three subjects.
- **Total:** adds the three grades together.
- **Average:** divides the total by 3 (integer division).
- **Final Grade:** assigns a letter grade based on the average:

| Average | Grade |
|—|—|
| 90 and above | A |
| 80 to 89 | B |
| 70 to 79 | C |
| 60 to 69 | D |
| Below 60 | F |

## Technologies

- MIPS Assembly
- System calls (syscalls) for input and output
- Branching and arithmetic instructions

## My Contribution

This was a group project. I was responsible for:

- Writing the **prompt messages** shown to the user
- **Reading the three grades** from the user using syscalls
