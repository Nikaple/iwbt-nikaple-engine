global._online_mode = true

if (!instance_exists(objServerConnector)) {
    instance_create(0, 0, objServerConnector)
}
