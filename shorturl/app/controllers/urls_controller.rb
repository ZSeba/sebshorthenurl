class UrlsController < ApplicationController   
    def new
        @url = Url.new
    end

    def create
    end

    def show
        @url = Url.find_by_shortened_url(params[:random_string])
        puts params.inspect
        redirect_to @url.original_url
    end
end
