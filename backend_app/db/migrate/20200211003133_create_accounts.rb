class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :zip
      t.integer :learning
      t.integer :teaching
      t.string :bio
      t.string :email

      t.timestamps
    end
  end
end
