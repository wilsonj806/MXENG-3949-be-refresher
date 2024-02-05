class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.timestamps
      t.string :name
      t.string :first_name
      t.string :last_name
      t.string :email
    end
  end
end
