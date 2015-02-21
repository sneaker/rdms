Given(/^there is a User "(.*?)"$/) do |arg1|
  @user = FactoryGirl.create(:user, :name => arg1)
end

Given(/^User "(.*?)" has (\d+) documents$/) do |arg1, arg2|
  (1..arg2.to_i).each do
    user = User.find_by(:name => arg1)
    FactoryGirl.create(:document, :user_id => user.id)
  end
end

Then(/^User "(.*?)" should see (\d+) document$/) do |arg1, arg2|
  user = User.find_by(:name => arg1)
  expect(user.documents.count).to eq(arg2.to_i)
end
