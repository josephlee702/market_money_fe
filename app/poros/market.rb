class Market
  attr_reader :id,
              :name,
              :street,
              :city,
              :state

  def initialize(attributes)
    @id = attributes[:id]
    @name = attributes[:attributes][:name]
    @street = attributes[:attributes][:street]
    @city = attributes[:attributes][:city]
    @state = attributes[:attributes][:state]
  end

  def full_address
    "#{@street} #{@city}, #{@state}"
  end
end
