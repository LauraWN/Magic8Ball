class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content
      t.timestamps
      t.references :question, index: true, foreign_key: true
    end
  end
end
