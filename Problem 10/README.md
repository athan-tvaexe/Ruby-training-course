# Problem 10: Task Manager

This project demonstrates how to implement a simple task management system in Ruby. The program allows users to manage tasks, including listing, adding, editing, and marking tasks as complete. Tasks are stored in a text file for persistence.

## Goal

The goal is to practice object-oriented programming in Ruby by implementing a task manager with classes, file handling, and user interaction.

## How to Run

1. Open your terminal.
2. Navigate to the project directory:
   ```bash
   cd "Problem 10"
   ```
3. Run the Ruby script:
   ```bash
   ruby Main.rb
   ```

### Features

1. **List All Tasks**: Displays all tasks with their IDs, descriptions, and statuses (Complete/Incomplete).
2. **Add a New Task**: Allows the user to add a new task with a description.
3. **Mark a Task as Complete**: Marks a specific task as complete based on its ID.
4. **Edit a Task**: Edits the description of a specific task based on its ID.
5. **Exit**: Exits the program.

### Explanation of the Code

- **Task Class**: The `Task` class (defined in `Task.rb`) represents a single task with attributes for ID, description, and status. It includes methods to mark a task as complete and display task details.
- **TaskManager Class**: The `TaskManager` class (defined in `TaskManage.rb`) handles the management of tasks, including loading tasks from a file, saving tasks to a file, and performing operations like adding, editing, and marking tasks as complete.
- **File Handling**: Tasks are stored in `TaskList.txt`, which is read at the start of the program and updated whenever tasks are modified.

### Example Usage

#### Initial Task List

The `TaskList.txt` file contains the following tasks:

```
1|hoc tieng nhat|Incomplete
2|code java|Incomplete
3|code ruby|Incomplete
4|2|Complete
```

#### Running the Program

When you run the program, you will see the following menu:

```
Task Manager
1. List all tasks
2. Add a new task
3. Mark a task as complete
4. Edit a task
5. Exit
Choose an option:
```

#### Adding a Task

If you choose option `2` and enter a description, the task will be added to the list and saved to `TaskList.txt`.

#### Marking a Task as Complete

If you choose option `3` and enter the ID of a task, the task will be marked as complete.

#### Editing a Task

If you choose option `4` and enter the ID of a task, you can update its description.

#### Exiting the Program

Choose option `5` to exit the program.

### Example Output

Here is an example of listing tasks:

```
1. hoc tieng nhat - Incomplete
2. code java - Incomplete
3. code ruby - Incomplete
4. 2 - Complete
```

### File Structure

- **`Main.rb`**: The main entry point for the program.
- **`Task.rb`**: Defines the `Task` class.
- **`TaskManage.rb`**: Defines the `TaskManager` class.
- **`TaskList.txt`**: Stores the list of tasks.

## Further

This program can be extended to include additional features such as:

- Deleting tasks.
- Sorting tasks by status or description.
- Adding due dates to tasks.
- Exporting tasks to other formats (e.g., CSV