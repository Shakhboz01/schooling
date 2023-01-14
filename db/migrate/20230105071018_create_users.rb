class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.integer :age
      t.string :phone_number
      t.integer :role
      t.string :firstname
      t.string :lastname
      t.string :comment
      t.integer :status

      t.timestamps
    end
  end
end
