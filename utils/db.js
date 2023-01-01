import knexObj from 'knex';

export default knexObj({
  client: 'mysql2',
  connection: {
    host:'localhost',
    user:'root',
    password:'thanhminh2209',
    database:'demo',
    port: 3306
  }
});