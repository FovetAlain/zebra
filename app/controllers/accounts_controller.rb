class AccountsController < ApplicationController
  def index
  	if logged_in?
   		@user = current_user

  	else
    	redirect_to new_user_session_path
  	end
  end
  def show
  	
  	if logged_in?
   		@commande = Cart.find(params[:id])
      if current_user.id != @commande.user_id
        redirect_to accounts_path
      end
  	else
    	redirect_to new_user_session_path
  	end

  end
end
