# as a visitor
# when i visit the artists index
#     and click on 'New Artist'
#     then my current path is '/artists/new'
#     and i fill in the artist's name
#     then i click 'Create Artist'
#     i am redirected to this new artists show page

require 'rails_helper'

RSpec.describe '#create_artist' do
    it 'links to the new page from the artists index' do
        visit '/artists'

        click_link('New Artist')

        expect(current_path).to eq('/artists/new')
    end

    it 'can create a new  artist' do
        visit '/artists/new'

        fill_in 'Name', with: 'Luis Miguel'
        click_button('Create Artist')
        new_artist_id = Artist.last.id
        expect(current_path).to eq("/artists/#{new_artist_id}")
        expect(page).to have_content('Luis Miguel')

    end
end
