import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A275200: Numbers having fewer distinct prime factors of form 6*k+1 than of the form 6*k+5.

The programs for A275200, there is no canonical definition to state claims against.
-/

/-! ## A275200.P16095255571715384798

`lt[5, A343431(A232989(n))]`
-/

namespace A275200.P16095255571715384798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343431 (A232989 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A275200.P16095255571715384798

/-! ## A275200.P12648549209224037448

`eq[3, A139466(A006530(n+1))]+1`
-/

namespace A275200.P12648549209224037448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139466 (A006530 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A275200.P12648549209224037448

/-! ## A275200.P16507374345920066552

`eq[A320005(2*n+2), A356156(A088262(n+1))]+1`
-/

namespace A275200.P16507374345920066552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320005 (2 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356156 (A088262 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A275200.P16507374345920066552

/-! ## A275200.P1504593942613030624

`eq[1, A319995(A219209(n))]`
-/

namespace A275200.P1504593942613030624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319995 (A219209 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275200.P1504593942613030624

/-! ## A275200.P9678443792377744320

`eq[A005928(A092265(n+1)), A122859(n)]`
-/

namespace A275200.P9678443792377744320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (A092265 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122859 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A275200.P9678443792377744320

/-!
# A275201: Numbers having more distinct prime factors of form 6*k+1 than of the form 6*k+5.

The programs for A275201, there is no canonical definition to state claims against.
-/

/-! ## A275201.P3486447132854192024

`lt[A094473(A008578(n+1)), A107760(n)]`
-/

namespace A275201.P3486447132854192024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094473 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275201.P3486447132854192024

/-! ## A275201.P18046978152128517089

`lt[A094473(6*n+1), A107760(n)]`
-/

namespace A275201.P18046978152128517089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094473 (6 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275201.P18046978152128517089

/-! ## A275201.P5875794615678052969

`lt[A131294(A052222(n+1)), A107760(n)]`
-/

namespace A275201.P5875794615678052969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131294 (A052222 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275201.P5875794615678052969

/-! ## A275201.P13452238104516248323

`lt[A219178(2*n+1), A303063(A107760(n))]`
-/

namespace A275201.P13452238104516248323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219178 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303063 (A107760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275201.P13452238104516248323

/-! ## A275201.P10001240729771265547

`lt[A107755(2*n+5), A107725(A107760(n))]`
-/

namespace A275201.P10001240729771265547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107755 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107725 (A107760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275201.P10001240729771265547

/-! ## A275201.P7726637628683069319

`lt[A228106(n+1), A282486(A107760(n))]`
-/

namespace A275201.P7726637628683069319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282486 (A107760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275201.P7726637628683069319

/-! ## A275201.P11130688124562216781

`lt[A228106(n+1), A014467(A107760(n)+1)]`
-/

namespace A275201.P11130688124562216781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014467 (A107760 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275201.P11130688124562216781

/-! ## A275201.P8562912347553958478

`lt[A228106(n+1), A221492(A107760(n)+1)]`
-/

namespace A275201.P8562912347553958478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221492 (A107760 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275201.P8562912347553958478

/-! ## A275201.P4540938519015026551

`lt[A228106(n+5), A282487(A107760(n))]`
-/

namespace A275201.P4540938519015026551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228106 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282487 (A107760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275201.P4540938519015026551

/-! ## A275201.P428261771445367964

`lt[A157107(2*n+1), A126415(A132973(2*n))]`
-/

namespace A275201.P428261771445367964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157107 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126415 (A132973 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A275201.P428261771445367964

/-!
# A275202: Subword complexity (number of distinct blocks of length n) of the period doubling sequence A096268.

The programs for A275202, the canonical program `A275202.P2888438390454499260` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275202 has offset 1).

The definition of A275202 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005942, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A275202.P2888438390454499260

`A005942(n+2)/2`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A275202

/-- `A005942(n+2)/2` -/
def P2888438390454499260.Spec : Prop :=
  ∀ n, P2888438390454499260.a n = (A275202 (n + 1) : ℚ)

end A275202

/-! ## A275202.P9008968336723205354

`∑[floor(a(floor(n/2)))]` with `a(0)=2, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A275202.P9008968336723205354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275202.P9008968336723205354

namespace A275202

/-- `∑[floor(a(floor(n/2)))]` -/
def P9008968336723205354.Spec : Prop :=
  ∀ n, (P9008968336723205354.a n : ℤ) = A275202 (n + 1)

end A275202

/-! ## A275202.P14421545565073284819

`comp[lt[2*n+1, xor(n, 2*n)]+n]+2`
-/

namespace A275202.P14421545565073284819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2

end

end A275202.P14421545565073284819

namespace A275202

/-- `comp[lt[2*n+1, xor(n, 2*n)]+n]+2` -/
def P14421545565073284819.Spec : Prop :=
  ∀ n, (P14421545565073284819.a n : ℤ) = A275202 (n + 1)

end A275202

/-! ## A275202.P12217739191499062362

`A294456(n+1)+2`
-/

namespace A275202.P12217739191499062362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294456 (n + 1) + 2

end

end A275202.P12217739191499062362

namespace A275202

/-- `A294456(n+1)+2` -/
def P12217739191499062362.Spec : Prop :=
  ∀ n, P12217739191499062362.a n = A275202 (n + 1)

end A275202

/-! ## A275202.P7718913843271319270

`round(A214214(n+1)/2)`
-/

namespace A275202.P7718913843271319270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A214214 (n + 1) : ℚ) / 2)

end

end A275202.P7718913843271319270

namespace A275202

/-- `round(A214214(n+1)/2)` -/
def P7718913843271319270.Spec : Prop :=
  ∀ n, P7718913843271319270.a n = A275202 (n + 1)

end A275202

/-! ## A275202.P16767065136107295084

`A006165(n+1)+1+n`
-/

namespace A275202.P16767065136107295084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006165 (n + 1) + 1 + (n : ℤ)

end

end A275202.P16767065136107295084

namespace A275202

/-- `A006165(n+1)+1+n` -/
def P16767065136107295084.Spec : Prop :=
  ∀ n, P16767065136107295084.a n = A275202 (n + 1)

end A275202

/-! ## A275202.P2576022440254234222

`∑[log2(A214212(n+1))]+1`
-/

namespace A275202.P2576022440254234222
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A214212 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A275202.P2576022440254234222

namespace A275202

/-- `∑[log2(A214212(n+1))]+1` -/
def P2576022440254234222.Spec : Prop :=
  ∀ n, P2576022440254234222.a n = (A275202 (n + 1) : ℝ)

end A275202

/-! ## A275202.P8876680768240776241

`∑[2-char[A004760(n+2)]]`
-/

namespace A275202.P8876680768240776241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 2)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275202.P8876680768240776241

namespace A275202

/-- `∑[2-char[A004760(n+2)]]` -/
def P8876680768240776241.Spec : Prop :=
  ∀ n, P8876680768240776241.a n = A275202 (n + 1)

end A275202

/-! ## A275202.P18347588181381223685

`∑[and(1, A145342(n+1))+1]`
-/

namespace A275202.P18347588181381223685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A145342 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275202.P18347588181381223685

namespace A275202

/-- `∑[and(1, A145342(n+1))+1]` -/
def P18347588181381223685.Spec : Prop :=
  ∀ n, P18347588181381223685.a n = A275202 (n + 1)

end A275202

/-! ## A275202.P16648514947597249373

`comp[A004754(n+1)+n]+2`
-/

namespace A275202.P16648514947597249373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A275202.P16648514947597249373

namespace A275202

/-- `comp[A004754(n+1)+n]+2` -/
def P16648514947597249373.Spec : Prop :=
  ∀ n, (P16648514947597249373.a n : ℤ) = A275202 (n + 1)

end A275202

/-! ## A275202.P6457648831992457820

`2*(n+1)-A060973(n+1)`
-/

namespace A275202.P6457648831992457820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A060973 (n + 1)

end

end A275202.P6457648831992457820

namespace A275202

/-- `2*(n+1)-A060973(n+1)` -/
def P6457648831992457820.Spec : Prop :=
  ∀ n, P6457648831992457820.a n = A275202 (n + 1)

end A275202

/-! ## A275202.P4597002885908081063

`A220001(n+1)+2-A076178(n)`
-/

namespace A275202.P4597002885908081063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220001 (n + 1) + (2 - A076178 n)

end

end A275202.P4597002885908081063

namespace A275202

/-- `A220001(n+1)+2-A076178(n)` -/
def P4597002885908081063.Spec : Prop :=
  ∀ n, P4597002885908081063.a n = A275202 (n + 1)

end A275202

/-! ## A275202.P11257004510504284388

`A140592(n+1)-(A060973(n+1)+A010060(n))`
-/

namespace A275202.P11257004510504284388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140592 (n + 1) - (A060973 (n + 1) + A010060 n)

end

end A275202.P11257004510504284388

namespace A275202

/-- `A140592(n+1)-(A060973(n+1)+A010060(n))` -/
def P11257004510504284388.Spec : Prop :=
  ∀ n, P11257004510504284388.a n = A275202 (n + 1)

end A275202

/-! ## A275202.P14312485426551348066

`A005843(n+1)-A352228(n+2)`
-/

namespace A275202.P14312485426551348066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) - A352228 (n + 2)

end

end A275202.P14312485426551348066

namespace A275202

/-- `A005843(n+1)-A352228(n+2)` -/
def P14312485426551348066.Spec : Prop :=
  ∀ n, P14312485426551348066.a n = A275202 (n + 1)

end A275202

/-! ## A275202.P12787834279143517977

`A140592(n+1)-(A352228(n+2)+A010060(n))`
-/

namespace A275202.P12787834279143517977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140592 (n + 1) - (A352228 (n + 2) + A010060 n)

end

end A275202.P12787834279143517977

namespace A275202

/-- `A140592(n+1)-(A352228(n+2)+A010060(n))` -/
def P12787834279143517977.Spec : Prop :=
  ∀ n, P12787834279143517977.a n = A275202 (n + 1)

end A275202

/-! ## A275202.P5324098340689649592

`∑[char[A038558(n)]+1]`
-/

namespace A275202.P5324098340689649592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038558 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275202.P5324098340689649592

namespace A275202

/-- `∑[char[A038558(n)]+1]` -/
def P5324098340689649592.Spec : Prop :=
  ∀ n, (P5324098340689649592.a n : ℤ) = A275202 (n + 1)

end A275202

/-! ## A275202.P4279397556693844752

`∑[gcd(2, A333776(n))]`
-/

namespace A275202.P4279397556693844752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A333776 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275202.P4279397556693844752

namespace A275202

/-- `∑[gcd(2, A333776(n))]` -/
def P4279397556693844752.Spec : Prop :=
  ∀ n, (P4279397556693844752.a n : ℤ) = A275202 (n + 1)

end A275202

/-! ## A275202.P5665002742776996055

`A060973(A080637(n+1))+n+1`
-/

namespace A275202.P5665002742776996055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060973 (A080637 (n + 1)).toNat + (n + 1 : ℤ)

end

end A275202.P5665002742776996055

namespace A275202

/-- `A060973(A080637(n+1))+n+1` -/
def P5665002742776996055.Spec : Prop :=
  ∀ n, P5665002742776996055.a n = A275202 (n + 1)

end A275202

/-! ## A275202.P1527830977890704627

`A352228(A007378(n+2))+n+1`
-/

namespace A275202.P1527830977890704627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352228 (A007378 (n + 2)).toNat + (n + 1 : ℤ)

end

end A275202.P1527830977890704627

namespace A275202

/-- `A352228(A007378(n+2))+n+1` -/
def P1527830977890704627.Spec : Prop :=
  ∀ n, P1527830977890704627.a n = A275202 (n + 1)

end A275202

/-! ## A275202.P593134393590020199

`∑[2-char[A053642(n+1)]]`
-/

namespace A275202.P593134393590020199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053642 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275202.P593134393590020199

namespace A275202

/-- `∑[2-char[A053642(n+1)]]` -/
def P593134393590020199.Spec : Prop :=
  ∀ n, P593134393590020199.a n = A275202 (n + 1)

end A275202

/-!
# A275204: Triangle read by rows: T(n,k) = number of domino stacks with n dominoes having a base of k dominoes.

The programs for A275204, there is no canonical definition to state claims against.
-/

/-! ## A275204.P18212337458319884251

`or(A026626(n), A092436(A003229(n)))`
-/

namespace A275204.P18212337458319884251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026626 n) (A092436 (A003229 n).toNat)

end

end A275204.P18212337458319884251

/-! ## A275204.P12003847241528841092

`or(A026626(n), A122840(A001037(n)))`
-/

namespace A275204.P12003847241528841092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026626 n) (A122840 (A001037 n).toNat)

end

end A275204.P12003847241528841092

/-! ## A275204.P13647874635760984765

`or(A122840(A001037(n)), A136482(n))`
-/

namespace A275204.P13647874635760984765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122840 (A001037 n).toNat) (A136482 n)

end

end A275204.P13647874635760984765

/-! ## A275204.P4261990452754223904

`or(A136482(n), A341994(A004111(n)))`
-/

namespace A275204.P4261990452754223904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A136482 n) (A341994 (A004111 n).toNat)

end

end A275204.P4261990452754223904

/-! ## A275204.P11518083896082078182

`or(A136482(n), A295895(A186537(n)))`
-/

namespace A275204.P11518083896082078182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A136482 n) (A295895 (A186537 n).toNat)

end

end A275204.P11518083896082078182

/-!
# A275205: Partial sums of the Dirichlet inverse of the Euler totient function.

The programs for A275205, the canonical program `A275205.P10350862978894728865` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275205 has offset 1).

The definition of A275205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275205.P10350862978894728865

`∑[∏{p}[n+1, 1-#]]`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275205

/-- `∑[∏{p}[n+1, 1-#]]` -/
def P10350862978894728865.Spec : Prop :=
  ∀ n, P10350862978894728865.a n = A275205 (n + 1)

theorem P10350862978894728865.correct : P10350862978894728865.Spec := by
  intro n
  simp only [A275205, Nat.add_sub_cancel]

end A275205

/-! ## A275205.P710484336449655482

`∏{p}[n+1, 1-#]+a(n-1)` with `a(0)=1`
-/

namespace A275205.P710484336449655482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - (p : ℤ)) + a (n - 1)

end

end A275205.P710484336449655482

namespace A275205

/-- `∏{p}[n+1, 1-#]+a(n-1)` -/
def P710484336449655482.Spec : Prop :=
  ∀ n, P710484336449655482.a n = A275205 (n + 1)

end A275205

/-! ## A275205.P7141487233038937049

`∑[A023900(n+1)]`
-/

namespace A275205.P7141487233038937049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275205.P7141487233038937049

namespace A275205

/-- `∑[A023900(n+1)]` -/
def P7141487233038937049.Spec : Prop :=
  ∀ n, P7141487233038937049.a n = A275205 (n + 1)

end A275205

/-! ## A275205.P11414511538083969618

`∑[A097945(∏{p}[n+1, #])]`
-/

namespace A275205.P11414511538083969618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097945 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275205.P11414511538083969618

namespace A275205

/-- `∑[A097945(∏{p}[n+1, #])]` -/
def P11414511538083969618.Spec : Prop :=
  ∀ n, P11414511538083969618.a n = A275205 (n + 1)

end A275205

/-! ## A275205.P1212340969316574656

`∑[A318833(n+1)-(n+1)]`
-/

namespace A275205.P1212340969316574656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318833 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275205.P1212340969316574656

namespace A275205

/-- `∑[A318833(n+1)-(n+1)]` -/
def P1212340969316574656.Spec : Prop :=
  ∀ n, P1212340969316574656.a n = A275205 (n + 1)

theorem P1212340969316574656.correct : P1212340969316574656.Spec := by
  intro n
  simp only [A275205, Nat.add_sub_cancel, A275205.P1212340969316574656.f1, A275205.P1212340969316574656.a, A275205.P10350862978894728865.f2, A275205.P10350862978894728865.f1, A275205.P10350862978894728865.a, A318833, A318833.P15994994677912991465.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275205

/-! ## A275205.P11615703366519332537

`∑[∑{d}[n+1, #*A008683(#)]]`
-/

namespace A275205.P11615703366519332537
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (d : ℤ) * A008683 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275205.P11615703366519332537

namespace A275205

/-- `∑[∑{d}[n+1, #*A008683(#)]]` -/
def P11615703366519332537.Spec : Prop :=
  ∀ n, P11615703366519332537.a n = A275205 (n + 1)

end A275205

/-! ## A275205.P1451083361895138468

`∑[A061020(A007947(n+1))]`
-/

namespace A275205.P1451083361895138468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061020 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275205.P1451083361895138468

namespace A275205

/-- `∑[A061020(A007947(n+1))]` -/
def P1451083361895138468.Spec : Prop :=
  ∀ n, P1451083361895138468.a n = A275205 (n + 1)

end A275205

/-! ## A275205.P17533854018017880388

`∑[∑{d}[A062953(n+1), A062953(#)]]`
-/

namespace A275205.P17533854018017880388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062953 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A062953 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275205.P17533854018017880388

namespace A275205

/-- `∑[∑{d}[A062953(n+1), A062953(#)]]` -/
def P17533854018017880388.Spec : Prop :=
  ∀ n, P17533854018017880388.a n = A275205 (n + 1)

end A275205

/-! ## A275205.P13694851069005420751

`∑[A318674(n+1)-A318675(n+1)]`
-/

namespace A275205.P13694851069005420751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318674 (n + 1) - A318675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275205.P13694851069005420751

namespace A275205

/-- `∑[A318674(n+1)-A318675(n+1)]` -/
def P13694851069005420751.Spec : Prop :=
  ∀ n, P13694851069005420751.a n = A275205 (n + 1)

end A275205

/-! ## A275205.P2600948295231288703

`∑[A125131(A302138(n+1))]`
-/

namespace A275205.P2600948295231288703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125131 (A302138 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275205.P2600948295231288703

namespace A275205

/-- `∑[A125131(A302138(n+1))]` -/
def P2600948295231288703.Spec : Prop :=
  ∀ n, P2600948295231288703.a n = A275205 (n + 1)

end A275205

/-! ## A275205.P4456845905629068091

`∑[A354104(A267099(n+1))]`
-/

namespace A275205.P4456845905629068091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354104 (A267099 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275205.P4456845905629068091

namespace A275205

/-- `∑[A354104(A267099(n+1))]` -/
def P4456845905629068091.Spec : Prop :=
  ∀ n, P4456845905629068091.a n = A275205 (n + 1)

end A275205

/-! ## A275205.P10654749045054392696

`∑[A000010(A062953(n+1)²)/A062953(n+1)]`
-/

namespace A275205.P10654749045054392696
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A062953 (n + 1) ^ 2).toNat : ℚ) / (A062953 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275205.P10654749045054392696

namespace A275205

/-- `∑[A000010(A062953(n+1)²)/A062953(n+1)]` -/
def P10654749045054392696.Spec : Prop :=
  ∀ n, P10654749045054392696.a n = (A275205 (n + 1) : ℚ)

end A275205

/-! ## A275205.P14146994784943136955

`2-∑[A378217((n+1)²)]`
-/

namespace A275205.P14146994784943136955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378217 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275205.P14146994784943136955

namespace A275205

/-- `2-∑[A378217((n+1)²)]` -/
def P14146994784943136955.Spec : Prop :=
  ∀ n, P14146994784943136955.a n = A275205 (n + 1)

end A275205

/-! ## A275205.P17815760652572711257

`A023900((n+1)²)+a(n-1)` with `a(0)=1`
-/

namespace A275205.P17815760652572711257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023900 ((n + 1) ^ 2) + a (n - 1)

end

end A275205.P17815760652572711257

namespace A275205

/-- `A023900((n+1)²)+a(n-1)` -/
def P17815760652572711257.Spec : Prop :=
  ∀ n, P17815760652572711257.a n = A275205 (n + 1)

end A275205

/-! ## A275205.P17297895617614829083

`∑[A349340(A078615(n+1))]`
-/

namespace A275205.P17297895617614829083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A078615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275205.P17297895617614829083

namespace A275205

/-- `∑[A349340(A078615(n+1))]` -/
def P17297895617614829083.Spec : Prop :=
  ∀ n, P17297895617614829083.a n = A275205 (n + 1)

end A275205

/-! ## A275205.P3960026608911284036

`∑[A349340(A007947(n+1)²)]`
-/

namespace A275205.P3960026608911284036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (A007947 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275205.P3960026608911284036

namespace A275205

/-- `∑[A349340(A007947(n+1)²)]` -/
def P3960026608911284036.Spec : Prop :=
  ∀ n, P3960026608911284036.a n = A275205 (n + 1)

end A275205

/-! ## A275205.P3751455970583052073

`∑[A097945(A342905(∑[n+1]))]`
-/

namespace A275205.P3751455970583052073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097945 (A342905 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275205.P3751455970583052073

namespace A275205

/-- `∑[A097945(A342905(∑[n+1]))]` -/
def P3751455970583052073.Spec : Prop :=
  ∀ n, P3751455970583052073.a n = A275205 (n + 1)

end A275205

/-! ## A275205.P7116890368933012144

`∑[A231425(∑[n+1])]`
-/

namespace A275205.P7116890368933012144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231425 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275205.P7116890368933012144

namespace A275205

/-- `∑[A231425(∑[n+1])]` -/
def P7116890368933012144.Spec : Prop :=
  ∀ n, P7116890368933012144.a n = A275205 (n + 1)

end A275205

/-! ## A275205.P14635975781035219920

`∑[A334312(∑[n+1])]`
-/

namespace A275205.P14635975781035219920
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334312 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275205.P14635975781035219920

namespace A275205

/-- `∑[A334312(∑[n+1])]` -/
def P14635975781035219920.Spec : Prop :=
  ∀ n, P14635975781035219920.a n = A275205 (n + 1)

end A275205

/-! ## A275205.P6222683474823416904

`∑[A366444(∑[n+1])]`
-/

namespace A275205.P6222683474823416904
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366444 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A275205.P6222683474823416904

namespace A275205

/-- `∑[A366444(∑[n+1])]` -/
def P6222683474823416904.Spec : Prop :=
  ∀ n, P6222683474823416904.a n = A275205 (n + 1)

end A275205

/-!
# A275206: Expansion of (A(x)^2 - A(x^2))/2 where A(x) = A000108(x) - 1.

The programs for A275206, the canonical program `A275206.P3060918531879445442` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275206 has offset 0).

The definition of A275206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275206.P41293829696864891

`2*A050182(floor(n-atan(n)))`
-/

namespace A275206.P41293829696864891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050182 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat

end

end A275206.P41293829696864891

namespace A275206

/-- `2*A050182(floor(n-atan(n)))` -/
def P41293829696864891.Spec : Prop :=
  ∀ n, P41293829696864891.a n = A275206 n

end A275206

/-! ## A275206.P11354146136956015780

`2*A050182(floor((1-n)²/(acot(n)+n)))`
-/

namespace A275206.P11354146136956015780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050182 ⌊((1 - (n : ℤ)) ^ 2 : ℝ) / (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))⌋.toNat

end

end A275206.P11354146136956015780

namespace A275206

/-- `2*A050182(floor((1-n)²/(acot(n)+n)))` -/
def P11354146136956015780.Spec : Prop :=
  ∀ n, P11354146136956015780.a n = A275206 n

end A275206

/-! ## A275206.P11714829173191428328

`2*A050182(A289207(n))`
-/

namespace A275206.P11714829173191428328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050182 (A289207 n).toNat

end

end A275206.P11714829173191428328

namespace A275206

/-- `2*A050182(A289207(n))` -/
def P11714829173191428328.Spec : Prop :=
  ∀ n, P11714829173191428328.a n = A275206 n

end A275206

/-! ## A275206.P3060918531879445442

`Δ[(4-6/(n+1))*a(n-1)]%A007595(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A275206

/-- `Δ[(4-6/(n+1))*a(n-1)]%A007595(n+1)` -/
def P3060918531879445442.Spec : Prop :=
  ∀ n, P3060918531879445442.a n = A275206 n

theorem P3060918531879445442.correct : P3060918531879445442.Spec := by
  intro n
  simp only [A275206]

end A275206

/-! ## A275206.P4934865031456263643

`A071724(n)-A007595(n+1)`
-/

namespace A275206.P4934865031456263643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n - A007595 (n + 1)

end

end A275206.P4934865031456263643

namespace A275206

/-- `A071724(n)-A007595(n+1)` -/
def P4934865031456263643.Spec : Prop :=
  ∀ n, P4934865031456263643.a n = A275206 n

end A275206

/-! ## A275206.P8607435002505581444

`A000245(n)%A007595(n+1)`
-/

namespace A275206.P8607435002505581444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000245 n) (A007595 (n + 1))

end

end A275206.P8607435002505581444

namespace A275206

/-- `A000245(n)%A007595(n+1)` -/
def P8607435002505581444.Spec : Prop :=
  ∀ n, P8607435002505581444.a n = A275206 n

end A275206

/-!
# A275207: Expansion of (A(x)^2+A(x^2))/2 where A(x) = A001006(x).

The programs for A275207, there is no canonical definition to state claims against.
-/

/-! ## A275207.P1658677078271252282

`A275209(n)+A001006(n)`
-/

namespace A275207.P1658677078271252282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275209 n + A001006 n

end

end A275207.P1658677078271252282

/-! ## A275207.P4605462027494577302

`A275209(n)+Δ[A097332(n)]`
-/

namespace A275207.P4605462027494577302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275209 n + (f1 (n + 1) - f1 n)

end

end A275207.P4605462027494577302

/-! ## A275207.P347342414707295106

`A275209(n)+A086246(n+2)`
-/

namespace A275207.P347342414707295106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275209 n + A086246 (n + 2)

end

end A275207.P347342414707295106

/-! ## A275207.P8783546134248713639

`A275209(n)-A168051(n+2)`
-/

namespace A275207.P8783546134248713639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275209 n - A168051 (n + 2)

end

end A275207.P8783546134248713639

/-! ## A275207.P8582096314628262039

`A275209(n)-A292440(n+2)`
-/

namespace A275207.P8582096314628262039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275209 n - A292440 (n + 2)

end

end A275207.P8582096314628262039

/-! ## A275207.P11099822817541567894

`A275209(n)+abs(A166587(n+1))`
-/

namespace A275207.P11099822817541567894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275209 n + |A166587 (n + 1)|

end

end A275207.P11099822817541567894

/-! ## A275207.P16380755036639587667

`A002026(n+1)-A275208(n)`
-/

namespace A275207.P16380755036639587667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 (n + 1) - A275208 n

end

end A275207.P16380755036639587667

/-! ## A275207.P14632465330055592054

`A244884(n+2)-A275208(n)`
-/

namespace A275207.P14632465330055592054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244884 (n + 2) - A275208 n

end

end A275207.P14632465330055592054

/-! ## A275207.P1886303746271149840

`Δ[A001006(n+1)]-A275208(n)`
-/

namespace A275207.P1886303746271149840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A275208 n

end

end A275207.P1886303746271149840

/-! ## A275207.P6202707720681587033

`A275209(n)+A064645(∑[n])`
-/

namespace A275207.P6202707720681587033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275209 n + A064645 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275207.P6202707720681587033

/-! ## A275207.P876318972354644105

`A275209(n)+A026300(A000096(n))`
-/

namespace A275207.P876318972354644105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275209 n + A026300 (A000096 n).toNat

end

end A275207.P876318972354644105

/-! ## A275207.P5896311439930768898

`A275209(n)+A247364(A253145(n))`
-/

namespace A275207.P5896311439930768898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275209 n + A247364 (A253145 n).toNat

end

end A275207.P5896311439930768898

/-!
# A275208: Expansion of (A(x)^2-A(x^2))/2 where A(x) = A001006(x).

The programs for A275208, there is no canonical definition to state claims against.
-/

/-! ## A275208.P5745947302080624826

`record[A105695(n)]-A275207(n)`
-/

namespace A275208.P5745947302080624826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A275207 n

end

end A275208.P5745947302080624826

/-! ## A275208.P1971269937328347723

`A002026(n+1)-A275207(n)`
-/

namespace A275208.P1971269937328347723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 (n + 1) - A275207 n

end

end A275208.P1971269937328347723

/-! ## A275208.P12152756056582376642

`A244884(n+2)-A275207(n)`
-/

namespace A275208.P12152756056582376642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244884 (n + 2) - A275207 n

end

end A275208.P12152756056582376642

/-! ## A275208.P2691957249635065648

`A105695(n+3)-A275207(n)`
-/

namespace A275208.P2691957249635065648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (n + 3) - A275207 n

end

end A275208.P2691957249635065648

/-! ## A275208.P2037769106829656360

`record[Δ[A086246(n)]]-A275207(n)`
-/

namespace A275208.P2037769106829656360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A275207 n

end

end A275208.P2037769106829656360

/-! ## A275208.P6143230914951406192

`Δ[A001006(n+1)]-A275207(n)`
-/

namespace A275208.P6143230914951406192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A275207 n

end

end A275208.P6143230914951406192

/-! ## A275208.P16249374486930454894

`Δ[A086246(n+3)]-A275207(n)`
-/

namespace A275208.P16249374486930454894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A275207 n

end

end A275208.P16249374486930454894

/-! ## A275208.P14936247274096717141

`abs(A275207(n)+Δ[A292440(n+3)])`
-/

namespace A275208.P14936247274096717141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A275207 n + (f1 (n + 1) - f1 n)|

end

end A275208.P14936247274096717141

/-! ## A275208.P6850837167090938536

`A086246(n+4)-(A275207(n)+A086246(n+3))`
-/

namespace A275208.P6850837167090938536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 4) - (A275207 n + A086246 (n + 3))

end

end A275208.P6850837167090938536

/-! ## A275208.P4152882566849300109

`A275210(n)+A001006(n)%A005717(n+1)`
-/

namespace A275208.P4152882566849300109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275210 n + Int.tmod (A001006 n) (A005717 (n + 1))

end

end A275208.P4152882566849300109

/-! ## A275208.P9284045154456417354

`A275210(n)+A001006(n)%A000984(n)`
-/

namespace A275208.P9284045154456417354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275210 n + Int.tmod (A001006 n) (A000984 n)

end

end A275208.P9284045154456417354

/-! ## A275208.P6304536766366671311

`A026300(A034856(n+1))-A275207(n)`
-/

namespace A275208.P6304536766366671311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 (A034856 (n + 1)).toNat - A275207 n

end

end A275208.P6304536766366671311

/-!
# A275209: Expansion of (A(x)^2+A(x^2))/2 where A(x) = A001006(x)-1.

The programs for A275209, there is no canonical definition to state claims against.
-/

/-! ## A275209.P6266032010695186924

`A275207(n)-A001006(n)`
-/

namespace A275209.P6266032010695186924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 n - A001006 n

end

end A275209.P6266032010695186924

/-! ## A275209.P7950883183595040565

`A382987(n)-A275210(n)`
-/

namespace A275209.P7950883183595040565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382987 n - A275210 n

end

end A275209.P7950883183595040565

/-! ## A275209.P3346312201915751676

`A275207(n)-Δ[A097332(n)]`
-/

namespace A275209.P3346312201915751676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 n - (f1 (n + 1) - f1 n)

end

end A275209.P3346312201915751676

/-! ## A275209.P8598585519196859113

`A275207(n)+A168051(n+2)`
-/

namespace A275209.P8598585519196859113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 n + A168051 (n + 2)

end

end A275209.P8598585519196859113

/-! ## A275209.P1881064807131392201

`A292440(n+2)+A275207(n)`
-/

namespace A275209.P1881064807131392201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 (n + 2) + A275207 n

end

end A275209.P1881064807131392201

/-! ## A275209.P12447688820036915189

`A275207(n)-A086246(n+2)`
-/

namespace A275209.P12447688820036915189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 n - A086246 (n + 2)

end

end A275209.P12447688820036915189

/-! ## A275209.P16087675581234775573

`A275207(n)-abs(A166587(n+1))`
-/

namespace A275209.P16087675581234775573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 n - |A166587 (n + 1)|

end

end A275209.P16087675581234775573

/-! ## A275209.P11053599372964557442

`A275207(n)-(A343386(n)+A107587(n))`
-/

namespace A275209.P11053599372964557442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 n - (A343386 n + A107587 n)

end

end A275209.P11053599372964557442

/-! ## A275209.P10513930077494546821

`A275207(n)-A091869(A000124(n))`
-/

namespace A275209.P10513930077494546821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 n - A091869 (A000124 n).toNat

end

end A275209.P10513930077494546821

/-! ## A275209.P9812100126882040948

`A275207(n)-A064645(∑[n])`
-/

namespace A275209.P9812100126882040948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 n - A064645 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275209.P9812100126882040948

/-! ## A275209.P666789315158019915

`A275207(n)-A026300(A000096(n))`
-/

namespace A275209.P666789315158019915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 n - A026300 (A000096 n).toNat

end

end A275209.P666789315158019915

/-! ## A275209.P18196582660142695266

`A275207(n)-A247364(A253145(n))`
-/

namespace A275209.P18196582660142695266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 n - A247364 (A253145 n).toNat

end

end A275209.P18196582660142695266

/-! ## A275209.P656359540575054853

`A275207(n)-A258709(∑[n])`
-/

namespace A275209.P656359540575054853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275207 n - A258709 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275209.P656359540575054853

/-!
# A275210: Expansion of (A(x)^2-A(x^2))/2 where A(x) = A001006(x)-1.

The programs for A275210, there is no canonical definition to state claims against.
-/

/-! ## A275210.P4534228656594817378

`A382987(n)-A275209(n)`
-/

namespace A275210.P4534228656594817378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382987 n - A275209 n

end

end A275210.P4534228656594817378

/-! ## A275210.P31489140003924441

`A275208(floor(acot(n)+n))-A001006(n)`
-/

namespace A275210.P31489140003924441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275208 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat - A001006 n

end

end A275210.P31489140003924441

/-! ## A275210.P15588902870633138016

`A275208(A028310(n))-A001006(n)`
-/

namespace A275210.P15588902870633138016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275208 (A028310 n).toNat - A001006 n

end

end A275210.P15588902870633138016

/-! ## A275210.P3057794426221454699

`(A275209(n)+A275208(n))%A275207(n)`
-/

namespace A275210.P3057794426221454699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275209 n + A275208 n) (A275207 n)

end

end A275210.P3057794426221454699

/-! ## A275210.P9671284501691910669

`(A275208(n)-A001006(n))%A275207(n)`
-/

namespace A275210.P9671284501691910669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275208 n - A001006 n) (A275207 n)

end

end A275210.P9671284501691910669

/-! ## A275210.P3728936578459276655

`A026269(n+2)-(A275209(n)+A005554(n+1))`
-/

namespace A275210.P3728936578459276655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026269 (n + 2) - (A275209 n + A005554 (n + 1))

end

end A275210.P3728936578459276655

/-! ## A275210.P17577179741311639559

`A275208(n)-A001006(n)%A000984(n)`
-/

namespace A275210.P17577179741311639559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275208 n - Int.tmod (A001006 n) (A000984 n)

end

end A275210.P17577179741311639559

/-!
# A275211: Numbers of the form p^^k, where p is prime, k > 1, and ^^ is the tetration operator: x^^y = x^x^...^x with y copies of x.

The programs for A275211, there is no canonical definition to state claims against.
-/

/-! ## A275211.P15152764866933690014

`A219338(lt[A350764(n+1), n+1])`
-/

namespace A275211.P15152764866933690014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350764 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219338 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A275211.P15152764866933690014

/-! ## A275211.P18027197532359636116

`A067688(A182699(n)+A005117(n+1))`
-/

namespace A275211.P18027197532359636116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067688 (A182699 n + A005117 (n + 1)).toNat

end

end A275211.P18027197532359636116

/-! ## A275211.P17152246762465097415

`A067688(∑[A094587(n)])`
-/

namespace A275211.P17152246762465097415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067688 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A275211.P17152246762465097415

/-!
# A275212: Triangle read by rows, T(n,k) = (n+k+1)! / ([(n-k)/2]! * [(n+k+2)/2]!) with [.] the floor function, for n>=0 and 0<=k<=n.

The programs for A275212, there is no canonical definition to state claims against.
-/

/-! ## A275212.P13929835029257081687

`A217434(A341511(n+1)!)`
-/

namespace A275212.P13929835029257081687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (Nat.factorial (A341511 (n + 1)).toNat)

end

end A275212.P13929835029257081687

/-! ## A275212.P14085129299751086721

`A076000(A147847(n))%A163794(n+1)`
-/

namespace A275212.P14085129299751086721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076000 (A147847 n).toNat) (A163794 (n + 1))

end

end A275212.P14085129299751086721

/-!
# A275214: Triangle read by rows, a q-Narayana statistic on Catalan paths.

The programs for A275214, there is no canonical definition to state claims against.
-/

/-! ## A275214.P8039024452772126757

`A001222(ceil(sqrt(A002426(n)))²-n+2)`
-/

namespace A275214.P8039024452772126757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (⌈Real.sqrt (A002426 n : ℝ)⌉ ^ 2 - (n : ℤ) + 2).toNat

end

end A275214.P8039024452772126757

/-!
# A275215: Triangle read by rows, coefficients of the q-Narayana numbers.

The programs for A275215, there is no canonical definition to state claims against.
-/

/-! ## A275215.P6906003330234949114

`A364388(A022166(n))+A045701(n+1)`
-/

namespace A275215.P6906003330234949114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364388 (A022166 n).toNat + A045701 (n + 1)

end

end A275215.P6906003330234949114

/-! ## A275215.P2981014034087268609

`gcd(A036234(n+1), A154951(A154983(n)))`
-/

namespace A275215.P2981014034087268609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036234 (n + 1)) (A154951 (A154983 n).toNat)

end

end A275215.P2981014034087268609

/-! ## A275215.P13356030572293753691

`gcd(A267383(n+1), A271269(A007318(n)))`
-/

namespace A275215.P13356030572293753691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A267383 (n + 1)) (A271269 (A007318 n).toNat)

end

end A275215.P13356030572293753691

/-! ## A275215.P14973370495938554980

`A094840(A059045(n)+1)`
-/

namespace A275215.P14973370495938554980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094840 (A059045 n + 1).toNat

end

end A275215.P14973370495938554980

/-! ## A275215.P5634006842170065561

`A265917(A294746(n+1))`
-/

namespace A275215.P5634006842170065561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265917 (A294746 (n + 1)).toNat

end

end A275215.P5634006842170065561

/-!
# A275216: Triangle read by rows, coefficients of the q-binomials (Gaussian binomial coefficients).

The programs for A275216, there is no canonical definition to state claims against.
-/

/-! ## A275216.P10291819804336547738

`gcd(A000111(A152140(2*(n+2))), A287251(2*(n+1)))`
-/

namespace A275216.P10291819804336547738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000111 (A152140 (2 * (n + 2))).toNat) (A287251 (2 * (n + 1)))

end

end A275216.P10291819804336547738

/-! ## A275216.P1940268567675024475

`gcd(A007318(n+2), A228570(A251721(2*(n+2))))`
-/

namespace A275216.P1940268567675024475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007318 (n + 2)) (A228570 (A251721 (2 * (n + 2))).toNat)

end

end A275216.P1940268567675024475

/-! ## A275216.P14051977442791005001

`A200675(∑{e}[A176200(n+2)+A005843(n), #])`
-/

namespace A275216.P14051977442791005001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176200 (n + 2) + A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200675 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A275216.P14051977442791005001

/-! ## A275216.P11517182163787810627

`A330098(A095047(n+1)-A001222(2*n+1))`
-/

namespace A275216.P11517182163787810627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330098 (A095047 (n + 1) - A001222 (2 * n + 1)).toNat

end

end A275216.P11517182163787810627

/-! ## A275216.P14529026155467429562

`A054977(A036262(A183190(A075117(n+1))))`
-/

namespace A275216.P14529026155467429562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A036262 (A183190 (A075117 (n + 1)).toNat).toNat).toNat

end

end A275216.P14529026155467429562

/-!
# A275218: Numbers in 2-cycles of RATS sequences.

The programs for A275218, there is no canonical definition to state claims against.
-/

/-! ## A275218.P2398763949986103213

`A161596(A094865(n)+comp[2*n*gcd(2, n)])`
-/

namespace A275218.P2398763949986103213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * Nat.gcd 2 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161596 (A094865 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A275218.P2398763949986103213

/-!
# A275219: Number of primes between prime (n)*prime (n + 1) and prime (n + 1) prime (n + 2).

The programs for A275219, the canonical program `A275219.P2439531357343426924` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275219 has offset 1).

The definition of A275219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275219.P2439531357343426924

`A256446(n+1)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A275219

/-- `A256446(n+1)+1` -/
def P2439531357343426924.Spec : Prop :=
  ∀ n, P2439531357343426924.a n = A275219 (n + 1)

theorem P2439531357343426924.correct : P2439531357343426924.Spec := by
  intro n
  simp only [A275219, Nat.add_sub_cancel]

end A275219

/-! ## A275219.P12135819369749109453

`Δ[A120941(n+1)]+1`
-/

namespace A275219.P12135819369749109453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A275219.P12135819369749109453

namespace A275219

/-- `Δ[A120941(n+1)]+1` -/
def P12135819369749109453.Spec : Prop :=
  ∀ n, P12135819369749109453.a n = A275219 (n + 1)

theorem P12135819369749109453.correct : P12135819369749109453.Spec := by
  intro n
  simp only [A275219, Nat.add_sub_cancel, A275219.P12135819369749109453.f1, A275219.P12135819369749109453.a, A275219.P2439531357343426924.a, A120941, A120941.P1519152944059217125.a, A256446, A256446.P17907843069056531532.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250477, A250477.P16411795154775873264.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A275219

/-! ## A275219.P4731774247095562277

`Δ[A250477(n+1)]+1`
-/

namespace A275219.P4731774247095562277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A275219.P4731774247095562277

namespace A275219

/-- `Δ[A250477(n+1)]+1` -/
def P4731774247095562277.Spec : Prop :=
  ∀ n, P4731774247095562277.a n = A275219 (n + 1)

theorem P4731774247095562277.correct : P4731774247095562277.Spec := by
  intro n
  simp only [A275219, Nat.add_sub_cancel, A275219.P4731774247095562277.f1, A275219.P4731774247095562277.a, A275219.P2439531357343426924.a, A250477, A250477.P16411795154775873264.a, A256446, A256446.P17907843069056531532.a, A120941, A120941.P1519152944059217125.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A275219

/-! ## A275219.P3968447265634142832

`A256469(n+1)+A256468(n+2)`
-/

namespace A275219.P3968447265634142832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256469 (n + 1) + A256468 (n + 2)

end

end A275219.P3968447265634142832

namespace A275219

/-- `A256469(n+1)+A256468(n+2)` -/
def P3968447265634142832.Spec : Prop :=
  ∀ n, P3968447265634142832.a n = A275219 (n + 1)

theorem P3968447265634142832.correct : P3968447265634142832.Spec := by
  intro n
  simp only [A275219, Nat.add_sub_cancel, A275219.P3968447265634142832.a, A275219.P2439531357343426924.a, A256446, A256446.P17907843069056531532.a, A256468, A256468.P15833489412511418299.a, A256469, A256469.P956244140118081997.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A256448, A256448.P8888948745584736931.a, A120941, A120941.P1519152944059217125.a, A250474, A250474.P15580657759443600580.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250473, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A275219

/-! ## A275219.P17579128217839535139

`A120941(n+2)-A120941(n+1)+1`
-/

namespace A275219.P17579128217839535139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120941 (n + 2) - A120941 (n + 1) + 1

end

end A275219.P17579128217839535139

namespace A275219

/-- `A120941(n+2)-A120941(n+1)+1` -/
def P17579128217839535139.Spec : Prop :=
  ∀ n, P17579128217839535139.a n = A275219 (n + 1)

theorem P17579128217839535139.correct : P17579128217839535139.Spec := by
  intro n
  simp only [A275219, Nat.add_sub_cancel, A275219.P17579128217839535139.a, A275219.P2439531357343426924.a, A120941, A120941.P1519152944059217125.a, A256446, A256446.P17907843069056531532.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250477, A250477.P16411795154775873264.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A275219

/-! ## A275219.P5439054787877665252

`Δ[A256468(n+1)+A054272(n+1)]+1`
-/

namespace A275219.P5439054787877665252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256468 (n + 1) + A054272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A275219.P5439054787877665252

namespace A275219

/-- `Δ[A256468(n+1)+A054272(n+1)]+1` -/
def P5439054787877665252.Spec : Prop :=
  ∀ n, P5439054787877665252.a n = A275219 (n + 1)

theorem P5439054787877665252.correct : P5439054787877665252.Spec := by
  intro n
  simp only [A275219, Nat.add_sub_cancel, A275219.P5439054787877665252.f1, A275219.P5439054787877665252.a, A275219.P2439531357343426924.a, A054272, A054272.P16500536369367462355.a, A256446, A256446.P17907843069056531532.a, A256468, A256468.P15833489412511418299.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A275219

/-! ## A275219.P1210504854218165761

`A256468(n+1)+A256470(n+1)+A256468(n+2)`
-/

namespace A275219.P1210504854218165761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256468 (n + 1) + (A256470 (n + 1) + A256468 (n + 2))

end

end A275219.P1210504854218165761

namespace A275219

/-- `A256468(n+1)+A256470(n+1)+A256468(n+2)` -/
def P1210504854218165761.Spec : Prop :=
  ∀ n, P1210504854218165761.a n = A275219 (n + 1)

theorem P1210504854218165761.correct : P1210504854218165761.Spec := by
  intro n
  simp only [A275219, Nat.add_sub_cancel, A275219.P1210504854218165761.a, A275219.P2439531357343426924.a, A256446, A256446.P17907843069056531532.a, A256468, A256468.P15833489412511418299.a, A256470, A256470.P3494554339232187623.a, A250477, A250477.P16411795154775873264.a, A256447, A256447.P10526496064396814310.a, A256469, A256469.P956244140118081997.a, A120941, A120941.P1519152944059217125.a, A250474, A250474.P15580657759443600580.a, A256448, A256448.P8888948745584736931.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250473, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A275219

/-! ## A275219.P14370032994857469035

`A050216(n+1)+A256447(n+2)-A256447(n+1)`
-/

namespace A275219.P14370032994857469035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (n + 1) + (A256447 (n + 2) - A256447 (n + 1))

end

end A275219.P14370032994857469035

namespace A275219

/-- `A050216(n+1)+A256447(n+2)-A256447(n+1)` -/
def P14370032994857469035.Spec : Prop :=
  ∀ n, P14370032994857469035.a n = A275219 (n + 1)

end A275219

/-! ## A275219.P13117337061675065297

`A050216(n+1)+A256468(n+2)-A256468(n+1)`
-/

namespace A275219.P13117337061675065297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 (n + 1) + (A256468 (n + 2) - A256468 (n + 1))

end

end A275219.P13117337061675065297

namespace A275219

/-- `A050216(n+1)+A256468(n+2)-A256468(n+1)` -/
def P13117337061675065297.Spec : Prop :=
  ∀ n, P13117337061675065297.a n = A275219 (n + 1)

end A275219

/-! ## A275219.P7590449737699843862

`A250477(n+2)-(A256447(n+1)+A250473(n+1))`
-/

namespace A275219.P7590449737699843862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 2) - (A256447 (n + 1) + A250473 (n + 1))

end

end A275219.P7590449737699843862

namespace A275219

/-- `A250477(n+2)-(A256447(n+1)+A250473(n+1))` -/
def P7590449737699843862.Spec : Prop :=
  ∀ n, P7590449737699843862.a n = A275219 (n + 1)

theorem P7590449737699843862.correct : P7590449737699843862.Spec := by
  intro n
  simp only [A275219, Nat.add_sub_cancel, A275219.P7590449737699843862.a, A275219.P2439531357343426924.a, A250473, A250473.P15728952414264512561.a, A250477, A250477.P16411795154775873264.a, A256446, A256446.P17907843069056531532.a, A256447, A256447.P10526496064396814310.a, A000879, A000879.P11642258310759995278.a, A120941, A120941.P1519152944059217125.a, A250474, A250474.P15580657759443600580.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A275219

/-! ## A275219.P7702913786537506878

`A250477(n+2)-(A256468(n+1)+A250474(n+1))`
-/

namespace A275219.P7702913786537506878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250477 (n + 2) - (A256468 (n + 1) + A250474 (n + 1))

end

end A275219.P7702913786537506878

namespace A275219

/-- `A250477(n+2)-(A256468(n+1)+A250474(n+1))` -/
def P7702913786537506878.Spec : Prop :=
  ∀ n, P7702913786537506878.a n = A275219 (n + 1)

theorem P7702913786537506878.correct : P7702913786537506878.Spec := by
  intro n
  simp only [A275219, Nat.add_sub_cancel, A275219.P7702913786537506878.a, A275219.P2439531357343426924.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A256446, A256446.P17907843069056531532.a, A256468, A256468.P15833489412511418299.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A256447, A256447.P10526496064396814310.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A275219

/-! ## A275219.P11873393383566210982

`A251723(n+1)+A256447(n+2)-A256468(n+1)`
-/

namespace A275219.P11873393383566210982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251723 (n + 1) + (A256447 (n + 2) - A256468 (n + 1))

end

end A275219.P11873393383566210982

namespace A275219

/-- `A251723(n+1)+A256447(n+2)-A256468(n+1)` -/
def P11873393383566210982.Spec : Prop :=
  ∀ n, P11873393383566210982.a n = A275219 (n + 1)

theorem P11873393383566210982.correct : P11873393383566210982.Spec := by
  intro n
  simp only [A275219, Nat.add_sub_cancel, A275219.P11873393383566210982.a, A275219.P2439531357343426924.a, A251723, A251723.P8283630235415226138.a, A256446, A256446.P17907843069056531532.a, A256447, A256447.P10526496064396814310.a, A256468, A256468.P15833489412511418299.a, A054272, A054272.P16500536369367462355.a, A250474, A250474.P15580657759443600580.a, A250477, A250477.P16411795154775873264.a, A120941, A120941.P1519152944059217125.a, A250473, A250473.P15728952414264512561.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A000879, A000879.P11642258310759995278.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A275219

/-! ## A275219.P13545133655619790843

`A256448(n+1)+A250477(n+2)-A250473(n+2)`
-/

namespace A275219.P13545133655619790843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256448 (n + 1) + (A250477 (n + 2) - A250473 (n + 2))

end

end A275219.P13545133655619790843

namespace A275219

/-- `A256448(n+1)+A250477(n+2)-A250473(n+2)` -/
def P13545133655619790843.Spec : Prop :=
  ∀ n, P13545133655619790843.a n = A275219 (n + 1)

theorem P13545133655619790843.correct : P13545133655619790843.Spec := by
  intro n
  simp only [A275219, Nat.add_sub_cancel, A275219.P13545133655619790843.a, A275219.P2439531357343426924.a, A250473, A250473.P15728952414264512561.a, A250477, A250477.P16411795154775873264.a, A256446, A256446.P17907843069056531532.a, A256448, A256448.P8888948745584736931.a, A000879, A000879.P11642258310759995278.a, A120941, A120941.P1519152944059217125.a, A250474, A250474.P15580657759443600580.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A275219

/-! ## A275219.P5563717380085548505

`A256469(n+1)+A256469(n+2)-A256470(n+2)`
-/

namespace A275219.P5563717380085548505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256469 (n + 1) + (A256469 (n + 2) - A256470 (n + 2))

end

end A275219.P5563717380085548505

namespace A275219

/-- `A256469(n+1)+A256469(n+2)-A256470(n+2)` -/
def P5563717380085548505.Spec : Prop :=
  ∀ n, P5563717380085548505.a n = A275219 (n + 1)

theorem P5563717380085548505.correct : P5563717380085548505.Spec := by
  intro n
  simp only [A275219, Nat.add_sub_cancel, A275219.P5563717380085548505.a, A275219.P2439531357343426924.a, A256446, A256446.P17907843069056531532.a, A256469, A256469.P956244140118081997.a, A256470, A256470.P3494554339232187623.a, A250477, A250477.P16411795154775873264.a, A256448, A256448.P8888948745584736931.a, A256468, A256468.P15833489412511418299.a, A120941, A120941.P1519152944059217125.a, A250474, A250474.P15580657759443600580.a, A256447, A256447.P10526496064396814310.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A006094, A006094.P10257567645245129766.a, A250473, A250473.P15728952414264512561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A275219

/-! ## A275219.P15085133398973322095

`A020725(A256446(n+1))`
-/

namespace A275219.P15085133398973322095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A256446 (n + 1)).toNat

end

end A275219.P15085133398973322095

namespace A275219

/-- `A020725(A256446(n+1))` -/
def P15085133398973322095.Spec : Prop :=
  ∀ n, P15085133398973322095.a n = A275219 (n + 1)

end A275219

/-! ## A275219.P16039636450841929485

`Δ[A284061(∑[n+1])]`
-/

namespace A275219.P16039636450841929485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284061 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A275219.P16039636450841929485

namespace A275219

/-- `Δ[A284061(∑[n+1])]` -/
def P16039636450841929485.Spec : Prop :=
  ∀ n, P16039636450841929485.a n = A275219 (n + 1)

end A275219

/-!
# A275221: Number of n X n 0..2 arrays with no element equal to any value at offset (-2,-1), (-2,1) or (-1,0) and new values introduced in order 0..2.

The programs for A275221, there is no canonical definition to state claims against.
-/

/-! ## A275221.P1661836753844490082

`A275228(∑[4*n]+1)`
-/

namespace A275221.P1661836753844490082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275221.P1661836753844490082

/-! ## A275221.P9654755725428518261

`record[A275228(A330613(n+1))]`
-/

namespace A275221.P9654755725428518261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275221.P9654755725428518261

/-! ## A275221.P6988437477487474341

`record[A275228(or(1, A240134(n+1)))]`
-/

namespace A275221.P6988437477487474341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (Int.lor 1 (A240134 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275221.P6988437477487474341

/-! ## A275221.P2619141002892104221

`record[A003982(n)*A275228(n+1)]`
-/

namespace A275221.P2619141002892104221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A275228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275221.P2619141002892104221

/-! ## A275221.P358631204563354027

`record[A185907(n+1)*A275228(n+1)]`
-/

namespace A275221.P358631204563354027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185907 (n + 1) * A275228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275221.P358631204563354027

/-!
# A275222: Number of n X 2 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,0) and new values introduced in order 0..2.

The programs for A275222, the canonical program `A275222.P2051820910365035933` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275222 has offset 1).

The definition of A275222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275222.P2051820910365035933

`A196630(n+2)-A057428(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A275222

/-- `A196630(n+2)-A057428(n)` -/
def P2051820910365035933.Spec : Prop :=
  ∀ n, P2051820910365035933.a n = A275222 (n + 1)

theorem P2051820910365035933.correct : P2051820910365035933.Spec := by
  intro n
  simp only [A275222, Nat.add_sub_cancel]

end A275222

/-! ## A275222.P17466771377947054493

`A196630(n+2)+char[A154958(n)]`
-/

namespace A275222.P17466771377947054493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196630 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A275222.P17466771377947054493

namespace A275222

/-- `A196630(n+2)+char[A154958(n)]` -/
def P17466771377947054493.Spec : Prop :=
  ∀ n, P17466771377947054493.a n = A275222 (n + 1)

end A275222

/-! ## A275222.P198557465024321835

`A196630(n+2)+A060576(n+1)`
-/

namespace A275222.P198557465024321835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196630 (n + 2) + A060576 (n + 1)

end

end A275222.P198557465024321835

namespace A275222

/-- `A196630(n+2)+A060576(n+1)` -/
def P198557465024321835.Spec : Prop :=
  ∀ n, P198557465024321835.a n = A275222 (n + 1)

end A275222

/-! ## A275222.P5560282076802843069

`A196630(n+2)+1-A000007(n)`
-/

namespace A275222.P5560282076802843069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196630 (n + 2) + (1 - A000007 n)

end

end A275222.P5560282076802843069

namespace A275222

/-- `A196630(n+2)+1-A000007(n)` -/
def P5560282076802843069.Spec : Prop :=
  ∀ n, P5560282076802843069.a n = A275222 (n + 1)

theorem P5560282076802843069.correct : P5560282076802843069.Spec := by
  intro n
  simp only [A275222, Nat.add_sub_cancel, A275222.P5560282076802843069.a, A275222.P2051820910365035933.a, A000007, A000007.P6599383543502402472.a, A057428, A057428.P2999489532230392221.a, A196630, A196630.P2608905819606227290.a, A057427, A057427.P3058147525557661423.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275222

/-! ## A275222.P16946942895449742088

`A196630(n+2)+and(1, A049545(n+1))`
-/

namespace A275222.P16946942895449742088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196630 (n + 2) + Int.land 1 (A049545 (n + 1))

end

end A275222.P16946942895449742088

namespace A275222

/-- `A196630(n+2)+and(1, A049545(n+1))` -/
def P16946942895449742088.Spec : Prop :=
  ∀ n, P16946942895449742088.a n = A275222 (n + 1)

end A275222

/-! ## A275222.P8713485965183315949

`A196630(n+2)+A000045(n²%(n+1))`
-/

namespace A275222.P8713485965183315949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196630 (n + 2) + A000045 (n ^ 2 % (n + 1))

end

end A275222.P8713485965183315949

namespace A275222

/-- `A196630(n+2)+A000045(n²%(n+1))` -/
def P8713485965183315949.Spec : Prop :=
  ∀ n, P8713485965183315949.a n = A275222 (n + 1)

end A275222

/-! ## A275222.P337750296809622069

`A196630(n+2)+A057428(n)*A057428(n+1)`
-/

namespace A275222.P337750296809622069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196630 (n + 2) + A057428 n * A057428 (n + 1)

end

end A275222.P337750296809622069

namespace A275222

/-- `A196630(n+2)+A057428(n)*A057428(n+1)` -/
def P337750296809622069.Spec : Prop :=
  ∀ n, P337750296809622069.a n = A275222 (n + 1)

theorem P337750296809622069.correct : P337750296809622069.Spec := by
  intro n
  simp only [A275222, Nat.add_sub_cancel, A275222.P337750296809622069.a, A275222.P2051820910365035933.a, A057428, A057428.P2999489532230392221.a, A196630, A196630.P2608905819606227290.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275222

/-! ## A275222.P2561518083856922524

`A196630(n+2)+A001222(A001650(A001222(n+1)+1))`
-/

namespace A275222.P2561518083856922524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196630 (n + 2) + A001222 (A001650 (A001222 (n + 1) + 1).toNat).toNat

end

end A275222.P2561518083856922524

namespace A275222

/-- `A196630(n+2)+A001222(A001650(A001222(n+1)+1))` -/
def P2561518083856922524.Spec : Prop :=
  ∀ n, P2561518083856922524.a n = A275222 (n + 1)

end A275222

/-! ## A275222.P11283639296892981905

`3*a(n-1)-a(n-2)-2*a(n-4)+a(n-5)` with `a(0)=2, a(1)=6, a(2)=11, a(3)=27, a(4)=66, a(5)=162`
-/

namespace A275222.P11283639296892981905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6, 11, 27, 66, 162] fun n a =>
  3 * a (n - 1) - a (n - 2) - 2 * a (n - 4) + a (n - 5)

end

end A275222.P11283639296892981905

namespace A275222

/-- `3*a(n-1)-a(n-2)-2*a(n-4)+a(n-5)` -/
def P11283639296892981905.Spec : Prop :=
  ∀ n, P11283639296892981905.a n = A275222 (n + 1)

end A275222

/-! ## A275222.P13375427226300739177

`A196630(n+2)+char[A321783(n+1)]`
-/

namespace A275222.P13375427226300739177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321783 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196630 (n + 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A275222.P13375427226300739177

namespace A275222

/-- `A196630(n+2)+char[A321783(n+1)]` -/
def P13375427226300739177.Spec : Prop :=
  ∀ n, P13375427226300739177.a n = A275222 (n + 1)

end A275222

/-!
# A275223: Number of nX3 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,0) and new values introduced in order 0..2.

The programs for A275223, there is no canonical definition to state claims against.
-/

/-! ## A275223.P10492403720103330281

`A275228(∑[n+3]+1)`
-/

namespace A275223.P10492403720103330281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275223.P10492403720103330281

/-!
# A275224: Number of nX4 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,0) and new values introduced in order 0..2.

The programs for A275224, there is no canonical definition to state claims against.
-/

/-! ## A275224.P17524704963351734438

`A275228(A141214(n+1))`
-/

namespace A275224.P17524704963351734438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (A141214 (n + 1)).toNat

end

end A275224.P17524704963351734438

/-! ## A275224.P5190872041510184853

`A275228(A155212(n)+5)`
-/

namespace A275224.P5190872041510184853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (A155212 n + 5).toNat

end

end A275224.P5190872041510184853

/-! ## A275224.P9683847226978363977

`A275228(eq[3, A193592(n)])`
-/

namespace A275224.P9683847226978363977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275224.P9683847226978363977

/-! ## A275224.P681311296469382163

`A275228(eq[2, A332954(n)]+1)`
-/

namespace A275224.P681311296469382163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A275224.P681311296469382163

/-! ## A275224.P7562399514822816857

`A275228(eq[4, A057728(n+1)])`
-/

namespace A275224.P7562399514822816857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275224.P7562399514822816857

/-!
# A275225: Number of nX5 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,0) and new values introduced in order 0..2.

The programs for A275225, there is no canonical definition to state claims against.
-/

/-! ## A275225.P16259201056582822962

`A275228(eq[4, A193592(n)])`
-/

namespace A275225.P16259201056582822962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275225.P16259201056582822962

/-! ## A275225.P3190858141768064716

`A275228(Δ[A023545(n+1)])`
-/

namespace A275225.P3190858141768064716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (f1 (n + 1) - f1 n).toNat

end

end A275225.P3190858141768064716

/-! ## A275225.P6880088911490148720

`A275228(eq[5, A200370(n+1)])`
-/

namespace A275225.P6880088911490148720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275225.P6880088911490148720

/-! ## A275225.P8043269728435522998

`A275228(eq[6, A185782(n+1)])`
-/

namespace A275225.P8043269728435522998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275225.P8043269728435522998

/-! ## A275225.P18381507663365661885

`A275228(eq[8, A057728(n+1)])`
-/

namespace A275225.P18381507663365661885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275225.P18381507663365661885

/-!
# A275226: Number of nX6 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,0) and new values introduced in order 0..2.

The programs for A275226, there is no canonical definition to state claims against.
-/

/-! ## A275226.P3071263016418226685

`A275228(A056119(n)+16)`
-/

namespace A275226.P3071263016418226685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (A056119 n + 16).toNat

end

end A275226.P3071263016418226685

/-! ## A275226.P2789592936674836870

`A275228(eq[3, A219347(n)])`
-/

namespace A275226.P2789592936674836870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275226.P2789592936674836870

/-! ## A275226.P16788403440007493335

`A275228(eq[5, A193592(n)])`
-/

namespace A275226.P16788403440007493335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275226.P16788403440007493335

/-! ## A275226.P7061110113998393871

`A275228(eq[8, A258709(n)])`
-/

namespace A275226.P7061110113998393871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275226.P7061110113998393871

/-! ## A275226.P9051682776889864475

`A275228(eq[8, A185782(n+1)])`
-/

namespace A275226.P9051682776889864475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275226.P9051682776889864475

/-!
# A275227: Number of nX7 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,0) and new values introduced in order 0..2.

The programs for A275227, there is no canonical definition to state claims against.
-/

/-! ## A275227.P9328732221060837763

`A275228(eq[4, A219347(n)])`
-/

namespace A275227.P9328732221060837763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275227.P9328732221060837763

/-! ## A275227.P2453307034193572586

`A275228(eq[5, A332954(n)])`
-/

namespace A275227.P2453307034193572586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275227.P2453307034193572586

/-! ## A275227.P15769139323756545423

`A275228(eq[6, A193592(n)])`
-/

namespace A275227.P15769139323756545423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275227.P15769139323756545423

/-! ## A275227.P10651082921340069901

`A275228(eq[7, A200370(n+1)])`
-/

namespace A275227.P10651082921340069901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275227.P10651082921340069901

/-! ## A275227.P10827098506024146767

`A275228(eq[10, A185782(n+1)])`
-/

namespace A275227.P10827098506024146767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275227.P10827098506024146767

/-!
# A275229: Number of 3 X n 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,0) and new values introduced in order 0..2.

The programs for A275229, the canonical program `A275229.P15460160819304705543` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275229 has offset 1).

The definition of A275229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275229.P6734642555767918875

`ogf((2-3x)/(1-7x+8x^2))`
-/

namespace A275229.P6734642555767918875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3] [1, -7, 8] n

end

end A275229.P6734642555767918875

namespace A275229

/-- `ogf((2-3x)/(1-7x+8x^2))` -/
def P6734642555767918875.Spec : Prop :=
  ∀ n, P6734642555767918875.a n = A275229 (n + 1)

end A275229

/-! ## A275229.P15460160819304705543

`7*a(n-1)-8*a(n-2)` with `a(0)=2, a(1)=11`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275229

/-- `7*a(n-1)-8*a(n-2)` -/
def P15460160819304705543.Spec : Prop :=
  ∀ n, P15460160819304705543.a n = A275229 (n + 1)

theorem P15460160819304705543.correct : P15460160819304705543.Spec := by
  intro n
  simp only [A275229, Nat.add_sub_cancel]

end A275229

/-! ## A275229.P4651060811372910523

`A208044(n+2)/4`
-/

namespace A275229.P4651060811372910523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208044 (n + 2) : ℚ) / 4

end

end A275229.P4651060811372910523

namespace A275229

/-- `A208044(n+2)/4` -/
def P4651060811372910523.Spec : Prop :=
  ∀ n, P4651060811372910523.a n = (A275229 (n + 1) : ℚ)

end A275229

/-! ## A275229.P6566207436569073438

`a(n-1)*ratio[A208044(n+1)]` with `a(0)=2`
-/

namespace A275229.P6566207436569073438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208044 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A275229.P6566207436569073438

namespace A275229

/-- `a(n-1)*ratio[A208044(n+1)]` -/
def P6566207436569073438.Spec : Prop :=
  ∀ n, P6566207436569073438.a n = (A275229 (n + 1) : ℚ)

end A275229

/-! ## A275229.P7072628832774776310

`Δ[A208044(n+1)]-A301836(n+1)`
-/

namespace A275229.P7072628832774776310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A301836 (n + 1)

end

end A275229.P7072628832774776310

namespace A275229

/-- `Δ[A208044(n+1)]-A301836(n+1)` -/
def P7072628832774776310.Spec : Prop :=
  ∀ n, P7072628832774776310.a n = A275229 (n + 1)

end A275229

/-!
# A275230: Number of 5 X n 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,0) and new values introduced in order 0..2.

The programs for A275230, there is no canonical definition to state claims against.
-/

/-! ## A275230.P17848365908332785760

`A275228(A167499(n+3))`
-/

namespace A275230.P17848365908332785760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (A167499 (n + 3)).toNat

end

end A275230.P17848365908332785760

/-! ## A275230.P17473362976335368236

`A275228(A155212(n)+13)`
-/

namespace A275230.P17473362976335368236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (A155212 n + 13).toNat

end

end A275230.P17473362976335368236

/-! ## A275230.P2208336547258291253

`A275228(A056000(n)+15)`
-/

namespace A275230.P2208336547258291253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (A056000 n + 15).toNat

end

end A275230.P2208336547258291253

/-! ## A275230.P17184898753506110566

`A275228(eq[7, A066657(n)])`
-/

namespace A275230.P17184898753506110566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275230.P17184898753506110566

/-! ## A275230.P6752318058284726969

`A275228(eq[6, A131818(n+1)])`
-/

namespace A275230.P6752318058284726969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275230.P6752318058284726969

/-!
# A275231: Number of 6 X n 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,0) and new values introduced in order 0..2.

The programs for A275231, there is no canonical definition to state claims against.
-/

/-! ## A275231.P9264972605429988879

`A275228(C(n+7, 2)-n)`
-/

namespace A275231.P9264972605429988879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (Nat.choose (n + 7) 2 - n)

end

end A275231.P9264972605429988879

/-! ## A275231.P4384048090255763943

`A275228(A056115(n)+21)`
-/

namespace A275231.P4384048090255763943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (A056115 n + 21).toNat

end

end A275231.P4384048090255763943

/-! ## A275231.P5480275389723253417

`A275228(A167499(n+4)+1)`
-/

namespace A275231.P5480275389723253417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (A167499 (n + 4) + 1).toNat

end

end A275231.P5480275389723253417

/-! ## A275231.P4405688739642638001

`A275228(A167614(n+4)+3)`
-/

namespace A275231.P4405688739642638001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (A167614 (n + 4) + 3).toNat

end

end A275231.P4405688739642638001

/-! ## A275231.P5404088493104272032

`A275228(eq[7, A131818(n+1)])`
-/

namespace A275231.P5404088493104272032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275231.P5404088493104272032

/-!
# A275232: Number of 7Xn 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,0) and new values introduced in order 0..2.

The programs for A275232, there is no canonical definition to state claims against.
-/

/-! ## A275232.P6880685224266583422

`A275228(A056119(n)+28)`
-/

namespace A275232.P6880685224266583422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (A056119 n + 28).toNat

end

end A275232.P6880685224266583422

/-! ## A275232.P14320196657971197873

`A275228(eq[11, A066657(n)])`
-/

namespace A275232.P14320196657971197873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275232.P14320196657971197873

/-! ## A275232.P13604157751100043597

`A275228(A167614(n+5)+4)`
-/

namespace A275232.P13604157751100043597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (A167614 (n + 5) + 4).toNat

end

end A275232.P13604157751100043597

/-! ## A275232.P16795292373974271060

`A275228(A000217(n+6)+7)`
-/

namespace A275232.P16795292373974271060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (A000217 (n + 6) + 7).toNat

end

end A275232.P16795292373974271060

/-! ## A275232.P10167846870774231924

`A275228(eq[8, A131818(n+1)])`
-/

namespace A275232.P10167846870774231924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275232.P10167846870774231924

/-!
# A275235: Number of primes between n and n+log(n)^2.

The programs for A275235, there is no canonical definition to state claims against.
-/

/-! ## A275235.P16236366300163197968

`A364459(n+1)-A010051(n+1)`
-/

namespace A275235.P16236366300163197968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364459 (n + 1) - A010051 (n + 1)

end

end A275235.P16236366300163197968

/-! ## A275235.P18099164428543809428

`A364459(n+1)-char[A000040(n+1)-1]`
-/

namespace A275235.P18099164428543809428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364459 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A275235.P18099164428543809428

/-! ## A275235.P7920920399207642066

`A000720(record[A269065(n+1)])-A000720(n+1)`
-/

namespace A275235.P7920920399207642066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A000720 (n + 1)

end

end A275235.P7920920399207642066

/-! ## A275235.P1270582642579968408

`A230772(n+1)-A010051(A329380(n+1))`
-/

namespace A275235.P1270582642579968408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230772 (n + 1) - A010051 (A329380 (n + 1)).toNat

end

end A275235.P1270582642579968408

/-!
# A275238: a(n) = n*(10^floor(log_10(n)+1) + 1) + (-1)^n.

The programs for A275238, the canonical program `A275238.P2529277380881640300` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275238 has offset 0).

The definition of A275238 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275238.P2529277380881640300

`xor(1, n*(A178914(n)+1+n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A275238

/-- `xor(1, n*(A178914(n)+1+n))` -/
def P2529277380881640300.Spec : Prop :=
  ∀ n, P2529277380881640300.a n = A275238 n

theorem P2529277380881640300.correct : P2529277380881640300.Spec := by
  intro n
  simp only [A275238]

end A275238

/-! ## A275238.P14475209601786569975

`xor(1, n*(A061601(n)+2+n))`
-/

namespace A275238.P14475209601786569975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((n : ℤ) * (A061601 n + 2 + (n : ℤ)))

end

end A275238.P14475209601786569975

namespace A275238

/-- `xor(1, n*(A061601(n)+2+n))` -/
def P14475209601786569975.Spec : Prop :=
  ∀ n, P14475209601786569975.a n = A275238 n

theorem P14475209601786569975.correct : P14475209601786569975.Spec := by
  intro n
  simp only [A275238, Nat.add_sub_cancel, A275238.P14475209601786569975.a, A275238.P2529277380881640300.a, A061601, A061601.P11117984480287527776.a, A178914, A178914.P15550462812133884735.a, A055642, A055642.P4465932992276854035.f1, A055642.P4465932992276854035.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A275238

/-! ## A275238.P10672324542577991932

`xor(1, n)+n*10^A055642(n)`
-/

namespace A275238.P10672324542577991932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℚ) + (n : ℚ) * (10 : ℚ) ^ (A055642 n : ℤ)

end

end A275238.P10672324542577991932

namespace A275238

/-- `xor(1, n)+n*10^A055642(n)` -/
def P10672324542577991932.Spec : Prop :=
  ∀ n, P10672324542577991932.a n = (A275238 n : ℚ)

end A275238

/-! ## A275238.P15501486008020610406

`xor(1, A084021(n)+A005563(n))`
-/

namespace A275238.P15501486008020610406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A084021 n + A005563 n)

end

end A275238.P15501486008020610406

namespace A275238

/-- `xor(1, A084021(n)+A005563(n))` -/
def P15501486008020610406.Spec : Prop :=
  ∀ n, P15501486008020610406.a n = A275238 n

theorem P15501486008020610406.correct : P15501486008020610406.Spec := by
  intro n
  simp only [A275238, Nat.add_sub_cancel, A275238.P15501486008020610406.a, A275238.P2529277380881640300.a, A005563, A005563.P13300161655551567421.a, A084021, A084021.P10020689395487424378.a, A178914, A178914.P15550462812133884735.a, A061601, A061601.P11117984480287527776.a, A055642, A055642.P4465932992276854035.f1, A055642.P4465932992276854035.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A275238

/-! ## A275238.P4381020904293099197

`A004442(n)+n*10^A055642(n)`
-/

namespace A275238.P4381020904293099197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004442 n : ℚ) + (n : ℚ) * (10 : ℚ) ^ (A055642 n : ℤ)

end

end A275238.P4381020904293099197

namespace A275238

/-- `A004442(n)+n*10^A055642(n)` -/
def P4381020904293099197.Spec : Prop :=
  ∀ n, P4381020904293099197.a n = (A275238 n : ℚ)

end A275238

/-! ## A275238.P12537425099585499096

`A002378(n)+A084021(n)+A004442(n)`
-/

namespace A275238.P12537425099585499096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n + (A084021 n + A004442 n)

end

end A275238.P12537425099585499096

namespace A275238

/-- `A002378(n)+A084021(n)+A004442(n)` -/
def P12537425099585499096.Spec : Prop :=
  ∀ n, P12537425099585499096.a n = A275238 n

end A275238

/-! ## A275238.P3641194120029086470

`A004442(n*(A178914(n)+1+n))`
-/

namespace A275238.P3641194120029086470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((n : ℤ) * (A178914 n + 1 + (n : ℤ))).toNat

end

end A275238.P3641194120029086470

namespace A275238

/-- `A004442(n*(A178914(n)+1+n))` -/
def P3641194120029086470.Spec : Prop :=
  ∀ n, P3641194120029086470.a n = A275238 n

end A275238

/-! ## A275238.P7484507301893061551

`A004442(n*(A061601(n)+2+n))`
-/

namespace A275238.P7484507301893061551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 ((n : ℤ) * (A061601 n + 2 + (n : ℤ))).toNat

end

end A275238.P7484507301893061551

namespace A275238

/-- `A004442(n*(A061601(n)+2+n))` -/
def P7484507301893061551.Spec : Prop :=
  ∀ n, P7484507301893061551.a n = A275238 n

end A275238

/-! ## A275238.P11964939279300180148

`A004442(A084021(n)+n)+∑[2*n]`
-/

namespace A275238.P11964939279300180148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A084021 n + (n : ℤ)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A275238.P11964939279300180148

namespace A275238

/-- `A004442(A084021(n)+n)+∑[2*n]` -/
def P11964939279300180148.Spec : Prop :=
  ∀ n, P11964939279300180148.a n = A275238 n

end A275238

/-! ## A275238.P545614525021616070

`A004442(A084021(n)+A005563(n))`
-/

namespace A275238.P545614525021616070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A084021 n + A005563 n).toNat

end

end A275238.P545614525021616070

namespace A275238

/-- `A004442(A084021(n)+A005563(n))` -/
def P545614525021616070.Spec : Prop :=
  ∀ n, P545614525021616070.a n = A275238 n

end A275238

/-!
# A275239: Highly composite numbers of class 1 (see comment).

The programs for A275239, there is no canonical definition to state claims against.
-/

/-! ## A275239.P12840343492168368904

`A001175(A334144(n+1)+A034881(n+1))`
-/

namespace A275239.P12840343492168368904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A334144 (n + 1) + A034881 (n + 1)).toNat

end

end A275239.P12840343492168368904

/-!
# A275245: Numbers k such that phi(k) divides k^2 while phi(k) does not divide k.

The programs for A275245, there is no canonical definition to state claims against.
-/

/-! ## A275245.P2218899715487152569

`∩[2*A059485(n+1), A090778(n+1)]`
-/

namespace A275245.P2218899715487152569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275245.P2218899715487152569

/-! ## A275245.P12258584869585634743

`∩[A090778(n+1), A330136(n+1)]`
-/

namespace A275245.P12258584869585634743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275245.P12258584869585634743

/-! ## A275245.P12115270543895838879

`∩[A090778(n+1), A251727(n+1)]`
-/

namespace A275245.P12115270543895838879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275245.P12115270543895838879

/-! ## A275245.P3065626110142001379

`∩[A069900(n+1), A090778(n+1)]`
-/

namespace A275245.P3065626110142001379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275245.P3065626110142001379

/-! ## A275245.P5856373267096893323

`∩[A081062(n+1), A090778(n+1)]`
-/

namespace A275245.P5856373267096893323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275245.P5856373267096893323

/-! ## A275245.P5334983612275524659

`∩[A059485(n+1), A090778(n+1)]`
-/

namespace A275245.P5334983612275524659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275245.P5334983612275524659

/-! ## A275245.P15266369717055256172

`∩[A090778(n+1), A379851(n+1)]`
-/

namespace A275245.P15266369717055256172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275245.P15266369717055256172

/-!
# A275246: Sequence of pairwise relatively prime numbers of class P_3 (see comment).

The programs for A275246, there is no canonical definition to state claims against.
-/

/-! ## A275246.P3073657604906854156

`A006094(comp[2*(n+1)]+1)+floor(acot(n)²)`
-/

namespace A275246.P3073657604906854156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A275246.P3073657604906854156

/-! ## A275246.P11070718656684720020

`A242420(A074845(2*(n+1)))`
-/

namespace A275246.P11070718656684720020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (A074845 (2 * (n + 1))).toNat

end

end A275246.P11070718656684720020

/-! ## A275246.P17825607429193382682

`xor(1, A006094(A004277(n)))+1`
-/

namespace A275246.P17825607429193382682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A006094 (A004277 n).toNat) + 1

end

end A275246.P17825607429193382682

/-! ## A275246.P4519831075193949878

`∩[A275474(n+1), A396828(n+1)]`
-/

namespace A275246.P4519831075193949878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275246.P4519831075193949878

/-! ## A275246.P2388419918998379819

`record[xor(1, A006094(A316631(n)+1))+1]`
-/

namespace A275246.P2388419918998379819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A006094 (A316631 n + 1).toNat) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275246.P2388419918998379819

/-!
# A275248: Sequence of pairwise relatively prime numbers of class P_4 (see comment in A275246).

The programs for A275248, there is no canonical definition to state claims against.
-/

/-! ## A275248.P3352590460181067468

`A090076(or(1, n)+n)`
-/

namespace A275248.P3352590460181067468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (Nat.lor 1 n + n)

end

end A275248.P3352590460181067468

/-! ## A275248.P16788381407409740480

`A176098(comp[or(2, n)]+3)`
-/

namespace A275248.P16788381407409740480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176098 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3)

end

end A275248.P16788381407409740480

/-! ## A275248.P13879443805307914443

`A176098(or(1, n)+n+2)`
-/

namespace A275248.P13879443805307914443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176098 (Nat.lor 1 n + (n + 2))

end

end A275248.P13879443805307914443

/-! ## A275248.P18069334688618475782

`A090076(Δ[n²]-n%2)`
-/

namespace A275248.P18069334688618475782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - ((n % 2 : ℕ) : ℤ)).toNat

end

end A275248.P18069334688618475782

/-! ## A275248.P15485430446081727567

`A090076(xor(1, comp[or(2, n)-1]))`
-/

namespace A275248.P15485430446081727567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090076 (Nat.xor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A275248.P15485430446081727567

/-!
# A275249: Sequence of pairwise relatively prime numbers of class P_5 (see comment in A275246).

The programs for A275249, there is no canonical definition to state claims against.
-/

/-! ## A275249.P16799482489508109423

`A275246(n+1)/A275248(n+1)*A275246(n+2)`
-/

namespace A275249.P16799482489508109423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275246 (n + 1) : ℚ) / (A275248 (n + 1) : ℚ) * (A275246 (n + 2) : ℚ)

end

end A275249.P16799482489508109423

/-! ## A275249.P5076378402148827122

`ratio[A020639(A275248(n+1))]*A275246(n+1)`
-/

namespace A275249.P5076378402148827122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A275248 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A275246 (n + 1) : ℚ)

end

end A275249.P5076378402148827122

/-! ## A275249.P4306412791629848464

`record[A000040(n+1)*A014963(a(n-2))]` with `a(0)=12, a(1)=1`
-/

namespace A275249.P4306412791629848464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [12, 1] fun n f1 =>
  A000040 (n + 1) * A014963 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275249.P4306412791629848464

/-! ## A275249.P11839731485343469110

`eq[5, A279119(A028310(n))]`
-/

namespace A275249.P11839731485343469110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275249.P11839731485343469110

/-! ## A275249.P18222643759339216433

`A065475(eq[5, A279119(n+1)])`
-/

namespace A275249.P18222643759339216433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275249.P18222643759339216433

/-!
# A275250: Odd numbers n that divide the number of divisors of n!.

The programs for A275250, the canonical program `A275250.P3588784906535234528` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275250 has offset 1).

The definition of A275250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1917 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275250.P4510794322399421153

`∩[2*n+1, A051178(n+1)]`
-/

namespace A275250.P4510794322399421153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051178 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275250.P4510794322399421153

namespace A275250

/-- `∩[2*n+1, A051178(n+1)]` -/
def P4510794322399421153.Spec : Prop :=
  ∀ n, (P4510794322399421153.a n : ℤ) = A275250 (n + 1)

end A275250

/-! ## A275250.P3588784906535234528

`∩[A051178(n+1), A176847(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A275250

/-- `∩[A051178(n+1), A176847(n+1)]` -/
def P3588784906535234528.Spec : Prop :=
  ∀ n, (P3588784906535234528.a n : ℤ) = A275250 (n + 1)

theorem P3588784906535234528.correct : P3588784906535234528.Spec := by
  intro n
  simp only [A275250, Nat.add_sub_cancel]

end A275250

/-! ## A275250.P5620820061096193307

`∩[A051178(n+1), A255763(n+1)]`
-/

namespace A275250.P5620820061096193307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275250.P5620820061096193307

namespace A275250

/-- `∩[A051178(n+1), A255763(n+1)]` -/
def P5620820061096193307.Spec : Prop :=
  ∀ n, (P5620820061096193307.a n : ℤ) = A275250 (n + 1)

end A275250

/-! ## A275250.P13572608857578044153

`record[A093178(A051178(n+1))]`
-/

namespace A275250.P13572608857578044153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A051178 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275250.P13572608857578044153

namespace A275250

/-- `record[A093178(A051178(n+1))]` -/
def P13572608857578044153.Spec : Prop :=
  ∀ n, P13572608857578044153.a n = A275250 (n + 1)

end A275250

/-! ## A275250.P5496801452440142399

`∩[A051178(n+1), A004273(n)]`
-/

namespace A275250.P5496801452440142399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275250.P5496801452440142399

namespace A275250

/-- `∩[A051178(n+1), A004273(n)]` -/
def P5496801452440142399.Spec : Prop :=
  ∀ n, (P5496801452440142399.a n : ℤ) = A275250 (n + 1)

end A275250

/-! ## A275250.P17189729184107763502

`∩[A051178(n+1), A060747(n)]`
-/

namespace A275250.P17189729184107763502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051178 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A275250.P17189729184107763502

namespace A275250

/-- `∩[A051178(n+1), A060747(n)]` -/
def P17189729184107763502.Spec : Prop :=
  ∀ n, (P17189729184107763502.a n : ℤ) = A275250 (n + 1)

end A275250

/-! ## A275250.P12138714222577603865

`filter[A051178(n+1), A000035(#)]`
-/

namespace A275250.P12138714222577603865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051178 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A275250.P12138714222577603865

namespace A275250

/-- `filter[A051178(n+1), A000035(#)]` -/
def P12138714222577603865.Spec : Prop :=
  ∀ n, P12138714222577603865.a n = A275250 (n + 1)

end A275250

/-! ## A275250.P3624566821582480592

`A004273(record[A001057(A051178(n+1))])`
-/

namespace A275250.P3624566821582480592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A051178 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A275250.P3624566821582480592

namespace A275250

/-- `A004273(record[A001057(A051178(n+1))])` -/
def P3624566821582480592.Spec : Prop :=
  ∀ n, P3624566821582480592.a n = A275250 (n + 1)

end A275250

/-!
# A275251: Sequence of pairwise relatively prime numbers of class P_6 (see comment in A275246).

The programs for A275251, there is no canonical definition to state claims against.
-/

/-! ## A275251.P13479601768213746013

`eq[6, A279119(A028310(n))]`
-/

namespace A275251.P13479601768213746013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275251.P13479601768213746013

/-! ## A275251.P16283834412675660266

`A065475(eq[6, A279119(n+1)])`
-/

namespace A275251.P16283834412675660266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275251.P16283834412675660266

/-!
# A275252: Sequence of pairwise relatively prime numbers of class P_7 (see comment in A275246).

The programs for A275252, there is no canonical definition to state claims against.
-/

/-! ## A275252.P2068939423070607680

`eq[7, A279119(A028310(n))]`
-/

namespace A275252.P2068939423070607680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275252.P2068939423070607680

/-! ## A275252.P12299640522456035512

`A065475(eq[7, A279119(n+1)])`
-/

namespace A275252.P12299640522456035512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275252.P12299640522456035512

/-!
# A275253: Sequence of pairwise relatively prime numbers of class P_8 (see comment in A275246).

The programs for A275253, there is no canonical definition to state claims against.
-/

/-! ## A275253.P6414287611351181192

`eq[8, A279119(A028310(n))]`
-/

namespace A275253.P6414287611351181192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A275253.P6414287611351181192

/-! ## A275253.P18240372452080062756

`A065475(eq[8, A279119(n+1)])`
-/

namespace A275253.P18240372452080062756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275253.P18240372452080062756

/-!
# A275255: G.f.: A(x) = x*Product_{n>=1} (1+a(n)^2*x^n) = Sum_{n>=1} a(n)*x^n.

The programs for A275255, there is no canonical definition to state claims against.
-/

/-! ## A275255.P2118909220288110217

`A018727(A122921(n!))`
-/

namespace A275255.P2118909220288110217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018727 (A122921 (Nat.factorial n)).toNat

end

end A275255.P2118909220288110217

/-! ## A275255.P4152650565367065482

`A018727(A000700(∑[n+1]))`
-/

namespace A275255.P4152650565367065482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018727 (A000700 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A275255.P4152650565367065482

/-! ## A275255.P10603786577382350229

`A321620(A326116(n+1))*A387857(n+1)`
-/

namespace A275255.P10603786577382350229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321620 (A326116 (n + 1)).toNat * A387857 (n + 1)

end

end A275255.P10603786577382350229

/-!
# A275257: Array read by upwards antidiagonals: LegendrePhi phi(x,n), x,n >=1.

The programs for A275257, there is no canonical definition to state claims against.
-/

/-! ## A275257.P10267387979556727785

`A166556(n)+A118135(A213028(n))`
-/

namespace A275257.P10267387979556727785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166556 n + A118135 (A213028 n).toNat

end

end A275257.P10267387979556727785

/-! ## A275257.P2902810020441476863

`A282355(A346061(n))+A166556(n)`
-/

namespace A275257.P2902810020441476863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282355 (A346061 n).toNat + A166556 n

end

end A275257.P2902810020441476863

/-! ## A275257.P12342344733163512096

`A166556(n)+A055641(A059328(n))`
-/

namespace A275257.P12342344733163512096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166556 n + A055641 (A059328 n).toNat

end

end A275257.P12342344733163512096

/-! ## A275257.P8038280224986296418

`A166556(n)+A118135(A347618(n))`
-/

namespace A275257.P8038280224986296418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166556 n + A118135 (A347618 n).toNat

end

end A275257.P8038280224986296418

/-! ## A275257.P1006266347680299497

`A316867(A174545(n)²)+A166556(n)`
-/

namespace A275257.P1006266347680299497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316867 (A174545 n ^ 2).toNat + A166556 n

end

end A275257.P1006266347680299497

/-!
# A275259: Number of n X n 0..2 arrays with no element equal to any value at offset (-2,-1), (-2,1) or (-1,-1) and new values introduced in order 0..2.

The programs for A275259, there is no canonical definition to state claims against.
-/

/-! ## A275259.P10377837967168818118

`A275266(∑[4*n]+1)`
-/

namespace A275259.P10377837967168818118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275259.P10377837967168818118

/-! ## A275259.P3047573046327354974

`record[A003982(n)*A275266(n+1)]`
-/

namespace A275259.P3047573046327354974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A275266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275259.P3047573046327354974

/-! ## A275259.P10937810124545586044

`record[gcd(A008482(n), A275266(n+1))]`
-/

namespace A275259.P10937810124545586044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A275266 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275259.P10937810124545586044

/-! ## A275259.P4238041810657897483

`record[A203994(n+1)*A275266(n+1)]`
-/

namespace A275259.P4238041810657897483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A275266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275259.P4238041810657897483

/-! ## A275259.P10098328117304260962

`A275266(A001844(n))+A261424(n)`
-/

namespace A275259.P10098328117304260962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A001844 n).toNat + A261424 n

end

end A275259.P10098328117304260962

/-!
# A275260: Number of n X 2 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-1) and new values introduced in order 0..2.

The programs for A275260, there is no canonical definition to state claims against.
-/

/-! ## A275260.P9655486156007557789

`A275266(∑[n+2])`
-/

namespace A275260.P9655486156007557789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275260.P9655486156007557789

/-! ## A275260.P6049105273550784508

`record[A275266(A000096(A028920(n)))]`
-/

namespace A275260.P6049105273550784508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A000096 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275260.P6049105273550784508

/-! ## A275260.P13581396676654734333

`record[A275266(A000096(A065648(n)))]`
-/

namespace A275260.P13581396676654734333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A000096 (A065648 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275260.P13581396676654734333

/-! ## A275260.P13456101164993290789

`record[A275266(A000096(A000188(n+1)))]`
-/

namespace A275260.P13456101164993290789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A000096 (A000188 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275260.P13456101164993290789

/-! ## A275260.P6165672325712204434

`A275266(A000096(n+1))%A048351(n+1)`
-/

namespace A275260.P6165672325712204434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275266 (A000096 (n + 1)).toNat) (A048351 (n + 1))

end

end A275260.P6165672325712204434

/-!
# A275261: Number of nX3 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-1) and new values introduced in order 0..2.

The programs for A275261, there is no canonical definition to state claims against.
-/

/-! ## A275261.P1689910655898943807

`A275266(∑[n+3]+1)`
-/

namespace A275261.P1689910655898943807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A275261.P1689910655898943807

/-! ## A275261.P2079533844270847640

`A275266(A141214(n)+1)-A326682(n)-A326683(n)`
-/

namespace A275261.P2079533844270847640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A141214 n + 1).toNat - A326682 n - A326683 n

end

end A275261.P2079533844270847640

/-!
# A275262: Number of nX4 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-1) and new values introduced in order 0..2.

The programs for A275262, there is no canonical definition to state claims against.
-/

/-! ## A275262.P12835401928083201904

`A275266(A141214(n+1))`
-/

namespace A275262.P12835401928083201904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A141214 (n + 1)).toNat

end

end A275262.P12835401928083201904

/-! ## A275262.P8049246917230933634

`A275266(A155212(n)+5)`
-/

namespace A275262.P8049246917230933634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A155212 n + 5).toNat

end

end A275262.P8049246917230933634

/-! ## A275262.P2081638333592671491

`A275266(eq[3, A193592(n)])`
-/

namespace A275262.P2081638333592671491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275262.P2081638333592671491

/-! ## A275262.P10314433401021807184

`A275266(A052905(n+1)+2)`
-/

namespace A275262.P10314433401021807184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A052905 (n + 1) + 2).toNat

end

end A275262.P10314433401021807184

/-! ## A275262.P329219572936948798

`A275266(A104675(n+1)/2)`
-/

namespace A275262.P329219572936948798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (SequenceMachineLib.roundAway ((A104675 (n + 1) : ℚ) / 2)).toNat

end

end A275262.P329219572936948798

/-!
# A275263: Number of nX5 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-1) and new values introduced in order 0..2.

The programs for A275263, there is no canonical definition to state claims against.
-/

/-! ## A275263.P16735517375725261862

`A275266(A046691(n+3))`
-/

namespace A275263.P16735517375725261862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A046691 (n + 3)).toNat

end

end A275263.P16735517375725261862

/-! ## A275263.P15595499231725697040

`A275266(eq[4, A193592(n)])`
-/

namespace A275263.P15595499231725697040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275263.P15595499231725697040

/-! ## A275263.P5231452960623227208

`A275266(Δ[A023545(n+1)])`
-/

namespace A275263.P5231452960623227208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (f1 (n + 1) - f1 n).toNat

end

end A275263.P5231452960623227208

/-! ## A275263.P3656269713762876535

`A275266(A141214(n)+Δ[A104675(n)])`
-/

namespace A275263.P3656269713762876535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A141214 n + (f1 (n + 1) - f1 n)).toNat

end

end A275263.P3656269713762876535

/-! ## A275263.P14166770991546549214

`A275266(A166136(n+1)+A016789(n))`
-/

namespace A275263.P14166770991546549214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A166136 (n + 1) + A016789 n).toNat

end

end A275263.P14166770991546549214

/-!
# A275264: Number of nX6 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-1) and new values introduced in order 0..2.

The programs for A275264, there is no canonical definition to state claims against.
-/

/-! ## A275264.P18056535183370424385

`A275266(eq[3, A219347(n)])`
-/

namespace A275264.P18056535183370424385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275264.P18056535183370424385

/-! ## A275264.P15913607262692854562

`A275266(eq[5, A193592(n)])`
-/

namespace A275264.P15913607262692854562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275264.P15913607262692854562

/-! ## A275264.P6996281548583918549

`A275266(eq[6, A200370(n+1)])`
-/

namespace A275264.P6996281548583918549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275264.P6996281548583918549

/-! ## A275264.P5079311607246514697

`A275266(eq[8, A185782(n+1)])`
-/

namespace A275264.P5079311607246514697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275264.P5079311607246514697

/-! ## A275264.P5215719825017316655

`A275266(eq[16, A057728(n+1)])`
-/

namespace A275264.P5215719825017316655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275264.P5215719825017316655

/-!
# A275265: Number of nX7 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-1) and new values introduced in order 0..2.

The programs for A275265, there is no canonical definition to state claims against.
-/

/-! ## A275265.P16563536037085778801

`A275266(A055999(n+4))`
-/

namespace A275265.P16563536037085778801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A055999 (n + 4)).toNat

end

end A275265.P16563536037085778801

/-! ## A275265.P4748123884711163202

`A275266(eq[4, A219347(n)])`
-/

namespace A275265.P4748123884711163202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275265.P4748123884711163202

/-! ## A275265.P13556874003672782060

`A275266(eq[6, A193592(n)])`
-/

namespace A275265.P13556874003672782060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275265.P13556874003672782060

/-! ## A275265.P5035209193144655345

`A275266(eq[7, A200370(n+1)])`
-/

namespace A275265.P5035209193144655345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275265.P5035209193144655345

/-! ## A275265.P2271196413925350515

`A275266(eq[10, A185782(n+1)])`
-/

namespace A275265.P2271196413925350515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275265.P2271196413925350515

/-!
# A275267: Number of 3 X n 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-1) and new values introduced in order 0..2.

The programs for A275267, the canonical program `A275267.P17953834233173228053` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275267 has offset 1).

The definition of A275267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 136 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275267.P15765362107253648907

`ogf((5-6x-6x^2-2x^3)/(1-6x+2x^2+6x^3))`
-/

namespace A275267.P15765362107253648907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -6, -6, -2] [1, -6, 2, 6] n

end

end A275267.P15765362107253648907

namespace A275267

/-- `ogf((5-6x-6x^2-2x^3)/(1-6x+2x^2+6x^3))` -/
def P15765362107253648907.Spec : Prop :=
  ∀ n, P15765362107253648907.a n = A275267 (n + 1)

end A275267

/-! ## A275267.P17953834233173228053

`6*a(n-1)-2*a(n-2)-6*a(n-3)` with `a(0)=5, a(1)=24, a(2)=128, a(3)=688`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275267

/-- `6*a(n-1)-2*a(n-2)-6*a(n-3)` -/
def P17953834233173228053.Spec : Prop :=
  ∀ n, P17953834233173228053.a n = A275267 (n + 1)

theorem P17953834233173228053.correct : P17953834233173228053.Spec := by
  intro n
  simp only [A275267, Nat.add_sub_cancel]

end A275267

/-! ## A275267.P1049574132590736500

`A275266(∑[n+2]+4)`
-/

namespace A275267.P1049574132590736500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A275267.P1049574132590736500

namespace A275267

/-- `A275266(∑[n+2]+4)` -/
def P1049574132590736500.Spec : Prop :=
  ∀ n, P1049574132590736500.a n = A275267 (n + 1)

end A275267

/-! ## A275267.P15514074848255518564

`and(-(n+1), A275266(A167614(n+1)))`
-/

namespace A275267.P15514074848255518564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n + 1 : ℤ)) (A275266 (A167614 (n + 1)).toNat)

end

end A275267.P15514074848255518564

namespace A275267

/-- `and(-(n+1), A275266(A167614(n+1)))` -/
def P15514074848255518564.Spec : Prop :=
  ∀ n, P15514074848255518564.a n = A275267 (n + 1)

end A275267

/-! ## A275267.P4458510503951973165

`lcm(A000034(n), A275266(A167614(n+1)))`
-/

namespace A275267.P4458510503951973165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A275266 (A167614 (n + 1)).toNat)

end

end A275267.P4458510503951973165

namespace A275267

/-- `lcm(A000034(n), A275266(A167614(n+1)))` -/
def P4458510503951973165.Spec : Prop :=
  ∀ n, (P4458510503951973165.a n : ℤ) = A275267 (n + 1)

end A275267

/-!
# A275268: Number of 4 X n 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-1) and new values introduced in order 0..2.

The programs for A275268, there is no canonical definition to state claims against.
-/

/-! ## A275268.P16807398214724055614

`A275266(A141214(n)+7)`
-/

namespace A275268.P16807398214724055614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A141214 n + 7).toNat

end

end A275268.P16807398214724055614

/-! ## A275268.P12615059886209135498

`A275266(A052905(n)+9)`
-/

namespace A275268.P12615059886209135498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A052905 n + 9).toNat

end

end A275268.P12615059886209135498

/-! ## A275268.P7564674469431769985

`A275266(A055999(n)+10)`
-/

namespace A275268.P7564674469431769985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A055999 n + 10).toNat

end

end A275268.P7564674469431769985

/-! ## A275268.P7123152826723865184

`A275266(A167614(n+2)+1)`
-/

namespace A275268.P7123152826723865184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A167614 (n + 2) + 1).toNat

end

end A275268.P7123152826723865184

/-! ## A275268.P13824214904509250586

`A275266(A166136(n+2)-2)`
-/

namespace A275268.P13824214904509250586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A166136 (n + 2) - 2).toNat

end

end A275268.P13824214904509250586

/-!
# A275269: Number of 5Xn 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-1) and new values introduced in order 0..2.

The programs for A275269, there is no canonical definition to state claims against.
-/

/-! ## A275269.P1734655955213199305

`A275266(A167499(n+3))`
-/

namespace A275269.P1734655955213199305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A167499 (n + 3)).toNat

end

end A275269.P1734655955213199305

/-! ## A275269.P1823415986918958564

`A275266(A155212(n)+13)`
-/

namespace A275269.P1823415986918958564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A155212 n + 13).toNat

end

end A275269.P1823415986918958564

/-! ## A275269.P3621196137099270591

`A275266(A056000(n)+15)`
-/

namespace A275269.P3621196137099270591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A056000 n + 15).toNat

end

end A275269.P3621196137099270591

/-! ## A275269.P18361078208396309571

`A275266(A000096(n+3)+6)`
-/

namespace A275269.P18361078208396309571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A000096 (n + 3) + 6).toNat

end

end A275269.P18361078208396309571

/-! ## A275269.P17991869108706918230

`A275266(eq[4, A002262(n)]+1)`
-/

namespace A275269.P17991869108706918230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A275269.P17991869108706918230

/-!
# A275270: Number of 6Xn 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-1) and new values introduced in order 0..2.

The programs for A275270, there is no canonical definition to state claims against.
-/

/-! ## A275270.P1093755687508415509

`A275266(A056115(n)+21)`
-/

namespace A275270.P1093755687508415509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A056115 n + 21).toNat

end

end A275270.P1093755687508415509

/-! ## A275270.P10706526043089758451

`A275266(A155212(n+1)+14)`
-/

namespace A275270.P10706526043089758451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A155212 (n + 1) + 14).toNat

end

end A275270.P10706526043089758451

/-! ## A275270.P9567037247308291844

`A275266(eq[5, A002262(n)]+1)`
-/

namespace A275270.P9567037247308291844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A275270.P9567037247308291844

/-! ## A275270.P7011620646375120712

`A275266(eq[7, A131818(n+1)])`
-/

namespace A275270.P7011620646375120712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275270.P7011620646375120712

/-! ## A275270.P7181882002317754537

`A275266(A167614(n+5)-(n+3))`
-/

namespace A275270.P7181882002317754537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A167614 (n + 5) - (n + 3 : ℤ)).toNat

end

end A275270.P7181882002317754537

/-!
# A275271: Number of 7Xn 0..2 arrays with no element equal to any value at offset (-2,-1) (-2,1) or (-1,-1) and new values introduced in order 0..2.

The programs for A275271, there is no canonical definition to state claims against.
-/

/-! ## A275271.P890121901778934623

`A275266(A056119(n)+28)`
-/

namespace A275271.P890121901778934623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A056119 n + 28).toNat

end

end A275271.P890121901778934623

/-! ## A275271.P9097010081496608965

`A275266(eq[11, A066657(n)])`
-/

namespace A275271.P9097010081496608965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275271.P9097010081496608965

/-! ## A275271.P18430140304079008397

`A275266(A167499(n+5)+2)`
-/

namespace A275271.P18430140304079008397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A167499 (n + 5) + 2).toNat

end

end A275271.P18430140304079008397

/-! ## A275271.P13378435482575193583

`A275266(A167614(n+5)+4)`
-/

namespace A275271.P13378435482575193583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A167614 (n + 5) + 4).toNat

end

end A275271.P13378435482575193583

/-! ## A275271.P9272612611077856913

`A275266(A000124(n+6)+6)`
-/

namespace A275271.P9272612611077856913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275266 (A000124 (n + 6) + 6).toNat

end

end A275271.P9272612611077856913

/-!
# A275272: a(n) = p - n!, where p is the second smallest prime > n!.

The programs for A275272, there is no canonical definition to state claims against.
-/

/-! ## A275272.P3134410793260255384

`A187874(n+1)-A000142(n+1)`
-/

namespace A275272.P3134410793260255384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187874 (n + 1) - A000142 (n + 1)

end

end A275272.P3134410793260255384

/-! ## A275272.P18052785314632552206

`A187874(n+1)-A006882(n+1)*A006882(n)`
-/

namespace A275272.P18052785314632552206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187874 (n + 1) - A006882 (n + 1) * A006882 n

end

end A275272.P18052785314632552206

/-!
# A275277: a(n) = a(n-1) + 3*a(n-2) + 3*a(n-3) + a(n-4), where a(0) = a(1) = a(2) = a(3) = 1.

The programs for A275277, the canonical program `A275277.P5080986218230965927` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275277 has offset 0).

The definition of A275277 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+3*a(n-2)+3*a(n-3)+a(n-4)` (program `A275277.P5080986218230965927`, by `A275277.P5080986218230965927.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A275277.P5080986218230965927

`a(n-1)+3*a(n-2)+3*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A275277

/-- `a(n-1)+3*a(n-2)+3*a(n-3)+a(n-4)` -/
def P5080986218230965927.Spec : Prop :=
  ∀ n, (P5080986218230965927.a n : ℤ) = A275277 n

theorem P5080986218230965927.correct : P5080986218230965927.Spec := by
  intro n
  simp only [A275277]

end A275277

/-! ## A275277.P7671520180295804528

`ogf((-1+3x^2+6x^3)/(-1+x+3x^2+3x^3+x^4))`
-/

namespace A275277.P7671520180295804528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3, -6] [1, -1, -3, -3, -1] n

end

end A275277.P7671520180295804528

namespace A275277

/-- `ogf((-1+3x^2+6x^3)/(-1+x+3x^2+3x^3+x^4))` -/
def P7671520180295804528.Spec : Prop :=
  ∀ n, P7671520180295804528.a n = A275277 n

end A275277

/-!
# A275280: Irregular triangle listing numbers m of n that have prime divisors p that also divide n, in order of appearance in a matrix of products that arranges the powers of prime divisors p of n along independent axes.

The programs for A275280, there is no canonical definition to state claims against.
-/

/-! ## A275280.P14861442014142665464

`A319847(∑[∑[floor(n/10)]!])`
-/

namespace A275280.P14861442014142665464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 10⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319847 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275280.P14861442014142665464

/-! ## A275280.P764387557730659866

`A366625(∑[A366625(ceil(2^(n-1)))])`
-/

namespace A275280.P764387557730659866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366625 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366625 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A275280.P764387557730659866

/-! ## A275280.P12344031234936328000

`A124768(A272919(n+1)+A174617(n+1))`
-/

namespace A275280.P12344031234936328000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A272919 (n + 1) + A174617 (n + 1)).toNat

end

end A275280.P12344031234936328000

/-! ## A275280.P14911112079858974979

`A162306(n+1)-A178798(A363327(n+1))`
-/

namespace A275280.P14911112079858974979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162306 (n + 1) - A178798 (A363327 (n + 1)).toNat

end

end A275280.P14911112079858974979

/-! ## A275280.P13314175790281924288

`A027750(A055932(n+1)^A326631(n)+n)`
-/

namespace A275280.P13314175790281924288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (SequenceMachineLib.roundAway ((A055932 (n + 1) : ℚ) ^ (A326631 n : ℤ) + (n : ℚ))).toNat

end

end A275280.P13314175790281924288

/-!
# A275281: Number T(n,k) of set partitions of [n] with symmetric block size list of length k; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A275281, there is no canonical definition to state claims against.
-/

/-! ## A275281.P18282519093361779112

`A285189(A004248(n)*A204459(n))`
-/

namespace A275281.P18282519093361779112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A004248 n * A204459 n).toNat

end

end A275281.P18282519093361779112

/-! ## A275281.P13613901405098300583

`A329200(A281891(n))%4`
-/

namespace A275281.P13613901405098300583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329200 (A281891 n).toNat) 4

end

end A275281.P13613901405098300583

/-! ## A275281.P15031031213640929703

`A138649(A269945(n))%7`
-/

namespace A275281.P15031031213640929703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138649 (A269945 n).toNat) 7

end

end A275281.P15031031213640929703

/-! ## A275281.P548876946608555900

`A122201(A090181(n)*A242887(n))`
-/

namespace A275281.P548876946608555900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122201 (A090181 n * A242887 n).toNat

end

end A275281.P548876946608555900

/-! ## A275281.P15027239869656411289

`A124765(A182406(n+1)*A307431(n))`
-/

namespace A275281.P15027239869656411289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A182406 (n + 1) * A307431 n).toNat

end

end A275281.P15027239869656411289

/-!
# A275283: Number of set partitions of [2n] with symmetric block size list of length n.

The programs for A275283, there is no canonical definition to state claims against.
-/

/-! ## A275283.P16362448182541932966

`A305197(2*n)`
-/

namespace A275283.P16362448182541932966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305197 (2 * n)

end

end A275283.P16362448182541932966

/-! ## A275283.P18234193219153511919

`A275281(∑[4*n])`
-/

namespace A275283.P18234193219153511919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A275283.P18234193219153511919

/-! ## A275283.P790907902254934496

`gcd(A000038(n), A275281(A046092(n)))`
-/

namespace A275283.P790907902254934496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A275281 (A046092 n).toNat)

end

end A275283.P790907902254934496

/-! ## A275283.P14476410784817882907

`or(A000007(n), A275281(A046092(n)))`
-/

namespace A275283.P14476410784817882907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A275281 (A046092 n).toNat)

end

end A275283.P14476410784817882907

/-! ## A275283.P8709866178980028401

`A275281(A046092(n))+A000045(2*n)%((-1)^n)`
-/

namespace A275283.P8709866178980028401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A046092 n).toNat + Int.tmod (A000045 (2 * n)) ((-1) ^ n)

end

end A275283.P8709866178980028401

/-!
# A275286: a(n) = ((2n+1)!!)^2 * Sum_{k=0..n}(-1)^k/(2k+1)^2.

The programs for A275286, there is no canonical definition to state claims against.
-/

/-! ## A275286.P9528114814221759075

`A001818(n+1)/A294971(n)*A294970(n)`
-/

namespace A275286.P9528114814221759075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001818 (n + 1) : ℚ) / (A294971 n : ℚ) * (A294970 n : ℚ)

end

end A275286.P9528114814221759075

/-! ## A275286.P1102561503865258995

`A294895(A029519(n+1))*A294970(n)`
-/

namespace A275286.P1102561503865258995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294895 (A029519 (n + 1)).toNat * A294970 n

end

end A275286.P1102561503865258995

/-!
# A275289: Number of set partitions of [n] with symmetric block size list of length three.

The programs for A275289, the canonical program `A275289.P10625359432271309099` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A275289 has offset 3).

The definition of A275289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A275289.P10625359432271309099

`A026165(n)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A275289

/-- `A026165(n)+a(n-2)` -/
def P10625359432271309099.Spec : Prop :=
  ∀ n, P10625359432271309099.a n = A275289 (n + 3)

theorem P10625359432271309099.correct : P10625359432271309099.Spec := by
  intro n
  simp only [A275289, Nat.add_sub_cancel]

end A275289

/-! ## A275289.P3653872400324693510

`A005774(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A275289.P3653872400324693510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005774 (n + 1) - a (n - 1)

end

end A275289.P3653872400324693510

namespace A275289

/-- `A005774(n+1)-a(n-1)` -/
def P3653872400324693510.Spec : Prop :=
  ∀ n, P3653872400324693510.a n = A275289 (n + 3)

end A275289

/-! ## A275289.P12456150975841355865

`A246437(n+2)-A005043(n+2)`
-/

namespace A275289.P12456150975841355865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246437 (n + 2) - A005043 (n + 2)

end

end A275289.P12456150975841355865

namespace A275289

/-- `A246437(n+2)-A005043(n+2)` -/
def P12456150975841355865.Spec : Prop :=
  ∀ n, P12456150975841355865.a n = A275289 (n + 3)

end A275289

/-! ## A275289.P5875591588320586453

`A005717(n+2)-A113682(n+1)`
-/

namespace A275289.P5875591588320586453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 2) - A113682 (n + 1)

end

end A275289.P5875591588320586453

namespace A275289

/-- `A005717(n+2)-A113682(n+1)` -/
def P5875591588320586453.Spec : Prop :=
  ∀ n, P5875591588320586453.a n = A275289 (n + 3)

end A275289

/-! ## A275289.P43997500048480494

`A113682(n+2)-A002426(n+2)`
-/

namespace A275289.P43997500048480494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113682 (n + 2) - A002426 (n + 2)

end

end A275289.P43997500048480494

namespace A275289

/-- `A113682(n+2)-A002426(n+2)` -/
def P43997500048480494.Spec : Prop :=
  ∀ n, P43997500048480494.a n = A275289 (n + 3)

end A275289

/-! ## A275289.P6052773042610111620

`Δ[Δ[A097861(n+1)]]-A246437(n+1)`
-/

namespace A275289.P6052773042610111620
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A246437 (n + 1)

end

end A275289.P6052773042610111620

namespace A275289

/-- `Δ[Δ[A097861(n+1)]]-A246437(n+1)` -/
def P6052773042610111620.Spec : Prop :=
  ∀ n, P6052773042610111620.a n = A275289 (n + 3)

end A275289

/-! ## A275289.P15154309054196640716

`Δ[Δ[A257520(n+1)]]-A246437(n+1)`
-/

namespace A275289.P15154309054196640716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A246437 (n + 1)

end

end A275289.P15154309054196640716

namespace A275289

/-- `Δ[Δ[A257520(n+1)]]-A246437(n+1)` -/
def P15154309054196640716.Spec : Prop :=
  ∀ n, P15154309054196640716.a n = A275289 (n + 3)

end A275289

/-! ## A275289.P6336585132764193333

`A005717(n+2)-(A246437(n+1)+A005717(n+1))`
-/

namespace A275289.P6336585132764193333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005717 (n + 2) - (A246437 (n + 1) + A005717 (n + 1))

end

end A275289.P6336585132764193333

namespace A275289

/-- `A005717(n+2)-(A246437(n+1)+A005717(n+1))` -/
def P6336585132764193333.Spec : Prop :=
  ∀ n, P6336585132764193333.a n = A275289 (n + 3)

end A275289

/-! ## A275289.P5569317138637837084

`A109194(n+2)-A055218(n)`
-/

namespace A275289.P5569317138637837084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109194 (n + 2) - A055218 n

end

end A275289.P5569317138637837084

namespace A275289

/-- `A109194(n+2)-A055218(n)` -/
def P5569317138637837084.Spec : Prop :=
  ∀ n, P5569317138637837084.a n = A275289 (n + 3)

theorem P5569317138637837084.correct : P5569317138637837084.Spec := by
  intro n
  simp only [A275289, Nat.add_sub_cancel, A275289.P5569317138637837084.a, A275289.P10625359432271309099.a, A026165, A026165.P12291563283285133402.f1, A026165.P12291563283285133402.a, A055218, A055218.P16408589648472260685.a, A109194, A109194.P15180095982522545927.a, A005774, A005774.P11674759060284518255.a, A342912, A342912.P7509738024584367679.a, A001006, A001006.P11199602840237397285.a, A005773, A005773.P2300326801340372225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A275289

/-! ## A275289.P3319896832904891098

`A109196(n+2)-A057585(n+1)`
-/

namespace A275289.P3319896832904891098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109196 (n + 2) - A057585 (n + 1)

end

end A275289.P3319896832904891098

namespace A275289

/-- `A109196(n+2)-A057585(n+1)` -/
def P3319896832904891098.Spec : Prop :=
  ∀ n, P3319896832904891098.a n = A275289 (n + 3)

end A275289

/-! ## A275289.P8879875514733021381

`A055218(n)-2*A057585(n+1)`
-/

namespace A275289.P8879875514733021381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055218 n - 2 * A057585 (n + 1)

end

end A275289.P8879875514733021381

namespace A275289

/-- `A055218(n)-2*A057585(n+1)` -/
def P8879875514733021381.Spec : Prop :=
  ∀ n, P8879875514733021381.a n = A275289 (n + 3)

end A275289

/-! ## A275289.P12856326201832501744

`2*A109196(n+2)-A055218(n)`
-/

namespace A275289.P12856326201832501744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109196 (n + 2) - A055218 n

end

end A275289.P12856326201832501744

namespace A275289

/-- `2*A109196(n+2)-A055218(n)` -/
def P12856326201832501744.Spec : Prop :=
  ∀ n, P12856326201832501744.a n = A275289 (n + 3)

end A275289

/-! ## A275289.P4403857804853442293

`A109194(n+2)/2-A057585(n+1)`
-/

namespace A275289.P4403857804853442293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109194 (n + 2) : ℚ) / 2 - (A057585 (n + 1) : ℚ)

end

end A275289.P4403857804853442293

namespace A275289

/-- `A109194(n+2)/2-A057585(n+1)` -/
def P4403857804853442293.Spec : Prop :=
  ∀ n, P4403857804853442293.a n = (A275289 (n + 3) : ℚ)

end A275289

/-!
# A275290: Number of set partitions of [n] with symmetric block size list of length five.

The programs for A275290, there is no canonical definition to state claims against.
-/

/-! ## A275290.P1562457840138180596

`A275281(A167499(n+4))`
-/

namespace A275290.P1562457840138180596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A167499 (n + 4)).toNat

end

end A275290.P1562457840138180596

/-! ## A275290.P2979030166867606162

`A275281(eq[5, A002262(n)])`
-/

namespace A275290.P2979030166867606162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275290.P2979030166867606162

/-! ## A275290.P16745448813236104345

`record[A275281(A000217(n)+5)]`
-/

namespace A275290.P16745448813236104345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A000217 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275290.P16745448813236104345

/-! ## A275290.P161258921498826506

`A275281(A133263(n+5)+3)`
-/

namespace A275290.P161258921498826506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A133263 (n + 5) + 3).toNat

end

end A275290.P161258921498826506

/-! ## A275290.P16100626838165121177

`A275281(eq[6, A002260(n+1)])`
-/

namespace A275290.P16100626838165121177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275290.P16100626838165121177

/-! ## A275290.P5739224269880840321

`record[A275281(A145018(n+1)+1)]`
-/

namespace A275290.P5739224269880840321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A145018 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275290.P5739224269880840321

/-! ## A275290.P8354034199573746475

`record[A275281(A167614(n+2)+2)]`
-/

namespace A275290.P8354034199573746475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A167614 (n + 2) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275290.P8354034199573746475

/-! ## A275290.P6843382787339140199

`A275281(A000217(n+6)-(n+1))`
-/

namespace A275290.P6843382787339140199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A000217 (n + 6) - (n + 1 : ℤ)).toNat

end

end A275290.P6843382787339140199

/-! ## A275290.P2761620762100986080

`A275281(A161680(n+7)-(n+1))`
-/

namespace A275290.P2761620762100986080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A161680 (n + 7) - (n + 1 : ℤ)).toNat

end

end A275290.P2761620762100986080

/-!
# A275291: Number of set partitions of [n] with symmetric block size list of length seven.

The programs for A275291, there is no canonical definition to state claims against.
-/

/-! ## A275291.P2287307591608151403

`A275281(eq[7, A002262(n)])`
-/

namespace A275291.P2287307591608151403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275291.P2287307591608151403

/-! ## A275291.P10911162819641718173

`A275281(A000217(n+7)+7)`
-/

namespace A275291.P10911162819641718173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A000217 (n + 7) + 7).toNat

end

end A275291.P10911162819641718173

/-! ## A275291.P5504144886974398425

`A275281(eq[7, A144328(n+1)])`
-/

namespace A275291.P5504144886974398425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275291.P5504144886974398425

/-! ## A275291.P5809783523061312786

`A275281(eq[8, A002260(n+1)])`
-/

namespace A275291.P5809783523061312786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275291.P5809783523061312786

/-! ## A275291.P15448442354142016846

`A275281(A167614(n+7)-(n+4))`
-/

namespace A275291.P15448442354142016846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A167614 (n + 7) - (n + 4 : ℤ)).toNat

end

end A275291.P15448442354142016846

/-!
# A275292: Number of set partitions of [n] with symmetric block size list of length nine.

The programs for A275292, there is no canonical definition to state claims against.
-/

/-! ## A275292.P13506702659180035041

`A275281(eq[9, A002262(n)])`
-/

namespace A275292.P13506702659180035041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275292.P13506702659180035041

/-! ## A275292.P13320508165163924868

`A275281(eq[9, A191532(n)])`
-/

namespace A275292.P13320508165163924868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275292.P13320508165163924868

/-! ## A275292.P12431837667986784022

`A275281(A167499(n+8)+4)`
-/

namespace A275292.P12431837667986784022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A167499 (n + 8) + 4).toNat

end

end A275292.P12431837667986784022

/-! ## A275292.P10048242668596961993

`A275281(eq[10, A002260(n+1)])`
-/

namespace A275292.P10048242668596961993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275292.P10048242668596961993

/-! ## A275292.P3111726421752040734

`A275281(eq[10, A134868(n+1)])`
-/

namespace A275292.P3111726421752040734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275292.P3111726421752040734

/-!
# A275293: Number of set partitions of [2n] with symmetric block size list of length four.

The programs for A275293, there is no canonical definition to state claims against.
-/

/-! ## A275293.P3822715784166093046

`A382225(A001844(n+1))`
-/

namespace A275293.P3822715784166093046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382225 (A001844 (n + 1)).toNat

end

end A275293.P3822715784166093046

/-! ## A275293.P11989092789918975615

`A382225(A099776(n+1))`
-/

namespace A275293.P11989092789918975615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382225 (A099776 (n + 1)).toNat

end

end A275293.P11989092789918975615

/-! ## A275293.P957696923619237462

`record[A275281(A145018(n+1))]`
-/

namespace A275293.P957696923619237462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A145018 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275293.P957696923619237462

/-! ## A275293.P17383607088046202219

`record[A275281(A167499(n)-1)]`
-/

namespace A275293.P17383607088046202219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A167499 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275293.P17383607088046202219

/-! ## A275293.P7884274963905561156

`record[A275281(A000124(n)+3)]`
-/

namespace A275293.P7884274963905561156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A000124 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275293.P7884274963905561156

/-!
# A275294: Number of set partitions of [2n] with symmetric block size list of length six.

The programs for A275294, there is no canonical definition to state claims against.
-/

/-! ## A275294.P1197112107667863422

`record[A275281(eq[7, A002260(n+1)])]`
-/

namespace A275294.P1197112107667863422
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275294.P1197112107667863422

/-! ## A275294.P1909948380829419840

`record[Δ[A275281(A167614(n+4)+3)]]`
-/

namespace A275294.P1909948380829419840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A167614 (n + 4) + 3).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275294.P1909948380829419840

/-! ## A275294.P7795920435347978846

`record[A275281(A167614(n+4)+3)+A000007(n)]`
-/

namespace A275294.P7795920435347978846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A167614 (n + 4) + 3).toNat + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275294.P7795920435347978846

/-! ## A275294.P14388498196873080809

`record[A275281(A167614(n+4)+3)+A059841(n)]`
-/

namespace A275294.P14388498196873080809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A167614 (n + 4) + 3).toNat + A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275294.P14388498196873080809

/-! ## A275294.P3462919562091914939

`record[A275281(A167614(n+4)+3)+A008574(n)%2]`
-/

namespace A275294.P3462919562091914939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (A167614 (n + 4) + 3).toNat + Int.tmod (A008574 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A275294.P3462919562091914939

/-!
# A275295: Number of set partitions of [2n] with symmetric block size list of length eight.

The programs for A275295, there is no canonical definition to state claims against.
-/

/-! ## A275295.P4244728672262173851

`A275281(eq[9, A140756(n+1)])`
-/

namespace A275295.P4244728672262173851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275281 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A275295.P4244728672262173851

/-!
# A275297: Number of ordered ways to write n as x^2 + y^2 + z^2 + w^3 with x + 2*y a square, where x,y,z,w are nonnegative integers with z >= w.

The programs for A275297, there is no canonical definition to state claims against.
-/

/-! ## A275297.P7808468886872412081

`A001221(A165293(n+1)+A095730(n+1))`
-/

namespace A275297.P7808468886872412081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A165293 (n + 1) + A095730 (n + 1)).toNat

end

end A275297.P7808468886872412081

/-! ## A275297.P14428711439446341051

`A066099(A335205(n+1)+A045834(3*(n+1)))`
-/

namespace A275297.P14428711439446341051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A335205 (n + 1) + A045834 (3 * (n + 1))).toNat

end

end A275297.P14428711439446341051

/-!
# A275298: Number of ordered ways to write n as w^3 + x^2 + y^2 + z^2 with x - w a square, where x,y,z,w are nonnegative integers with y <= z > w.

The programs for A275298, there is no canonical definition to state claims against.
-/

/-! ## A275298.P752537708564689803

`∏{e}[A241417(3*n+2)+A087686(n+3), #]`
-/

namespace A275298.P752537708564689803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241417 (3 * n + 2) + A087686 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A275298.P752537708564689803

/-! ## A275298.P12964221861220726039

`A087117(or(A001844(n+7), A203150(n+3)))`
-/

namespace A275298.P12964221861220726039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (Int.lor (A001844 (n + 7)) (A203150 (n + 3))).toNat

end

end A275298.P12964221861220726039

/-! ## A275298.P13103927700620524189

`A279061(A007088(n)+6+n)`
-/

namespace A275298.P13103927700620524189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (A007088 n + 6 + (n : ℤ)).toNat

end

end A275298.P13103927700620524189

/-! ## A275298.P16895004412122932320

`A265917(A324739(n+1)-A280829(n+1))`
-/

namespace A275298.P16895004412122932320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265917 (A324739 (n + 1) - A280829 (n + 1)).toNat

end

end A275298.P16895004412122932320

