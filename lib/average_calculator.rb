class AverageCalculator

  def calc(appearances, at_bat, hits)
    if appearances == 0
      nil
    elsif at_bat == 0
      0
    else
      (hits.to_f / at_bat).round(3)
    end
  end

end
