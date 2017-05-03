require_relative "base_view.rb"

class TicketView < BaseView
  def list_tickets(tickets)
    tickets.each do |ticket|
      puts "- #{ticket.price} - #{ticket.country.name} - #{ticket.user.username}"
    end
  end
end
