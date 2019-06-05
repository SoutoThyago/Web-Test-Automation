# language: pt

Funcionalidade: Comprar passagem aerea


	Cenário: 1-Ambiente de Origem/Destino e Data

		Dado que estou na tela inicial

		Quando informar os filtros corretamente

		Então abrir as opções de preço


	Cenário: 2-Ambiente de valores

		Dado que estou na tela de compra

		Quando escolher a opção desejada

		Então abrir as opções pessoais e de pagamento


	Cenário: 3-Ambiente de dados pessoais e da compra

		Dado que estou na tela de informações de compra

		Quando informar todos os dados corretamente

		Então garantir a reserva da compra