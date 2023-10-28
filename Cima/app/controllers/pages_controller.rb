class PagesController < ApplicationController
  def home
    if user_signed_in? &&  Info.exists?(user_id: current_user.id)
      redirect_to feed_path
    end
  end
end
