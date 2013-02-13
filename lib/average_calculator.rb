class AverageCalculator

  def calc(appearances, at_bat, hits)
    if appearances == 0
      nil
    else
    (hits.to_f / at_bat).round(3)
    end
  end
end
