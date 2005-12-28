(*****************************************************************************)
(*                                                                           *)
(*          Stalmarck  : StalTac                                             *)
(*                                                                           *)
(*          Pierre Letouzey & Laurent Thery                                  *)
(*                                                                           *)
(*****************************************************************************
A wrapper for the stalmarck tactic *)

Require Export ZArith.
Require Export normalize.
Require Export algoTrace.
Require Export refl.

Declare ML Module "staltac".

Ltac staltac := intros; repeat pop_prop; stalt.
