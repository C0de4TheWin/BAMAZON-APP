var mysql = require("mysql");
//tried to integrate a new package
//var cTable = require('console.table');
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,


    user: "root",

    password: "password",
    database: "bamazon_db"

});

connection.connect(function (err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    printList();
});

function runSearch() {
    inquirer
        .prompt({
            name: "action",
            type: "list",
            message: "Here is a list of all our items for sale.",
            choices: [
                "What is the product ID?",
                "How many do you want to buy?",

            ]
        })
        .then(function (answer) {
            connection.query("SELECT stock_quantity FROM products WHERE item_id = ?", [answer.itemId], function (err, res) {
                if (err) throw err;
                var stockNumber = parseInt(res[0].stock_quantity);
                if (answer.quantityItem > stockNumber) {
                    console.log("We're sorry, we have sold out of that item.");
                    printList();
                }
            })
        })
};

function printList() {
    connection.query("SELECT * FROM products", function (err, res) {
        if (err) throw err;

        console.table(res);
        runSearch();
        connection.end()
    });
}
// function inqResponse() {
//     connection.query("SELECT stock_quantity FROM products WHERE item_id = ?", [inqResponse.itemId], function (err, res) {
//         if (err) throw err;
//         var stockQuantity = parseInt(res[0].stock_quantity);
//         if (inqResponse.quantityItem > stockQuantity) {
//             console.log("sorry we dont have enough of that item! Please startover!");
//             printProducts();
//     }


