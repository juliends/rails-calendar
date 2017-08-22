class ArticlesController < ApplicationController
  
  def index
    raise
    @articles = Article.published
    @articles_by_date = @articles.group_by(&:date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(date: Date.parse(params[:article][:date]))
    redirect_to root_path
  end
end
