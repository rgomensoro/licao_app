class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def new
    @user = User.new
    @title = "Cadastre-se"
  end
 
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Bem-vindo ao Licao Virtual!"    
      sign_in @user
      redirect_to @user
    else
      @title = "Cadastre-se"
      render 'new'
    end
  end

end
