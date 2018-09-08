// Initializing
setGlobals()
if (!directory_exists(working_directory + '\Data\Plugin\')) {
    show_error(
        '游戏需要 Data 文件夹才能运行哦，请将压缩包解压到独立的文件夹再试。This game cannot run without `Data` folder.', 1
    )
}
if (!directory_exists(global.saving_directory)) {
    directory_create(global.saving_directory)
}
global.savenum = 1
global.difficulty = 3
global.room_caption_def = ''
global.death = 0
global.timestep = 0
global.__keypad_status = keyboard_get_numlock()

difText[DIF_MEDIUM] = 'Medium'
difText[DIF_HARD] = 'Hard'
difText[DIF_VERYHARD] = 'VeryHard'
difText[DIF_IMPOSSIBLE] = 'Impossible'

scrWorldInitPlugins()
scrWorldInitMessageBox()
scrWorldInitRunCheck()

instance_create(0, 0, objChat)
