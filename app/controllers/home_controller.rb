class HomeController < ApplicationController
  def index
    @articles = Article.take(10)
  end
end
