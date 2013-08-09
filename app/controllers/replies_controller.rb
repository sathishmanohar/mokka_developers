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
  end
end
