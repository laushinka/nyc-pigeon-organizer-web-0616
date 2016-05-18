def nyc_pigeon_organizer(pigeon_data)
    pigeon_list = {}

    pigeon_data.each do |attribute, hash|
        hash.each do |key, value|
            value.each do |name|
                    if !pigeon_list[name]
                        pigeon_list[name] = {}
                    end
                    if !pigeon_list[name][attribute]
                        pigeon_list[name][attribute] = []
                    end
                    pigeon_list[name][attribute].push(key.to_s)
            end
        end
    end
    pigeon_list
end
