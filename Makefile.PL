use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'		=> 'String::RexxStack',
    'VERSION_FROM'	=> 'lib/String/RexxStack/Named.pm', 
    'PREREQ_PM'		=> { Test::More         => 0, 
			     Class::MethodMaker => 0, 
			     Filter::Simple     => 0,
			     Want               => 0, 
			     Data::Dumper       => 0,
			     Pod::Checker       => 0,
			   }, 
    ($] >= 5.005 ?  
      (ABSTRACT      => 'implements named stacks',
       AUTHOR        => 'Ioannis Tambouras <ioannis@earthlink.net>') : ()),
);

