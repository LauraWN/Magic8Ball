class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.timestamps
      t.references :user_id ##because I want this to belong to a user.
    end
  end
end
