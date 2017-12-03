class RemoveQuestionIdRefFromUsers < ActiveRecord::Migration
  def change
    remove_reference :users, :question, index: true, foreign_key: true
  end
end
