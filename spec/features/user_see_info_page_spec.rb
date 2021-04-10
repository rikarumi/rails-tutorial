# spec/features/user_see_info_page_spec.rb

require 'rails_helper'

RSpec.describe 'Example' do
    describe 'Info' do
        it 'shows info' do
            visit pages_info_path
            expect(page).to have_content('Info')
            expect(page).to have_link('tutorial from railsgirls')
        end
    end
end