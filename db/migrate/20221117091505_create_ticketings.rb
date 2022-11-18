class CreateTicketings < ActiveRecord::Migration[5.2]
  def change
    create_table :ticketings do |t|
      t.string :tk_account
      t.string :integer
      t.string :tk_price
      t.string :decimal
      t.string :tk_seat
      t.string :string

      t.timestamps
    end
  end
end
