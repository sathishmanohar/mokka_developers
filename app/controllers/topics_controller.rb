class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    @replies = @topic.replies
    @reply = @topic.replies.new
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(params[:topic])
    if @topic.save
      flash[:success] = "Topic created"
      redirect_to topic_url(@topic)
    else
      flash[:error] = "Error creating topic"
      render "new"
    end
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    if @topic.update_attributes(params[:topic])
        flash[:success] = "Topic updated"
        redirect_to topic_url(@topic)
      else
        flash[:error] = "Error updating topic"
        render "edit" 
    end
  end

  def destroy
    @topic = Topic.find(params[:id])
    if @topic.destroy
      flash[:success] = "Topic Deleted"
      redirect_to topics_url
    else
      flash[:error] = "Error Deleting topic"
      render "edit"
    end
  end
end
