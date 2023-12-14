class Market
  attr_reader :name,
              :city,
              :state

  def initialize(attributes)
    @id = attributes[:id]
    @name = attributes[:attributes][:name]
    @city = attributes[:attributes][:city]
    @state = attributes[:attributes][:state]
  end
end
