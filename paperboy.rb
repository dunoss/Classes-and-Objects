class Paperboy
  attr_accessor :name, :experience
  attr_reader :earnings
  def initialize (name)
    @name = name
    @dailyquota = 50.00
    @eachpaper = 0.25
    @experience = 25.00
    @earnings = true
  end

  def quota
    (@experience/2) + @dailyquota
  end

  def deliver(start_address, end_address)
      @earnings = (end_address - start_address) * @eachpaper

  end

  def report
    puts "I'm #{@name}, I've delivered #{quota} papers and I've earned $ #{@earnings} so far!"
  end
end
