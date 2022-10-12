class CreateResponseSurveys < ActiveRecord::Migration[6.1]
  def change
    create_table :response_surveys do |t|
      t.integer :answer_id
      t.integer :question_id
      t.integer :survey_id
      t.text :response 

      t.timestamps
    end
  end
end
