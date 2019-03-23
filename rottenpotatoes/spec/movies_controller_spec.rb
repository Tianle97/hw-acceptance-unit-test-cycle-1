require 'rails_helper'

describe MoviesController, type: 'controller' do
    let(:movies) { ['star wars', 'raiders'] }    
    
    context '#search_directors' do
        describe 'movie has a director' do
            it 'responds to the search_directors route' do
            #get :search_directors, { id: 1 }
            end
        end 
        
        describe 'search similar movies' do
          it 'queries the Movie model about similar movies' do
            @movie = Movie.create(:id => "123", title: "abc", director: nil)
            get :search_directors, id: @movie[:id]
            expect(response).to redirect_to(movies_path)
          end
          
          it 'assigns similar movies to the template' do
            pending "Implement this test!"
            fail
          end
        end
    end    
end