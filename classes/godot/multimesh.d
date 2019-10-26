/**
Provides high performance mesh instancing.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.multimesh;
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
import godot.mesh;
import godot.reference;
/**
Provides high performance mesh instancing.

MultiMesh provides low level mesh instancing. Drawing thousands of $(D MeshInstance) nodes can be slow because each object is submitted to the GPU to be drawn individually.
MultiMesh is much faster because it can draw thousands of instances with a single draw call, resulting in less API overhead.
As a drawback, if the instances are too far away of each other, performance may be reduced as every single instance will always rendered (they are spatially indexed as one, for the whole object).
Since instances may have any behavior, the AABB used for visibility must be provided by the user.
*/
@GodotBaseClass struct MultiMesh
{
	enum string _GODOT_internal_name = "MultiMesh";
public:
@nogc nothrow:
	union { godot_object _godot_object; Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_mesh") GodotMethod!(void, Mesh) setMesh;
		@GodotName("get_mesh") GodotMethod!(Mesh) getMesh;
		@GodotName("set_color_format") GodotMethod!(void, long) setColorFormat;
		@GodotName("get_color_format") GodotMethod!(MultiMesh.ColorFormat) getColorFormat;
		@GodotName("set_custom_data_format") GodotMethod!(void, long) setCustomDataFormat;
		@GodotName("get_custom_data_format") GodotMethod!(MultiMesh.CustomDataFormat) getCustomDataFormat;
		@GodotName("set_transform_format") GodotMethod!(void, long) setTransformFormat;
		@GodotName("get_transform_format") GodotMethod!(MultiMesh.TransformFormat) getTransformFormat;
		@GodotName("set_instance_count") GodotMethod!(void, long) setInstanceCount;
		@GodotName("get_instance_count") GodotMethod!(long) getInstanceCount;
		@GodotName("set_visible_instance_count") GodotMethod!(void, long) setVisibleInstanceCount;
		@GodotName("get_visible_instance_count") GodotMethod!(long) getVisibleInstanceCount;
		@GodotName("set_instance_transform") GodotMethod!(void, long, Transform) setInstanceTransform;
		@GodotName("set_instance_transform_2d") GodotMethod!(void, long, Transform2D) setInstanceTransform2d;
		@GodotName("get_instance_transform") GodotMethod!(Transform, long) getInstanceTransform;
		@GodotName("get_instance_transform_2d") GodotMethod!(Transform2D, long) getInstanceTransform2d;
		@GodotName("set_instance_color") GodotMethod!(void, long, Color) setInstanceColor;
		@GodotName("get_instance_color") GodotMethod!(Color, long) getInstanceColor;
		@GodotName("set_instance_custom_data") GodotMethod!(void, long, Color) setInstanceCustomData;
		@GodotName("get_instance_custom_data") GodotMethod!(Color, long) getInstanceCustomData;
		@GodotName("get_aabb") GodotMethod!(AABB) getAabb;
		@GodotName("_set_transform_array") GodotMethod!(void, PoolVector3Array) _setTransformArray;
		@GodotName("_get_transform_array") GodotMethod!(PoolVector3Array) _getTransformArray;
		@GodotName("_set_color_array") GodotMethod!(void, PoolColorArray) _setColorArray;
		@GodotName("_get_color_array") GodotMethod!(PoolColorArray) _getColorArray;
		@GodotName("_set_custom_data_array") GodotMethod!(void, PoolColorArray) _setCustomDataArray;
		@GodotName("_get_custom_data_array") GodotMethod!(PoolColorArray) _getCustomDataArray;
	}
	bool opEquals(in MultiMesh other) const { return _godot_object.ptr is other._godot_object.ptr; }
	MultiMesh opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static MultiMesh _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("MultiMesh");
		if(constructor is null) return typeof(this).init;
		return cast(MultiMesh)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum TransformFormat : int
	{
		/**
		Use this when using 2D transforms.
		*/
		transform2d = 0,
		/**
		Use this when using 3D transforms.
		*/
		transform3d = 1,
	}
	/// 
	enum CustomDataFormat : int
	{
		/**
		Use when you are not using per-instance custom data.
		*/
		customDataNone = 0,
		/**
		Compress custom_data into 8 bits when passing to shader. This uses less memory and can be faster, but loses precision.
		*/
		customData8bit = 1,
		/**
		The $(D Color) passed into $(D setInstanceCustomData) will use 4 floats. Use this for highest precision.
		*/
		customDataFloat = 2,
	}
	/// 
	enum ColorFormat : int
	{
		/**
		Use when you are not using per-instance $(D Color)s.
		*/
		colorNone = 0,
		/**
		Compress $(D Color) data into 8 bits when passing to shader. This uses less memory and can be faster, but the $(D Color) loses precision.
		*/
		color8bit = 1,
		/**
		The $(D Color) passed into $(D setInstanceColor) will use 4 floats. Use this for highest precision $(D Color).
		*/
		colorFloat = 2,
	}
	/// 
	enum Constants : int
	{
		colorNone = 0,
		transform2d = 0,
		customDataNone = 0,
		customData8bit = 1,
		transform3d = 1,
		color8bit = 1,
		colorFloat = 2,
		customDataFloat = 2,
	}
	/**
	
	*/
	void setMesh(Mesh mesh)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMesh, _godot_object, mesh);
	}
	/**
	
	*/
	Ref!Mesh getMesh() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Mesh)(_classBinding.getMesh, _godot_object);
	}
	/**
	
	*/
	void setColorFormat(in long format)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setColorFormat, _godot_object, format);
	}
	/**
	
	*/
	MultiMesh.ColorFormat getColorFormat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MultiMesh.ColorFormat)(_classBinding.getColorFormat, _godot_object);
	}
	/**
	
	*/
	void setCustomDataFormat(in long format)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setCustomDataFormat, _godot_object, format);
	}
	/**
	
	*/
	MultiMesh.CustomDataFormat getCustomDataFormat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MultiMesh.CustomDataFormat)(_classBinding.getCustomDataFormat, _godot_object);
	}
	/**
	
	*/
	void setTransformFormat(in long format)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTransformFormat, _godot_object, format);
	}
	/**
	
	*/
	MultiMesh.TransformFormat getTransformFormat() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(MultiMesh.TransformFormat)(_classBinding.getTransformFormat, _godot_object);
	}
	/**
	
	*/
	void setInstanceCount(in long count)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInstanceCount, _godot_object, count);
	}
	/**
	
	*/
	long getInstanceCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getInstanceCount, _godot_object);
	}
	/**
	
	*/
	void setVisibleInstanceCount(in long count)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setVisibleInstanceCount, _godot_object, count);
	}
	/**
	
	*/
	long getVisibleInstanceCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getVisibleInstanceCount, _godot_object);
	}
	/**
	Set the transform for a specific instance.
	*/
	void setInstanceTransform(in long instance, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInstanceTransform, _godot_object, instance, transform);
	}
	/**
	
	*/
	void setInstanceTransform2d(in long instance, in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInstanceTransform2d, _godot_object, instance, transform);
	}
	/**
	Return the transform of a specific instance.
	*/
	Transform getInstanceTransform(in long instance) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.getInstanceTransform, _godot_object, instance);
	}
	/**
	
	*/
	Transform2D getInstanceTransform2d(in long instance) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.getInstanceTransform2d, _godot_object, instance);
	}
	/**
	Set the color of a specific instance.
	For the color to take effect, ensure that $(D colorFormat) is non-`null` on the $(D MultiMesh) and $(D SpatialMaterial.vertexColorUseAsAlbedo) is `true` on the material.
	*/
	void setInstanceColor(in long instance, in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInstanceColor, _godot_object, instance, color);
	}
	/**
	Get the color of a specific instance.
	*/
	Color getInstanceColor(in long instance) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getInstanceColor, _godot_object, instance);
	}
	/**
	Set custom data for a specific instance. Although $(D Color) is used, it is just a container for 4 numbers.
	*/
	void setInstanceCustomData(in long instance, in Color custom_data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setInstanceCustomData, _godot_object, instance, custom_data);
	}
	/**
	Return the custom data that has been set for a specific instance.
	*/
	Color getInstanceCustomData(in long instance) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getInstanceCustomData, _godot_object, instance);
	}
	/**
	Return the visibility AABB.
	*/
	AABB getAabb() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(AABB)(_classBinding.getAabb, _godot_object);
	}
	/**
	
	*/
	void _setTransformArray(in PoolVector3Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_transform_array");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	PoolVector3Array _getTransformArray() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_transform_array");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolVector3Array);
	}
	/**
	
	*/
	void _setColorArray(in PoolColorArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_color_array");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	PoolColorArray _getColorArray() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_color_array");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolColorArray);
	}
	/**
	
	*/
	void _setCustomDataArray(in PoolColorArray arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_custom_data_array");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	PoolColorArray _getCustomDataArray() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_custom_data_array");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!PoolColorArray);
	}
	/**
	Format of colors in color array that gets passed to shader.
	*/
	@property MultiMesh.ColorFormat colorFormat()
	{
		return getColorFormat();
	}
	/// ditto
	@property void colorFormat(long v)
	{
		setColorFormat(v);
	}
	/**
	Format of transform used to transform mesh, either 2D or 3D.
	*/
	@property MultiMesh.TransformFormat transformFormat()
	{
		return getTransformFormat();
	}
	/// ditto
	@property void transformFormat(long v)
	{
		setTransformFormat(v);
	}
	/**
	Format of custom data in custom data array that gets passed to shader.
	*/
	@property MultiMesh.CustomDataFormat customDataFormat()
	{
		return getCustomDataFormat();
	}
	/// ditto
	@property void customDataFormat(long v)
	{
		setCustomDataFormat(v);
	}
	/**
	Number of instances that will get drawn.
	*/
	@property long instanceCount()
	{
		return getInstanceCount();
	}
	/// ditto
	@property void instanceCount(long v)
	{
		setInstanceCount(v);
	}
	/**
	
	*/
	@property long visibleInstanceCount()
	{
		return getVisibleInstanceCount();
	}
	/// ditto
	@property void visibleInstanceCount(long v)
	{
		setVisibleInstanceCount(v);
	}
	/**
	Mesh to be drawn.
	*/
	@property Mesh mesh()
	{
		return getMesh();
	}
	/// ditto
	@property void mesh(Mesh v)
	{
		setMesh(v);
	}
	/**
	
	*/
	@property PoolVector3Array transformArray()
	{
		return _getTransformArray();
	}
	/// ditto
	@property void transformArray(PoolVector3Array v)
	{
		_setTransformArray(v);
	}
	/**
	
	*/
	@property PoolColorArray colorArray()
	{
		return _getColorArray();
	}
	/// ditto
	@property void colorArray(PoolColorArray v)
	{
		_setColorArray(v);
	}
	/**
	
	*/
	@property PoolColorArray customDataArray()
	{
		return _getCustomDataArray();
	}
	/// ditto
	@property void customDataArray(PoolColorArray v)
	{
		_setCustomDataArray(v);
	}
}