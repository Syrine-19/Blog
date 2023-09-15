class Api::V1::ArticlesController < ApiController
      
    def index
        @articles = Article.all
        render json: @articles.to_json
    end
    
    def show
        @articles = Article.all

        render json: @article
    end
    
    def create
        @article = Article.new(article_params)
        if @article.save
            render json: @article, status: :created
        else
            render json: @article.errors, status: :unprocessable_entity
        end
    end
    
    def update
        if @article.update(article_params)
            render json: @article
        else
            render json: @article.errors, status: :unprocessable_entity
        end
    end
    
    def destroy
        @article.destroy
        head :no_content
    end
    
    private

    def article_params
        params.require(:article).permit(:title, :body, :status)
    end
end
    