require_relative 'task'

class Controller
  def initialize(view, repository)
    @view = view
    @repository = repository
  end

  def display_tasks
    # Fetch elements from the MODEL
    tasks = @repository.all

    # Send them to the view
    @view.display_all_tasks(tasks)
  end

  def add_task
    # Get the user's input
    description = @view.get_task

    # Create a new task
    task = Task.new(description)

    # Add to repository
    @repository.add(task)
  end

  def mark_task
    display_tasks

    # Ask the user for which task (s)he wants to mark
    index = @view.get_task_index

    # Get the task from the repository
    task = @repository.find(index - 1)

    # Mark the task
    task.toggle_as_done

    # Show
    display_tasks
  end

  def delete_task
    display_tasks

    # Ask the user for which task (s)he wants to mark
    index = @view.get_task_index

    # Delete task
    @repository.delete(index - 1)

    display_tasks
  end
end




