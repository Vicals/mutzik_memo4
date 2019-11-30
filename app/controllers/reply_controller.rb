class ReplyController < ApplicationController
  before_action :authenticate_user!
  
  def create
    reply = Reply.new
    reply.post_id = params[:id]
    reply.user_id = current_user.id
    reply.content = params[:content]
    reply.save
    
    redirect_to :back
  end

  def destroy
    reply = Reply.find(params[:id])
    reply.destroy
    
    redirect_to :back
  end
end
