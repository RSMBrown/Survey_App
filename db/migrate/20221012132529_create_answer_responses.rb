class CreateAnswerResponses < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_responses do |t|
      t.integer :answer_id
      t.integer :response_survey_id

      t.timestamps
    end
  end
end
