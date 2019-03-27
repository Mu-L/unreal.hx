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
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("Materials/MaterialExpressionMaterialFunctionCall.h")
@:uextern @:uclass extern class UMaterialExpressionMaterialFunctionCall extends unreal.UMaterialExpression {
  
  /**
    Used by material parameters to split references to separate instances.
  **/
  @:uproperty public var FunctionParameterInfo : unreal.FMaterialParameterInfo;
  #if WITH_EDITORONLY_DATA
  
  /**
    Array of all the function outputs that this function exposes.
  **/
  @:uproperty public var FunctionOutputs : unreal.TArray<unreal.FFunctionExpressionOutput>;
  
  /**
    Array of all the function inputs that this function exposes.
  **/
  @:uproperty public var FunctionInputs : unreal.TArray<unreal.FFunctionExpressionInput>;
  #end // WITH_EDITORONLY_DATA
  
  /**
    The function to call.
  **/
  @:uproperty public var MaterialFunction : unreal.UMaterialFunctionInterface;
  #if WITH_EDITOR
  @:ufunction(BlueprintCallable) @:final public function SetMaterialFunction(NewMaterialFunction : unreal.UMaterialFunctionInterface) : Bool;
  #end // WITH_EDITOR
  
}
