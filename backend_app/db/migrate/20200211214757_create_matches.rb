class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.references :learner
      t.references :teacher
      t.string :language
      
      t.timestamps
    end
  end
end
