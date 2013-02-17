class BattingAverage
  include Comparable
  attr_reader :appearances

  def <=>(another)
    if !to_f && !another.to_f
      appearances <=> another.appearances
    elsif !to_f
      -1
    elsif !another.to_f
      1
    end
    to_f <=> another.to_f
  end

  def initialize(appearances, at_bat, hits)
    @appearances = appearances
    @at_bat = at_bat
    @hits = hits
  end

  def to_s
    f = to_f
    if !f
      '----'
    elsif f == 1
      "1.00"
    else
      f.round(3).to_s.sub(/^0/, '')
    end
  end

  def to_f
    if @appearances == 0
      nil
    elsif @at_bat == 0
      0
    else
      @hits.to_f / @at_bat
    end
  end

end
