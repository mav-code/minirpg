class CreateCharacterJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :character_jobs do |t|

      t.timestamps
    end
  end
end
