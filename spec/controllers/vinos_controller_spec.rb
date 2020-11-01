require 'rails_helper'

RSpec.describe VinosController, type: :controller do
    describe "GET #index" do
        before :each do
            user = User.create(email: 'user@user.mail', password: 'user234')
            sign_in :user, user
            get :index
        end
        subject { get :index }
    
        it "renders the index template" do
          expect(subject).to render_template(:index)
          expect(subject).to render_template("index")
          expect(subject).to render_template("vinos/index")
        end
    
    end
    describe "GET show/:id" do
        before :each do
            @vino = Vino.create!(nombre: 'Merlot', nota: 40)
        end
        subject { get :show, id: @vino.id} 
        it "renders the show template" do

          expect(subject).to render_template(:show)
        end
      
       
      
    end
    # describe "GET #show" do
    #     before :each do
    #         user = User.create(email: 'user@user.mail', password: 'user234')
    #         sign_in :user, user
    #         get :show
    #     end
    #     subject { get :show, id: 2 }
    
    #     it "renders the show template" do
        
    #       expect(subject).to render_template("vinos/2")
    #     end
    
    # end
   
end