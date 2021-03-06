require 'rails_helper'

describe "Show paper page", type: :feature do
    it "should display paper details" do
        @paper = FactoryBot.create :paper
        visit paper_path(@paper)
        expect(page).to have_text('COMPUTING MACHINERY AND INTELLIGENCE')
        expect(page).to have_text('Mind 49: 433-460')
        expect(page).to have_text('1950')
        expect(page).to have_text('Alan Turing')
    end
end