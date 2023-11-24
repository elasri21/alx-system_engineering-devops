#include <stdlib.h>
#include <stdio.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

/**
 * infinite_while - does in infinit loop
 * Return: 0
 */

int infinite_while(void)
{
while (1)
{
sleep(1);
}
return (0);
}

/**
 * main - main entry
 * Return: 0
 */
int main(void)
{
pid_t ZOMBIE_PID;
char counter = 0;
while (counter < 5)
{
ZOMBIE_PID = fork();
if (ZOMBIE_PID > 0)
{
printf("Zombie process created, PID: %d\n", ZOMBIE_PID);
sleep(1);
counter++;
}
else
exit(0);
}
infinite_while();
return (EXIT_SUCCESS);
}
