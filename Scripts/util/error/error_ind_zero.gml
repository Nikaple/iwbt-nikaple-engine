var type, name;
type = argument0
name = argument1

if (!global.production_mode) {
    show_error(
        type +
            ' of index 0 exists! This could cause unknown behaviors in game. ' +
            'To fix this, please duplicate the ' +
            type +
            ', rename it to the original name, delete the old one' +
            ', and make all relative resources link to the new one. (Object sprite, parent, etc.) ' + 
            'Index 0 of ' +
            type + 
            ' is: ' + 
            name,
        0
    )
}

