.SILENT:
.PHONY:  $(shell ls)

PERL    = perl

Src  = ../rxstack.cfg
Qrc  = ../rxqueue.cfg
CMD  =   '@red.org  /push ' 



OPTS    = -wl -I../blib/lib
MODULES = -Mstrict  -MData::Dumper -MCarp 

# t0_tied.t       t1_tied.t         t2_push.t
# t4_entries.t    t5_KBytes.t       t6_limits.t
# t6_pull.t
# t7_pull.t       t8_makebuf.t      t9_allowed.t
# t10_queue.t     t11_bytes.t       t12_pod.t


# n0_stack.t      n1_newstack.t     n2_push.t         
# n3_filter.t     n4_limits.t       n5_limits2.t


#all: sdoc
#all: server 
#all: client
all: n1_newstack.t


del:
	$(PERL) $(OPTS)  $(MODULES) $@

n*t:
	$(PERL) $(OPTS)  $(MODULES) -MString::RexxStack::Named $@

d*t t*t:
	$(PERL) $(OPTS)  $(MODULES) $@

clean:
	rm -f trace_server
	-killall perl
tdoc:
	@perldoc -F ..//lib/String/TieStack.pm
ndoc:
	@perldoc -F ..//lib/String/RexxStack/Named.pm
rdoc:
	perldoc -F ../lib/String/RexxStack.pod
ddoc:
	perldoc -F del.pod

c:
	podchecker  del.pod
