'use strict'
const Router = require('express').Router
const router = new Router()
module.exports = router

router.use('/deployments', require('./deployments'))
router.use('/hooks', require('./hooks'))
