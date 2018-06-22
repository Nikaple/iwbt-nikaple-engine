global.online_mode = true

with (objTitleController) {
    for (i = 0; i < 3; i += 1) {
        inst[i].text = buttonText[i + 3]
    }
}

if (!instance_exists(objServerConnector)) {
    instance_create(0, 0, objServerConnector)
}
