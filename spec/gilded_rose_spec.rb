# frozen_string_literal: true
require 'rspec'
require_relative '../lib/gilded_rose'

describe GildedRose do
  before(:each) do
    @items = Item.new
    @gilded_rose = GildedRose.new(@items)
  end

  describe '#update_quality' do
    xit  'does not change the name' do
      @items.name = 'Aged Brie'
      @gilded_rose.update_quality
      expect(@items.quality).to eq(2)
      expect(@items.name).to eq 'Aged Brie'
    end

    xit 'lowers the sell_in value by 1' do
      @items.sell_in = 10
      @gilded_rose.update_quality
      expect(@items.sell_in).to eq 9
    end

    xit 'lowers the quality by 1' do
      @items.quality = 10
      @gilded_rose.update_quality
      expect(@items.quality).to eq 9
    end

    xit 'lowers the quality by 2 when sell_in is 0' do
      @items.sell_in = 0
      @items.quality = 10
      @gilded_rose.update_quality
      expect(@items.quality).to eq 8
    end

    xit 'lowers the quality by 2 when sell_in is 0' do
      @items.sell_in = 0
      @items.quality = 10
      @gilded_rose.update_quality
      expect(@items.quality).to eq 8
    end

    xit 'lowers the quality by 2 when sell_in is 0' do
      @items.sell_in = 0
      @items.quality = 10
      @gilded_rose.update_quality
      expect(@items.quality).to eq 8
    end

    xit 'lowers the quality by 2 when sell_in is 0' do
      @items.sell_in = 0
      @items.quality = 10
      @gilded_rose.update_quality
      expect(@items.quality).to eq 8
    end

    xit 'lowers the quality by 2 when sell_in is 0' do
      @items.sell_in = 0
      @items.quality = 10
      @gilded_rose.update_quality
      expect(@items.quality).to eq 8
     end

    xit 'lowers the quality by 2 when sell_in is 0' do
       @items.sell_in = 0
       @items.quality = 10
       @gilded_
   end
end
end