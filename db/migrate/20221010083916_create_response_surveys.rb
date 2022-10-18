class CreateResponseSurveys < ActiveRecord::Migration[6.1]
  def change
    create_table :response_surveys do |t|
      t.belongs_to :survey, foreign_key: true 

      t.timestamps
    end
  end
end
