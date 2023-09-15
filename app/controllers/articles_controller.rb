class ArticlesController < ApplicationController
  
  def index

    @articles = Article.all
  end

  def show
    byebug
      @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      render json: @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    puts "Article found: #{@article}"
    @article.destroy

    redirect_to root_path, status: :see_other
  end
  
  
    private
    def article_params
      params.require(:article).permit(:title, :body, :status , :image)
    end
    

end
