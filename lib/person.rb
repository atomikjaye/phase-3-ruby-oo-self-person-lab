# your code goes here
require 'pry'
class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
    num < 0 ? @happiness = 0 : num > 10 ? @happiness = 10 : (@happiness = num)
    # binding.pry
  end
  
  def hygiene=(num)
    # puts num
    # puts @hygiene
    num < 0 ? @hygiene = 0 : num > 10 ? @hygiene = 10 : (@hygiene = num)
    # binding.pry
  end

  def happy?
    @happiness > 7 ? true : false
  end

  def clean?
    @hygiene > 7 ? true : false
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    # @hygiene += 4
    # binding.pry
    self.hygiene = @hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = @hygiene -= 3
    self.happiness = @happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    # TODO:// Why does happiness method work?
    # TODO:// I don't need to add the @happiness because #happiness= gets called anyway
    
    self.happiness = @happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(friend, topic)
    if(topic == 'politics')
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif(topic == 'weather')
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
    end
end