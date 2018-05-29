var name, value;
name = argument0
value = argument1

if (is_real(value)) {
    if (value == 0) {
        show_error(
            string(name) +
                ' is required in object: ' +
                object_get_name(id.object_index) +
                ', id: ' +
                string(id) +
                ', room: ' +
                room_get_name(room) +
                ', position: (' +
                string(x) +
                ', ' +
                string(y) +
                ').',
            0
        )
    }
}
