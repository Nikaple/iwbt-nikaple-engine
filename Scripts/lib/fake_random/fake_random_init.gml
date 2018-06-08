global.__fake_index = 0
// make sure it's prime number
global.__fake_random_total = 541
for (global.__fake_index = 0; global.__fake_index < global.__fake_random_total; global.__fake_index += 1) {
    global.__fake_random[global.__fake_index] = random(1)
}

