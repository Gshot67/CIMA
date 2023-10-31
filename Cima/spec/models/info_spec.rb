
require 'rails_helper'

RSpec.describe Info, type: :model do
  it "is valid with valid attributes" do
    user = create(:user) 
    info = Info.new(user: user, username: "example", tipo: 0)
    expect(info).to be_valid
  end

  it "is not valid without a user_id" do
    info = Info.new(username: "example", tipo: 0)
    expect(info).not_to be_valid
  end


  it "is valid without a nome a photo a certification" do
    user = create(:user) 
    info = Info.new(user: user, username: "example", tipo: 0)
    expect(info).to be_valid
  end


  it "is valid with a valid tipo" do
    user = create(:user) 
    info = Info.new(user: user, username: "example", tipo: 2)
    expect(info).to be_valid
  end


  it "has a unique username" do
    Info.create(user_id: 1, username: "example", tipo: 0)
    info = Info.new(user_id: 2, username: "example", tipo: 0)
    expect(info).not_to be_valid
  end

end