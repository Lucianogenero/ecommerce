class FinalizarController < ActionController::Base
	def finalizar_compra
		@carrinho = session[:carrinho]
		@carrinho.each do |item|
			produto_id  = item[:produto_id]
			quantidade  = item[:quantidade]
			produto = Produto.find(produto_id)
		end
		#@finalizar_compra = Carrinho.find(id)
	end	
end