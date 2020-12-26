create DATABASE test;

CREATE TABLE `ip_protocol` (
  id SMALLINT unsigned NOT NULL,
  keyword varchar(32) not null,
  protocol varchar(128) NOT NULL,
  ipv6_ext_header boolean not null NULL,
  Reference text NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

CREATE TABLE `ip_port` (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  from_port SMALLINT UNSIGNED NOT NULL,
  to_port SMALLINT UNSIGNED NOT NULL,
  name varchar(128) NOT NULL,
  protocol varchar(32) NULL,
  description text NULL,
  PRIMARY KEY (id),
  KEY from_port_idx (from_port), 
  KEY to_port_idx (to_port) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

CREATE TABLE `traffic_stg` (
  intf varchar(16) not null,
  direction char(3) NOT NULL,
  src_addr varchar(39) NOT NULL,
  dst_addr varchar(39) NOT NULL,
  svc_port SMALLINT UNSIGNED NOT NULL,
  protocol SMALLINT UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;  
  
CREATE TABLE `traffic` (
  id bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  intf varchar(16) not null,
  direction char(3) NOT NULL,
  src_addr varchar(39) NOT NULL,
  dst_addr varchar(39) NOT NULL,
  svc_port SMALLINT UNSIGNED NOT NULL,
  protocol SMALLINT UNSIGNED NOT NULL,
  PRIMARY KEY (id),
  KEY intf_idx (intf),
  KEY direction_idx (direction),
  KEY src_addr_idx (src_addr),
  KEY dst_addr_idx (dst_addr),
  KEY svc_port_idx (svc_port),
  KEY protocol_idx (protocol),
  UNIQUE KEY table_unq (intf, direction, src_addr, dst_addr, svc_port, protocol)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- INSERT ignore INTO traffic (intf, direction, src_addr, dst_addr, svc_port, protocol)
-- SELECT intf, direction, src_addr, dst_addr, svc_port, protocol FROM traffic_stg;

