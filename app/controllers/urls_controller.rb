class UrlsController < ApplicationController

    def create
        url = params['url']
        @url = Url.create(url: url['url'], description: url['description'], category_id: params[:category_id])
        if (@url.save)
            redirect_to category_path(params[:category_id])
        else
            render 'new'
        end
    end

    def new
        @category = Category.find(params[:category_id])       
        @url = Url.new 
    end
    def show
        @url = Url.find_by(id: params[:id])
    end
    def destroy
        Url.destroy(params['id'])
        redirect_to categories_path
    end

end
