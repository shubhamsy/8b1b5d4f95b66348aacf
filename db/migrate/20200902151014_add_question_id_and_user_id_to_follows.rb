class AddQuestionIdAndUserIdToFollows < ActiveRecord::Migration[6.0]
  def change
    add_column :follows, :question_id, :integer
    add_column :follows, :user_id, :integer
  end
end
