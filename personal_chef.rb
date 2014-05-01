class PersonalChef
  def make_toast (color)
    puts "Making your toast! #{color}"
    return self
  end

  def make_milkshake(flavor)
    puts "Making your milkshake #{flavor}"
    return self
  end

  def make_eggs(quantity)
    5.times do
      puts "Making eggs #{quantity}"
    end
    return self
  end

  def inventory 
  produce = {apples: 3, oranges: 6, carrots: 12}
  produce.each do |item, quantity|
    puts "There are #{quantity} #{item} in the fridge."
   end
  end

  def water_status (minutes)
    if minutes < 7
      puts "The water is not boiling yet."
    elsif minutes == 7
      puts "It's just barely boiling"
    elsif minutes == 8 
      puts "It's boiling"
    else
      puts "Hot! Hot! Hot!"
    end
  end

  def countdown (counter)
    while counter > 0
      puts "The counter is #{counter}"
      counter = counter - 1
    end
    return self
  end


end

class Butler
  def open_door(type)
    puts "Opening your #{type} door!"
    return self
  end
end




frank = PersonalChef.new
frank.make_toast('burnt').make_eggs('3').make_milkshake('caramel')
jeeves=Butler.new
jeeves.open_door('front')
jeeves.open_door('back')
jeeves.open_door('garage')
frank.inventory
frank.water_status (8)
frank.countdown(7)