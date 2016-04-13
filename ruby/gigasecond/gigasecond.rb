require 'date'
require 'time'
require 'pry'

class Gigasecond
  GIGASEC = (10**9)
  VERSION = 1

  def self.from(time)
    time + GIGASEC
  end

end
