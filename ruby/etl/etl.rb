class ETL
  def self.transform(old, new={})
    old.invert.keys.each do |array|
      value = old.invert[array]
      until array.empty?
        new[array.shift.downcase] = value
      end
    end
    new
  end
end