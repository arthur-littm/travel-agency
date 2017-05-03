require 'csv'
require_relative "base_repository.rb"

require_relative "../models/ticket.rb"

class TicketRepository < BaseRepository
  def initialize(csv_file_path, users_repo, countries_repo)
    @users_repo = users_repo
    @countries_repo = countries_repo
    super(csv_file_path)
  end

  private

  def build_element(row)
    id = row[:id].to_i
    price = row[:price].to_i
    user = @users_repo.find(row[:user_id].to_i)
    country = @countries_repo.find(row[:country_id].to_i)
    Ticket.new(id: id, user: user, country: country, price: price)
    # id, price, user, country
  end
end
