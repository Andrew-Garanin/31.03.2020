require 'json'

class Fleet
    def initialize()
        @cars=[]
    end

    def add(car)
        @cars<<car
    end

    def load_from_file
        json_data = File.read("list.json")
        ruby_objects = JSON.parse(json_data)
        pp ruby_objects
        for obj in ruby_objects
           puts obj[model]
        end
    end

    def average_consumption
        count=0
        sr_znach=0
        for car in @cars
            count+=1
            sr_znach+=car.sr_rash
        end
        return sr_znach/count
    end

    def number_by_brand(brand)
        count=0
        for car in @cars 
            if car.brand==brand
                count+=1
            end
        end
        return count
    end

    def number_by_model(model)
        count=0
        for car in @cars 
            if car.model==model
                count+=1
            end
        end
        return count
    end

    def consumption_by_brand(brand)
        count=0
        sr_znach=0
        for car in @cars 
            if car.brand==brand
                count+=1
                sr_znach+=car.sr_rash
            end
        end
        return sr_znach
    end

end