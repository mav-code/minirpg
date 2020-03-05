class CreateHooks < ActiveRecord::Migration[6.0]
  def change
    create_table :hooks do |t|
      t.string :prompt
      t.string :description
      t.string :result
      t.integer :job_id

      t.timestamps
    end
  end
end
