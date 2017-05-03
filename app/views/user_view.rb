require_relative "base_view.rb"

class UserView < BaseView
  def list_users(users)
    users.each do |user|
      puts "- #{user.username.capitalize} [#{user.role}]"
    end
  end

  def wrong_credentials
    puts 'Wrong credentials... Try again!'
  end

  def signed_in_successfully(user)
      puts "Welcome #{user.username}!"
  end
end
