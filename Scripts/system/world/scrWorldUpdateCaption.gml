// death captions
room_caption = global.room_caption_def + ' Death[' + string(global.death) + ']'
// time captions
time = global.timestep div (2 * room_speed)
hour = time div 3600
atime = time mod 3600
muni = atime div 60
sec = atime mod 60
msec = global.timestep - time * 2 * room_speed
if (round(msec) >= 10) {
    room_caption +=
        ' Time[' +
        string(hour) +
        ':' +
        string(muni) +
        ':' +
        string(sec) +
        '.' +
        string(round(msec)) +
        ']'
} else {
    room_caption +=
        ' Time[' +
        string(hour) +
        ':' +
        string(muni) +
        ':' +
        string(sec) +
        '.0' +
        string(round(msec)) +
        ']'
}

