require 'rails_helper'

RSpec.describe Post, type: :model do
  it "is valid with valid attributes" do
    user = create(:user)
    post = Post.new(
      user: user,
      tag: "Example Tag",
      topic: "Example Topic",
      content: "Example Content",
      titolo: "Example Title",
      fonte_esterna: "Example Source",
      lingua: "Example Language",
      editoriale: "Example Editorial"
    )
    expect(post).to be_valid
  end

  it "is not valid without a user_id" do
    post = Post.new(
      tag: "Example Tag",
      topic: "Example Topic",
      content: "Example Content",
      titolo: "Example Title",
      fonte_esterna: "Example Source",
      lingua: "Example Language",
      editoriale: "Example Editorial"
    )
    expect(post).not_to be_valid
  end

  it "has many comments" do
    association = Post.reflect_on_association(:comments)
    expect(association.macro).to eq(:has_many)
  end
end