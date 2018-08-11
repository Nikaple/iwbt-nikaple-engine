// Initializing
setGlobals()
if (!directory_exists(global.saving_directory)) {
    directory_create(global.saving_directory)
}
global.savenum = 1
global.difficulty = 3
global.room_caption_def = ''
global.death = 0
global.timestep = 0

difText[DIF_MEDIUM] = 'Medium'
difText[DIF_HARD] = 'Hard'
difText[DIF_VERYHARD] = 'VeryHard'
difText[DIF_IMPOSSIBLE] = 'Impossible'

scrWorldInitPlugins()
scrWorldInitMessageBox()
scrWorldInitRunCheck()
