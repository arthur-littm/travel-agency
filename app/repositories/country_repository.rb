require 'csv'
require_relative "base_repository.rb"

require_relative "../models/country.rb"

class CountryRepository < BaseRepository
  private

  def build_element(row)
    row[:id] = row[:id].to_i
    Country.new(row)
  end
end
