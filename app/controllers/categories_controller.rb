class CategoriesController < ApplicationController

    def index 
        @category = Category.all
    end

    def show
        @category = Category.find_by(id: params[:id])
    end

    def create
        category = params['category']
        Category.create(name: category['name'])
        redirect_to categories_path
    end
end
