class UrlsController < ApplicationController   
    def new
        @url = Url.new
    end

    def create
        url_params = params[:url]
        @url = Url.create(original_url: url_params[:original_url])
    end

    def show
        @url = Url.find_by_shortened_url(params[:random_string])
        puts params.inspect
        redirect_to "http://#{@url.original_url}"
    end
end
