require 'rails_helper'

RSpec.describe Cepa, type: :model do
  
  before { Cepa.create!(nombre: 'Merlot', proporcion: 45.0) }
  subject {
    Cepa.new(nombre: 'Merlot', proporcion: 45.0)
  }
  it 'is invalid if the nombre is not unique' do
  expect(subject).to be_invalid
  end
  it "is not valid without an nombre" do
    cepa = Cepa.create(nombre: nil, proporcion: 2.0)
    expect(cepa).to_not be_valid
  end
  it "is not valid without an nombre" do
    cepa = Cepa.create(nombre:"", proporcion: 3.0)
    expect(cepa).to_not be_valid
  end
  it "is not valid without an nombre" do
    cepa = Cepa.create(nombre:"Carmenere", proporcion: 3.0)
    expect(cepa).to be_valid
  end
  
end

