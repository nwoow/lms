class Book < ActiveRecord::Base
	#belongs_to :user 
	has_many :users
    has_many :users, through: :book_issues
end
