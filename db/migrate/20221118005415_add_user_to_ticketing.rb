class AddUserToTicketing < ActiveRecord::Migration[5.2]
  def change
    add_reference :ticketings, :user, foreign_key: true
  end
end
