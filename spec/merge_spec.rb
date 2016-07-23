require 'spec_helper'

describe BoyScoutRule do

  context "when the merge is good" do
    it "responds to the user with an encouraging message" do
      success_response = "This branch will improve the maintainability of your codebase so we merged it automatically! Good work, scout!"
      expect(STDOUT).to receive(:puts).with(success_response)
      BoyScoutRule.merge "chore/refactoring"
    end
  end

  context "when the merge is bad" do
    it "gives the user a chance to abort the merge" do
      failure_response = "This branch will make your codebase less maintainable. Are you sure you want to throw more trash on this dumpster fire or would you prefer to keep refactoring before you merge?"
      expect(STDOUT).to receive(:puts).with(failure_response)
      BoyScoutRule.merge "feature/just-get-it-done"
    end
  end
end
