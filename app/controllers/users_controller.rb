class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]
 
  before_filter :admin, only: [:index, :destroy]
  before_filter :user_edit, only: [:edit, :update]

def admin
  if logged_in?
    unless current_user.username == "admin"
      redirect_to root_path
      return false
    end
  else
    redirect_to root_path
  end
end

def user_edit
  if logged_in?
    unless set_user.id == current_user.id || current_user.username == "admin"
      redirect_to root_path
    end
  else
    redirect_to root_path
  end
end


  # GET /users
  # GET /users.json
  def index

    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json


  # GET /users/new
  def new

    @user = User.new
  end

  # GET /users/1/edit
  def edit

  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html { redirect_to new_user_session_path, notice: 'Compte créé avec succès.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to accounts_path, notice: 'Compte modifié avec succès.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Compte supprimé avec succès.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :nom, :prenom, :email, :rue, :cp, :ville, :password, :password_confirmation)
    end
end
