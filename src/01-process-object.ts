// a global object that provides information about, and control over, the currently running Node.js process

//env variables
//command line arguments
//exit code 
//process lifecycle events
//read backend port from env file
//read secrets - db urls, api keys, password, google auth secret
//read CLI arguments in scripts
//process.env

import process from 'node:process'

//dotenv
const nodeEnv = process.env.NODE_ENV ?? "development"

//good practices
const port  = Number(process.env.PORT ?? 3000)

