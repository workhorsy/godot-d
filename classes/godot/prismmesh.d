/**
Class representing a prism-shaped $(D PrimitiveMesh).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.prismmesh;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.primitivemesh;
import godot.mesh;
import godot.resource;
import godot.reference;
/**
Class representing a prism-shaped $(D PrimitiveMesh).


*/
@GodotBaseClass struct PrismMesh
{
	enum string _GODOT_internal_name = "PrismMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; PrimitiveMesh _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_left_to_right") GodotMethod!(void, double) setLeftToRight;
		@GodotName("get_left_to_right") GodotMethod!(double) getLeftToRight;
		@GodotName("set_size") GodotMethod!(void, Vector3) setSize;
		@GodotName("get_size") GodotMethod!(Vector3) getSize;
		@GodotName("set_subdivide_width") GodotMethod!(void, long) setSubdivideWidth;
		@GodotName("get_subdivide_width") GodotMethod!(long) getSubdivideWidth;
		@GodotName("set_subdivide_height") GodotMethod!(void, long) setSubdivideHeight;
		@GodotName("get_subdivide_height") GodotMethod!(long) getSubdivideHeight;
		@GodotName("set_subdivide_depth") GodotMethod!(void, long) setSubdivideDepth;
		@GodotName("get_subdivide_depth") GodotMethod!(long) getSubdivideDepth;
	}
	bool opEquals(in PrismMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PrismMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PrismMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PrismMesh");
		if(constructor is null) return typeof(this).init;
		return cast(PrismMesh)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setLeftToRight(in double left_to_right)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLeftToRight, _godot_object, left_to_right);
	}
	/**
	
	*/
	double getLeftToRight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getLeftToRight, _godot_object);
	}
	/**
	
	*/
	void setSize(in Vector3 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSize, _godot_object, size);
	}
	/**
	
	*/
	Vector3 getSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getSize, _godot_object);
	}
	/**
	
	*/
	void setSubdivideWidth(in long segments)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSubdivideWidth, _godot_object, segments);
	}
	/**
	
	*/
	long getSubdivideWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSubdivideWidth, _godot_object);
	}
	/**
	
	*/
	void setSubdivideHeight(in long segments)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSubdivideHeight, _godot_object, segments);
	}
	/**
	
	*/
	long getSubdivideHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSubdivideHeight, _godot_object);
	}
	/**
	
	*/
	void setSubdivideDepth(in long segments)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSubdivideDepth, _godot_object, segments);
	}
	/**
	
	*/
	long getSubdivideDepth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSubdivideDepth, _godot_object);
	}
	/**
	Displacement of the upper edge along the x-axis. 0.0 positions edge straight above the bottome left edge. Defaults to 0.5 (positioned on the midpoint).
	*/
	@property double leftToRight()
	{
		return getLeftToRight();
	}
	/// ditto
	@property void leftToRight(double v)
	{
		setLeftToRight(v);
	}
	/**
	Size of the prism. Defaults to (2.0, 2.0, 2.0).
	*/
	@property Vector3 size()
	{
		return getSize();
	}
	/// ditto
	@property void size(Vector3 v)
	{
		setSize(v);
	}
	/**
	Number of added edge loops along the x-axis. Defaults to 0.
	*/
	@property long subdivideWidth()
	{
		return getSubdivideWidth();
	}
	/// ditto
	@property void subdivideWidth(long v)
	{
		setSubdivideWidth(v);
	}
	/**
	Number of added edge loops along the y-axis. Defaults to 0.
	*/
	@property long subdivideHeight()
	{
		return getSubdivideHeight();
	}
	/// ditto
	@property void subdivideHeight(long v)
	{
		setSubdivideHeight(v);
	}
	/**
	Number of added edge loops along the z-axis. Defaults to 0.
	*/
	@property long subdivideDepth()
	{
		return getSubdivideDepth();
	}
	/// ditto
	@property void subdivideDepth(long v)
	{
		setSubdivideDepth(v);
	}
}