class UrlsController < ApplicationController

    def create
        url = params['url']
        Url.create!(url: url['url'], description: url['description'], category_id: params[:category_id])
        redirect_to categories_path
    end

    def show
    end
end
