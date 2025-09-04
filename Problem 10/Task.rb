class Task
  @@id_counter = 0

  attr_accessor :description, :status 
  attr_reader :id

  def initialize(description)
    @@id_counter += 1
    @id = @@id_counter
    @description = description
    @status = false
  end

  def mark_as_complete
    @status = true
  end

  def display_task
    puts "#{@id}. #{@description} - #{@status ? 'Complete' : 'Incomplete'}"
  end

end