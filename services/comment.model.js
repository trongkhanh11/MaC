import db from '../utils/db.js'

export default {
    getComments(maPost){
        return db(
            db.raw('(select u.hoten, cm.cmt from comments cm join users u on cm.id = u.id where cm.mapost=' + "'" + maPost + "') as a")
        )
    }
}