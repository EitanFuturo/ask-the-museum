class AddColumsToVisitorQuestion < ActiveRecord::Migration[6.1]
  def change
    add_column :visitor_questions, :visitor_name, :string
    add_column :visitor_questions, :visitor_age, :integer
    add_column :visitor_questions, :visitor_location, :string
  end
end
