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
package unreal.aimodule;


/**
  Base class for managing gameplay tasks
  Since AITask doesn't have any kind of success/failed results, default implemenation will only return EBTNode::Succeeded
  
  In your ExecuteTask:
  - use NewBTAITask() helper to create task
  - initialize task with values if needed
  - use StartGameplayTask() helper to execute and get node result
**/
@:umodule("AIModule")
@:glueCppIncludes("BehaviorTree/Tasks/BTTask_GameplayTaskBase.h")
@:uextern extern class UBTTask_GameplayTaskBase extends unreal.aimodule.UBTTaskNode {
  
}
