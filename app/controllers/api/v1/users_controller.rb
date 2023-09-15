class Api::V1::UsersController < ApiController
      
    def index
        @user = User.all
        render json: @user.to_json
    end
    
    def show
        @user = User.all
        render json: @user.to_json
    end
    
    
    private

    def article_params
        params.require(:article).permit(:username, :email, :password)
    end
end
    