class User
  # DATA
  def initialize(attributes)
    @id = attributes[:id]
    @username = attributes[:username]
    @password = attributes[:password]
  end

  attr_reader :username, :password
  attr_accessor :id

  # BEHAVIOR
  def build_csv_row
    return [@id, @username, @password]
  end

  def self.headers
    return ["id", "username", "password"]
  end
end
