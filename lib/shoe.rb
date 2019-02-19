class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS << brand

  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def brand(brand)
    @brand = brand
    
    brand.collect do |variable|
      if variable != brand[-1]
          BRANDS << variable
      end
    end
    
  end

end
