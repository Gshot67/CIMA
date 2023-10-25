class FeedController < ApplicationController
    def index
      @search = Post.ransack(params[:q])
      @search.build_condition_with_topic_general if params[:topic] == "general"
      @posts = @search.result(distinct: true)
    end
    def show

    end
    def general
      @posts = Post.where(topic: 'general')
      render 'show'
    end
    def sport
      @posts = Post.where(topic: 'sport')
      render 'show'
    end
    def pop
      @posts = Post.where(topic: 'pop')
      render 'show'
    end

  end
  