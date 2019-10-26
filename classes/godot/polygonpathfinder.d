/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.polygonpathfinder;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.resource;
import godot.reference;
/**

*/
@GodotBaseClass struct PolygonPathFinder
{
	enum string _GODOT_internal_name = "PolygonPathFinder";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("setup") GodotMethod!(void, PoolVector2Array, PoolIntArray) setup;
		@GodotName("find_path") GodotMethod!(PoolVector2Array, Vector2, Vector2) findPath;
		@GodotName("get_intersections") GodotMethod!(PoolVector2Array, Vector2, Vector2) getIntersections;
		@GodotName("get_closest_point") GodotMethod!(Vector2, Vector2) getClosestPoint;
		@GodotName("is_point_inside") GodotMethod!(bool, Vector2) isPointInside;
		@GodotName("set_point_penalty") GodotMethod!(void, long, double) setPointPenalty;
		@GodotName("get_point_penalty") GodotMethod!(double, long) getPointPenalty;
		@GodotName("get_bounds") GodotMethod!(Rect2) getBounds;
		@GodotName("_set_data") GodotMethod!(void, Dictionary) _setData;
		@GodotName("_get_data") GodotMethod!(Dictionary) _getData;
	}
	bool opEquals(in PolygonPathFinder other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PolygonPathFinder opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PolygonPathFinder _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PolygonPathFinder");
		if(constructor is null) return typeof(this).init;
		return cast(PolygonPathFinder)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setup(in PoolVector2Array points, in PoolIntArray connections)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setup, _godot_object, points, connections);
	}
	/**
	
	*/
	PoolVector2Array findPath(in Vector2 from, in Vector2 to)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(_classBinding.findPath, _godot_object, from, to);
	}
	/**
	
	*/
	PoolVector2Array getIntersections(in Vector2 from, in Vector2 to) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector2Array)(_classBinding.getIntersections, _godot_object, from, to);
	}
	/**
	
	*/
	Vector2 getClosestPoint(in Vector2 point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getClosestPoint, _godot_object, point);
	}
	/**
	
	*/
	bool isPointInside(in Vector2 point) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isPointInside, _godot_object, point);
	}
	/**
	
	*/
	void setPointPenalty(in long idx, in double penalty)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPointPenalty, _godot_object, idx, penalty);
	}
	/**
	
	*/
	double getPointPenalty(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPointPenalty, _godot_object, idx);
	}
	/**
	
	*/
	Rect2 getBounds() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getBounds, _godot_object);
	}
	/**
	
	*/
	void _setData(in Dictionary arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_data");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Dictionary _getData() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_data");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Dictionary);
	}
	/**
	
	*/
	@property Dictionary data()
	{
		return _getData();
	}
	/// ditto
	@property void data(Dictionary v)
	{
		_setData(v);
	}
}