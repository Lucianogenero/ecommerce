class CarrinhosController < ActionController::Base


  def add 
 		id = params[:id]
  			if session[:carrinho] then
   				carrinho = session[:carrinho]
  			else 
   				session[:carrinho] = {}
   				carrinho = session[:carrinho]
  			end

  			if carrinho[id] then
   				carrinho[id] = carrinho[id] + 1
  			else
   				carrinho[id] = 1
  			end
  		redirect_to :action => :index
 	end

	def clearCart
 		session[:carrinho] = nil
 		redirect_to :action => :index
	end

	def index
 		if session[:carrinho] then
  			@carrinho = session[:carrinho]
 		else
  			@carrinho = {}
 		end
	end 

  def addCliente
     
   end 
end	