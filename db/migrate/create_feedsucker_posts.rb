class CreateFeedsuckerPosts < ActiveRecord::Migration

  def self.up
    create_table :feedsucker_posts do |t|
      t.id :feedsucker_feed_id
      t.string :blog_title
      t.string :blog_url
      t.string :title
      t.text :content
      t.datetime :date
      t.string :url

      t.timestamps
    end

    add_index :feedsucker_posts, :id

#     load(Rails.root.join('db', 'seeds', 'feedsucker_posts.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "feedsucker_posts"})

    Page.delete_all({:link_url => "/feedsucker_posts"})

    drop_table :feedsucker_posts
  end

end
