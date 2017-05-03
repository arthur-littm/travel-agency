require_relative '../views/user_view.rb'

class  UserController
  def initialize(user_repo)
    @repo = user_repo
    @view = UserView.new
  end

  # -> list all the available users
  def list
    # ask the repo for a list of all the users
    users = @repo.all
    # pass that list to the view to display
    @view.list_users(users)
  end

  # -> add a new user
  def add
    # ask the user for the user name
    new_user_name = @view.ask_user_for(:username)
    # ask the user for the user continent
    new_user_continent = @view.ask_user_for(:password)
    # create an instance of `Country` based on what the user said
    new_user = User.new(username: new_user_name, password: new_user_continent)
    # adding in to the repo
    @repo.add(new_user)
  end
end














