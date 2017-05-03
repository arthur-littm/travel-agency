class Router
  def initialize(c_controller, u_controller)
    @country_controller = c_controller
    @user_controller = u_controller
  end

  def run
    while true
      puts "1. list countries"
      puts "2. add country"
      puts "3. list users"
      puts "4. add user"

      puts "what do you want to do?"

      action = gets.chomp.to_i

      case action
      when 1 then @country_controller.list
      when 2 then @country_controller.add
      when 3 then @user_controller.list
      when 4 then @user_controller.add
      else
        puts "wrong choice!"
      end
    end
  end
end
