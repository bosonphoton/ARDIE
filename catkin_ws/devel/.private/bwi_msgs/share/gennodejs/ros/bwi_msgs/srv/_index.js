
"use strict";

let LocationAction = require('./LocationAction.js')
let SemanticParser = require('./SemanticParser.js')
let ImageQuestion = require('./ImageQuestion.js')
let StopBase = require('./StopBase.js')
let ScavHunt = require('./ScavHunt.js')
let UploadImage = require('./UploadImage.js')
let SaveImageResponse = require('./SaveImageResponse.js')
let ActionUpdate = require('./ActionUpdate.js')
let CheckBool = require('./CheckBool.js')
let ResolveChangeFloor = require('./ResolveChangeFloor.js')
let LEDTestStrip = require('./LEDTestStrip.js')
let DoorHandlerInterface = require('./DoorHandlerInterface.js')
let UpdateObject = require('./UpdateObject.js')
let RobotTeleporterInterface = require('./RobotTeleporterInterface.js')
let LEDSetStatus = require('./LEDSetStatus.js')
let QuestionDialog = require('./QuestionDialog.js')
let GetNextImage = require('./GetNextImage.js')
let LEDClear = require('./LEDClear.js')
let NextLocation = require('./NextLocation.js')

module.exports = {
  LocationAction: LocationAction,
  SemanticParser: SemanticParser,
  ImageQuestion: ImageQuestion,
  StopBase: StopBase,
  ScavHunt: ScavHunt,
  UploadImage: UploadImage,
  SaveImageResponse: SaveImageResponse,
  ActionUpdate: ActionUpdate,
  CheckBool: CheckBool,
  ResolveChangeFloor: ResolveChangeFloor,
  LEDTestStrip: LEDTestStrip,
  DoorHandlerInterface: DoorHandlerInterface,
  UpdateObject: UpdateObject,
  RobotTeleporterInterface: RobotTeleporterInterface,
  LEDSetStatus: LEDSetStatus,
  QuestionDialog: QuestionDialog,
  GetNextImage: GetNextImage,
  LEDClear: LEDClear,
  NextLocation: NextLocation,
};
