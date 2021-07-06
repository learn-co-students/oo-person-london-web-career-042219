# coding: utf-8
# your code goes here
class Person
  attr_accessor :bank_account

  def happiness
    @happiness
  end

  def clamp(num)
    if num > 10
      num  = 10
    elsif num < 0
      num = 0
    end
    num
  end

  def happiness=(num)
    @happiness = clamp(num)
  end

  def hygiene
    @hygiene
  end

  def hygiene=(num)
    @hygiene = clamp(num)
  end
  
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def name
    @name
  end

  def happy?
    happiness > 7
  end

  def clean?
    hygiene > 7
  end

  def get_paid(amount)
    @bank_account += amount
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when "politics"
      self.happiness -= 2
      person.happiness -=2
      return "blah blah partisan blah lobbyist"
    when"weather"
      self.happiness += 1
      person.happiness += 1
      return "blah blah sun blah rain"
    end
     'blah blah blah blah blah'
  end
  
end
