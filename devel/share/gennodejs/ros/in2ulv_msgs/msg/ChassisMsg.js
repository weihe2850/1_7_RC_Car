// Auto-generated. Do not edit!

// (in-package in2ulv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ChassisMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.module_type = null;
      this.error_code = null;
      this.chassis_data = null;
      this.TMTorqRqstV = null;
      this.TMTorqRqst = null;
      this.HandBrkSts = null;
      this.VecStatRdy = null;
      this.KyPstn = null;
      this.VecSOC = null;
      this.VehSpdAvgDrvnV = null;
      this.VehSpdAvgDrvn = null;
      this.VecTMActSpdV = null;
      this.VecTMActSpd = null;
      this.VCUVehDrvMod = null;
      this.LowBatVol = null;
      this.BatSOC = null;
      this.HhBmIO = null;
      this.WindscenWipSt = null;
      this.LwBmIO = null;
      this.HzrdLgtSwAtv = null;
      this.HzrdLtIO = null;
      this.RtTrnLmpAtv = null;
      this.LftTrnLmpAtv = null;
      this.WipSwStat = null;
      this.StpLpSt = null;
      this.is_left_blinking = null;
      this.is_right_blinking = null;
      this.DrSbltAtc = null;
      this.DrSbltAtcV = null;
      this.TDAjrSwAtv = null;
      this.PsDoorOpenSwAct = null;
      this.PDAjrSwAtv = null;
      this.DrDoorOpenSwAct = null;
      this.DDAjrSwAct = null;
      this.PsWdwOpenDgr = null;
      this.DrWdwOpenDgr = null;
      this.BCMRunMod = null;
      this.BCMRunModV = null;
      this.EPBSysWrnIndReq_1 = null;
      this.EPBSysWrnIndReqV_1 = null;
      this.EPBSysBrkLtsReq_1 = null;
      this.EPBSysStatIndReq_1 = null;
      this.ElecPrkBrkSwStatV_1 = null;
      this.ElecPrkBrkStat_1 = null;
      this.ElecPrkBrkSwStat_1 = null;
      this.ADASWndSnWpCtrl = null;
      this.ADASHzdLtCtrl = null;
      this.ADASSdTrnLmpRHCtrl = null;
      this.ADASSdTrnLmpLHCtrl = null;
      this.ADASLowBmCtrl = null;
      this.ADASHighBmCtrl = null;
      this.ADASLkCtrl = null;
      this.CarWindCtrl = null;
      this.ADASRemtPrkModRqst = null;
      this.BCMADASCtrlRqst = null;
      this.BCMADASCtrlRqstV = null;
      this.TMActTorq = null;
      this.TMActSpd = null;
      this.VSELatAccV = null;
      this.VSELatAcc = null;
      this.VSELongAccV = null;
      this.VSELongAcc = null;
      this.VehOdo = null;
      this.VehOdoV = null;
      this.BrakPedalPos = null;
      this.AccActPos = null;
      this.VecActGearStsV = null;
      this.VecActGearSts = null;
      this.StrWhAngV = null;
      this.StrWhAng = null;
      this.EPSProId = null;
      this.PwrStrIo = null;
      this.SterModV = null;
      this.SterMod = null;
      this.EPS_LKARespTorq = null;
      this.SterFltMod = null;
      this.DrStrTorqV = null;
      this.DrStrTorqVal = null;
      this.SteerWheelRotSpd = null;
      this.SteerWheelAngle = null;
      this.ElecPrkBrkStat = null;
      this.WhlGrndVlctyLftDrvnV = null;
      this.WhlGrndVlctyLftDrvn = null;
      this.WhlGrndVlctyRtDrvnV = null;
      this.WhlGrndVlctyRtDrvn = null;
      this.WhlGrndVlctyLftNnDrvnV = null;
      this.WhlGrndVlctyLftNnDrvn = null;
      this.WhlGrndVlctyRtNnDrvnV = null;
      this.WhlGrndVlctyRtNnDrvn = null;
      this.LftDrvnWhlDirec = null;
      this.WhlGrndPlsLftDrvnV = null;
      this.WhlGrndPlsLftDrvn = null;
      this.RtDrvnWhlDirec = null;
      this.WhlGrndPlsRtDrvnV = null;
      this.WhlGrndPlsRtDrvn = null;
      this.LftNnDrvnWhlDirec = null;
      this.WhlGrndPlsLftNnDrvnV = null;
      this.WhlGrndPlsLftNnDrvn = null;
      this.RtNnDrvnWhlDirec = null;
      this.WhlGrndPlsRtNnDrvnV = null;
      this.WhlGrndPlsRtNnDrvn = null;
      this.BBWSts = null;
      this.EBSDrvMod = null;
      this.IDURqst = null;
      this.EBSMCBrPressure = null;
      this.BrakPedalDisp = null;
      this.ADAS_StrAngleRqstV = null;
      this.ADASBrakRqstPres = null;
      this.EPB_ADASPrkngRqst = null;
      this.ADASStrTorqRqst = null;
      this.ADASStrTorqTgt = null;
      this.ADAS_StrAngle = null;
      this.VCUTTgtAclrtnRqst = null;
      this.VCUTTgtAclrtnRqstVal = null;
      this.GearRqst = null;
      this.TgtGear = null;
      this.VCUTTgtSpRqst = null;
      this.VCUTTgtSpRqstVal = null;
      this.SensSt_1st = null;
      this.DisFrm1stFrtSens = null;
      this.SensSt_2nd = null;
      this.DisFrm2ndFrtSens = null;
      this.SensSt_3rd = null;
      this.DisFrm3rdFrtSens = null;
      this.SensSt_4th = null;
      this.DisFrm4thFrtSens = null;
      this.SensSt_5th = null;
      this.DisFrm5thFrtSens = null;
      this.SensSt_6th = null;
      this.DisFrm6thFrtSens = null;
      this.SensSt_7th = null;
      this.DisFrm7thFrtSens = null;
      this.SensSt_8th = null;
      this.DisFrm8thFrtSens = null;
      this.SensSt_9th = null;
      this.DisFrm9thFrtSens = null;
      this.SensSt_10th = null;
      this.DisFrm10thFrtSens = null;
      this.SensSt_11th = null;
      this.DisFrm11thFrtSens = null;
      this.SensSt_12th = null;
      this.DisFrm12thFrtSens = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('module_type')) {
        this.module_type = initObj.module_type
      }
      else {
        this.module_type = 0;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('chassis_data')) {
        this.chassis_data = initObj.chassis_data
      }
      else {
        this.chassis_data = '';
      }
      if (initObj.hasOwnProperty('TMTorqRqstV')) {
        this.TMTorqRqstV = initObj.TMTorqRqstV
      }
      else {
        this.TMTorqRqstV = 0;
      }
      if (initObj.hasOwnProperty('TMTorqRqst')) {
        this.TMTorqRqst = initObj.TMTorqRqst
      }
      else {
        this.TMTorqRqst = 0.0;
      }
      if (initObj.hasOwnProperty('HandBrkSts')) {
        this.HandBrkSts = initObj.HandBrkSts
      }
      else {
        this.HandBrkSts = 0;
      }
      if (initObj.hasOwnProperty('VecStatRdy')) {
        this.VecStatRdy = initObj.VecStatRdy
      }
      else {
        this.VecStatRdy = 0;
      }
      if (initObj.hasOwnProperty('KyPstn')) {
        this.KyPstn = initObj.KyPstn
      }
      else {
        this.KyPstn = 0;
      }
      if (initObj.hasOwnProperty('VecSOC')) {
        this.VecSOC = initObj.VecSOC
      }
      else {
        this.VecSOC = 0;
      }
      if (initObj.hasOwnProperty('VehSpdAvgDrvnV')) {
        this.VehSpdAvgDrvnV = initObj.VehSpdAvgDrvnV
      }
      else {
        this.VehSpdAvgDrvnV = 0;
      }
      if (initObj.hasOwnProperty('VehSpdAvgDrvn')) {
        this.VehSpdAvgDrvn = initObj.VehSpdAvgDrvn
      }
      else {
        this.VehSpdAvgDrvn = 0.0;
      }
      if (initObj.hasOwnProperty('VecTMActSpdV')) {
        this.VecTMActSpdV = initObj.VecTMActSpdV
      }
      else {
        this.VecTMActSpdV = 0;
      }
      if (initObj.hasOwnProperty('VecTMActSpd')) {
        this.VecTMActSpd = initObj.VecTMActSpd
      }
      else {
        this.VecTMActSpd = 0;
      }
      if (initObj.hasOwnProperty('VCUVehDrvMod')) {
        this.VCUVehDrvMod = initObj.VCUVehDrvMod
      }
      else {
        this.VCUVehDrvMod = 0;
      }
      if (initObj.hasOwnProperty('LowBatVol')) {
        this.LowBatVol = initObj.LowBatVol
      }
      else {
        this.LowBatVol = 0.0;
      }
      if (initObj.hasOwnProperty('BatSOC')) {
        this.BatSOC = initObj.BatSOC
      }
      else {
        this.BatSOC = 0;
      }
      if (initObj.hasOwnProperty('HhBmIO')) {
        this.HhBmIO = initObj.HhBmIO
      }
      else {
        this.HhBmIO = 0;
      }
      if (initObj.hasOwnProperty('WindscenWipSt')) {
        this.WindscenWipSt = initObj.WindscenWipSt
      }
      else {
        this.WindscenWipSt = 0;
      }
      if (initObj.hasOwnProperty('LwBmIO')) {
        this.LwBmIO = initObj.LwBmIO
      }
      else {
        this.LwBmIO = 0;
      }
      if (initObj.hasOwnProperty('HzrdLgtSwAtv')) {
        this.HzrdLgtSwAtv = initObj.HzrdLgtSwAtv
      }
      else {
        this.HzrdLgtSwAtv = 0;
      }
      if (initObj.hasOwnProperty('HzrdLtIO')) {
        this.HzrdLtIO = initObj.HzrdLtIO
      }
      else {
        this.HzrdLtIO = 0;
      }
      if (initObj.hasOwnProperty('RtTrnLmpAtv')) {
        this.RtTrnLmpAtv = initObj.RtTrnLmpAtv
      }
      else {
        this.RtTrnLmpAtv = 0;
      }
      if (initObj.hasOwnProperty('LftTrnLmpAtv')) {
        this.LftTrnLmpAtv = initObj.LftTrnLmpAtv
      }
      else {
        this.LftTrnLmpAtv = 0;
      }
      if (initObj.hasOwnProperty('WipSwStat')) {
        this.WipSwStat = initObj.WipSwStat
      }
      else {
        this.WipSwStat = 0;
      }
      if (initObj.hasOwnProperty('StpLpSt')) {
        this.StpLpSt = initObj.StpLpSt
      }
      else {
        this.StpLpSt = 0;
      }
      if (initObj.hasOwnProperty('is_left_blinking')) {
        this.is_left_blinking = initObj.is_left_blinking
      }
      else {
        this.is_left_blinking = false;
      }
      if (initObj.hasOwnProperty('is_right_blinking')) {
        this.is_right_blinking = initObj.is_right_blinking
      }
      else {
        this.is_right_blinking = false;
      }
      if (initObj.hasOwnProperty('DrSbltAtc')) {
        this.DrSbltAtc = initObj.DrSbltAtc
      }
      else {
        this.DrSbltAtc = 0;
      }
      if (initObj.hasOwnProperty('DrSbltAtcV')) {
        this.DrSbltAtcV = initObj.DrSbltAtcV
      }
      else {
        this.DrSbltAtcV = 0;
      }
      if (initObj.hasOwnProperty('TDAjrSwAtv')) {
        this.TDAjrSwAtv = initObj.TDAjrSwAtv
      }
      else {
        this.TDAjrSwAtv = 0;
      }
      if (initObj.hasOwnProperty('PsDoorOpenSwAct')) {
        this.PsDoorOpenSwAct = initObj.PsDoorOpenSwAct
      }
      else {
        this.PsDoorOpenSwAct = 0;
      }
      if (initObj.hasOwnProperty('PDAjrSwAtv')) {
        this.PDAjrSwAtv = initObj.PDAjrSwAtv
      }
      else {
        this.PDAjrSwAtv = 0;
      }
      if (initObj.hasOwnProperty('DrDoorOpenSwAct')) {
        this.DrDoorOpenSwAct = initObj.DrDoorOpenSwAct
      }
      else {
        this.DrDoorOpenSwAct = 0;
      }
      if (initObj.hasOwnProperty('DDAjrSwAct')) {
        this.DDAjrSwAct = initObj.DDAjrSwAct
      }
      else {
        this.DDAjrSwAct = 0;
      }
      if (initObj.hasOwnProperty('PsWdwOpenDgr')) {
        this.PsWdwOpenDgr = initObj.PsWdwOpenDgr
      }
      else {
        this.PsWdwOpenDgr = 0.0;
      }
      if (initObj.hasOwnProperty('DrWdwOpenDgr')) {
        this.DrWdwOpenDgr = initObj.DrWdwOpenDgr
      }
      else {
        this.DrWdwOpenDgr = 0.0;
      }
      if (initObj.hasOwnProperty('BCMRunMod')) {
        this.BCMRunMod = initObj.BCMRunMod
      }
      else {
        this.BCMRunMod = 0;
      }
      if (initObj.hasOwnProperty('BCMRunModV')) {
        this.BCMRunModV = initObj.BCMRunModV
      }
      else {
        this.BCMRunModV = 0;
      }
      if (initObj.hasOwnProperty('EPBSysWrnIndReq_1')) {
        this.EPBSysWrnIndReq_1 = initObj.EPBSysWrnIndReq_1
      }
      else {
        this.EPBSysWrnIndReq_1 = 0;
      }
      if (initObj.hasOwnProperty('EPBSysWrnIndReqV_1')) {
        this.EPBSysWrnIndReqV_1 = initObj.EPBSysWrnIndReqV_1
      }
      else {
        this.EPBSysWrnIndReqV_1 = 0;
      }
      if (initObj.hasOwnProperty('EPBSysBrkLtsReq_1')) {
        this.EPBSysBrkLtsReq_1 = initObj.EPBSysBrkLtsReq_1
      }
      else {
        this.EPBSysBrkLtsReq_1 = 0;
      }
      if (initObj.hasOwnProperty('EPBSysStatIndReq_1')) {
        this.EPBSysStatIndReq_1 = initObj.EPBSysStatIndReq_1
      }
      else {
        this.EPBSysStatIndReq_1 = 0;
      }
      if (initObj.hasOwnProperty('ElecPrkBrkSwStatV_1')) {
        this.ElecPrkBrkSwStatV_1 = initObj.ElecPrkBrkSwStatV_1
      }
      else {
        this.ElecPrkBrkSwStatV_1 = 0;
      }
      if (initObj.hasOwnProperty('ElecPrkBrkStat_1')) {
        this.ElecPrkBrkStat_1 = initObj.ElecPrkBrkStat_1
      }
      else {
        this.ElecPrkBrkStat_1 = 0;
      }
      if (initObj.hasOwnProperty('ElecPrkBrkSwStat_1')) {
        this.ElecPrkBrkSwStat_1 = initObj.ElecPrkBrkSwStat_1
      }
      else {
        this.ElecPrkBrkSwStat_1 = 0;
      }
      if (initObj.hasOwnProperty('ADASWndSnWpCtrl')) {
        this.ADASWndSnWpCtrl = initObj.ADASWndSnWpCtrl
      }
      else {
        this.ADASWndSnWpCtrl = 0;
      }
      if (initObj.hasOwnProperty('ADASHzdLtCtrl')) {
        this.ADASHzdLtCtrl = initObj.ADASHzdLtCtrl
      }
      else {
        this.ADASHzdLtCtrl = 0;
      }
      if (initObj.hasOwnProperty('ADASSdTrnLmpRHCtrl')) {
        this.ADASSdTrnLmpRHCtrl = initObj.ADASSdTrnLmpRHCtrl
      }
      else {
        this.ADASSdTrnLmpRHCtrl = 0;
      }
      if (initObj.hasOwnProperty('ADASSdTrnLmpLHCtrl')) {
        this.ADASSdTrnLmpLHCtrl = initObj.ADASSdTrnLmpLHCtrl
      }
      else {
        this.ADASSdTrnLmpLHCtrl = 0;
      }
      if (initObj.hasOwnProperty('ADASLowBmCtrl')) {
        this.ADASLowBmCtrl = initObj.ADASLowBmCtrl
      }
      else {
        this.ADASLowBmCtrl = 0;
      }
      if (initObj.hasOwnProperty('ADASHighBmCtrl')) {
        this.ADASHighBmCtrl = initObj.ADASHighBmCtrl
      }
      else {
        this.ADASHighBmCtrl = 0;
      }
      if (initObj.hasOwnProperty('ADASLkCtrl')) {
        this.ADASLkCtrl = initObj.ADASLkCtrl
      }
      else {
        this.ADASLkCtrl = 0;
      }
      if (initObj.hasOwnProperty('CarWindCtrl')) {
        this.CarWindCtrl = initObj.CarWindCtrl
      }
      else {
        this.CarWindCtrl = 0;
      }
      if (initObj.hasOwnProperty('ADASRemtPrkModRqst')) {
        this.ADASRemtPrkModRqst = initObj.ADASRemtPrkModRqst
      }
      else {
        this.ADASRemtPrkModRqst = 0;
      }
      if (initObj.hasOwnProperty('BCMADASCtrlRqst')) {
        this.BCMADASCtrlRqst = initObj.BCMADASCtrlRqst
      }
      else {
        this.BCMADASCtrlRqst = 0;
      }
      if (initObj.hasOwnProperty('BCMADASCtrlRqstV')) {
        this.BCMADASCtrlRqstV = initObj.BCMADASCtrlRqstV
      }
      else {
        this.BCMADASCtrlRqstV = 0;
      }
      if (initObj.hasOwnProperty('TMActTorq')) {
        this.TMActTorq = initObj.TMActTorq
      }
      else {
        this.TMActTorq = 0.0;
      }
      if (initObj.hasOwnProperty('TMActSpd')) {
        this.TMActSpd = initObj.TMActSpd
      }
      else {
        this.TMActSpd = 0;
      }
      if (initObj.hasOwnProperty('VSELatAccV')) {
        this.VSELatAccV = initObj.VSELatAccV
      }
      else {
        this.VSELatAccV = 0;
      }
      if (initObj.hasOwnProperty('VSELatAcc')) {
        this.VSELatAcc = initObj.VSELatAcc
      }
      else {
        this.VSELatAcc = 0.0;
      }
      if (initObj.hasOwnProperty('VSELongAccV')) {
        this.VSELongAccV = initObj.VSELongAccV
      }
      else {
        this.VSELongAccV = 0;
      }
      if (initObj.hasOwnProperty('VSELongAcc')) {
        this.VSELongAcc = initObj.VSELongAcc
      }
      else {
        this.VSELongAcc = 0.0;
      }
      if (initObj.hasOwnProperty('VehOdo')) {
        this.VehOdo = initObj.VehOdo
      }
      else {
        this.VehOdo = 0.0;
      }
      if (initObj.hasOwnProperty('VehOdoV')) {
        this.VehOdoV = initObj.VehOdoV
      }
      else {
        this.VehOdoV = 0;
      }
      if (initObj.hasOwnProperty('BrakPedalPos')) {
        this.BrakPedalPos = initObj.BrakPedalPos
      }
      else {
        this.BrakPedalPos = 0;
      }
      if (initObj.hasOwnProperty('AccActPos')) {
        this.AccActPos = initObj.AccActPos
      }
      else {
        this.AccActPos = 0;
      }
      if (initObj.hasOwnProperty('VecActGearStsV')) {
        this.VecActGearStsV = initObj.VecActGearStsV
      }
      else {
        this.VecActGearStsV = 0;
      }
      if (initObj.hasOwnProperty('VecActGearSts')) {
        this.VecActGearSts = initObj.VecActGearSts
      }
      else {
        this.VecActGearSts = 0;
      }
      if (initObj.hasOwnProperty('StrWhAngV')) {
        this.StrWhAngV = initObj.StrWhAngV
      }
      else {
        this.StrWhAngV = 0;
      }
      if (initObj.hasOwnProperty('StrWhAng')) {
        this.StrWhAng = initObj.StrWhAng
      }
      else {
        this.StrWhAng = 0.0;
      }
      if (initObj.hasOwnProperty('EPSProId')) {
        this.EPSProId = initObj.EPSProId
      }
      else {
        this.EPSProId = 0;
      }
      if (initObj.hasOwnProperty('PwrStrIo')) {
        this.PwrStrIo = initObj.PwrStrIo
      }
      else {
        this.PwrStrIo = 0;
      }
      if (initObj.hasOwnProperty('SterModV')) {
        this.SterModV = initObj.SterModV
      }
      else {
        this.SterModV = 0;
      }
      if (initObj.hasOwnProperty('SterMod')) {
        this.SterMod = initObj.SterMod
      }
      else {
        this.SterMod = 0;
      }
      if (initObj.hasOwnProperty('EPS_LKARespTorq')) {
        this.EPS_LKARespTorq = initObj.EPS_LKARespTorq
      }
      else {
        this.EPS_LKARespTorq = 0.0;
      }
      if (initObj.hasOwnProperty('SterFltMod')) {
        this.SterFltMod = initObj.SterFltMod
      }
      else {
        this.SterFltMod = 0;
      }
      if (initObj.hasOwnProperty('DrStrTorqV')) {
        this.DrStrTorqV = initObj.DrStrTorqV
      }
      else {
        this.DrStrTorqV = 0;
      }
      if (initObj.hasOwnProperty('DrStrTorqVal')) {
        this.DrStrTorqVal = initObj.DrStrTorqVal
      }
      else {
        this.DrStrTorqVal = 0.0;
      }
      if (initObj.hasOwnProperty('SteerWheelRotSpd')) {
        this.SteerWheelRotSpd = initObj.SteerWheelRotSpd
      }
      else {
        this.SteerWheelRotSpd = 0;
      }
      if (initObj.hasOwnProperty('SteerWheelAngle')) {
        this.SteerWheelAngle = initObj.SteerWheelAngle
      }
      else {
        this.SteerWheelAngle = 0.0;
      }
      if (initObj.hasOwnProperty('ElecPrkBrkStat')) {
        this.ElecPrkBrkStat = initObj.ElecPrkBrkStat
      }
      else {
        this.ElecPrkBrkStat = 0;
      }
      if (initObj.hasOwnProperty('WhlGrndVlctyLftDrvnV')) {
        this.WhlGrndVlctyLftDrvnV = initObj.WhlGrndVlctyLftDrvnV
      }
      else {
        this.WhlGrndVlctyLftDrvnV = 0;
      }
      if (initObj.hasOwnProperty('WhlGrndVlctyLftDrvn')) {
        this.WhlGrndVlctyLftDrvn = initObj.WhlGrndVlctyLftDrvn
      }
      else {
        this.WhlGrndVlctyLftDrvn = 0.0;
      }
      if (initObj.hasOwnProperty('WhlGrndVlctyRtDrvnV')) {
        this.WhlGrndVlctyRtDrvnV = initObj.WhlGrndVlctyRtDrvnV
      }
      else {
        this.WhlGrndVlctyRtDrvnV = 0;
      }
      if (initObj.hasOwnProperty('WhlGrndVlctyRtDrvn')) {
        this.WhlGrndVlctyRtDrvn = initObj.WhlGrndVlctyRtDrvn
      }
      else {
        this.WhlGrndVlctyRtDrvn = 0.0;
      }
      if (initObj.hasOwnProperty('WhlGrndVlctyLftNnDrvnV')) {
        this.WhlGrndVlctyLftNnDrvnV = initObj.WhlGrndVlctyLftNnDrvnV
      }
      else {
        this.WhlGrndVlctyLftNnDrvnV = 0;
      }
      if (initObj.hasOwnProperty('WhlGrndVlctyLftNnDrvn')) {
        this.WhlGrndVlctyLftNnDrvn = initObj.WhlGrndVlctyLftNnDrvn
      }
      else {
        this.WhlGrndVlctyLftNnDrvn = 0.0;
      }
      if (initObj.hasOwnProperty('WhlGrndVlctyRtNnDrvnV')) {
        this.WhlGrndVlctyRtNnDrvnV = initObj.WhlGrndVlctyRtNnDrvnV
      }
      else {
        this.WhlGrndVlctyRtNnDrvnV = 0;
      }
      if (initObj.hasOwnProperty('WhlGrndVlctyRtNnDrvn')) {
        this.WhlGrndVlctyRtNnDrvn = initObj.WhlGrndVlctyRtNnDrvn
      }
      else {
        this.WhlGrndVlctyRtNnDrvn = 0.0;
      }
      if (initObj.hasOwnProperty('LftDrvnWhlDirec')) {
        this.LftDrvnWhlDirec = initObj.LftDrvnWhlDirec
      }
      else {
        this.LftDrvnWhlDirec = 0;
      }
      if (initObj.hasOwnProperty('WhlGrndPlsLftDrvnV')) {
        this.WhlGrndPlsLftDrvnV = initObj.WhlGrndPlsLftDrvnV
      }
      else {
        this.WhlGrndPlsLftDrvnV = 0;
      }
      if (initObj.hasOwnProperty('WhlGrndPlsLftDrvn')) {
        this.WhlGrndPlsLftDrvn = initObj.WhlGrndPlsLftDrvn
      }
      else {
        this.WhlGrndPlsLftDrvn = 0;
      }
      if (initObj.hasOwnProperty('RtDrvnWhlDirec')) {
        this.RtDrvnWhlDirec = initObj.RtDrvnWhlDirec
      }
      else {
        this.RtDrvnWhlDirec = 0;
      }
      if (initObj.hasOwnProperty('WhlGrndPlsRtDrvnV')) {
        this.WhlGrndPlsRtDrvnV = initObj.WhlGrndPlsRtDrvnV
      }
      else {
        this.WhlGrndPlsRtDrvnV = 0;
      }
      if (initObj.hasOwnProperty('WhlGrndPlsRtDrvn')) {
        this.WhlGrndPlsRtDrvn = initObj.WhlGrndPlsRtDrvn
      }
      else {
        this.WhlGrndPlsRtDrvn = 0;
      }
      if (initObj.hasOwnProperty('LftNnDrvnWhlDirec')) {
        this.LftNnDrvnWhlDirec = initObj.LftNnDrvnWhlDirec
      }
      else {
        this.LftNnDrvnWhlDirec = 0;
      }
      if (initObj.hasOwnProperty('WhlGrndPlsLftNnDrvnV')) {
        this.WhlGrndPlsLftNnDrvnV = initObj.WhlGrndPlsLftNnDrvnV
      }
      else {
        this.WhlGrndPlsLftNnDrvnV = 0;
      }
      if (initObj.hasOwnProperty('WhlGrndPlsLftNnDrvn')) {
        this.WhlGrndPlsLftNnDrvn = initObj.WhlGrndPlsLftNnDrvn
      }
      else {
        this.WhlGrndPlsLftNnDrvn = 0;
      }
      if (initObj.hasOwnProperty('RtNnDrvnWhlDirec')) {
        this.RtNnDrvnWhlDirec = initObj.RtNnDrvnWhlDirec
      }
      else {
        this.RtNnDrvnWhlDirec = 0;
      }
      if (initObj.hasOwnProperty('WhlGrndPlsRtNnDrvnV')) {
        this.WhlGrndPlsRtNnDrvnV = initObj.WhlGrndPlsRtNnDrvnV
      }
      else {
        this.WhlGrndPlsRtNnDrvnV = 0;
      }
      if (initObj.hasOwnProperty('WhlGrndPlsRtNnDrvn')) {
        this.WhlGrndPlsRtNnDrvn = initObj.WhlGrndPlsRtNnDrvn
      }
      else {
        this.WhlGrndPlsRtNnDrvn = 0;
      }
      if (initObj.hasOwnProperty('BBWSts')) {
        this.BBWSts = initObj.BBWSts
      }
      else {
        this.BBWSts = 0;
      }
      if (initObj.hasOwnProperty('EBSDrvMod')) {
        this.EBSDrvMod = initObj.EBSDrvMod
      }
      else {
        this.EBSDrvMod = 0;
      }
      if (initObj.hasOwnProperty('IDURqst')) {
        this.IDURqst = initObj.IDURqst
      }
      else {
        this.IDURqst = 0;
      }
      if (initObj.hasOwnProperty('EBSMCBrPressure')) {
        this.EBSMCBrPressure = initObj.EBSMCBrPressure
      }
      else {
        this.EBSMCBrPressure = 0;
      }
      if (initObj.hasOwnProperty('BrakPedalDisp')) {
        this.BrakPedalDisp = initObj.BrakPedalDisp
      }
      else {
        this.BrakPedalDisp = 0;
      }
      if (initObj.hasOwnProperty('ADAS_StrAngleRqstV')) {
        this.ADAS_StrAngleRqstV = initObj.ADAS_StrAngleRqstV
      }
      else {
        this.ADAS_StrAngleRqstV = 0;
      }
      if (initObj.hasOwnProperty('ADASBrakRqstPres')) {
        this.ADASBrakRqstPres = initObj.ADASBrakRqstPres
      }
      else {
        this.ADASBrakRqstPres = 0;
      }
      if (initObj.hasOwnProperty('EPB_ADASPrkngRqst')) {
        this.EPB_ADASPrkngRqst = initObj.EPB_ADASPrkngRqst
      }
      else {
        this.EPB_ADASPrkngRqst = 0;
      }
      if (initObj.hasOwnProperty('ADASStrTorqRqst')) {
        this.ADASStrTorqRqst = initObj.ADASStrTorqRqst
      }
      else {
        this.ADASStrTorqRqst = 0;
      }
      if (initObj.hasOwnProperty('ADASStrTorqTgt')) {
        this.ADASStrTorqTgt = initObj.ADASStrTorqTgt
      }
      else {
        this.ADASStrTorqTgt = 0;
      }
      if (initObj.hasOwnProperty('ADAS_StrAngle')) {
        this.ADAS_StrAngle = initObj.ADAS_StrAngle
      }
      else {
        this.ADAS_StrAngle = 0;
      }
      if (initObj.hasOwnProperty('VCUTTgtAclrtnRqst')) {
        this.VCUTTgtAclrtnRqst = initObj.VCUTTgtAclrtnRqst
      }
      else {
        this.VCUTTgtAclrtnRqst = 0;
      }
      if (initObj.hasOwnProperty('VCUTTgtAclrtnRqstVal')) {
        this.VCUTTgtAclrtnRqstVal = initObj.VCUTTgtAclrtnRqstVal
      }
      else {
        this.VCUTTgtAclrtnRqstVal = 0.0;
      }
      if (initObj.hasOwnProperty('GearRqst')) {
        this.GearRqst = initObj.GearRqst
      }
      else {
        this.GearRqst = 0;
      }
      if (initObj.hasOwnProperty('TgtGear')) {
        this.TgtGear = initObj.TgtGear
      }
      else {
        this.TgtGear = 0;
      }
      if (initObj.hasOwnProperty('VCUTTgtSpRqst')) {
        this.VCUTTgtSpRqst = initObj.VCUTTgtSpRqst
      }
      else {
        this.VCUTTgtSpRqst = 0;
      }
      if (initObj.hasOwnProperty('VCUTTgtSpRqstVal')) {
        this.VCUTTgtSpRqstVal = initObj.VCUTTgtSpRqstVal
      }
      else {
        this.VCUTTgtSpRqstVal = 0.0;
      }
      if (initObj.hasOwnProperty('SensSt_1st')) {
        this.SensSt_1st = initObj.SensSt_1st
      }
      else {
        this.SensSt_1st = 0;
      }
      if (initObj.hasOwnProperty('DisFrm1stFrtSens')) {
        this.DisFrm1stFrtSens = initObj.DisFrm1stFrtSens
      }
      else {
        this.DisFrm1stFrtSens = 0;
      }
      if (initObj.hasOwnProperty('SensSt_2nd')) {
        this.SensSt_2nd = initObj.SensSt_2nd
      }
      else {
        this.SensSt_2nd = 0;
      }
      if (initObj.hasOwnProperty('DisFrm2ndFrtSens')) {
        this.DisFrm2ndFrtSens = initObj.DisFrm2ndFrtSens
      }
      else {
        this.DisFrm2ndFrtSens = 0;
      }
      if (initObj.hasOwnProperty('SensSt_3rd')) {
        this.SensSt_3rd = initObj.SensSt_3rd
      }
      else {
        this.SensSt_3rd = 0;
      }
      if (initObj.hasOwnProperty('DisFrm3rdFrtSens')) {
        this.DisFrm3rdFrtSens = initObj.DisFrm3rdFrtSens
      }
      else {
        this.DisFrm3rdFrtSens = 0;
      }
      if (initObj.hasOwnProperty('SensSt_4th')) {
        this.SensSt_4th = initObj.SensSt_4th
      }
      else {
        this.SensSt_4th = 0;
      }
      if (initObj.hasOwnProperty('DisFrm4thFrtSens')) {
        this.DisFrm4thFrtSens = initObj.DisFrm4thFrtSens
      }
      else {
        this.DisFrm4thFrtSens = 0;
      }
      if (initObj.hasOwnProperty('SensSt_5th')) {
        this.SensSt_5th = initObj.SensSt_5th
      }
      else {
        this.SensSt_5th = 0;
      }
      if (initObj.hasOwnProperty('DisFrm5thFrtSens')) {
        this.DisFrm5thFrtSens = initObj.DisFrm5thFrtSens
      }
      else {
        this.DisFrm5thFrtSens = 0;
      }
      if (initObj.hasOwnProperty('SensSt_6th')) {
        this.SensSt_6th = initObj.SensSt_6th
      }
      else {
        this.SensSt_6th = 0;
      }
      if (initObj.hasOwnProperty('DisFrm6thFrtSens')) {
        this.DisFrm6thFrtSens = initObj.DisFrm6thFrtSens
      }
      else {
        this.DisFrm6thFrtSens = 0;
      }
      if (initObj.hasOwnProperty('SensSt_7th')) {
        this.SensSt_7th = initObj.SensSt_7th
      }
      else {
        this.SensSt_7th = 0;
      }
      if (initObj.hasOwnProperty('DisFrm7thFrtSens')) {
        this.DisFrm7thFrtSens = initObj.DisFrm7thFrtSens
      }
      else {
        this.DisFrm7thFrtSens = 0;
      }
      if (initObj.hasOwnProperty('SensSt_8th')) {
        this.SensSt_8th = initObj.SensSt_8th
      }
      else {
        this.SensSt_8th = 0;
      }
      if (initObj.hasOwnProperty('DisFrm8thFrtSens')) {
        this.DisFrm8thFrtSens = initObj.DisFrm8thFrtSens
      }
      else {
        this.DisFrm8thFrtSens = 0;
      }
      if (initObj.hasOwnProperty('SensSt_9th')) {
        this.SensSt_9th = initObj.SensSt_9th
      }
      else {
        this.SensSt_9th = 0;
      }
      if (initObj.hasOwnProperty('DisFrm9thFrtSens')) {
        this.DisFrm9thFrtSens = initObj.DisFrm9thFrtSens
      }
      else {
        this.DisFrm9thFrtSens = 0;
      }
      if (initObj.hasOwnProperty('SensSt_10th')) {
        this.SensSt_10th = initObj.SensSt_10th
      }
      else {
        this.SensSt_10th = 0;
      }
      if (initObj.hasOwnProperty('DisFrm10thFrtSens')) {
        this.DisFrm10thFrtSens = initObj.DisFrm10thFrtSens
      }
      else {
        this.DisFrm10thFrtSens = 0;
      }
      if (initObj.hasOwnProperty('SensSt_11th')) {
        this.SensSt_11th = initObj.SensSt_11th
      }
      else {
        this.SensSt_11th = 0;
      }
      if (initObj.hasOwnProperty('DisFrm11thFrtSens')) {
        this.DisFrm11thFrtSens = initObj.DisFrm11thFrtSens
      }
      else {
        this.DisFrm11thFrtSens = 0;
      }
      if (initObj.hasOwnProperty('SensSt_12th')) {
        this.SensSt_12th = initObj.SensSt_12th
      }
      else {
        this.SensSt_12th = 0;
      }
      if (initObj.hasOwnProperty('DisFrm12thFrtSens')) {
        this.DisFrm12thFrtSens = initObj.DisFrm12thFrtSens
      }
      else {
        this.DisFrm12thFrtSens = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChassisMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [module_type]
    bufferOffset = _serializer.uint8(obj.module_type, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [chassis_data]
    bufferOffset = _serializer.string(obj.chassis_data, buffer, bufferOffset);
    // Serialize message field [TMTorqRqstV]
    bufferOffset = _serializer.uint8(obj.TMTorqRqstV, buffer, bufferOffset);
    // Serialize message field [TMTorqRqst]
    bufferOffset = _serializer.float64(obj.TMTorqRqst, buffer, bufferOffset);
    // Serialize message field [HandBrkSts]
    bufferOffset = _serializer.uint8(obj.HandBrkSts, buffer, bufferOffset);
    // Serialize message field [VecStatRdy]
    bufferOffset = _serializer.uint8(obj.VecStatRdy, buffer, bufferOffset);
    // Serialize message field [KyPstn]
    bufferOffset = _serializer.uint8(obj.KyPstn, buffer, bufferOffset);
    // Serialize message field [VecSOC]
    bufferOffset = _serializer.uint8(obj.VecSOC, buffer, bufferOffset);
    // Serialize message field [VehSpdAvgDrvnV]
    bufferOffset = _serializer.uint8(obj.VehSpdAvgDrvnV, buffer, bufferOffset);
    // Serialize message field [VehSpdAvgDrvn]
    bufferOffset = _serializer.float64(obj.VehSpdAvgDrvn, buffer, bufferOffset);
    // Serialize message field [VecTMActSpdV]
    bufferOffset = _serializer.uint8(obj.VecTMActSpdV, buffer, bufferOffset);
    // Serialize message field [VecTMActSpd]
    bufferOffset = _serializer.uint16(obj.VecTMActSpd, buffer, bufferOffset);
    // Serialize message field [VCUVehDrvMod]
    bufferOffset = _serializer.uint8(obj.VCUVehDrvMod, buffer, bufferOffset);
    // Serialize message field [LowBatVol]
    bufferOffset = _serializer.float64(obj.LowBatVol, buffer, bufferOffset);
    // Serialize message field [BatSOC]
    bufferOffset = _serializer.uint8(obj.BatSOC, buffer, bufferOffset);
    // Serialize message field [HhBmIO]
    bufferOffset = _serializer.uint8(obj.HhBmIO, buffer, bufferOffset);
    // Serialize message field [WindscenWipSt]
    bufferOffset = _serializer.uint8(obj.WindscenWipSt, buffer, bufferOffset);
    // Serialize message field [LwBmIO]
    bufferOffset = _serializer.uint8(obj.LwBmIO, buffer, bufferOffset);
    // Serialize message field [HzrdLgtSwAtv]
    bufferOffset = _serializer.uint8(obj.HzrdLgtSwAtv, buffer, bufferOffset);
    // Serialize message field [HzrdLtIO]
    bufferOffset = _serializer.uint8(obj.HzrdLtIO, buffer, bufferOffset);
    // Serialize message field [RtTrnLmpAtv]
    bufferOffset = _serializer.uint8(obj.RtTrnLmpAtv, buffer, bufferOffset);
    // Serialize message field [LftTrnLmpAtv]
    bufferOffset = _serializer.uint8(obj.LftTrnLmpAtv, buffer, bufferOffset);
    // Serialize message field [WipSwStat]
    bufferOffset = _serializer.uint8(obj.WipSwStat, buffer, bufferOffset);
    // Serialize message field [StpLpSt]
    bufferOffset = _serializer.uint8(obj.StpLpSt, buffer, bufferOffset);
    // Serialize message field [is_left_blinking]
    bufferOffset = _serializer.bool(obj.is_left_blinking, buffer, bufferOffset);
    // Serialize message field [is_right_blinking]
    bufferOffset = _serializer.bool(obj.is_right_blinking, buffer, bufferOffset);
    // Serialize message field [DrSbltAtc]
    bufferOffset = _serializer.uint8(obj.DrSbltAtc, buffer, bufferOffset);
    // Serialize message field [DrSbltAtcV]
    bufferOffset = _serializer.uint8(obj.DrSbltAtcV, buffer, bufferOffset);
    // Serialize message field [TDAjrSwAtv]
    bufferOffset = _serializer.uint8(obj.TDAjrSwAtv, buffer, bufferOffset);
    // Serialize message field [PsDoorOpenSwAct]
    bufferOffset = _serializer.uint8(obj.PsDoorOpenSwAct, buffer, bufferOffset);
    // Serialize message field [PDAjrSwAtv]
    bufferOffset = _serializer.uint8(obj.PDAjrSwAtv, buffer, bufferOffset);
    // Serialize message field [DrDoorOpenSwAct]
    bufferOffset = _serializer.uint8(obj.DrDoorOpenSwAct, buffer, bufferOffset);
    // Serialize message field [DDAjrSwAct]
    bufferOffset = _serializer.uint8(obj.DDAjrSwAct, buffer, bufferOffset);
    // Serialize message field [PsWdwOpenDgr]
    bufferOffset = _serializer.float64(obj.PsWdwOpenDgr, buffer, bufferOffset);
    // Serialize message field [DrWdwOpenDgr]
    bufferOffset = _serializer.float64(obj.DrWdwOpenDgr, buffer, bufferOffset);
    // Serialize message field [BCMRunMod]
    bufferOffset = _serializer.uint8(obj.BCMRunMod, buffer, bufferOffset);
    // Serialize message field [BCMRunModV]
    bufferOffset = _serializer.uint8(obj.BCMRunModV, buffer, bufferOffset);
    // Serialize message field [EPBSysWrnIndReq_1]
    bufferOffset = _serializer.uint8(obj.EPBSysWrnIndReq_1, buffer, bufferOffset);
    // Serialize message field [EPBSysWrnIndReqV_1]
    bufferOffset = _serializer.uint8(obj.EPBSysWrnIndReqV_1, buffer, bufferOffset);
    // Serialize message field [EPBSysBrkLtsReq_1]
    bufferOffset = _serializer.uint8(obj.EPBSysBrkLtsReq_1, buffer, bufferOffset);
    // Serialize message field [EPBSysStatIndReq_1]
    bufferOffset = _serializer.uint8(obj.EPBSysStatIndReq_1, buffer, bufferOffset);
    // Serialize message field [ElecPrkBrkSwStatV_1]
    bufferOffset = _serializer.uint8(obj.ElecPrkBrkSwStatV_1, buffer, bufferOffset);
    // Serialize message field [ElecPrkBrkStat_1]
    bufferOffset = _serializer.uint8(obj.ElecPrkBrkStat_1, buffer, bufferOffset);
    // Serialize message field [ElecPrkBrkSwStat_1]
    bufferOffset = _serializer.uint8(obj.ElecPrkBrkSwStat_1, buffer, bufferOffset);
    // Serialize message field [ADASWndSnWpCtrl]
    bufferOffset = _serializer.uint8(obj.ADASWndSnWpCtrl, buffer, bufferOffset);
    // Serialize message field [ADASHzdLtCtrl]
    bufferOffset = _serializer.uint8(obj.ADASHzdLtCtrl, buffer, bufferOffset);
    // Serialize message field [ADASSdTrnLmpRHCtrl]
    bufferOffset = _serializer.uint8(obj.ADASSdTrnLmpRHCtrl, buffer, bufferOffset);
    // Serialize message field [ADASSdTrnLmpLHCtrl]
    bufferOffset = _serializer.uint8(obj.ADASSdTrnLmpLHCtrl, buffer, bufferOffset);
    // Serialize message field [ADASLowBmCtrl]
    bufferOffset = _serializer.uint8(obj.ADASLowBmCtrl, buffer, bufferOffset);
    // Serialize message field [ADASHighBmCtrl]
    bufferOffset = _serializer.uint8(obj.ADASHighBmCtrl, buffer, bufferOffset);
    // Serialize message field [ADASLkCtrl]
    bufferOffset = _serializer.uint8(obj.ADASLkCtrl, buffer, bufferOffset);
    // Serialize message field [CarWindCtrl]
    bufferOffset = _serializer.uint8(obj.CarWindCtrl, buffer, bufferOffset);
    // Serialize message field [ADASRemtPrkModRqst]
    bufferOffset = _serializer.uint8(obj.ADASRemtPrkModRqst, buffer, bufferOffset);
    // Serialize message field [BCMADASCtrlRqst]
    bufferOffset = _serializer.uint8(obj.BCMADASCtrlRqst, buffer, bufferOffset);
    // Serialize message field [BCMADASCtrlRqstV]
    bufferOffset = _serializer.uint8(obj.BCMADASCtrlRqstV, buffer, bufferOffset);
    // Serialize message field [TMActTorq]
    bufferOffset = _serializer.float64(obj.TMActTorq, buffer, bufferOffset);
    // Serialize message field [TMActSpd]
    bufferOffset = _serializer.int32(obj.TMActSpd, buffer, bufferOffset);
    // Serialize message field [VSELatAccV]
    bufferOffset = _serializer.uint8(obj.VSELatAccV, buffer, bufferOffset);
    // Serialize message field [VSELatAcc]
    bufferOffset = _serializer.float64(obj.VSELatAcc, buffer, bufferOffset);
    // Serialize message field [VSELongAccV]
    bufferOffset = _serializer.uint8(obj.VSELongAccV, buffer, bufferOffset);
    // Serialize message field [VSELongAcc]
    bufferOffset = _serializer.float64(obj.VSELongAcc, buffer, bufferOffset);
    // Serialize message field [VehOdo]
    bufferOffset = _serializer.float64(obj.VehOdo, buffer, bufferOffset);
    // Serialize message field [VehOdoV]
    bufferOffset = _serializer.uint8(obj.VehOdoV, buffer, bufferOffset);
    // Serialize message field [BrakPedalPos]
    bufferOffset = _serializer.uint8(obj.BrakPedalPos, buffer, bufferOffset);
    // Serialize message field [AccActPos]
    bufferOffset = _serializer.uint8(obj.AccActPos, buffer, bufferOffset);
    // Serialize message field [VecActGearStsV]
    bufferOffset = _serializer.uint8(obj.VecActGearStsV, buffer, bufferOffset);
    // Serialize message field [VecActGearSts]
    bufferOffset = _serializer.uint8(obj.VecActGearSts, buffer, bufferOffset);
    // Serialize message field [StrWhAngV]
    bufferOffset = _serializer.uint8(obj.StrWhAngV, buffer, bufferOffset);
    // Serialize message field [StrWhAng]
    bufferOffset = _serializer.float64(obj.StrWhAng, buffer, bufferOffset);
    // Serialize message field [EPSProId]
    bufferOffset = _serializer.uint8(obj.EPSProId, buffer, bufferOffset);
    // Serialize message field [PwrStrIo]
    bufferOffset = _serializer.uint8(obj.PwrStrIo, buffer, bufferOffset);
    // Serialize message field [SterModV]
    bufferOffset = _serializer.uint8(obj.SterModV, buffer, bufferOffset);
    // Serialize message field [SterMod]
    bufferOffset = _serializer.uint8(obj.SterMod, buffer, bufferOffset);
    // Serialize message field [EPS_LKARespTorq]
    bufferOffset = _serializer.float64(obj.EPS_LKARespTorq, buffer, bufferOffset);
    // Serialize message field [SterFltMod]
    bufferOffset = _serializer.uint8(obj.SterFltMod, buffer, bufferOffset);
    // Serialize message field [DrStrTorqV]
    bufferOffset = _serializer.uint8(obj.DrStrTorqV, buffer, bufferOffset);
    // Serialize message field [DrStrTorqVal]
    bufferOffset = _serializer.float64(obj.DrStrTorqVal, buffer, bufferOffset);
    // Serialize message field [SteerWheelRotSpd]
    bufferOffset = _serializer.uint16(obj.SteerWheelRotSpd, buffer, bufferOffset);
    // Serialize message field [SteerWheelAngle]
    bufferOffset = _serializer.float64(obj.SteerWheelAngle, buffer, bufferOffset);
    // Serialize message field [ElecPrkBrkStat]
    bufferOffset = _serializer.uint8(obj.ElecPrkBrkStat, buffer, bufferOffset);
    // Serialize message field [WhlGrndVlctyLftDrvnV]
    bufferOffset = _serializer.uint8(obj.WhlGrndVlctyLftDrvnV, buffer, bufferOffset);
    // Serialize message field [WhlGrndVlctyLftDrvn]
    bufferOffset = _serializer.float64(obj.WhlGrndVlctyLftDrvn, buffer, bufferOffset);
    // Serialize message field [WhlGrndVlctyRtDrvnV]
    bufferOffset = _serializer.uint8(obj.WhlGrndVlctyRtDrvnV, buffer, bufferOffset);
    // Serialize message field [WhlGrndVlctyRtDrvn]
    bufferOffset = _serializer.float64(obj.WhlGrndVlctyRtDrvn, buffer, bufferOffset);
    // Serialize message field [WhlGrndVlctyLftNnDrvnV]
    bufferOffset = _serializer.uint8(obj.WhlGrndVlctyLftNnDrvnV, buffer, bufferOffset);
    // Serialize message field [WhlGrndVlctyLftNnDrvn]
    bufferOffset = _serializer.float64(obj.WhlGrndVlctyLftNnDrvn, buffer, bufferOffset);
    // Serialize message field [WhlGrndVlctyRtNnDrvnV]
    bufferOffset = _serializer.uint8(obj.WhlGrndVlctyRtNnDrvnV, buffer, bufferOffset);
    // Serialize message field [WhlGrndVlctyRtNnDrvn]
    bufferOffset = _serializer.float64(obj.WhlGrndVlctyRtNnDrvn, buffer, bufferOffset);
    // Serialize message field [LftDrvnWhlDirec]
    bufferOffset = _serializer.uint8(obj.LftDrvnWhlDirec, buffer, bufferOffset);
    // Serialize message field [WhlGrndPlsLftDrvnV]
    bufferOffset = _serializer.uint8(obj.WhlGrndPlsLftDrvnV, buffer, bufferOffset);
    // Serialize message field [WhlGrndPlsLftDrvn]
    bufferOffset = _serializer.uint16(obj.WhlGrndPlsLftDrvn, buffer, bufferOffset);
    // Serialize message field [RtDrvnWhlDirec]
    bufferOffset = _serializer.uint8(obj.RtDrvnWhlDirec, buffer, bufferOffset);
    // Serialize message field [WhlGrndPlsRtDrvnV]
    bufferOffset = _serializer.uint8(obj.WhlGrndPlsRtDrvnV, buffer, bufferOffset);
    // Serialize message field [WhlGrndPlsRtDrvn]
    bufferOffset = _serializer.uint16(obj.WhlGrndPlsRtDrvn, buffer, bufferOffset);
    // Serialize message field [LftNnDrvnWhlDirec]
    bufferOffset = _serializer.uint8(obj.LftNnDrvnWhlDirec, buffer, bufferOffset);
    // Serialize message field [WhlGrndPlsLftNnDrvnV]
    bufferOffset = _serializer.uint8(obj.WhlGrndPlsLftNnDrvnV, buffer, bufferOffset);
    // Serialize message field [WhlGrndPlsLftNnDrvn]
    bufferOffset = _serializer.uint16(obj.WhlGrndPlsLftNnDrvn, buffer, bufferOffset);
    // Serialize message field [RtNnDrvnWhlDirec]
    bufferOffset = _serializer.uint8(obj.RtNnDrvnWhlDirec, buffer, bufferOffset);
    // Serialize message field [WhlGrndPlsRtNnDrvnV]
    bufferOffset = _serializer.uint8(obj.WhlGrndPlsRtNnDrvnV, buffer, bufferOffset);
    // Serialize message field [WhlGrndPlsRtNnDrvn]
    bufferOffset = _serializer.uint16(obj.WhlGrndPlsRtNnDrvn, buffer, bufferOffset);
    // Serialize message field [BBWSts]
    bufferOffset = _serializer.uint8(obj.BBWSts, buffer, bufferOffset);
    // Serialize message field [EBSDrvMod]
    bufferOffset = _serializer.uint8(obj.EBSDrvMod, buffer, bufferOffset);
    // Serialize message field [IDURqst]
    bufferOffset = _serializer.uint8(obj.IDURqst, buffer, bufferOffset);
    // Serialize message field [EBSMCBrPressure]
    bufferOffset = _serializer.uint8(obj.EBSMCBrPressure, buffer, bufferOffset);
    // Serialize message field [BrakPedalDisp]
    bufferOffset = _serializer.uint8(obj.BrakPedalDisp, buffer, bufferOffset);
    // Serialize message field [ADAS_StrAngleRqstV]
    bufferOffset = _serializer.uint8(obj.ADAS_StrAngleRqstV, buffer, bufferOffset);
    // Serialize message field [ADASBrakRqstPres]
    bufferOffset = _serializer.uint16(obj.ADASBrakRqstPres, buffer, bufferOffset);
    // Serialize message field [EPB_ADASPrkngRqst]
    bufferOffset = _serializer.uint8(obj.EPB_ADASPrkngRqst, buffer, bufferOffset);
    // Serialize message field [ADASStrTorqRqst]
    bufferOffset = _serializer.uint8(obj.ADASStrTorqRqst, buffer, bufferOffset);
    // Serialize message field [ADASStrTorqTgt]
    bufferOffset = _serializer.uint16(obj.ADASStrTorqTgt, buffer, bufferOffset);
    // Serialize message field [ADAS_StrAngle]
    bufferOffset = _serializer.uint16(obj.ADAS_StrAngle, buffer, bufferOffset);
    // Serialize message field [VCUTTgtAclrtnRqst]
    bufferOffset = _serializer.uint8(obj.VCUTTgtAclrtnRqst, buffer, bufferOffset);
    // Serialize message field [VCUTTgtAclrtnRqstVal]
    bufferOffset = _serializer.float64(obj.VCUTTgtAclrtnRqstVal, buffer, bufferOffset);
    // Serialize message field [GearRqst]
    bufferOffset = _serializer.uint8(obj.GearRqst, buffer, bufferOffset);
    // Serialize message field [TgtGear]
    bufferOffset = _serializer.uint8(obj.TgtGear, buffer, bufferOffset);
    // Serialize message field [VCUTTgtSpRqst]
    bufferOffset = _serializer.uint8(obj.VCUTTgtSpRqst, buffer, bufferOffset);
    // Serialize message field [VCUTTgtSpRqstVal]
    bufferOffset = _serializer.float64(obj.VCUTTgtSpRqstVal, buffer, bufferOffset);
    // Serialize message field [SensSt_1st]
    bufferOffset = _serializer.uint8(obj.SensSt_1st, buffer, bufferOffset);
    // Serialize message field [DisFrm1stFrtSens]
    bufferOffset = _serializer.uint16(obj.DisFrm1stFrtSens, buffer, bufferOffset);
    // Serialize message field [SensSt_2nd]
    bufferOffset = _serializer.uint8(obj.SensSt_2nd, buffer, bufferOffset);
    // Serialize message field [DisFrm2ndFrtSens]
    bufferOffset = _serializer.uint16(obj.DisFrm2ndFrtSens, buffer, bufferOffset);
    // Serialize message field [SensSt_3rd]
    bufferOffset = _serializer.uint8(obj.SensSt_3rd, buffer, bufferOffset);
    // Serialize message field [DisFrm3rdFrtSens]
    bufferOffset = _serializer.uint16(obj.DisFrm3rdFrtSens, buffer, bufferOffset);
    // Serialize message field [SensSt_4th]
    bufferOffset = _serializer.uint8(obj.SensSt_4th, buffer, bufferOffset);
    // Serialize message field [DisFrm4thFrtSens]
    bufferOffset = _serializer.uint16(obj.DisFrm4thFrtSens, buffer, bufferOffset);
    // Serialize message field [SensSt_5th]
    bufferOffset = _serializer.uint8(obj.SensSt_5th, buffer, bufferOffset);
    // Serialize message field [DisFrm5thFrtSens]
    bufferOffset = _serializer.uint16(obj.DisFrm5thFrtSens, buffer, bufferOffset);
    // Serialize message field [SensSt_6th]
    bufferOffset = _serializer.uint8(obj.SensSt_6th, buffer, bufferOffset);
    // Serialize message field [DisFrm6thFrtSens]
    bufferOffset = _serializer.uint16(obj.DisFrm6thFrtSens, buffer, bufferOffset);
    // Serialize message field [SensSt_7th]
    bufferOffset = _serializer.uint8(obj.SensSt_7th, buffer, bufferOffset);
    // Serialize message field [DisFrm7thFrtSens]
    bufferOffset = _serializer.uint16(obj.DisFrm7thFrtSens, buffer, bufferOffset);
    // Serialize message field [SensSt_8th]
    bufferOffset = _serializer.uint8(obj.SensSt_8th, buffer, bufferOffset);
    // Serialize message field [DisFrm8thFrtSens]
    bufferOffset = _serializer.uint16(obj.DisFrm8thFrtSens, buffer, bufferOffset);
    // Serialize message field [SensSt_9th]
    bufferOffset = _serializer.uint8(obj.SensSt_9th, buffer, bufferOffset);
    // Serialize message field [DisFrm9thFrtSens]
    bufferOffset = _serializer.uint16(obj.DisFrm9thFrtSens, buffer, bufferOffset);
    // Serialize message field [SensSt_10th]
    bufferOffset = _serializer.uint8(obj.SensSt_10th, buffer, bufferOffset);
    // Serialize message field [DisFrm10thFrtSens]
    bufferOffset = _serializer.uint16(obj.DisFrm10thFrtSens, buffer, bufferOffset);
    // Serialize message field [SensSt_11th]
    bufferOffset = _serializer.uint8(obj.SensSt_11th, buffer, bufferOffset);
    // Serialize message field [DisFrm11thFrtSens]
    bufferOffset = _serializer.uint16(obj.DisFrm11thFrtSens, buffer, bufferOffset);
    // Serialize message field [SensSt_12th]
    bufferOffset = _serializer.uint8(obj.SensSt_12th, buffer, bufferOffset);
    // Serialize message field [DisFrm12thFrtSens]
    bufferOffset = _serializer.uint16(obj.DisFrm12thFrtSens, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChassisMsg
    let len;
    let data = new ChassisMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [module_type]
    data.module_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [chassis_data]
    data.chassis_data = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [TMTorqRqstV]
    data.TMTorqRqstV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [TMTorqRqst]
    data.TMTorqRqst = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [HandBrkSts]
    data.HandBrkSts = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VecStatRdy]
    data.VecStatRdy = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [KyPstn]
    data.KyPstn = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VecSOC]
    data.VecSOC = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VehSpdAvgDrvnV]
    data.VehSpdAvgDrvnV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VehSpdAvgDrvn]
    data.VehSpdAvgDrvn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [VecTMActSpdV]
    data.VecTMActSpdV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VecTMActSpd]
    data.VecTMActSpd = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [VCUVehDrvMod]
    data.VCUVehDrvMod = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LowBatVol]
    data.LowBatVol = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [BatSOC]
    data.BatSOC = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [HhBmIO]
    data.HhBmIO = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WindscenWipSt]
    data.WindscenWipSt = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LwBmIO]
    data.LwBmIO = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [HzrdLgtSwAtv]
    data.HzrdLgtSwAtv = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [HzrdLtIO]
    data.HzrdLtIO = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RtTrnLmpAtv]
    data.RtTrnLmpAtv = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LftTrnLmpAtv]
    data.LftTrnLmpAtv = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WipSwStat]
    data.WipSwStat = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [StpLpSt]
    data.StpLpSt = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [is_left_blinking]
    data.is_left_blinking = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_right_blinking]
    data.is_right_blinking = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [DrSbltAtc]
    data.DrSbltAtc = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DrSbltAtcV]
    data.DrSbltAtcV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [TDAjrSwAtv]
    data.TDAjrSwAtv = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [PsDoorOpenSwAct]
    data.PsDoorOpenSwAct = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [PDAjrSwAtv]
    data.PDAjrSwAtv = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DrDoorOpenSwAct]
    data.DrDoorOpenSwAct = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DDAjrSwAct]
    data.DDAjrSwAct = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [PsWdwOpenDgr]
    data.PsWdwOpenDgr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [DrWdwOpenDgr]
    data.DrWdwOpenDgr = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [BCMRunMod]
    data.BCMRunMod = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [BCMRunModV]
    data.BCMRunModV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EPBSysWrnIndReq_1]
    data.EPBSysWrnIndReq_1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EPBSysWrnIndReqV_1]
    data.EPBSysWrnIndReqV_1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EPBSysBrkLtsReq_1]
    data.EPBSysBrkLtsReq_1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EPBSysStatIndReq_1]
    data.EPBSysStatIndReq_1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ElecPrkBrkSwStatV_1]
    data.ElecPrkBrkSwStatV_1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ElecPrkBrkStat_1]
    data.ElecPrkBrkStat_1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ElecPrkBrkSwStat_1]
    data.ElecPrkBrkSwStat_1 = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ADASWndSnWpCtrl]
    data.ADASWndSnWpCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ADASHzdLtCtrl]
    data.ADASHzdLtCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ADASSdTrnLmpRHCtrl]
    data.ADASSdTrnLmpRHCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ADASSdTrnLmpLHCtrl]
    data.ADASSdTrnLmpLHCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ADASLowBmCtrl]
    data.ADASLowBmCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ADASHighBmCtrl]
    data.ADASHighBmCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ADASLkCtrl]
    data.ADASLkCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [CarWindCtrl]
    data.CarWindCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ADASRemtPrkModRqst]
    data.ADASRemtPrkModRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [BCMADASCtrlRqst]
    data.BCMADASCtrlRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [BCMADASCtrlRqstV]
    data.BCMADASCtrlRqstV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [TMActTorq]
    data.TMActTorq = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [TMActSpd]
    data.TMActSpd = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [VSELatAccV]
    data.VSELatAccV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VSELatAcc]
    data.VSELatAcc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [VSELongAccV]
    data.VSELongAccV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VSELongAcc]
    data.VSELongAcc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [VehOdo]
    data.VehOdo = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [VehOdoV]
    data.VehOdoV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [BrakPedalPos]
    data.BrakPedalPos = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [AccActPos]
    data.AccActPos = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VecActGearStsV]
    data.VecActGearStsV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VecActGearSts]
    data.VecActGearSts = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [StrWhAngV]
    data.StrWhAngV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [StrWhAng]
    data.StrWhAng = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [EPSProId]
    data.EPSProId = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [PwrStrIo]
    data.PwrStrIo = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [SterModV]
    data.SterModV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [SterMod]
    data.SterMod = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EPS_LKARespTorq]
    data.EPS_LKARespTorq = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [SterFltMod]
    data.SterFltMod = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DrStrTorqV]
    data.DrStrTorqV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DrStrTorqVal]
    data.DrStrTorqVal = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [SteerWheelRotSpd]
    data.SteerWheelRotSpd = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [SteerWheelAngle]
    data.SteerWheelAngle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ElecPrkBrkStat]
    data.ElecPrkBrkStat = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WhlGrndVlctyLftDrvnV]
    data.WhlGrndVlctyLftDrvnV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WhlGrndVlctyLftDrvn]
    data.WhlGrndVlctyLftDrvn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [WhlGrndVlctyRtDrvnV]
    data.WhlGrndVlctyRtDrvnV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WhlGrndVlctyRtDrvn]
    data.WhlGrndVlctyRtDrvn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [WhlGrndVlctyLftNnDrvnV]
    data.WhlGrndVlctyLftNnDrvnV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WhlGrndVlctyLftNnDrvn]
    data.WhlGrndVlctyLftNnDrvn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [WhlGrndVlctyRtNnDrvnV]
    data.WhlGrndVlctyRtNnDrvnV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WhlGrndVlctyRtNnDrvn]
    data.WhlGrndVlctyRtNnDrvn = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [LftDrvnWhlDirec]
    data.LftDrvnWhlDirec = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WhlGrndPlsLftDrvnV]
    data.WhlGrndPlsLftDrvnV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WhlGrndPlsLftDrvn]
    data.WhlGrndPlsLftDrvn = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [RtDrvnWhlDirec]
    data.RtDrvnWhlDirec = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WhlGrndPlsRtDrvnV]
    data.WhlGrndPlsRtDrvnV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WhlGrndPlsRtDrvn]
    data.WhlGrndPlsRtDrvn = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [LftNnDrvnWhlDirec]
    data.LftNnDrvnWhlDirec = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WhlGrndPlsLftNnDrvnV]
    data.WhlGrndPlsLftNnDrvnV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WhlGrndPlsLftNnDrvn]
    data.WhlGrndPlsLftNnDrvn = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [RtNnDrvnWhlDirec]
    data.RtNnDrvnWhlDirec = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WhlGrndPlsRtNnDrvnV]
    data.WhlGrndPlsRtNnDrvnV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WhlGrndPlsRtNnDrvn]
    data.WhlGrndPlsRtNnDrvn = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [BBWSts]
    data.BBWSts = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EBSDrvMod]
    data.EBSDrvMod = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [IDURqst]
    data.IDURqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EBSMCBrPressure]
    data.EBSMCBrPressure = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [BrakPedalDisp]
    data.BrakPedalDisp = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ADAS_StrAngleRqstV]
    data.ADAS_StrAngleRqstV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ADASBrakRqstPres]
    data.ADASBrakRqstPres = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [EPB_ADASPrkngRqst]
    data.EPB_ADASPrkngRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ADASStrTorqRqst]
    data.ADASStrTorqRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ADASStrTorqTgt]
    data.ADASStrTorqTgt = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ADAS_StrAngle]
    data.ADAS_StrAngle = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [VCUTTgtAclrtnRqst]
    data.VCUTTgtAclrtnRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VCUTTgtAclrtnRqstVal]
    data.VCUTTgtAclrtnRqstVal = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [GearRqst]
    data.GearRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [TgtGear]
    data.TgtGear = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VCUTTgtSpRqst]
    data.VCUTTgtSpRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VCUTTgtSpRqstVal]
    data.VCUTTgtSpRqstVal = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [SensSt_1st]
    data.SensSt_1st = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DisFrm1stFrtSens]
    data.DisFrm1stFrtSens = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [SensSt_2nd]
    data.SensSt_2nd = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DisFrm2ndFrtSens]
    data.DisFrm2ndFrtSens = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [SensSt_3rd]
    data.SensSt_3rd = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DisFrm3rdFrtSens]
    data.DisFrm3rdFrtSens = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [SensSt_4th]
    data.SensSt_4th = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DisFrm4thFrtSens]
    data.DisFrm4thFrtSens = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [SensSt_5th]
    data.SensSt_5th = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DisFrm5thFrtSens]
    data.DisFrm5thFrtSens = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [SensSt_6th]
    data.SensSt_6th = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DisFrm6thFrtSens]
    data.DisFrm6thFrtSens = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [SensSt_7th]
    data.SensSt_7th = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DisFrm7thFrtSens]
    data.DisFrm7thFrtSens = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [SensSt_8th]
    data.SensSt_8th = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DisFrm8thFrtSens]
    data.DisFrm8thFrtSens = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [SensSt_9th]
    data.SensSt_9th = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DisFrm9thFrtSens]
    data.DisFrm9thFrtSens = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [SensSt_10th]
    data.SensSt_10th = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DisFrm10thFrtSens]
    data.DisFrm10thFrtSens = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [SensSt_11th]
    data.SensSt_11th = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DisFrm11thFrtSens]
    data.DisFrm11thFrtSens = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [SensSt_12th]
    data.SensSt_12th = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [DisFrm12thFrtSens]
    data.DisFrm12thFrtSens = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.chassis_data);
    return length + 305;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/ChassisMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4afd528f4d1ffe906c0a12d9e60847f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 帧头，包含时间戳信息
    std_msgs/Header header
    
    # 模块类型
    uint8 module_type
    
    # error_code
    uint32 error_code
    
    # 模块信息
    string chassis_data
    
    # VCU_Torque_Request (0x165)
    uint8 TMTorqRqstV       # 电机扭矩请求有效性
    float64 TMTorqRqst      # 电机扭矩请求
    # uint8 VCUCtrlRqst1RollCnt# 循环计数
    # uint8 VCUCtrlRqst1Cksm  # 校验和
    
    # VCU_General_Status_1 (04C5)
    uint8 HandBrkSts        # 手刹开关状态
    uint8 VecStatRdy        # 整车运行准备就绪
    uint8 KyPstn            # 钥匙状态
    
    # VCU_General_Status_2 (0x36A)
    uint8 VecSOC            # SOC值
    uint8 VehSpdAvgDrvnV    # 车速有效性
    float64 VehSpdAvgDrvn   # 车速
    uint8 VecTMActSpdV      # 电机当前转速有效性
    uint16 VecTMActSpd     # 电机当前转速
    # uint8 VCUGenStRollCn    # 循环计数
    uint8 VCUVehDrvMod      # VCU驱动模式
    # uint8 VCUGenStCksm      # 校验和
    
    # VCU_General_Status_3 0x4C7
    float64 LowBatVol       # 低压蓄电池电压
    
    # BMS_General_Status_2 (0x297)
    uint8 BatSOC    # 电池电量
    
    # Exterior_Lighting_HS (0x140)
    uint8 HhBmIO        # 远光灯指示
    uint8 WindscenWipSt # 雨刮状态
    uint8 LwBmIO        # 近光灯指示
    uint8 HzrdLgtSwAtv  # 危险警报开关状态
    uint8 HzrdLtIO      # 危险警报灯指示
    uint8 RtTrnLmpAtv   # 右转向灯指示
    uint8 LftTrnLmpAtv  # 左转向灯指示
    uint8 WipSwStat     # 雨刮控制开关状态
    uint8 StpLpSt       # 行车制动灯状态
    
    # Bool Is Turn Light Blinking Status
    bool is_left_blinking
    bool is_right_blinking
    
    # Airbag_Impact_Data (0x0E1)
    uint8 DrSbltAtc     # 驾驶员安全带状态
    uint8 DrSbltAtcV    # 安全带状态有效性
    
    # LS_Device_Information (0x12A)
    uint8 TDAjrSwAtv        # 尾门门碰开关状态
    uint8 PsDoorOpenSwAct   # 右前门锁开关状态
    uint8 PDAjrSwAtv        # 右前门门碰开关状态
    uint8 DrDoorOpenSwAct   # 驾驶员侧门锁开关状态
    uint8 DDAjrSwAct        # 驾驶员侧门碰开关状态
    float64 PsWdwOpenDgr    # 副驾驶车窗开度
    float64 DrWdwOpenDgr    # 驾驶员车窗开度
    uint8 BCMRunMod         # BCM运行模式
    uint8 BCMRunModV        # BCM运行模式有效性
    
    # Electric_Park_Brake_Status_1 (0x17E)
    uint8 EPBSysWrnIndReq_1     # EPB系统报警显示要求
    uint8 EPBSysWrnIndReqV_1    # EPB系统报警显示要求有效性
    uint8 EPBSysBrkLtsReq_1     # PB制动灯点亮要求
    uint8 EPBSysStatIndReq_1    # EPB系统状态指示灯需求
    # uint8 EPBAlvRlCnt_1         # 电子驻车循环计数
    uint8 ElecPrkBrkSwStatV_1   # 驻车按键状态有效性
    uint8 ElecPrkBrkStat_1      # EPB系统工作状态
    uint8 ElecPrkBrkSwStat_1    # 驻车按键状态
    # uint8 EPBStaCksm_1          # 校验和
    
    
    # ADAS_General_Status_11 (0x329)
    uint8 ADASWndSnWpCtrl       # ADAS雨刮控制
    uint8 ADASHzdLtCtrl         # ADAS双闪控制
    uint8 ADASSdTrnLmpRHCtrl    # ADAS右转向控制
    uint8 ADASSdTrnLmpLHCtrl    # ADAS左转向控制
    uint8 ADASLowBmCtrl         # ADAS近光灯控制
    uint8 ADASHighBmCtrl        # ADAS远光灯控制
    uint8 ADASLkCtrl            # ADAS锁控功能
    uint8 CarWindCtrl           # ADAS车窗控制
    uint8 ADASRemtPrkModRqst    # ADAS电源模式请求
    uint8 BCMADASCtrlRqst       # ADAS控制请求
    uint8 BCMADASCtrlRqstV      # ADAS控制请求有效性
    
    # MCU_General_Status_1 (0x16C)
    float64 TMActTorq   # 电机当前扭矩
    int32 TMActSpd      # 电机当前转速
    
    # # VCU_General_Status_2 (0x36A)
    # uint8 VehSpdAvgDrvnV    # 车速有效性
    # float64 VehSpdAvgDrvn   # 车速
    
    # PPEI_Chassis_General_Status_1 (0x1E9)
    uint8 VSELatAccV    # 横向加速度有效性
    float64 VSELatAcc   # 车辆横向加速度 
    
    # Vehicle_Stability_Information (0x128)
    uint8 VSELongAccV   # 纵向加速度有效性
    float64 VSELongAcc  # 车辆纵向加速度
    
    # Vehicle_Odometer (0x120)
    float64 VehOdo  # 车辆行驶里程
    uint8 VehOdoV   # 车辆里程有效性
    
    # VCU_Vehicle_Command_State (0x155)
    uint8 BrakPedalPos  # 制动踏板位置
    uint8 AccActPos     # 加速踏板位置
    uint8 VecActGearStsV    # 整车当前档位状态有效性
    uint8 VecActGearSts     # 整车当前档位状态
    
    # PPEI_Steering_Wheel_Angle (0x1E5)
    uint8 StrWhAngV     # 方向盘角度有效性
    float64 StrWhAng    # 方向盘角度
    uint8 EPSProId      # EPS产品标识符
    uint8 PwrStrIo      # EPS故障指示
    # uint8 StWhlAngAliveRollCnt  # 循环计数
    # uint8 StrWhAngExPrtVal      # 校验和
    
    # PPEI_Steering_Wheel_Angle_Information (0x1E6)
    uint8 SterModV          # 转向模式有效性
    uint8 SterMod           # 转向模式
    float64 EPS_LKARespTorq # EPS LKA的响应扭矩
    uint8 SterFltMod        # 转向故障码(预留)
    uint8 DrStrTorqV        # 驾驶员转向扭矩有效性
    float64 DrStrTorqVal    # 驾驶员转向扭矩
    # uint8 StWhlAngInfmtnRollCnt # 循环计数
    # uint8 StWhlAngInfmtnCksm    # 校验和
    
    # Steering_Sensor_1 (0x14A)
    uint16 SteerWheelRotSpd     # 方向盘角速度
    float64 SteerWheelAngle     # 方向盘转角
    
    # Electic_Park_Brake_Status (0x230)
    uint8 ElecPrkBrkStat    # EBP系统工作状态
    
    # Electric_Wheel_Grnd_Velocity (0x348)
    uint8 WhlGrndVlctyLftDrvnV  # 左驱动轮对地速度有效性
    float64 WhlGrndVlctyLftDrvn # 左驱动轮对地速度
    uint8 WhlGrndVlctyRtDrvnV   # 右驱动轮对地速度有效性
    float64 WhlGrndVlctyRtDrvn  # 右驱动轮对地速度
    
    # NonDriven_Wheel_Grnd_Velocity (0x34A)
    uint8 WhlGrndVlctyLftNnDrvnV    # 左从动轮对地速度有效性
    float64 WhlGrndVlctyLftNnDrvn   # 左从动轮对地速度
    uint8 WhlGrndVlctyRtNnDrvnV     # 右从动轮对地速度有效性
    float64 WhlGrndVlctyRtNnDrvn    # 右从动轮对地速度
    
    # PPEI_Driven_Whl_Rotational_Stat (0x0C1)
    uint8 LftDrvnWhlDirec       # 左驱动轮方向
    uint8 WhlGrndPlsLftDrvnV    # 左驱动轮对地脉冲有效性
    uint16 WhlGrndPlsLftDrvn    # 左驱动轮对地脉冲
    uint8 RtDrvnWhlDirec        # 右驱动轮方向
    uint8 WhlGrndPlsRtDrvnV     # 右驱动轮对地脉冲有效性
    uint16 WhlGrndPlsRtDrvn     # 右驱动轮对地脉冲
    
    # PPEI_NonDriven_Whl_Rotational_Stat (0x0C5)
    uint8 LftNnDrvnWhlDirec     # 左从动轮方向
    uint8 WhlGrndPlsLftNnDrvnV  # 左从动轮对地脉冲有效性
    uint16 WhlGrndPlsLftNnDrvn  # 左从动轮对地脉冲
    uint8 RtNnDrvnWhlDirec      # 右从动轮方向
    uint8 WhlGrndPlsRtNnDrvnV   # 右从动轮对地脉冲有效性
    uint16 WhlGrndPlsRtNnDrvn   # 右从动轮对地脉冲
    
    # EBS_General_Status_1 (0x132)
    uint8 BBWSts            # 线控制动功能状态
    uint8 EBSDrvMod         # EBS运行模式
    uint8 IDURqst           # IDU线控制动请求状态
    uint8 EBSMCBrPressure   # EBS主缸制动压力
    uint8 BrakPedalDisp     # 制动踏板位移量
    # uint8 EBSGenSts1RollCnt # 循环计数
    # uint8 EBSGenSts1Cksm    # 校验和
    
    # ADAS_General_Status_1 (0x1D1)
    uint8 ADAS_StrAngleRqstV    # ADAS期望转向角度请求有效值
    uint16 ADASBrakRqstPres     # ADAS制动请求压力
    uint8 EPB_ADASPrkngRqst     # EPB ADAS驻车请求
    uint8 ADASStrTorqRqst       # ADAS转向扭矩请求
    uint16 ADASStrTorqTgt       # ADAS转向扭矩目标值
    uint16 ADAS_StrAngle        # ADAS期望转向角度
    
    # ADAS_General_Status_2 (0x1D2)
    uint8 VCUTTgtAclrtnRqst         # VCU目标加速度请求
    float64 VCUTTgtAclrtnRqstVal    # VCU目标加速度请求值
    uint8 GearRqst                  # 档位请求
    uint8 TgtGear                   # 档位
    uint8 VCUTTgtSpRqst             # VCU目标速度请求
    float64 VCUTTgtSpRqstVal        # VCU目标速度请求值
    
    # URC_Genertal_Status_1 (0x211)
    uint8 SensSt_1st        # 1号探头状态
    uint16 DisFrm1stFrtSens # 1号探头距离
    uint8 SensSt_2nd
    uint16 DisFrm2ndFrtSens
    uint8 SensSt_3rd
    uint16 DisFrm3rdFrtSens
    uint8 SensSt_4th
    uint16 DisFrm4thFrtSens
    
    # URC_Genertal_Status_2 (0x212)
    uint8 SensSt_5th
    uint16 DisFrm5thFrtSens
    uint8 SensSt_6th
    uint16 DisFrm6thFrtSens
    uint8 SensSt_7th
    uint16 DisFrm7thFrtSens
    uint8 SensSt_8th
    uint16 DisFrm8thFrtSens
    
    # URC_Genertal_Status_3 (0x213)
    uint8 SensSt_9th
    uint16 DisFrm9thFrtSens
    uint8 SensSt_10th
    uint16 DisFrm10thFrtSens
    uint8 SensSt_11th
    uint16 DisFrm11thFrtSens
    uint8 SensSt_12th
    uint16 DisFrm12thFrtSens
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChassisMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.module_type !== undefined) {
      resolved.module_type = msg.module_type;
    }
    else {
      resolved.module_type = 0
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.chassis_data !== undefined) {
      resolved.chassis_data = msg.chassis_data;
    }
    else {
      resolved.chassis_data = ''
    }

    if (msg.TMTorqRqstV !== undefined) {
      resolved.TMTorqRqstV = msg.TMTorqRqstV;
    }
    else {
      resolved.TMTorqRqstV = 0
    }

    if (msg.TMTorqRqst !== undefined) {
      resolved.TMTorqRqst = msg.TMTorqRqst;
    }
    else {
      resolved.TMTorqRqst = 0.0
    }

    if (msg.HandBrkSts !== undefined) {
      resolved.HandBrkSts = msg.HandBrkSts;
    }
    else {
      resolved.HandBrkSts = 0
    }

    if (msg.VecStatRdy !== undefined) {
      resolved.VecStatRdy = msg.VecStatRdy;
    }
    else {
      resolved.VecStatRdy = 0
    }

    if (msg.KyPstn !== undefined) {
      resolved.KyPstn = msg.KyPstn;
    }
    else {
      resolved.KyPstn = 0
    }

    if (msg.VecSOC !== undefined) {
      resolved.VecSOC = msg.VecSOC;
    }
    else {
      resolved.VecSOC = 0
    }

    if (msg.VehSpdAvgDrvnV !== undefined) {
      resolved.VehSpdAvgDrvnV = msg.VehSpdAvgDrvnV;
    }
    else {
      resolved.VehSpdAvgDrvnV = 0
    }

    if (msg.VehSpdAvgDrvn !== undefined) {
      resolved.VehSpdAvgDrvn = msg.VehSpdAvgDrvn;
    }
    else {
      resolved.VehSpdAvgDrvn = 0.0
    }

    if (msg.VecTMActSpdV !== undefined) {
      resolved.VecTMActSpdV = msg.VecTMActSpdV;
    }
    else {
      resolved.VecTMActSpdV = 0
    }

    if (msg.VecTMActSpd !== undefined) {
      resolved.VecTMActSpd = msg.VecTMActSpd;
    }
    else {
      resolved.VecTMActSpd = 0
    }

    if (msg.VCUVehDrvMod !== undefined) {
      resolved.VCUVehDrvMod = msg.VCUVehDrvMod;
    }
    else {
      resolved.VCUVehDrvMod = 0
    }

    if (msg.LowBatVol !== undefined) {
      resolved.LowBatVol = msg.LowBatVol;
    }
    else {
      resolved.LowBatVol = 0.0
    }

    if (msg.BatSOC !== undefined) {
      resolved.BatSOC = msg.BatSOC;
    }
    else {
      resolved.BatSOC = 0
    }

    if (msg.HhBmIO !== undefined) {
      resolved.HhBmIO = msg.HhBmIO;
    }
    else {
      resolved.HhBmIO = 0
    }

    if (msg.WindscenWipSt !== undefined) {
      resolved.WindscenWipSt = msg.WindscenWipSt;
    }
    else {
      resolved.WindscenWipSt = 0
    }

    if (msg.LwBmIO !== undefined) {
      resolved.LwBmIO = msg.LwBmIO;
    }
    else {
      resolved.LwBmIO = 0
    }

    if (msg.HzrdLgtSwAtv !== undefined) {
      resolved.HzrdLgtSwAtv = msg.HzrdLgtSwAtv;
    }
    else {
      resolved.HzrdLgtSwAtv = 0
    }

    if (msg.HzrdLtIO !== undefined) {
      resolved.HzrdLtIO = msg.HzrdLtIO;
    }
    else {
      resolved.HzrdLtIO = 0
    }

    if (msg.RtTrnLmpAtv !== undefined) {
      resolved.RtTrnLmpAtv = msg.RtTrnLmpAtv;
    }
    else {
      resolved.RtTrnLmpAtv = 0
    }

    if (msg.LftTrnLmpAtv !== undefined) {
      resolved.LftTrnLmpAtv = msg.LftTrnLmpAtv;
    }
    else {
      resolved.LftTrnLmpAtv = 0
    }

    if (msg.WipSwStat !== undefined) {
      resolved.WipSwStat = msg.WipSwStat;
    }
    else {
      resolved.WipSwStat = 0
    }

    if (msg.StpLpSt !== undefined) {
      resolved.StpLpSt = msg.StpLpSt;
    }
    else {
      resolved.StpLpSt = 0
    }

    if (msg.is_left_blinking !== undefined) {
      resolved.is_left_blinking = msg.is_left_blinking;
    }
    else {
      resolved.is_left_blinking = false
    }

    if (msg.is_right_blinking !== undefined) {
      resolved.is_right_blinking = msg.is_right_blinking;
    }
    else {
      resolved.is_right_blinking = false
    }

    if (msg.DrSbltAtc !== undefined) {
      resolved.DrSbltAtc = msg.DrSbltAtc;
    }
    else {
      resolved.DrSbltAtc = 0
    }

    if (msg.DrSbltAtcV !== undefined) {
      resolved.DrSbltAtcV = msg.DrSbltAtcV;
    }
    else {
      resolved.DrSbltAtcV = 0
    }

    if (msg.TDAjrSwAtv !== undefined) {
      resolved.TDAjrSwAtv = msg.TDAjrSwAtv;
    }
    else {
      resolved.TDAjrSwAtv = 0
    }

    if (msg.PsDoorOpenSwAct !== undefined) {
      resolved.PsDoorOpenSwAct = msg.PsDoorOpenSwAct;
    }
    else {
      resolved.PsDoorOpenSwAct = 0
    }

    if (msg.PDAjrSwAtv !== undefined) {
      resolved.PDAjrSwAtv = msg.PDAjrSwAtv;
    }
    else {
      resolved.PDAjrSwAtv = 0
    }

    if (msg.DrDoorOpenSwAct !== undefined) {
      resolved.DrDoorOpenSwAct = msg.DrDoorOpenSwAct;
    }
    else {
      resolved.DrDoorOpenSwAct = 0
    }

    if (msg.DDAjrSwAct !== undefined) {
      resolved.DDAjrSwAct = msg.DDAjrSwAct;
    }
    else {
      resolved.DDAjrSwAct = 0
    }

    if (msg.PsWdwOpenDgr !== undefined) {
      resolved.PsWdwOpenDgr = msg.PsWdwOpenDgr;
    }
    else {
      resolved.PsWdwOpenDgr = 0.0
    }

    if (msg.DrWdwOpenDgr !== undefined) {
      resolved.DrWdwOpenDgr = msg.DrWdwOpenDgr;
    }
    else {
      resolved.DrWdwOpenDgr = 0.0
    }

    if (msg.BCMRunMod !== undefined) {
      resolved.BCMRunMod = msg.BCMRunMod;
    }
    else {
      resolved.BCMRunMod = 0
    }

    if (msg.BCMRunModV !== undefined) {
      resolved.BCMRunModV = msg.BCMRunModV;
    }
    else {
      resolved.BCMRunModV = 0
    }

    if (msg.EPBSysWrnIndReq_1 !== undefined) {
      resolved.EPBSysWrnIndReq_1 = msg.EPBSysWrnIndReq_1;
    }
    else {
      resolved.EPBSysWrnIndReq_1 = 0
    }

    if (msg.EPBSysWrnIndReqV_1 !== undefined) {
      resolved.EPBSysWrnIndReqV_1 = msg.EPBSysWrnIndReqV_1;
    }
    else {
      resolved.EPBSysWrnIndReqV_1 = 0
    }

    if (msg.EPBSysBrkLtsReq_1 !== undefined) {
      resolved.EPBSysBrkLtsReq_1 = msg.EPBSysBrkLtsReq_1;
    }
    else {
      resolved.EPBSysBrkLtsReq_1 = 0
    }

    if (msg.EPBSysStatIndReq_1 !== undefined) {
      resolved.EPBSysStatIndReq_1 = msg.EPBSysStatIndReq_1;
    }
    else {
      resolved.EPBSysStatIndReq_1 = 0
    }

    if (msg.ElecPrkBrkSwStatV_1 !== undefined) {
      resolved.ElecPrkBrkSwStatV_1 = msg.ElecPrkBrkSwStatV_1;
    }
    else {
      resolved.ElecPrkBrkSwStatV_1 = 0
    }

    if (msg.ElecPrkBrkStat_1 !== undefined) {
      resolved.ElecPrkBrkStat_1 = msg.ElecPrkBrkStat_1;
    }
    else {
      resolved.ElecPrkBrkStat_1 = 0
    }

    if (msg.ElecPrkBrkSwStat_1 !== undefined) {
      resolved.ElecPrkBrkSwStat_1 = msg.ElecPrkBrkSwStat_1;
    }
    else {
      resolved.ElecPrkBrkSwStat_1 = 0
    }

    if (msg.ADASWndSnWpCtrl !== undefined) {
      resolved.ADASWndSnWpCtrl = msg.ADASWndSnWpCtrl;
    }
    else {
      resolved.ADASWndSnWpCtrl = 0
    }

    if (msg.ADASHzdLtCtrl !== undefined) {
      resolved.ADASHzdLtCtrl = msg.ADASHzdLtCtrl;
    }
    else {
      resolved.ADASHzdLtCtrl = 0
    }

    if (msg.ADASSdTrnLmpRHCtrl !== undefined) {
      resolved.ADASSdTrnLmpRHCtrl = msg.ADASSdTrnLmpRHCtrl;
    }
    else {
      resolved.ADASSdTrnLmpRHCtrl = 0
    }

    if (msg.ADASSdTrnLmpLHCtrl !== undefined) {
      resolved.ADASSdTrnLmpLHCtrl = msg.ADASSdTrnLmpLHCtrl;
    }
    else {
      resolved.ADASSdTrnLmpLHCtrl = 0
    }

    if (msg.ADASLowBmCtrl !== undefined) {
      resolved.ADASLowBmCtrl = msg.ADASLowBmCtrl;
    }
    else {
      resolved.ADASLowBmCtrl = 0
    }

    if (msg.ADASHighBmCtrl !== undefined) {
      resolved.ADASHighBmCtrl = msg.ADASHighBmCtrl;
    }
    else {
      resolved.ADASHighBmCtrl = 0
    }

    if (msg.ADASLkCtrl !== undefined) {
      resolved.ADASLkCtrl = msg.ADASLkCtrl;
    }
    else {
      resolved.ADASLkCtrl = 0
    }

    if (msg.CarWindCtrl !== undefined) {
      resolved.CarWindCtrl = msg.CarWindCtrl;
    }
    else {
      resolved.CarWindCtrl = 0
    }

    if (msg.ADASRemtPrkModRqst !== undefined) {
      resolved.ADASRemtPrkModRqst = msg.ADASRemtPrkModRqst;
    }
    else {
      resolved.ADASRemtPrkModRqst = 0
    }

    if (msg.BCMADASCtrlRqst !== undefined) {
      resolved.BCMADASCtrlRqst = msg.BCMADASCtrlRqst;
    }
    else {
      resolved.BCMADASCtrlRqst = 0
    }

    if (msg.BCMADASCtrlRqstV !== undefined) {
      resolved.BCMADASCtrlRqstV = msg.BCMADASCtrlRqstV;
    }
    else {
      resolved.BCMADASCtrlRqstV = 0
    }

    if (msg.TMActTorq !== undefined) {
      resolved.TMActTorq = msg.TMActTorq;
    }
    else {
      resolved.TMActTorq = 0.0
    }

    if (msg.TMActSpd !== undefined) {
      resolved.TMActSpd = msg.TMActSpd;
    }
    else {
      resolved.TMActSpd = 0
    }

    if (msg.VSELatAccV !== undefined) {
      resolved.VSELatAccV = msg.VSELatAccV;
    }
    else {
      resolved.VSELatAccV = 0
    }

    if (msg.VSELatAcc !== undefined) {
      resolved.VSELatAcc = msg.VSELatAcc;
    }
    else {
      resolved.VSELatAcc = 0.0
    }

    if (msg.VSELongAccV !== undefined) {
      resolved.VSELongAccV = msg.VSELongAccV;
    }
    else {
      resolved.VSELongAccV = 0
    }

    if (msg.VSELongAcc !== undefined) {
      resolved.VSELongAcc = msg.VSELongAcc;
    }
    else {
      resolved.VSELongAcc = 0.0
    }

    if (msg.VehOdo !== undefined) {
      resolved.VehOdo = msg.VehOdo;
    }
    else {
      resolved.VehOdo = 0.0
    }

    if (msg.VehOdoV !== undefined) {
      resolved.VehOdoV = msg.VehOdoV;
    }
    else {
      resolved.VehOdoV = 0
    }

    if (msg.BrakPedalPos !== undefined) {
      resolved.BrakPedalPos = msg.BrakPedalPos;
    }
    else {
      resolved.BrakPedalPos = 0
    }

    if (msg.AccActPos !== undefined) {
      resolved.AccActPos = msg.AccActPos;
    }
    else {
      resolved.AccActPos = 0
    }

    if (msg.VecActGearStsV !== undefined) {
      resolved.VecActGearStsV = msg.VecActGearStsV;
    }
    else {
      resolved.VecActGearStsV = 0
    }

    if (msg.VecActGearSts !== undefined) {
      resolved.VecActGearSts = msg.VecActGearSts;
    }
    else {
      resolved.VecActGearSts = 0
    }

    if (msg.StrWhAngV !== undefined) {
      resolved.StrWhAngV = msg.StrWhAngV;
    }
    else {
      resolved.StrWhAngV = 0
    }

    if (msg.StrWhAng !== undefined) {
      resolved.StrWhAng = msg.StrWhAng;
    }
    else {
      resolved.StrWhAng = 0.0
    }

    if (msg.EPSProId !== undefined) {
      resolved.EPSProId = msg.EPSProId;
    }
    else {
      resolved.EPSProId = 0
    }

    if (msg.PwrStrIo !== undefined) {
      resolved.PwrStrIo = msg.PwrStrIo;
    }
    else {
      resolved.PwrStrIo = 0
    }

    if (msg.SterModV !== undefined) {
      resolved.SterModV = msg.SterModV;
    }
    else {
      resolved.SterModV = 0
    }

    if (msg.SterMod !== undefined) {
      resolved.SterMod = msg.SterMod;
    }
    else {
      resolved.SterMod = 0
    }

    if (msg.EPS_LKARespTorq !== undefined) {
      resolved.EPS_LKARespTorq = msg.EPS_LKARespTorq;
    }
    else {
      resolved.EPS_LKARespTorq = 0.0
    }

    if (msg.SterFltMod !== undefined) {
      resolved.SterFltMod = msg.SterFltMod;
    }
    else {
      resolved.SterFltMod = 0
    }

    if (msg.DrStrTorqV !== undefined) {
      resolved.DrStrTorqV = msg.DrStrTorqV;
    }
    else {
      resolved.DrStrTorqV = 0
    }

    if (msg.DrStrTorqVal !== undefined) {
      resolved.DrStrTorqVal = msg.DrStrTorqVal;
    }
    else {
      resolved.DrStrTorqVal = 0.0
    }

    if (msg.SteerWheelRotSpd !== undefined) {
      resolved.SteerWheelRotSpd = msg.SteerWheelRotSpd;
    }
    else {
      resolved.SteerWheelRotSpd = 0
    }

    if (msg.SteerWheelAngle !== undefined) {
      resolved.SteerWheelAngle = msg.SteerWheelAngle;
    }
    else {
      resolved.SteerWheelAngle = 0.0
    }

    if (msg.ElecPrkBrkStat !== undefined) {
      resolved.ElecPrkBrkStat = msg.ElecPrkBrkStat;
    }
    else {
      resolved.ElecPrkBrkStat = 0
    }

    if (msg.WhlGrndVlctyLftDrvnV !== undefined) {
      resolved.WhlGrndVlctyLftDrvnV = msg.WhlGrndVlctyLftDrvnV;
    }
    else {
      resolved.WhlGrndVlctyLftDrvnV = 0
    }

    if (msg.WhlGrndVlctyLftDrvn !== undefined) {
      resolved.WhlGrndVlctyLftDrvn = msg.WhlGrndVlctyLftDrvn;
    }
    else {
      resolved.WhlGrndVlctyLftDrvn = 0.0
    }

    if (msg.WhlGrndVlctyRtDrvnV !== undefined) {
      resolved.WhlGrndVlctyRtDrvnV = msg.WhlGrndVlctyRtDrvnV;
    }
    else {
      resolved.WhlGrndVlctyRtDrvnV = 0
    }

    if (msg.WhlGrndVlctyRtDrvn !== undefined) {
      resolved.WhlGrndVlctyRtDrvn = msg.WhlGrndVlctyRtDrvn;
    }
    else {
      resolved.WhlGrndVlctyRtDrvn = 0.0
    }

    if (msg.WhlGrndVlctyLftNnDrvnV !== undefined) {
      resolved.WhlGrndVlctyLftNnDrvnV = msg.WhlGrndVlctyLftNnDrvnV;
    }
    else {
      resolved.WhlGrndVlctyLftNnDrvnV = 0
    }

    if (msg.WhlGrndVlctyLftNnDrvn !== undefined) {
      resolved.WhlGrndVlctyLftNnDrvn = msg.WhlGrndVlctyLftNnDrvn;
    }
    else {
      resolved.WhlGrndVlctyLftNnDrvn = 0.0
    }

    if (msg.WhlGrndVlctyRtNnDrvnV !== undefined) {
      resolved.WhlGrndVlctyRtNnDrvnV = msg.WhlGrndVlctyRtNnDrvnV;
    }
    else {
      resolved.WhlGrndVlctyRtNnDrvnV = 0
    }

    if (msg.WhlGrndVlctyRtNnDrvn !== undefined) {
      resolved.WhlGrndVlctyRtNnDrvn = msg.WhlGrndVlctyRtNnDrvn;
    }
    else {
      resolved.WhlGrndVlctyRtNnDrvn = 0.0
    }

    if (msg.LftDrvnWhlDirec !== undefined) {
      resolved.LftDrvnWhlDirec = msg.LftDrvnWhlDirec;
    }
    else {
      resolved.LftDrvnWhlDirec = 0
    }

    if (msg.WhlGrndPlsLftDrvnV !== undefined) {
      resolved.WhlGrndPlsLftDrvnV = msg.WhlGrndPlsLftDrvnV;
    }
    else {
      resolved.WhlGrndPlsLftDrvnV = 0
    }

    if (msg.WhlGrndPlsLftDrvn !== undefined) {
      resolved.WhlGrndPlsLftDrvn = msg.WhlGrndPlsLftDrvn;
    }
    else {
      resolved.WhlGrndPlsLftDrvn = 0
    }

    if (msg.RtDrvnWhlDirec !== undefined) {
      resolved.RtDrvnWhlDirec = msg.RtDrvnWhlDirec;
    }
    else {
      resolved.RtDrvnWhlDirec = 0
    }

    if (msg.WhlGrndPlsRtDrvnV !== undefined) {
      resolved.WhlGrndPlsRtDrvnV = msg.WhlGrndPlsRtDrvnV;
    }
    else {
      resolved.WhlGrndPlsRtDrvnV = 0
    }

    if (msg.WhlGrndPlsRtDrvn !== undefined) {
      resolved.WhlGrndPlsRtDrvn = msg.WhlGrndPlsRtDrvn;
    }
    else {
      resolved.WhlGrndPlsRtDrvn = 0
    }

    if (msg.LftNnDrvnWhlDirec !== undefined) {
      resolved.LftNnDrvnWhlDirec = msg.LftNnDrvnWhlDirec;
    }
    else {
      resolved.LftNnDrvnWhlDirec = 0
    }

    if (msg.WhlGrndPlsLftNnDrvnV !== undefined) {
      resolved.WhlGrndPlsLftNnDrvnV = msg.WhlGrndPlsLftNnDrvnV;
    }
    else {
      resolved.WhlGrndPlsLftNnDrvnV = 0
    }

    if (msg.WhlGrndPlsLftNnDrvn !== undefined) {
      resolved.WhlGrndPlsLftNnDrvn = msg.WhlGrndPlsLftNnDrvn;
    }
    else {
      resolved.WhlGrndPlsLftNnDrvn = 0
    }

    if (msg.RtNnDrvnWhlDirec !== undefined) {
      resolved.RtNnDrvnWhlDirec = msg.RtNnDrvnWhlDirec;
    }
    else {
      resolved.RtNnDrvnWhlDirec = 0
    }

    if (msg.WhlGrndPlsRtNnDrvnV !== undefined) {
      resolved.WhlGrndPlsRtNnDrvnV = msg.WhlGrndPlsRtNnDrvnV;
    }
    else {
      resolved.WhlGrndPlsRtNnDrvnV = 0
    }

    if (msg.WhlGrndPlsRtNnDrvn !== undefined) {
      resolved.WhlGrndPlsRtNnDrvn = msg.WhlGrndPlsRtNnDrvn;
    }
    else {
      resolved.WhlGrndPlsRtNnDrvn = 0
    }

    if (msg.BBWSts !== undefined) {
      resolved.BBWSts = msg.BBWSts;
    }
    else {
      resolved.BBWSts = 0
    }

    if (msg.EBSDrvMod !== undefined) {
      resolved.EBSDrvMod = msg.EBSDrvMod;
    }
    else {
      resolved.EBSDrvMod = 0
    }

    if (msg.IDURqst !== undefined) {
      resolved.IDURqst = msg.IDURqst;
    }
    else {
      resolved.IDURqst = 0
    }

    if (msg.EBSMCBrPressure !== undefined) {
      resolved.EBSMCBrPressure = msg.EBSMCBrPressure;
    }
    else {
      resolved.EBSMCBrPressure = 0
    }

    if (msg.BrakPedalDisp !== undefined) {
      resolved.BrakPedalDisp = msg.BrakPedalDisp;
    }
    else {
      resolved.BrakPedalDisp = 0
    }

    if (msg.ADAS_StrAngleRqstV !== undefined) {
      resolved.ADAS_StrAngleRqstV = msg.ADAS_StrAngleRqstV;
    }
    else {
      resolved.ADAS_StrAngleRqstV = 0
    }

    if (msg.ADASBrakRqstPres !== undefined) {
      resolved.ADASBrakRqstPres = msg.ADASBrakRqstPres;
    }
    else {
      resolved.ADASBrakRqstPres = 0
    }

    if (msg.EPB_ADASPrkngRqst !== undefined) {
      resolved.EPB_ADASPrkngRqst = msg.EPB_ADASPrkngRqst;
    }
    else {
      resolved.EPB_ADASPrkngRqst = 0
    }

    if (msg.ADASStrTorqRqst !== undefined) {
      resolved.ADASStrTorqRqst = msg.ADASStrTorqRqst;
    }
    else {
      resolved.ADASStrTorqRqst = 0
    }

    if (msg.ADASStrTorqTgt !== undefined) {
      resolved.ADASStrTorqTgt = msg.ADASStrTorqTgt;
    }
    else {
      resolved.ADASStrTorqTgt = 0
    }

    if (msg.ADAS_StrAngle !== undefined) {
      resolved.ADAS_StrAngle = msg.ADAS_StrAngle;
    }
    else {
      resolved.ADAS_StrAngle = 0
    }

    if (msg.VCUTTgtAclrtnRqst !== undefined) {
      resolved.VCUTTgtAclrtnRqst = msg.VCUTTgtAclrtnRqst;
    }
    else {
      resolved.VCUTTgtAclrtnRqst = 0
    }

    if (msg.VCUTTgtAclrtnRqstVal !== undefined) {
      resolved.VCUTTgtAclrtnRqstVal = msg.VCUTTgtAclrtnRqstVal;
    }
    else {
      resolved.VCUTTgtAclrtnRqstVal = 0.0
    }

    if (msg.GearRqst !== undefined) {
      resolved.GearRqst = msg.GearRqst;
    }
    else {
      resolved.GearRqst = 0
    }

    if (msg.TgtGear !== undefined) {
      resolved.TgtGear = msg.TgtGear;
    }
    else {
      resolved.TgtGear = 0
    }

    if (msg.VCUTTgtSpRqst !== undefined) {
      resolved.VCUTTgtSpRqst = msg.VCUTTgtSpRqst;
    }
    else {
      resolved.VCUTTgtSpRqst = 0
    }

    if (msg.VCUTTgtSpRqstVal !== undefined) {
      resolved.VCUTTgtSpRqstVal = msg.VCUTTgtSpRqstVal;
    }
    else {
      resolved.VCUTTgtSpRqstVal = 0.0
    }

    if (msg.SensSt_1st !== undefined) {
      resolved.SensSt_1st = msg.SensSt_1st;
    }
    else {
      resolved.SensSt_1st = 0
    }

    if (msg.DisFrm1stFrtSens !== undefined) {
      resolved.DisFrm1stFrtSens = msg.DisFrm1stFrtSens;
    }
    else {
      resolved.DisFrm1stFrtSens = 0
    }

    if (msg.SensSt_2nd !== undefined) {
      resolved.SensSt_2nd = msg.SensSt_2nd;
    }
    else {
      resolved.SensSt_2nd = 0
    }

    if (msg.DisFrm2ndFrtSens !== undefined) {
      resolved.DisFrm2ndFrtSens = msg.DisFrm2ndFrtSens;
    }
    else {
      resolved.DisFrm2ndFrtSens = 0
    }

    if (msg.SensSt_3rd !== undefined) {
      resolved.SensSt_3rd = msg.SensSt_3rd;
    }
    else {
      resolved.SensSt_3rd = 0
    }

    if (msg.DisFrm3rdFrtSens !== undefined) {
      resolved.DisFrm3rdFrtSens = msg.DisFrm3rdFrtSens;
    }
    else {
      resolved.DisFrm3rdFrtSens = 0
    }

    if (msg.SensSt_4th !== undefined) {
      resolved.SensSt_4th = msg.SensSt_4th;
    }
    else {
      resolved.SensSt_4th = 0
    }

    if (msg.DisFrm4thFrtSens !== undefined) {
      resolved.DisFrm4thFrtSens = msg.DisFrm4thFrtSens;
    }
    else {
      resolved.DisFrm4thFrtSens = 0
    }

    if (msg.SensSt_5th !== undefined) {
      resolved.SensSt_5th = msg.SensSt_5th;
    }
    else {
      resolved.SensSt_5th = 0
    }

    if (msg.DisFrm5thFrtSens !== undefined) {
      resolved.DisFrm5thFrtSens = msg.DisFrm5thFrtSens;
    }
    else {
      resolved.DisFrm5thFrtSens = 0
    }

    if (msg.SensSt_6th !== undefined) {
      resolved.SensSt_6th = msg.SensSt_6th;
    }
    else {
      resolved.SensSt_6th = 0
    }

    if (msg.DisFrm6thFrtSens !== undefined) {
      resolved.DisFrm6thFrtSens = msg.DisFrm6thFrtSens;
    }
    else {
      resolved.DisFrm6thFrtSens = 0
    }

    if (msg.SensSt_7th !== undefined) {
      resolved.SensSt_7th = msg.SensSt_7th;
    }
    else {
      resolved.SensSt_7th = 0
    }

    if (msg.DisFrm7thFrtSens !== undefined) {
      resolved.DisFrm7thFrtSens = msg.DisFrm7thFrtSens;
    }
    else {
      resolved.DisFrm7thFrtSens = 0
    }

    if (msg.SensSt_8th !== undefined) {
      resolved.SensSt_8th = msg.SensSt_8th;
    }
    else {
      resolved.SensSt_8th = 0
    }

    if (msg.DisFrm8thFrtSens !== undefined) {
      resolved.DisFrm8thFrtSens = msg.DisFrm8thFrtSens;
    }
    else {
      resolved.DisFrm8thFrtSens = 0
    }

    if (msg.SensSt_9th !== undefined) {
      resolved.SensSt_9th = msg.SensSt_9th;
    }
    else {
      resolved.SensSt_9th = 0
    }

    if (msg.DisFrm9thFrtSens !== undefined) {
      resolved.DisFrm9thFrtSens = msg.DisFrm9thFrtSens;
    }
    else {
      resolved.DisFrm9thFrtSens = 0
    }

    if (msg.SensSt_10th !== undefined) {
      resolved.SensSt_10th = msg.SensSt_10th;
    }
    else {
      resolved.SensSt_10th = 0
    }

    if (msg.DisFrm10thFrtSens !== undefined) {
      resolved.DisFrm10thFrtSens = msg.DisFrm10thFrtSens;
    }
    else {
      resolved.DisFrm10thFrtSens = 0
    }

    if (msg.SensSt_11th !== undefined) {
      resolved.SensSt_11th = msg.SensSt_11th;
    }
    else {
      resolved.SensSt_11th = 0
    }

    if (msg.DisFrm11thFrtSens !== undefined) {
      resolved.DisFrm11thFrtSens = msg.DisFrm11thFrtSens;
    }
    else {
      resolved.DisFrm11thFrtSens = 0
    }

    if (msg.SensSt_12th !== undefined) {
      resolved.SensSt_12th = msg.SensSt_12th;
    }
    else {
      resolved.SensSt_12th = 0
    }

    if (msg.DisFrm12thFrtSens !== undefined) {
      resolved.DisFrm12thFrtSens = msg.DisFrm12thFrtSens;
    }
    else {
      resolved.DisFrm12thFrtSens = 0
    }

    return resolved;
    }
};

module.exports = ChassisMsg;
