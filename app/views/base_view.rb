class BaseView
  def ask_user_for(something)
    puts "#{something}?"
    return gets.chomp
  end
end
