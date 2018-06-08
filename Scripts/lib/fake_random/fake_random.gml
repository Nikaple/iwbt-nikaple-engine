var num;
num = set_default(argument0, 1)

global.__fake_index = (global.__fake_index + 1) mod global.__fake_random_total

return num * global.__fake_random[global.__fake_index]
