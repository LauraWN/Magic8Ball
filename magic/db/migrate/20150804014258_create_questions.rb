class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :questiontext
      t.string :date
      t.references :user_id ##because I want this to belong to a user. okay?
    end
  end
end
