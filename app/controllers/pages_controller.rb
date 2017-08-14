class PagesController < ApplicationController
  def home
    @articles = Article.published
    @articles_by_date = @articles.group_by(&:date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
end
