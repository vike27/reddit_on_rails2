class CreatePremails < ActiveRecord::Migration
  def change
    create_table :premails do |t|

    	t.text    :email

      t.timestamps
    end
  end
end
