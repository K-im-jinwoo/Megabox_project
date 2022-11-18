class CreateScreens < ActiveRecord::Migration[5.2]
  def change
    create_table :screens do |t|
      t.integer :sc_start
      t.integer :sc_end

      t.timestamps
    end
  end
end
