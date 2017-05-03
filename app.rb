require_relative "app/repositories/country_repository.rb"
require_relative "app/controllers/country_controller.rb"

require_relative "app/repositories/user_repository.rb"
require_relative "app/controllers/user_controller.rb"

require_relative "router.rb"


country_repo = CountryRepository.new('data/countries.csv')
user_repo = UserRepository.new('data/users.csv')

country_controller = CountryController.new(country_repo)
user_controller = UserController.new(user_repo)

router = Router.new(country_controller, user_controller)
router.run
