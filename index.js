if (process.env.NEW_RELIC_LICENSE_KEY) {
  require('newrelic')
}

const P = require('bluebird')

const _request = require('request')
console.log("'typeof _request.defaults':", typeof _request.defaults)

const request = P.promisify(_request)
console.log("'typeof request.defaults':", typeof request.defaults)
process.exit(0)



