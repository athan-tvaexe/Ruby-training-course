require_relative 'Task'

class TaskManager
  def initialize(file_path)
    @tasks = []
    @file_path = file_path
    load_tasks_from_file(file_path)
  end

  def load_tasks_from_file(file_path)
    if File.exist?(file_path)
      File.readlines(file_path).each do |line|
        id, description, status = line.chomp.split('|')
        task = Task.new(description)
        task.mark_as_complete if status == 'Complete'
        @tasks << task
      end
    else
      puts "File not found: #{file_path}"
    end
  end

  def save_tasks_to_file
    File.open(@file_path, 'w') do |file|
      @tasks.each do |task|
        status = task.status ? 'Complete' : 'Incomplete'
        file.puts "#{task.id}|#{task.description}|#{status}"
      end
    end
  end

  def add_task(description)
    task = Task.new(description)
    @tasks << task
    save_tasks_to_file
  end

  def mark_task_as_complete(id)
    task = @tasks.find { |t| t.id == id }
    if task
      task.mark_as_complete
      save_tasks_to_file
      puts "Task ##{id} marked as complete."
    else
      puts "Task with ID ##{id} not found."
    end
  end

  def list_tasks
    @tasks.each(&:display_task)
  end

  def edit_task(id, new_description)
    task = @tasks.find { |t| t.id == id }
    if task
      task.description = new_description
      save_tasks_to_file
      puts "Task ##{id} updated."
    else
      puts "Task with ID ##{id} not found."
    end
  end

end

