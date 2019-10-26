/**
Base class for all 3D joints

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.joint;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.spatial;
import godot.node;
/**
Base class for all 3D joints

Joints are used to bind together two physics bodies. They have a solver priority and can define if the bodies of the two attached nodes should be able to collide with each other.
*/
@GodotBaseClass struct Joint
{
	enum string _GODOT_internal_name = "Joint";
public:
@nogc nothrow:
	union { godot_object _godot_object; Spatial _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_node_a") GodotMethod!(void, NodePath) setNodeA;
		@GodotName("get_node_a") GodotMethod!(NodePath) getNodeA;
		@GodotName("set_node_b") GodotMethod!(void, NodePath) setNodeB;
		@GodotName("get_node_b") GodotMethod!(NodePath) getNodeB;
		@GodotName("set_solver_priority") GodotMethod!(void, long) setSolverPriority;
		@GodotName("get_solver_priority") GodotMethod!(long) getSolverPriority;
		@GodotName("set_exclude_nodes_from_collision") GodotMethod!(void, bool) setExcludeNodesFromCollision;
		@GodotName("get_exclude_nodes_from_collision") GodotMethod!(bool) getExcludeNodesFromCollision;
	}
	bool opEquals(in Joint other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Joint opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Joint _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Joint");
		if(constructor is null) return typeof(this).init;
		return cast(Joint)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setNodeA(NodePathArg0)(in NodePathArg0 node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNodeA, _godot_object, node);
	}
	/**
	
	*/
	NodePath getNodeA() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getNodeA, _godot_object);
	}
	/**
	
	*/
	void setNodeB(NodePathArg0)(in NodePathArg0 node)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setNodeB, _godot_object, node);
	}
	/**
	
	*/
	NodePath getNodeB() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(NodePath)(_classBinding.getNodeB, _godot_object);
	}
	/**
	
	*/
	void setSolverPriority(in long priority)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSolverPriority, _godot_object, priority);
	}
	/**
	
	*/
	long getSolverPriority() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSolverPriority, _godot_object);
	}
	/**
	
	*/
	void setExcludeNodesFromCollision(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExcludeNodesFromCollision, _godot_object, enable);
	}
	/**
	
	*/
	bool getExcludeNodesFromCollision() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getExcludeNodesFromCollision, _godot_object);
	}
	/**
	The node attached to the first side (A) of the joint.
	*/
	@property NodePath nodesNodeA()
	{
		return getNodeA();
	}
	/// ditto
	@property void nodesNodeA(NodePath v)
	{
		setNodeA(v);
	}
	/**
	The node attached to the second side (B) of the joint.
	*/
	@property NodePath nodesNodeB()
	{
		return getNodeB();
	}
	/// ditto
	@property void nodesNodeB(NodePath v)
	{
		setNodeB(v);
	}
	/**
	The priority used to define which solver is executed first for multiple joints. The lower the value, the higher the priority.
	*/
	@property long solverPriority()
	{
		return getSolverPriority();
	}
	/// ditto
	@property void solverPriority(long v)
	{
		setSolverPriority(v);
	}
	/**
	If `true`, the two bodies of the nodes are not able to collide with each other.
	*/
	@property bool collisionExcludeNodes()
	{
		return getExcludeNodesFromCollision();
	}
	/// ditto
	@property void collisionExcludeNodes(bool v)
	{
		setExcludeNodesFromCollision(v);
	}
}