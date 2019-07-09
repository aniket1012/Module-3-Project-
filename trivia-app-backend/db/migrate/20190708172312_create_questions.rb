class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.belongs_to :category, foreign_key: true
      t.string :difficulty
      t.string :question
      t.string :correct_answer
      t.belongs_to :round, foreign_key: true

      t.timestamps
    end
  end
end
