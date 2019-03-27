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
package unreal.umg;

/**
  The image widget allows you to display a Slate Brush, or texture or material in the UI.
  
  * No Children
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern @:uclass extern class UImage extends unreal.umg.UWidget {
  @:uproperty public var OnMouseButtonDownEvent : unreal.umg.FOnPointerEvent;
  
  /**
    A bindable delegate for the ColorAndOpacity.
  **/
  @:uproperty public var ColorAndOpacityDelegate : unreal.umg.FGetLinearColor;
  
  /**
    Color and opacity
  **/
  @:uproperty public var ColorAndOpacity : unreal.FLinearColor;
  
  /**
    A bindable delegate for the Image.
  **/
  @:uproperty public var BrushDelegate : unreal.umg.FGetSlateBrush;
  
  /**
    Image to draw
  **/
  @:uproperty public var Brush : unreal.slatecore.FSlateBrush;
  #if WITH_EDITORONLY_DATA
  
  /**
    Image to draw
  **/
  @:deprecated @:uproperty public var Image_DEPRECATED : unreal.USlateBrushAsset;
  #end // WITH_EDITORONLY_DATA
  @:ufunction(BlueprintCallable) @:final public function SetColorAndOpacity(InColorAndOpacity : unreal.FLinearColor) : Void;
  @:ufunction(BlueprintCallable) @:final public function SetOpacity(InOpacity : unreal.Float32) : Void;
  @:ufunction(BlueprintCallable) @:final public function SetBrushSize(DesiredSize : unreal.FVector2D) : Void;
  @:ufunction(BlueprintCallable) @:final public function SetBrushTintColor(TintColor : unreal.slatecore.FSlateColor) : Void;
  @:ufunction(BlueprintCallable) public function SetBrush(InBrush : unreal.Const<unreal.PRef<unreal.slatecore.FSlateBrush>>) : Void;
  @:ufunction(BlueprintCallable) public function SetBrushFromAsset(Asset : unreal.USlateBrushAsset) : Void;
  @:ufunction(BlueprintCallable) public function SetBrushFromTexture(Texture : unreal.UTexture2D, bMatchSize : Bool = false) : Void;
  @:ufunction(BlueprintCallable) public function SetBrushFromTextureDynamic(Texture : unreal.UTexture2DDynamic, bMatchSize : Bool = false) : Void;
  @:ufunction(BlueprintCallable) public function SetBrushFromMaterial(Material : unreal.UMaterialInterface) : Void;
  @:ufunction(BlueprintCallable) @:final public function GetDynamicMaterial() : unreal.UMaterialInstanceDynamic;
  
}
