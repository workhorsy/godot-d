/**
Calculates a vector SmoothStep function using scalar within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodevectorscalarsmoothstep;
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
Calculates a vector SmoothStep function using scalar within the visual shader graph.

Translates to `smoothstep(edge0, edge1, x)` in the shader language, where `x` is a scalar.
Returns `0.0` if `x` is smaller than `edge0` and `1.0` if `x` is larger than `edge1`. Otherwise the return value is interpolated between `0.0` and `1.0` using Hermite polynomials.
*/
@GodotBaseClass struct VisualShaderNodeVectorScalarSmoothStep
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeVectorScalarSmoothStep";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeVectorScalarSmoothStep other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) VisualShaderNodeVectorScalarSmoothStep opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VisualShaderNodeVectorScalarSmoothStep.
	/// Note: use `memnew!VisualShaderNodeVectorScalarSmoothStep` instead.
	static VisualShaderNodeVectorScalarSmoothStep _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeVectorScalarSmoothStep");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeVectorScalarSmoothStep)(constructor());
	}
	@disable new(size_t s);
}