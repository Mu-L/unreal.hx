package unreal;

extern class FBox_Extra
{
  public var Min:FVector;
  public var Max:FVector;
  public var IsValid:UInt8;

  @:uname('.ctor')
  public static function createForceInit(ForceInit:EForceInit) : FBox;
  @:uname('new')
  public static function createNewForceInit(ForceInit:EForceInit) : POwnedPtr<FBox>;
  @:uname('.ctor')
  public static function createWithValues(Min:Const<PRef<FVector>>, Max:Const<PRef<FVector>>) : FBox;
  @:uname('new')
  public static function createNewWithValues(Min:Const<PRef<FVector>>, Max:Const<PRef<FVector>>) : POwnedPtr<FBox>;

  @:thisConst
  public function GetSize() : FVector;

  @:thisConst
  public function GetCenter() : FVector;

  @:thisConst
  public function GetExtent() : FVector;

  @:thisConst
  public function ExpandBy(V:Const<PRef<FVector>>) : FBox;

  @:thiConst
  public function ShiftBy(Offset:PRef<Const<FVector>>) : FBox;

  /**
	 * Checks whether the given location is inside or on this box.
	 *
	 * @param In The location to test for inside the bounding volume.
	 * @return true if location is inside this volume.
	 * @see IsInsideXY
	 */
  @:thisConst
  public function IsInsideOrOn(In:Const<PRef<FVector>>) : Bool;
}
