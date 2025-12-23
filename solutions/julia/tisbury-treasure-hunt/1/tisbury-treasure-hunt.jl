function get_coordinate(line)
    treasure, coords = line
    coords
end

function convert_coordinate(coordinate)
    Tuple(coordinate)
end

function compare_records(azara_record, rui_record)
    join(azara_record[2]) == join(rui_record[2])
end

function create_record(azara_record, rui_record)
    location, coords, quadrant = rui_record
    treasure, _ = azara_record
    if compare_records(azara_record, rui_record)
        return (join(coords), location, quadrant, treasure)
    end
    return ()
end
