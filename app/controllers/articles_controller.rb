class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @artice = Article.new(article_params)
    if @article.save
      redirect_to root_path
    else
      render text: 'ERROR'
    end
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def artcile_params
    params.require(:article).permit(:title, :body, :tags)
  end
end
