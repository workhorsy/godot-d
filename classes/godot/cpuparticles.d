/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.cpuparticles;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.geometryinstance;
import godot.mesh;
import godot.curve;
import godot.gradient;
import godot.node;
import godot.visualinstance;
import godot.spatial;
/**

*/
@GodotBaseClass struct CPUParticles
{
	enum string _GODOT_internal_name = "CPUParticles";
public:
@nogc nothrow:
	union { godot_object _godot_object; GeometryInstance _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_emitting") GodotMethod!(void, bool) setEmitting;
		@GodotName("set_amount") GodotMethod!(void, long) setAmount;
		@GodotName("set_lifetime") GodotMethod!(void, double) setLifetime;
		@GodotName("set_one_shot") GodotMethod!(void, bool) setOneShot;
		@GodotName("set_pre_process_time") GodotMethod!(void, double) setPreProcessTime;
		@GodotName("set_explosiveness_ratio") GodotMethod!(void, double) setExplosivenessRatio;
		@GodotName("set_randomness_ratio") GodotMethod!(void, double) setRandomnessRatio;
		@GodotName("set_use_local_coordinates") GodotMethod!(void, bool) setUseLocalCoordinates;
		@GodotName("set_fixed_fps") GodotMethod!(void, long) setFixedFps;
		@GodotName("set_fractional_delta") GodotMethod!(void, bool) setFractionalDelta;
		@GodotName("set_speed_scale") GodotMethod!(void, double) setSpeedScale;
		@GodotName("is_emitting") GodotMethod!(bool) isEmitting;
		@GodotName("get_amount") GodotMethod!(long) getAmount;
		@GodotName("get_lifetime") GodotMethod!(double) getLifetime;
		@GodotName("get_one_shot") GodotMethod!(bool) getOneShot;
		@GodotName("get_pre_process_time") GodotMethod!(double) getPreProcessTime;
		@GodotName("get_explosiveness_ratio") GodotMethod!(double) getExplosivenessRatio;
		@GodotName("get_randomness_ratio") GodotMethod!(double) getRandomnessRatio;
		@GodotName("get_use_local_coordinates") GodotMethod!(bool) getUseLocalCoordinates;
		@GodotName("get_fixed_fps") GodotMethod!(long) getFixedFps;
		@GodotName("get_fractional_delta") GodotMethod!(bool) getFractionalDelta;
		@GodotName("get_speed_scale") GodotMethod!(double) getSpeedScale;
		@GodotName("set_draw_order") GodotMethod!(void, long) setDrawOrder;
		@GodotName("get_draw_order") GodotMethod!(CPUParticles.DrawOrder) getDrawOrder;
		@GodotName("set_mesh") GodotMethod!(void, Mesh) setMesh;
		@GodotName("get_mesh") GodotMethod!(Mesh) getMesh;
		@GodotName("restart") GodotMethod!(void) restart;
		@GodotName("set_spread") GodotMethod!(void, double) setSpread;
		@GodotName("get_spread") GodotMethod!(double) getSpread;
		@GodotName("set_flatness") GodotMethod!(void, double) setFlatness;
		@GodotName("get_flatness") GodotMethod!(double) getFlatness;
		@GodotName("set_param") GodotMethod!(void, long, double) setParam;
		@GodotName("get_param") GodotMethod!(double, long) getParam;
		@GodotName("set_param_randomness") GodotMethod!(void, long, double) setParamRandomness;
		@GodotName("get_param_randomness") GodotMethod!(double, long) getParamRandomness;
		@GodotName("set_param_curve") GodotMethod!(void, long, Curve) setParamCurve;
		@GodotName("get_param_curve") GodotMethod!(Curve, long) getParamCurve;
		@GodotName("set_color") GodotMethod!(void, Color) setColor;
		@GodotName("get_color") GodotMethod!(Color) getColor;
		@GodotName("set_color_ramp") GodotMethod!(void, Gradient) setColorRamp;
		@GodotName("get_color_ramp") GodotMethod!(Gradient) getColorRamp;
		@GodotName("set_particle_flag") GodotMethod!(void, long, bool) setParticleFlag;
		@GodotName("get_particle_flag") GodotMethod!(bool, long) getParticleFlag;
		@GodotName("set_emission_shape") GodotMethod!(void, long) setEmissionShape;
		@GodotName("get_emission_shape") GodotMethod!(CPUParticles.EmissionShape) getEmissionShape;
		@GodotName("set_emission_sphere_radius") GodotMethod!(void, double) setEmissionSphereRadius;
		@GodotName("get_emission_sphere_radius") GodotMethod!(double) getEmissionSphereRadius;
		@GodotName("set_emission_box_extents") GodotMethod!(void, Vector3) setEmissionBoxExtents;
		@GodotName("get_emission_box_extents") GodotMethod!(Vector3) getEmissionBoxExtents;
		@GodotName("set_emission_points") GodotMethod!(void, PoolVector3Array) setEmissionPoints;
		@GodotName("get_emission_points") GodotMethod!(PoolVector3Array) getEmissionPoints;
		@GodotName("set_emission_normals") GodotMethod!(void, PoolVector3Array) setEmissionNormals;
		@GodotName("get_emission_normals") GodotMethod!(PoolVector3Array) getEmissionNormals;
		@GodotName("set_emission_colors") GodotMethod!(void, PoolColorArray) setEmissionColors;
		@GodotName("get_emission_colors") GodotMethod!(PoolColorArray) getEmissionColors;
		@GodotName("get_gravity") GodotMethod!(Vector3) getGravity;
		@GodotName("set_gravity") GodotMethod!(void, Vector3) setGravity;
		@GodotName("convert_from_particles") GodotMethod!(void, Node) convertFromParticles;
		@GodotName("_update_render_thread") GodotMethod!(void) _updateRenderThread;
	}
	bool opEquals(in CPUParticles other) const { return _godot_object.ptr is other._godot_object.ptr; }
	CPUParticles opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static CPUParticles _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CPUParticles");
		if(constructor is null) return typeof(this).init;
		return cast(CPUParticles)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum Flags : int
	{
		/**
		
		*/
		flagAlignYToVelocity = 0,
		/**
		
		*/
		flagRotateY = 1,
		/**
		
		*/
		flagMax = 3,
	}
	/// 
	enum EmissionShape : int
	{
		/**
		
		*/
		emissionShapePoint = 0,
		/**
		
		*/
		emissionShapeSphere = 1,
		/**
		
		*/
		emissionShapeBox = 2,
		/**
		
		*/
		emissionShapePoints = 3,
		/**
		
		*/
		emissionShapeDirectedPoints = 4,
	}
	/// 
	enum Parameter : int
	{
		/**
		
		*/
		paramInitialLinearVelocity = 0,
		/**
		
		*/
		paramAngularVelocity = 1,
		/**
		
		*/
		paramLinearAccel = 2,
		/**
		
		*/
		paramRadialAccel = 3,
		/**
		
		*/
		paramTangentialAccel = 4,
		/**
		
		*/
		paramDamping = 5,
		/**
		
		*/
		paramAngle = 6,
		/**
		
		*/
		paramScale = 7,
		/**
		
		*/
		paramHueVariation = 8,
		/**
		
		*/
		paramAnimSpeed = 9,
		/**
		
		*/
		paramAnimOffset = 10,
		/**
		
		*/
		paramMax = 11,
	}
	/// 
	enum DrawOrder : int
	{
		/**
		
		*/
		drawOrderIndex = 0,
		/**
		
		*/
		drawOrderLifetime = 1,
		/**
		
		*/
		drawOrderViewDepth = 2,
	}
	/// 
	enum Constants : int
	{
		flagAlignYToVelocity = 0,
		paramInitialLinearVelocity = 0,
		emissionShapePoint = 0,
		drawOrderIndex = 0,
		paramAngularVelocity = 1,
		drawOrderLifetime = 1,
		emissionShapeSphere = 1,
		flagRotateY = 1,
		drawOrderViewDepth = 2,
		paramLinearAccel = 2,
		emissionShapeBox = 2,
		emissionShapePoints = 3,
		flagMax = 3,
		paramRadialAccel = 3,
		paramTangentialAccel = 4,
		emissionShapeDirectedPoints = 4,
		paramDamping = 5,
		paramAngle = 6,
		paramScale = 7,
		paramHueVariation = 8,
		paramAnimSpeed = 9,
		paramAnimOffset = 10,
		paramMax = 11,
	}
	/**
	
	*/
	void setEmitting(in bool emitting)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmitting, _godot_object, emitting);
	}
	/**
	
	*/
	void setAmount(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAmount, _godot_object, amount);
	}
	/**
	
	*/
	void setLifetime(in double secs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setLifetime, _godot_object, secs);
	}
	/**
	
	*/
	void setOneShot(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setOneShot, _godot_object, enable);
	}
	/**
	
	*/
	void setPreProcessTime(in double secs)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setPreProcessTime, _godot_object, secs);
	}
	/**
	
	*/
	void setExplosivenessRatio(in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setExplosivenessRatio, _godot_object, ratio);
	}
	/**
	
	*/
	void setRandomnessRatio(in double ratio)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRandomnessRatio, _godot_object, ratio);
	}
	/**
	
	*/
	void setUseLocalCoordinates(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setUseLocalCoordinates, _godot_object, enable);
	}
	/**
	
	*/
	void setFixedFps(in long fps)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFixedFps, _godot_object, fps);
	}
	/**
	
	*/
	void setFractionalDelta(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFractionalDelta, _godot_object, enable);
	}
	/**
	
	*/
	void setSpeedScale(in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSpeedScale, _godot_object, scale);
	}
	/**
	
	*/
	bool isEmitting() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isEmitting, _godot_object);
	}
	/**
	
	*/
	long getAmount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getAmount, _godot_object);
	}
	/**
	
	*/
	double getLifetime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getLifetime, _godot_object);
	}
	/**
	
	*/
	bool getOneShot() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getOneShot, _godot_object);
	}
	/**
	
	*/
	double getPreProcessTime() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getPreProcessTime, _godot_object);
	}
	/**
	
	*/
	double getExplosivenessRatio() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getExplosivenessRatio, _godot_object);
	}
	/**
	
	*/
	double getRandomnessRatio() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getRandomnessRatio, _godot_object);
	}
	/**
	
	*/
	bool getUseLocalCoordinates() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getUseLocalCoordinates, _godot_object);
	}
	/**
	
	*/
	long getFixedFps() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFixedFps, _godot_object);
	}
	/**
	
	*/
	bool getFractionalDelta() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getFractionalDelta, _godot_object);
	}
	/**
	
	*/
	double getSpeedScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSpeedScale, _godot_object);
	}
	/**
	
	*/
	void setDrawOrder(in long order)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setDrawOrder, _godot_object, order);
	}
	/**
	
	*/
	CPUParticles.DrawOrder getDrawOrder() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CPUParticles.DrawOrder)(_classBinding.getDrawOrder, _godot_object);
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
	void restart()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.restart, _godot_object);
	}
	/**
	
	*/
	void setSpread(in double degrees)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSpread, _godot_object, degrees);
	}
	/**
	
	*/
	double getSpread() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getSpread, _godot_object);
	}
	/**
	
	*/
	void setFlatness(in double amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFlatness, _godot_object, amount);
	}
	/**
	
	*/
	double getFlatness() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getFlatness, _godot_object);
	}
	/**
	
	*/
	void setParam(in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setParam, _godot_object, param, value);
	}
	/**
	
	*/
	double getParam(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getParam, _godot_object, param);
	}
	/**
	
	*/
	void setParamRandomness(in long param, in double randomness)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setParamRandomness, _godot_object, param, randomness);
	}
	/**
	
	*/
	double getParamRandomness(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getParamRandomness, _godot_object, param);
	}
	/**
	
	*/
	void setParamCurve(in long param, Curve curve)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setParamCurve, _godot_object, param, curve);
	}
	/**
	
	*/
	Ref!Curve getParamCurve(in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Curve)(_classBinding.getParamCurve, _godot_object, param);
	}
	/**
	
	*/
	void setColor(in Color color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setColor, _godot_object, color);
	}
	/**
	
	*/
	Color getColor() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getColor, _godot_object);
	}
	/**
	
	*/
	void setColorRamp(Gradient ramp)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setColorRamp, _godot_object, ramp);
	}
	/**
	
	*/
	Ref!Gradient getColorRamp() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Gradient)(_classBinding.getColorRamp, _godot_object);
	}
	/**
	
	*/
	void setParticleFlag(in long flag, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setParticleFlag, _godot_object, flag, enable);
	}
	/**
	
	*/
	bool getParticleFlag(in long flag) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getParticleFlag, _godot_object, flag);
	}
	/**
	
	*/
	void setEmissionShape(in long shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmissionShape, _godot_object, shape);
	}
	/**
	
	*/
	CPUParticles.EmissionShape getEmissionShape() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CPUParticles.EmissionShape)(_classBinding.getEmissionShape, _godot_object);
	}
	/**
	
	*/
	void setEmissionSphereRadius(in double radius)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmissionSphereRadius, _godot_object, radius);
	}
	/**
	
	*/
	double getEmissionSphereRadius() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getEmissionSphereRadius, _godot_object);
	}
	/**
	
	*/
	void setEmissionBoxExtents(in Vector3 extents)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmissionBoxExtents, _godot_object, extents);
	}
	/**
	
	*/
	Vector3 getEmissionBoxExtents() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getEmissionBoxExtents, _godot_object);
	}
	/**
	
	*/
	void setEmissionPoints(in PoolVector3Array array)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmissionPoints, _godot_object, array);
	}
	/**
	
	*/
	PoolVector3Array getEmissionPoints() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(_classBinding.getEmissionPoints, _godot_object);
	}
	/**
	
	*/
	void setEmissionNormals(in PoolVector3Array array)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmissionNormals, _godot_object, array);
	}
	/**
	
	*/
	PoolVector3Array getEmissionNormals() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolVector3Array)(_classBinding.getEmissionNormals, _godot_object);
	}
	/**
	
	*/
	void setEmissionColors(in PoolColorArray array)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setEmissionColors, _godot_object, array);
	}
	/**
	
	*/
	PoolColorArray getEmissionColors() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolColorArray)(_classBinding.getEmissionColors, _godot_object);
	}
	/**
	
	*/
	Vector3 getGravity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.getGravity, _godot_object);
	}
	/**
	
	*/
	void setGravity(in Vector3 accel_vec)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setGravity, _godot_object, accel_vec);
	}
	/**
	
	*/
	void convertFromParticles(Node particles)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.convertFromParticles, _godot_object, particles);
	}
	/**
	
	*/
	void _updateRenderThread()
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_update_render_thread");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	@property bool emitting()
	{
		return isEmitting();
	}
	/// ditto
	@property void emitting(bool v)
	{
		setEmitting(v);
	}
	/**
	
	*/
	@property long amount()
	{
		return getAmount();
	}
	/// ditto
	@property void amount(long v)
	{
		setAmount(v);
	}
	/**
	
	*/
	@property double lifetime()
	{
		return getLifetime();
	}
	/// ditto
	@property void lifetime(double v)
	{
		setLifetime(v);
	}
	/**
	
	*/
	@property bool oneShot()
	{
		return getOneShot();
	}
	/// ditto
	@property void oneShot(bool v)
	{
		setOneShot(v);
	}
	/**
	
	*/
	@property double preprocess()
	{
		return getPreProcessTime();
	}
	/// ditto
	@property void preprocess(double v)
	{
		setPreProcessTime(v);
	}
	/**
	
	*/
	@property double speedScale()
	{
		return getSpeedScale();
	}
	/// ditto
	@property void speedScale(double v)
	{
		setSpeedScale(v);
	}
	/**
	
	*/
	@property double explosiveness()
	{
		return getExplosivenessRatio();
	}
	/// ditto
	@property void explosiveness(double v)
	{
		setExplosivenessRatio(v);
	}
	/**
	
	*/
	@property double randomness()
	{
		return getRandomnessRatio();
	}
	/// ditto
	@property void randomness(double v)
	{
		setRandomnessRatio(v);
	}
	/**
	
	*/
	@property long fixedFps()
	{
		return getFixedFps();
	}
	/// ditto
	@property void fixedFps(long v)
	{
		setFixedFps(v);
	}
	/**
	
	*/
	@property bool fractDelta()
	{
		return getFractionalDelta();
	}
	/// ditto
	@property void fractDelta(bool v)
	{
		setFractionalDelta(v);
	}
	/**
	
	*/
	@property bool localCoords()
	{
		return getUseLocalCoordinates();
	}
	/// ditto
	@property void localCoords(bool v)
	{
		setUseLocalCoordinates(v);
	}
	/**
	
	*/
	@property CPUParticles.DrawOrder drawOrder()
	{
		return getDrawOrder();
	}
	/// ditto
	@property void drawOrder(long v)
	{
		setDrawOrder(v);
	}
	/**
	
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
	@property CPUParticles.EmissionShape emissionShape()
	{
		return getEmissionShape();
	}
	/// ditto
	@property void emissionShape(long v)
	{
		setEmissionShape(v);
	}
	/**
	
	*/
	@property double emissionSphereRadius()
	{
		return getEmissionSphereRadius();
	}
	/// ditto
	@property void emissionSphereRadius(double v)
	{
		setEmissionSphereRadius(v);
	}
	/**
	
	*/
	@property Vector3 emissionBoxExtents()
	{
		return getEmissionBoxExtents();
	}
	/// ditto
	@property void emissionBoxExtents(Vector3 v)
	{
		setEmissionBoxExtents(v);
	}
	/**
	
	*/
	@property PoolVector3Array emissionPoints()
	{
		return getEmissionPoints();
	}
	/// ditto
	@property void emissionPoints(PoolVector3Array v)
	{
		setEmissionPoints(v);
	}
	/**
	
	*/
	@property PoolVector3Array emissionNormals()
	{
		return getEmissionNormals();
	}
	/// ditto
	@property void emissionNormals(PoolVector3Array v)
	{
		setEmissionNormals(v);
	}
	/**
	
	*/
	@property PoolColorArray emissionColors()
	{
		return getEmissionColors();
	}
	/// ditto
	@property void emissionColors(PoolColorArray v)
	{
		setEmissionColors(v);
	}
	/**
	
	*/
	@property bool flagAlignY()
	{
		return getParticleFlag(0);
	}
	/// ditto
	@property void flagAlignY(bool v)
	{
		setParticleFlag(0, v);
	}
	/**
	
	*/
	@property bool flagRotateY()
	{
		return getParticleFlag(1);
	}
	/// ditto
	@property void flagRotateY(bool v)
	{
		setParticleFlag(1, v);
	}
	/**
	
	*/
	@property bool flagDisableZ()
	{
		return getParticleFlag(2);
	}
	/// ditto
	@property void flagDisableZ(bool v)
	{
		setParticleFlag(2, v);
	}
	/**
	
	*/
	@property double spread()
	{
		return getSpread();
	}
	/// ditto
	@property void spread(double v)
	{
		setSpread(v);
	}
	/**
	
	*/
	@property double flatness()
	{
		return getFlatness();
	}
	/// ditto
	@property void flatness(double v)
	{
		setFlatness(v);
	}
	/**
	
	*/
	@property Vector3 gravity()
	{
		return getGravity();
	}
	/// ditto
	@property void gravity(Vector3 v)
	{
		setGravity(v);
	}
	/**
	
	*/
	@property double initialVelocity()
	{
		return getParam(0);
	}
	/// ditto
	@property void initialVelocity(double v)
	{
		setParam(0, v);
	}
	/**
	
	*/
	@property double initialVelocityRandom()
	{
		return getParamRandomness(0);
	}
	/// ditto
	@property void initialVelocityRandom(double v)
	{
		setParamRandomness(0, v);
	}
	/**
	
	*/
	@property double angularVelocity()
	{
		return getParam(1);
	}
	/// ditto
	@property void angularVelocity(double v)
	{
		setParam(1, v);
	}
	/**
	
	*/
	@property double angularVelocityRandom()
	{
		return getParamRandomness(1);
	}
	/// ditto
	@property void angularVelocityRandom(double v)
	{
		setParamRandomness(1, v);
	}
	/**
	
	*/
	@property Curve angularVelocityCurve()
	{
		return getParamCurve(1);
	}
	/// ditto
	@property void angularVelocityCurve(Curve v)
	{
		setParamCurve(1, v);
	}
	/**
	
	*/
	@property double linearAccel()
	{
		return getParam(2);
	}
	/// ditto
	@property void linearAccel(double v)
	{
		setParam(2, v);
	}
	/**
	
	*/
	@property double linearAccelRandom()
	{
		return getParamRandomness(2);
	}
	/// ditto
	@property void linearAccelRandom(double v)
	{
		setParamRandomness(2, v);
	}
	/**
	
	*/
	@property Curve linearAccelCurve()
	{
		return getParamCurve(2);
	}
	/// ditto
	@property void linearAccelCurve(Curve v)
	{
		setParamCurve(2, v);
	}
	/**
	
	*/
	@property double radialAccel()
	{
		return getParam(3);
	}
	/// ditto
	@property void radialAccel(double v)
	{
		setParam(3, v);
	}
	/**
	
	*/
	@property double radialAccelRandom()
	{
		return getParamRandomness(3);
	}
	/// ditto
	@property void radialAccelRandom(double v)
	{
		setParamRandomness(3, v);
	}
	/**
	
	*/
	@property Curve radialAccelCurve()
	{
		return getParamCurve(3);
	}
	/// ditto
	@property void radialAccelCurve(Curve v)
	{
		setParamCurve(3, v);
	}
	/**
	
	*/
	@property double tangentialAccel()
	{
		return getParam(4);
	}
	/// ditto
	@property void tangentialAccel(double v)
	{
		setParam(4, v);
	}
	/**
	
	*/
	@property double tangentialAccelRandom()
	{
		return getParamRandomness(4);
	}
	/// ditto
	@property void tangentialAccelRandom(double v)
	{
		setParamRandomness(4, v);
	}
	/**
	
	*/
	@property Curve tangentialAccelCurve()
	{
		return getParamCurve(4);
	}
	/// ditto
	@property void tangentialAccelCurve(Curve v)
	{
		setParamCurve(4, v);
	}
	/**
	
	*/
	@property double damping()
	{
		return getParam(5);
	}
	/// ditto
	@property void damping(double v)
	{
		setParam(5, v);
	}
	/**
	
	*/
	@property double dampingRandom()
	{
		return getParamRandomness(5);
	}
	/// ditto
	@property void dampingRandom(double v)
	{
		setParamRandomness(5, v);
	}
	/**
	
	*/
	@property Curve dampingCurve()
	{
		return getParamCurve(5);
	}
	/// ditto
	@property void dampingCurve(Curve v)
	{
		setParamCurve(5, v);
	}
	/**
	
	*/
	@property double angle()
	{
		return getParam(6);
	}
	/// ditto
	@property void angle(double v)
	{
		setParam(6, v);
	}
	/**
	
	*/
	@property double angleRandom()
	{
		return getParamRandomness(6);
	}
	/// ditto
	@property void angleRandom(double v)
	{
		setParamRandomness(6, v);
	}
	/**
	
	*/
	@property Curve angleCurve()
	{
		return getParamCurve(6);
	}
	/// ditto
	@property void angleCurve(Curve v)
	{
		setParamCurve(6, v);
	}
	/**
	
	*/
	@property double scaleAmount()
	{
		return getParam(7);
	}
	/// ditto
	@property void scaleAmount(double v)
	{
		setParam(7, v);
	}
	/**
	
	*/
	@property double scaleAmountRandom()
	{
		return getParamRandomness(7);
	}
	/// ditto
	@property void scaleAmountRandom(double v)
	{
		setParamRandomness(7, v);
	}
	/**
	
	*/
	@property Curve scaleAmountCurve()
	{
		return getParamCurve(7);
	}
	/// ditto
	@property void scaleAmountCurve(Curve v)
	{
		setParamCurve(7, v);
	}
	/**
	
	*/
	@property Color color()
	{
		return getColor();
	}
	/// ditto
	@property void color(Color v)
	{
		setColor(v);
	}
	/**
	Each particle's vertex color will vary along this $(D GradientTexture).
	*/
	@property Gradient colorRamp()
	{
		return getColorRamp();
	}
	/// ditto
	@property void colorRamp(Gradient v)
	{
		setColorRamp(v);
	}
	/**
	
	*/
	@property double hueVariation()
	{
		return getParam(8);
	}
	/// ditto
	@property void hueVariation(double v)
	{
		setParam(8, v);
	}
	/**
	
	*/
	@property double hueVariationRandom()
	{
		return getParamRandomness(8);
	}
	/// ditto
	@property void hueVariationRandom(double v)
	{
		setParamRandomness(8, v);
	}
	/**
	
	*/
	@property Curve hueVariationCurve()
	{
		return getParamCurve(8);
	}
	/// ditto
	@property void hueVariationCurve(Curve v)
	{
		setParamCurve(8, v);
	}
	/**
	
	*/
	@property double animSpeed()
	{
		return getParam(9);
	}
	/// ditto
	@property void animSpeed(double v)
	{
		setParam(9, v);
	}
	/**
	
	*/
	@property double animSpeedRandom()
	{
		return getParamRandomness(9);
	}
	/// ditto
	@property void animSpeedRandom(double v)
	{
		setParamRandomness(9, v);
	}
	/**
	
	*/
	@property Curve animSpeedCurve()
	{
		return getParamCurve(9);
	}
	/// ditto
	@property void animSpeedCurve(Curve v)
	{
		setParamCurve(9, v);
	}
	/**
	
	*/
	@property double animOffset()
	{
		return getParam(10);
	}
	/// ditto
	@property void animOffset(double v)
	{
		setParam(10, v);
	}
	/**
	
	*/
	@property double animOffsetRandom()
	{
		return getParamRandomness(10);
	}
	/// ditto
	@property void animOffsetRandom(double v)
	{
		setParamRandomness(10, v);
	}
	/**
	
	*/
	@property Curve animOffsetCurve()
	{
		return getParamCurve(10);
	}
	/// ditto
	@property void animOffsetCurve(Curve v)
	{
		setParamCurve(10, v);
	}
}