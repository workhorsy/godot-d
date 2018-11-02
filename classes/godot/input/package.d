/**
A Singleton that deals with inputs.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.input;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
import godot.inputevent;
/**
A Singleton that deals with inputs.

This includes key presses, mouse buttons and movement, joypads, and input actions. Actions and their events can be set in the Project Settings / Input Map tab. Or be set with $(D InputMap).
*/
@GodotBaseClass struct InputSingleton
{
	enum string _GODOT_internal_name = "Input";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "Input";
		@GodotName("is_key_pressed") GodotMethod!(bool, long) isKeyPressed;
		@GodotName("is_mouse_button_pressed") GodotMethod!(bool, long) isMouseButtonPressed;
		@GodotName("is_joy_button_pressed") GodotMethod!(bool, long, long) isJoyButtonPressed;
		@GodotName("is_action_pressed") GodotMethod!(bool, String) isActionPressed;
		@GodotName("is_action_just_pressed") GodotMethod!(bool, String) isActionJustPressed;
		@GodotName("is_action_just_released") GodotMethod!(bool, String) isActionJustReleased;
		@GodotName("get_action_strength") GodotMethod!(double, String) getActionStrength;
		@GodotName("add_joy_mapping") GodotMethod!(void, String, bool) addJoyMapping;
		@GodotName("remove_joy_mapping") GodotMethod!(void, String) removeJoyMapping;
		@GodotName("joy_connection_changed") GodotMethod!(void, long, bool, String, String) joyConnectionChanged;
		@GodotName("is_joy_known") GodotMethod!(bool, long) isJoyKnown;
		@GodotName("get_joy_axis") GodotMethod!(double, long, long) getJoyAxis;
		@GodotName("get_joy_name") GodotMethod!(String, long) getJoyName;
		@GodotName("get_joy_guid") GodotMethod!(String, long) getJoyGuid;
		@GodotName("get_connected_joypads") GodotMethod!(Array) getConnectedJoypads;
		@GodotName("get_joy_vibration_strength") GodotMethod!(Vector2, long) getJoyVibrationStrength;
		@GodotName("get_joy_vibration_duration") GodotMethod!(double, long) getJoyVibrationDuration;
		@GodotName("get_joy_button_string") GodotMethod!(String, long) getJoyButtonString;
		@GodotName("get_joy_button_index_from_string") GodotMethod!(long, String) getJoyButtonIndexFromString;
		@GodotName("get_joy_axis_string") GodotMethod!(String, long) getJoyAxisString;
		@GodotName("get_joy_axis_index_from_string") GodotMethod!(long, String) getJoyAxisIndexFromString;
		@GodotName("start_joy_vibration") GodotMethod!(void, long, double, double, double) startJoyVibration;
		@GodotName("stop_joy_vibration") GodotMethod!(void, long) stopJoyVibration;
		@GodotName("get_gravity") GodotMethod!(Vector3) getGravity;
		@GodotName("get_accelerometer") GodotMethod!(Vector3) getAccelerometer;
		@GodotName("get_magnetometer") GodotMethod!(Vector3) getMagnetometer;
		@GodotName("get_gyroscope") GodotMethod!(Vector3) getGyroscope;
		@GodotName("get_last_mouse_speed") GodotMethod!(Vector2) getLastMouseSpeed;
		@GodotName("get_mouse_button_mask") GodotMethod!(long) getMouseButtonMask;
		@GodotName("set_mouse_mode") GodotMethod!(void, long) setMouseMode;
		@GodotName("get_mouse_mode") GodotMethod!(Input.MouseMode) getMouseMode;
		@GodotName("warp_mouse_position") GodotMethod!(void, Vector2) warpMousePosition;
		@GodotName("action_press") GodotMethod!(void, String) actionPress;
		@GodotName("action_release") GodotMethod!(void, String) actionRelease;
		@GodotName("set_default_cursor_shape") GodotMethod!(void, long) setDefaultCursorShape;
		@GodotName("set_custom_mouse_cursor") GodotMethod!(void, Resource, long, Vector2) setCustomMouseCursor;
		@GodotName("parse_input_event") GodotMethod!(void, InputEvent) parseInputEvent;
	}
	bool opEquals(in InputSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Input");
		if(constructor is null) return typeof(this).init;
		return cast(InputSingleton)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum MouseMode : int
	{
		/**
		Makes the mouse cursor visible if it is hidden.
		*/
		mouseModeVisible = 0,
		/**
		Makes the mouse cursor hidden if it is visible.
		*/
		mouseModeHidden = 1,
		/**
		Captures the mouse. The mouse will be hidden and unable to leave the game window. But it will still register movement and mouse button presses.
		*/
		mouseModeCaptured = 2,
		/**
		Makes the mouse cursor visible but confines it to the game window.
		*/
		mouseModeConfined = 3,
	}
	/// 
	enum CursorShape : int
	{
		/**
		Arrow cursor. Standard, default pointing cursor.
		*/
		cursorArrow = 0,
		/**
		I-beam cursor. Usually used to show where the text cursor will appear when the mouse is clicked.
		*/
		cursorIbeam = 1,
		/**
		Pointing hand cursor. Usually used to indicate the pointer is over a link or other interactable item.
		*/
		cursorPointingHand = 2,
		/**
		Cross cursor. Typically appears over regions in which a drawing operation can be performed or for selections.
		*/
		cursorCross = 3,
		/**
		Wait cursor. Indicates that the application is busy performing an operation.
		*/
		cursorWait = 4,
		/**
		Busy cursor. See `CURSOR_WAIT`.
		*/
		cursorBusy = 5,
		/**
		Drag cursor. Usually displayed when dragging something.
		*/
		cursorDrag = 6,
		/**
		Can drop cursor. Usually displayed when dragging something to indicate that it can be dropped at the current position.
		*/
		cursorCanDrop = 7,
		/**
		Forbidden cursor. Indicates that the current action is forbidden (for example, when dragging something) or that the control at a position is disabled.
		*/
		cursorForbidden = 8,
		/**
		Vertical resize mouse cursor. A double headed vertical arrow. It tells the user they can resize the window or the panel vertically.
		*/
		cursorVsize = 9,
		/**
		Horizontal resize mouse cursor. A double headed horizontal arrow. It tells the user they can resize the window or the panel horizontally.
		*/
		cursorHsize = 10,
		/**
		Window resize mouse cursor. The cursor is a double headed arrow that goes from the bottom left to the top right. It tells the user they can resize the window or the panel both horizontally and vertically.
		*/
		cursorBdiagsize = 11,
		/**
		Window resize mouse cursor. The cursor is a double headed arrow that goes from the top left to the bottom right, the opposite of `CURSOR_BDIAGSIZE`. It tells the user they can resize the window or the panel both horizontally and vertically.
		*/
		cursorFdiagsize = 12,
		/**
		Move cursor. Indicates that something can be moved.
		*/
		cursorMove = 13,
		/**
		Vertical split mouse cursor. On Windows, it's the same as `CURSOR_VSIZE`.
		*/
		cursorVsplit = 14,
		/**
		Horizontal split mouse cursor. On Windows, it's the same as `CURSOR_HSIZE`.
		*/
		cursorHsplit = 15,
		/**
		Help cursor. Usually a question mark.
		*/
		cursorHelp = 16,
	}
	/// 
	enum Constants : int
	{
		cursorArrow = 0,
		mouseModeVisible = 0,
		mouseModeHidden = 1,
		cursorIbeam = 1,
		mouseModeCaptured = 2,
		cursorPointingHand = 2,
		mouseModeConfined = 3,
		cursorCross = 3,
		cursorWait = 4,
		cursorBusy = 5,
		cursorDrag = 6,
		cursorCanDrop = 7,
		cursorForbidden = 8,
		cursorVsize = 9,
		cursorHsize = 10,
		cursorBdiagsize = 11,
		cursorFdiagsize = 12,
		cursorMove = 13,
		cursorVsplit = 14,
		cursorHsplit = 15,
		cursorHelp = 16,
	}
	/**
	Returns `true` if you are pressing the key. You can pass `KEY_*`, which are pre-defined constants listed in $(D @GlobalScope).
	*/
	bool isKeyPressed(in long scancode) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isKeyPressed, _godot_object, scancode);
	}
	/**
	Returns `true` if you are pressing the mouse button. You can pass `BUTTON_*`, which are pre-defined constants listed in $(D @GlobalScope).
	*/
	bool isMouseButtonPressed(in long button) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isMouseButtonPressed, _godot_object, button);
	}
	/**
	Returns `true` if you are pressing the joypad button. (see `JOY_*` constants in $(D @GlobalScope))
	*/
	bool isJoyButtonPressed(in long device, in long button) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isJoyButtonPressed, _godot_object, device, button);
	}
	/**
	Returns `true` if you are pressing the action event.
	*/
	bool isActionPressed(StringArg0)(in StringArg0 action) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isActionPressed, _godot_object, action);
	}
	/**
	Returns `true` when the user starts pressing the action event, meaning it's true only on the frame that the user pressed down the button.
	This is useful for code that needs to run only once when an action is pressed, instead of every frame while it's pressed.
	*/
	bool isActionJustPressed(StringArg0)(in StringArg0 action) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isActionJustPressed, _godot_object, action);
	}
	/**
	Returns `true` when the user stops pressing the action event, meaning it's true only on the frame that the user released the button.
	*/
	bool isActionJustReleased(StringArg0)(in StringArg0 action) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isActionJustReleased, _godot_object, action);
	}
	/**
	Returns a value between 0 and 1 representing the intensity of the given action. In a joypad, for example, the further away the axis (analog sticks or L2, R2 triggers) is from the dead zone, the closer the value will be to 1. If the action is mapped to a control that has no axis as the keyboard, the value returned will be 0 or 1.
	*/
	double getActionStrength(StringArg0)(in StringArg0 action) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getActionStrength, _godot_object, action);
	}
	/**
	Add a new mapping entry (in SDL2 format) to the mapping database. Optionally update already connected devices.
	*/
	void addJoyMapping(StringArg0)(in StringArg0 mapping, in bool update_existing = false)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addJoyMapping, _godot_object, mapping, update_existing);
	}
	/**
	Removes all mappings from the internal db that match the given uid.
	*/
	void removeJoyMapping(StringArg0)(in StringArg0 guid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeJoyMapping, _godot_object, guid);
	}
	/**
	
	*/
	void joyConnectionChanged(StringArg2, StringArg3)(in long device, in bool connected, in StringArg2 name, in StringArg3 guid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.joyConnectionChanged, _godot_object, device, connected, name, guid);
	}
	/**
	Returns `true` if the system knows the specified device. This means that it sets all button and axis indices exactly as defined in the `JOY_*` constants (see $(D @GlobalScope)). Unknown joypads are not expected to match these constants, but you can still retrieve events from them.
	*/
	bool isJoyKnown(in long device)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isJoyKnown, _godot_object, device);
	}
	/**
	Returns the current value of the joypad axis at given index (see `JOY_*` constants in $(D @GlobalScope))
	*/
	double getJoyAxis(in long device, in long axis) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getJoyAxis, _godot_object, device, axis);
	}
	/**
	Returns the name of the joypad at the specified device index
	*/
	String getJoyName(in long device)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getJoyName, _godot_object, device);
	}
	/**
	Returns a SDL2 compatible device guid on platforms that use gamepad remapping. Returns "Default Gamepad" otherwise.
	*/
	String getJoyGuid(in long device) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getJoyGuid, _godot_object, device);
	}
	/**
	Returns an $(D Array) containing the device IDs of all currently connected joypads.
	*/
	Array getConnectedJoypads()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(_classBinding.getConnectedJoypads, _godot_object);
	}
	/**
	Returns the strength of the joypad vibration: x is the strength of the weak motor, and y is the strength of the strong motor.
	*/
	Vector2 getJoyVibrationStrength(in long device)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getJoyVibrationStrength, _godot_object, device);
	}
	/**
	Returns the duration of the current vibration effect in seconds.
	*/
	double getJoyVibrationDuration(in long device)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getJoyVibrationDuration, _godot_object, device);
	}
	/**
	Receives a `JOY_BUTTON_*` Enum and returns its equivalent name as a string.
	*/
	String getJoyButtonString(in long button_index)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getJoyButtonString, _godot_object, button_index);
	}
	/**
	Returns the index of the provided button name.
	*/
	long getJoyButtonIndexFromString(StringArg0)(in StringArg0 button)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getJoyButtonIndexFromString, _godot_object, button);
	}
	/**
	Receives a `JOY_AXIS_*` Enum and returns its equivalent name as a string.
	*/
	String getJoyAxisString(in long axis_index)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getJoyAxisString, _godot_object, axis_index);
	}
	/**
	Returns the index of the provided axis name.
	*/
	long getJoyAxisIndexFromString(StringArg0)(in StringArg0 axis)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getJoyAxisIndexFromString, _godot_object, axis);
	}
	/**
	Starts to vibrate the joypad. Joypads usually come with two rumble motors, a strong and a weak one. weak_magnitude is the strength of the weak motor (between 0 and 1) and strong_magnitude is the strength of the strong motor (between 0 and 1). duration is the duration of the effect in seconds (a duration of 0 will try to play the vibration indefinitely).
	Note that not every hardware is compatible with long effect durations, it is recommended to restart an effect if in need to play it for more than a few seconds.
	*/
	void startJoyVibration(in long device, in double weak_magnitude, in double strong_magnitude, in double duration = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.startJoyVibration, _godot_object, device, weak_magnitude, strong_magnitude, duration);
	}
	/**
	Stops the vibration of the joypad.
	*/
	void stopJoyVibration(in long device)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.stopJoyVibration, _godot_object, device);
	}
	/**
	If the device has an accelerometer, this will return the gravity. Otherwise, it returns an empty $(D Vector3).
	*/
	Vector3 getGravity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getGravity, _godot_object);
	}
	/**
	If the device has an accelerometer, this will return the acceleration. Otherwise, it returns an empty $(D Vector3).
	Note this method returns an empty $(D Vector3) when running from the editor even when your device has an accelerometer. You must export your project to a supported device to read values from the accelerometer.
	*/
	Vector3 getAccelerometer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getAccelerometer, _godot_object);
	}
	/**
	If the device has a magnetometer, this will return the magnetic field strength in micro-Tesla for all axes.
	*/
	Vector3 getMagnetometer() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getMagnetometer, _godot_object);
	}
	/**
	If the device has a gyroscope, this will return the rate of rotation in rad/s around a device's x, y, and z axis. Otherwise, it returns an empty $(D Vector3).
	*/
	Vector3 getGyroscope() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getGyroscope, _godot_object);
	}
	/**
	Returns the mouse speed for the last time the cursor was moved, and this until the next frame where the mouse moves. This means that even if the mouse is not moving, this function will still return the value of the last motion.
	*/
	Vector2 getLastMouseSpeed() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getLastMouseSpeed, _godot_object);
	}
	/**
	Returns mouse buttons as a bitmask. If multiple mouse buttons are pressed at the same time the bits are added together.
	*/
	long getMouseButtonMask() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getMouseButtonMask, _godot_object);
	}
	/**
	Set the mouse mode. See the constants for more information.
	*/
	void setMouseMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMouseMode, _godot_object, mode);
	}
	/**
	Return the mouse mode. See the constants for more information.
	*/
	Input.MouseMode getMouseMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Input.MouseMode)(_classBinding.getMouseMode, _godot_object);
	}
	/**
	Sets the mouse position to the specified vector.
	*/
	void warpMousePosition(in Vector2 to)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.warpMousePosition, _godot_object, to);
	}
	/**
	This will simulate pressing the specified action.
	*/
	void actionPress(StringArg0)(in StringArg0 action)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.actionPress, _godot_object, action);
	}
	/**
	If the specified action is already pressed, this will release it.
	*/
	void actionRelease(StringArg0)(in StringArg0 action)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.actionRelease, _godot_object, action);
	}
	/**
	Sets the default cursor shape to be used in the viewport instead of `CURSOR_ARROW`.
	Note that if you want to change the default cursor shape for $(D Control)'s nodes, use $(D Control.mouseDefaultCursorShape) instead.
	*/
	void setDefaultCursorShape(in long shape = 0)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDefaultCursorShape, _godot_object, shape);
	}
	/**
	Sets a custom mouse cursor image, which is only visible inside the game window. The hotspot can also be specified. Passing `null` to the image parameter resets to the system cursor. See enum `CURSOR_*` for the list of shapes.
	`image`'s size must be lower than 256x256.
	`hotspot` must be within `image`'s size.
	*/
	void setCustomMouseCursor(Resource image, in long shape = 0, in Vector2 hotspot = Vector2(0, 0))
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCustomMouseCursor, _godot_object, image, shape, hotspot);
	}
	/**
	Feeds an $(D InputEvent) to the game. Can be used to artificially trigger input events from code.
	*/
	void parseInputEvent(InputEvent event)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.parseInputEvent, _godot_object, event);
	}
}
/// Returns: the InputSingleton
@property @nogc nothrow pragma(inline, true)
InputSingleton Input()
{
	checkClassBinding!InputSingleton();
	return InputSingleton(InputSingleton._classBinding._singleton);
}
