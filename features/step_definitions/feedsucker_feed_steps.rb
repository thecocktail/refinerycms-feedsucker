Given /^I have no feedsucker_feeds$/ do
  FeedsuckerFeed.delete_all
end

Given /^I (only )?have feedsucker_feeds titled "?([^\"]*)"?$/ do |only, titles|
  FeedsuckerFeed.delete_all if only
  titles.split(', ').each do |title|
    FeedsuckerFeed.create(:title => title)
  end
end

Then /^I should have ([0-9]+) feedsucker_feeds?$/ do |count|
  FeedsuckerFeed.count.should == count.to_i
end
