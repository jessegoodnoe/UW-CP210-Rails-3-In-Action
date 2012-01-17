require 'bacon'

describe Bacon do
  subject { Bacon.new }
  
  its(:edible?) {should be_true}
  
  it "expired!" do
    subject.expired!
    subject.should_not be_edible
  end
end