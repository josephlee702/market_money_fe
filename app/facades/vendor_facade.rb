class VendorFacade
  def self.vendor_details(vendor_id)
    json_response = VendorService.vendor_details(vendor_id)
    Vendor.new(json_response[:data])
  end
end
