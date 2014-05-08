require File.dirname(__FILE__) + '/spec_helper'

describe Trakt do
  describe Trakt::User do
    let(:trakt) do
      details = get_user_details
      trakt          = Trakt.new :apikey => details['apikey'],
        :username => details['username'],
        :password => details['password']
      trakt
    end
    it "should get user movie collection" do
      result = record(self) do
        result = trakt.user.movies_collection.count
      end
      result > 0
    end
  end
end
