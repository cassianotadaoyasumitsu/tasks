# TEST CODE

require_relative 'router'
require_relative 'task'
require_relative 'repository'
require_relative 'controller'
require_relative 'view'

repository = Repository.new
view = View.new

controller = Controller.new(repository, view)

router = Router.new(controller)
router.run
