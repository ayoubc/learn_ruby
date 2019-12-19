class Timer
  #write your code here
  attr_accessor :seconds,:minutes,:hours

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def time_string
    arr = Array.new(3, "00")
    @minutes += @seconds/60
    @hours += @minutes/60
    @seconds %= 60
    @minutes %= 60
    if @seconds <= 9
      arr[2] = "0"+@seconds.to_s
    else
      arr[2] = @seconds.to_s
    end
    if @minutes <= 9
      arr[1] = "0"+@minutes.to_s
    else
      arr[1] = @minutes.to_s
    end
    if @hours <= 9
      arr[0] = "0"+@hours.to_s
    else
      arr[0] = @hours.to_s
    end
    return arr.join(":")
  end
end
