// //local db
import mysql from "mysql2";

const dbConfig = {
  host: process.env.HOSTNAME,
  port: process.env.DBPORT,
  user: "root",
  password: process.env.PASSWORD,
  database: "google-review",
  charset: "utf8mb4",
  multipleStatements: false,
  timezone: "Z",

};

const pool = mysql.createPool(dbConfig);

pool.promise()
  .getConnection()
  .then((connection) => {
    console.log("Database connected successfully");
    connection.release(); 
  })
  .catch((err) => {
    console.error("Error connecting to the database:", err.message);
  });

export default pool.promise();


// live db


// import mysql from "mysql2";

// const dbConfig = {
//   host: "tramway.proxy.rlwy.net",
//   port: 43491,
//   user: "root",
//   password: "EBhJaMfFUSXyyMuXGUrXJEikHRWXNuwM",
//   database: "railway",
//   charset: "utf8mb4",
//   multipleStatements: false,
//   timezone: "Z",
// };

// const pool = mysql.createPool(dbConfig);

// pool.promise()
//   .getConnection()
//   .then((connection) => {
//     console.log("Database connected successfully");
//     connection.release();
//   })
//   .catch((err) => {
//     console.error("Error connecting to the database:", err.message);
//   });

// export default pool.promise();
