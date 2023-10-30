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
      
      @cinfo = Info.where(user_id: current_user.id).first
      @tipo= @cinfo.tipo
      @feedtopic = 1
      render 'show'
    end
    def sport
      @languages = ['IT', 'EN', 'FR', 'SP']
      @language = params[:lingua] || 'Italiano'
      @posts = Post.where(topic: 'sport')
      @cinfo = Info.where(user_id: current_user.id).first
      @tipo= @cinfo.tipo
      @feedtopic = 2
      render 'show'
    end
    def pop
      @languages = ['IT', 'EN', 'FR', 'SP']
      @language = params[:lingua] || 'Italiano'
      @posts = Post.where(topic: 'pop')
      @cinfo = Info.where(user_id: current_user.id).first
      @tipo= @cinfo.tipo
      @feedtopic = 3
      render 'show'
    end

    def othernews
      @topic_feed = params[:feedtopic].to_i
      ak = "8f0a1853a01d41619b14d5ebbf1db467"
      if @topic_feed == 1
        nuova_query = URI.encode_www_form("q" => "it", "apiKey" => ak)
      elsif @topic_feed == 2
        nuova_query = URI.encode_www_form("q" => "sport", "apiKey" => ak)
      else 
        nuova_query = URI.encode_www_form("q" => "interesting", "apiKey" => ak)  
      end
      url = URI.parse("https://newsapi.org/v2/everything?#{nuova_query}")
      json_data= Net::HTTP.get(url)
      parsed_data = JSON.parse(json_data)
      numero_casuale = rand(1..15)

      if parsed_data['articles'].nil? || parsed_data['articles'].empty?
        redirect_to feed_path
        return
      else

        primo_articolo = parsed_data['articles'][numero_casuale]
        if primo_articolo.nil? || primo_articolo.empty?
          redirect_to feed_path
          return
        else
          @titolo = primo_articolo['title']
          @content = primo_articolo['content']
          @author = primo_articolo['author']
        end
      end
      if @topic_feed == 1
        @topic_string = 'general'
      elsif @topic_feed == 2
        @topic_string = 'sport'
      else
        @topic_string = 'pop'
      end

      redirect_to new_post_path(tor: 1, author: @author, content: @content, title: @titolo, topic: @topic_string)
    end
end
  