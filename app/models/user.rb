class User
  # DATA
  attr_reader :username, :password, :role
  attr_accessor :id

  def initialize(attributes)
    @id = attributes[:id]
    @username = attributes[:username]
    @password = attributes[:password]
    @role = attributes[:role] || "customer" # "customer" || "travel_agent"
  end

  def travel_agent?
    @role == "travel_agent"
  end

  # BEHAVIOR
  def build_csv_row
    return [@id, @username, @password, @role]
  end

  def self.headers
    return ["id", "username", "password", "role"]
  end
end
