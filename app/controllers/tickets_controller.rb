require_relative '../views/ticket_view.rb'
require_relative '../views/country_view.rb'


class TicketsController
  def initialize(tickets_repo, country_repo)
    @tickets_repo = tickets_repo
    @country_repo = country_repo

    @country_view = CountryView.new
    @view = TicketView.new
  end

  def list
    tickets = @tickets_repo.all
    @view.list_tickets(tickets)
  end

  def list_user_ticket(user)
    tickets = @tickets_repo.all
    user_tickets = tickets.select { |ticket| ticket.user.id == user.id }
    @view.list_tickets(user_tickets)
  end

  def add(user)
    @country_view.list_countries(@country_repo.all)
    ask_for_country = @view.ask_user_for("country")

    country = @country_repo.find(ask_for_country.to_i)

    ticket = Ticket.new(price: 0, user: user, country: country)
    @tickets_repo.add(ticket)
  end
end








