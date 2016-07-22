class BoyScoutRule
  def self.merge(branch)
    if branch.include? "refactor"
      good_merge
    else
      bad_merge
    end
  end

  private

  def self.good_merge
    puts "This branch will improve the maintainability of your codebase so we merged it automatically! Good work, scout!"
  end

  def self.bad_merge
    puts "This branch will make your codebase less maintainable. Are you sure you want to throw more trash on this dumpster fire or would you prefer to keep refactoring before you merge?"
  end
end
