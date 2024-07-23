'use strict';

const makdownlintCofnig = require('..');
const assert = require('assert').strict;

assert.strictEqual(makdownlintCofnig(), 'Hello from makdownlintCofnig');
console.info('makdownlintCofnig tests passed');
