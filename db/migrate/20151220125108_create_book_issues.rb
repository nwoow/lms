class CreateBookIssues < ActiveRecord::Migration
  def change
    create_table :book_issues do |t|
      t.integer :user_id, index: true
      t.integer  :book_id, index: true
      t.datetime :issue_date
      t.timestamps null: false
    
    end
  end
end
