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

  # EDIT
  def edit
    @article = Article.find(params[:id])
  end

  # UPDATE

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
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
