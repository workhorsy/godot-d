/**
Direct access object to a physics body in the $(D Physics2DServer).

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physics2ddirectbodystate;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.physics2ddirectspacestate;
/**
Direct access object to a physics body in the $(D Physics2DServer).

Provides direct access to a physics body in the $(D Physics2DServer), allowing safe changes to physics properties. This object is passed via the direct state callback of rigid/character bodies, and is intended for changing the direct state of that body. See $(D RigidBody2D._integrateForces).
*/
@GodotBaseClass struct Physics2DDirectBodyState
{
	enum string _GODOT_internal_name = "Physics2DDirectBodyState";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_total_gravity") GodotMethod!(Vector2) getTotalGravity;
		@GodotName("get_total_linear_damp") GodotMethod!(double) getTotalLinearDamp;
		@GodotName("get_total_angular_damp") GodotMethod!(double) getTotalAngularDamp;
		@GodotName("get_inverse_mass") GodotMethod!(double) getInverseMass;
		@GodotName("get_inverse_inertia") GodotMethod!(double) getInverseInertia;
		@GodotName("set_linear_velocity") GodotMethod!(void, Vector2) setLinearVelocity;
		@GodotName("get_linear_velocity") GodotMethod!(Vector2) getLinearVelocity;
		@GodotName("set_angular_velocity") GodotMethod!(void, double) setAngularVelocity;
		@GodotName("get_angular_velocity") GodotMethod!(double) getAngularVelocity;
		@GodotName("set_transform") GodotMethod!(void, Transform2D) setTransform;
		@GodotName("get_transform") GodotMethod!(Transform2D) getTransform;
		@GodotName("add_central_force") GodotMethod!(void, Vector2) addCentralForce;
		@GodotName("add_force") GodotMethod!(void, Vector2, Vector2) addForce;
		@GodotName("add_torque") GodotMethod!(void, double) addTorque;
		@GodotName("apply_central_impulse") GodotMethod!(void, Vector2) applyCentralImpulse;
		@GodotName("apply_torque_impulse") GodotMethod!(void, double) applyTorqueImpulse;
		@GodotName("apply_impulse") GodotMethod!(void, Vector2, Vector2) applyImpulse;
		@GodotName("set_sleep_state") GodotMethod!(void, bool) setSleepState;
		@GodotName("is_sleeping") GodotMethod!(bool) isSleeping;
		@GodotName("get_contact_count") GodotMethod!(long) getContactCount;
		@GodotName("get_contact_local_position") GodotMethod!(Vector2, long) getContactLocalPosition;
		@GodotName("get_contact_local_normal") GodotMethod!(Vector2, long) getContactLocalNormal;
		@GodotName("get_contact_local_shape") GodotMethod!(long, long) getContactLocalShape;
		@GodotName("get_contact_collider") GodotMethod!(RID, long) getContactCollider;
		@GodotName("get_contact_collider_position") GodotMethod!(Vector2, long) getContactColliderPosition;
		@GodotName("get_contact_collider_id") GodotMethod!(long, long) getContactColliderId;
		@GodotName("get_contact_collider_object") GodotMethod!(GodotObject, long) getContactColliderObject;
		@GodotName("get_contact_collider_shape") GodotMethod!(long, long) getContactColliderShape;
		@GodotName("get_contact_collider_shape_metadata") GodotMethod!(Variant, long) getContactColliderShapeMetadata;
		@GodotName("get_contact_collider_velocity_at_position") GodotMethod!(Vector2, long) getContactColliderVelocityAtPosition;
		@GodotName("get_step") GodotMethod!(double) getStep;
		@GodotName("integrate_forces") GodotMethod!(void) integrateForces;
		@GodotName("get_space_state") GodotMethod!(Physics2DDirectSpaceState) getSpaceState;
	}
	bool opEquals(in Physics2DDirectBodyState other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Physics2DDirectBodyState opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Physics2DDirectBodyState _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Physics2DDirectBodyState");
		if(constructor is null) return typeof(this).init;
		return cast(Physics2DDirectBodyState)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Vector2 getTotalGravity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getTotalGravity, _godot_object);
	}
	/**
	
	*/
	double getTotalLinearDamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTotalLinearDamp, _godot_object);
	}
	/**
	
	*/
	double getTotalAngularDamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getTotalAngularDamp, _godot_object);
	}
	/**
	
	*/
	double getInverseMass() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getInverseMass, _godot_object);
	}
	/**
	
	*/
	double getInverseInertia() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getInverseInertia, _godot_object);
	}
	/**
	
	*/
	void setLinearVelocity(in Vector2 velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLinearVelocity, _godot_object, velocity);
	}
	/**
	
	*/
	Vector2 getLinearVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getLinearVelocity, _godot_object);
	}
	/**
	
	*/
	void setAngularVelocity(in double velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAngularVelocity, _godot_object, velocity);
	}
	/**
	
	*/
	double getAngularVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAngularVelocity, _godot_object);
	}
	/**
	
	*/
	void setTransform(in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setTransform, _godot_object, transform);
	}
	/**
	
	*/
	Transform2D getTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(_classBinding.getTransform, _godot_object);
	}
	/**
	Adds a constant directional force without affecting rotation.
	*/
	void addCentralForce(in Vector2 force)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addCentralForce, _godot_object, force);
	}
	/**
	Adds a positioned force to the body. Both the force and the offset from the body origin are in global coordinates.
	*/
	void addForce(in Vector2 offset, in Vector2 force)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addForce, _godot_object, offset, force);
	}
	/**
	Adds a constant rotational force.
	*/
	void addTorque(in double torque)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addTorque, _godot_object, torque);
	}
	/**
	Applies a directional impulse without affecting rotation.
	*/
	void applyCentralImpulse(in Vector2 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.applyCentralImpulse, _godot_object, impulse);
	}
	/**
	Applies a rotational impulse to the body.
	*/
	void applyTorqueImpulse(in double impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.applyTorqueImpulse, _godot_object, impulse);
	}
	/**
	Applies a positioned impulse to the body. An impulse is time independent! Applying an impulse every frame would result in a framerate dependent force. For this reason it should only be used when simulating one-time impacts (use the "_force" functions otherwise). The offset uses the rotation of the global coordinate system, but is centered at the object's origin.
	*/
	void applyImpulse(in Vector2 offset, in Vector2 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.applyImpulse, _godot_object, offset, impulse);
	}
	/**
	
	*/
	void setSleepState(in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSleepState, _godot_object, enabled);
	}
	/**
	
	*/
	bool isSleeping() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSleeping, _godot_object);
	}
	/**
	Returns the number of contacts this body has with other bodies. Note that by default this returns 0 unless bodies are configured to log contacts. See $(D RigidBody2D.contactMonitor).
	*/
	long getContactCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getContactCount, _godot_object);
	}
	/**
	Returns the local position of the contact point.
	*/
	Vector2 getContactLocalPosition(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getContactLocalPosition, _godot_object, contact_idx);
	}
	/**
	Returns the local normal at the contact point.
	*/
	Vector2 getContactLocalNormal(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getContactLocalNormal, _godot_object, contact_idx);
	}
	/**
	Returns the local shape index of the collision.
	*/
	long getContactLocalShape(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getContactLocalShape, _godot_object, contact_idx);
	}
	/**
	Returns the collider's $(D RID).
	*/
	RID getContactCollider(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.getContactCollider, _godot_object, contact_idx);
	}
	/**
	Returns the contact position in the collider.
	*/
	Vector2 getContactColliderPosition(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getContactColliderPosition, _godot_object, contact_idx);
	}
	/**
	Returns the collider's object id.
	*/
	long getContactColliderId(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getContactColliderId, _godot_object, contact_idx);
	}
	/**
	Returns the collider object. This depends on how it was created (will return a scene node if such was used to create it).
	*/
	GodotObject getContactColliderObject(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotObject)(_classBinding.getContactColliderObject, _godot_object, contact_idx);
	}
	/**
	Returns the collider's shape index.
	*/
	long getContactColliderShape(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getContactColliderShape, _godot_object, contact_idx);
	}
	/**
	Returns the collided shape's metadata. This metadata is different from $(D GodotObject.getMeta), and is set with $(D Physics2DServer.shapeSetData).
	*/
	Variant getContactColliderShapeMetadata(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getContactColliderShapeMetadata, _godot_object, contact_idx);
	}
	/**
	Returns the linear velocity vector at the collider's contact point.
	*/
	Vector2 getContactColliderVelocityAtPosition(in long contact_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getContactColliderVelocityAtPosition, _godot_object, contact_idx);
	}
	/**
	
	*/
	double getStep() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getStep, _godot_object);
	}
	/**
	Calls the built-in force integration code.
	*/
	void integrateForces()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.integrateForces, _godot_object);
	}
	/**
	Returns the current state of the space, useful for queries.
	*/
	Physics2DDirectSpaceState getSpaceState()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Physics2DDirectSpaceState)(_classBinding.getSpaceState, _godot_object);
	}
	/**
	The timestep (delta) used for the simulation.
	*/
	@property double step()
	{
		return getStep();
	}
	/**
	The inverse of the mass of the body.
	*/
	@property double inverseMass()
	{
		return getInverseMass();
	}
	/**
	The inverse of the inertia of the body.
	*/
	@property double inverseInertia()
	{
		return getInverseInertia();
	}
	/**
	The rate at which the body stops rotating, if there are not any other forces moving it.
	*/
	@property double totalAngularDamp()
	{
		return getTotalAngularDamp();
	}
	/**
	The rate at which the body stops moving, if there are not any other forces moving it.
	*/
	@property double totalLinearDamp()
	{
		return getTotalLinearDamp();
	}
	/**
	The total gravity vector being currently applied to this body.
	*/
	@property Vector2 totalGravity()
	{
		return getTotalGravity();
	}
	/**
	The body's rotational velocity.
	*/
	@property double angularVelocity()
	{
		return getAngularVelocity();
	}
	/// ditto
	@property void angularVelocity(double v)
	{
		setAngularVelocity(v);
	}
	/**
	The body's linear velocity.
	*/
	@property Vector2 linearVelocity()
	{
		return getLinearVelocity();
	}
	/// ditto
	@property void linearVelocity(Vector2 v)
	{
		setLinearVelocity(v);
	}
	/**
	If `true`, this body is currently sleeping (not active).
	*/
	@property bool sleeping()
	{
		return isSleeping();
	}
	/// ditto
	@property void sleeping(bool v)
	{
		setSleepState(v);
	}
	/**
	The body's transformation matrix.
	*/
	@property Transform2D transform()
	{
		return getTransform();
	}
	/// ditto
	@property void transform(Transform2D v)
	{
		setTransform(v);
	}
}