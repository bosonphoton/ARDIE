
"use strict";

let GoBesideLocation = require('./GoBesideLocation.js')
let GoToLocation = require('./GoToLocation.js')
let Authenticate = require('./Authenticate.js')
let GetTourState = require('./GetTourState.js')
let PingTour = require('./PingTour.js')
let RequestTour = require('./RequestTour.js')
let LeaveTour = require('./LeaveTour.js')
let Rotate = require('./Rotate.js')

module.exports = {
  GoBesideLocation: GoBesideLocation,
  GoToLocation: GoToLocation,
  Authenticate: Authenticate,
  GetTourState: GetTourState,
  PingTour: PingTour,
  RequestTour: RequestTour,
  LeaveTour: LeaveTour,
  Rotate: Rotate,
};
