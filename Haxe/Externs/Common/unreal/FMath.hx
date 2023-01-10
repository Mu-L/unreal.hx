package unreal;

@:glueCppIncludes("UnrealMath.h")
@:uextern @:noCopy @:noEquals extern class FMath {
  public static function FindDeltaAngle(angle1:Float32, angle2:Float32) : Float32;

  public static function Log2(Value:Float32) : Float32;
}
