class AddUserIdToTweets2 < ActiveRecord::Migration[5.1]
  def change
    add_column :tweets, :user_id, :int8, limit:8
  end
end
