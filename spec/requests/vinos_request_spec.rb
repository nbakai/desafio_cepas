require 'rails_helper'

RSpec.describe "Vinos", type: :request do
    describe "GET index" do
        it "returns a successful response" do
        get '/'
       
        expect(response).to be_successful
        end
    
        it "assigns @vinos" do
        vino = Vino.create(nombre: "Vino title", nota: 50)
        vinos = Vino.all
        get '/'
        expect(assigns(:vinos)).to eq([vino])
        end
        it "renders the index template" do
        get '/'
        expect(response).to render_template("index")
        end
    end
end
