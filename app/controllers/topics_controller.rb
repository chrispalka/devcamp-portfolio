class TopicsController < ApplicationController
  include WithBlogsConcern
	layout 'blog'

  def index
  	@topics = Topic.all
  end

  def show
  	@topic = Topic.find(params[:id])

  	if logged_in?(:site_admin)
      @blogs = @topic.blogs.page(params[:page]).per(5).recent_blogs
    else
      @blogs = @topic.blogs.Published.page(params[:page]).per(5).recent_blogs
    end
  end
end
