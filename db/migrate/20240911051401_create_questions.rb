class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :title
      t.text :content
      t.string :ans_title
      t.text :ans_content
      t.timestamps
    end
  end
end
