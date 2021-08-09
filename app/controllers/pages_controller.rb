class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:pages, :home, :info]
  def home
    @page= 'home'
  end

  def catering
    @page = 'catering'
  end

  def info
    @page = 'info'
  end
end
