/**
Rectangle shape for 2D collisions.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.rectangleshape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.shape2d;
import godot.resource;
import godot.reference;
/**
Rectangle shape for 2D collisions.

This shape is useful for modeling box-like 2D objects.
*/
@GodotBaseClass struct RectangleShape2D
{
	enum string _GODOT_internal_name = "RectangleShape2D";
public:
@nogc nothrow:
	union { godot_object _godot_object; Shape2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_extents") GodotMethod!(void, Vector2) setExtents;
		@GodotName("get_extents") GodotMethod!(Vector2) getExtents;
	}
	bool opEquals(in RectangleShape2D other) const { return _godot_object.ptr is other._godot_object.ptr; }
	RectangleShape2D opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static RectangleShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("RectangleShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(RectangleShape2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setExtents(in Vector2 extents)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExtents, _godot_object, extents);
	}
	/**
	
	*/
	Vector2 getExtents() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getExtents, _godot_object);
	}
	/**
	The rectangle's half extents. The width and height of this shape is twice the half extents.
	*/
	@property Vector2 extents()
	{
		return getExtents();
	}
	/// ditto
	@property void extents(Vector2 v)
	{
		setExtents(v);
	}
}
