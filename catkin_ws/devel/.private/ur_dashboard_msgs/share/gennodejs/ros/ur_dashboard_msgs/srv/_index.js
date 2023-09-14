
"use strict";

let Load = require('./Load.js')
let IsProgramRunning = require('./IsProgramRunning.js')
let GetLoadedProgram = require('./GetLoadedProgram.js')
let GetRobotMode = require('./GetRobotMode.js')
let RawRequest = require('./RawRequest.js')
let GetSafetyMode = require('./GetSafetyMode.js')
let Popup = require('./Popup.js')
let IsProgramSaved = require('./IsProgramSaved.js')
let GetProgramState = require('./GetProgramState.js')
let AddToLog = require('./AddToLog.js')

module.exports = {
  Load: Load,
  IsProgramRunning: IsProgramRunning,
  GetLoadedProgram: GetLoadedProgram,
  GetRobotMode: GetRobotMode,
  RawRequest: RawRequest,
  GetSafetyMode: GetSafetyMode,
  Popup: Popup,
  IsProgramSaved: IsProgramSaved,
  GetProgramState: GetProgramState,
  AddToLog: AddToLog,
};
