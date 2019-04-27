class Timer
  attr_accessor :seconds

  def initialize
  	@seconds = 0 
  end

  def time_string 
  	hours = 0
  	minutes = 0
  	seconds = @seconds

		while seconds > 60 do
			seconds = seconds - 60
			minutes = minutes + 1
		end

		while minutes > 60 do
			minutes = minutes - 60
			hours = hours + 1
		end

		if hours.to_s.length == 1
			hours = "0#{hours}"
		end

		if minutes.to_s.length == 1
			minutes = "0#{minutes}"
		end

		if seconds.to_s.length == 1
			seconds = "0#{seconds}"
		end

		@result = "#{hours}:#{minutes}:#{seconds}"
  end
end
