class ChatroomController < ApplicationController
  before_action :require_user

  def index
    @message = Message.new
    @messages = Message.all
  end

  def show 
    @messages = Message.find(params[:id])
  end

end