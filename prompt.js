const inquirer = require('inquirer');

inquirer
    .prompt([
        {
            type: 'input',
            message: 'What is the employees  first name?',
            name: 'firstName',
        },
        {
            type: 'input',
            message: 'What is the employees  last name?',
            name: 'lastName',
        },

    ])
    .then((response) => {
        console.log(response)
        response.confirm === response.name
            ? console.log('Success!')
            : console.log('Error')
    }
    );
