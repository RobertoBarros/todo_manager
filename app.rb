require_relative 'task_repository.rb'
require_relative 'task_controller.rb'
require_relative 'router.rb'

repository = TaskRepository.new
controller = TaskController.new(repository)

router = Router.new(controller)
router.run
