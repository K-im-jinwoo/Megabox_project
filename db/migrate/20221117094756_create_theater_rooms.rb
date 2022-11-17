class CreateTheaterRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :theater_rooms do |t|
      t.string :tr_name
      t.integer :tr_seat

      t.timestamps
    end
  end
end
