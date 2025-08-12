# Diploma in Cloud Cybersecurity (DCCS)

This folder contains my notes, commands, and mini-projects related to cloud security.

## Topics Covered
- Cloud security fundamentals
- Identity and access management (IAM)
- Network security configurations
- Monitoring and logging
- Cloud compliance and best practices

## Mini-Projects
- Secure cloud server deployment
- Cloud security monitoring dashboard

## 2nd Aug 2025

Bash Scripting : To automate tasks
Here are steps for bash scripting
- First you need to gather information
- You need to know about manual commands
- You need to maintain SHEBANG LINE (#!/bin/bash)
- SHEBANG LINE: It's the first line in code which tells the systemt to use which interpreter
- (#!/path/to/interpreter)
 - For bash : #!/bin/bash
 - For Python: #!/use/bin/pyhton3

tr command ( use in file system )
syntax: tr <find> <replace>
example: tr [a-z] [A-Z]

Seq command ( to print number range )
syntax: seq <n>
example: 
seq (10) #This will print sequence from 1-10
seq -w 2 10 #This will print 2 4 6 8 10
seq -s '+' 10 #This will print 1+2+3...10

##Conditional Statements
- If else
- If then else
- Nested If else
Loops:
- For loop
- While loop
- Case statement
- 
Conditional statements are mostly used with loops

##echo command
syntax: echo "print my name"

echo $? #It will check whether the previous command was run or not and give us zero if it was successful
0=good
1+=error

##Operators
== OR -eq *comparsion operator*
!= *not equal to*
> *greater than*
< *Less than*
-gt *greater than*
-ge *greater than or equal to*
-lt *less than*
-le *less than or equal to*
&& *and*
|| *OR*


IF STATEMENT
syntax:
if ( condition )
then
   statement
else
   statement
fi
elif
'''Things to remember'''
- always use double brackers [[ ]]
- If there are variables in conditions then use [[ ]]
- If there is arithematic operation use (( ))


POSITIONAL PARAMETERS ( important for interveiw )
- $0 : program or script name
- $1..$10 : parameters passed
- $# : count total number of parameters passed
- $* : treat arguments passed as a single string
- $@ : treat arguments passed as a separate string
- $$ : provide current PID of shell
- $? : Exit status of last command

S* and $@ are confusing. S* prints the passed argument in a single line whereas S@ treats double augrument like "3 4" "4 5" as a separate string and prints in new line
lets see a example:
![Argument Difference example](https://github.com/user-attachments/assets/ff40c39d-93c2-4179-8dc9-ca9d3b6db4f7)

LOOPS:
Repeated tasks
repeat until a certain condition is satisfied

1) For loop *very important*
2) While loop *very important*
3) Until loop *rare use*
4) Select case loop *rare use*

FOR LOOP:
for <variable> in list
do
   echo "statement"
done

#Interview question
How to create 10 files using a single command?
Ans: touch file {1..10}

example of for loop:
for i in syed shahmikh ali
  do
     echo "print $i"
done

'''Things to remember'''
((....)) ----> doing maths
(......) ----> Performing commmands
[[.....]] ----> Compare and ask questions
{.......} ----> group and then do that

To check wheather a file or folder exists or has executable permnissions

if [[ -x filename ]]
if [[ -f directory name ]]







