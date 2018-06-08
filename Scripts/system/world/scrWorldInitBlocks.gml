// set blockHost & blockGuest
if (ns_is_host()) {
    object_set_parent(blockHost, block)
    object_set_parent(blockGuest, noone)
    with (blockHost) {
        solid = true
    }
    with (blockGuest) {
        solid = false
        image_alpha = 0.5
    }
} else {
    object_set_parent(blockGuest, block)
    object_set_parent(blockHost, noone)
    with (blockHost) {
        solid = false
        image_alpha = 0.5
    }
    with (blockGuest) {
        solid = true
    }
}
