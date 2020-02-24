class Api::V1::ArticlesController < ApplicationController
	def index
      @articles = Article.all
      render json: @articles
  	end
 
 
def edit
     @article = Article.find(params[:id])
 end
 
 def create 
   	    @article = Article.new(article_params)
        
    if @article.save
        render json: @article
  	else
       render json: @articles.errors
  	end
end

  def show
     @article = Article.find(params[:id])
     render json: @article
  end
 
 
def update
     @article = Article.find(params[:id])
 
  if @article.update(article_params)
      redirect_to @article
  else
      render 'edit'
  end
end

def destroy
  @article = Article.find(params[:id])
  @article.destroy

  respond_to do |format|
        format.html { redirect_to article_path}
        format.js
        format.json {render json: {deleted: true} }
      end
end
 
 private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
