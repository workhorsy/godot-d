/**
Type used to handle the filesystem.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.directory;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
/**
Type used to handle the filesystem.

Directory type. It is used to manage directories and their content (not restricted to the project folder).
Here is an example on how to iterate through the files of a directory:


func dir_contents(path):
    var dir = Directory.new()
    if dir.open(path) == OK:
        dir.list_dir_begin()
        var file_name = dir.get_next()
        while (file_name != ""):
            if dir.current_is_dir():
                print("Found directory: " + file_name)
            else:
                print("Found file: " + file_name)
            file_name = dir.get_next()
    else:
        print("An error occurred when trying to access the path.")


*/
@GodotBaseClass struct Directory
{
	enum string _GODOT_internal_name = "_Directory";
public:
@nogc nothrow:
	union { godot_object _godot_object; Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("open") GodotMethod!(GodotError, String) open;
		@GodotName("list_dir_begin") GodotMethod!(GodotError, bool, bool) listDirBegin;
		@GodotName("get_next") GodotMethod!(String) getNext;
		@GodotName("current_is_dir") GodotMethod!(bool) currentIsDir;
		@GodotName("list_dir_end") GodotMethod!(void) listDirEnd;
		@GodotName("get_drive_count") GodotMethod!(long) getDriveCount;
		@GodotName("get_drive") GodotMethod!(String, long) getDrive;
		@GodotName("get_current_drive") GodotMethod!(long) getCurrentDrive;
		@GodotName("change_dir") GodotMethod!(GodotError, String) changeDir;
		@GodotName("get_current_dir") GodotMethod!(String) getCurrentDir;
		@GodotName("make_dir") GodotMethod!(GodotError, String) makeDir;
		@GodotName("make_dir_recursive") GodotMethod!(GodotError, String) makeDirRecursive;
		@GodotName("file_exists") GodotMethod!(bool, String) fileExists;
		@GodotName("dir_exists") GodotMethod!(bool, String) dirExists;
		@GodotName("get_space_left") GodotMethod!(long) getSpaceLeft;
		@GodotName("copy") GodotMethod!(GodotError, String, String) copy;
		@GodotName("rename") GodotMethod!(GodotError, String, String) rename;
		@GodotName("remove") GodotMethod!(GodotError, String) remove;
	}
	bool opEquals(in Directory other) const { return _godot_object.ptr is other._godot_object.ptr; }
	Directory opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static Directory _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("_Directory");
		if(constructor is null) return typeof(this).init;
		return cast(Directory)(constructor());
	}
	@disable new(size_t s);
	/**
	Open an existing directory of the filesystem. The $(I path) argument can be within the project tree (`res://folder`), the user directory (`user://folder`) or an absolute path of the user filesystem (e.g. `/tmp/folder` or `C:\tmp\folder`).
	The method returns one of the error code constants defined in $(D @GlobalScope) (OK or ERR_*).
	*/
	GodotError open(StringArg0)(in StringArg0 path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.open, _godot_object, path);
	}
	/**
	Initialise the stream used to list all files and directories using the $(D getNext) function, closing the current opened stream if needed. Once the stream has been processed, it should typically be closed with $(D listDirEnd).
	If you pass `skip_navigational`, then `.` and `..` would be filtered out.
	If you pass `skip_hidden`, then hidden files would be filtered out.
	*/
	GodotError listDirBegin(in bool skip_navigational = false, in bool skip_hidden = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.listDirBegin, _godot_object, skip_navigational, skip_hidden);
	}
	/**
	Return the next element (file or directory) in the current directory (including `.` and `..`, unless `skip_navigational` was given to $(D listDirBegin)).
	The name of the file or directory is returned (and not its full path). Once the stream has been fully processed, the method returns an empty String and closes the stream automatically (i.e. $(D listDirEnd) would not be mandatory in such a case).
	*/
	String getNext()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getNext, _godot_object);
	}
	/**
	Return whether the current item processed with the last $(D getNext) call is a directory (`.` and `..` are considered directories).
	*/
	bool currentIsDir() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.currentIsDir, _godot_object);
	}
	/**
	Close the current stream opened with $(D listDirBegin) (whether it has been fully processed with $(D getNext) or not does not matter).
	*/
	void listDirEnd()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.listDirEnd, _godot_object);
	}
	/**
	On Windows, return the number of drives (partitions) mounted on the current filesystem. On other platforms, the method returns 0.
	*/
	long getDriveCount()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getDriveCount, _godot_object);
	}
	/**
	On Windows, return the name of the drive (partition) passed as an argument (e.g. `C:`). On other platforms, or if the requested drive does not existed, the method returns an empty String.
	*/
	String getDrive(in long idx)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getDrive, _godot_object, idx);
	}
	/**
	Returns the currently opened directory's drive index. See $(D getDrive) to convert returned index to the name of the drive.
	*/
	long getCurrentDrive()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getCurrentDrive, _godot_object);
	}
	/**
	Change the currently opened directory to the one passed as an argument. The argument can be relative to the current directory (e.g. `newdir` or `../newdir`), or an absolute path (e.g. `/tmp/newdir` or `res://somedir/newdir`).
	The method returns one of the error code constants defined in $(D @GlobalScope) (OK or ERR_*).
	*/
	GodotError changeDir(StringArg0)(in StringArg0 todir)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.changeDir, _godot_object, todir);
	}
	/**
	Return the absolute path to the currently opened directory (e.g. `res://folder` or `C:\tmp\folder`).
	*/
	String getCurrentDir()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getCurrentDir, _godot_object);
	}
	/**
	Create a directory. The argument can be relative to the current directory, or an absolute path. The target directory should be placed in an already existing directory (to create the full path recursively, see $(D makeDirRecursive)).
	The method returns one of the error code constants defined in $(D @GlobalScope) (OK, FAILED or ERR_*).
	*/
	GodotError makeDir(StringArg0)(in StringArg0 path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.makeDir, _godot_object, path);
	}
	/**
	Create a target directory and all necessary intermediate directories in its path, by calling $(D makeDir) recursively. The argument can be relative to the current directory, or an absolute path.
	Return one of the error code constants defined in $(D @GlobalScope) (OK, FAILED or ERR_*).
	*/
	GodotError makeDirRecursive(StringArg0)(in StringArg0 path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.makeDirRecursive, _godot_object, path);
	}
	/**
	Return whether the target file exists. The argument can be relative to the current directory, or an absolute path.
	*/
	bool fileExists(StringArg0)(in StringArg0 path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.fileExists, _godot_object, path);
	}
	/**
	Return whether the target directory exists. The argument can be relative to the current directory, or an absolute path.
	*/
	bool dirExists(StringArg0)(in StringArg0 path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.dirExists, _godot_object, path);
	}
	/**
	On Unix desktop systems, return the available space on the current directory's disk. On other platforms, this information is not available and the method returns 0 or -1.
	*/
	long getSpaceLeft()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getSpaceLeft, _godot_object);
	}
	/**
	Copy the $(I from) file to the $(I to) destination. Both arguments should be paths to files, either relative or absolute. If the destination file exists and is not access-protected, it will be overwritten.
	Returns one of the error code constants defined in $(D @GlobalScope) (OK, FAILED or ERR_*).
	*/
	GodotError copy(StringArg0, StringArg1)(in StringArg0 from, in StringArg1 to)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.copy, _godot_object, from, to);
	}
	/**
	Rename (move) the $(I from) file to the $(I to) destination. Both arguments should be paths to files, either relative or absolute. If the destination file exists and is not access-protected, it will be overwritten.
	Return one of the error code constants defined in $(D @GlobalScope) (OK or FAILED).
	*/
	GodotError rename(StringArg0, StringArg1)(in StringArg0 from, in StringArg1 to)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.rename, _godot_object, from, to);
	}
	/**
	Delete the target file or an empty directory. The argument can be relative to the current directory, or an absolute path. If the target directory is not empty, the operation will fail.
	Return one of the error code constants defined in $(D @GlobalScope) (OK or FAILED).
	*/
	GodotError remove(StringArg0)(in StringArg0 path)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(GodotError)(_classBinding.remove, _godot_object, path);
	}
}