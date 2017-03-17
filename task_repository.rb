class TaskRepository
  def initialize
    @tasks = []

  end

  def add(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def remove(index)
    index = @tasks.delete_at(index)
  end

  def find(index)
    @tasks[index]
  end

end