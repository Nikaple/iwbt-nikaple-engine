if (!global.cheat_detection) exit

///cheat preventing
if (isInGameRoom()) {
    check_timer += 1
    if (check_timer == 10) {
        date_time_previous = date_time
        date_time = date_current_time()
        time_span = date_second_span(date_time_previous, date_time)
        if (
            round(50 * time_span * fps / room_speed) > 10 &&
            date_time_previous != 0
        ) {
            cheat_time += 5 * time_span * fps / room_speed
        } else {
            cheat_time = 0
        }
        check_timer = 0
    }

    if (cheat_time > 100) {
        show_message('Cheat Detected.')
        game_end()
    }
}

