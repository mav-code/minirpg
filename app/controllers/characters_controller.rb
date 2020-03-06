class CharactersController < ApplicationController


    def show
        @character = Character.find(params[:id])
        @string = "<h1> Hey </h1>".html_safe
        @jobs = @character.jobs
        @character_hooks = @jobs.map{|job| job.hooks}.flatten
    end

    def new
        @character = Character.new  
    end

    def create
        @character = Character.create(name: params[:character][:name], user_id: @logged_in_user_id)
        CharacterJob.create(character_id: @character.id, job_id: Job.first.id)
        redirect_to @character
    end

    def update
        @character = Character.find(params[:id])
        flash[:notification] = Hook.find(params[:character][:hook_ids]).description
        if !CharacterJob.find_by(character_id: @character.id, job_id: Hook.find(params[:character][:hook_ids]).result[:newjob].id)
            CharacterJob.create(character_id: @character.id, job_id: Hook.find(params[:character][:hook_ids]).result[:newjob].id)
        end
        redirect_to character_path(@character)
    end


end
