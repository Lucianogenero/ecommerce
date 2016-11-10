class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
	def def
	end

	def messages
		flash[:notice] = "Informações salvas com sucesso."
		flash[:warning] = "Preencha todos os campos obrigatórios."
		flash[:error] = "Não foi possível salvar as informações."
		flash[:info] = "Você tem mensagens não visualizadas."
		#na view:  <%= flash_message %>
	end
end
