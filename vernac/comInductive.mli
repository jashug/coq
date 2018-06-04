(************************************************************************)
(*         *   The Coq Proof Assistant / The Coq Development Team       *)
(*  v      *   INRIA, CNRS and contributors - Copyright 1999-2018       *)
(* <O___,, *       (see CREDITS file for the list of authors)           *)
(*   \VV/  **************************************************************)
(*    //   *    This file is distributed under the terms of the         *)
(*         *     GNU Lesser General Public License Version 2.1          *)
(*         *     (see LICENSE file for the text of the license)         *)
(************************************************************************)

open Names
open Entries
open Vernacexpr
open Decl_kinds

(** {6 Inductive and coinductive types} *)

(** Entry points for the vernacular commands Inductive and CoInductive *)

val do_mutual_inductive :
  (one_inductive_expr * decl_notation list) list -> cumulative_inductive_flag ->
  polymorphic -> private_flag -> Declarations.recursivity_kind -> unit

(************************************************************************)
(** Internal API  *)
(************************************************************************)

(** Exported for Record and Funind *)

(** Registering a mutual inductive definition together with its
   associated schemes *)

type one_inductive_impls =
  Impargs.manual_implicits (** for inds *)*
  Impargs.manual_implicits list (** for constrs *)

val declare_mutual_inductive_with_eliminations :
  mutual_inductive_entry -> UnivNames.universe_binders -> one_inductive_impls list ->
  MutInd.t
