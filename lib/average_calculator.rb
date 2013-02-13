class AverageCalculator

  def calc(appearances, at_bat, hits)
    (hits.to_f / at_bat).round(3)
  end

end
