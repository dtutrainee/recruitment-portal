require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  

   test "should not save candidate without name" do
      candidate=Candidate.new
      assert !candidate.save
  

  end
test "should not save candidate without interviewer" do
      candidate=Candidate.new
      assert !candidate.save
  end
end
