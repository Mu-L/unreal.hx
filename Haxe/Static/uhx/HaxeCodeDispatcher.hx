package uhx;
#if !macro
import haxe.CallStack;
import unreal.FPlatformMisc;

/**
  This allows us to make all haxe code run inside a try handler so we can have better error messages
 **/
@:keep class HaxeCodeDispatcher {
  @:extern inline public static function runWithValue<T>(fn:Void->T, ?name:String):T {
    #if (UE_BUILD_SHIPPING && !debug && !HXCPP_STACK_TRACE)
    return fn();
    #else
    if (shouldWrap()) {
      try {
        var ret = fn();
        endWrap();
        return ret;
      } catch(e:Dynamic) {
        showError(e, CallStack.exceptionStack(), name);
        return cast null;
      }
    } else {
      return fn();
    }
    #end
  }

  @:extern inline public static function runVoid(fn:Void->Void, ?name:String):Void {
    #if (UE_BUILD_SHIPPING && !debug && !HXCPP_STACK_TRACE)
    fn();
    #else
    if (shouldWrap()) {
      try {
        fn();
        endWrap();
      } catch(e:Dynamic) {
        showError(e, CallStack.exceptionStack(), name);
      }
    } else {
      fn();
    }
    #end
  }

  private static function shouldWrap():Bool {
    #if (UE_BUILD_SHIPPING && !debug && !HXCPP_STACK_TRACE)
    return false;
    #else
    return uhx.ue.HaxeInit.needsWrap();
    #end
  }

  inline private static function endWrap() {
    #if !(UE_BUILD_SHIPPING && !debug && !HXCPP_STACK_TRACE)
    uhx.ue.HaxeInit.endWrap();
    #end
  }

  public static function showError(exc:Dynamic, stack:Array<StackItem>, name:String) {
    if (name != null) {
      trace('Error', '$name: $exc');
    } else {
      trace('Error', exc);
    }
    trace('Error', 'Stack trace:\n' + CallStack.toString(stack));

    endWrap();
    var inPIE = false;
#if WITH_EDITOR
    var world = unreal.UEngine.GWorld.GetReference();
    if (world != null && world.IsPlayInEditor()) {
      inPIE = true;
    } else {
      var engine = unreal.UEngine.GEngine;
      if (engine != null) {
        var ctxs = engine.GetWorldContexts();
        for (i in 0...ctxs.Num()) {
          var ctx = ctxs.get_Item(i);
          if (ctx.WorldType.match(PIE) && ctx.World() != null) {
            inPIE = true;
            break;
          }
        }
      }
    }
#end
    if (!inPIE)
    {
      unreal.Log.fatal('Haxe run failed');
      throw 'Error';
    }
  }
}
#end
