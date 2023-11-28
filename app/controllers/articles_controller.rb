class ArticlesController < ApplicationController
    def index
        response = HTTParty.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=154304597d054e2ba511fc122ec5523b")
        @response = JSON.parse(response.body)
        @articles = @response["articles"]
        # puts(@articles)

        @info = Article.all
        # puts(@info)
        render json: Article.all

        @articles.each do |articulo|
           if(@info.length < 19)
           @articulos = Article.new(articulo)
              if@articulos.save
                puts("se guardo")
              else
                puts("no se guardo")
            end
           end
        end
    end
end
