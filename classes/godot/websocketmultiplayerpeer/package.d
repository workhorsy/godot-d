/**
Base class for WebSocket server and client.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.websocketmultiplayerpeer;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.networkedmultiplayerpeer;
import godot.websocketpeer;
import godot.packetpeer;
import godot.reference;
/**
Base class for WebSocket server and client.

Base class for WebSocket server and client, allowing them to be used as network peer for the $(D MultiplayerAPI).
*/
@GodotBaseClass struct WebSocketMultiplayerPeer
{
	enum string _GODOT_internal_name = "WebSocketMultiplayerPeer";
public:
@nogc nothrow:
	union { godot_object _godot_object; NetworkedMultiplayerPeer _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("get_peer") GodotMethod!(WebSocketPeer, long) getPeer;
	}
	bool opEquals(in WebSocketMultiplayerPeer other) const { return _godot_object.ptr is other._godot_object.ptr; }
	WebSocketMultiplayerPeer opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static WebSocketMultiplayerPeer _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("WebSocketMultiplayerPeer");
		if(constructor is null) return typeof(this).init;
		return cast(WebSocketMultiplayerPeer)(constructor());
	}
	@disable new(size_t s);
	/**
	Returns the $(D WebSocketPeer) associated to the given `peer_id`.
	*/
	Ref!WebSocketPeer getPeer(in long peer_id) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(WebSocketPeer)(_classBinding.getPeer, _godot_object, peer_id);
	}
}