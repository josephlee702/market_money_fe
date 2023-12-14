class Market
  attr_reader :id,
              :name,
              :street,
              :city,
              :state

  def initialize(market)
    @id = market[:id]
    @name = market[:attributes][:name]
    @street = market[:attributes][:street]
    @city = market[:attributes][:city]
    @state = market[:attributes][:state]
  end

  def full_address
    "#{@street} #{@city}, #{@state}"
  end
end
