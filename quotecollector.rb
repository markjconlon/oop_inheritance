require_relative 'multilinguist'

class QuoteCollector < Multilinguist

  #going to store in an array of hashes since we want keep track of topics with the hash
  #and keep each one separate in an array for easy randomnization
  attr_accessor :collection
  def initialize
    super
    @collection = [{quote: "Innovation distinguishes between a leader and a follower", author: "Steve Jobbs", topic: "leadership"}]
  end

  def collect(quote, author = "unknown", topic = :any)
    @collection << {quote: quote, author: author, topic: topic}
  end

  def give_random(topic = "")
    if topic != ""
      @collection.each do |quote|
        if quote[:topic] == topic.downcase
          puts quote
          break
        end
      end
    else
      random_index = rand(@collection.length)
      say_in_local_language("A wise person once said: #{@collection[random_index][:quote]}")
    end
  end

end

me = QuoteCollector.new
me.collect("With great power there must also come... great responsibility!", "Stan Lee", "life")
me.collect("If we do not blow ourselves up, the future will be wonderful.", "Stan Lee", "life")
# puts me.give_random
# me.travel_to("France")
# puts me.give_random
# me.travel_to("India")
# puts me.give_random
me.give_random("life")
