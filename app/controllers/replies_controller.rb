class RepliesController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    @reply = @topic.replies.build(params[:reply])
    if @reply.save
      redirect_to @topic
      flash[:success] = "Your Reply Saved"
    else
      flash[:error] = "Some Problem saving reply"
    end
  end

  def destroy
    @topic = Topic.find(params[:topic_id])
    @reply = Reply.find(params[:id])

    if @reply.destroy
      redirect_to @topic
      flash[:success] = "Reply Deleted"
    else
      flash[:error] = "Error deleting reply"
    end
  end
end
