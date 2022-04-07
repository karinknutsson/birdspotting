require 'test_helper'

class BirdTest < ActiveSupport::TestCase
    def setup
        @magpie = birds(:magpie)
        @blue_tit = birds(:blue_tit)
        @mute_swan = birds(:mute_swan)
    end

    test 'valid bird' do
        assert @magpie.valid?
        assert @blue_tit.valid?
        assert @mute_swan.valid?
    end

    #test 'invalid without name' do
    #    @magpie.name = nil
    #    assert @magpie.valid?
    #end
end
