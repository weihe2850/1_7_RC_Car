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

class ChassisCtrlMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.module_type = null;
      this.error_code = null;
      this.ctrl_command = null;
      this.VclDrvModRqstV = null;
      this.VclDrvModRqst = null;
      this.PakBrkRqstV = null;
      this.PakBrkRqst = null;
      this.VclAclRqstV = null;
      this.BrkPressureTgtV = null;
      this.VclVelRqstV = null;
      this.VclAclRqst = null;
      this.BrkPressureTgt = null;
      this.VclVelRqst = null;
      this.IDUFltIndOn = null;
      this.PowOnRqst = null;
      this.VclShiftRqst = null;
      this.StrAglRqstV = null;
      this.StrAglRqst = null;
      this.TgtStrAglVlcV = null;
      this.TgtStrAglVlc = null;
      this.EPSCtrlModRqstV = null;
      this.EPSCtrlModRqst = null;
      this.LdskCtrl = null;
      this.WndSnWpCtrl = null;
      this.StpLpCtrl = null;
      this.HzdLtCtrl = null;
      this.ClerLmpCtrl = null;
      this.FogLmpCtrl = null;
      this.SdTrnLmpRHCtrl = null;
      this.SdTrnLmpLHCtrl = null;
      this.LowBmCtrl = null;
      this.HighBmCtrl = null;
      this.LkCtrl = null;
      this.CarWindCtrl = null;
      this.BCMCtrlModRqstV = null;
      this.BCMCtrlModRqst = null;
      this.RemtPowOnRqst = null;
      this.RemtPowOnRqstV = null;
      this.RemtPowDwnRqst = null;
      this.RemtPowDwnRqstV = null;
      this.CANB_ParkingStartRequest = null;
      this.CANB_ParkingCloseRequest = null;
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
      this.ADASWndSnWpCtrl = null;
      this.ADASHzdLtCtrl = null;
      this.ADASSdTrnLmpRHCtrl = null;
      this.ADASSdTrnLmpLHCtrl = null;
      this.ADASLowBmCtrl = null;
      this.ADASHighBmCtrl = null;
      this.ADASLkCtrl = null;
      this.ADASRemtPrkModRqst = null;
      this.BCMADASCtrlRqst = null;
      this.BCMADASCtrlRqstV = null;
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
      if (initObj.hasOwnProperty('ctrl_command')) {
        this.ctrl_command = initObj.ctrl_command
      }
      else {
        this.ctrl_command = '';
      }
      if (initObj.hasOwnProperty('VclDrvModRqstV')) {
        this.VclDrvModRqstV = initObj.VclDrvModRqstV
      }
      else {
        this.VclDrvModRqstV = 0;
      }
      if (initObj.hasOwnProperty('VclDrvModRqst')) {
        this.VclDrvModRqst = initObj.VclDrvModRqst
      }
      else {
        this.VclDrvModRqst = 0;
      }
      if (initObj.hasOwnProperty('PakBrkRqstV')) {
        this.PakBrkRqstV = initObj.PakBrkRqstV
      }
      else {
        this.PakBrkRqstV = 0;
      }
      if (initObj.hasOwnProperty('PakBrkRqst')) {
        this.PakBrkRqst = initObj.PakBrkRqst
      }
      else {
        this.PakBrkRqst = 0;
      }
      if (initObj.hasOwnProperty('VclAclRqstV')) {
        this.VclAclRqstV = initObj.VclAclRqstV
      }
      else {
        this.VclAclRqstV = 0;
      }
      if (initObj.hasOwnProperty('BrkPressureTgtV')) {
        this.BrkPressureTgtV = initObj.BrkPressureTgtV
      }
      else {
        this.BrkPressureTgtV = 0;
      }
      if (initObj.hasOwnProperty('VclVelRqstV')) {
        this.VclVelRqstV = initObj.VclVelRqstV
      }
      else {
        this.VclVelRqstV = 0;
      }
      if (initObj.hasOwnProperty('VclAclRqst')) {
        this.VclAclRqst = initObj.VclAclRqst
      }
      else {
        this.VclAclRqst = 0.0;
      }
      if (initObj.hasOwnProperty('BrkPressureTgt')) {
        this.BrkPressureTgt = initObj.BrkPressureTgt
      }
      else {
        this.BrkPressureTgt = 0.0;
      }
      if (initObj.hasOwnProperty('VclVelRqst')) {
        this.VclVelRqst = initObj.VclVelRqst
      }
      else {
        this.VclVelRqst = 0.0;
      }
      if (initObj.hasOwnProperty('IDUFltIndOn')) {
        this.IDUFltIndOn = initObj.IDUFltIndOn
      }
      else {
        this.IDUFltIndOn = 0;
      }
      if (initObj.hasOwnProperty('PowOnRqst')) {
        this.PowOnRqst = initObj.PowOnRqst
      }
      else {
        this.PowOnRqst = 0;
      }
      if (initObj.hasOwnProperty('VclShiftRqst')) {
        this.VclShiftRqst = initObj.VclShiftRqst
      }
      else {
        this.VclShiftRqst = 0;
      }
      if (initObj.hasOwnProperty('StrAglRqstV')) {
        this.StrAglRqstV = initObj.StrAglRqstV
      }
      else {
        this.StrAglRqstV = 0;
      }
      if (initObj.hasOwnProperty('StrAglRqst')) {
        this.StrAglRqst = initObj.StrAglRqst
      }
      else {
        this.StrAglRqst = 0.0;
      }
      if (initObj.hasOwnProperty('TgtStrAglVlcV')) {
        this.TgtStrAglVlcV = initObj.TgtStrAglVlcV
      }
      else {
        this.TgtStrAglVlcV = 0;
      }
      if (initObj.hasOwnProperty('TgtStrAglVlc')) {
        this.TgtStrAglVlc = initObj.TgtStrAglVlc
      }
      else {
        this.TgtStrAglVlc = 0.0;
      }
      if (initObj.hasOwnProperty('EPSCtrlModRqstV')) {
        this.EPSCtrlModRqstV = initObj.EPSCtrlModRqstV
      }
      else {
        this.EPSCtrlModRqstV = 0;
      }
      if (initObj.hasOwnProperty('EPSCtrlModRqst')) {
        this.EPSCtrlModRqst = initObj.EPSCtrlModRqst
      }
      else {
        this.EPSCtrlModRqst = 0;
      }
      if (initObj.hasOwnProperty('LdskCtrl')) {
        this.LdskCtrl = initObj.LdskCtrl
      }
      else {
        this.LdskCtrl = 0;
      }
      if (initObj.hasOwnProperty('WndSnWpCtrl')) {
        this.WndSnWpCtrl = initObj.WndSnWpCtrl
      }
      else {
        this.WndSnWpCtrl = 0;
      }
      if (initObj.hasOwnProperty('StpLpCtrl')) {
        this.StpLpCtrl = initObj.StpLpCtrl
      }
      else {
        this.StpLpCtrl = 0;
      }
      if (initObj.hasOwnProperty('HzdLtCtrl')) {
        this.HzdLtCtrl = initObj.HzdLtCtrl
      }
      else {
        this.HzdLtCtrl = 0;
      }
      if (initObj.hasOwnProperty('ClerLmpCtrl')) {
        this.ClerLmpCtrl = initObj.ClerLmpCtrl
      }
      else {
        this.ClerLmpCtrl = 0;
      }
      if (initObj.hasOwnProperty('FogLmpCtrl')) {
        this.FogLmpCtrl = initObj.FogLmpCtrl
      }
      else {
        this.FogLmpCtrl = 0;
      }
      if (initObj.hasOwnProperty('SdTrnLmpRHCtrl')) {
        this.SdTrnLmpRHCtrl = initObj.SdTrnLmpRHCtrl
      }
      else {
        this.SdTrnLmpRHCtrl = 0;
      }
      if (initObj.hasOwnProperty('SdTrnLmpLHCtrl')) {
        this.SdTrnLmpLHCtrl = initObj.SdTrnLmpLHCtrl
      }
      else {
        this.SdTrnLmpLHCtrl = 0;
      }
      if (initObj.hasOwnProperty('LowBmCtrl')) {
        this.LowBmCtrl = initObj.LowBmCtrl
      }
      else {
        this.LowBmCtrl = 0;
      }
      if (initObj.hasOwnProperty('HighBmCtrl')) {
        this.HighBmCtrl = initObj.HighBmCtrl
      }
      else {
        this.HighBmCtrl = 0;
      }
      if (initObj.hasOwnProperty('LkCtrl')) {
        this.LkCtrl = initObj.LkCtrl
      }
      else {
        this.LkCtrl = 0;
      }
      if (initObj.hasOwnProperty('CarWindCtrl')) {
        this.CarWindCtrl = initObj.CarWindCtrl
      }
      else {
        this.CarWindCtrl = 0;
      }
      if (initObj.hasOwnProperty('BCMCtrlModRqstV')) {
        this.BCMCtrlModRqstV = initObj.BCMCtrlModRqstV
      }
      else {
        this.BCMCtrlModRqstV = 0;
      }
      if (initObj.hasOwnProperty('BCMCtrlModRqst')) {
        this.BCMCtrlModRqst = initObj.BCMCtrlModRqst
      }
      else {
        this.BCMCtrlModRqst = 0;
      }
      if (initObj.hasOwnProperty('RemtPowOnRqst')) {
        this.RemtPowOnRqst = initObj.RemtPowOnRqst
      }
      else {
        this.RemtPowOnRqst = 0;
      }
      if (initObj.hasOwnProperty('RemtPowOnRqstV')) {
        this.RemtPowOnRqstV = initObj.RemtPowOnRqstV
      }
      else {
        this.RemtPowOnRqstV = 0;
      }
      if (initObj.hasOwnProperty('RemtPowDwnRqst')) {
        this.RemtPowDwnRqst = initObj.RemtPowDwnRqst
      }
      else {
        this.RemtPowDwnRqst = 0;
      }
      if (initObj.hasOwnProperty('RemtPowDwnRqstV')) {
        this.RemtPowDwnRqstV = initObj.RemtPowDwnRqstV
      }
      else {
        this.RemtPowDwnRqstV = 0;
      }
      if (initObj.hasOwnProperty('CANB_ParkingStartRequest')) {
        this.CANB_ParkingStartRequest = initObj.CANB_ParkingStartRequest
      }
      else {
        this.CANB_ParkingStartRequest = false;
      }
      if (initObj.hasOwnProperty('CANB_ParkingCloseRequest')) {
        this.CANB_ParkingCloseRequest = initObj.CANB_ParkingCloseRequest
      }
      else {
        this.CANB_ParkingCloseRequest = false;
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
        this.ADASBrakRqstPres = 0.0;
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
        this.ADASStrTorqTgt = 0.0;
      }
      if (initObj.hasOwnProperty('ADAS_StrAngle')) {
        this.ADAS_StrAngle = initObj.ADAS_StrAngle
      }
      else {
        this.ADAS_StrAngle = 0.0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChassisCtrlMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [module_type]
    bufferOffset = _serializer.uint8(obj.module_type, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.uint32(obj.error_code, buffer, bufferOffset);
    // Serialize message field [ctrl_command]
    bufferOffset = _serializer.string(obj.ctrl_command, buffer, bufferOffset);
    // Serialize message field [VclDrvModRqstV]
    bufferOffset = _serializer.uint8(obj.VclDrvModRqstV, buffer, bufferOffset);
    // Serialize message field [VclDrvModRqst]
    bufferOffset = _serializer.uint8(obj.VclDrvModRqst, buffer, bufferOffset);
    // Serialize message field [PakBrkRqstV]
    bufferOffset = _serializer.uint8(obj.PakBrkRqstV, buffer, bufferOffset);
    // Serialize message field [PakBrkRqst]
    bufferOffset = _serializer.uint8(obj.PakBrkRqst, buffer, bufferOffset);
    // Serialize message field [VclAclRqstV]
    bufferOffset = _serializer.uint8(obj.VclAclRqstV, buffer, bufferOffset);
    // Serialize message field [BrkPressureTgtV]
    bufferOffset = _serializer.uint8(obj.BrkPressureTgtV, buffer, bufferOffset);
    // Serialize message field [VclVelRqstV]
    bufferOffset = _serializer.uint8(obj.VclVelRqstV, buffer, bufferOffset);
    // Serialize message field [VclAclRqst]
    bufferOffset = _serializer.float64(obj.VclAclRqst, buffer, bufferOffset);
    // Serialize message field [BrkPressureTgt]
    bufferOffset = _serializer.float64(obj.BrkPressureTgt, buffer, bufferOffset);
    // Serialize message field [VclVelRqst]
    bufferOffset = _serializer.float64(obj.VclVelRqst, buffer, bufferOffset);
    // Serialize message field [IDUFltIndOn]
    bufferOffset = _serializer.uint8(obj.IDUFltIndOn, buffer, bufferOffset);
    // Serialize message field [PowOnRqst]
    bufferOffset = _serializer.uint8(obj.PowOnRqst, buffer, bufferOffset);
    // Serialize message field [VclShiftRqst]
    bufferOffset = _serializer.uint8(obj.VclShiftRqst, buffer, bufferOffset);
    // Serialize message field [StrAglRqstV]
    bufferOffset = _serializer.uint8(obj.StrAglRqstV, buffer, bufferOffset);
    // Serialize message field [StrAglRqst]
    bufferOffset = _serializer.float64(obj.StrAglRqst, buffer, bufferOffset);
    // Serialize message field [TgtStrAglVlcV]
    bufferOffset = _serializer.uint8(obj.TgtStrAglVlcV, buffer, bufferOffset);
    // Serialize message field [TgtStrAglVlc]
    bufferOffset = _serializer.float64(obj.TgtStrAglVlc, buffer, bufferOffset);
    // Serialize message field [EPSCtrlModRqstV]
    bufferOffset = _serializer.uint8(obj.EPSCtrlModRqstV, buffer, bufferOffset);
    // Serialize message field [EPSCtrlModRqst]
    bufferOffset = _serializer.uint8(obj.EPSCtrlModRqst, buffer, bufferOffset);
    // Serialize message field [LdskCtrl]
    bufferOffset = _serializer.uint8(obj.LdskCtrl, buffer, bufferOffset);
    // Serialize message field [WndSnWpCtrl]
    bufferOffset = _serializer.uint8(obj.WndSnWpCtrl, buffer, bufferOffset);
    // Serialize message field [StpLpCtrl]
    bufferOffset = _serializer.uint8(obj.StpLpCtrl, buffer, bufferOffset);
    // Serialize message field [HzdLtCtrl]
    bufferOffset = _serializer.uint8(obj.HzdLtCtrl, buffer, bufferOffset);
    // Serialize message field [ClerLmpCtrl]
    bufferOffset = _serializer.uint8(obj.ClerLmpCtrl, buffer, bufferOffset);
    // Serialize message field [FogLmpCtrl]
    bufferOffset = _serializer.uint8(obj.FogLmpCtrl, buffer, bufferOffset);
    // Serialize message field [SdTrnLmpRHCtrl]
    bufferOffset = _serializer.uint8(obj.SdTrnLmpRHCtrl, buffer, bufferOffset);
    // Serialize message field [SdTrnLmpLHCtrl]
    bufferOffset = _serializer.uint8(obj.SdTrnLmpLHCtrl, buffer, bufferOffset);
    // Serialize message field [LowBmCtrl]
    bufferOffset = _serializer.uint8(obj.LowBmCtrl, buffer, bufferOffset);
    // Serialize message field [HighBmCtrl]
    bufferOffset = _serializer.uint8(obj.HighBmCtrl, buffer, bufferOffset);
    // Serialize message field [LkCtrl]
    bufferOffset = _serializer.uint8(obj.LkCtrl, buffer, bufferOffset);
    // Serialize message field [CarWindCtrl]
    bufferOffset = _serializer.uint8(obj.CarWindCtrl, buffer, bufferOffset);
    // Serialize message field [BCMCtrlModRqstV]
    bufferOffset = _serializer.uint8(obj.BCMCtrlModRqstV, buffer, bufferOffset);
    // Serialize message field [BCMCtrlModRqst]
    bufferOffset = _serializer.uint8(obj.BCMCtrlModRqst, buffer, bufferOffset);
    // Serialize message field [RemtPowOnRqst]
    bufferOffset = _serializer.uint8(obj.RemtPowOnRqst, buffer, bufferOffset);
    // Serialize message field [RemtPowOnRqstV]
    bufferOffset = _serializer.uint8(obj.RemtPowOnRqstV, buffer, bufferOffset);
    // Serialize message field [RemtPowDwnRqst]
    bufferOffset = _serializer.uint8(obj.RemtPowDwnRqst, buffer, bufferOffset);
    // Serialize message field [RemtPowDwnRqstV]
    bufferOffset = _serializer.uint8(obj.RemtPowDwnRqstV, buffer, bufferOffset);
    // Serialize message field [CANB_ParkingStartRequest]
    bufferOffset = _serializer.bool(obj.CANB_ParkingStartRequest, buffer, bufferOffset);
    // Serialize message field [CANB_ParkingCloseRequest]
    bufferOffset = _serializer.bool(obj.CANB_ParkingCloseRequest, buffer, bufferOffset);
    // Serialize message field [ADAS_StrAngleRqstV]
    bufferOffset = _serializer.uint8(obj.ADAS_StrAngleRqstV, buffer, bufferOffset);
    // Serialize message field [ADASBrakRqstPres]
    bufferOffset = _serializer.float64(obj.ADASBrakRqstPres, buffer, bufferOffset);
    // Serialize message field [EPB_ADASPrkngRqst]
    bufferOffset = _serializer.uint8(obj.EPB_ADASPrkngRqst, buffer, bufferOffset);
    // Serialize message field [ADASStrTorqRqst]
    bufferOffset = _serializer.uint8(obj.ADASStrTorqRqst, buffer, bufferOffset);
    // Serialize message field [ADASStrTorqTgt]
    bufferOffset = _serializer.float64(obj.ADASStrTorqTgt, buffer, bufferOffset);
    // Serialize message field [ADAS_StrAngle]
    bufferOffset = _serializer.float64(obj.ADAS_StrAngle, buffer, bufferOffset);
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
    // Serialize message field [ADASRemtPrkModRqst]
    bufferOffset = _serializer.uint8(obj.ADASRemtPrkModRqst, buffer, bufferOffset);
    // Serialize message field [BCMADASCtrlRqst]
    bufferOffset = _serializer.uint8(obj.BCMADASCtrlRqst, buffer, bufferOffset);
    // Serialize message field [BCMADASCtrlRqstV]
    bufferOffset = _serializer.uint8(obj.BCMADASCtrlRqstV, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChassisCtrlMsg
    let len;
    let data = new ChassisCtrlMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [module_type]
    data.module_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ctrl_command]
    data.ctrl_command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [VclDrvModRqstV]
    data.VclDrvModRqstV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VclDrvModRqst]
    data.VclDrvModRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [PakBrkRqstV]
    data.PakBrkRqstV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [PakBrkRqst]
    data.PakBrkRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VclAclRqstV]
    data.VclAclRqstV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [BrkPressureTgtV]
    data.BrkPressureTgtV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VclVelRqstV]
    data.VclVelRqstV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VclAclRqst]
    data.VclAclRqst = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [BrkPressureTgt]
    data.BrkPressureTgt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [VclVelRqst]
    data.VclVelRqst = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [IDUFltIndOn]
    data.IDUFltIndOn = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [PowOnRqst]
    data.PowOnRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [VclShiftRqst]
    data.VclShiftRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [StrAglRqstV]
    data.StrAglRqstV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [StrAglRqst]
    data.StrAglRqst = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [TgtStrAglVlcV]
    data.TgtStrAglVlcV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [TgtStrAglVlc]
    data.TgtStrAglVlc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [EPSCtrlModRqstV]
    data.EPSCtrlModRqstV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [EPSCtrlModRqst]
    data.EPSCtrlModRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LdskCtrl]
    data.LdskCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [WndSnWpCtrl]
    data.WndSnWpCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [StpLpCtrl]
    data.StpLpCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [HzdLtCtrl]
    data.HzdLtCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ClerLmpCtrl]
    data.ClerLmpCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [FogLmpCtrl]
    data.FogLmpCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [SdTrnLmpRHCtrl]
    data.SdTrnLmpRHCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [SdTrnLmpLHCtrl]
    data.SdTrnLmpLHCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LowBmCtrl]
    data.LowBmCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [HighBmCtrl]
    data.HighBmCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [LkCtrl]
    data.LkCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [CarWindCtrl]
    data.CarWindCtrl = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [BCMCtrlModRqstV]
    data.BCMCtrlModRqstV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [BCMCtrlModRqst]
    data.BCMCtrlModRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RemtPowOnRqst]
    data.RemtPowOnRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RemtPowOnRqstV]
    data.RemtPowOnRqstV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RemtPowDwnRqst]
    data.RemtPowDwnRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [RemtPowDwnRqstV]
    data.RemtPowDwnRqstV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [CANB_ParkingStartRequest]
    data.CANB_ParkingStartRequest = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [CANB_ParkingCloseRequest]
    data.CANB_ParkingCloseRequest = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ADAS_StrAngleRqstV]
    data.ADAS_StrAngleRqstV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ADASBrakRqstPres]
    data.ADASBrakRqstPres = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [EPB_ADASPrkngRqst]
    data.EPB_ADASPrkngRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ADASStrTorqRqst]
    data.ADASStrTorqRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ADASStrTorqTgt]
    data.ADASStrTorqTgt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ADAS_StrAngle]
    data.ADAS_StrAngle = _deserializer.float64(buffer, bufferOffset);
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
    // Deserialize message field [ADASRemtPrkModRqst]
    data.ADASRemtPrkModRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [BCMADASCtrlRqst]
    data.BCMADASCtrlRqst = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [BCMADASCtrlRqstV]
    data.BCMADASCtrlRqstV = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.ctrl_command);
    return length + 140;
  }

  static datatype() {
    // Returns string type for a message object
    return 'in2ulv_msgs/ChassisCtrlMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b699ba917a62ef652278429228a8b35';
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
    string ctrl_command
    
    # IDU_General_Status_1 (0x131)->[ACAN]<-{循环计数+校验}
    uint8 VclDrvModRqstV    # 驱动模式请求有效性：默认0有效(false有效)
    uint8 VclDrvModRqst     # 驱动模式请求
    uint8 PakBrkRqstV       # 驻车请求有效性：默认0有效(false有效)
    uint8 PakBrkRqst        # IDU驻车请求
    uint8 VclAclRqstV       # 加速度请求有效性：默认0有效(false有效)
    uint8 BrkPressureTgtV   # 制动压力目标值有效性：默认0有效(false有效)
    uint8 VclVelRqstV       # 速度请求有效性：默认0有效(false有效)
    float64 VclAclRqst      # 加速度请求
    float64 BrkPressureTgt  # 制动压力目标值
    float64 VclVelRqst      # 速度请求
    uint8 IDUFltIndOn       # IDU故障指示:默认False(不指示)
    uint8 PowOnRqst         # 上电请求：默认False(不请求有效性)
    uint8 VclShiftRqst      # 档位请求
    
    # IDU_General_Status_2 (0x121)->[CCAN]<-{循环计数+校验}
    uint8 StrAglRqstV       # 期望转向角度有效性
    float64 StrAglRqst      # 期望转向角度
    uint8 TgtStrAglVlcV     # 期望转向角速度有效性(预留)
    float64 TgtStrAglVlc    # 期望转向角速度(预留)
    uint8 EPSCtrlModRqstV   # EPS控制模式请求有效性
    uint8 EPSCtrlModRqst    # EPS控制模式请求
    
    # IDU_General_Status_4 (0x312)->[ACAN]<-{循环计数+校验}
    uint8 LdskCtrl          # 扬声器控制
    uint8 WndSnWpCtrl       # 雨刮控制
    uint8 StpLpCtrl         # 刹车灯控制
    uint8 HzdLtCtrl         # 双闪灯控制
    uint8 ClerLmpCtrl       # 示廓灯控制
    uint8 FogLmpCtrl        # 后雾灯控制
    uint8 SdTrnLmpRHCtrl    # 右转向灯控制
    uint8 SdTrnLmpLHCtrl    # 左转向灯控制
    uint8 LowBmCtrl         # 近光灯控制
    uint8 HighBmCtrl        # 远光灯控制
    uint8 LkCtrl            # 锁控功能
    uint8 CarWindCtrl       # 车窗功能控制(预留)
    uint8 BCMCtrlModRqstV   # BCM控制模式请求有效性
    uint8 BCMCtrlModRqst    # BCM控制模式请求
    
    # VT_Requestment_Messge_2 (0x316)->[BCAN] {??循环发送}
    uint8 RemtPowOnRqst     # 远程上电请求
    uint8 RemtPowOnRqstV    # 远程上电请求有效性：默认0有效(false有效)
    uint8 RemtPowDwnRqst    # 远程下电请求
    uint8 RemtPowDwnRqstV   # 远程下电请求有效性：默认0有效(false有效)
    # 车辆泊车启动请求/关闭
    bool CANB_ParkingStartRequest
    bool CANB_ParkingCloseRequest
    
    # 车辆移动控制
        # ADAS_General_Status_1 (0x1D1)
    uint8 ADAS_StrAngleRqstV    # ADAS期望转向角度请求有效值
    float64 ADASBrakRqstPres     # ADAS制动请求压力      float->uint
    uint8 EPB_ADASPrkngRqst     # EPB ADAS驻车请求
    uint8 ADASStrTorqRqst       # ADAS转向扭矩请求
    float64 ADASStrTorqTgt       # ADAS转向扭矩目标值    float->uint
    float64 ADAS_StrAngle        # ADAS期望转向角度      float->uint
        # ADAS_General_Status_2 (0x1D2)
    uint8 VCUTTgtAclrtnRqst         # VCU目标加速度请求
    float64 VCUTTgtAclrtnRqstVal    # VCU目标加速度请求值
    uint8 GearRqst                  # 档位请求
    uint8 TgtGear                   # 档位
    uint8 VCUTTgtSpRqst             # VCU目标速度请求
    float64 VCUTTgtSpRqstVal        # VCU目标速度请求值
    
    # 车辆外设控制
        # ADAS_General_Status_11 (0x329)
    uint8 ADASWndSnWpCtrl       # ADAS雨刮控制
    uint8 ADASHzdLtCtrl         # ADAS双闪控制
    uint8 ADASSdTrnLmpRHCtrl    # ADAS右转向控制
    uint8 ADASSdTrnLmpLHCtrl    # ADAS左转向控制
    uint8 ADASLowBmCtrl         # ADAS近光灯控制
    uint8 ADASHighBmCtrl        # ADAS远光灯控制
    uint8 ADASLkCtrl            # ADAS锁控功能
    # uint8 CarWindCtrl           # ADAS车窗控制
    
    # 车辆ADAS请求
        # ADAS_General_Status_11 (0x329)
    uint8 ADASRemtPrkModRqst    # ADAS电源模式请求
    uint8 BCMADASCtrlRqst       # ADAS控制请求
    uint8 BCMADASCtrlRqstV      # ADAS控制请求有效性
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
    const resolved = new ChassisCtrlMsg(null);
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

    if (msg.ctrl_command !== undefined) {
      resolved.ctrl_command = msg.ctrl_command;
    }
    else {
      resolved.ctrl_command = ''
    }

    if (msg.VclDrvModRqstV !== undefined) {
      resolved.VclDrvModRqstV = msg.VclDrvModRqstV;
    }
    else {
      resolved.VclDrvModRqstV = 0
    }

    if (msg.VclDrvModRqst !== undefined) {
      resolved.VclDrvModRqst = msg.VclDrvModRqst;
    }
    else {
      resolved.VclDrvModRqst = 0
    }

    if (msg.PakBrkRqstV !== undefined) {
      resolved.PakBrkRqstV = msg.PakBrkRqstV;
    }
    else {
      resolved.PakBrkRqstV = 0
    }

    if (msg.PakBrkRqst !== undefined) {
      resolved.PakBrkRqst = msg.PakBrkRqst;
    }
    else {
      resolved.PakBrkRqst = 0
    }

    if (msg.VclAclRqstV !== undefined) {
      resolved.VclAclRqstV = msg.VclAclRqstV;
    }
    else {
      resolved.VclAclRqstV = 0
    }

    if (msg.BrkPressureTgtV !== undefined) {
      resolved.BrkPressureTgtV = msg.BrkPressureTgtV;
    }
    else {
      resolved.BrkPressureTgtV = 0
    }

    if (msg.VclVelRqstV !== undefined) {
      resolved.VclVelRqstV = msg.VclVelRqstV;
    }
    else {
      resolved.VclVelRqstV = 0
    }

    if (msg.VclAclRqst !== undefined) {
      resolved.VclAclRqst = msg.VclAclRqst;
    }
    else {
      resolved.VclAclRqst = 0.0
    }

    if (msg.BrkPressureTgt !== undefined) {
      resolved.BrkPressureTgt = msg.BrkPressureTgt;
    }
    else {
      resolved.BrkPressureTgt = 0.0
    }

    if (msg.VclVelRqst !== undefined) {
      resolved.VclVelRqst = msg.VclVelRqst;
    }
    else {
      resolved.VclVelRqst = 0.0
    }

    if (msg.IDUFltIndOn !== undefined) {
      resolved.IDUFltIndOn = msg.IDUFltIndOn;
    }
    else {
      resolved.IDUFltIndOn = 0
    }

    if (msg.PowOnRqst !== undefined) {
      resolved.PowOnRqst = msg.PowOnRqst;
    }
    else {
      resolved.PowOnRqst = 0
    }

    if (msg.VclShiftRqst !== undefined) {
      resolved.VclShiftRqst = msg.VclShiftRqst;
    }
    else {
      resolved.VclShiftRqst = 0
    }

    if (msg.StrAglRqstV !== undefined) {
      resolved.StrAglRqstV = msg.StrAglRqstV;
    }
    else {
      resolved.StrAglRqstV = 0
    }

    if (msg.StrAglRqst !== undefined) {
      resolved.StrAglRqst = msg.StrAglRqst;
    }
    else {
      resolved.StrAglRqst = 0.0
    }

    if (msg.TgtStrAglVlcV !== undefined) {
      resolved.TgtStrAglVlcV = msg.TgtStrAglVlcV;
    }
    else {
      resolved.TgtStrAglVlcV = 0
    }

    if (msg.TgtStrAglVlc !== undefined) {
      resolved.TgtStrAglVlc = msg.TgtStrAglVlc;
    }
    else {
      resolved.TgtStrAglVlc = 0.0
    }

    if (msg.EPSCtrlModRqstV !== undefined) {
      resolved.EPSCtrlModRqstV = msg.EPSCtrlModRqstV;
    }
    else {
      resolved.EPSCtrlModRqstV = 0
    }

    if (msg.EPSCtrlModRqst !== undefined) {
      resolved.EPSCtrlModRqst = msg.EPSCtrlModRqst;
    }
    else {
      resolved.EPSCtrlModRqst = 0
    }

    if (msg.LdskCtrl !== undefined) {
      resolved.LdskCtrl = msg.LdskCtrl;
    }
    else {
      resolved.LdskCtrl = 0
    }

    if (msg.WndSnWpCtrl !== undefined) {
      resolved.WndSnWpCtrl = msg.WndSnWpCtrl;
    }
    else {
      resolved.WndSnWpCtrl = 0
    }

    if (msg.StpLpCtrl !== undefined) {
      resolved.StpLpCtrl = msg.StpLpCtrl;
    }
    else {
      resolved.StpLpCtrl = 0
    }

    if (msg.HzdLtCtrl !== undefined) {
      resolved.HzdLtCtrl = msg.HzdLtCtrl;
    }
    else {
      resolved.HzdLtCtrl = 0
    }

    if (msg.ClerLmpCtrl !== undefined) {
      resolved.ClerLmpCtrl = msg.ClerLmpCtrl;
    }
    else {
      resolved.ClerLmpCtrl = 0
    }

    if (msg.FogLmpCtrl !== undefined) {
      resolved.FogLmpCtrl = msg.FogLmpCtrl;
    }
    else {
      resolved.FogLmpCtrl = 0
    }

    if (msg.SdTrnLmpRHCtrl !== undefined) {
      resolved.SdTrnLmpRHCtrl = msg.SdTrnLmpRHCtrl;
    }
    else {
      resolved.SdTrnLmpRHCtrl = 0
    }

    if (msg.SdTrnLmpLHCtrl !== undefined) {
      resolved.SdTrnLmpLHCtrl = msg.SdTrnLmpLHCtrl;
    }
    else {
      resolved.SdTrnLmpLHCtrl = 0
    }

    if (msg.LowBmCtrl !== undefined) {
      resolved.LowBmCtrl = msg.LowBmCtrl;
    }
    else {
      resolved.LowBmCtrl = 0
    }

    if (msg.HighBmCtrl !== undefined) {
      resolved.HighBmCtrl = msg.HighBmCtrl;
    }
    else {
      resolved.HighBmCtrl = 0
    }

    if (msg.LkCtrl !== undefined) {
      resolved.LkCtrl = msg.LkCtrl;
    }
    else {
      resolved.LkCtrl = 0
    }

    if (msg.CarWindCtrl !== undefined) {
      resolved.CarWindCtrl = msg.CarWindCtrl;
    }
    else {
      resolved.CarWindCtrl = 0
    }

    if (msg.BCMCtrlModRqstV !== undefined) {
      resolved.BCMCtrlModRqstV = msg.BCMCtrlModRqstV;
    }
    else {
      resolved.BCMCtrlModRqstV = 0
    }

    if (msg.BCMCtrlModRqst !== undefined) {
      resolved.BCMCtrlModRqst = msg.BCMCtrlModRqst;
    }
    else {
      resolved.BCMCtrlModRqst = 0
    }

    if (msg.RemtPowOnRqst !== undefined) {
      resolved.RemtPowOnRqst = msg.RemtPowOnRqst;
    }
    else {
      resolved.RemtPowOnRqst = 0
    }

    if (msg.RemtPowOnRqstV !== undefined) {
      resolved.RemtPowOnRqstV = msg.RemtPowOnRqstV;
    }
    else {
      resolved.RemtPowOnRqstV = 0
    }

    if (msg.RemtPowDwnRqst !== undefined) {
      resolved.RemtPowDwnRqst = msg.RemtPowDwnRqst;
    }
    else {
      resolved.RemtPowDwnRqst = 0
    }

    if (msg.RemtPowDwnRqstV !== undefined) {
      resolved.RemtPowDwnRqstV = msg.RemtPowDwnRqstV;
    }
    else {
      resolved.RemtPowDwnRqstV = 0
    }

    if (msg.CANB_ParkingStartRequest !== undefined) {
      resolved.CANB_ParkingStartRequest = msg.CANB_ParkingStartRequest;
    }
    else {
      resolved.CANB_ParkingStartRequest = false
    }

    if (msg.CANB_ParkingCloseRequest !== undefined) {
      resolved.CANB_ParkingCloseRequest = msg.CANB_ParkingCloseRequest;
    }
    else {
      resolved.CANB_ParkingCloseRequest = false
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
      resolved.ADASBrakRqstPres = 0.0
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
      resolved.ADASStrTorqTgt = 0.0
    }

    if (msg.ADAS_StrAngle !== undefined) {
      resolved.ADAS_StrAngle = msg.ADAS_StrAngle;
    }
    else {
      resolved.ADAS_StrAngle = 0.0
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

    return resolved;
    }
};

module.exports = ChassisCtrlMsg;
