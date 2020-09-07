class Question < ApplicationRecord
	belongs_to :user
	belongs_to :topic
	has_many :answers,:class_name => "Answer", :foreign_key => "question_id"
end
