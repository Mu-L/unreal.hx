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
package unreal.umg;


/**
  The user widget is extensible by users through the WidgetBlueprint.
**/
@:umodule("UMG")
@:glueCppIncludes("UMG.h")
@:uextern extern class UUserWidget extends unreal.umg.UWidget implements unreal.umg.INamedSlotInterface {
  
  /**
    Adds it to the game's viewport and fills the entire screen, unless SetDesiredSizeInViewport is called
    to explicitly set the size.
    
    @param ZOrder The higher the number, the more on top this widget will be.
  **/
  @:final public function AddToViewport(ZOrder : unreal.Int32) : Void;
  
  /**
    Adds the widget to the game's viewport in a section dedicated to the player.  This is valuable in a split screen
    game where you need to only show a widget over a player's portion of the viewport.
    
    @param ZOrder The higher the number, the more on top this widget will be.
  **/
  @:final public function AddToPlayerScreen(ZOrder : unreal.Int32) : Bool;
  
  /**
    Removes the widget from the viewport.
  **/
  @:final public function RemoveFromViewport() : Void;
  
  /**
    Sets the widgets position in the viewport.
    @param Position The 2D position to set the widget to in the viewport.
    @param bRemoveDPIScale If you've already calculated inverse DPI, set this to false.
    Otherwise inverse DPI is applied to the position so that when the location is scaled
    by DPI, it ends up in the expected position.
  **/
  @:final public function SetPositionInViewport(Position : unreal.FVector2D, bRemoveDPIScale : Bool) : Void;
  @:final public function SetDesiredSizeInViewport(Size : unreal.FVector2D) : Void;
  @:final public function SetAnchorsInViewport(Anchors : unreal.slate.FAnchors) : Void;
  @:final public function SetAlignmentInViewport(Alignment : unreal.FVector2D) : Void;
  @:thisConst @:final public function GetIsVisible() : Bool;
  
  /**
    @return true if the widget was added to the viewport using AddToViewport.
  **/
  @:thisConst @:final public function IsInViewport() : Bool;
  
  /**
    Gets the local player associated with this UI.
    @return The owning local player.
  **/
  @:thisConst @:final public function GetOwningLocalPlayer() : unreal.ULocalPlayer;
  
  /**
    Sets the local player associated with this UI.
    @param LocalPlayer The local player you want to be the conceptual owner of this UI.
  **/
  @:final public function SetOwningLocalPlayer(LocalPlayer : unreal.ULocalPlayer) : Void;
  
  /**
    Gets the player pawn associated with this UI.
    @return Gets the owning player pawn that's owned by the player controller assigned to this widget.
  **/
  @:thisConst @:final public function GetOwningPlayerPawn() : unreal.APawn;
  
  /**
    Called after the underlying slate widget is constructed.  Depending on how the slate object is used
    this event may be called multiple times due to adding and removing from the hierarchy.
  **/
  public function Construct() : Void;
  
  /**
    Called when a widget is no longer referenced causing the slate resource to destroyed.  Just like
    Construct this event can be called multiple times.
  **/
  public function Destruct() : Void;
  
  /**
    Ticks this widget.  Override in derived classes, but always call the parent implementation.
    
    @param  MyGeometry The space allotted for this widget
    @param  InDeltaTime  Real time passed since last tick
  **/
  public function Tick(MyGeometry : unreal.slatecore.FGeometry, InDeltaTime : unreal.Float32) : Void;
  @:thisConst public function OnPaint(Context : unreal.PRef<unreal.umg.FPaintContext>) : Void;
  
  /**
    Gets a value indicating if the widget is interactive.
  **/
  @:thisConst public function IsInteractable() : Bool;
  
  /**
    Called when keyboard focus is given to this widget.  This event does not bubble.
    
    @param MyGeometry The Geometry of the widget receiving the event
    @param InFocusEvent  FocusEvent
    @return  Returns whether the event was handled, along with other possible actions
  **/
  public function OnFocusReceived(MyGeometry : unreal.slatecore.FGeometry, InFocusEvent : unreal.slatecore.FFocusEvent) : unreal.umg.FEventReply;
  
  /**
    Called when this widget loses focus.  This event does not bubble.
    
    @param  InFocusEvent  FocusEvent
  **/
  public function OnFocusLost(InFocusEvent : unreal.slatecore.FFocusEvent) : Void;
  
  /**
    Called after a character is entered while this widget has focus
    
    @param MyGeometry The Geometry of the widget receiving the event
    @param  InCharacterEvent  Character event
    @return  Returns whether the event was handled, along with other possible actions
  **/
  public function OnKeyChar(MyGeometry : unreal.slatecore.FGeometry, InCharacterEvent : unreal.slatecore.FCharacterEvent) : unreal.umg.FEventReply;
  
  /**
    Called after a key (keyboard, controller, ...) is pressed when this widget or a child of this widget has focus
    If a widget handles this event, OnKeyDown will *not* be passed to the focused widget.
    
    This event is primarily to allow parent widgets to consume an event before a child widget processes
    it and it should be used only when there is no better design alternative.
    
    @param MyGeometry The Geometry of the widget receiving the event
    @param  InKeyEvent  Key event
    @return  Returns whether the event was handled, along with other possible actions
  **/
  public function OnPreviewKeyDown(MyGeometry : unreal.slatecore.FGeometry, InKeyEvent : unreal.slatecore.FKeyEvent) : unreal.umg.FEventReply;
  
  /**
    Called after a key (keyboard, controller, ...) is pressed when this widget has focus (this event bubbles if not handled)
    
    @param MyGeometry The Geometry of the widget receiving the event
    @param  InKeyEvent  Key event
    @return  Returns whether the event was handled, along with other possible actions
  **/
  public function OnKeyDown(MyGeometry : unreal.slatecore.FGeometry, InKeyEvent : unreal.slatecore.FKeyEvent) : unreal.umg.FEventReply;
  
  /**
    Called after a key (keyboard, controller, ...) is released when this widget has focus
    
    @param MyGeometry The Geometry of the widget receiving the event
    @param  InKeyEvent  Key event
    @return  Returns whether the event was handled, along with other possible actions
  **/
  public function OnKeyUp(MyGeometry : unreal.slatecore.FGeometry, InKeyEvent : unreal.slatecore.FKeyEvent) : unreal.umg.FEventReply;
  
  /**
    Called when an analog value changes on a button that supports analog
    
    @param MyGeometry The Geometry of the widget receiving the event
    @param  InAnalogInputEvent  Analog Event
    @return  Returns whether the event was handled, along with other possible actions
  **/
  public function OnAnalogValueChanged(MyGeometry : unreal.slatecore.FGeometry, InAnalogInputEvent : unreal.slatecore.FAnalogInputEvent) : unreal.umg.FEventReply;
  
  /**
    The system calls this method to notify the widget that a mouse button was pressed within it. This event is bubbled.
    
    @param MyGeometry The Geometry of the widget receiving the event
    @param MouseEvent Information about the input event
    @return Whether the event was handled along with possible requests for the system to take action.
  **/
  public function OnMouseButtonDown(MyGeometry : unreal.slatecore.FGeometry, MouseEvent : unreal.Const<unreal.PRef<unreal.slatecore.FPointerEvent>>) : unreal.umg.FEventReply;
  
  /**
    Just like OnMouseButtonDown, but tunnels instead of bubbling.
    If this even is handled, OnMouseButtonDown will not be sent.
    
    Use this event sparingly as preview events generally make UIs more
    difficult to reason about.
    
    @param MyGeometry The Geometry of the widget receiving the event
    @param MouseEvent Information about the input event
    @return Whether the event was handled along with possible requests for the system to take action.
  **/
  public function OnPreviewMouseButtonDown(MyGeometry : unreal.slatecore.FGeometry, MouseEvent : unreal.Const<unreal.PRef<unreal.slatecore.FPointerEvent>>) : unreal.umg.FEventReply;
  
  /**
    The system calls this method to notify the widget that a mouse button was release within it. This event is bubbled.
    
    @param MyGeometry The Geometry of the widget receiving the event
    @param MouseEvent Information about the input event
    @return Whether the event was handled along with possible requests for the system to take action.
  **/
  public function OnMouseButtonUp(MyGeometry : unreal.slatecore.FGeometry, MouseEvent : unreal.Const<unreal.PRef<unreal.slatecore.FPointerEvent>>) : unreal.umg.FEventReply;
  
  /**
    The system calls this method to notify the widget that a mouse moved within it. This event is bubbled.
    
    @param MyGeometry The Geometry of the widget receiving the event
    @param MouseEvent Information about the input event
    @return Whether the event was handled along with possible requests for the system to take action.
  **/
  public function OnMouseMove(MyGeometry : unreal.slatecore.FGeometry, MouseEvent : unreal.Const<unreal.PRef<unreal.slatecore.FPointerEvent>>) : unreal.umg.FEventReply;
  
  /**
    The system will use this event to notify a widget that the cursor has entered it. This event is NOT bubbled.
    
    @param MyGeometry The Geometry of the widget receiving the event
    @param MouseEvent Information about the input event
  **/
  public function OnMouseEnter(MyGeometry : unreal.slatecore.FGeometry, MouseEvent : unreal.Const<unreal.PRef<unreal.slatecore.FPointerEvent>>) : Void;
  
  /**
    The system will use this event to notify a widget that the cursor has left it. This event is NOT bubbled.
    
    @param MouseEvent Information about the input event
  **/
  public function OnMouseLeave(MouseEvent : unreal.Const<unreal.PRef<unreal.slatecore.FPointerEvent>>) : Void;
  
  /**
    Called when the mouse wheel is spun. This event is bubbled.
    
    @param  MouseEvent  Mouse event
    @return  Returns whether the event was handled, along with other possible actions
  **/
  public function OnMouseWheel(MyGeometry : unreal.slatecore.FGeometry, MouseEvent : unreal.Const<unreal.PRef<unreal.slatecore.FPointerEvent>>) : unreal.umg.FEventReply;
  
  /**
    Called when a mouse button is double clicked.  Override this in derived classes.
    
    @param  InMyGeometry  Widget geometry
    @param  InMouseEvent  Mouse button event
    @return  Returns whether the event was handled, along with other possible actions
  **/
  public function OnMouseButtonDoubleClick(InMyGeometry : unreal.slatecore.FGeometry, InMouseEvent : unreal.Const<unreal.PRef<unreal.slatecore.FPointerEvent>>) : unreal.umg.FEventReply;
  
  /**
    Called when the user cancels the drag operation, typically when they simply release the mouse button after
    beginning a drag operation, but failing to complete the drag.
    
    @param  PointerEvent  Last mouse event from when the drag was canceled.
    @param  Operation     The drag operation that was canceled.
  **/
  public function OnDragCancelled(PointerEvent : unreal.Const<unreal.PRef<unreal.slatecore.FPointerEvent>>, Operation : unreal.umg.UDragDropOperation) : Void;
  
  /**
    Called during drag and drop when the drag enters the widget.
    
    @param MyGeometry     The geometry of the widget receiving the event.
    @param PointerEvent   The mouse event from when the drag entered the widget.
    @param Operation      The drag operation that entered the widget.
  **/
  public function OnDragEnter(MyGeometry : unreal.slatecore.FGeometry, PointerEvent : unreal.slatecore.FPointerEvent, Operation : unreal.umg.UDragDropOperation) : Void;
  
  /**
    Called during drag and drop when the drag leaves the widget.
    
    @param PointerEvent   The mouse event from when the drag left the widget.
    @param Operation      The drag operation that entered the widget.
  **/
  public function OnDragLeave(PointerEvent : unreal.slatecore.FPointerEvent, Operation : unreal.umg.UDragDropOperation) : Void;
  
  /**
    Called during drag and drop when the the mouse is being dragged over a widget.
    
    @param MyGeometry     The geometry of the widget receiving the event.
    @param PointerEvent   The mouse event from when the drag occurred over the widget.
    @param Operation      The drag operation over the widget.
    
    @return 'true' to indicate that you handled the drag over operation.  Returning 'false' will cause the operation to continue to bubble up.
  **/
  public function OnDragOver(MyGeometry : unreal.slatecore.FGeometry, PointerEvent : unreal.slatecore.FPointerEvent, Operation : unreal.umg.UDragDropOperation) : Bool;
  
  /**
    Called when the user is dropping something onto a widget.  Ends the drag and drop operation, even if no widget handles this.
    
    @param MyGeometry     The geometry of the widget receiving the event.
    @param PointerEvent   The mouse event from when the drag occurred over the widget.
    @param Operation      The drag operation over the widget.
    
    @return 'true' to indicate you handled the drop operation.
  **/
  public function OnDrop(MyGeometry : unreal.slatecore.FGeometry, PointerEvent : unreal.slatecore.FPointerEvent, Operation : unreal.umg.UDragDropOperation) : Bool;
  public function OnControllerButtonPressed(MyGeometry : unreal.slatecore.FGeometry, ControllerEvent : unreal.slatecore.FControllerEvent) : unreal.umg.FEventReply;
  public function OnControllerButtonReleased(MyGeometry : unreal.slatecore.FGeometry, ControllerEvent : unreal.slatecore.FControllerEvent) : unreal.umg.FEventReply;
  public function OnControllerAnalogValueChanged(MyGeometry : unreal.slatecore.FGeometry, ControllerEvent : unreal.slatecore.FControllerEvent) : unreal.umg.FEventReply;
  
  /**
    Called when the user performs a gesture on trackpad. This event is bubbled.
    
    @param MyGeometry     The geometry of the widget receiving the event.
    @param  GestureEvent  gesture event
    @return  Returns whether the event was handled, along with other possible actions
  **/
  public function OnTouchGesture(MyGeometry : unreal.slatecore.FGeometry, GestureEvent : unreal.Const<unreal.PRef<unreal.slatecore.FPointerEvent>>) : unreal.umg.FEventReply;
  
  /**
    Called when a touchpad touch is started (finger down)
    
    @param MyGeometry    The geometry of the widget receiving the event.
    @param InTouchEvent  The touch event generated
  **/
  public function OnTouchStarted(MyGeometry : unreal.slatecore.FGeometry, InTouchEvent : unreal.Const<unreal.PRef<unreal.slatecore.FPointerEvent>>) : unreal.umg.FEventReply;
  
  /**
    Called when a touchpad touch is moved  (finger moved)
    
    @param MyGeometry    The geometry of the widget receiving the event.
    @param InTouchEvent  The touch event generated
  **/
  public function OnTouchMoved(MyGeometry : unreal.slatecore.FGeometry, InTouchEvent : unreal.Const<unreal.PRef<unreal.slatecore.FPointerEvent>>) : unreal.umg.FEventReply;
  
  /**
    Called when a touchpad touch is ended (finger lifted)
    
    @param MyGeometry    The geometry of the widget receiving the event.
    @param InTouchEvent  The touch event generated
  **/
  public function OnTouchEnded(MyGeometry : unreal.slatecore.FGeometry, InTouchEvent : unreal.Const<unreal.PRef<unreal.slatecore.FPointerEvent>>) : unreal.umg.FEventReply;
  
  /**
    Called when motion is detected (controller or device)
    e.g. Someone tilts or shakes their controller.
    
    @param MyGeometry    The geometry of the widget receiving the event.
    @param MotionEvent   The motion event generated
  **/
  public function OnMotionDetected(MyGeometry : unreal.slatecore.FGeometry, InMotionEvent : unreal.slatecore.FMotionEvent) : unreal.umg.FEventReply;
  
  /**
    Called when an animation is started.
    
    @param Animation the animation that started
  **/
  public function OnAnimationStarted(Animation : unreal.Const<unreal.umg.UWidgetAnimation>) : Void;
  
  /**
    Called when an animation has either played all the way through or is stopped
    
    @param Animation The animation that has finished playing
  **/
  public function OnAnimationFinished(Animation : unreal.Const<unreal.umg.UWidgetAnimation>) : Void;
  
  /**
    Sets the tint of the widget, this affects all child widgets.
    
    @param InColorAndOpacity     The tint to apply to all child widgets.
  **/
  @:final public function SetColorAndOpacity(InColorAndOpacity : unreal.FLinearColor) : Void;
  
  /**
    Sets the foreground color of the widget, this is inherited by sub widgets.  Any color property
    that is marked as inherit will use this color.
    
    @param InForegroundColor     The foreground color.
  **/
  @:final public function SetForegroundColor(InForegroundColor : unreal.slatecore.FSlateColor) : Void;
  @:final public function SetPadding(InPadding : unreal.slatecore.FMargin) : Void;
  
  /**
    Plays an animation in this widget a specified number of times
    
    @param InAnimation The animation to play
    @param StartAtTime The time in the animation from which to start playing, relative to the start position. For looped animations, this will only affect the first playback of the animation.
    @param NumLoopsToPlay The number of times to loop this animation (0 to loop indefinitely)
    @param PlaybackSpeed The speed at which the animation should play
    @param PlayMode Specifies the playback mode
  **/
  @:final public function PlayAnimation(InAnimation : unreal.Const<unreal.umg.UWidgetAnimation>, StartAtTime : unreal.Float32, NumLoopsToPlay : unreal.Int32, PlayMode : unreal.umg.EUMGSequencePlayMode, PlaybackSpeed : unreal.Float32) : Void;
  
  /**
    Plays an animation in this widget a specified number of times stoping at a specified time
    
    @param InAnimation The animation to play
    @param StartAtTime The time in the animation from which to start playing, relative to the start position. For looped animations, this will only affect the first playback of the animation.
    @param EndAtTime The absolute time in the animation where to stop, this is only considered in the last loop.
    @param NumLoopsToPlay The number of times to loop this animation (0 to loop indefinitely)
    @param PlaybackSpeed The speed at which the animation should play
    @param PlayMode Specifies the playback mode
  **/
  @:final public function PlayAnimationTo(InAnimation : unreal.Const<unreal.umg.UWidgetAnimation>, StartAtTime : unreal.Float32, EndAtTime : unreal.Float32, NumLoopsToPlay : unreal.Int32, PlayMode : unreal.umg.EUMGSequencePlayMode, PlaybackSpeed : unreal.Float32) : Void;
  
  /**
    Stops an already running animation in this widget
    
    @param The name of the animation to stop
  **/
  @:final public function StopAnimation(InAnimation : unreal.Const<unreal.umg.UWidgetAnimation>) : Void;
  
  /**
    Pauses an already running animation in this widget
    
    @param The name of the animation to pause
    @return the time point the animation was at when it was paused, relative to its start position.  Use this as the StartAtTime when you trigger PlayAnimation.
  **/
  @:final public function PauseAnimation(InAnimation : unreal.Const<unreal.umg.UWidgetAnimation>) : unreal.Float32;
  
  /**
    Gets the current time of the animation in this widget
    
    @param The name of the animation to get the current time for
    @return the current time of the animation.
  **/
  @:thisConst @:final public function GetAnimationCurrentTime(InAnimation : unreal.Const<unreal.umg.UWidgetAnimation>) : unreal.Float32;
  
  /**
    Gets whether an animation is currently playing on this widget.
    
    @param InAnimation The animation to check the playback status of
    @return True if the animation is currently playing
  **/
  @:thisConst @:final public function IsAnimationPlaying(InAnimation : unreal.Const<unreal.umg.UWidgetAnimation>) : Bool;
  
  /**
    @return True if any animation is currently playing
  **/
  @:thisConst @:final public function IsAnyAnimationPlaying() : Bool;
  
  /**
    Changes the number of loops to play given a playing animation
    
    @param InAnimation The animation that is already playing
    @param NumLoopsToPlay The number of loops to play. (0 to loop indefinitely)
  **/
  @:final public function SetNumLoopsToPlay(InAnimation : unreal.Const<unreal.umg.UWidgetAnimation>, NumLoopsToPlay : unreal.Int32) : Void;
  
  /**
    Changes the playback rate of a playing animation
    
    @param InAnimation The animation that is already playing
    @param PlaybackRate Playback rate multiplier (1 is default)
  **/
  @:final public function SetPlaybackSpeed(InAnimation : unreal.Const<unreal.umg.UWidgetAnimation>, PlaybackSpeed : unreal.Float32) : Void;
  
  /**
    If an animation is playing, this function will reverse the playback.
    
    @param InAnimation The playing animation that we want to reverse
  **/
  @:final public function ReverseAnimation(InAnimation : unreal.Const<unreal.umg.UWidgetAnimation>) : Void;
  
  /**
    Plays a sound through the UI
    
    @param The sound to play
  **/
  @:final public function PlaySound(SoundToPlay : unreal.USoundBase) : Void;
  
  /**
    Are we currently playing any animations?
  **/
  @:thisConst @:final public function IsPlayingAnimation() : Bool;
  private var InputComponent : unreal.UInputComponent;
  #if WITH_EDITORONLY_DATA
  
  /**
    A preview background that you can use when designing the UI to get a sense of scale on the screen.  Use
    a texture with a screenshot of your game in it, for example if you were designing a HUD.
  **/
  public var PreviewBackground : unreal.UTexture2D;
  public var DesignSizeMode : unreal.umg.EDesignPreviewSizeMode;
  
  /**
    A flag that determines if the widget's desired size is used for previewing the widget in the designer.
  **/
  @:deprecated public var bUseDesiredSizeAtDesignTime_DEPRECATED : Bool;
  
  /**
    A flag that determines if the design time size is used for previewing the widget in the designer.
  **/
  @:deprecated public var bUseDesignTimeSize_DEPRECATED : Bool;
  
  /**
    Stores the design time desired size of the user widget
  **/
  public var DesignTimeSize : unreal.FVector2D;
  #end // WITH_EDITORONLY_DATA
  public var Priority : unreal.Int32;
  public var bStopAction : Bool;
  
  /**
    Stores the widgets being assigned to named slots
  **/
  public var NamedSlotBindings : unreal.TArray<unreal.umg.FNamedSlotBinding>;
  
  /**
    List of sequence players to cache and clean up when safe
  **/
  public var StoppedSequencePlayers : unreal.TArray<unreal.umg.UUMGSequencePlayer>;
  
  /**
    All the sequence players currently playing
  **/
  public var ActiveSequencePlayers : unreal.TArray<unreal.umg.UUMGSequencePlayer>;
  
  /**
    The widget tree contained inside this user widget initialized by the blueprint
  **/
  public var WidgetTree : unreal.umg.UWidgetTree;
  
  /**
    Setting this flag to true, allows this widget to accept focus when clicked, or when navigated to.
  **/
  public var bIsFocusable : Bool;
  @:deprecated public var bSupportsKeyboardFocus_DEPRECATED : Bool;
  
  /**
    The padding area around the content.
  **/
  public var Padding : unreal.slatecore.FMargin;
  
  /**
    The foreground color of the widget, this is inherited by sub widgets.  Any color property
    that is marked as inherit will use this color.
  **/
  public var ForegroundColor : unreal.slatecore.FSlateColor;
  
  /**
    The color and opacity of this widget.  Tints all child widgets.
  **/
  public var ColorAndOpacity : unreal.FLinearColor;
  
  /**
    Removes the binding for a particular action's callback.
  **/
  @:final private function StopListeningForInputAction(ActionName : unreal.FName, EventType : unreal.EInputEvent) : Void;
  
  /**
    Stops listening to all input actions, and unregisters the input component with the player controller.
  **/
  @:final private function StopListeningForAllInputActions() : Void;
  
  /**
    ListenForInputAction will automatically Register an Input Component with the player input system.
    If you however, want to Pause and Resume, listening for a set of actions, the best way is to use
    UnregisterInputComponent to pause, and RegisterInputComponent to resume listening.
  **/
  @:final private function RegisterInputComponent() : Void;
  
  /**
    StopListeningForAllInputActions will automatically Register an Input Component with the player input system.
    If you however, want to Pause and Resume, listening for a set of actions, the best way is to use
    UnregisterInputComponent to pause, and RegisterInputComponent to resume listening.
  **/
  @:final private function UnregisterInputComponent() : Void;
  
  /**
    Checks if the action has a registered callback with the input component.
  **/
  @:thisConst @:final private function IsListeningForInputAction(ActionName : unreal.FName) : Bool;
  @:final private function SetInputActionPriority(NewPriority : unreal.Int32) : Void;
  @:final private function SetInputActionBlocking(bShouldBlock : Bool) : Void;
  // NamedSlotInterface interface implementation
  
}
