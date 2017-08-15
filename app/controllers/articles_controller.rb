class ArticlesController < ApplicationController
  
  def index
    @articles = Article.published
    @articles_by_date = @articles.group_by(&:date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    raise
  end
end
