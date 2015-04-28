require('rspec')
require('pry')
require('digipet')

describe(DigiPet) do
  describe("#initialize") do
    it("creates new pet and sets life levels") do
    my_pet = DigiPet.new("lil dragon")
    expect(my_pet.name()).to(eq("lil dragon"))
    expect(my_pet.food_lvl()).to(eq(10))
    expect(my_pet.sleep_lvl()).to(eq(10))
    expect(my_pet.active_lvl()).to(eq(10))
    end
  end
end
