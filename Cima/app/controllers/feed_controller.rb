class FeedController < ApplicationController
    def index
      @search = Post.ransack(params[:q])
      @search.build_condition_with_topic_general if params[:topic] == "general"
      @posts = @search.result(distinct: true)
    end
    def show
      @posts = Post.all
    end
  end
  