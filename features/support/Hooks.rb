require_relative '../page_object/home'
require_relative '../page_object/checkout'
require_relative '../page_object/components'

Before do
  @home = HomePage.new
  @checkout = CheckoutPage.new
  @popup = Popup.new
end