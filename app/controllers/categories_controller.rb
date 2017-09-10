class CategoriesController < ApplicationController

    def index 
        @category = Category.all
    end

    def show
        @category = Category.find_by(id: params[:id])
    end

    def new
        @cat = Category.new
    end

    def create
        category = params['category']
        @cat = Category.create(name: category['name'], description: category['description'])
        if (@cat.save)
            redirect_to categories_path
        else
            render 'new'
        end
    end
    
    def destroy
        Category.destroy(params['id'])
        redirect_to categories_path
    end
end
