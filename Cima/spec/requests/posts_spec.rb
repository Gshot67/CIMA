require 'rails_helper'

#sono stati eseguiti test rspec su tre metodi del controller di post index new e edit 
RSpec.describe PostsController, type: :controller do
  describe "GET #index" do
    it "assigns @posts" do
      post = create(:post) 
      get :index
      expect(assigns(:posts)).to eq([post])
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template("index")
    end
  end


  describe "GET #new" do
    it "creates a new post" do
      get :new
      expect(assigns(:post)).to be_a_new(Post)
    end

    it "assigns type_request" do
      get :new, params: { tor: 1, author: "Author Name", title: "New Title", content: "Content", topic: "Topic" }
      expect(assigns(:type_request)).to eq(1)
      expect(assigns(:author)).to eq("Author Name")
      expect(assigns(:title)).to eq("New Title")
      expect(assigns(:content)).to eq("Content")
      expect(assigns(:topic)).to eq("Topic")
    end
  end

    describe "GET #edit" do
        it "assigns the requested post" do
            post = create(:post)
            get :edit, params: { id: post.id }
            expect(assigns(:post)).to eq(post)
        end

        it "renders the :edit template" do
            post = create(:post)
            get :edit, params: { id: post.id }
            expect(response).to render_template("edit")
        end
    end

end