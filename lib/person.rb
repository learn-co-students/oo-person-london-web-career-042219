# your code goes here
# your code goes here
require 'pry'
class Person
  attr_reader :name
  attr_accessor :bank_account
  attr_reader :happiness
  attr_reader :hygiene
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end
  def happiness=(num)
    if num > 10
      @happiness = 10
    elsif num < 0
      @happiness = 0
    else
      @happiness = num
    end
  end
  # def happiness=(num)
  #   @happiness = num
  #   if @happiness > 10
  #     increase_happiness(0)
  #   elsif @happiness < 0
  #     decrease_happiness(0)
  #   end
  # end
  def hygiene=(num)
    if num > 10
      @hygiene = 10
    elsif num < 0
      @hygiene = 0
    else
      @hygiene = num
    end
  end
  # def hygiene=(num)
  #   @hygiene = num
  #   if @hygiene > 10
  #     increase_hygiene(0)
  #   elsif @hygiene < 0
  #     decrease_hygiene(0)
  #   end
  # end
  def clean?
    @hygiene > 7 ? true : false
  end
  def happy?
    @happiness > 7 ? true : false
  end
  def get_paid(salary)
    @bank_account += salary
    return "all about the benjamins"
  end
  # def increase_happiness(num)
  #   @happiness = [(@happiness + num),10].min{ |a,b| a<=>b}
  #   return @happiness
  # end
  # def increase_hygiene(num)
  #   @hygiene = [(@hygiene + num),10].min{ |a,b| a<=>b}
  #   return @hygiene
  # end
  # def decrease_happiness(num)
  #   @happiness = [(@happiness - num),0].max{ |a,b| a<=>b}
  #   return @happiness
  # end
  # def decrease_hygiene(num)
  #   @hygiene = [(@hygiene - num),0].max{ |a,b| a<=>b}
  #   return @hygiene
  # end
  def take_bath
    self.hygiene=(@hygiene + 4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  def work_out
    self.happiness=(@happiness + 2)
    self.hygiene=(@hygiene - 3)
    return "♪ another one bites the dust ♫"
  end
  def call_friend(friend)
    friend.happiness=(friend.happiness + 3)
    self.happiness=(@happiness+3)
    return "Hi #{friend.name}! It's #{@name}. How are you?"
  end
  def start_conversation(friend, topic)
    case topic
    when "politics"
      self.happiness=(@happiness - 2)
      friend.happiness=(friend.happiness - 2)
      return "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness = (@happiness + 1)
      friend.happiness = (friend.happiness + 1)
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end
  end
end
