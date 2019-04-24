# your code goes here
class Person
 attr_reader :name, :happiness
 attr_accessor :bank_account, :hygiene

def initialize(name)
  @name = name
  @bank_account =25
  @happiness = 8
  @hygiene = 8
end

def get_paid(payment)
@bank_account += payment
"all about the benjamins"
end

def happiness=(points)
  @happiness = points
  if points >10
    @happiness =10
  end
  if points < 0
    @happiness =0
  end

  end

  def hygiene=(points)
    @hygiene = points
    if points >10
      @hygiene =10
    end
    if points < 0
      @hygiene =0
    end

    end

def clean?
 if @hygiene > 7
   true
 else
   false
 end
end

def happy?
  if @happiness > 7
    true
  else
    false
  end
end

def take_bath
  self.hygiene = @hygiene + 4
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
    self.happiness -= 2
    friend.happiness -= 2
    return "blah blah partisan blah lobbyist"
  end
  if topic == "weather"
    self.happiness += 1
    friend.happiness += 1
    return "blah blah sun blah rain"
  end
  "blah blah blah blah blah"
end







end
