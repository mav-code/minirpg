class AddColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :parent_id, :integer
    add_column :characters, :user_id, :integer
    add_column :character_jobs, :character_id, :integer
    add_column :character_jobs, :job_id, :integer
  end
end
