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
      @feedtopic = 1
      render 'show'
    end
    def sport
      @languages = ['IT', 'EN', 'FR', 'SP']
      @language = params[:lingua] || 'Italiano'
      @posts = Post.where(topic: 'sport')
      render 'show'
    end
    def pop
      @languages = ['IT', 'EN', 'FR', 'SP']
      @language = params[:lingua] || 'Italiano'
      @posts = Post.where(topic: 'pop')
      render 'show'
    end

    def othernews
      @topic_feed = params[:feedtopic]
      ak = "8f0a1853a01d41619b14d5ebbf1db467"
      if @topic_feed == 1
        nuova_query = URI.encode_www_form("apiKey" => ak)
      elsif @topic == 2
        nuova_query = URI.encode_www_form("q" => "sport", "apiKey" => ak)
      else 
        nuova_query = URI.encode_www_form("q" => "entertainment", "apiKey" => ak)  
      end
      url = URI.parse("https://newsapi.org/v2/everything?#{nuova_query}")
      json_data= Net::HTTP.get(url)
      parsed_data = JSON.parse(json_data)
      numero_casuale = rand(1..15)
      primo_articolo = parsed_data['articles'][numero_casuale]
      @titolo = primo_articolo['title']
      @content = primo_articolo['content']
      @author = primo_articolo['author']
      redirect_to new_post_path(tor: 1, author: @author, content: @content, title: @titolo, topic: @topic_feed)
    end
end
  