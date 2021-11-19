require 'rails_helper'

describe "Edit author page", type: :feature do
    it "should write changes to the database" do
        @alan = FactoryBot.create :author
        visit edit_author_path(@alan)
        page.fill_in 'author[last_name]', with: 'Turin'
        find('input[type="submit"]').click
        @alan.reload
        expect(@alan.last_name).to eq('Turin')
    end
end