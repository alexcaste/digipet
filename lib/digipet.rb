class DigiPet
  define_method(:initialize) do |name|
    @name = name
    @food_lvl = 10
    @sleep_lvl = 10
    @active_lvl = 10
  end

  define_method(:name) do
    @name
  end

  define_method(:food_lvl) do
    @food_lvl
  end

  define_method(:sleep_lvl) do
    @sleep_lvl
  end

  define_method(:active_lvl) do
    @active_lvl
  end

end
