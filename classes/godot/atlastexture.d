/**
Packs multiple small textures in a single, bigger one. Helps to optimize video memory costs and render calls.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.atlastexture;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.texture;
import godot.resource;
import godot.reference;
/**
Packs multiple small textures in a single, bigger one. Helps to optimize video memory costs and render calls.

$(D Texture) resource aimed at managing big textures files that pack multiple smaller textures. Consists of a $(D Texture), a margin that defines the border width,
and a region that defines the actual area of the AtlasTexture.
*/
@GodotBaseClass struct AtlasTexture
{
	enum string _GODOT_internal_name = "AtlasTexture";
public:
@nogc nothrow:
	union { godot_object _godot_object; Texture _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_atlas") GodotMethod!(void, Texture) setAtlas;
		@GodotName("get_atlas") GodotMethod!(Texture) getAtlas;
		@GodotName("set_region") GodotMethod!(void, Rect2) setRegion;
		@GodotName("get_region") GodotMethod!(Rect2) getRegion;
		@GodotName("set_margin") GodotMethod!(void, Rect2) setMargin;
		@GodotName("get_margin") GodotMethod!(Rect2) getMargin;
		@GodotName("set_filter_clip") GodotMethod!(void, bool) setFilterClip;
		@GodotName("has_filter_clip") GodotMethod!(bool) hasFilterClip;
	}
	bool opEquals(in AtlasTexture other) const { return _godot_object.ptr is other._godot_object.ptr; }
	AtlasTexture opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static AtlasTexture _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("AtlasTexture");
		if(constructor is null) return typeof(this).init;
		return cast(AtlasTexture)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setAtlas(Texture atlas)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAtlas, _godot_object, atlas);
	}
	/**
	
	*/
	Ref!Texture getAtlas() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getAtlas, _godot_object);
	}
	/**
	
	*/
	void setRegion(in Rect2 region)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setRegion, _godot_object, region);
	}
	/**
	
	*/
	Rect2 getRegion() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getRegion, _godot_object);
	}
	/**
	
	*/
	void setMargin(in Rect2 margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMargin, _godot_object, margin);
	}
	/**
	
	*/
	Rect2 getMargin() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getMargin, _godot_object);
	}
	/**
	
	*/
	void setFilterClip(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFilterClip, _godot_object, enable);
	}
	/**
	
	*/
	bool hasFilterClip() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasFilterClip, _godot_object);
	}
	/**
	The texture that contains the atlas. Can be any $(D Texture) subtype.
	*/
	@property Texture atlas()
	{
		return getAtlas();
	}
	/// ditto
	@property void atlas(Texture v)
	{
		setAtlas(v);
	}
	/**
	The AtlasTexture's used region.
	*/
	@property Rect2 region()
	{
		return getRegion();
	}
	/// ditto
	@property void region(Rect2 v)
	{
		setRegion(v);
	}
	/**
	The margin around the region. The $(D Rect2)'s 'size' parameter ('w' and 'h' in the editor) resizes the texture so it fits within the margin.
	*/
	@property Rect2 margin()
	{
		return getMargin();
	}
	/// ditto
	@property void margin(Rect2 v)
	{
		setMargin(v);
	}
	/**
	If `true` clips the area outside of the region to avoid bleeding of the surrounding texture pixels.
	*/
	@property bool filterClip()
	{
		return hasFilterClip();
	}
	/// ditto
	@property void filterClip(bool v)
	{
		setFilterClip(v);
	}
}