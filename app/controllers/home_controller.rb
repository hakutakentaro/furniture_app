class HomeController < ApplicationController
    def index
        redirect_to rooms_path if user_signed_in?
    end
end
