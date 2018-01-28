class AddNumToWeeks < ActiveRecord::Migration[5.1]
  def change
    add_column :weeks, :num, :integer
  end
end
