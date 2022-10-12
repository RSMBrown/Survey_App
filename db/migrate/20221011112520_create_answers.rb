class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.belongs_to :question, foreign_key: true 
      t.belongs_to :response_survey, foreign_key: true 
      t.text :choice

      t.timestamps
    end
  end
end
