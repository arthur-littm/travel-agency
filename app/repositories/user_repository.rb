require 'csv'
require_relative "base_repository.rb"

require_relative "../models/user.rb"

class UserRepository < BaseRepository
  private

  def build_element(row)
    row[:id] = row[:id].to_i
    User.new(row)
  end
end
