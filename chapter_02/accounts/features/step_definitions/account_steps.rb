Given /^I have an account$/ do
  @account = Account.new
end

Given /^it has a balance of (\d+)$/ do |amount|
  @account.balance = amount
end

When /^I take out (\d+)$/ do |amount|
  @account.balance -= amount.to_i
end

Then /^my balance should be (\d+)$/ do |amount|
  @account.balance.should eql(amount.to_i)
end