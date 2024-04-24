#> kfi:id/check_ids

# Check if id exists and store success
$execute store success score .success k.Values if data storage kfi:values registeredIDs[{id:$(tempID)}]