class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.string :learner
      t.string :teacher
      t.string :language

      t.timestamps
    end
  end
end
