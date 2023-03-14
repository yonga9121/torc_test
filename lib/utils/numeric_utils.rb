module Utils
  class NumericUtils
    def self.nearest_round(val, nearest)
      ((val * nearest).ceil / nearest.to_f)
    end
  end
end
