/**
 * 
 * WARNING! This file was autogenerated by: 
 *  _   _ _   _ __   __ 
 * | | | | | | |\ \ / / 
 * | | | | |_| | \ V /  
 * | | | |  _  | /   \  
 * | |_| | | | |/ /^\ \ 
 *  \___/\_| |_/\/   \/ 
 * 
 * This file was autogenerated by UnrealHxGenerator using UHT definitions.
 * It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
 * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.vectorvm;

@:umodule("VectorVM")
@:glueCppIncludes("Public/VectorVM.h")
@:uname("EVectorVMOp")
@:class @:uextern @:uenum extern enum EVectorVMOp {
  done;
  add;
  sub;
  mul;
  div;
  mad;
  lerp;
  rcp;
  rsq;
  sqrt;
  neg;
  abs;
  exp;
  exp2;
  log;
  log2;
  sin;
  cos;
  tan;
  asin;
  acos;
  atan;
  atan2;
  ceil;
  floor;
  fmod;
  frac;
  trunc;
  clamp;
  min;
  max;
  pow;
  round;
  sign;
  step;
  random;
  noise;
  
  /**
    Comparison ops.
  **/
  cmplt;
  cmple;
  cmpgt;
  cmpge;
  cmpeq;
  cmpneq;
  select;
  
  /**
    Integer ops
  **/
  addi;
  subi;
  muli;
  
  /**
    divi,SSE Integer division is not implemented as an intrinsic. Will have to do some manual implementation.
  **/
  clampi;
  mini;
  maxi;
  absi;
  negi;
  signi;
  randomi;
  cmplti;
  cmplei;
  cmpgti;
  cmpgei;
  cmpeqi;
  cmpneqi;
  bit_and;
  bit_or;
  bit_xor;
  bit_not;
  
  /**
    "Boolean" ops. Currently handling bools as integers.
  **/
  logic_and;
  logic_or;
  logic_xor;
  logic_not;
  
  /**
    conversions
  **/
  f2i;
  i2f;
  f2b;
  b2f;
  i2b;
  b2i;
  
  /**
    data read/write
  **/
  inputdata_32bit;
  inputdata_noadvance_32bit;
  outputdata_32bit;
  acquireindex;
  external_func_call;
  
  /**
    Returns the index of each instance in the current execution context.
  **/
  exec_index;
  noise2D;
  noise3D;
  
  /**
    Utility ops for hooking into the stats system for performance analysis.
  **/
  enter_stat_scope;
  exit_stat_scope;
  NumOpcodes;
  
}
