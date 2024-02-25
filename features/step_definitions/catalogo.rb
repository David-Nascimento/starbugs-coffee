Dado('que estou na página principal da Starbugs') do
  @home.open
end

Entao('eu devo ver uma lista de cafés disponiveis') do
  expect(@home.coffee_list.size).to be > 0
end

Dado('desejo comprar o seguinte produto:') do |table|
 @product = table.rows_hash
end

Quando('inicio a compra desse item') do
  @home.buy(@product[:name])
end

Então('devo ver a pagina de Checkout com os detalhes do produto') do
  @checkout.check_product_details(@product)
end

Então('o valor total da compra deve ser de {string}') do |total_price|
  @checkout.assert_total_price(total_price)
end

Então('devo ver um popup informando que o produto está indisponivel') do
  @popup.have_text("Produto indisponível")
end