package unreal;

@:glueCppIncludes("TimerManager.h")
@:uextern @:noCopy @:noEquals extern class FTimerManager {

  @:uname("SetTimer")
  function SetTimerWithUObject(inOutHandle:PRef<FTimerHandle>, obj:UObject, method:MethodPointer<UObject, Void->Void>, rate:Float32, loop:Bool=false, firstDelay:Float=-1) : Void;
  @:uname("SetTimer")
  function SetTimerWithDelegate(inOutHandle:PRef<FTimerHandle>, delegate:FTimerDynamicDelegate, rate:Float32, loop:Bool=false, firstDelay:Float=-1) : Void;
  @:uname("SetTimerForNextTick")
  function SetTimerForNextTickWithUObject(obj:UObject, method:MethodPointer<UObject, Void->Void>) : FTimerHandle;

  function SetTimer(inOutHandle:PRef<FTimerHandle>, delegate:Const<PRef<FTimerDelegate>>, rate:Float32, loop:Bool=false, firstDelay:Float=-1) : Void;
  function SetTimerForNextTick(delegate:Const<PRef<FTimerDelegate>>) : FTimerHandle;
  function ClearTimer(handle:FTimerHandle) : Void;

  function PauseTimer(handle:FTimerHandle) : Void;
  function UnPauseTimer(handle:FTimerHandle) : Void;
  #if proletariat
  function GetTimerDelegate(handle:FTimerHandle) : FTimerDelegate;
  function GetTimerDynamicDelegate(handle:FTimerHandle) : FTimerDynamicDelegate;
  #end
  function GetTimerRate(handle:FTimerHandle) : Float32;
  function IsTimerActive(handle:FTimerHandle) : Bool;
  function IsTimerPaused(handle:FTimerHandle) : Bool;
  function IsTimerPending(handle:FTimerHandle) : Bool;
  function TimerExists(handle:FTimerHandle) : Bool;
  @:thisConst function GetTimerElapsed(handle:FTimerHandle) : Float32;
  @:thisConst function GetTimerRemaining(handle:FTimerHandle) : Float32;
}
