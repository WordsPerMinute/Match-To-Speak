class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.references :learner, foreign_key: true
      t.references :teacher, foreign_key: true
      t.string :language

      t.timestamps
    end
  end
end
