require 'pry'
class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def bank_account
   @bank_account
  end
  def happiness
    @happiness
    [[10, @happiness].min, 0].max
    #let's say @happiness is 100
    #goes through first array. [10, 100] and returns the lowest value - which is 10.
    #It then compares [10, 0] and returns the highest value - which is 10. so it can't go over 10.
    #let's say @happiness is 2
    #goes through first array. [10, 2] and returns the lowest value - which is 2.
    #It then compares [2, 0].min and returns the highest value - which is 2
  end
  def hygiene
    @hygiene
    [[10, @hygiene].min, 0].max
  end
  def happy?
    if @happiness > 7
      return true
    else
      false
    end
  end
  def clean?
    if @hygiene > 7
      return true
    else
      false
    end
  end
  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end
  def take_bath
    self.hygiene += 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"  
    hygiene#want to every time take_bath - increments the hygiene
  end
  def work_out
    self.happiness += 2
    self.hygiene -= 3
    return "♪ another one bites the dust ♫"
  end
  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
   
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
    
  end
  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -= 2
      friend.happiness -= 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1
      friend.happiness += 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
# your code goes here