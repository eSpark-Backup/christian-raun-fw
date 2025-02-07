#include <functional>
#include <vector>

// Worker thread class to handle tasks with different parameters
class WorkerThread
{
    public:
        using Task = std::function<void()>;  // A general callable type for tasks

        WorkerThread()
        { }// = default;

        // Adds a task to the task queue
        bool addTask(Task task);

        // Manually called function to run pending tasks (this will be called in the state machine)
        void run();

    private:
        // std::queue<Task> tasks;  // Queue to store tasks
        std::vector<Task> tasks;  // Vector to store tasks

        const size_t maxTasks = 10;
};
