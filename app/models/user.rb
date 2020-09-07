class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :questions,:class_name => "Question", :foreign_key => "user_id"
  has_many :answers,:class_name => "Answer", :foreign_key => "user_id"
  has_many :topics,:class_name => "Topic", :foreign_key => "user_id"	         
  has_many :follows, :as => :followable

  def self.questions
  	@questions = Question.all
  end

  def self.answers
  	@answers = Answer.all
  end

  def self.topics
  	@topics = Follow.find_by(followable_type: "Topic")
  end

  def self.following
  	@following = User.where(id: Follow.where(followable_type: "User").pluck(:user_id))
  end

end
