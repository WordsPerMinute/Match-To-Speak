class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :zip
      t.string :learning
      t.string :teaching
      t.string :bio
      t.string :email
      t.string :photo_url

      t.timestamps
    end
  end
end
