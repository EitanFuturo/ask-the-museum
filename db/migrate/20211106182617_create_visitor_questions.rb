class CreateVisitorQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :visitor_questions do |t|
      t.text :text

      t.timestamps
    end
  end
end
