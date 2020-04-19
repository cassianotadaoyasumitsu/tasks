# Controller implement user actions
require_relative 'task'

class Controller
  def initialize(repository, view)
    @repository = repository
    @view = view
  end

  def add_task
    # TODO
    # 1. Ask to the user what they want to do
    title = @view.ask_user_for_task_title
    # 2. Create the task
    task = Task.new(title)
    # 3. Give the task to the repository
    @repository.add(task)
  end

  def list_task
    # TODO
    # 1. Ask the repository for the list of tasks
    tasks = @repository.tasks
    # 2. Ask the view to print tasks
    @view.print_tasks(tasks)
  end

  def mark_task_as_complete
    # TODO
    # 1. Ask which task index completed
    index = @view.ask_for_task_index
    # 2. Ask the repository for task instance at index
    task = @repository.find(index)
    # 3. Mark the task as complete
    task.mark_as_completed
  end
end
