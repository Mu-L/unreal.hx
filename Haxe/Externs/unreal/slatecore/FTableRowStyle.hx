/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.slatecore;


/**
  Represents the appearance of an STableRow
**/
@:glueCppIncludes("Styling/SlateTypes.h")
@:uextern extern class FTableRowStyle extends unreal.slatecore.FSlateWidgetStyle {
  
  /**
    Brush used to provide feedback that a user can drop below the hovered row.
  **/
  public var DropIndicator_Below : unreal.slatecore.FSlateBrush;
  
  /**
    Brush used to provide feedback that a user can drop onto the hovered row.
  **/
  public var DropIndicator_Onto : unreal.slatecore.FSlateBrush;
  
  /**
    Brush used to provide feedback that a user can drop above the hovered row.
  **/
  public var DropIndicator_Above : unreal.slatecore.FSlateBrush;
  
  /**
    Text color used for the selected row
  **/
  public var SelectedTextColor : unreal.slatecore.FSlateColor;
  
  /**
    Text color used for all rows
  **/
  public var TextColor : unreal.slatecore.FSlateColor;
  
  /**
    Brush to used when an odd row is in its normal state
  **/
  public var OddRowBackgroundBrush : unreal.slatecore.FSlateBrush;
  
  /**
    Brush used when an odd row is hovered
  **/
  public var OddRowBackgroundHoveredBrush : unreal.slatecore.FSlateBrush;
  
  /**
    Brush used when an even row is in its normal state
  **/
  public var EvenRowBackgroundBrush : unreal.slatecore.FSlateBrush;
  
  /**
    Brush used when an even row is hovered
  **/
  public var EvenRowBackgroundHoveredBrush : unreal.slatecore.FSlateBrush;
  
  /**
    Brush used when a selected row is inactive
  **/
  public var InactiveBrush : unreal.slatecore.FSlateBrush;
  
  /**
    Brush used when an selected row is inactive and hovered
  **/
  public var InactiveHoveredBrush : unreal.slatecore.FSlateBrush;
  
  /**
    Brush used when a selected row is active
  **/
  public var ActiveBrush : unreal.slatecore.FSlateBrush;
  
  /**
    Brush used when a selected row is active and hovered
  **/
  public var ActiveHoveredBrush : unreal.slatecore.FSlateBrush;
  
  /**
    Brush used as a selector when a row is focused
  **/
  public var SelectorFocusedBrush : unreal.slatecore.FSlateBrush;
  
}
