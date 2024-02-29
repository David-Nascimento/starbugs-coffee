require_relative '../page_object/home'
require_relative '../page_object/checkout'
require_relative '../page_object/components'
require_relative '../page_object/order'

Before do
  @home = HomePage.new
  @checkout = CheckoutPage.new
  @popup = Popup.new
  @order = OrderPage.new
end

After do |scenario|
  if scenario.failed?
    screenshot = page.save_screenshot("logs/screenshots/#{scenario.__id__}.png")
    attach(screenshot, "image/png", "Screenshot")
  end
end