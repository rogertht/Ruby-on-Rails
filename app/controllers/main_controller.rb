class MainController < ApplicationController
  def index
    @articles = Article.all
  end

  def read
    @article = Article.find(params[:id]);
  end
end
