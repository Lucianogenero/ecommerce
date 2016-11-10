class PrincipalsController < ApplicationController
	
  def index
  	if(params == "")
  		@Produto = Produto.all
  	else
   		@Produto = Produto.where("nome like '%#{params[:search]}%'")
  		render :principal
  		@Produto = ''
  	end
  end
end
