CREATE TABLE `cardlists` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `cards` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `expansion` varchar(255) default NULL,
  `side` varchar(255) default NULL,
  `thumbnail_url` varchar(255) default NULL,
  `image_url` varchar(255) default NULL,
  `vslip_url` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `line_items` (
  `id` int(11) NOT NULL auto_increment,
  `card_id` int(11) NOT NULL,
  `cardlist_id` int(11) NOT NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL auto_increment,
  `session_id` varchar(255) NOT NULL,
  `data` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`),
  KEY `index_sessions_on_session_id` (`session_id`),
  KEY `index_sessions_on_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `hashed_password` varchar(255) default NULL,
  `salt` varchar(255) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO schema_migrations (version) VALUES ('20081005145020');

INSERT INTO schema_migrations (version) VALUES ('20081005145105');

INSERT INTO schema_migrations (version) VALUES ('20081005150116');

INSERT INTO schema_migrations (version) VALUES ('20081005153642');

INSERT INTO schema_migrations (version) VALUES ('20081005162228');