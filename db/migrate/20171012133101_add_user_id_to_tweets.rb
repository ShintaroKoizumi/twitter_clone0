class AddUserIdToTweets < ActiveRecord::Migration[5.1]
  def change
    remove_column :tweets, :user_id, :int8, limit:8
  end
end
