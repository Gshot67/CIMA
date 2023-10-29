class SearchController < ApplicationController
    def index
        @posts = Post.search(params[:query])
    end
end
