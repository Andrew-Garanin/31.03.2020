class Auto
    attr_accessor :brand
    attr_accessor :model
    attr_accessor :year
    attr_accessor :sr_rash
    def initialize(brand, model,year, sr_rash)
        @brand=brand
        @model=model
        @year=year
        @sr_rash=sr_rash
    end
    
    def to_s
        "Марка: #{brand}\n"+
        "Модель: #{model}\n"+
        "Год выпуска: #{year}\n"+
        "Средний расход бензина на 100км: #{sr_rash}"
    end
    
    end