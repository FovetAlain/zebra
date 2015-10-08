class UserSessionsController < ApplicationController
  def new
  end

  def create
    if login(params[:email], params[:password])
      redirect_back_or_to(root_path, notice: 'Connexion réussie.')
    else
      flash.notice = "Mot de passe et/ou identifiant incorrect."
      render action: :new
    end
  end

  def destroy
    logout
    redirect_to(:users, notice: 'Déconnecté.')
  end
end
