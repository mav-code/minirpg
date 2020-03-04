class CharactersController < ApplicationController


def show
    @character = Character.find(params[:id])
end

def new
    @character = Character.new
end

def create
    @character = Character.create(name: params[:character][:name], user_id: @logged_in_user_id)
    redirect_to @character
end
    
end
