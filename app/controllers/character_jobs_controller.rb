class CharacterJobsController < ApplicationController


    def create
        @character_job = CharacterJob.create(character_id: params[@character.id], job_id: hook.result[:newjob].id)
        flash[:notification] = hook.description
    end

end
