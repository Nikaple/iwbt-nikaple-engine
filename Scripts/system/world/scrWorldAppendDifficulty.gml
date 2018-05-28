if (isInGameRoom()) {
    room_caption += ' Mode['
    if (global.difficulty == 0) {
        room_caption += 'Medium'
    } else if (global.difficulty == 1) {
        room_caption += 'Hard'
    } else if (global.difficulty == 2) {
        room_caption += 'VeryHard'
    } else if (global.difficulty == 3) {
        room_caption += 'Impossible'
    }
    room_caption += ']'
}

