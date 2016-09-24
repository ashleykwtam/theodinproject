class Timer
  #write your code here
  attr_writer :seconds, :minutes, :hours

  def initialize
  	@seconds = 0
  	@minutes = 0
  	@hours = 0
  end

  def time_string
  	pad(hours) + ":" + pad(minutes) + ":" + pad(seconds)
  end

  def seconds
  	@seconds % 60
  end

  def minutes
  	@seconds / 60 % 60
  end

  def hours
  	@seconds / 60 / 60 % 60
  end

  def pad(number)
  	"%02d" % number
  end
end
