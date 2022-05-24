# frozen_string_literal: true
require 'rspec'
require_relative'../lib/gilded_rose'


describe GildedRose do
  
  
  describe GildedRose do
    
    before(:each) do
      @items = Item.new
      @rose = GildedRose.new(@items)
      variable = "Nueva"
    end

    describe '#update_quality' do     
    
    list_items = [example_item,example_itemTwo,example_itemThree]
    
    Test_rose = GildedRose.new.update_quality
    Test_rose(list_items)

    it "aged item increases by two if the sell in days havent passed " do
      expect(list_items[0].quality).to eql(12)
    end
  end
end
