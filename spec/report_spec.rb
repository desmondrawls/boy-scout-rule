require 'spec_helper'

describe BoyScoutRule do
  describe "report" do
    subject(:boy_scout_rule) {BoyScoutRule.new(self)}
    let(:git_history) {"6d4b9be Add a cli.\n7844514 Create README.md\n79af7e6 Initial commit.\n"}
    let(:commit_stats) {"files | 99 +++---\n8 files changed, 103 insertions(+), 20 deletions(-)"}

    it "sends the commit count to the presenter" do
      boy_scout_rule.report_commit_count(git_history)
      expect(@report).to eq(3)
    end

    it "sends the file change count to the presenter" do
      boy_scout_rule.report_file_changes("6d4b9be", commit_stats)
      expect(@changes["6d4b9be"][:files]).to eq(8)
    end

    def print(report)
      @report = report
    end

    def add(changes)
      @changes = changes
    end
  end
end
