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
package unreal.editor;

/**
  Action to add an expression node to the graph
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Classes/MaterialGraph/MaterialGraphSchema.h")
@:uextern @:ustruct extern class FMaterialGraphSchemaAction_NewNode extends unreal.FEdGraphSchemaAction {
  
  /**
    Class of expression we want to create
  **/
  @:uproperty public var MaterialExpressionClass : unreal.UClass;
  
}
