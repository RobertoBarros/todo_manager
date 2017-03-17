require_relative 'task'
require_relative 'view'

class TaskController
  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def create
    # view perguntar o nome da task
    description = @view.ask_user_for_description

    # Instaciar uma nova task com esse nome
    task = Task.new(description)

    # Adicionar a task ao repositório
    @repository.add(task)
  end

  def list
    # Pedir para o repositório todas as task
    all_tasks = @repository.all

    # Pedir para a view mostrar essas tasks
    @view.show_tasks(all_tasks)

  end

  def destroy
    # View pergunta qual o index da task
    index = @view.ask_user_for_index
    # pedir para o repositório remover a task
    @repository.remove(index)
  end

  def mark_as_done
    # View pergunda qual o index
    index = @view.ask_user_for_index

    # Pegar a task no repositorio
    task = @repository.find(index)

    # Marcar task como done
    task.mark_as_done!

  end


end