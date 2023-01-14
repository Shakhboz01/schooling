class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.references :subject, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :monthly_amount
      t.integer :daily_amount
      t.integer :teacher_payment

      t.timestamps
    end
  end
end
