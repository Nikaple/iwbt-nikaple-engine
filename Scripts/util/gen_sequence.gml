// gen_sequence(val, lower, upper, desc)
// @desc Generate a sequence between `lower` and `upper`, 
//       if `desc` is true, the sequence will be generated
//       in descending order.

var val, lower, upper, desc;
val = argument0
lower = argument1
upper = argument2
desc = argument3
if (desc) {
    if (val == lower) {
        return upper
    }
    return val - 1
}
if (!desc) {
    if (val == upper) {
        return lower
    }
    return val + 1
}

