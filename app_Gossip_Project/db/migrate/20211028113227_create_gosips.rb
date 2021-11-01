class CreateGosips < ActiveRecord::Migration[5.2]
  def change
    create_table :gosips do |t|

      t.timestamps
    end
  end
end
