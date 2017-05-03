require_relative "base_view.rb"

class CountryView < BaseView
  def list_countries(countries)
    countries.each do |c|
      puts "- #{c.name}, #{c.continent}"
    end
  end
end
