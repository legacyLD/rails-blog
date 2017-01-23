class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  # SHOW
  def show
    @article = Article.find(params[:id])
  end

  # NEW
  def new
    @article = Article.new
  end

  # CREATE
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  # PRIVATE
  private
    def article_params
      params.require(:article).permit(:title, :text)
    end

end
