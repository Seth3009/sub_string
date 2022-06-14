require 'spec_helper'
require_relative '../sub_strings'

RSpec.describe 'Sub String' do

    describe 'count words case insensitively' do
        
        it 'count matched words' do
            dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
            expect(count_strings("below", dictionary)).to eq({ "below" => 1, "low" => 1 })
        end

        it 'count matched words' do
            dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
            words = "Howdy partner, sit down! How's it going?"
            expect(count_strings(words, dictionary)).to eq({ "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 })
        end
    end
end