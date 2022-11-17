class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
	  remove_column(:theaters, :string)
	  remove_column(:ticketings, :string)
	  remove_column(:ticketings, :integer)
	  remove_column(:ticketings, :decimal)
  end
end
