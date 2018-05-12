```
$ npm install &>/dev/null && npm test

> newrelic-bluebird-request-node8-bug@1.0.0 test /tmp/newrelic-bluebird-request-node8-bug
> ./test.sh

node: v8.11.1
npm: 5.8.0

with NEW_RELIC_LICENSE_KEY unset, the promisified `request.defaults` is a function

'typeof _request.defaults': function
'typeof request.defaults': function

with NEW_RELIC_LICENSE_KEY set, the promisified `request.defaults` is undefined

'typeof _request.defaults': function
'typeof request.defaults': undefined

```
