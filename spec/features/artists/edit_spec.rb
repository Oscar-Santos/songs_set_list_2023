# As a visitor
# when i visit the artists index
#     and click 'Edit' next to an artists
#     then I am taken to an edit artist form
# when i enter a new name for the artist
#     and click a button to 'Update Artist'
#     then i am redirected back to the artists index
#     and i see the updated name

require 'rails_helper'


RSpec.describe '#edit_artist' do
    it 'links to the edit page' do
        artist = Artist.create!(name: 'Luis miguel')
        visit '/artists'

        click_button "Edit #{artist.name}"

        expect(current_path).to eq("/artists/#{artist.id}/edit")
    end

    it 'can edit the artist' do
        artist = Artist.create!(name: 'Luis migu')

        visit "/artists"
        

        expect(page).to have_content('Luis migu')
        click_button 'Edit Luis migu'

        fill_in 'Name', with: 'Luis miguel'

        click_button 'Update Artist'

        expect(current_path).to eq("/artists")
        expect(page).to have_content('Luis miguel')
    end
end