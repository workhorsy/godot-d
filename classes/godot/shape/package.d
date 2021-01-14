/**
Base class for all 3D shape resources.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.shape;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
import godot.reference;
/**
Base class for all 3D shape resources.

Nodes that inherit from this can be used as shapes for a $(D PhysicsBody) or $(D Area) objects.
*/
@GodotBaseClass struct Shape
{
	package(godot) enum string _GODOT_internal_name = "Shape";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_margin") GodotMethod!(double) getMargin;
		@GodotName("set_margin") GodotMethod!(void, double) setMargin;
	}
	/// 
	pragma(inline, true) bool opEquals(in Shape other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) Shape opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of Shape.
	/// Note: use `memnew!Shape` instead.
	static Shape _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Shape");
		if(constructor is null) return typeof(this).init;
		return cast(Shape)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getMargin, _godot_object);
	}
	/**
	
	*/
	void setMargin(in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setMargin, _godot_object, margin);
	}
	/**
	The collision margin for the shape.
	*/
	@property double margin()
	{
		return getMargin();
	}
	/// ditto
	@property void margin(double v)
	{
		setMargin(v);
	}
}