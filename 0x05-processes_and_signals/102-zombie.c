#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>

/**
 * infinite_while - Function infinite while for manage zombie process
 * Void: No entry parameters
 * Return: exit 0 (success)
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
 * main - The main function zombie process
 * Void: No entry parameters
 * 
 * Return: Exit 0 (success)
 */
int main(void)
{
	pid_t pid;
	char count = 0;

	while (count < 0)
	{
		pid = fork();
		if (pid > 0)
		{
			printf("Zombie process created, PID: %d\n", pid);
			sleep(1);
		}
		else
		{
			exit(0);
		}
	}
	infinite_while();
	return (EXIT_SUCCESS);
}
