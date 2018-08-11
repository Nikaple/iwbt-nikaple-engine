// _autotile_exclude(id)

// exclude objects when auto tile

var ind;
ind = argument0.object_index

switch (ind) {
    case blockPush:
    case blockConveyor:
    case blockConveyorL:
    case blockConveyorR:
        return true
    default:
        return false
}
