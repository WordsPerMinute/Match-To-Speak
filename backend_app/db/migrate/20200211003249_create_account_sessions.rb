class CreateAccountSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :account_sessions do |t|
      t.references :account
      t.references :session

      t.timestamps
    end
  end
end
