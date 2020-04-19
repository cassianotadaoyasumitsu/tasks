# CRUD
# Database

class Repository
  attr_reader :tasks
  def initialize
    # STATE?
    @tasks = [] # Array of 'Task' instances!
  end
  # BEHAVIOR?

  def add(task) # task parameter is a 'Task' instance!
    @tasks << task
  end

  def find(index)
    return @tasks[index]
  end
end
