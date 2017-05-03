class Country
  # DATA
  def initialize(attributes)
    @id = attributes[:id]
    @name = attributes[:name]
    @continent = attributes[:continent]
  end

  attr_reader :name, :continent
  attr_accessor :id

  # BEHAVIOR
  def build_csv_row
    return [@id, @name, @continent]
  end

  def self.headers
    return ["id", "name", "continent"]
  end
end
