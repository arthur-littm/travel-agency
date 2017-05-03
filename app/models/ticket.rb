class Ticket
  # DATA
  attr_reader :country, :user, :price
  attr_accessor :id

  def initialize(attributes)
    @id = attributes[:id]
    @price = attributes[:price]
    @user = attributes[:user]
    @country = attributes[:country]

  end

  # BEHAVIOR
  def build_csv_row
    return [@id, @price, @user.id, @country.id]
  end

  def self.headers
    return ["id", "price", "user_id", "country_id"]
  end
end
