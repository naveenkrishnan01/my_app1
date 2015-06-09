class CreateUserTweets < ActiveRecord::Migration
  def change
    create_table :user_tweets do |t|
      t.string :provider
      t.string :uid
      t.string :name

      t.timestamps
    end
  end
end
