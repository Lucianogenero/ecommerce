module ApplicationHelper

    def current_user #retornar as informações do usuário logado no sistema, inclusive em controllers, views e modelos
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def show
        @user = User.find(params[:id])
    end

    
	def flash_message
	    messages = ""
	    [:notice, :info, :warning, :error].each {|type|
	      if flash[type]
	        messages += "<p class=\"#{type}\">#{flash[type]}</p>"
	      end
	    }

	    messages
	end
end

