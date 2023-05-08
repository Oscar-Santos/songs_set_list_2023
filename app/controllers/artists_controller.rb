class ArtistsController < ApplicationController
    def index

    end

    def new

    end

    def create
       artist = Artist.create(name: params[:name])
    end
end