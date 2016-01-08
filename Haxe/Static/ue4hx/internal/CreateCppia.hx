package ue4hx.internal;
import haxe.macro.Expr;
import haxe.macro.Context;
import haxe.macro.Type;
import sys.FileSystem;

using StringTools;

class CreateCppia {
  public static function run(staticPaths:Array<String>, scriptPaths:Array<String>) {
    var statics = [];
    for (path in staticPaths) {
      getModules(path,statics);
    }
    ensureCompiled([ for (module in statics) Context.getModule(module) ], false);

    Globals.cur.inScriptPass = true;
    var scripts = [];
    for (path in scriptPaths) {
      getModules(path,scripts);
    }
    Globals.cur.scriptModules = [ for (module in scripts) module => true ];
    ensureCompiled([ for (module in scripts) Context.getModule(module) ], false);
    Globals.cur.inScriptPass = false;

    var blacklist = [
      'unreal.Wrapper',
      'haxe.Int64',
      'cpp.Int64',
      'Date'
    ];

    Context.onGenerate(function(types) {
      var allStatics = [ for (s in statics.concat(blacklist)) s => true ];
      for (type in types) {
        switch(type) {
          case TInst(_.get()=>c,_):
            if (allStatics[c.module] || c.meta.has(':uextern')) {
              c.exclude();
            }
          case TEnum(_.get()=>e,_):
            if (allStatics[e.module]) {
              e.exclude();
            }
          case TAbstract(_.get()=>a,_):
            if (allStatics[a.module]) {
              a.exclude();
            }
          case _:
        }
      }
    });
  }

  private static function getModules(path:String, modules:Array<String>)
  {
    function recurse(path:String, pack:String)
    {
      if (pack == 'ue4hx.' || pack == 'unreal.') return;
      for (file in FileSystem.readDirectory(path))
      {
        if (file.endsWith('.hx'))
          modules.push(pack + file.substr(0,-3));
        else if (FileSystem.isDirectory('$path/$file'))
          recurse('$path/$file', pack + file + '.');
      }
    }

    if (FileSystem.exists(path)) recurse(path, '');
  }

  private static function ensureCompiled(modules:Array<Array<Type>>, exclude:Bool) {
    for (module in modules) {
      for (type in module) {
        switch(Context.follow(type)) {
        case TInst(c,_):
          var cl = c.get();
          if (exclude) {
            cl.exclude();
          }
          for (field in cl.fields.get())
            Context.follow(field.type);
          for (field in cl.statics.get())
            Context.follow(field.type);
          var ctor = cl.constructor;
          if (ctor != null)
            Context.follow(ctor.get().type);
        case TEnum(e,_):
          if (exclude) {
            e.get().exclude();
          }
        case TAbstract(a,_):
          if (exclude) {
            a.get().exclude();
          }
        case _:
        }
      }
    }
  }
}
