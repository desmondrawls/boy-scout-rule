require "csv"

class CSVGenerator
  def self.print(count)
    CSV.open("report.csv", "wb") do |report|
      report << ["count"]
      report << [count.to_s]
    end
  end
end
