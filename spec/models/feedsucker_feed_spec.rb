require 'spec_helper'

describe FeedsuckerFeed do

  def reset_feedsucker_feed(options = {})
    @valid_attributes = {
      :id => 1,
      :title => "RSpec is great for testing too"
    }

    @feedsucker_feed.destroy! if @feedsucker_feed
    @feedsucker_feed = FeedsuckerFeed.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_feedsucker_feed
  end

  context "validations" do
    
    it "rejects empty title" do
      FeedsuckerFeed.new(@valid_attributes.merge(:title => "")).should_not be_valid
    end

    it "rejects non unique title" do
      # as one gets created before each spec by reset_feedsucker_feed
      FeedsuckerFeed.new(@valid_attributes).should_not be_valid
    end
    
  end

end