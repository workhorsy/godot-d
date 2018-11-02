/**
Gets a constant from a given class.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualscriptclassconstant;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualscriptnode;
import godot.resource;
import godot.reference;
/**
Gets a constant from a given class.

This node returns a constant from a given class, such as $(D @GlobalScope.TYPE_INT). See the given class' documentation for available constants.
$(B Input Ports:)
none
$(B Output Ports:)
- Data (variant): `value`
*/
@GodotBaseClass struct VisualScriptClassConstant
{
	enum string _GODOT_internal_name = "VisualScriptClassConstant";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualScriptNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_class_constant") GodotMethod!(void, String) setClassConstant;
		@GodotName("get_class_constant") GodotMethod!(String) getClassConstant;
		@GodotName("set_base_type") GodotMethod!(void, String) setBaseType;
		@GodotName("get_base_type") GodotMethod!(String) getBaseType;
	}
	bool opEquals(in VisualScriptClassConstant other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualScriptClassConstant opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualScriptClassConstant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualScriptClassConstant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualScriptClassConstant)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setClassConstant(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setClassConstant, _godot_object, name);
	}
	/**
	
	*/
	String getClassConstant()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getClassConstant, _godot_object);
	}
	/**
	
	*/
	void setBaseType(StringArg0)(in StringArg0 name)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setBaseType, _godot_object, name);
	}
	/**
	
	*/
	String getBaseType()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getBaseType, _godot_object);
	}
	/**
	The constant's parent class.
	*/
	@property String baseType()
	{
		return getBaseType();
	}
	/// ditto
	@property void baseType(String v)
	{
		setBaseType(v);
	}
	/**
	The constant to return. See the given class for its available constants.
	*/
	@property String constant()
	{
		return getClassConstant();
	}
	/// ditto
	@property void constant(String v)
	{
		setClassConstant(v);
	}
}
