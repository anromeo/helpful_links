require 'spec_helper'

feature 'Create a Link' do
	scenario "link creation" do
		visit '/'
		click_link 'Add a Helpful Link for Learning Rails'
		fill_in "url", :with => 'theuaguide.com'
		fill_in "rating", :with => '10'
		click_button 'Add Link'
		page.should have_content('Thanks for the new link!')
	end
end