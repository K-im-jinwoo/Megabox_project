class CreateTheaters < ActiveRecord::Migration[5.2]
  def change
    create_table :theaters do |t|
      t.string :th_name
      t.string :string
      t.string :th_region
      t.string :string

      t.timestamps
    end
  end
end
