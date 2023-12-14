class VendorsController < ApplicationController
  def show
    @vendor = VendorFacade.vendor_details(params[:id])
  end
end
