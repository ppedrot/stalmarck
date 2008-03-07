##########################################################################
##  v      #                  The Coq Proof Assistant                   ##
## <O___,, # CNRS-Ecole Polytechnique-INRIA Futurs-Universite Paris Sud ##
##   \VV/  #                                                            ##
##    //   #   Makefile automagically generated by coq_makefile V8.2    ##
##########################################################################

# WARNING
#
# This Makefile has been automagically generated
# Edit at your own risks !
#
# END OF WARNING

#
# This Makefile was generated by the command line :
# coq_makefile -f Make -o Makefile 
#

#########################
#                       #
# Libraries definition. #
#                       #
#########################

OCAMLLIBS:=
COQLIBS:= -R . Stalmarck
COQDOCLIBS:=-R . Stalmarck

##########################
#                        #
# Variables definitions. #
#                        #
##########################

CAMLP4LIB:=+camlp4
CAMLP4:=/home/notin/exec/ocaml-3.09.3/bin/camlp4
COQSRC:=-I $(COQTOP)/kernel -I $(COQTOP)/lib \
  -I $(COQTOP)/library -I $(COQTOP)/parsing \
  -I $(COQTOP)/pretyping -I $(COQTOP)/interp \
  -I $(COQTOP)/proofs -I $(COQTOP)/syntax -I $(COQTOP)/tactics \
  -I $(COQTOP)/toplevel -I $(COQTOP)/contrib/correctness \
  -I $(COQTOP)/contrib/extraction -I $(COQTOP)/contrib/field \
  -I $(COQTOP)/contrib/fourier -I $(COQTOP)/contrib/graphs \
  -I $(COQTOP)/contrib/interface -I $(COQTOP)/contrib/jprover \
  -I $(COQTOP)/contrib/omega -I $(COQTOP)/contrib/romega \
  -I $(COQTOP)/contrib/ring -I $(COQTOP)/contrib/xml \
  -I $(CAMLP4LIB)
ZFLAGS:=$(OCAMLLIBS) $(COQSRC)
OPT:=
COQFLAGS:=-q $(OPT) $(COQLIBS) $(OTHERFLAGS) $(COQ_XML)
COQC:=$(COQBIN)coqc
COQDEP:=$(COQBIN)coqdep -c
GALLINA:=$(COQBIN)gallina
COQDOC:=$(COQBIN)coqdoc
CAMLC:=/home/notin/exec/ocaml-3.09.3/bin/ocamlc -rectypes -c
CAMLOPTC:=/home/notin/exec/ocaml-3.09.3/bin/ocamlopt -c
CAMLLINK:=/home/notin/exec/ocaml-3.09.3/bin/ocamlc
CAMLOPTLINK:=/home/notin/exec/ocaml-3.09.3/bin/ocamlopt
GRAMMARS:=grammar.cma
CAMLP4EXTEND:=pa_extend.cmo pa_macro.cmo q_MLast.cmo
PP:=-pp "$(CAMLP4)o -I . -I $(COQTOP)/parsing $(CAMLP4EXTEND) $(GRAMMARS) -impl"

###################################
#                                 #
# Definition of the "all" target. #
#                                 #
###################################

VFILES:=BoolAux.v\
  Extract.v\
  LetP.v\
  Option.v\
  OrderedListEq.v\
  OrderedListEq_ex.v\
  PolyListAux.v\
  addArray.v\
  algoDilemma1.v\
  algoDotriplet.v\
  algoDotriplets.v\
  algoRun.v\
  algoStalmarck.v\
  algoTrace.v\
  complete.v\
  doTriplet.v\
  doTriplets.v\
  equalBefore.v\
  interImplement.v\
  interImplement2.v\
  interImplement2_ex.v\
  interState.v\
  ltState.v\
  makeTriplet.v\
  memoryImplement.v\
  normalize.v\
  rZ.v\
  refl.v\
  restrictState.v\
  sTactic.v\
  stalmarck.v\
  state.v\
  stateDec.v\
  stateExtra.v\
  trace.v\
  triplet.v\
  unionState.v\
  wfArray.v
VOFILES:=$(VFILES:.v=.vo)
GLOBFILES:=$(VFILES:.v=.glob)
VIFILES:=$(VFILES:.v=.vi)
GFILES:=$(VFILES:.v=.g)
HTMLFILES:=$(VFILES:.v=.html)
GHTMLFILES:=$(VFILES:.v=.g.html)

all: BoolAux.vo\
  Extract.vo\
  LetP.vo\
  Option.vo\
  OrderedListEq.vo\
  OrderedListEq_ex.vo\
  PolyListAux.vo\
  addArray.vo\
  algoDilemma1.vo\
  algoDotriplet.vo\
  algoDotriplets.vo\
  algoRun.vo\
  algoStalmarck.vo\
  algoTrace.vo\
  complete.vo\
  doTriplet.vo\
  doTriplets.vo\
  equalBefore.vo\
  interImplement.vo\
  interImplement2.vo\
  interImplement2_ex.vo\
  interState.vo\
  ltState.vo\
  makeTriplet.vo\
  memoryImplement.vo\
  normalize.vo\
  rZ.vo\
  refl.vo\
  restrictState.vo\
  sTactic.vo\
  stalmarck.vo\
  state.vo\
  stateDec.vo\
  stateExtra.vo\
  trace.vo\
  triplet.vo\
  unionState.vo\
  wfArray.vo\
  staltac.cmo\
  StalTac.vo\
  StalTac_ex.vo\
  extraction\
  test

spec: $(VIFILES)

gallina: $(GFILES)

html: $(GLOBFILES) $(VFILES)
	- mkdir html
	$(COQDOC) -toc -html $(COQDOCLIBS) -d html $(VFILES)

gallinahtml: $(GLOBFILES) $(VFILES)
	- mkdir html
	$(COQDOC) -toc -html -g $(COQDOCLIBS) -d html $(VFILES)

all.ps: $(VFILES)
	$(COQDOC) -toc -ps $(COQDOCLIBS) -o $@ `$(COQDEP) -sort -suffix .v $(VFILES)`

all-gal.ps: $(VFILES)
	$(COQDOC) -toc -ps -g $(COQDOCLIBS) -o $@ `$(COQDEP) -sort -suffix .v $(VFILES)`



###################
#                 #
# Custom targets. #
#                 #
###################

StalTac.vo: 
	$(COQC) $(COQLIBS) -q -byte StalTac.v

StalTac_ex.vo: 
	$(COQC) $(COQLIBS) -vm -q -byte StalTac_ex.v

test: 
	@echo '***** test: checking the tautology ztwaalf1_be *****'
	extraction/stalmarck 1 extraction/ztwaalf1_be
	@echo '******************** End of test ***********************'

###################
#                 #
# Subdirectories. #
#                 #
###################

extraction:
	cd extraction ; $(MAKE) all

####################
#                  #
# Special targets. #
#                  #
####################

.PHONY: all opt byte archclean clean install depend html extraction

.SUFFIXES: .mli .ml .cmo .cmi .cmx .v .vo .vi .g .html .tex .g.tex .g.html

%.cmi: %.mli
	$(CAMLC) $(ZDEBUG) $(ZFLAGS) $<

%.cmo: %.ml
	$(CAMLC) $(ZDEBUG) $(ZFLAGS) $(PP) $<

%.cmx: %.ml
	$(CAMLOPTC) $(ZDEBUG) $(ZFLAGS) $(PP) $<

%.vo %.glob: %.v
	$(COQC) -dump-glob $*.glob $(COQDEBUG) $(COQFLAGS) $*

%.vi: %.v
	$(COQC) -i $(COQDEBUG) $(COQFLAGS) $*

%.g: %.v
	$(GALLINA) $<

%.tex: %.v
	$(COQDOC) -latex $< -o $@

%.html: %.v %.glob
	$(COQDOC) -glob-from $*.glob  -html $< -o $@

%.g.tex: %.v
	$(COQDOC) -latex -g $< -o $@

%.g.html: %.v %.glob
	$(COQDOC) -glob-from $*.glob -html -g $< -o $@

%.v.d.raw: %.v
	$(COQDEP) -slash $(COQLIBS) "$<" > "$@"\
	  || ( RV=$$?; rm -f "$@"; exit $${RV} )

%.v.d: %.v.d.raw
	$(HIDE)sed 's/\(.*\)\.vo[[:space:]]*:/\1.vo \1.glob:/' < "$<" > "$@" \
	  || ( RV=$$?; rm -f "$@"; exit $${RV} )

byte:
	$(MAKE) all "OPT:=-byte"

opt:
	$(MAKE) all "OPT:=-opt"

install:
	mkdir -p `$(COQC) -where`/user-contrib
	cp -f $(VOFILES) `$(COQC) -where`/user-contrib
	cp -f *.cmo `$(COQC) -where`/user-contrib
	(cd extraction ; $(MAKE) install)

Makefile: Make
	mv -f Makefile Makefile.bak
	$(COQBIN)coq_makefile -f Make -o Makefile

	(cd extraction ; $(MAKE) Makefile)

clean:
	rm -f *.cmo *.cmi *.cmx *.o $(VOFILES) $(VIFILES) $(GFILES) *~
	rm -f all.ps all-gal.ps all.glob $(VFILES:.v=.glob) $(HTMLFILES) $(GHTMLFILES) $(VFILES:.v=.tex) $(VFILES:.v=.g.tex) $(VFILES:.v=.v.d)
	- rm -rf html
	- rm -f StalTac.vo
	- rm -f StalTac_ex.vo
	- rm -f test
	(cd extraction ; $(MAKE) clean)

archclean:
	rm -f *.cmx *.o
	(cd extraction ; $(MAKE) archclean)


-include $(VFILES:.v=.v.d)
.SECONDARY: $(VFILES:.v=.v.d)

# WARNING
#
# This Makefile has been automagically generated
# Edit at your own risks !
#
# END OF WARNING

