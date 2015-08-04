class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :answertext
      t.references :question_id
    end
  end
end
