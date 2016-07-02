class HomeController < ApplicationController
  def index
    @articles = Article.take(10)
  end

  def search
    q = "%#{params[:keyword]}%"
    @articles = Article.where("title like :q or content like :q", :q => q).all
  end
end
