# frozen_string_literal: true

# Class GildedRose
class GildedRose
  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      case item.name
      when 'Aged Brie' then aged_item(item)
      when 'Sulfuras' then legendary(item)
      when 'Backstage passes' then backstage(item)
      when 'Conjured' then conjured(item)
      else any_item(item)
      end
    end
  end

  def aged_item(item)
    item.quality += item.sell_in <= 0 ? 2 : 1
    item.quality > 50 ? item.quality = 50 : puts(item)
  end

  def legendary(item)
    item.sell_in = 0
    item.quality = 80
  end

  def conjured(item)
    item.sell_in -= 1
    item.quality -= 2
  end

  def backstage(_item)
    @items.each do |item|
      case item.sell_in
      when item.sell_in <= 10 then item.quality += 2
      when item.sell_in <= 5  then item.quality += 3
      end
    end
  end

  def any_item(item)
    item.sell_in -= 1
    item.quality -= 1
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

item1 = Item.new('Fiebre monil', 5, 50)
item2 = Item.new('Covitz', 2, 25)
item3 = Item.new('Aged Brie', 15, 22)

items = [item1, item2, item3]
rose = GildedRose.new(items)
puts rose.update_quality
