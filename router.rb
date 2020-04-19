# ROUTER

class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    # Infinite loop
    choice = ''
    until choice == 4
      puts "What is NEXT?"
      puts "1 - Add a task"
      puts "2 - List tasks"
      puts "3 - Mark as completed"
      puts "4 - Exit"
      choice = gets.chomp.to_i
      if choice == 1
        @controller.add_task
      elsif choice == 2
        @controller.list_task
      elsif choice == 3
        @controller.mark_task_as_complete
      elsif choice == 4
      else
        puts "Wrong input..."
      end
    end
  end
end
