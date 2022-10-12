class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.belongs_to :survey, foreign_key: true 
      t.text :main_question
      t.integer :question_type

      t.timestamps
    end
  end
end
