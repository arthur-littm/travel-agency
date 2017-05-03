require_relative "base_view.rb"

class UserView < BaseView
  def list_users(users)
    users.each do |c|
      puts "- #{c.username}"
    end
  end
end
