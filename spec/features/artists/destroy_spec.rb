# As a visitor
# when i visit the artists index page
#     and click a button 'Delete' next to an artist
#     then i am redirected back to the artists index page
# and i no longer see that artist

require 'rails_helper'

RSpec.describe "#delete Artist" do
    it 'can delete an artist from the index page' do
        artist = Artist.create!(name: 'Luis miguel')

        visit "/artists"

        click_button "Delete"

        expect(current_path).to eq("/artists")

        expect(page).to_not have_content('Luis miguel')
    end
end


