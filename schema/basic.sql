CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `create_date` date NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

INSERT INTO `posts` (`post_id`, `title`, `body`, `published`, `create_date`) VALUES
(1, 'Test Post', 'This is the body of a test post.', 1, '2011-09-04');
