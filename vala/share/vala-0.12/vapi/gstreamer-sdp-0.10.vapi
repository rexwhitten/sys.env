/* gstreamer-sdp-0.10.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Gst", lower_case_cprefix = "gst_")]
namespace Gst {
	[Compact]
	[CCode (cheader_filename = "gst/sdp/gstsdpmessage.h")]
	public class SDPAttribute {
		public weak string key;
		public weak string value;
	}
	[Compact]
	[CCode (cheader_filename = "gst/sdp/gstsdpmessage.h")]
	public class SDPBandwidth {
		public uint bandwidth;
		public weak string bwtype;
	}
	[Compact]
	[CCode (cheader_filename = "gst/sdp/gstsdpmessage.h")]
	public class SDPConnection {
		public uint addr_number;
		public weak string address;
		public weak string addrtype;
		public weak string nettype;
		public uint ttl;
	}
	[Compact]
	[CCode (cheader_filename = "gst/sdp/gstsdpmessage.h")]
	public class SDPKey {
		public weak string data;
		public weak string type;
	}
	[Compact]
	[CCode (cheader_filename = "gst/sdp/gstsdpmessage.h")]
	public class SDPMedia {
		public weak GLib.Array<Gst.SDPAttribute> attributes;
		public weak GLib.Array<Gst.SDPBandwidth> bandwidths;
		public weak GLib.Array<Gst.SDPConnection> connections;
		public weak GLib.Array<string> fmts;
		public weak string information;
		public weak Gst.SDPKey key;
		public weak string media;
		public uint num_ports;
		public uint port;
		public weak string proto;
		[CCode (type = "GstSDPResult", has_construct_function = false)]
		public SDPMedia (out unowned Gst.SDPMedia media);
		public Gst.SDPResult add_attribute (string key, string value);
		public Gst.SDPResult add_bandwidth (string bwtype, uint bandwidth);
		public Gst.SDPResult add_connection (string nettype, string addrtype, string address, uint ttl, uint addr_number);
		public Gst.SDPResult add_format (string format);
		public unowned string as_text ();
		public uint attributes_len ();
		public uint bandwidths_len ();
		public uint connections_len ();
		public uint formats_len ();
		public unowned Gst.SDPAttribute get_attribute (uint idx);
		public unowned string get_attribute_val (string key);
		public unowned string get_attribute_val_n (string key, uint nth);
		public unowned Gst.SDPBandwidth get_bandwidth (uint idx);
		public unowned Gst.SDPConnection get_connection (uint idx);
		public unowned string get_format (uint idx);
		public unowned string get_information ();
		public unowned Gst.SDPKey get_key ();
		public unowned string get_media ();
		public uint get_num_ports ();
		public uint get_port ();
		public unowned string get_proto ();
		public Gst.SDPResult init ();
		public Gst.SDPResult set_information (string information);
		public Gst.SDPResult set_key (string type, string data);
		public Gst.SDPResult set_media (string med);
		public Gst.SDPResult set_port_info (uint port, uint num_ports);
		public Gst.SDPResult set_proto (string proto);
		public Gst.SDPResult uninit ();
	}
	[Compact]
	[CCode (cheader_filename = "gst/sdp/gstsdpmessage.h")]
	public class SDPMessage {
		public weak GLib.Array<Gst.SDPAttribute> attributes;
		public weak GLib.Array<Gst.SDPBandwidth> bandwidths;
		public weak Gst.SDPConnection connection;
		public weak GLib.Array<string> emails;
		public weak string information;
		public weak Gst.SDPKey key;
		public weak GLib.Array<Gst.SDPMedia> medias;
		public weak Gst.SDPOrigin origin;
		public weak GLib.Array<string> phones;
		public weak string session_name;
		public weak GLib.Array<Gst.SDPTime> times;
		public weak string uri;
		public weak string version;
		public weak GLib.Array<Gst.SDPZone> zones;
		[CCode (type = "GstSDPResult", has_construct_function = false)]
		public SDPMessage (out unowned Gst.SDPMessage msg);
		public Gst.SDPResult add_attribute (string key, string value);
		public Gst.SDPResult add_bandwidth (string bwtype, uint bandwidth);
		public Gst.SDPResult add_email (string email);
		public Gst.SDPResult add_media (Gst.SDPMedia media);
		public Gst.SDPResult add_phone (string phone);
		public Gst.SDPResult add_time (string start, string stop, string repeat);
		public Gst.SDPResult add_zone (string adj_time, string typed_time);
		public unowned string as_text ();
		public uint attributes_len ();
		public uint bandwidths_len ();
		public Gst.SDPResult dump ();
		public uint emails_len ();
		public unowned Gst.SDPAttribute get_attribute (uint idx);
		public unowned string get_attribute_val (string key);
		public unowned string get_attribute_val_n (string key, uint nth);
		public unowned Gst.SDPBandwidth get_bandwidth (uint idx);
		public unowned Gst.SDPConnection get_connection ();
		public unowned string get_email (uint idx);
		public unowned string get_information ();
		public unowned Gst.SDPKey get_key ();
		public unowned Gst.SDPMedia get_media (uint idx);
		public unowned Gst.SDPOrigin get_origin ();
		public unowned string get_phone (uint idx);
		public unowned string get_session_name ();
		public unowned Gst.SDPTime get_time (uint idx);
		public unowned string get_uri ();
		public unowned string get_version ();
		public unowned Gst.SDPZone get_zone (uint idx);
		public Gst.SDPResult init ();
		public uint medias_len ();
		public static Gst.SDPResult parse_buffer (uchar data, uint size, Gst.SDPMessage msg);
		public uint phones_len ();
		public Gst.SDPResult set_connection (string nettype, string addrtype, string address, uint ttl, uint addr_number);
		public Gst.SDPResult set_information (string information);
		public Gst.SDPResult set_key (string type, string data);
		public Gst.SDPResult set_origin (string username, string sess_id, string sess_version, string nettype, string addrtype, string addr);
		public Gst.SDPResult set_session_name (string session_name);
		public Gst.SDPResult set_uri (string uri);
		public Gst.SDPResult set_version (string version);
		public uint times_len ();
		public Gst.SDPResult uninit ();
		public uint zones_len ();
	}
	[Compact]
	[CCode (cheader_filename = "gst/sdp/gstsdpmessage.h")]
	public class SDPOrigin {
		public weak string addr;
		public weak string addrtype;
		public weak string nettype;
		public weak string sess_id;
		public weak string sess_version;
		public weak string username;
	}
	[Compact]
	[CCode (cheader_filename = "gst/sdp/gstsdpmessage.h")]
	public class SDPTime {
		public weak GLib.Array<Gst.SDPTime> repeat;
		public weak string start;
		public weak string stop;
	}
	[Compact]
	[CCode (cheader_filename = "gst/sdp/gstsdpmessage.h")]
	public class SDPZone {
		public weak string time;
		public weak string typed_time;
	}
	[CCode (cprefix = "GST_SDP_", has_type_id = false, cheader_filename = "gst/sdp/gstsdp.h")]
	public enum SDPResult {
		OK,
		EINVAL
	}
	[CCode (cheader_filename = "gst/sdp/gstsdpmessage.h")]
	public const string SDP_BWTYPE_AS;
	[CCode (cheader_filename = "gst/sdp/gstsdpmessage.h")]
	public const string SDP_BWTYPE_CT;
	[CCode (cheader_filename = "gst/sdp/gstsdpmessage.h")]
	public const string SDP_BWTYPE_EXT_PREFIX;
	[CCode (cheader_filename = "gst/sdp/gstsdpmessage.h")]
	public const string SDP_BWTYPE_RR;
	[CCode (cheader_filename = "gst/sdp/gstsdpmessage.h")]
	public const string SDP_BWTYPE_RS;
}
