class CreateOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :options do |t|
      t.belongs_to :question, foreign_key: true
      t.text :choice 

      t.timestamps
    end
  end
end
