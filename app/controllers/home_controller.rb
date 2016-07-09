class HomeController < ApplicationController
  def index
    @articles = Article.take(10)
  end

  def search
    q = "%#{params[:keyword]}%"
    @articles = Article.where("title like :q or content like :q", :q => q).all
  end

  def search_hint
    q = "%#{params[:keyword]}%"
    @article_titles = Article.select(:title).distinct.where("title like :q", :q => q).all
    render json: @article_titles
  end
end
