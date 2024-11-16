
"use strict";

let ControlResult = require('./ControlResult.js');
let HmiControlCmd = require('./HmiControlCmd.js');
let ChassisCtrlMsg = require('./ChassisCtrlMsg.js');
let ChassisBcmCtrlMsg = require('./ChassisBcmCtrlMsg.js');
let HookCtrlMsg = require('./HookCtrlMsg.js');
let LocalizationInfo = require('./LocalizationInfo.js');
let LocationsInfo = require('./LocationsInfo.js');
let HDMapRoute = require('./HDMapRoute.js');
let HDMapPrimitive = require('./HDMapPrimitive.js');
let HDMapBin = require('./HDMapBin.js');
let HDMapSegment = require('./HDMapSegment.js');
let SignalInfo = require('./SignalInfo.js');
let CloudCluster = require('./CloudCluster.js');
let CloudClusterArray = require('./CloudClusterArray.js');
let HookPosition = require('./HookPosition.js');
let DetectedObjectArray = require('./DetectedObjectArray.js');
let DetectedObject = require('./DetectedObject.js');
let GisInfo = require('./GisInfo.js');
let LatticeDebug = require('./LatticeDebug.js');
let Trajectory = require('./Trajectory.js');
let TrajectoryPoint = require('./TrajectoryPoint.js');
let INSStdMsg = require('./INSStdMsg.js');
let INSMsg = require('./INSMsg.js');
let TboxMsg = require('./TboxMsg.js');
let ChassisInfoToHMI = require('./ChassisInfoToHMI.js');
let HMIStepReport = require('./HMIStepReport.js');
let ModuleInfo = require('./ModuleInfo.js');
let DrivingInfo = require('./DrivingInfo.js');
let UCURequestMsg = require('./UCURequestMsg.js');
let ActionType = require('./ActionType.js');
let ChassisMsg = require('./ChassisMsg.js');
let HookMsg = require('./HookMsg.js');
let IOButtonMsg = require('./IOButtonMsg.js');

module.exports = {
  ControlResult: ControlResult,
  HmiControlCmd: HmiControlCmd,
  ChassisCtrlMsg: ChassisCtrlMsg,
  ChassisBcmCtrlMsg: ChassisBcmCtrlMsg,
  HookCtrlMsg: HookCtrlMsg,
  LocalizationInfo: LocalizationInfo,
  LocationsInfo: LocationsInfo,
  HDMapRoute: HDMapRoute,
  HDMapPrimitive: HDMapPrimitive,
  HDMapBin: HDMapBin,
  HDMapSegment: HDMapSegment,
  SignalInfo: SignalInfo,
  CloudCluster: CloudCluster,
  CloudClusterArray: CloudClusterArray,
  HookPosition: HookPosition,
  DetectedObjectArray: DetectedObjectArray,
  DetectedObject: DetectedObject,
  GisInfo: GisInfo,
  LatticeDebug: LatticeDebug,
  Trajectory: Trajectory,
  TrajectoryPoint: TrajectoryPoint,
  INSStdMsg: INSStdMsg,
  INSMsg: INSMsg,
  TboxMsg: TboxMsg,
  ChassisInfoToHMI: ChassisInfoToHMI,
  HMIStepReport: HMIStepReport,
  ModuleInfo: ModuleInfo,
  DrivingInfo: DrivingInfo,
  UCURequestMsg: UCURequestMsg,
  ActionType: ActionType,
  ChassisMsg: ChassisMsg,
  HookMsg: HookMsg,
  IOButtonMsg: IOButtonMsg,
};
