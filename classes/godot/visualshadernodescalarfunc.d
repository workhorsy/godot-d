/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodescalarfunc;
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

*/
@GodotBaseClass struct VisualShaderNodeScalarFunc
{
	enum string _GODOT_internal_name = "VisualShaderNodeScalarFunc";
public:
@nogc nothrow:
	union { godot_object _godot_object; VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_function") GodotMethod!(void, long) setFunction;
		@GodotName("get_function") GodotMethod!(VisualShaderNodeScalarFunc.Function) getFunction;
	}
	bool opEquals(in VisualShaderNodeScalarFunc other) const { return _godot_object.ptr is other._godot_object.ptr; }
	VisualShaderNodeScalarFunc opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static VisualShaderNodeScalarFunc _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeScalarFunc");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeScalarFunc)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Function : int
	{
		/**
		
		*/
		funcSin = 0,
		/**
		
		*/
		funcCos = 1,
		/**
		
		*/
		funcTan = 2,
		/**
		
		*/
		funcAsin = 3,
		/**
		
		*/
		funcAcos = 4,
		/**
		
		*/
		funcAtan = 5,
		/**
		
		*/
		funcSinh = 6,
		/**
		
		*/
		funcCosh = 7,
		/**
		
		*/
		funcTanh = 8,
		/**
		
		*/
		funcLog = 9,
		/**
		
		*/
		funcExp = 10,
		/**
		
		*/
		funcSqrt = 11,
		/**
		
		*/
		funcAbs = 12,
		/**
		
		*/
		funcSign = 13,
		/**
		
		*/
		funcFloor = 14,
		/**
		
		*/
		funcRound = 15,
		/**
		
		*/
		funcCeil = 16,
		/**
		
		*/
		funcFrac = 17,
		/**
		
		*/
		funcSaturate = 18,
		/**
		
		*/
		funcNegate = 19,
	}
	/// 
	enum Constants : int
	{
		funcSin = 0,
		funcCos = 1,
		funcTan = 2,
		funcAsin = 3,
		funcAcos = 4,
		funcAtan = 5,
		funcSinh = 6,
		funcCosh = 7,
		funcTanh = 8,
		funcLog = 9,
		funcExp = 10,
		funcSqrt = 11,
		funcAbs = 12,
		funcSign = 13,
		funcFloor = 14,
		funcRound = 15,
		funcCeil = 16,
		funcFrac = 17,
		funcSaturate = 18,
		funcNegate = 19,
	}
	/**
	
	*/
	void setFunction(in long func)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFunction, _godot_object, func);
	}
	/**
	
	*/
	VisualShaderNodeScalarFunc.Function getFunction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VisualShaderNodeScalarFunc.Function)(_classBinding.getFunction, _godot_object);
	}
	/**
	
	*/
	@property VisualShaderNodeScalarFunc.Function _function()
	{
		return getFunction();
	}
	/// ditto
	@property void _function(long v)
	{
		setFunction(v);
	}
}