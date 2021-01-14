/**
Multiplies a $(D Transform) and a $(D Vector3) within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodetransformvecmult;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualshadernode;
import godot.resource;
import godot.reference;
/**
Multiplies a $(D Transform) and a $(D Vector3) within the visual shader graph.

A multiplication operation on a transform (4x4 matrix) and a vector, with support for different multiplication operators.
*/
@GodotBaseClass struct VisualShaderNodeTransformVecMult
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeTransformVecMult";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_operator") GodotMethod!(VisualShaderNodeTransformVecMult.Operator) getOperator;
		@GodotName("set_operator") GodotMethod!(void, long) setOperator;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeTransformVecMult other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) VisualShaderNodeTransformVecMult opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VisualShaderNodeTransformVecMult.
	/// Note: use `memnew!VisualShaderNodeTransformVecMult` instead.
	static VisualShaderNodeTransformVecMult _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeTransformVecMult");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeTransformVecMult)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Operator : int
	{
		/**
		Multiplies transform `a` by the vector `b`.
		*/
		opAxb = 0,
		/**
		Multiplies vector `b` by the transform `a`.
		*/
		opBxa = 1,
		/**
		Multiplies transform `a` by the vector `b`, skipping the last row and column of the transform.
		*/
		op3x3Axb = 2,
		/**
		Multiplies vector `b` by the transform `a`, skipping the last row and column of the transform.
		*/
		op3x3Bxa = 3,
	}
	/// 
	enum Constants : int
	{
		opAxb = 0,
		opBxa = 1,
		op3x3Axb = 2,
		op3x3Bxa = 3,
	}
	/**
	
	*/
	VisualShaderNodeTransformVecMult.Operator getOperator() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeTransformVecMult.Operator)(GDNativeClassBinding.getOperator, _godot_object);
	}
	/**
	
	*/
	void setOperator(in long op)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setOperator, _godot_object, op);
	}
	/**
	The multiplication type to be performed. See $(D operator) for options.
	*/
	@property VisualShaderNodeTransformVecMult.Operator operator()
	{
		return getOperator();
	}
	/// ditto
	@property void operator(long v)
	{
		setOperator(v);
	}
}