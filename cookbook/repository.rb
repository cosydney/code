class Repository
  def initialize(tasks = [])
    @tasks = tasks
  end

  # Read
  def find(index)
    @tasks[index]
  end

  # Write
  def add(task)
    @tasks << task
    true
  end

  # Delete
  def delete(index)
    @tasks.delete_at(index)
  end

  # Returns all tasks
  def all
    @tasks
  end
end
