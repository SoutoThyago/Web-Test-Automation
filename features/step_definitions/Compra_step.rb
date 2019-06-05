Dado("que estou na tela inicial") do
	@driver.get "https://www.viajanet.com.br"
end

Quando("informar os filtros corretamente") do
	sleep 8
	@driver.find_element(class: "btn-close-modal").click

	sleep 8
	@driver.find_element(:id, "inptdestination").send_keys("Chap")

	sleep 3
	input_element = @driver.find_element(:id, "inptdestination")
	input_element.send_keys(:arrow_down, :enter)
	@driver.find_element(:id, "departureDate").click
	@driver.find_elements(css: "button[data-pika-year='2019'][data-pika-month='6'][data-pika-day='30']")[0].click #30/07/2019
	@driver.find_element(:id, "arrivalDate").click
	@driver.find_elements(css: "button[data-pika-year='2019'][data-pika-month='7'][data-pika-day='30']")[0].click #30/08/2019
end

Então("abrir as opções de preço") do
	@driver.find_element(class: "btn-default").click
end

Dado("que estou na tela de compra") do
	sleep 30
	@driver.find_element(class: "social-login__btn-close").click
end

Quando("escolher a opção desejada") do
	@driver.find_element(class: "btn-checkin").click
end

Então("abrir as opções pessoais e de pagamento") do
	sleep 10
	windowhandles = @driver.window_handles
	@driver.switch_to.window windowhandles[1]
end

Dado("que estou na tela de informações de compra") do
	@driver.navigate.refresh
end

Quando("informar todos os dados corretamente") do
	sleep 5
	@driver.find_element(:id, "my-account_email").send_keys("thyago123@gmail.com")
	@driver.find_element(:id, "nome_0").send_keys("Fulano")
	@driver.find_element(:id, "lastName_0").send_keys("de Tal")
	@driver.find_element(:id, "birth_0").send_keys("01/01/2000")
	input_element = @driver.find_element(class: "ng-pristine")
	input_element.send_keys(:arrow_down, :enter)
	@driver.find_element(:id, "card2").click
	@driver.find_element(:id, "flag_card").send_keys("Visa") 
	input_element = @driver.find_element(:id, "flag_card")

	sleep 2
	input_element.send_keys(:enter)
	@driver.find_element(:id, "number_card-0").send_keys("4929192215543443") 
	@driver.find_element(:id, "month-0").send_keys("11") 
	@driver.find_element(:id, "year-0").send_keys("2020") 
	@driver.find_element(:id, "name_card-0").send_keys("Fulano de Tal") 
	@driver.find_element(:id, "cpf_card-0").send_keys("44519091985") 
	@driver.find_element(:id, "codesecure_card-0").send_keys("659") 
	@driver.find_element(:id, "zipcode-0").send_keys("89950-000")
	
	sleep 2
	@driver.find_element(:id, "address-0").send_keys("Rua Almirante")
	sleep 2
	@driver.find_element(:id, "address-0").submit
	@driver.find_element(:id, "number_address-0").send_keys("111") 
	@driver.find_element(:id, "complement-0").send_keys("Apto 301") 
	@driver.find_element(:id, "neighborhood-0").send_keys("Centro") 
	@driver.find_element(:id, "city-0").send_keys("chapecó") 
	@driver.find_element(:id, "state-0").send_keys("Santa Catarina") 
	@driver.find_element(:id, "contact_email").send_keys("thyago123@gmail.com")
	@driver.find_element(:id, "contact_email_confirm").send_keys("thyago123@gmail.com") 
	@driver.find_element(:id, "contact_phonenumber_0").send_keys("49999999999") 
	@driver.find_element(:id, "accept-checkout").click
	@driver.find_element(:id, "notsecure").click
end

Então("garantir a reserva da compra") do
  	@driver.find_element(class: "btn-default").click
  	sleep 15
	@driver.quit	
end