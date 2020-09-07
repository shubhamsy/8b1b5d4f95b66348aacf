class Topic < ApplicationRecord
	belongs_to :user
	has_many :questions,:class_name => "Question", :foreign_key => "topic_id"
	has_many :follows, :as => :followable
end
