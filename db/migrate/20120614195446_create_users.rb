class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
			t.string :first_name
			t.string :last_name
			t.string :phone
      t.timestamps
    end
  end
end
