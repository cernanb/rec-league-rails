class CreateStats < ActiveRecord::Migration[5.1]
  def change
    create_table :stats do |t|
      t.integer :pass_yards
      t.integer :rec_yards
      t.integer :rush_yards
      t.boolean :catch
      t.boolean :rush

      t.timestamps
    end
  end
end
