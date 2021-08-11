class MessagesController < ApplicationController

  def index
    @messages = Message.all

    render json: @messages
  end

  def create

    # @user = User.find_by(:id => score_params[:userId])

  end


end