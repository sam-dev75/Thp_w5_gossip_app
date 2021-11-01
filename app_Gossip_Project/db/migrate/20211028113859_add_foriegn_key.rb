class AddForiegnKey < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :city, foreign_key: true
    add_reference :gosssips, :user, foreign_key: true 
    add_reference :private_messages, :user, foreign_key: true
  end
end
