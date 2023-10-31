require 'rails_helper'

#Sono stati testati gli unit test del controller info relativi a get index new e create
RSpec.describe InfosController, type: :controller do
  let(:user) { create(:user) }

  before(:each) do
    sign_in user 
  end

  describe "GET #index" do
    it "restituisce lo status HTTP 200" do
      get :index
      expect(response).to have_http_status(200)
    end

    it "rende il template :index" do
      get :index
      expect(response).to render_template("index")
    end

  end

  describe "GET #show" do
    it "restituisce lo status HTTP 200" do
      info = create(:info, user: user)
      get :show, params: { user_id: user.id }
      expect(response).to have_http_status(200)
    end

    it "rende il template :show" do
      info = create(:info, user: user)
      get :show, params: { user_id: user.id }
      expect(response).to render_template("show")
    end

    it "assegna @info con l'oggetto Info corretto" do
      info = create(:info, user: user)
      get :show, params: { user_id: user.id }
      expect(assigns(:info)).to eq(info)
    end
  end

  describe "GET #new" do
    it "restituisce lo status HTTP 200" do
      get :new
      expect(response).to have_http_status(200)
    end

    it "rende il template :new" do
      get :new
      expect(response).to render_template("new")
    end

    it "assegna un nuovo oggetto Info a @info" do
      get :new
      expect(assigns(:info)).to be_a_new(Info)
    end
  end
end
