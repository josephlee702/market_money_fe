class VendorService
  def self.conn
    Faraday.new(url: 'http://localhost:3000/')
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.all_vendors
    get_url('/api/v0/markets')
  end

  def self.vendor_details(vendor_id)
    get_url("/api/v0/vendors/#{vendor_id}")
  end
end
