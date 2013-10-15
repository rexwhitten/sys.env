/* unique-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Unique", lower_case_cprefix = "unique_")]
namespace Unique {
	[CCode (cheader_filename = "unique/unique.h")]
	public class App : GLib.Object {
		[CCode (has_construct_function = false)]
		public App (string name, string? startup_id);
		public void add_command (string command_name, int command_id);
		public Unique.Response send_message (int command_id, Unique.MessageData? message_data);
		public void watch_window (Gtk.Window window);
		[CCode (has_construct_function = false)]
		public App.with_commands (string name, string? startup_id, ...);
		[NoAccessorMethod]
		public bool is_running { get; }
		[NoAccessorMethod]
		public string name { owned get; construct; }
		[NoAccessorMethod]
		public Gdk.Screen screen { owned get; set construct; }
		[NoAccessorMethod]
		public string startup_id { owned get; construct; }
		public virtual signal Unique.Response message_received (int command, Unique.MessageData message_data, uint time_);
	}
	[CCode (cheader_filename = "unique/unique.h")]
	public class Backend : GLib.Object {
		public weak string name;
		public weak Unique.App parent;
		public weak Gdk.Screen screen;
		public weak string startup_id;
		public uint workspace;
		[CCode (has_construct_function = false)]
		protected Backend ();
		public static unowned Unique.Backend create ();
		public unowned string get_name ();
		public unowned Gdk.Screen get_screen ();
		public unowned string get_startup_id ();
		public uint get_workspace ();
		public virtual bool request_name ();
		public virtual Unique.Response send_message (int command_id, Unique.MessageData message_data, uint time_);
		public void set_name (string name);
		public void set_screen (Gdk.Screen screen);
		public void set_startup_id (string startup_id);
	}
	[Compact]
	[CCode (copy_function = "unique_message_data_copy", type_id = "UNIQUE_TYPE_MESSAGE_DATA", cheader_filename = "unique/unique.h")]
	public class MessageData {
		[CCode (has_construct_function = false)]
		public MessageData ();
		public Unique.MessageData copy ();
		public unowned uchar[] @get (size_t length);
		public unowned string get_filename ();
		public unowned Gdk.Screen get_screen ();
		public unowned string get_startup_id ();
		public string get_text ();
		[CCode (array_length = false)]
		public string[] get_uris ();
		public uint get_workspace ();
		public void @set ([CCode (array_length_type = "gsize")] uchar[]? data);
		public void set_filename (string filename);
		public bool set_text (string str, ssize_t length);
		public bool set_uris ([CCode (array_length = false)] string[] uris);
	}
	[CCode (cprefix = "UNIQUE_", cheader_filename = "unique/unique.h")]
	public enum Command {
		INVALID,
		ACTIVATE,
		NEW,
		OPEN,
		CLOSE
	}
	[CCode (cprefix = "UNIQUE_RESPONSE_", cheader_filename = "unique/unique.h")]
	public enum Response {
		INVALID,
		OK,
		CANCEL,
		FAIL,
		PASSTHROUGH
	}
	[CCode (cheader_filename = "unique/unique.h")]
	public const string API_VERSION_S;
	[CCode (cheader_filename = "unique/unique.h")]
	public const string DEFAULT_BACKEND_S;
	[CCode (cheader_filename = "unique/unique.h")]
	public const int MAJOR_VERSION;
	[CCode (cheader_filename = "unique/unique.h")]
	public const int MICRO_VERSION;
	[CCode (cheader_filename = "unique/unique.h")]
	public const int MINOR_VERSION;
	[CCode (cheader_filename = "unique/unique.h")]
	public const string PROTOCOL_VERSION_S;
	[CCode (cheader_filename = "unique/unique.h")]
	public const int VERSION_HEX;
	[CCode (cheader_filename = "unique/unique.h")]
	public const string VERSION_S;
}