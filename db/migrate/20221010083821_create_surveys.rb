class CreateSurveys < ActiveRecord::Migration[6.1]
  def change
    create_table :surveys do |t|
      t.string :title 
      t.integer :survey_id 

      t.timestamps
    end
  end
end
