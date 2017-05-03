require 'csv'
require_relative "base_repository.rb"

require_relative "../models/user.rb"

class UserRepository < BaseRepository

  def find_by_username(username)
    @elements.find { |user| user.username == username }
  end

  private

  def build_element(row)
    row[:id] = row[:id].to_i
    User.new(row)
  end
end
