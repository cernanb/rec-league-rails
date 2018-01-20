class PagesController < ApplicationController
  def welcome
  end

  def dashboard
    @receivers = User.top_ten_receivers
    @rushers = User.top_ten_rushers
  end
end
