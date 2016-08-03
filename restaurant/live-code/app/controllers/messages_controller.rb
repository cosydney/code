class MessagesController < ApplicationController
  def index
    @messages = Message.order('created_at DESC').limit(50).all
  end

  def create
    @message = Message.new(message_params)
    @message.user_ip = request.remote_ip
    @message.save
    redirect_to root_path
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to root_path
  end

  def like
    @message = Message.find(params[:id])
    @message.like!
    redirect_to root_path
  end

  private
    def message_params
      params.require(:message).permit(:body, :username)
    end
end
