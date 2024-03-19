class ArticlesController < ApplicationController
  def index
    @articles = Article.all.order(created_at: :desc)
  end

  def show
    @article = Article.find_by(id: params[:id])
    redirect_to articles_path if @article.blank?
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to articles_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end