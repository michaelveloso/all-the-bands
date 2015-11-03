require 'rails_helper'

describe Band do

  it { should have_valid(:name).when("Rush", "4 Non Blondes") }
  it { should_not have_valid(:name).when("", nil)}

  it { should have_valid(:year_formed).when(1959, 1053, 9395) }
  it { should_not have_valid(:year_formed).when(nil, "Violent Femmes", 35, 53525)}

  it 'should enforce uniqueness on name and year_formed' do
    name = "Duran Duran"
    year = 1977
    FactoryGirl.create(:band, name: name, year_formed: year)
    band_invalid = FactoryGirl.build(:band, name: name, year_formed: year)
    expect(band_invalid.valid?).to eq(false)
  end
end
