class UsersController < ApplicationController
  before_action :set_user, only: [:show, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.find_or_create_by(:name => params[:username])
    # byebug
    @user.song === nil ? @user.song = "" : @user
    if @user
      # byebug
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end
  
  # PATCH/PUT /users/1
  def update
    @user = User.find_by(:id => params[:params][:id])
    
    if @user.update(song: params[:params][:song])
      # byebug
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      # byebug
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.fetch(:user, {})
    end
end
