class ArticlesController < ApplicationController

    def index
        # @user = user
        @articles = Article.all
    end
   
    def new
        @article = Article.new
    end
def create
    @article = Article.new(article_params)
    @article.user_id = User.first.id
    # debugger
    if @article.save
        flash.alert = "Article successfully created"
        redirect_to article_path(@article)
    else
        flash.alert = "Error"
        render 'new'
    end
end
def edit
    @article = Article.find(params[:id])
end
def update

    @article = Article.find(params[:id])
if @article.update(article_params)
    flash.alert = "Article Updates"
    redirect_to articles_path
else
    render 'edit'
end

end
def show
@article = Article.find(params[:id])
end
   
def destroy
    @article = Article.find(params[:id])
    if @article.destroy
        redirect_to article_path
    end
end
    def article_params
        params.require(:article).permit(:name , :description  )
    end

end