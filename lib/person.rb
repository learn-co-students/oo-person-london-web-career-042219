class Person
  
  attr_accessor :bank_account
  
  def happiness=(num)
    if num > 10
      num = 10
    elsif num < 0 
      num = 0
    end
    @happiness = num
  end

  def happiness
  @happiness
  end

  def hygiene=(num)
    if num > 10
      num = 10
    elsif num < 0 
      num = 0
    end
      @hygiene = num
  end
  
  def hygiene
    @hygiene
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

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
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
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    if topic == "politics"
      self.happiness -=2 
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness += 1 
      friend.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end
  end
end

