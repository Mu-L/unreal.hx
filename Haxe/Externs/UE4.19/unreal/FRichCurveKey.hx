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
package unreal;

/**
  One key in a rich, editable float curve
**/
@:glueCppIncludes("Classes/Curves/RichCurve.h")
@:noCopy @:uextern @:ustruct extern class FRichCurveKey {
  
  /**
    If RCTWM_WeightedLeave or RCTWM_WeightedBoth, the weight of the right tangent
  **/
  @:uproperty public var LeaveTangentWeight : unreal.Float32;
  
  /**
    If RCIM_Cubic, the leaving tangent at this key
  **/
  @:uproperty public var LeaveTangent : unreal.Float32;
  
  /**
    If RCTWM_WeightedArrive or RCTWM_WeightedBoth, the weight of the left tangent
  **/
  @:uproperty public var ArriveTangentWeight : unreal.Float32;
  
  /**
    If RCIM_Cubic, the arriving tangent at this key
  **/
  @:uproperty public var ArriveTangent : unreal.Float32;
  
  /**
    Value at this key
  **/
  @:uproperty public var Value : unreal.Float32;
  
  /**
    Time at this key
  **/
  @:uproperty public var Time : unreal.Float32;
  
  /**
    If either tangent at this key is 'weighted'
  **/
  @:uproperty public var TangentWeightMode : unreal.ERichCurveTangentWeightMode;
  
  /**
    Mode for tangents at this key
  **/
  @:uproperty public var TangentMode : unreal.ERichCurveTangentMode;
  
  /**
    Interpolation mode between this key and the next
  **/
  @:uproperty public var InterpMode : unreal.ERichCurveInterpMode;
  
}
