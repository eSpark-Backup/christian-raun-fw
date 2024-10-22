#include "workerThread.hpp"


bool WorkerThread::addTask(Task task)
{
    if (tasks.size() >= 10) {
        // Vector is full
        return false;
    }
    tasks.push_back(task);  // Add task to the end of the vector
    return true;
}

void WorkerThread::run()
{
    while (!tasks.empty()) {
        // Execute the first task (FIFO behavior)
        Task task = tasks.front();
        task();

        // Remove the executed task from the front
        tasks.erase(tasks.begin());
    }
}