class FeedController < ApplicationController
    def index
      @search = Post.ransack(params[:q])
      @search.build_condition_with_topic_general if params[:topic] == "general"
      @posts = @search.result(distinct: true)
    end
    def show

    end
    def general
      @languages = ['IT', 'EN', 'FR', 'SP']
      @language = params[:lingua] || 'Italiano'
      @posts = Post.where(topic: 'general')
      @posts = @posts.where(lingua: @language)
      render 'show'
    end
    def sport
      @languages = ['IT', 'EN', 'FR', 'SP']
      @language = params[:lingua] || 'Italiano'
      @posts = Post.where(topic: 'sport')
      @posts = @posts.where(lingua: @language)
      render 'show'
    end
    def pop
      @languages = ['IT', 'EN', 'FR', 'SP']
      @language = params[:lingua] || 'Italiano'
      @posts = Post.where(topic: 'pop')
      @posts = @posts.where(lingua: @language)
      render 'show'
    end

  end
  