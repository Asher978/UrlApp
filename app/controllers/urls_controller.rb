class UrlsController < ApplicationController

    def create
        url = params['url']
        Url.create(url: url['url'], (description: url['description'])
        redirect_to categories_path
    end
end
