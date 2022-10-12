class CreateResponseSurveys < ActiveRecord::Migration[6.1]
  def change
    create_table :response_surveys do |t|
      t.belongs_to :question, foreign_key: true 
      t.integer :answer_id
      t.integer :survey_id
      t.text :response 

      t.timestamps
    end
  end
end
