const db = require('../../../db')

module.exports = async(req,res,next) => {

  const {firstName,lastName,email} = req.body;

  try {
    
    // const [[checkGuest]] = await db.query(`SELECT EXISTS (select * from guests where email = ?)`,[email])

    // console.log("checkGuest: ",checkGuest)

     const [[checkGuest]] = await db.query(`SELECT * FROM guests WHERE email = ? OR firstName = ?`,[email,firstName])
     
     console.log("checkGuest: ", checkGuest)

    if(checkGuest == undefined) {

          const [guest] = await db.execute(`
          INSERT INTO guests(pid, firstName, lastName, email) 
          VALUES 
          (UUID(),?,?,?)`
          ,[firstName,lastName,email])

          const [[newGuest]] = await db.query(`
          SELECT firstName,lastName,email,pid
          from 
          guests 
          where firstName=? AND lastName = ? AND email =?`,
          [firstName,lastName,email]);


        res.send({
        message:'Your order has been placed',
        id:newGuest.pid,
      })
    }
    else{
      return res.send({message:" This user is already exist"});
    }
   
  } catch (error) {
    next(error)
  }
}