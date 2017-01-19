function parse_file(file)
    if endswith(file, ".m")
        return PowerModels.parse_matpower(file)
    else
        network_data = PowerModels.parse_json(file)
        update_derived_values(network_data)
        return network_data
    end
end