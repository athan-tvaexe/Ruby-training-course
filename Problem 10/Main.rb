require_relative 'TaskManage'
task_manager = TaskManager.new('TaskList.txt')
while true
    puts "\nTask Manager"
    puts "1. List all tasks"
    puts "2. Add a new task"
    puts "3. Mark a task as complete"
    puts "4. Edit a task"
    puts "5. Exit"
    print "Choose an option: "
    choice = gets.chomp.to_i

    case choice
    when 1
        task_manager.list_tasks
    when 2
        print "Enter task description: "
        description = gets.chomp
        task_manager.add_task(description)
        puts "Task added."
    when 3
        print "Enter task ID to mark as complete: "
        id = gets.chomp.to_i
        task_manager.mark_task_as_complete(id)
    when 4
        print "Enter task ID to edit: "
        id = gets.chomp.to_i
        print "Enter new task description: "
        new_description = gets.chomp
        task_manager.edit_task(id, new_description)
    when 5
        puts "Exiting..."
        break
    
    else
        puts "Invalid option. Please try again."
    end
    
end

