class CreateAnswerOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :answer_options do |t|
      t.belongs_to :option, foreign_key: true 
      t.belongs_to :answer, foreign_key: true 

      t.timestamps
    end
  end
end
