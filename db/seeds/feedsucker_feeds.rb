User.find(:all).each do |user|
  if user.plugins.find_by_name('feedsucker_feeds').nil?
    user.plugins.create(:name => 'feedsucker_feeds',
                        :position => (user.plugins.maximum(:position) || -1) +1)
  end
end

# page = Page.create(
#   :title => 'Feedsucker Feeds',
#   :link_url => '/feedsucker_feeds',
#   :deletable => false,
#   :position => ((Page.maximum(:position, :conditions => {:parent_id => nil}) || -1)+1),
#   :menu_match => '^/feedsucker_feeds(\/|\/.+?|)$'
# )
# Page.default_parts.each do |default_page_part|
#   page.parts.create(:title => default_page_part, :body => nil)
# end
