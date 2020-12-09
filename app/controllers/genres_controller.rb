class GenresController < ApplicationController 

    def index
        @genres = Genre.all 
    end 

    def show
        @genre = Genre.find(params[:id])
    end 

    def edit
        @genre = Genre.find(params[:id])
    end 

    def update
        @genre = Genre.find(params[:id])
        @genre.update(artist_params(:name, :bio))
        redirect_to genre_path(@genre) 
    end 

    def new
        @genre = Genre.new  
    end 

    def create
        @genre = Genre.create(artist_params(:name))
        redirect_to genre_path(@genre)
    end 

    private 

    def artist_params(*args)
        params.require(:genre).permit(args)
    end

end 