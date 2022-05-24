# frozen_string_literal: true

#Class GildedRose
class GildedRose
  
  def initialize(items)
    @items = items
  end

  
  def update_quality
    @items.each do |item|
      case item.name
      when 'ejemplo uno' then puts(aged_item(item)) 
      when 'ejemplo dos' then puts(legendary(item))
      when 'ejemplo tres' then puts(backstage(item))
      else print(item.quality)
      end
    end
  end

  def aged_item(item)
    item.quality += item.sell_in <= 0 ? 2 : 1
    (item.quality > 50)? item.quality = 50: puts(item)
  end 

  def legendary(item)
    item.quality = 80
  end

  def conjured
    item.quality -= 2
  end

  def backstage(item)
    @items.each do |item|
      case item.sell_in
      when item.sell_in <= 10 then item.quality += 2
      when item.sell_in <= 5  then item.quality += 3 
      end 
    end
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

item1 = Item.new('ejemplo uno', 5, 50)
item2 = Item.new('ejemplo dos', 2, 25)
item3 = Item.new('ejemplo tres', 15, 22)



items = [item1, item2, item3]
rose = GildedRose.new(items)
puts rose.update_quality
