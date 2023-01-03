import knexObj from "knex";

export default knexObj({
  client: "mysql2",
  connection: {
    host: "localhost",
    user: "root",
    password: "123456",
    database: "mac",
  },
});
