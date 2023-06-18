module Api
  class ArticlesController < ApplicationController
    def create
      @article = Article.new(article_params)
      @article.slug = params[:article][:title].parameterize

      if @article.save
        render json: @article, serializer: ArticleSerializer, except: :id, status: :created
      else
        render json: { errors: @article.errors }, status: :unprocessable_entity
      end
    end

    def show
      @article = Article.find_by_slug(params[:slug])
      render json: @article, serializer: ArticleSerializer, except: :id
    end

    def update
      @article = Article.find_by_slug(params[:slug])
      @article.slug = params[:article][:title].parameterize

      if @article.update(article_params)
        render json: @article, serializer: ArticleSerializer, except: :id
      else
        render json: { errors: @article.errors }, status: :unprocessable_entity
      end
    end

    def destroy
      @article = Article.find_by_slug(params[:slug])
      @article.destroy

      render json: { message: 'Article deleted' }, status: :ok
    end

    private

      def article_params
        params.require(:article).permit(:title, :description, :body)
      end
  end
end