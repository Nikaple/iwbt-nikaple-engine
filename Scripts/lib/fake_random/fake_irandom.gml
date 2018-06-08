var num;
num = argument0

global.__fake_index = (global.__fake_index + 1) mod global.__fake_random_total

return floor(global.__fake_random[global.__fake_index] * (num + 1))
