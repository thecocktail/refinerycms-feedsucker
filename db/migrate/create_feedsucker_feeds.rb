class CreateFeedsuckerFeeds < ActiveRecord::Migration

  def self.up
    create_table :feedsucker_feeds do |t|
      t.string :title
      t.string :nicetitle
      t.string :url
      t.integer :position

      t.integer :number_of_posts
      t.boolean :delete_preview
      t.string :xpath_blog_title
      t.string :xpath_blog_url
      t.string :xpath_post_title
      t.string :xpath_post_content
      t.string :xpath_post_date
      t.string :xpath_post_url

      t.timestamps
    end

    add_index :feedsucker_feeds, :id

    load(Rails.root.join('db', 'seeds', 'feedsucker_feeds.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "feedsucker_feeds"})

    Page.delete_all({:link_url => "/feedsucker_feeds"})

    drop_table :feedsucker_feeds
  end

end
