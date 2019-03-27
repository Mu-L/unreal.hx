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
package unreal.assetregistry;

/**
  WARNING: This type was not defined as DLL export on its declaration. Because of that, some of its methods are inaccessible
  
  
**/
@:umodule("AssetRegistry")
@:glueCppIncludes("Private/AssetRegistry.h")
@:noClass @:uextern @:uclass extern class UAssetRegistryImpl extends unreal.UObject implements unreal.assetregistry.IAssetRegistry {
  // AssetRegistry interface implementation
  
  /**
    Does the given path contain assets, optionally also testing sub-paths?
    
    @param PackagePath the path to query asset data in
    @param bRecursive if true, the supplied path will be tested recursively
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function HasAssets(PackagePath : unreal.Const<unreal.FName>, bRecursive : Bool = false) : Bool;
  
  /**
    Gets asset data for the assets in the package with the specified package name
    
    @param PackageName the package name for the requested assets
    @param OutAssetData the list of assets in this path
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetAssetsByPackageName(PackageName : unreal.FName, OutAssetData : unreal.PRef<unreal.TArray<unreal.assetregistry.FAssetData>>, bIncludeOnlyOnDiskAssets : Bool = false) : Bool;
  
  /**
    Gets asset data for all assets in the supplied folder path
    
    @param PackagePath the path to query asset data in
    @param OutAssetData the list of assets in this path
    @param bRecursive if true, all supplied paths will be searched recursively
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetAssetsByPath(PackagePath : unreal.FName, OutAssetData : unreal.PRef<unreal.TArray<unreal.assetregistry.FAssetData>>, bRecursive : Bool = false, bIncludeOnlyOnDiskAssets : Bool = false) : Bool;
  
  /**
    Gets asset data for all assets with the supplied class
    
    @param ClassName the class name of the assets requested
    @param OutAssetData the list of assets in this path
    @param bSearchSubClasses if true, all subclasses of the passed in class will be searched as well
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetAssetsByClass(ClassName : unreal.FName, OutAssetData : unreal.PRef<unreal.TArray<unreal.assetregistry.FAssetData>>, bSearchSubClasses : Bool = false) : Bool;
  
  /**
    Gets asset data for all assets that match the filter.
    Assets returned must satisfy every filter component if there is at least one element in the component's array.
    Assets will satisfy a component if they match any of the elements in it.
    
    @param Filter filter to apply to the assets in the AssetRegistry
    @param OutAssetData the list of assets in this path
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetAssets(Filter : unreal.Const<unreal.PRef<unreal.assetregistry.FARFilter>>, OutAssetData : unreal.PRef<unreal.TArray<unreal.assetregistry.FAssetData>>) : Bool;
  
  /**
    Gets the asset data for the specified object path
    
    @param ObjectPath the path of the object to be looked up
    @param bIncludeOnlyOnDiskAssets if true, in-memory objects will be ignored. The call will be faster.
    @return the assets data;Will be invalid if object could not be found
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetAssetByObjectPath(ObjectPath : unreal.Const<unreal.FName>, bIncludeOnlyOnDiskAssets : Bool = false) : unreal.assetregistry.FAssetData;
  
  /**
    Gets asset data for all assets in the registry.
    This method may be slow, use a filter if possible to avoid iterating over the entire registry.
    
    @param OutAssetData the list of assets in this path
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetAllAssets(OutAssetData : unreal.PRef<unreal.TArray<unreal.assetregistry.FAssetData>>, bIncludeOnlyOnDiskAssets : Bool = false) : Bool;
  
  /**
    Gets a list of all paths that are currently cached
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetAllCachedPaths(OutPathList : unreal.PRef<unreal.TArray<unreal.FString>>) : Void;
  
  /**
    Gets a list of all paths that are currently cached below the passed-in base path
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetSubPaths(InBasePath : unreal.FString, OutPathList : unreal.PRef<unreal.TArray<unreal.FString>>, bInRecurse : Bool) : Void;
  
  /**
    Trims items out of the asset data list that do not pass the supplied filter
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function RunAssetsThroughFilter(AssetDataList : unreal.PRef<unreal.TArray<unreal.assetregistry.FAssetData>>, Filter : unreal.Const<unreal.PRef<unreal.assetregistry.FARFilter>>) : Void;
  
  /**
    Returns true if the asset registry is currently loading files and does not yet know about all assets
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function IsLoadingAssets() : Bool;
  
}
