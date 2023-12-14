class Vendor
  attr_reader :id,
              :name,
              :description,
              :contact_name,
              :contact_phone

  def initialize(attributes)
    @id = attributes[:id]
    @name = attributes[:attributes][:name]
    @contact_name = attributes[:attributes][:contact_name]
    @contact_phone = attributes[:attributes][:contact_phone]
  end
end
