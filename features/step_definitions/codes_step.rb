When(/^I fill form with "(.*?)" and "(.*?)"$/) do |message, keys|
  visit '/codes/home'
  fill_in "code_message", :with => message
  fill_in "code_keys", :with => keys
  click_button "Encrypt"
end

Then(/^I should see "(.*?)"$/) do |message|
  page.has_content?(message)
end
