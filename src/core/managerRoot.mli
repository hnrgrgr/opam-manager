(**************************************************************************)
(*                                                                        *)
(*    Copyright 2014-2015, Gregoire Henry, OCamlPro                       *)
(*                                                                        *)
(*  All rights reserved.This file is distributed under the terms of the   *)
(*  GNU Lesser General Public License version 3.0 with linking            *)
(*  exception.                                                            *)
(*                                                                        *)
(*  OPAM is distributed in the hope that it will be useful, but WITHOUT   *)
(*  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY    *)
(*  or FITNESS FOR A PARTICULAR PURPOSE.See the GNU General Public        *)
(*  License for more details.                                             *)
(*                                                                        *)
(**************************************************************************)

open ManagerTypes

exception Unknown_root_name of string * bool

val default: config -> root

val from_path: ?anonymous:bool -> config -> OpamFilename.Dir.t -> root
val from_name: config -> string -> root

val get_opam_state: opam_root -> OpamState.state
val get_opam_env_state: opam_root -> OpamState.state

val switches: root -> switch list

val equal: root -> root -> bool

val create_opam_root: string -> OpamPath.t -> ManagerTypes.root