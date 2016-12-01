class CustAddressesController < ApplicationController
  def new
    @cust_address = CustAddress.new
  end
end
