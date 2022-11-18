class ChangeColumn2 < ActiveRecord::Migration[5.2]
  def change
	  change_column :ticketings, :tk_account, :integer, using: 'tk_account::integer'
	  change_column :ticketings, :tk_price, :decimal, using:'tk_price::numeric'
  end
end
