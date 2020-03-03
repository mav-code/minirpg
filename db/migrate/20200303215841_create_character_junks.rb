class CreateCharacterJunks < ActiveRecord::Migration[6.0]
  def change
    create_table :character_junks do |t|
      t.integer :junk_id
      t.integer :character_id

      t.timestamps
    end
  end
end
