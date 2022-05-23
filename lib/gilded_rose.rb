# frozen_string_literal: true

#Class GildedRose
class GildedRose
  
  def initialize(items)
    @new_item = Item.new
    @items = items
  end

  
  def update_quality
    @new_item do |item|
      case item.name
      when 'ejemplo uno' then aged_item(item) 
      when 'ejemplo dos' then legendary(item)
      when 'ejemplo tres' then backstage(item)
      end
    end
  end

  def aged_item(item)
    item.quality += item.sell_in <= 0 ? 2 : 1
    item.quality = 50 if item.quality > 50
  end 

  def legendary(item)
    item.quality = 80
  end

  def conjured
    item.quality -= 2
  end

  def backstage(item)
    case item.sell_in do |item|
    when item.sell_in <= 10 then item.quality += 2
    when item.sell_in <= 5  then item.quality += 3
    end
    item.quality = 0  if item.sell_in <= 0 
  end

end






# Class Item
class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s
    "#{@name}, #{@sell_in}, #{@quality}"
  end

end

puts item1 = Item.new('Japon', 5, 50)
puts item2 = Item.new('Nicaragua', 2, 25)
puts item3 = Item.new('Pan', 15, 22)
puts item4 = Item.new('Aged Brie', 10, 10)
puts item5 = Item.new('Sulfuras, Hand of Ragnaros', 20, 20)
puts item6 = Item.new('Backstage passes to a TAFKAL80ETC concert', 30, 30)


items = [item1, item2, item3, item4, item5, item6]
rose = GildedRose.new(items)
puts rose.update_quality
