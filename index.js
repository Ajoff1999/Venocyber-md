const bot = require(__dirname + '/lib/amd')
const { VERSION } = require(__dirname + '/config')

const start = async () => {
    Debug.info(`Starting 𝙶𝚊𝚞𝚏𝚛𝚒𝚍𝚞𝚜 ${VERSION}`)
  try {
    await bot.init()
    //bot.logger.info('⏳ Database syncing!')
    await bot.DATABASE.sync()
    await bot.connect()
  } catch (error) {
    Debug.error(error);
    start();
  }
}
start();
/**
𝙶𝙰𝚄𝙵𝚁𝙸𝙳𝚄𝚂 TECH WHATSAPPP BOT
**/
