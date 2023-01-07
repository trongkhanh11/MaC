import knexObj from 'knex'

const knex = knexObj({
          client: 'mysql2',
          connection: {
            host : 'localhost',
            user : 'root',
            password : '123456',
            database : 'mac'
          },
          pool: {min: 0, max:10}
        });

export default knex;