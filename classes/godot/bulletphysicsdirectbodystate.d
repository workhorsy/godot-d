/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.bulletphysicsdirectbodystate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.physicsdirectbodystate;
/**

*/
@GodotBaseClass struct BulletPhysicsDirectBodyState
{
	package(godot) enum string _GODOT_internal_name = "BulletPhysicsDirectBodyState";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PhysicsDirectBodyState _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in BulletPhysicsDirectBodyState other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) BulletPhysicsDirectBodyState opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of BulletPhysicsDirectBodyState.
	/// Note: use `memnew!BulletPhysicsDirectBodyState` instead.
	static BulletPhysicsDirectBodyState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("BulletPhysicsDirectBodyState");
		if(constructor is null) return typeof(this).init;
		return cast(BulletPhysicsDirectBodyState)(constructor());
	}
	@disable new(size_t s);
}