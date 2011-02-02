module NavigationHelpers
  module Refinery
    module FeedsuckerFeeds
      def path_to(page_name)
        case page_name
        when /the list of feedsucker_feeds/
          admin_feedsucker_feeds_path

         when /the new feedsucker_feed form/
          new_admin_feedsucker_feed_path
        else
          nil
        end
      end
    end
  end
end
