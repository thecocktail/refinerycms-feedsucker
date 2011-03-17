namespace :refinery do
  
  namespace :feedsucker do
    
    # call this task my running: rake refinery:feedsucker_feeds:my_task
    # desc "Description of my task below"
    # task :my_task => :environment do
    #   # add your logic here
    # end
  
    desc "Suck all feeds" 
    task :suck_all => :environment do
      FeedsuckerFeed.find(:all).each do |feed|
        feed.suck!
      end
    end
  
  end
  
end