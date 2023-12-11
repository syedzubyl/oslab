#include <stdio.h>
void findWaitingTime(int processes[], int n, int bt[], int wt[])
{
wt[0] = 0;
for (int i = 1; i < n; i++) {
wt[i] = bt[i - 1] + wt[i - 1];
}
}
void findTurnAroundTime(int processes[], int n, int bt[], int wt[], int tat[])
{
for (int i = 0; i < n; i++)
{
tat[i] = bt[i] + wt[i];
}
}
void findAverageTime(int processes[], int n, int bt[]) {
int wt[n], tat[n];
findWaitingTime(processes, n, bt, wt);
findTurnAroundTime(processes, n, bt, wt, tat);
float total_wt = 0, total_tat = 0;
for (int i = 0; i < n; i++) {
total_wt += wt[i];
total_tat += tat[i];
}
printf("Process\tBurst Time\tWaiting Time\tTurnaround Time\n");
for (int i = 0; i < n; i++)
{
printf("%d\t%d\t\t%d\t\t%d\n", processes[i], bt[i], wt[i], tat[i]);
}
printf("Average waiting time = %.2f\n", total_wt / n);
printf("Average turnaround time = %.2f\n", total_tat / n);
}
int main()
{
int n;
printf("Enter the number of processes: ");
scanf("%d", &n); int processes[n];
int burst_time[n];
printf("Enter the burst time for each process:\n");
for (int i = 0; i < n; i++)
{
processes[i] = i + 1;scanf("%d", &burst_time[i]);
}
findAverageTime(processes, n, burst_time);
return 0;
}
