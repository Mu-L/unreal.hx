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

@:glueCppIncludes("AI/Navigation/NavigationSystem.h")
@:uextern @:uclass extern class UNavigationSystem extends unreal.UBlueprintFunctionLibrary {
  @:uproperty private var OperationMode : unreal.FNavigationSystemRunMode;
  @:uproperty public var OnNavigationGenerationFinishedDelegate : unreal.FOnNavDataGenerigEvent;
  
  /**
    BlueprintAssignable,
  **/
  @:uproperty public var OnNavDataRegisteredEvent : unreal.FOnNavDataGenerigEvent;
  @:uproperty public var NavDataRegistrationQueue : unreal.TArray<unreal.ANavigationData>;
  @:uproperty public var NavDataSet : unreal.TArray<unreal.ANavigationData>;
  
  /**
    update frequency for dirty areas on navmesh
  **/
  @:uproperty public var DirtyAreasUpdateFreq : unreal.Float32;
  @:uproperty private var SupportedAgents : unreal.TArray<unreal.FNavDataConfig>;
  
  /**
    Minimal time, in seconds, between active tiles set update
  **/
  @:uproperty private var ActiveTilesUpdateInterval : unreal.Float32;
  @:uproperty private var DataGatheringMode : unreal.ENavDataGatheringModeConfig;
  
  /**
    false by default, if set to true will result in not caring about nav agent height
        when trying to match navigation data to passed in nav agent
  **/
  @:uproperty public var bSkipAgentHeightCheckWhenPickingNavData : Bool;
  
  /**
    if set to true will result navigation system not rebuild navigation until
        a call to ReleaseInitialBuildingLock() is called. Does not influence
        editor-time generation (i.e. does influence PIE and Game).
        Defaults to false.
  **/
  @:uproperty public var bInitialBuildingLocked : Bool;
  @:uproperty private var CrowdManagerClass : unreal.TSubclassOf<unreal.UCrowdManagerBase>;
  
  /**
    special navigation data for managing direct paths, not part of NavDataSet!
  **/
  @:uproperty public var AbstractNavData : unreal.ANavigationData;
  @:uproperty public var MainNavData : unreal.ANavigationData;
  
  /**
    Blueprint functions
  **/
  @:ufunction(BlueprintCallable) static public function GetNavigationSystem(WorldContextObject : unreal.UObject) : unreal.UNavigationSystem;
  
  /**
    Project a point onto the NavigationData
  **/
  @:ufunction(BlueprintCallable) static public function K2_ProjectPointToNavigation(WorldContextObject : unreal.UObject, Point : unreal.Const<unreal.PRef<unreal.FVector>>, ProjectedLocation : unreal.PRef<unreal.FVector>, NavData : unreal.ANavigationData, FilterClass : unreal.TSubclassOf<unreal.UNavigationQueryFilter>, QueryExtent : unreal.Const<unreal.FVector>) : Bool;
  
  /**
    Generates a random location reachable from given Origin location.
        @return Return Value represents if the call was successful
  **/
  @:ufunction(BlueprintCallable) static public function K2_GetRandomReachablePointInRadius(WorldContextObject : unreal.UObject, Origin : unreal.Const<unreal.PRef<unreal.FVector>>, RandomLocation : unreal.PRef<unreal.FVector>, Radius : unreal.Float32, NavData : unreal.ANavigationData, FilterClass : unreal.TSubclassOf<unreal.UNavigationQueryFilter>) : Bool;
  
  /**
    Generates a random location in navigable space within given radius of Origin.
        @return Return Value represents if the call was successful
  **/
  @:ufunction(BlueprintCallable) static public function K2_GetRandomPointInNavigableRadius(WorldContextObject : unreal.UObject, Origin : unreal.Const<unreal.PRef<unreal.FVector>>, RandomLocation : unreal.PRef<unreal.FVector>, Radius : unreal.Float32, NavData : unreal.ANavigationData, FilterClass : unreal.TSubclassOf<unreal.UNavigationQueryFilter>) : Bool;
  
  /**
    Potentially expensive. Use with caution. Consider using UPathFollowingComponent::GetRemainingPathCost instead
  **/
  @:ufunction(BlueprintCallable) static public function GetPathCost(WorldContextObject : unreal.UObject, PathStart : unreal.Const<unreal.PRef<unreal.FVector>>, PathEnd : unreal.Const<unreal.PRef<unreal.FVector>>, PathCost : unreal.Float32, NavData : unreal.ANavigationData, FilterClass : unreal.TSubclassOf<unreal.UNavigationQueryFilter>) : unreal.ENavigationQueryResult;
  
  /**
    Potentially expensive. Use with caution
  **/
  @:ufunction(BlueprintCallable) static public function GetPathLength(WorldContextObject : unreal.UObject, PathStart : unreal.Const<unreal.PRef<unreal.FVector>>, PathEnd : unreal.Const<unreal.PRef<unreal.FVector>>, PathLength : unreal.Float32, NavData : unreal.ANavigationData, FilterClass : unreal.TSubclassOf<unreal.UNavigationQueryFilter>) : unreal.ENavigationQueryResult;
  @:ufunction(BlueprintCallable) static public function IsNavigationBeingBuilt(WorldContextObject : unreal.UObject) : Bool;
  @:ufunction(BlueprintCallable) static public function IsNavigationBeingBuiltOrLocked(WorldContextObject : unreal.UObject) : Bool;
  @:ufunction(BlueprintCallable) static public function SimpleMoveToActor(Controller : unreal.AController, Goal : unreal.Const<unreal.AActor>) : Void;
  @:ufunction(BlueprintCallable) static public function SimpleMoveToLocation(Controller : unreal.AController, Goal : unreal.Const<unreal.PRef<unreal.FVector>>) : Void;
  
  /**
    Finds path instantly, in a FindPath Synchronously.
        @param PathfindingContext could be one of following: NavigationData (like Navmesh actor), Pawn or Controller. This parameter determines parameters of specific pathfinding query
  **/
  @:ufunction(BlueprintCallable) static public function FindPathToLocationSynchronously(WorldContextObject : unreal.UObject, PathStart : unreal.Const<unreal.PRef<unreal.FVector>>, PathEnd : unreal.Const<unreal.PRef<unreal.FVector>>, PathfindingContext : unreal.AActor, FilterClass : unreal.TSubclassOf<unreal.UNavigationQueryFilter>) : unreal.UNavigationPath;
  
  /**
    Finds path instantly, in a FindPath Synchronously. Main advantage over FindPathToLocationSynchronously is that
        the resulting path will automatically get updated if goal actor moves more than TetherDistance away from last path node
        @param PathfindingContext could be one of following: NavigationData (like Navmesh actor), Pawn or Controller. This parameter determines parameters of specific pathfinding query
  **/
  @:ufunction(BlueprintCallable) static public function FindPathToActorSynchronously(WorldContextObject : unreal.UObject, PathStart : unreal.Const<unreal.PRef<unreal.FVector>>, GoalActor : unreal.AActor, TetherDistance : unreal.Float32 = 50.000000, PathfindingContext : unreal.AActor, FilterClass : unreal.TSubclassOf<unreal.UNavigationQueryFilter>) : unreal.UNavigationPath;
  
  /**
    Performs navigation raycast on NavigationData appropriate for given Querier.
        @param Querier if not passed default navigation data will be used
        @param HitLocation if line was obstructed this will be set to hit location. Otherwise it contains SegmentEnd
        @return true if line from RayStart to RayEnd was obstructed. Also, true when no navigation data present
  **/
  @:ufunction(BlueprintCallable) static public function NavigationRaycast(WorldContextObject : unreal.UObject, RayStart : unreal.Const<unreal.PRef<unreal.FVector>>, RayEnd : unreal.Const<unreal.PRef<unreal.FVector>>, HitLocation : unreal.PRef<unreal.FVector>, FilterClass : unreal.TSubclassOf<unreal.UNavigationQueryFilter>, Querier : unreal.AController) : Bool;
  
  /**
    will limit the number of simultaneously running navmesh tile generation jobs to specified number.
        @param MaxNumberOfJobs gets trimmed to be at least 1. You cannot use this function to pause navmesh generation
  **/
  @:ufunction(BlueprintCallable) @:final public function SetMaxSimultaneousTileGenerationJobsCount(MaxNumberOfJobs : unreal.Int32) : Void;
  
  /**
    Brings limit of simultaneous navmesh tile generation jobs back to Project Setting's default value
  **/
  @:ufunction(BlueprintCallable) @:final public function ResetMaxSimultaneousTileGenerationJobsCount() : Void;
  
  /**
    Registers given actor as a "navigation enforcer" which means navigation system will
        make sure navigation is being generated in specified radius around it.
        @note: you need NavigationSystem's GenerateNavigationOnlyAroundNavigationInvokers to be set to true
                to take advantage of this feature
  **/
  @:ufunction(BlueprintCallable) @:final public function RegisterNavigationInvoker(Invoker : unreal.AActor, TileGenerationRadius : unreal.Float32 = 3000.000000, TileRemovalRadius : unreal.Float32 = 5000.000000) : Void;
  
  /**
    Removes given actor from the list of active navigation enforcers.
        @see RegisterNavigationInvoker for more details
  **/
  @:ufunction(BlueprintCallable) @:final public function UnregisterNavigationInvoker(Invoker : unreal.AActor) : Void;
  @:ufunction(BlueprintCallable) @:final public function SetGeometryGatheringMode(NewMode : unreal.ENavDataGatheringModeConfig) : Void;
  
  /**
    @todo document
  **/
  @:ufunction(BlueprintCallable) @:final public function OnNavigationBoundsUpdated(NavVolume : unreal.ANavMeshBoundsVolume) : Void;
  @:ufunction(BlueprintCallable) static public function ProjectPointToNavigation(WorldContextObject : unreal.UObject, Point : unreal.Const<unreal.PRef<unreal.FVector>>, NavData : unreal.ANavigationData, FilterClass : unreal.TSubclassOf<unreal.UNavigationQueryFilter>, QueryExtent : unreal.Const<unreal.FVector>) : unreal.FVector;
  @:ufunction(BlueprintCallable) static public function GetRandomReachablePointInRadius(WorldContextObject : unreal.UObject, Origin : unreal.Const<unreal.PRef<unreal.FVector>>, Radius : unreal.Float32, NavData : unreal.ANavigationData, FilterClass : unreal.TSubclassOf<unreal.UNavigationQueryFilter>) : unreal.FVector;
  @:ufunction(BlueprintCallable) static public function GetRandomPointInNavigableRadius(WorldContextObject : unreal.UObject, Origin : unreal.Const<unreal.PRef<unreal.FVector>>, Radius : unreal.Float32, NavData : unreal.ANavigationData, FilterClass : unreal.TSubclassOf<unreal.UNavigationQueryFilter>) : unreal.FVector;
  
}
