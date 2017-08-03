class PagesController < ApplicationController
  def home
    @articles = Article.all
    @articles_by_date = @articles.group_by(&:date)
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end
end
