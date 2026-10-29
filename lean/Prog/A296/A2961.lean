import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A296102: Number of total dominating sets in the n-prism graph.

The programs for A296102, the canonical program `A296102.P2737954778859170217` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296102 has offset 1).

The definition of A296102 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296102.P2737954778859170217

`ogf((3+12x^2-8x^3+50x^4+24x^5-8x^7-9x^8)/(1-3x-4x^3+2x^4-10x^5-4x^6+x^8+x^9))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A296102

/-- `ogf((3+12x^2-8x^3+50x^4+24x^5-8x^7-9x^8)/(1-3x-4x^3+2x^4-10x^5-4x^6+x^8+x^9))` -/
def P2737954778859170217.Spec : Prop :=
  ∀ n, P2737954778859170217.a n = A296102 (n + 1)

theorem P2737954778859170217.correct : P2737954778859170217.Spec := by
  intro n
  simp only [A296102, Nat.add_sub_cancel]

end A296102

/-! ## A296102.P12593933539464687046

`A001644(lcm(2, n+1))^A000034(n)`
-/

namespace A296102.P12593933539464687046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001644 (Nat.lcm 2 (n + 1)) : ℚ) ^ (A000034 n : ℤ)

end

end A296102.P12593933539464687046

namespace A296102

/-- `A001644(lcm(2, n+1))^A000034(n)` -/
def P12593933539464687046.Spec : Prop :=
  ∀ n, P12593933539464687046.a n = (A296102 (n + 1) : ℚ)

end A296102

/-!
# A296104: Numbers k such that 2^k == 3 (mod k-1).

The programs for A296104, there is no canonical definition to state claims against.
-/

/-! ## A296104.P4038145925410957633

`A296370(n+1)+1`
-/

namespace A296104.P4038145925410957633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296370 (n + 1) + 1

end

end A296104.P4038145925410957633

/-!
# A296105: a(n) is the number of connected transitive relations over n unlabeled nodes.

The programs for A296105, there is no canonical definition to state claims against.
-/

/-! ## A296105.P9892995929914248336

`A192957(n)+A026367(A001147(n))`
-/

namespace A296105.P9892995929914248336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192957 n + A026367 (A001147 n).toNat

end

end A296105.P9892995929914248336

/-! ## A296105.P16542697155586136407

`A008620(A213233(n)+A010763(n))`
-/

namespace A296105.P16542697155586136407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A213233 n + A010763 n).toNat

end

end A296105.P16542697155586136407

/-!
# A296108: Number of n X n 0..1 arrays with each 1 adjacent to 3 or 4 king-move neighboring 1's.

The programs for A296108, there is no canonical definition to state claims against.
-/

/-! ## A296108.P2854217972019942418

`A296115(∑[4*n]+1)`
-/

namespace A296108.P2854217972019942418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296108.P2854217972019942418

/-! ## A296108.P602911052424868946

`record[A296115(A330613(n+1))]`
-/

namespace A296108.P602911052424868946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296108.P602911052424868946

/-! ## A296108.P3197018231750129516

`A296115(A001844(n))+char[10]`
-/

namespace A296108.P3197018231750129516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A296108.P3197018231750129516

/-! ## A296108.P9833798973151095131

`record[A003982(n)*A296115(n+1)]`
-/

namespace A296108.P9833798973151095131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A296115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296108.P9833798973151095131

/-! ## A296108.P4832931278060435518

`record[root(A296115(n+1), A027420(n))]`
-/

namespace A296108.P4832931278060435518
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A296115 (n + 1) : ℝ) ^ (1 / (A027420 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296108.P4832931278060435518

/-!
# A296109: Number of n X 2 0..1 arrays with each 1 adjacent to 3 or 4 king-move neighboring 1s.

The programs for A296109, the canonical program `A296109.P11784711870042133398` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296109 has offset 1).

The definition of A296109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296109.P11784711870042133398

`ogf((1+x-x^2-8x^3-10x^4-4x^5)/(1-x-2x^2-5x^3+2x^4+6x^5+4x^6))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A296109

/-- `ogf((1+x-x^2-8x^3-10x^4-4x^5)/(1-x-2x^2-5x^3+2x^4+6x^5+4x^6))` -/
def P11784711870042133398.Spec : Prop :=
  ∀ n, P11784711870042133398.a n = A296109 (n + 1)

theorem P11784711870042133398.correct : P11784711870042133398.Spec := by
  intro n
  simp only [A296109, Nat.add_sub_cancel]

end A296109

/-! ## A296109.P1011048028670303622

`record[ratio[A296115(n+1)]]`
-/

namespace A296109.P1011048028670303622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296109.P1011048028670303622

namespace A296109

/-- `record[ratio[A296115(n+1)]]` -/
def P1011048028670303622.Spec : Prop :=
  ∀ n, P1011048028670303622.a n = (A296109 (n + 1) : ℚ)

end A296109

/-! ## A296109.P8057818626153973512

`A296115(∑[n+1]+2)`
-/

namespace A296109.P8057818626153973512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296109.P8057818626153973512

namespace A296109

/-- `A296115(∑[n+1]+2)` -/
def P8057818626153973512.Spec : Prop :=
  ∀ n, P8057818626153973512.a n = A296109 (n + 1)

end A296109

/-! ## A296109.P5596882505970885779

`record[A296115(A252460(n+1))]`
-/

namespace A296109.P5596882505970885779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (A252460 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296109.P5596882505970885779

namespace A296109

/-- `record[A296115(A252460(n+1))]` -/
def P5596882505970885779.Spec : Prop :=
  ∀ n, P5596882505970885779.a n = A296109 (n + 1)

end A296109

/-! ## A296109.P10904948106092645813

`record[A296115(A255552(n+1))]`
-/

namespace A296109.P10904948106092645813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (A255552 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296109.P10904948106092645813

namespace A296109

/-- `record[A296115(A255552(n+1))]` -/
def P10904948106092645813.Spec : Prop :=
  ∀ n, P10904948106092645813.a n = A296109 (n + 1)

end A296109

/-!
# A296110: Number of n X 3 0..1 arrays with each 1 adjacent to 3 or 4 king-move neighboring 1's.

The programs for A296110, there is no canonical definition to state claims against.
-/

/-! ## A296110.P18005418351619603519

`A296115(∑[n+2]+4)`
-/

namespace A296110.P18005418351619603519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296110.P18005418351619603519

/-! ## A296110.P9652788157944665631

`or(char[1], A296115(A046691(n)+7))`
-/

namespace A296110.P9652788157944665631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A296115 (A046691 n + 7).toNat)

end

end A296110.P9652788157944665631

/-! ## A296110.P17234024332479413840

`record[A010054(n)*A296115(n+3)]`
-/

namespace A296110.P17234024332479413840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A296115 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296110.P17234024332479413840

/-! ## A296110.P13451465162245768842

`record[gcd(A208459(n), A296115(n+1))]`
-/

namespace A296110.P13451465162245768842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A208459 n) (A296115 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296110.P13451465162245768842

/-! ## A296110.P3733716494897531257

`A296115(A167614(n+1))^ceil(acot(n))`
-/

namespace A296110.P3733716494897531257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296115 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A296110.P3733716494897531257

/-!
# A296111: Number of nX4 0..1 arrays with each 1 adjacent to 3 or 4 king-move neighboring 1s.

The programs for A296111, there is no canonical definition to state claims against.
-/

/-! ## A296111.P5869977140265887588

`A296115(∑[n+3]+7)`
-/

namespace A296111.P5869977140265887588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A296111.P5869977140265887588

/-! ## A296111.P18180751950400714947

`∑[∑[A035250(A015770(n+1))]]`
-/

namespace A296111.P18180751950400714947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (A015770 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296111.P18180751950400714947

/-!
# A296112: Number of n X 5 0..1 arrays with each 1 adjacent to 3 or 4 king-move neighboring 1's.

The programs for A296112, there is no canonical definition to state claims against.
-/

/-! ## A296112.P17093531286905615066

`A296115(A167499(n+3))`
-/

namespace A296112.P17093531286905615066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (A167499 (n + 3)).toNat

end

end A296112.P17093531286905615066

/-! ## A296112.P8387307848438043424

`A296115(A155212(n)+13)`
-/

namespace A296112.P8387307848438043424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (A155212 n + 13).toNat

end

end A296112.P8387307848438043424

/-! ## A296112.P2660974064539443094

`A296115(A056000(n)+15)`
-/

namespace A296112.P2660974064539443094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (A056000 n + 15).toNat

end

end A296112.P2660974064539443094

/-! ## A296112.P11496229323083735498

`A296115(eq[7, A066657(n)])`
-/

namespace A296112.P11496229323083735498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296112.P11496229323083735498

/-! ## A296112.P7934038316022937656

`A296115(A167614(n+3)+2)`
-/

namespace A296112.P7934038316022937656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (A167614 (n + 3) + 2).toNat

end

end A296112.P7934038316022937656

/-!
# A296113: Number of nX6 0..1 arrays with each 1 adjacent to 3 or 4 king-move neighboring 1s.

The programs for A296113, there is no canonical definition to state claims against.
-/

/-! ## A296113.P15409159724537755122

`A296115(A166136(n+4))`
-/

namespace A296113.P15409159724537755122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (A166136 (n + 4)).toNat

end

end A296113.P15409159724537755122

/-! ## A296113.P5319501176821087095

`A296115(A056115(n)+21)`
-/

namespace A296113.P5319501176821087095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (A056115 n + 21).toNat

end

end A296113.P5319501176821087095

/-! ## A296113.P8653102482383863780

`A296115(A167499(n+4)+1)`
-/

namespace A296113.P8653102482383863780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (A167499 (n + 4) + 1).toNat

end

end A296113.P8653102482383863780

/-! ## A296113.P4150861688368194112

`A296115(A167614(n+4)+3)`
-/

namespace A296113.P4150861688368194112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (A167614 (n + 4) + 3).toNat

end

end A296113.P4150861688368194112

/-! ## A296113.P15198005673550068433

`A296115(A000124(n+5)+5)`
-/

namespace A296113.P15198005673550068433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (A000124 (n + 5) + 5).toNat

end

end A296113.P15198005673550068433

/-!
# A296114: Number of nX7 0..1 arrays with each 1 adjacent to 3 or 4 king-move neighboring 1s.

The programs for A296114, there is no canonical definition to state claims against.
-/

/-! ## A296114.P11197501151262335110

`A296115(A056119(n)+28)`
-/

namespace A296114.P11197501151262335110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (A056119 n + 28).toNat

end

end A296114.P11197501151262335110

/-! ## A296114.P10779991661243664031

`A296115(eq[11, A066657(n)])`
-/

namespace A296114.P10779991661243664031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296114.P10779991661243664031

/-! ## A296114.P196860031761724451

`A296115(A167499(n+5)+2)`
-/

namespace A296114.P196860031761724451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (A167499 (n + 5) + 2).toNat

end

end A296114.P196860031761724451

/-! ## A296114.P12723541300521756877

`A296115(A167614(n+5)+4)`
-/

namespace A296114.P12723541300521756877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (A167614 (n + 5) + 4).toNat

end

end A296114.P12723541300521756877

/-! ## A296114.P1056970257728224906

`A296115(A000124(n+6)+6)`
-/

namespace A296114.P1056970257728224906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296115 (A000124 (n + 6) + 6).toNat

end

end A296114.P1056970257728224906

/-!
# A296115: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 3 or 4 king-move neighboring 1s.

The programs for A296115, there is no canonical definition to state claims against.
-/

/-! ## A296115.P2783250777114682590

`A125749(A174669(n))`
-/

namespace A296115.P2783250777114682590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125749 (A174669 n).toNat

end

end A296115.P2783250777114682590

/-! ## A296115.P15313192390633666469

`A305715(A063394(n))`
-/

namespace A296115.P15313192390633666469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305715 (A063394 n).toNat

end

end A296115.P15313192390633666469

/-! ## A296115.P7324875206053347295

`A352104(A152972(n))`
-/

namespace A296115.P7324875206053347295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352104 (A152972 n).toNat

end

end A296115.P7324875206053347295

/-! ## A296115.P5202170526125096504

`A176816(A296039(n+1))`
-/

namespace A296115.P5202170526125096504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176816 (A296039 (n + 1)).toNat

end

end A296115.P5202170526125096504

/-! ## A296115.P5821642086076812063

`A176816(A296974(n+1))`
-/

namespace A296115.P5821642086076812063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176816 (A296974 (n + 1)).toNat

end

end A296115.P5821642086076812063

/-!
# A296118: Number of ways to choose a factorization of each factor in a strict factorization of n.

The programs for A296118, there is no canonical definition to state claims against.
-/

/-! ## A296118.P6959855518381064126

`A383310(n+1)-A303338(A347437(n+1))`
-/

namespace A296118.P6959855518381064126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383310 (n + 1) - A303338 (A347437 (n + 1)).toNat

end

end A296118.P6959855518381064126

/-! ## A296118.P14976087910423981134

`A383310(n+1)+A383310(n+1)-A296121(n+1)`
-/

namespace A296118.P14976087910423981134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383310 (n + 1) + (A383310 (n + 1) - A296121 (n + 1))

end

end A296118.P14976087910423981134

/-! ## A296118.P14352323021729568623

`xor(A002033(n), A090330(A253249(n+1)))`
-/

namespace A296118.P14352323021729568623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002033 n) (A090330 (A253249 (n + 1)).toNat)

end

end A296118.P14352323021729568623

/-! ## A296118.P18380650080308655965

`A130386(A349059(n+1)%A205596(n))`
-/

namespace A296118.P18380650080308655965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130386 (Int.tmod (A349059 (n + 1)) (A205596 n)).toNat

end

end A296118.P18380650080308655965

/-! ## A296118.P11099794207628056285

`xor(A002033(n), A025466(A220204(n+1)))`
-/

namespace A296118.P11099794207628056285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002033 n) (A025466 (A220204 (n + 1)).toNat)

end

end A296118.P11099794207628056285

/-!
# A296119: Number of ways to choose a strict factorization of each factor in a factorization of n.

The programs for A296119, there is no canonical definition to state claims against.
-/

/-! ## A296119.P3178909810942181414

`A382152(A383311(n+1))`
-/

namespace A296119.P3178909810942181414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382152 (A383311 (n + 1)).toNat

end

end A296119.P3178909810942181414

/-! ## A296119.P931506946366506179

`A052057(A316784(n+1))+A001055(n+1)`
-/

namespace A296119.P931506946366506179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052057 (A316784 (n + 1)).toNat + A001055 (n + 1)

end

end A296119.P931506946366506179

/-! ## A296119.P7441160543895567912

`A195017(2^A383311(n+1))`
-/

namespace A296119.P7441160543895567912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A383311 (n + 1) : ℤ))).toNat

end

end A296119.P7441160543895567912

/-! ## A296119.P5320910699829769971

`and(A117060(n+1), A383311(n+1))`
-/

namespace A296119.P5320910699829769971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A117060 (n + 1)) (A383311 (n + 1))

end

end A296119.P5320910699829769971

/-! ## A296119.P6697571429728478169

`and(A145038(n+1), A383311(n+1))`
-/

namespace A296119.P6697571429728478169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A145038 (n + 1)) (A383311 (n + 1))

end

end A296119.P6697571429728478169

/-!
# A296120: Number of ways to choose a strict factorization of each factor in a strict factorization of n.

The programs for A296120, there is no canonical definition to state claims against.
-/

/-! ## A296120.P4594954945061471981

`A050345(n+1)-val(A049419(n+1)+2, 6)`
-/

namespace A296120.P4594954945061471981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (n + 1) - (SequenceMachineLib.valuation (A049419 (n + 1) + 2).toNat 6 : ℤ)

end

end A296120.P4594954945061471981

/-! ## A296120.P3486325359430126123

`A050345(n+1)+ceil(sin(A046951(n+1)))-1`
-/

namespace A296120.P3486325359430126123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (n + 1) + (⌈Real.sin (A046951 (n + 1) : ℝ)⌉ - 1)

end

end A296120.P3486325359430126123

/-! ## A296120.P16133035790136762200

`A050345(n+1)-A035439(A000688(n+1))`
-/

namespace A296120.P16133035790136762200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (n + 1) - A035439 (A000688 (n + 1)).toNat

end

end A296120.P16133035790136762200

/-! ## A296120.P14398641105672526480

`A050345(n+1)-A000332(A046951(n+1))`
-/

namespace A296120.P14398641105672526480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (n + 1) - A000332 (A046951 (n + 1)).toNat

end

end A296120.P14398641105672526480

/-! ## A296120.P4916550197155589603

`A050345(n+1)-A028422(A049419(n+1))`
-/

namespace A296120.P4916550197155589603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (n + 1) - A028422 (A049419 (n + 1)).toNat

end

end A296120.P4916550197155589603

/-! ## A296120.P4032462256089119268

`A050345(n+1)-A088434(A000188(n+1))`
-/

namespace A296120.P4032462256089119268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (n + 1) - A088434 (A000188 (n + 1)).toNat

end

end A296120.P4032462256089119268

/-! ## A296120.P7122122188290147803

`A050345(n+1)-A122180(A008833(n+1))`
-/

namespace A296120.P7122122188290147803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (n + 1) - A122180 (A008833 (n + 1)).toNat

end

end A296120.P7122122188290147803

/-! ## A296120.P17101570073827030375

`A050345(n+1)-A025918(A252665(n+1))`
-/

namespace A296120.P17101570073827030375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (n + 1) - A025918 (A252665 (n + 1)).toNat

end

end A296120.P17101570073827030375

/-! ## A296120.P15540501522187985228

`A050345(n+1)+A383311(n+1)-A296119(n+1)`
-/

namespace A296120.P15540501522187985228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (n + 1) + (A383311 (n + 1) - A296119 (n + 1))

end

end A296120.P15540501522187985228

/-!
# A296121: Number of twice-factorizations of n with no repeated factorizations.

The programs for A296121, there is no canonical definition to state claims against.
-/

/-! ## A296121.P2899707224795937448

`A383310(n+1)+A303338(A347437(n+1))`
-/

namespace A296121.P2899707224795937448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383310 (n + 1) + A303338 (A347437 (n + 1)).toNat

end

end A296121.P2899707224795937448

/-! ## A296121.P8772368061693055348

`A048766(A050356(n+1)*A067824(n+1))`
-/

namespace A296121.P8772368061693055348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A050356 (n + 1) * A067824 (n + 1)).toNat

end

end A296121.P8772368061693055348

/-! ## A296121.P670008601125609951

`A335460(A112624(n+1))+A296118(n+1)`
-/

namespace A296121.P670008601125609951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (A112624 (n + 1)).toNat + A296118 (n + 1)

end

end A296121.P670008601125609951

/-! ## A296121.P4640089424463818670

`A167688(A045967(n+1))+A162510(n+1)`
-/

namespace A296121.P4640089424463818670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167688 (A045967 (n + 1)).toNat + A162510 (n + 1)

end

end A296121.P4640089424463818670

/-! ## A296121.P2968440664716905128

`A292589(n+1)+A167688(A045967(n+1))`
-/

namespace A296121.P2968440664716905128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292589 (n + 1) + A167688 (A045967 (n + 1)).toNat

end

end A296121.P2968440664716905128

/-!
# A296122: Number of twice-partitions of n with no repeated partitions.

The programs for A296122, there is no canonical definition to state claims against.
-/

/-! ## A296122.P5437997396463028263

`A296121(2^n)`
-/

namespace A296122.P5437997396463028263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296121 (2 ^ n)

end

end A296122.P5437997396463028263

/-! ## A296122.P1626623267943096248

`A296121(A000079(n))+char[10]`
-/

namespace A296122.P1626623267943096248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296121 (A000079 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A296122.P1626623267943096248

/-! ## A296122.P8395792192534332921

`A326636(n)+A296121(A000079(n))`
-/

namespace A296122.P8395792192534332921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326636 n + A296121 (A000079 n).toNat

end

end A296122.P8395792192534332921

/-! ## A296122.P18005938861200239711

`A326686(n)+A296121(A000079(n))`
-/

namespace A296122.P18005938861200239711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326686 n + A296121 (A000079 n).toNat

end

end A296122.P18005938861200239711

/-! ## A296122.P16592903241408997798

`A133687(n)*A296121(A000079(n))`
-/

namespace A296122.P16592903241408997798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133687 n * A296121 (A000079 n).toNat

end

end A296122.P16592903241408997798

/-!
# A296123: Number of n X n 0..1 arrays with each 1 adjacent to 2 or 5 king-move neighboring 1's.

The programs for A296123, there is no canonical definition to state claims against.
-/

/-! ## A296123.P17068574375886876741

`A296128(∑[4*n]+1)`
-/

namespace A296123.P17068574375886876741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296123.P17068574375886876741

/-! ## A296123.P8393681498227013420

`record[root(A296128(n+1), A059674(n))]`
-/

namespace A296123.P8393681498227013420
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A296128 (n + 1) : ℝ) ^ (1 / (A059674 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296123.P8393681498227013420

/-! ## A296123.P10813011077193328650

`record[gcd(A114327(n), A296128(n+1))]`
-/

namespace A296123.P10813011077193328650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A296128 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296123.P10813011077193328650

/-! ## A296123.P10016559918500542134

`record[A077606(n+1)*A296128(n+1)]`
-/

namespace A296123.P10016559918500542134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A296128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296123.P10016559918500542134

/-! ## A296123.P11130412161320890511

`record[A203994(n+1)*A296128(n+1)]`
-/

namespace A296123.P11130412161320890511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A296128 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296123.P11130412161320890511

/-!
# A296124: Number of n X 4 0..1 arrays with each 1 adjacent to 2 or 5 king-move neighboring 1s.

The programs for A296124, the canonical program `A296124.P10703375176685138026` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296124 has offset 1).

The definition of A296124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296124.P10703375176685138026

`ogf((1+10x-10x^2-34x^3-12x^4+4x^5+2x^6-x^8)/(1-3x-x^2-5x^3+18x^4+14x^5-3x^6-x^7-x^8+x^9))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A296124

/-- `ogf((1+10x-10x^2-34x^3-12x^4+4x^5+2x^6-x^8)/(1-3x-x^2-5x^3+18x^4+14x^5-3x^6-x^7-x^8+x^9))` -/
def P10703375176685138026.Spec : Prop :=
  ∀ n, P10703375176685138026.a n = A296124 (n + 1)

theorem P10703375176685138026.correct : P10703375176685138026.Spec := by
  intro n
  simp only [A296124, Nat.add_sub_cancel]

end A296124

/-! ## A296124.P10692606909765633396

`A296128(∑[n+3]+7)`
-/

namespace A296124.P10692606909765633396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A296124.P10692606909765633396

namespace A296124

/-- `A296128(∑[n+3]+7)` -/
def P10692606909765633396.Spec : Prop :=
  ∀ n, P10692606909765633396.a n = A296124 (n + 1)

end A296124

/-! ## A296124.P8167310565985926133

`xor(1, xor(1, A296128(A055998(n+2))))`
-/

namespace A296124.P8167310565985926133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A296128 (A055998 (n + 2)).toNat))

end

end A296124.P8167310565985926133

namespace A296124

/-- `xor(1, xor(1, A296128(A055998(n+2))))` -/
def P8167310565985926133.Spec : Prop :=
  ∀ n, P8167310565985926133.a n = A296124 (n + 1)

end A296124

/-! ## A296124.P5880277398431658375

`A296128(A155212(n)+5)+A000007(n+1)`
-/

namespace A296124.P5880277398431658375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (A155212 n + 5).toNat + A000007 (n + 1)

end

end A296124.P5880277398431658375

namespace A296124

/-- `A296128(A155212(n)+5)+A000007(n+1)` -/
def P5880277398431658375.Spec : Prop :=
  ∀ n, P5880277398431658375.a n = A296124 (n + 1)

end A296124

/-! ## A296124.P16198841735087892331

`A296128(A055998(n+2))%A083564(n+1)`
-/

namespace A296124.P16198841735087892331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296128 (A055998 (n + 2)).toNat) (A083564 (n + 1))

end

end A296124.P16198841735087892331

namespace A296124

/-- `A296128(A055998(n+2))%A083564(n+1)` -/
def P16198841735087892331.Spec : Prop :=
  ∀ n, P16198841735087892331.a n = A296124 (n + 1)

end A296124

/-!
# A296125: Number of nX5 0..1 arrays with each 1 adjacent to 2 or 5 king-move neighboring 1s.

The programs for A296125, there is no canonical definition to state claims against.
-/

/-! ## A296125.P15357061941165456478

`A296128(A167499(n+3))`
-/

namespace A296125.P15357061941165456478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (A167499 (n + 3)).toNat

end

end A296125.P15357061941165456478

/-! ## A296125.P13773482633366524772

`A296128(A034856(n+3)+7)`
-/

namespace A296125.P13773482633366524772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (A034856 (n + 3) + 7).toNat

end

end A296125.P13773482633366524772

/-! ## A296125.P15629788625678031749

`A296128(A046691(n+2)+9)`
-/

namespace A296125.P15629788625678031749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (A046691 (n + 2) + 9).toNat

end

end A296125.P15629788625678031749

/-! ## A296125.P5737178139844694389

`A296128(A055999(n+3)-2*n)`
-/

namespace A296125.P5737178139844694389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (A055999 (n + 3) - (2 * n : ℤ)).toNat

end

end A296125.P5737178139844694389

/-! ## A296125.P4841775915621144929

`A296128(A167614(n+2)+n+6)`
-/

namespace A296125.P4841775915621144929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (A167614 (n + 2) + (n + 6 : ℤ)).toNat

end

end A296125.P4841775915621144929

/-!
# A296126: Number of nX6 0..1 arrays with each 1 adjacent to 2 or 5 king-move neighboring 1s.

The programs for A296126, there is no canonical definition to state claims against.
-/

/-! ## A296126.P8139844846311210887

`A296128(A000217(n+5)+6)`
-/

namespace A296126.P8139844846311210887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (A000217 (n + 5) + 6).toNat

end

end A296126.P8139844846311210887

/-! ## A296126.P7679032924942782757

`A296128(A141214(n+2)+9)`
-/

namespace A296126.P7679032924942782757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (A141214 (n + 2) + 9).toNat

end

end A296126.P7679032924942782757

/-! ## A296126.P10570458150404810707

`A296128(A046691(n+3)+10)`
-/

namespace A296126.P10570458150404810707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (A046691 (n + 3) + 10).toNat

end

end A296126.P10570458150404810707

/-! ## A296126.P12473017886772313626

`A296128(Δ[A023545(n+1)]+10)`
-/

namespace A296126.P12473017886772313626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (f1 (n + 1) - f1 n + 10).toNat

end

end A296126.P12473017886772313626

/-! ## A296126.P3083161881431330735

`A296128(A000096(n+5)-(n-1))`
-/

namespace A296126.P3083161881431330735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (A000096 (n + 5) - ((n : ℤ) - 1)).toNat

end

end A296126.P3083161881431330735

/-!
# A296127: Number of nX7 0..1 arrays with each 1 adjacent to 2 or 5 king-move neighboring 1s.

The programs for A296127, there is no canonical definition to state claims against.
-/

/-! ## A296127.P4167143817190005457

`A296128(A000096(n+5)+8)`
-/

namespace A296127.P4167143817190005457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (A000096 (n + 5) + 8).toNat

end

end A296127.P4167143817190005457

/-! ## A296127.P16728576906731428981

`A296128(A000217(n+6)+7)`
-/

namespace A296127.P16728576906731428981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (A000217 (n + 6) + 7).toNat

end

end A296127.P16728576906731428981

/-! ## A296127.P13357304849336788674

`A296128(A055998(n+6)-A005408(n+2))`
-/

namespace A296127.P13357304849336788674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (A055998 (n + 6) - A005408 (n + 2)).toNat

end

end A296127.P13357304849336788674

/-! ## A296127.P15976305096076589570

`A296128(A374008(n+1))`
-/

namespace A296127.P15976305096076589570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (A374008 (n + 1)).toNat

end

end A296127.P15976305096076589570

/-! ## A296127.P17027688215698518370

`A296128(A055999(n+4))`
-/

namespace A296127.P17027688215698518370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296128 (A055999 (n + 4)).toNat

end

end A296127.P17027688215698518370

/-!
# A296128: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 2 or 5 king-move neighboring 1s.

The programs for A296128, there is no canonical definition to state claims against.
-/

/-! ## A296128.P17621117292460555715

`or(A183450(n+1), A341980(A101515(n)))`
-/

namespace A296128.P17621117292460555715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A183450 (n + 1)) (A341980 ((A101515 n).toNat + 78))

end

end A296128.P17621117292460555715

/-! ## A296128.P16029038422826891216

`or(A040001(A183450(n+1)²), A183450(n+1))`
-/

namespace A296128.P16029038422826891216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A040001 (A183450 (n + 1) ^ 2).toNat) (A183450 (n + 1))

end

end A296128.P16029038422826891216

/-! ## A296128.P8080292387674458973

`or(A134451(A183450(n+1)²), A183450(n+1))`
-/

namespace A296128.P8080292387674458973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A134451 (A183450 (n + 1) ^ 2).toNat) (A183450 (n + 1))

end

end A296128.P8080292387674458973

/-! ## A296128.P13263267017736388240

`A183450(n+1)+A000038(A274068(n+1))`
-/

namespace A296128.P13263267017736388240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183450 (n + 1) + A000038 (A274068 (n + 1)).toNat

end

end A296128.P13263267017736388240

/-! ## A296128.P2601589283570516179

`A222228(A183450(n+1))%A000203(A048625(n))`
-/

namespace A296128.P2601589283570516179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222228 (A183450 (n + 1)).toNat) (A000203 (A048625 n).toNat)

end

end A296128.P2601589283570516179

/-!
# A296129: Array read by antidiagonals: the number of directed elements with area n on the lattice T_{2k+1}.

The programs for A296129, there is no canonical definition to state claims against.
-/

/-! ## A296129.P9663701951842438168

`A155971(A071786(n+1))-A243148(n)`
-/

namespace A296129.P9663701951842438168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155971 (A071786 (n + 1)).toNat - A243148 n

end

end A296129.P9663701951842438168

/-! ## A296129.P14698620323552374019

`A053585(A263382(n+1))%A140303(n)`
-/

namespace A296129.P14698620323552374019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053585 (A263382 (n + 1)).toNat) (A140303 n)

end

end A296129.P14698620323552374019

/-!
# A296130: Replace each digit of n with its complement to 9; this will reproduce all digits of n in a different order.

The programs for A296130, there is no canonical definition to state claims against.
-/

/-! ## A296130.P3308505114957825642

`∩[A144777(n+1), A262277(n+1)]`
-/

namespace A296130.P3308505114957825642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296130.P3308505114957825642

/-! ## A296130.P3920741004229509115

`lt[A061601(A052008(n)), 1]`
-/

namespace A296130.P3920741004229509115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A052008 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A296130.P3920741004229509115

/-! ## A296130.P3751723814870671657

`eq[A004185(n), A004185(A061601(n))]`
-/

namespace A296130.P3751723814870671657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296130.P3751723814870671657

/-! ## A296130.P15432156970474008466

`eq[A045512(n), A045512(A061601(n))]`
-/

namespace A296130.P15432156970474008466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296130.P15432156970474008466

/-! ## A296130.P7730235609877673593

`eq[A055014(n), A055014(A061601(n))]`
-/

namespace A296130.P7730235609877673593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055014 (A061601 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296130.P7730235609877673593

/-! ## A296130.P17776182627028529597

`eq[A061601(A070196(n)), A108782(n)]`
-/

namespace A296130.P17776182627028529597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A070196 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296130.P17776182627028529597

/-!
# A296131: Number of twice-factorizations of n where the first factorization is strict and the latter factorizations are constant, i.e., type (P,Q,R).

The programs for A296131, there is no canonical definition to state claims against.
-/

/-! ## A296131.P1290541509612179098

`A126792(xor(2, A122978(n+1)))`
-/

namespace A296131.P1290541509612179098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126792 (Int.xor 2 (A122978 (n + 1))).toNat

end

end A296131.P1290541509612179098

/-! ## A296131.P5864590999538278400

`A318995(A033273(n+1))+A001222(5^A318559(n+1))`
-/

namespace A296131.P5864590999538278400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (A033273 (n + 1)).toNat + A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A318559 (n + 1) : ℤ))).toNat

end

end A296131.P5864590999538278400

/-! ## A296131.P13630442255574811170

`A343652((n+1)/∏{p}[n+1, #^val(n+1, #²)]*(n+1)/∏{p}[n+1, #])`
-/

namespace A296131.P13630442255574811170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343652 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)))).toNat

end

end A296131.P13630442255574811170

/-! ## A296131.P13637843915696042978

`A173524(A069626(n+1))`
-/

namespace A296131.P13637843915696042978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173524 (A069626 (n + 1)).toNat

end

end A296131.P13637843915696042978

/-! ## A296131.P1907339298234413847

`A106288(A330773(n))`
-/

namespace A296131.P1907339298234413847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106288 (A330773 n).toNat

end

end A296131.P1907339298234413847

/-!
# A296132: Number of twice-factorizations of n where the first factorization is constant and the latter factorizations are strict, i.e., type (P,R,Q).

The programs for A296132, there is no canonical definition to state claims against.
-/

/-! ## A296132.P10270594524411074846

`2*A320888(n+1)-A319269(n+1)`
-/

namespace A296132.P10270594524411074846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320888 (n + 1) - A319269 (n + 1)

end

end A296132.P10270594524411074846

/-! ## A296132.P14986865173221626795

`A320888(n+1)+A070101(Δ[A006218(n)])`
-/

namespace A296132.P14986865173221626795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320888 (n + 1) + A070101 (f1 (n + 1) - f1 n).toNat

end

end A296132.P14986865173221626795

/-! ## A296132.P17702189030851952815

`A320888(n+1)+A070101(Δ[A054519(n)])`
-/

namespace A296132.P17702189030851952815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320888 (n + 1) + A070101 (f1 (n + 1) - f1 n).toNat

end

end A296132.P17702189030851952815

/-! ## A296132.P2963496469813548311

`A320888(n+1)+A026825(A000688(n+1))`
-/

namespace A296132.P2963496469813548311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320888 (n + 1) + A026825 (A000688 (n + 1)).toNat

end

end A296132.P2963496469813548311

/-! ## A296132.P14897009210497003444

`A320888(n+1)+A025436(A048105(n+1))`
-/

namespace A296132.P14897009210497003444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320888 (n + 1) + A025436 (A048105 (n + 1)).toNat

end

end A296132.P14897009210497003444

/-! ## A296132.P16771160516856175347

`A320888(n+1)+A011765(A069739(n+1))`
-/

namespace A296132.P16771160516856175347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320888 (n + 1) + A011765 (A069739 (n + 1)).toNat

end

end A296132.P16771160516856175347

/-! ## A296132.P8533342659619004474

`A320888(n+1)+A037910(A096737(n+1))`
-/

namespace A296132.P8533342659619004474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320888 (n + 1) + A037910 (A096737 (n + 1)).toNat

end

end A296132.P8533342659619004474

/-! ## A296132.P11663524369715674074

`A320888(n+1)+A084114(A056926(n+1))`
-/

namespace A296132.P11663524369715674074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320888 (n + 1) + A084114 (A056926 (n + 1)).toNat

end

end A296132.P11663524369715674074

/-! ## A296132.P9566553691711599719

`A320888(n+1)+A000579(A163109(n+1))`
-/

namespace A296132.P9566553691711599719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320888 (n + 1) + A000579 (A163109 (n + 1)).toNat

end

end A296132.P9566553691711599719

/-! ## A296132.P10838811660747899738

`A320888(n+1)+A005369(A163378(n+1))`
-/

namespace A296132.P10838811660747899738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320888 (n + 1) + A005369 (A163378 (n + 1)).toNat

end

end A296132.P10838811660747899738

/-!
# A296133: Number of twice-factorizations of n of type (Q,R,Q).

The programs for A296133, there is no canonical definition to state claims against.
-/

/-! ## A296133.P8874963188543480443

`A320888(n+1)+1-A089723(n+1)`
-/

namespace A296133.P8874963188543480443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320888 (n + 1) + (1 - A089723 (n + 1))

end

end A296133.P8874963188543480443

/-! ## A296133.P1427720543347477991

`2*A320889(n+1)-A045778(n+1)`
-/

namespace A296133.P1427720543347477991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320889 (n + 1) - A045778 (n + 1)

end

end A296133.P1427720543347477991

/-! ## A296133.P6424057558861406296

`or(gcd(2, A318357(n+1)), A045778(n+1))`
-/

namespace A296133.P6424057558861406296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.gcd 2 (A318357 (n + 1)) : ℤ) (A045778 (n + 1))

end

end A296133.P6424057558861406296

/-! ## A296133.P1754376776390073563

`or(and(2, A347438(n+1)), A045778(n+1))`
-/

namespace A296133.P1754376776390073563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land 2 (A347438 (n + 1))) (A045778 (n + 1))

end

end A296133.P1754376776390073563

/-! ## A296133.P9477145484346354054

`A320889(n+1)+char[A147587(2*(n+1))]`
-/

namespace A296133.P9477145484346354054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147587 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320889 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A296133.P9477145484346354054

/-! ## A296133.P16215734242271826971

`or(A045778(n+1), A160498(∏{e}[n+1, #+1]))`
-/

namespace A296133.P16215734242271826971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045778 (n + 1)) (A160498 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)))

end

end A296133.P16215734242271826971

/-! ## A296133.P9340183148493545039

`or(A045778(n+1), A350462(∑{e}[n+1, #-val(#!, 2)]))`
-/

namespace A296133.P9340183148493545039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A045778 (n + 1)) (A350462 (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f1 n) p)) 2 : ℤ))).toNat)

end

end A296133.P9340183148493545039

/-! ## A296133.P9976553183803099480

`A294787(A325765(n))+A088434(n+1)`
-/

namespace A296133.P9976553183803099480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294787 (A325765 n).toNat + A088434 (n + 1)

end

end A296133.P9976553183803099480

/-! ## A296133.P14329591345844454830

`A320889(n+1)+A088434(A325765(n))`
-/

namespace A296133.P14329591345844454830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320889 (n + 1) + A088434 (A325765 n).toNat

end

end A296133.P14329591345844454830

/-! ## A296133.P16071004086308385862

`A088434(n+1)+A001511(A163378(n+1))`
-/

namespace A296133.P16071004086308385862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (n + 1) + A001511 (A163378 (n + 1)).toNat

end

end A296133.P16071004086308385862

/-!
# A296134: Number of twice-factorizations of n of type (R,Q,R).

The programs for A296134, there is no canonical definition to state claims against.
-/

/-! ## A296134.P16609441466200527484

`A047966(or(char[n!-1], A052409(n+1)))`
-/

namespace A296134.P16609441466200527484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A052409 (n + 1))).toNat

end

end A296134.P16609441466200527484

/-! ## A296134.P13012935217132897142

`A047966((A052409(n+1)+n)%(n+1)+1)`
-/

namespace A296134.P13012935217132897142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (Int.tmod (A052409 (n + 1) + (n : ℤ)) (n + 1 : ℤ) + 1).toNat

end

end A296134.P13012935217132897142

/-! ## A296134.P1367102404147997890

`A047966(A052409(n+1)^A052409(A175067(n+1)))`
-/

namespace A296134.P1367102404147997890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (SequenceMachineLib.roundAway ((A052409 (n + 1) : ℚ) ^ (A052409 (A175067 (n + 1)).toNat : ℤ))).toNat

end

end A296134.P1367102404147997890

/-! ## A296134.P9476834081736276068

`A047966(gcd(A002182(n+1), A052409(n+1)))`
-/

namespace A296134.P9476834081736276068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (Int.gcd (A002182 (n + 1)) (A052409 (n + 1)))

end

end A296134.P9476834081736276068

/-! ## A296134.P16686066450185645843

`A047966(A052409(n+1)+A008683(A001597(n+1)))`
-/

namespace A296134.P16686066450185645843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (A052409 (n + 1) + A008683 (A001597 (n + 1)).toNat).toNat

end

end A296134.P16686066450185645843

/-! ## A296134.P16922601177957423636

`A047966(A052409(n+1)^A052409(n²+1))`
-/

namespace A296134.P16922601177957423636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (SequenceMachineLib.roundAway ((A052409 (n + 1) : ℚ) ^ (A052409 (n ^ 2 + 1) : ℤ))).toNat

end

end A296134.P16922601177957423636

/-! ## A296134.P7818587572728531727

`A047966(A052409(n+1)-A052409(n²+1)+1)`
-/

namespace A296134.P7818587572728531727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (A052409 (n + 1) - A052409 (n ^ 2 + 1) + 1).toNat

end

end A296134.P7818587572728531727

/-! ## A296134.P2059274915751641804

`A047966(A052409(n+1)+A008683((n+1)²))`
-/

namespace A296134.P2059274915751641804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047966 (A052409 (n + 1) + A008683 ((n + 1) ^ 2)).toNat

end

end A296134.P2059274915751641804

/-! ## A296134.P18376043574679402251

`A000005(A099558(A295924(n+1)))`
-/

namespace A296134.P18376043574679402251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A099558 (A295924 (n + 1)).toNat).toNat

end

end A296134.P18376043574679402251

/-! ## A296134.P14606808793345662814

`A323086(A295924(n+1)²)`
-/

namespace A296134.P14606808793345662814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323086 (A295924 (n + 1) ^ 2).toNat

end

end A296134.P14606808793345662814

/-!
# A296135: {0->01}-transform of the Fibonacci word A003849.

The programs for A296135, the canonical program `A296135.P15040750020739622778` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296135 has offset 0).

The definition of A296135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296135.P11965159443814984464

`Δ[floor((n+2)/ϕ)]`
-/

namespace A296135.P11965159443814984464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A296135.P11965159443814984464

namespace A296135

/-- `Δ[floor((n+2)/ϕ)]` -/
def P11965159443814984464.Spec : Prop :=
  ∀ n, P11965159443814984464.a n = A296135 n

end A296135

/-! ## A296135.P10122072499395816832

`dr(Δ[ceil((n+2)/ϕ)])`
-/

namespace A296135.P10122072499395816832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 2 : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (f1 (n + 1) - f1 n)

end

end A296135.P10122072499395816832

namespace A296135

/-- `dr(Δ[ceil((n+2)/ϕ)])` -/
def P10122072499395816832.Spec : Prop :=
  ∀ n, (P10122072499395816832.a n : ℤ) = A296135 n

end A296135

/-! ## A296135.P12175671673188914180

`3%Δ[floor(ϕ*(n+2))]`
-/

namespace A296135.P12175671673188914180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f1 (n + 1) - f1 n)

end

end A296135.P12175671673188914180

namespace A296135

/-- `3%Δ[floor(ϕ*(n+2))]` -/
def P12175671673188914180.Spec : Prop :=
  ∀ n, P12175671673188914180.a n = A296135 n

end A296135

/-! ## A296135.P5753138400486196204

`val(Δ[floor(ϕ*(n+2))], 2)`
-/

namespace A296135.P5753138400486196204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A296135.P5753138400486196204

namespace A296135

/-- `val(Δ[floor(ϕ*(n+2))], 2)` -/
def P5753138400486196204.Spec : Prop :=
  ∀ n, (P5753138400486196204.a n : ℤ) = A296135 n

end A296135

/-! ## A296135.P15559494743583868026

`C(Δ[floor(ϕ*(n+2))], 2)`
-/

namespace A296135.P15559494743583868026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A296135.P15559494743583868026

namespace A296135

/-- `C(Δ[floor(ϕ*(n+2))], 2)` -/
def P15559494743583868026.Spec : Prop :=
  ∀ n, (P15559494743583868026.a n : ℤ) = A296135 n

end A296135

/-! ## A296135.P10121944609857015655

`Δ[floor(ϕ*(n+2))]!-1`
-/

namespace A296135.P10121944609857015655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (f1 (n + 1) - f1 n).toNat : ℤ) - 1

end

end A296135.P10121944609857015655

namespace A296135

/-- `Δ[floor(ϕ*(n+2))]!-1` -/
def P10121944609857015655.Spec : Prop :=
  ∀ n, P10121944609857015655.a n = A296135 n

end A296135

/-! ## A296135.P13217768088266602736

`and(1, Δ[floor((n+2)*ϕ²)])`
-/

namespace A296135.P13217768088266602736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℝ) * Real.goldenRatio ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (f1 (n + 1) - f1 n)

end

end A296135.P13217768088266602736

namespace A296135

/-- `and(1, Δ[floor((n+2)*ϕ²)])` -/
def P13217768088266602736.Spec : Prop :=
  ∀ n, P13217768088266602736.a n = A296135 n

end A296135

/-! ## A296135.P11308620479183439649

`gcd(2, Δ[floor(ϕ*(n+2))])-1`
-/

namespace A296135.P11308620479183439649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (f1 (n + 1) - f1 n) : ℤ) - 1

end

end A296135.P11308620479183439649

namespace A296135

/-- `gcd(2, Δ[floor(ϕ*(n+2))])-1` -/
def P11308620479183439649.Spec : Prop :=
  ∀ n, P11308620479183439649.a n = A296135 n

end A296135

/-! ## A296135.P10098827869886649771

`1-and(1, Δ[floor(ϕ*(n+2))])`
-/

namespace A296135.P10098827869886649771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 1 (f1 (n + 1) - f1 n)

end

end A296135.P10098827869886649771

namespace A296135

/-- `1-and(1, Δ[floor(ϕ*(n+2))])` -/
def P10098827869886649771.Spec : Prop :=
  ∀ n, P10098827869886649771.a n = A296135 n

end A296135

/-! ## A296135.P13411927417530312052

`a(floor(n/ϕ-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A296135.P13411927417530312052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(n : ℝ) / Real.goldenRatio - (a (n - 2) : ℝ)⌋.toNat

end

end A296135.P13411927417530312052

namespace A296135

/-- `a(floor(n/ϕ-a(n-2)))` -/
def P13411927417530312052.Spec : Prop :=
  ∀ n, (P13411927417530312052.a n : ℤ) = A296135 n

end A296135

/-! ## A296135.P15040750020739622778

`Δ[n-(a(a(n-1))+1)]²` with `a(0)=0`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A296135

/-- `Δ[n-(a(a(n-1))+1)]²` -/
def P15040750020739622778.Spec : Prop :=
  ∀ n, P15040750020739622778.a n = A296135 n

theorem P15040750020739622778.correct : P15040750020739622778.Spec := by
  intro n
  simp only [A296135]

end A296135

/-! ## A296135.P14298361121310965445

`Δ[n-1-a(a(n-1))]²` with `a(0)=0`
-/

namespace A296135.P14298361121310965445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - 1 - f1 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A296135.P14298361121310965445

namespace A296135

/-- `Δ[n-1-a(a(n-1))]²` -/
def P14298361121310965445.Spec : Prop :=
  ∀ n, P14298361121310965445.a n = A296135 n

theorem P14298361121310965445.correct : P14298361121310965445.Spec := by
  intro n
  simp only [A296135, Nat.add_sub_cancel, A296135.P14298361121310965445.f1, A296135.P14298361121310965445.a, A296135.P15040750020739622778.f1, A296135.P15040750020739622778.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A296135

/-! ## A296135.P14198050215646347734

`log2(A059426(n))`
-/

namespace A296135.P14198050215646347734
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059426 n : ℝ)

end

end A296135.P14198050215646347734

namespace A296135

/-- `log2(A059426(n))` -/
def P14198050215646347734.Spec : Prop :=
  ∀ n, P14198050215646347734.a n = (A296135 n : ℝ)

end A296135

/-! ## A296135.P10857845652444701516

`A005614(n+1)`
-/

namespace A296135.P10857845652444701516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (n + 1)

end

end A296135.P10857845652444701516

namespace A296135

/-- `A005614(n+1)` -/
def P10857845652444701516.Spec : Prop :=
  ∀ n, P10857845652444701516.a n = A296135 n

end A296135

/-! ## A296135.P18060056833945502010

`A096270(n+2)`
-/

namespace A296135.P18060056833945502010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (n + 2)

end

end A296135.P18060056833945502010

namespace A296135

/-- `A096270(n+2)` -/
def P18060056833945502010.Spec : Prop :=
  ∀ n, P18060056833945502010.a n = A296135 n

end A296135

/-! ## A296135.P2960364386621682905

`floor(sqrt(A159917(n)))`
-/

namespace A296135.P2960364386621682905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A159917 n)

end

end A296135.P2960364386621682905

namespace A296135

/-- `floor(sqrt(A159917(n)))` -/
def P2960364386621682905.Spec : Prop :=
  ∀ n, P2960364386621682905.a n = A296135 n

end A296135

/-! ## A296135.P16088243460718382513

`log2(A014675(n+1))`
-/

namespace A296135.P16088243460718382513
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A014675 (n + 1) : ℝ)

end

end A296135.P16088243460718382513

namespace A296135

/-- `log2(A014675(n+1))` -/
def P16088243460718382513.Spec : Prop :=
  ∀ n, P16088243460718382513.a n = (A296135 n : ℝ)

end A296135

/-! ## A296135.P3949618800869478457

`char[A026273(n+1)]`
-/

namespace A296135.P3949618800869478457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296135.P3949618800869478457

namespace A296135

/-- `char[A026273(n+1)]` -/
def P3949618800869478457.Spec : Prop :=
  ∀ n, (P3949618800869478457.a n : ℤ) = A296135 n

end A296135

/-! ## A296135.P11790036290464833886

`char[A058065(n)+1]`
-/

namespace A296135.P11790036290464833886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296135.P11790036290464833886

namespace A296135

/-- `char[A058065(n)+1]` -/
def P11790036290464833886.Spec : Prop :=
  ∀ n, (P11790036290464833886.a n : ℤ) = A296135 n

end A296135

/-! ## A296135.P17005931977926475750

`1-A003849(n+1)`
-/

namespace A296135.P17005931977926475750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A003849 (n + 1)

end

end A296135.P17005931977926475750

namespace A296135

/-- `1-A003849(n+1)` -/
def P17005931977926475750.Spec : Prop :=
  ∀ n, P17005931977926475750.a n = A296135 n

end A296135

/-!
# A296136: Smallest positive integer equal to the difference between two monic polynomials of degree n with integer zeros.

The programs for A296136, there is no canonical definition to state claims against.
-/

/-! ## A296136.P794829658310306773

`n!*A124932(n!)`
-/

namespace A296136.P794829658310306773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A124932 (Nat.factorial n)

end

end A296136.P794829658310306773

/-!
# A296137: Smallest difference between the sums of n-th powers in an ideal solution to Prouhet-Tarry-Escott problem of size n.

The programs for A296137, there is no canonical definition to state claims against.
-/

/-! ## A296137.P2121924324172459150

`(n+1)*A296136(n+1)`
-/

namespace A296137.P2121924324172459150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A296136 (n + 1)

end

end A296137.P2121924324172459150

/-!
# A296139: a(n) is the number of positive integers m such that m = n^d_1 + n^d_2 + ... + n^d_k where d_k represents the k-th digit in the decimal expansion of m.

The programs for A296139, there is no canonical definition to state claims against.
-/

/-! ## A296139.P1026668643577349907

`A331843(A132741(∑[A156584(n)]))`
-/

namespace A296139.P1026668643577349907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331843 (A132741 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A296139.P1026668643577349907

/-! ## A296139.P7042641828809586450

`and(A245514(3*(n+1)), A245526(A245531(n+1)))`
-/

namespace A296139.P7042641828809586450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A245514 (3 * (n + 1))) (A245526 (A245531 (n + 1)).toNat)

end

end A296139.P7042641828809586450

/-! ## A296139.P2943354474096155476

`A026398(A329798(n+1)²)%3`
-/

namespace A296139.P2943354474096155476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026398 (A329798 (n + 1) ^ 2).toNat) 3

end

end A296139.P2943354474096155476

/-! ## A296139.P10765108414447778708

`A052344(2*A008574(A295681(n)))`
-/

namespace A296139.P10765108414447778708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (2 * A008574 (A295681 n).toNat).toNat

end

end A296139.P10765108414447778708

/-! ## A296139.P15810513201089315976

`A309142(A000118(n)*A131114(n))`
-/

namespace A296139.P15810513201089315976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309142 ((A000118 n * A131114 n).toNat + 10)

end

end A296139.P15810513201089315976

/-!
# A296141: Sum of the smaller parts of the partitions of n into two distinct parts with the larger part even.

The programs for A296141, the canonical program `A296141.P11880407141278316004` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296141 has offset 1).

The definition of A296141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296141.P18445388926408144765

`floor((floor((n+1)/4)-n/2)²)`
-/

namespace A296141.P18445388926408144765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((⌊(n + 1 : ℚ) / 4⌋ : ℚ) - (n : ℚ) / 2) ^ 2⌋

end

end A296141.P18445388926408144765

namespace A296141

/-- `floor((floor((n+1)/4)-n/2)²)` -/
def P18445388926408144765.Spec : Prop :=
  ∀ n, P18445388926408144765.a n = A296141 (n + 1)

end A296141

/-! ## A296141.P5672199422141476051

`ogf((x^2-x^3+x^4+x^5)/(1-x-2x^4+2x^5+x^8-x^9))`
-/

namespace A296141.P5672199422141476051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1, 1, 1] [1, -1, 0, 0, -2, 2, 0, 0, 1, -1] n

end

end A296141.P5672199422141476051

namespace A296141

/-- `ogf((x^2-x^3+x^4+x^5)/(1-x-2x^4+2x^5+x^8-x^9))` -/
def P5672199422141476051.Spec : Prop :=
  ∀ n, P5672199422141476051.a n = A296141 (n + 1)

end A296141

/-! ## A296141.P11880407141278316004

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=1, a(5)=2, a(6)=4, a(7)=2, a(8)=4`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A296141

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P11880407141278316004.Spec : Prop :=
  ∀ n, P11880407141278316004.a n = A296141 (n + 1)

theorem P11880407141278316004.correct : P11880407141278316004.Spec := by
  intro n
  simp only [A296141, Nat.add_sub_cancel]

end A296141

/-! ## A296141.P7764650161761440731

`A002620(A285869(n))`
-/

namespace A296141.P7764650161761440731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A285869 n).toNat

end

end A296141.P7764650161761440731

namespace A296141

/-- `A002620(A285869(n))` -/
def P7764650161761440731.Spec : Prop :=
  ∀ n, P7764650161761440731.a n = A296141 (n + 1)

end A296141

/-! ## A296141.P14705312690630170094

`A296159(A014681(n+1))`
-/

namespace A296141.P14705312690630170094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296159 (A014681 (n + 1)).toNat

end

end A296141.P14705312690630170094

namespace A296141

/-- `A296159(A014681(n+1))` -/
def P14705312690630170094.Spec : Prop :=
  ∀ n, P14705312690630170094.a n = A296141 (n + 1)

end A296141

/-! ## A296141.P13880216125897552054

`A296159(A103889(n+1))`
-/

namespace A296141.P13880216125897552054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296159 (A103889 (n + 1)).toNat

end

end A296141.P13880216125897552054

namespace A296141

/-- `A296159(A103889(n+1))` -/
def P13880216125897552054.Spec : Prop :=
  ∀ n, P13880216125897552054.a n = A296141 (n + 1)

end A296141

/-! ## A296141.P10837899373599805714

`A296159(A114112(n+1))`
-/

namespace A296141.P10837899373599805714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296159 (A114112 (n + 1)).toNat

end

end A296141.P10837899373599805714

namespace A296141

/-- `A296159(A114112(n+1))` -/
def P10837899373599805714.Spec : Prop :=
  ∀ n, P10837899373599805714.a n = A296141 (n + 1)

end A296141

/-! ## A296141.P15262715279872872686

`A129819(n)-A159915(n)`
-/

namespace A296141.P15262715279872872686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129819 n - A159915 n

end

end A296141.P15262715279872872686

namespace A296141

/-- `A129819(n)-A159915(n)` -/
def P15262715279872872686.Spec : Prop :=
  ∀ n, P15262715279872872686.a n = A296141 (n + 1)

end A296141

/-! ## A296141.P16500737952191918858

`A002620(n)-A296160(n+1)`
-/

namespace A296141.P16500737952191918858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - A296160 (n + 1)

end

end A296141.P16500737952191918858

namespace A296141

/-- `A002620(n)-A296160(n+1)` -/
def P16500737952191918858.Spec : Prop :=
  ∀ n, P16500737952191918858.a n = A296141 (n + 1)

end A296141

/-! ## A296141.P10585388078945741019

`A059169(n+1)*A110655(n)`
-/

namespace A296141.P10585388078945741019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1) * A110655 n

end

end A296141.P10585388078945741019

namespace A296141

/-- `A059169(n+1)*A110655(n)` -/
def P10585388078945741019.Spec : Prop :=
  ∀ n, P10585388078945741019.a n = A296141 (n + 1)

end A296141

/-! ## A296141.P7319260064142063821

`A308123(n+1)-A296805(n+1)`
-/

namespace A296141.P7319260064142063821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308123 (n + 1) - A296805 (n + 1)

end

end A296141.P7319260064142063821

namespace A296141

/-- `A308123(n+1)-A296805(n+1)` -/
def P7319260064142063821.Spec : Prop :=
  ∀ n, P7319260064142063821.a n = A296141 (n + 1)

end A296141

/-! ## A296141.P13385218890727621396

`(n-A057353(n))*A059169(n+1)`
-/

namespace A296141.P13385218890727621396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A057353 n) * A059169 (n + 1)

end

end A296141.P13385218890727621396

namespace A296141

/-- `(n-A057353(n))*A059169(n+1)` -/
def P13385218890727621396.Spec : Prop :=
  ∀ n, P13385218890727621396.a n = A296141 (n + 1)

end A296141

/-! ## A296141.P1641564763066095803

`n*A059169(n+1)-A272212(n)`
-/

namespace A296141.P1641564763066095803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A059169 (n + 1) - A272212 n

end

end A296141.P1641564763066095803

namespace A296141

/-- `n*A059169(n+1)-A272212(n)` -/
def P1641564763066095803.Spec : Prop :=
  ∀ n, P1641564763066095803.a n = A296141 (n + 1)

end A296141

/-! ## A296141.P15148082213785422409

`A308123(n+1)-2*A308160(n+1)`
-/

namespace A296141.P15148082213785422409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308123 (n + 1) - 2 * A308160 (n + 1)

end

end A296141.P15148082213785422409

namespace A296141

/-- `A308123(n+1)-2*A308160(n+1)` -/
def P15148082213785422409.Spec : Prop :=
  ∀ n, P15148082213785422409.a n = A296141 (n + 1)

end A296141

/-! ## A296141.P8482274419258175648

`A004526(A028242(n))*A110655(n)`
-/

namespace A296141.P8482274419258175648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028242 n).toNat * A110655 n

end

end A296141.P8482274419258175648

namespace A296141

/-- `A004526(A028242(n))*A110655(n)` -/
def P8482274419258175648.Spec : Prop :=
  ∀ n, P8482274419258175648.a n = A296141 (n + 1)

end A296141

/-! ## A296141.P7265063938288796250

`A059169(n+1)*A110654(A110654(n))`
-/

namespace A296141.P7265063938288796250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1) * A110654 (A110654 n).toNat

end

end A296141.P7265063938288796250

namespace A296141

/-- `A059169(n+1)*A110654(A110654(n))` -/
def P7265063938288796250.Spec : Prop :=
  ∀ n, P7265063938288796250.a n = A296141 (n + 1)

end A296141

/-! ## A296141.P16609279215895289939

`(A110655(n)-A000035(n))*A110655(n)`
-/

namespace A296141.P16609279215895289939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110655 n - A000035 n) * A110655 n

end

end A296141.P16609279215895289939

namespace A296141

/-- `(A110655(n)-A000035(n))*A110655(n)` -/
def P16609279215895289939.Spec : Prop :=
  ∀ n, P16609279215895289939.a n = A296141 (n + 1)

end A296141

/-! ## A296141.P10666602047474730189

`(A008619(n)-A008624(n))*A059169(n+1)`
-/

namespace A296141.P10666602047474730189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 n - A008624 n) * A059169 (n + 1)

end

end A296141.P10666602047474730189

namespace A296141

/-- `(A008619(n)-A008624(n))*A059169(n+1)` -/
def P10666602047474730189.Spec : Prop :=
  ∀ n, P10666602047474730189.a n = A296141 (n + 1)

end A296141

/-! ## A296141.P1944163645410756034

`(A059169(n+1)+A000035(n))*A059169(n+1)`
-/

namespace A296141.P1944163645410756034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059169 (n + 1) + A000035 n) * A059169 (n + 1)

end

end A296141.P1944163645410756034

namespace A296141

/-- `(A059169(n+1)+A000035(n))*A059169(n+1)` -/
def P1944163645410756034.Spec : Prop :=
  ∀ n, P1944163645410756034.a n = A296141 (n + 1)

end A296141

/-! ## A296141.P11151780471656211962

`(A285869(n)-A059169(n+1))*A059169(n+1)`
-/

namespace A296141.P11151780471656211962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A285869 n - A059169 (n + 1)) * A059169 (n + 1)

end

end A296141.P11151780471656211962

namespace A296141

/-- `(A285869(n)-A059169(n+1))*A059169(n+1)` -/
def P11151780471656211962.Spec : Prop :=
  ∀ n, P11151780471656211962.a n = A296141 (n + 1)

end A296141

/-!
# A296147: Number of shapes of grid-filling curves of order A001481(n) (on the square grid) with turns by +-90 degrees that are generated by folding morphisms.

The programs for A296147, there is no canonical definition to state claims against.
-/

/-! ## A296147.P13340749543914049964

`A296148(A001481(n+1))`
-/

namespace A296147.P13340749543914049964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296148 (A001481 (n + 1)).toNat

end

end A296147.P13340749543914049964

/-! ## A296147.P11852934752719155808

`A296148(eq[0, A070176(n)])`
-/

namespace A296147.P11852934752719155808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296147.P11852934752719155808

/-! ## A296147.P7953381290174267597

`A296148(lt[0, A000161(n)])`
-/

namespace A296147.P7953381290174267597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A296147.P7953381290174267597

/-! ## A296147.P4638269680826377253

`A296148(lt[0, A000925(n)])`
-/

namespace A296147.P4638269680826377253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A296147.P4638269680826377253

/-! ## A296147.P5734326293462443750

`A296148(lt[0, A004018(n)])`
-/

namespace A296147.P5734326293462443750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296148 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A296147.P5734326293462443750

/-!
# A296149: Number of shapes of grid-filling curves of order 4*n+1 (on the square grid) with turns by +-90 degrees that are generated by folding morphisms.

The programs for A296149, there is no canonical definition to state claims against.
-/

/-! ## A296149.P11921360924583015103

`A296148(4*n+5)`
-/

namespace A296149.P11921360924583015103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296148 (4 * n + 5)

end

end A296149.P11921360924583015103

/-!
# A296150: Triangle whose n-th row is the integer partition with Heinz number n.

The programs for A296150, there is no canonical definition to state claims against.
-/

/-! ## A296150.P2823971741430227012

`A055396(A285904(n+2))`
-/

namespace A296150.P2823971741430227012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A285904 (n + 2)).toNat

end

end A296150.P2823971741430227012

/-! ## A296150.P4300995418199711231

`A000720(A238689(n+2))`
-/

namespace A296150.P4300995418199711231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A238689 (n + 2)).toNat

end

end A296150.P4300995418199711231

/-! ## A296150.P2487015669242804203

`A055396(p?[A238689(n+1)])`
-/

namespace A296150.P2487015669242804203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A296150.P2487015669242804203

/-! ## A296150.P5922649105441696951

`A289508(p?[A238689(n+1)])`
-/

namespace A296150.P5922649105441696951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A296150.P5922649105441696951

/-! ## A296150.P9051165484810854749

`A230980(A238689(n+2)-1)+1`
-/

namespace A296150.P9051165484810854749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A238689 (n + 2) - 1).toNat + 1

end

end A296150.P9051165484810854749

/-! ## A296150.P16539555206406423537

`A289508(2*(n+1))*A289508(A238689(n+2))`
-/

namespace A296150.P16539555206406423537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (2 * (n + 1)) * A289508 (A238689 (n + 2)).toNat

end

end A296150.P16539555206406423537

/-! ## A296150.P8885946370311092780

`A289508(A238689(n+2)²)`
-/

namespace A296150.P8885946370311092780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A238689 (n + 2) ^ 2).toNat

end

end A296150.P8885946370311092780

/-! ## A296150.P5782016416797787821

`A056811(A238689(n+2)²)`
-/

namespace A296150.P5782016416797787821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A238689 (n + 2) ^ 2).toNat

end

end A296150.P5782016416797787821

/-! ## A296150.P1286787741971641422

`A056811((A238689(n+2)+1)*A238689(n+2)+1)`
-/

namespace A296150.P1286787741971641422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 ((A238689 (n + 2) + 1) * A238689 (n + 2) + 1).toNat

end

end A296150.P1286787741971641422

/-! ## A296150.P10059080740671975857

`A374706(A006530(A238689(n+2)²))`
-/

namespace A296150.P10059080740671975857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374706 (A006530 (A238689 (n + 2) ^ 2).toNat).toNat

end

end A296150.P10059080740671975857

/-!
# A296151: Number of n X n 0..1 arrays with each 1 adjacent to 3 or 5 king-move neighboring 1's.

The programs for A296151, there is no canonical definition to state claims against.
-/

/-! ## A296151.P1266329643848614848

`A296157(∑[4*n]+1)`
-/

namespace A296151.P1266329643848614848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A296151.P1266329643848614848

/-! ## A296151.P916808280204565236

`record[A003982(n)*A296157(n+1)]`
-/

namespace A296151.P916808280204565236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A296157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296151.P916808280204565236

/-! ## A296151.P1844074651616852560

`record[gcd(A037012(n), A296157(n+1))]`
-/

namespace A296151.P1844074651616852560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A296157 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296151.P1844074651616852560

/-! ## A296151.P12933406483565960964

`or(char[2*n], A296157(A001844(n)))`
-/

namespace A296151.P12933406483565960964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A296157 (A001844 n).toNat)

end

end A296151.P12933406483565960964

/-! ## A296151.P9252183520865909139

`record[A077606(n+1)*A296157(n+1)]`
-/

namespace A296151.P9252183520865909139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077606 (n + 1) * A296157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296151.P9252183520865909139

/-!
# A296152: Number of nX3 0..1 arrays with each 1 adjacent to 3 or 5 king-move neighboring 1s.

The programs for A296152, there is no canonical definition to state claims against.
-/

/-! ## A296152.P15907374228484247179

`A296157(∑[n+2]+4)`
-/

namespace A296152.P15907374228484247179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A296152.P15907374228484247179

/-! ## A296152.P481407976791083161

`A296157(A167614(n+1))+char[21]`
-/

namespace A296152.P481407976791083161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A296152.P481407976791083161

/-! ## A296152.P6714434511771072808

`record[A296157(n+1)/A135305(n)]`
-/

namespace A296152.P6714434511771072808
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296157 (n + 1) : ℚ) / (A135305 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296152.P6714434511771072808

/-! ## A296152.P15782734507071126008

`record[A296157(n+2)/A119825(n)]`
-/

namespace A296152.P15782734507071126008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296157 (n + 2) : ℚ) / (A119825 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296152.P15782734507071126008

/-! ## A296152.P1635789798251545289

`record[gcd(A296157(n+1), A303913(n))]`
-/

namespace A296152.P1635789798251545289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A296157 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296152.P1635789798251545289

/-!
# A296153: Number of nX4 0..1 arrays with each 1 adjacent to 3 or 5 king-move neighboring 1s.

The programs for A296153, there is no canonical definition to state claims against.
-/

/-! ## A296153.P10983802977528883310

`A296157(∑[n+3]+7)`
-/

namespace A296153.P10983802977528883310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A296153.P10983802977528883310

/-! ## A296153.P12883112974786352971

`record[gcd(A296157(n+2), A303913(n))]`
-/

namespace A296153.P12883112974786352971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A296157 (n + 2)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296153.P12883112974786352971

/-! ## A296153.P14038945703286860677

`A296157(Δ[A006503(n)]+7)+char[23]`
-/

namespace A296153.P14038945703286860677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (f1 (n + 1) - f1 n + 7).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A296153.P14038945703286860677

/-! ## A296153.P14639473238420042144

`A296157(A034856(n+2)+6)+char[22]`
-/

namespace A296153.P14639473238420042144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (A034856 (n + 2) + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A296153.P14639473238420042144

/-! ## A296153.P3813875405862427222

`A296157(Δ[A006503(n)]+7)%A000108(n+5)`
-/

namespace A296153.P3813875405862427222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296157 (f1 (n + 1) - f1 n + 7).toNat) (A000108 (n + 5))

end

end A296153.P3813875405862427222

/-!
# A296154: Number of nX5 0..1 arrays with each 1 adjacent to 3 or 5 king-move neighboring 1s.

The programs for A296154, there is no canonical definition to state claims against.
-/

/-! ## A296154.P4859890741890555724

`A296157(A374005(n+1))`
-/

namespace A296154.P4859890741890555724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (A374005 (n + 1)).toNat

end

end A296154.P4859890741890555724

/-! ## A296154.P14161064767608939008

`A296157(A167499(n+3))`
-/

namespace A296154.P14161064767608939008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (A167499 (n + 3)).toNat

end

end A296154.P14161064767608939008

/-! ## A296154.P12872257474427741688

`A296157(A155212(n)+13)`
-/

namespace A296154.P12872257474427741688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (A155212 n + 13).toNat

end

end A296154.P12872257474427741688

/-! ## A296154.P10090092313067139069

`A296157(A056000(n)+15)`
-/

namespace A296154.P10090092313067139069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (A056000 n + 15).toNat

end

end A296154.P10090092313067139069

/-! ## A296154.P14642255168280183225

`A296157(eq[7, A066657(n)])`
-/

namespace A296154.P14642255168280183225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296154.P14642255168280183225

/-!
# A296155: Number of n X 6 0..1 arrays with each 1 adjacent to 3 or 5 king-move neighboring 1's.

The programs for A296155, there is no canonical definition to state claims against.
-/

/-! ## A296155.P15322793312753643945

`A296157(A374007(n+1))`
-/

namespace A296155.P15322793312753643945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (A374007 (n + 1)).toNat

end

end A296155.P15322793312753643945

/-! ## A296155.P11621082798547347952

`A296157(A166136(n+4))`
-/

namespace A296155.P11621082798547347952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (A166136 (n + 4)).toNat

end

end A296155.P11621082798547347952

/-! ## A296155.P13548753944971412449

`A296157(A167499(n+4)+1)`
-/

namespace A296155.P13548753944971412449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (A167499 (n + 4) + 1).toNat

end

end A296155.P13548753944971412449

/-! ## A296155.P13628490820940216834

`A296157(A000124(n+5)+5)`
-/

namespace A296155.P13628490820940216834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (A000124 (n + 5) + 5).toNat

end

end A296155.P13628490820940216834

/-! ## A296155.P12429304462455909623

`A296157(A000096(n+4)+7)`
-/

namespace A296155.P12429304462455909623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (A000096 (n + 4) + 7).toNat

end

end A296155.P12429304462455909623

/-!
# A296156: Number of n X 7 0..1 arrays with each 1 adjacent to 3 or 5 king-move neighboring 1's.

The programs for A296156, there is no canonical definition to state claims against.
-/

/-! ## A296156.P6967170709113646576

`A296157(A374008(n+1))`
-/

namespace A296156.P6967170709113646576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (A374008 (n + 1)).toNat

end

end A296156.P6967170709113646576

/-! ## A296156.P10551946744533026264

`A296157(A167487(n+5))`
-/

namespace A296156.P10551946744533026264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (A167487 (n + 5)).toNat

end

end A296156.P10551946744533026264

/-! ## A296156.P17957616245912832183

`A296157(A056119(n)+28)`
-/

namespace A296156.P17957616245912832183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (A056119 n + 28).toNat

end

end A296156.P17957616245912832183

/-! ## A296156.P9158477720395765744

`A296157(eq[11, A066657(n)])`
-/

namespace A296156.P9158477720395765744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296156.P9158477720395765744

/-! ## A296156.P9257881000292217144

`A296157(A000124(n+6)+6)`
-/

namespace A296156.P9257881000292217144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296157 (A000124 (n + 6) + 6).toNat

end

end A296156.P9257881000292217144

/-!
# A296157: T(n,k)=Number of nXk 0..1 arrays with each 1 adjacent to 3 or 5 king-move neighboring 1s.

The programs for A296157, there is no canonical definition to state claims against.
-/

/-! ## A296157.P9468491282082555090

`A357030(A298461(n+1))`
-/

namespace A296157.P9468491282082555090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357030 (A298461 (n + 1)).toNat

end

end A296157.P9468491282082555090

/-! ## A296157.P9264208644514766321

`A058033(A132731(n)^A025811(n))`
-/

namespace A296157.P9264208644514766321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058033 (SequenceMachineLib.roundAway ((A132731 n : ℚ) ^ (A025811 n : ℤ))).toNat

end

end A296157.P9264208644514766321

/-! ## A296157.P7911645504493083887

`gcd(A014386(A248978(n)), A054225(n))`
-/

namespace A296157.P7911645504493083887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014386 (A248978 n).toNat) (A054225 n)

end

end A296157.P7911645504493083887

/-! ## A296157.P17239589716751356081

`A191674(A157152(n))`
-/

namespace A296157.P17239589716751356081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191674 (A157152 n).toNat

end

end A296157.P17239589716751356081

/-! ## A296157.P8917485927094824718

`A225644(A174669(n))`
-/

namespace A296157.P8917485927094824718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A174669 n).toNat

end

end A296157.P8917485927094824718

/-!
# A296159: Sum of the smaller parts in the partitions of n into two distinct parts with the larger part odd.

The programs for A296159, the canonical program `A296159.P9198037434267009813` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296159 has offset 1).

The definition of A296159 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296159.P9198037434267009813

`floor((n+1)/4)*(floor((n+1)/4)+1)*(n+1)%2+floor((n+1)/4)²*(n+2)%2`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A296159

/-- `floor((n+1)/4)*(floor((n+1)/4)+1)*(n+1)%2+floor((n+1)/4)²*(n+2)%2` -/
def P9198037434267009813.Spec : Prop :=
  ∀ n, P9198037434267009813.a n = A296159 (n + 1)

theorem P9198037434267009813.correct : P9198037434267009813.Spec := by
  intro n
  simp only [A296159, Nat.add_sub_cancel]

end A296159

/-! ## A296159.P2711051725999491587

`∑{#}[floor(n/2)-1, (#+1)*(n+1-(#+1))%2]`
-/

namespace A296159.P2711051725999491587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + 1 : ℤ) * Int.tmod ((n + 1 : ℤ) - (k + 1 : ℤ)) 2

end

end A296159.P2711051725999491587

namespace A296159

/-- `∑{#}[floor(n/2)-1, (#+1)*(n+1-(#+1))%2]` -/
def P2711051725999491587.Spec : Prop :=
  ∀ n, P2711051725999491587.a n = A296159 (n + 1)

end A296159

/-! ## A296159.P2651359722198802296

`floor(∑[(-1)^∑[∑[n]]/2]²)`
-/

namespace A296159.P2651359722198802296
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) ^ 2⌋

end

end A296159.P2651359722198802296

namespace A296159

/-- `floor(∑[(-1)^∑[∑[n]]/2]²)` -/
def P2651359722198802296.Spec : Prop :=
  ∀ n, P2651359722198802296.a n = A296159 (n + 1)

end A296159

/-! ## A296159.P1266275882426336960

`(floor((n+1)/4)+and(1, n+1))*floor((n+1)/4)`
-/

namespace A296159.P1266275882426336960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(n + 1 : ℚ) / 4⌋ + (Nat.land 1 (n + 1) : ℤ)) * ⌊(n + 1 : ℚ) / 4⌋

end

end A296159.P1266275882426336960

namespace A296159

/-- `(floor((n+1)/4)+and(1, n+1))*floor((n+1)/4)` -/
def P1266275882426336960.Spec : Prop :=
  ∀ n, P1266275882426336960.a n = A296159 (n + 1)

end A296159

/-! ## A296159.P2511241107471008371

`ogf((x^3+x^4-x^5+x^6)/(1-x-2x^4+2x^5+x^8-x^9))`
-/

namespace A296159.P2511241107471008371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, 1, -1, 1] [1, -1, 0, 0, -2, 2, 0, 0, 1, -1] n

end

end A296159.P2511241107471008371

namespace A296159

/-- `ogf((x^3+x^4-x^5+x^6)/(1-x-2x^4+2x^5+x^8-x^9))` -/
def P2511241107471008371.Spec : Prop :=
  ∀ n, P2511241107471008371.a n = A296159 (n + 1)

end A296159

/-! ## A296159.P3614092757022160010

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=2, a(5)=1, a(6)=2, a(7)=4, a(8)=6`
-/

namespace A296159.P3614092757022160010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 2, 1, 2, 4, 6] fun n a =>
  a (n - 1) + 2 * a (n - 4) - 2 * a (n - 5) - a (n - 8) + a (n - 9)

end

end A296159.P3614092757022160010

namespace A296159

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P3614092757022160010.Spec : Prop :=
  ∀ n, P3614092757022160010.a n = A296159 (n + 1)

end A296159

/-! ## A296159.P7693394438194813023

`round((A106249(n)/2)²)`
-/

namespace A296159.P7693394438194813023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A106249 n : ℚ) / 2) ^ 2)

end

end A296159.P7693394438194813023

namespace A296159

/-- `round((A106249(n)/2)²)` -/
def P7693394438194813023.Spec : Prop :=
  ∀ n, P7693394438194813023.a n = A296159 (n + 1)

end A296159

/-! ## A296159.P16680519223260870986

`A002620(∑[(-1)^∑[∑[n]]])`
-/

namespace A296159.P16680519223260870986
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296159.P16680519223260870986

namespace A296159

/-- `A002620(∑[(-1)^∑[∑[n]]])` -/
def P16680519223260870986.Spec : Prop :=
  ∀ n, P16680519223260870986.a n = A296159 (n + 1)

end A296159

/-! ## A296159.P16720783446756559181

`floor((n+1)/4)*A008624(n)`
-/

namespace A296159.P16720783446756559181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 4⌋ * A008624 n

end

end A296159.P16720783446756559181

namespace A296159

/-- `floor((n+1)/4)*A008624(n)` -/
def P16720783446756559181.Spec : Prop :=
  ∀ n, P16720783446756559181.a n = A296159 (n + 1)

end A296159

/-! ## A296159.P7829656780198835713

`A296141(A014681(n+1))`
-/

namespace A296159.P7829656780198835713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296141 (A014681 (n + 1)).toNat

end

end A296159.P7829656780198835713

namespace A296159

/-- `A296141(A014681(n+1))` -/
def P7829656780198835713.Spec : Prop :=
  ∀ n, P7829656780198835713.a n = A296159 (n + 1)

end A296159

/-! ## A296159.P2185151261509671860

`A296141(A103889(n+1))`
-/

namespace A296159.P2185151261509671860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296141 (A103889 (n + 1)).toNat

end

end A296159.P2185151261509671860

namespace A296159

/-- `A296141(A103889(n+1))` -/
def P2185151261509671860.Spec : Prop :=
  ∀ n, P2185151261509671860.a n = A296159 (n + 1)

end A296159

/-! ## A296159.P503752872694675968

`A296141(A114112(n+1))`
-/

namespace A296159.P503752872694675968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296141 (A114112 (n + 1)).toNat

end

end A296159.P503752872694675968

namespace A296159

/-- `A296141(A114112(n+1))` -/
def P503752872694675968.Spec : Prop :=
  ∀ n, P503752872694675968.a n = A296159 (n + 1)

end A296159

/-! ## A296159.P17200495223662472869

`(A037915(n)-A110654(n))*A004526(A110654(n))`
-/

namespace A296159.P17200495223662472869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037915 n - A110654 n) * A004526 (A110654 n).toNat

end

end A296159.P17200495223662472869

namespace A296159

/-- `(A037915(n)-A110654(n))*A004526(A110654(n))` -/
def P17200495223662472869.Spec : Prop :=
  ∀ n, P17200495223662472869.a n = A296159 (n + 1)

end A296159

/-! ## A296159.P6051346647428284192

`A008217(or(2, n+1))`
-/

namespace A296159.P6051346647428284192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (Nat.lor 2 (n + 1))

end

end A296159.P6051346647428284192

namespace A296159

/-- `A008217(or(2, n+1))` -/
def P6051346647428284192.Spec : Prop :=
  ∀ n, P6051346647428284192.a n = A296159 (n + 1)

end A296159

/-! ## A296159.P344193270649459368

`A008217(A174091(n+1))`
-/

namespace A296159.P344193270649459368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008217 (A174091 (n + 1)).toNat

end

end A296159.P344193270649459368

namespace A296159

/-- `A008217(A174091(n+1))` -/
def P344193270649459368.Spec : Prop :=
  ∀ n, P344193270649459368.a n = A296159 (n + 1)

end A296159

/-! ## A296159.P1835193781469703700

`A002265(n+1)*A065033(A028242(n))`
-/

namespace A296159.P1835193781469703700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1) * A065033 (A028242 n).toNat

end

end A296159.P1835193781469703700

namespace A296159

/-- `A002265(n+1)*A065033(A028242(n))` -/
def P1835193781469703700.Spec : Prop :=
  ∀ n, P1835193781469703700.a n = A296159 (n + 1)

end A296159

/-! ## A296159.P5404803606870184165

`A008233(n+1)/A065033(A065033(n))²`
-/

namespace A296159.P5404803606870184165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008233 (n + 1) : ℚ) / (A065033 (A065033 n).toNat ^ 2 : ℚ)

end

end A296159.P5404803606870184165

namespace A296159

/-- `A008233(n+1)/A065033(A065033(n))²` -/
def P5404803606870184165.Spec : Prop :=
  ∀ n, P5404803606870184165.a n = (A296159 (n + 1) : ℚ)

end A296159

/-! ## A296159.P10495664908625508377

`A004526(A004526(n+1))*A026922(n+2)`
-/

namespace A296159.P10495664908625508377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004526 (n + 1)).toNat * A026922 (n + 2)

end

end A296159.P10495664908625508377

namespace A296159

/-- `A004526(A004526(n+1))*A026922(n+2)` -/
def P10495664908625508377.Spec : Prop :=
  ∀ n, P10495664908625508377.a n = A296159 (n + 1)

end A296159

/-! ## A296159.P11484100247080561487

`(A037915(n)-A110654(n))*A002265(n+1)`
-/

namespace A296159.P11484100247080561487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037915 n - A110654 n) * A002265 (n + 1)

end

end A296159.P11484100247080561487

namespace A296159

/-- `(A037915(n)-A110654(n))*A002265(n+1)` -/
def P11484100247080561487.Spec : Prop :=
  ∀ n, P11484100247080561487.a n = A296159 (n + 1)

end A296159

/-! ## A296159.P3476481647379370237

`A002265(A093178(n+1))+A002265(n+1)²`
-/

namespace A296159.P3476481647379370237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A093178 (n + 1)).toNat + A002265 (n + 1) ^ 2

end

end A296159.P3476481647379370237

namespace A296159

/-- `A002265(A093178(n+1))+A002265(n+1)²` -/
def P3476481647379370237.Spec : Prop :=
  ∀ n, P3476481647379370237.a n = A296159 (n + 1)

end A296159

/-!
# A296160: Sum of the larger parts of the partitions of n into two parts such that the smaller part is even.

The programs for A296160, the canonical program `A296160.P15129141874140961262` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296160 has offset 1).

The definition of A296160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296160.P7864047486588967260

`ogf((2x^3+x^4+x^5+x^6+x^7)/(1-x-2x^4+2x^5+x^8-x^9))`
-/

namespace A296160.P7864047486588967260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 2, 1, 1, 1, 1] [1, -1, 0, 0, -2, 2, 0, 0, 1, -1] n

end

end A296160.P7864047486588967260

namespace A296160

/-- `ogf((2x^3+x^4+x^5+x^6+x^7)/(1-x-2x^4+2x^5+x^8-x^9))` -/
def P7864047486588967260.Spec : Prop :=
  ∀ n, P7864047486588967260.a n = A296160 (n + 1)

end A296160

/-! ## A296160.P15129141874140961262

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=3, a(5)=4, a(6)=5, a(7)=10, a(8)=12`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A296160

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P15129141874140961262.Spec : Prop :=
  ∀ n, P15129141874140961262.a n = A296160 (n + 1)

theorem P15129141874140961262.correct : P15129141874140961262.Spec := by
  intro n
  simp only [A296160, Nat.add_sub_cancel]

end A296160

/-! ## A296160.P14075474098840477926

`Δ[n/2*A130519(n)]`
-/

namespace A296160.P14075474098840477926
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A130519 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A296160.P14075474098840477926

namespace A296160

/-- `Δ[n/2*A130519(n)]` -/
def P14075474098840477926.Spec : Prop :=
  ∀ n, P14075474098840477926.a n = (A296160 (n + 1) : ℚ)

end A296160

/-! ## A296160.P5899434769063526120

`floor((n/2)²)-A296141(n+1)`
-/

namespace A296160.P5899434769063526120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋ - A296141 (n + 1)

end

end A296160.P5899434769063526120

namespace A296160

/-- `floor((n/2)²)-A296141(n+1)` -/
def P5899434769063526120.Spec : Prop :=
  ∀ n, P5899434769063526120.a n = A296160 (n + 1)

end A296160

/-! ## A296160.P3986970045687622966

`∑[A014682(A004524(n))]`
-/

namespace A296160.P3986970045687622966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A004524 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296160.P3986970045687622966

namespace A296160

/-- `∑[A014682(A004524(n))]` -/
def P3986970045687622966.Spec : Prop :=
  ∀ n, P3986970045687622966.a n = A296160 (n + 1)

end A296160

/-! ## A296160.P2338865293536732901

`A001318(n)-A296161(n+1)`
-/

namespace A296160.P2338865293536732901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - A296161 (n + 1)

end

end A296160.P2338865293536732901

namespace A296160

/-- `A001318(n)-A296161(n+1)` -/
def P2338865293536732901.Spec : Prop :=
  ∀ n, P2338865293536732901.a n = A296160 (n + 1)

end A296160

/-! ## A296160.P10444975772491170183

`A002620(n)-A002620(A285869(n))`
-/

namespace A296160.P10444975772491170183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n - A002620 (A285869 n).toNat

end

end A296160.P10444975772491170183

namespace A296160

/-- `A002620(n)-A002620(A285869(n))` -/
def P10444975772491170183.Spec : Prop :=
  ∀ n, P10444975772491170183.a n = A296160 (n + 1)

end A296160

/-! ## A296160.P8443158539025396875

`(A000982(n)-A000982(A285869(n)))/2`
-/

namespace A296160.P8443158539025396875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000982 n - A000982 (A285869 n).toNat : ℚ) / 2

end

end A296160.P8443158539025396875

namespace A296160

/-- `(A000982(n)-A000982(A285869(n)))/2` -/
def P8443158539025396875.Spec : Prop :=
  ∀ n, P8443158539025396875.a n = (A296160 (n + 1) : ℚ)

end A296160

/-! ## A296160.P4274331390973953600

`(A245581(n)-A245581(A285869(n)))/2`
-/

namespace A296160.P4274331390973953600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245581 n - A245581 (A285869 n).toNat : ℚ) / 2

end

end A296160.P4274331390973953600

namespace A296160

/-- `(A245581(n)-A245581(A285869(n)))/2` -/
def P4274331390973953600.Spec : Prop :=
  ∀ n, P4274331390973953600.a n = (A296160 (n + 1) : ℚ)

end A296160

/-! ## A296160.P5419432523587009020

`(A110655(n)+A004526(n))*A004526(A110654(n))`
-/

namespace A296160.P5419432523587009020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110655 n + A004526 n) * A004526 (A110654 n).toNat

end

end A296160.P5419432523587009020

namespace A296160

/-- `(A110655(n)+A004526(n))*A004526(A110654(n))` -/
def P5419432523587009020.Spec : Prop :=
  ∀ n, P5419432523587009020.a n = A296160 (n + 1)

end A296160

/-! ## A296160.P14298365980625724404

`A130519(n)+A038714(n+1)`
-/

namespace A296160.P14298365980625724404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 n + A038714 (n + 1)

end

end A296160.P14298365980625724404

namespace A296160

/-- `A130519(n)+A038714(n+1)` -/
def P14298365980625724404.Spec : Prop :=
  ∀ n, P14298365980625724404.a n = A296160 (n + 1)

end A296160

/-! ## A296160.P15074622635837053330

`A295643(n+1)+A130519(n+1)`
-/

namespace A296160.P15074622635837053330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295643 (n + 1) + A130519 (n + 1)

end

end A296160.P15074622635837053330

namespace A296160

/-- `A295643(n+1)+A130519(n+1)` -/
def P15074622635837053330.Spec : Prop :=
  ∀ n, P15074622635837053330.a n = A296160 (n + 1)

end A296160

/-! ## A296160.P18122226047914163632

`A130519(n+1)+A002265(n+1)²`
-/

namespace A296160.P18122226047914163632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (n + 1) + A002265 (n + 1) ^ 2

end

end A296160.P18122226047914163632

namespace A296160

/-- `A130519(n+1)+A002265(n+1)²` -/
def P18122226047914163632.Spec : Prop :=
  ∀ n, P18122226047914163632.a n = A296160 (n + 1)

end A296160

/-! ## A296160.P15501663672318077675

`(n-A134172(n+1))*A134172(n+1)`
-/

namespace A296160.P15501663672318077675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A134172 (n + 1)) * A134172 (n + 1)

end

end A296160.P15501663672318077675

namespace A296160

/-- `(n-A134172(n+1))*A134172(n+1)` -/
def P15501663672318077675.Spec : Prop :=
  ∀ n, P15501663672318077675.a n = A296160 (n + 1)

end A296160

/-! ## A296160.P4424796991486986859

`A130519(n)+A110660(A004526(n+1))`
-/

namespace A296160.P4424796991486986859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 n + A110660 (A004526 (n + 1)).toNat

end

end A296160.P4424796991486986859

namespace A296160

/-- `A130519(n)+A110660(A004526(n+1))` -/
def P4424796991486986859.Spec : Prop :=
  ∀ n, P4424796991486986859.a n = A296160 (n + 1)

end A296160

/-! ## A296160.P8728087377852712809

`A130519(n)+A008238(A140201(n)+1)`
-/

namespace A296160.P8728087377852712809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 n + A008238 (A140201 n + 1).toNat

end

end A296160.P8728087377852712809

namespace A296160

/-- `A130519(n)+A008238(A140201(n)+1)` -/
def P8728087377852712809.Spec : Prop :=
  ∀ n, P8728087377852712809.a n = A296160 (n + 1)

end A296160

/-! ## A296160.P2513056327037401128

`A130519(n+1)+A008794(A004526(n+1))`
-/

namespace A296160.P2513056327037401128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (n + 1) + A008794 (A004526 (n + 1)).toNat

end

end A296160.P2513056327037401128

namespace A296160

/-- `A130519(n+1)+A008794(A004526(n+1))` -/
def P2513056327037401128.Spec : Prop :=
  ∀ n, P2513056327037401128.a n = A296160 (n + 1)

end A296160

/-! ## A296160.P17543435466100094021

`(A032766(n)-A057353(n))*A002265(n+1)`
-/

namespace A296160.P17543435466100094021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032766 n - A057353 n) * A002265 (n + 1)

end

end A296160.P17543435466100094021

namespace A296160

/-- `(A032766(n)-A057353(n))*A002265(n+1)` -/
def P17543435466100094021.Spec : Prop :=
  ∀ n, P17543435466100094021.a n = A296160 (n + 1)

end A296160

/-! ## A296160.P9624030023357571454

`(A006578(n)-A231559(n))*A002265(n+1)`
-/

namespace A296160.P9624030023357571454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006578 n - A231559 n) * A002265 (n + 1)

end

end A296160.P9624030023357571454

namespace A296160

/-- `(A006578(n)-A231559(n))*A002265(n+1)` -/
def P9624030023357571454.Spec : Prop :=
  ∀ n, P9624030023357571454.a n = A296160 (n + 1)

end A296160

/-! ## A296160.P11888814010024930672

`A130519(n)+A002265(n+1)*A008621(n+1)`
-/

namespace A296160.P11888814010024930672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 n + A002265 (n + 1) * A008621 (n + 1)

end

end A296160.P11888814010024930672

namespace A296160

/-- `A130519(n)+A002265(n+1)*A008621(n+1)` -/
def P11888814010024930672.Spec : Prop :=
  ∀ n, P11888814010024930672.a n = A296160 (n + 1)

end A296160

/-!
# A296161: Sum of the larger parts of the partitions of n into two parts such that the smaller part is odd.

The programs for A296161, the canonical program `A296161.P17410104615772536062` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296161 has offset 1).

The definition of A296161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296161.P4027110994880845310

`record[ceil(n/2)*round(xor(1, n)/6)]`
-/

namespace A296161.P4027110994880845310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296161.P4027110994880845310

namespace A296161

/-- `record[ceil(n/2)*round(xor(1, n)/6)]` -/
def P4027110994880845310.Spec : Prop :=
  ∀ n, P4027110994880845310.a n = A296161 (n + 1)

end A296161

/-! ## A296161.P13311341161889263932

`(n+1-ceil(n/4))*ceil(n/4)`
-/

namespace A296161.P13311341161889263932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - ⌈(n : ℚ) / 4⌉) * ⌈(n : ℚ) / 4⌉

end

end A296161.P13311341161889263932

namespace A296161

/-- `(n+1-ceil(n/4))*ceil(n/4)` -/
def P13311341161889263932.Spec : Prop :=
  ∀ n, P13311341161889263932.a n = A296161 (n + 1)

end A296161

/-! ## A296161.P12027072865158319176

`ogf((x+x^2+x^3+x^4+2x^5)/(1-x-2x^4+2x^5+x^8-x^9))`
-/

namespace A296161.P12027072865158319176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1, 1, 2] [1, -1, 0, 0, -2, 2, 0, 0, 1, -1] n

end

end A296161.P12027072865158319176

namespace A296161

/-- `ogf((x+x^2+x^3+x^4+2x^5)/(1-x-2x^4+2x^5+x^8-x^9))` -/
def P12027072865158319176.Spec : Prop :=
  ∀ n, P12027072865158319176.a n = A296161 (n + 1)

end A296161

/-! ## A296161.P17410104615772536062

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=8, a(6)=10, a(7)=12, a(8)=14`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A296161

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P17410104615772536062.Spec : Prop :=
  ∀ n, P17410104615772536062.a n = A296161 (n + 1)

theorem P17410104615772536062.correct : P17410104615772536062.Spec := by
  intro n
  simp only [A296161, Nat.add_sub_cancel]

end A296161

/-! ## A296161.P1984335594046797472

`∪[A014255(n), A152749(n)]`
-/

namespace A296161.P1984335594046797472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014255 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296161.P1984335594046797472

namespace A296161

/-- `∪[A014255(n), A152749(n)]` -/
def P1984335594046797472.Spec : Prop :=
  ∀ n, (P1984335594046797472.a n : ℤ) = A296161 (n + 1)

end A296161

/-! ## A296161.P8442812433560916755

`A001318(n)-A296160(n+1)`
-/

namespace A296161.P8442812433560916755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - A296160 (n + 1)

end

end A296161.P8442812433560916755

namespace A296161

/-- `A001318(n)-A296160(n+1)` -/
def P8442812433560916755.Spec : Prop :=
  ∀ n, P8442812433560916755.a n = A296161 (n + 1)

end A296161

/-! ## A296161.P14365648203117292691

`∪[A229593(n+2), A000567(n)]`
-/

namespace A296161.P14365648203117292691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229593 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296161.P14365648203117292691

namespace A296161

/-- `∪[A229593(n+2), A000567(n)]` -/
def P14365648203117292691.Spec : Prop :=
  ∀ n, (P14365648203117292691.a n : ℤ) = A296161 (n + 1)

end A296161

/-! ## A296161.P11523531132860264160

`∪[A229593(n+2), A006578(n)]`
-/

namespace A296161.P11523531132860264160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229593 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296161.P11523531132860264160

namespace A296161

/-- `∪[A229593(n+2), A006578(n)]` -/
def P11523531132860264160.Spec : Prop :=
  ∀ n, (P11523531132860264160.a n : ℤ) = A296161 (n + 1)

end A296161

/-! ## A296161.P6999837681939270807

`∪[A229593(n+2), A014255(n)]`
-/

namespace A296161.P6999837681939270807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229593 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014255 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296161.P6999837681939270807

namespace A296161

/-- `∪[A229593(n+2), A014255(n)]` -/
def P6999837681939270807.Spec : Prop :=
  ∀ n, (P6999837681939270807.a n : ℤ) = A296161 (n + 1)

end A296161

/-! ## A296161.P6896410002827872567

`A002620(n+1)-A002620(A106249(n))`
-/

namespace A296161.P6896410002827872567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) - A002620 (A106249 n).toNat

end

end A296161.P6896410002827872567

namespace A296161

/-- `A002620(n+1)-A002620(A106249(n))` -/
def P6896410002827872567.Spec : Prop :=
  ∀ n, P6896410002827872567.a n = A296161 (n + 1)

end A296161

/-! ## A296161.P369612970728238608

`A211521(n+1)-A004526(A004526(n+1))²`
-/

namespace A296161.P369612970728238608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211521 (n + 1) - A004526 (A004526 (n + 1)).toNat ^ 2

end

end A296161.P369612970728238608

namespace A296161

/-- `A211521(n+1)-A004526(A004526(n+1))²` -/
def P369612970728238608.Spec : Prop :=
  ∀ n, P369612970728238608.a n = A296161 (n + 1)

end A296161

/-! ## A296161.P12760668238537973213

`A296141(n+1)+A296159(n+2)+A296141(n+2)`
-/

namespace A296161.P12760668238537973213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296141 (n + 1) + (A296159 (n + 2) + A296141 (n + 2))

end

end A296161.P12760668238537973213

namespace A296161

/-- `A296141(n+1)+A296159(n+2)+A296141(n+2)` -/
def P12760668238537973213.Spec : Prop :=
  ∀ n, P12760668238537973213.a n = A296161 (n + 1)

end A296161

/-! ## A296161.P16963728894530680006

`record[ceil(n/2)*A008615(n)]`
-/

namespace A296161.P16963728894530680006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ * A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296161.P16963728894530680006

namespace A296161

/-- `record[ceil(n/2)*A008615(n)]` -/
def P16963728894530680006.Spec : Prop :=
  ∀ n, P16963728894530680006.a n = A296161 (n + 1)

end A296161

/-! ## A296161.P9687040856111584802

`record[A008615(n+1)*A008619(n)]`
-/

namespace A296161.P9687040856111584802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (n + 1) * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296161.P9687040856111584802

namespace A296161

/-- `record[A008615(n+1)*A008619(n)]` -/
def P9687040856111584802.Spec : Prop :=
  ∀ n, P9687040856111584802.a n = A296161 (n + 1)

end A296161

/-! ## A296161.P7951969142881877384

`record[(A133310(n)-A008619(n))*A008619(n)]`
-/

namespace A296161.P7951969142881877384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A133310 n - A008619 n) * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296161.P7951969142881877384

namespace A296161

/-- `record[(A133310(n)-A008619(n))*A008619(n)]` -/
def P7951969142881877384.Spec : Prop :=
  ∀ n, P7951969142881877384.a n = A296161 (n + 1)

end A296161

/-! ## A296161.P17397065080624113249

`record[(A004396(n)-A078898(n))*A078898(n)]`
-/

namespace A296161.P17397065080624113249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004396 n - A078898 n) * A078898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296161.P17397065080624113249

namespace A296161

/-- `record[(A004396(n)-A078898(n))*A078898(n)]` -/
def P17397065080624113249.Spec : Prop :=
  ∀ n, P17397065080624113249.a n = A296161 (n + 1)

end A296161

/-! ## A296161.P1302940684411773867

`A008724(A047260(n+2))`
-/

namespace A296161.P1302940684411773867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 (A047260 (n + 2)).toNat

end

end A296161.P1302940684411773867

namespace A296161

/-- `A008724(A047260(n+2))` -/
def P1302940684411773867.Spec : Prop :=
  ∀ n, P1302940684411773867.a n = A296161 (n + 1)

end A296161

/-! ## A296161.P8941417144550755624

`A008724(∑[abs(A176563(n))])`
-/

namespace A296161.P8941417144550755624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176563 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296161.P8941417144550755624

namespace A296161

/-- `A008724(∑[abs(A176563(n))])` -/
def P8941417144550755624.Spec : Prop :=
  ∀ n, P8941417144550755624.a n = A296161 (n + 1)

end A296161

/-! ## A296161.P8923203339680788764

`record[abs(A001057(n)*A008615(n))]`
-/

namespace A296161.P8923203339680788764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 n * A008615 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296161.P8923203339680788764

namespace A296161

/-- `record[abs(A001057(n)*A008615(n))]` -/
def P8923203339680788764.Spec : Prop :=
  ∀ n, P8923203339680788764.a n = A296161 (n + 1)

end A296161

/-! ## A296161.P696868001530484432

`A211540(A235451(A080513(n+1)+n+1))`
-/

namespace A296161.P696868001530484432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (A235451 (A080513 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A296161.P696868001530484432

namespace A296161

/-- `A211540(A235451(A080513(n+1)+n+1))` -/
def P696868001530484432.Spec : Prop :=
  ∀ n, P696868001530484432.a n = A296161 (n + 1)

end A296161

/-!
# A296162: a(n) = [x^n] Product_{k>=1} ((1 - x^(3*k))/(1 - x^k))^n.

The programs for A296162, there is no canonical definition to state claims against.
-/

/-! ## A296162.P7012261534097372139

`A150991(n)-A004526(A150973(n))`
-/

namespace A296162.P7012261534097372139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150991 n - A004526 (A150973 n).toNat

end

end A296162.P7012261534097372139

/-! ## A296162.P18373812136522557987

`A008615(A141223(n)+4)`
-/

namespace A296162.P18373812136522557987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A141223 n + 4).toNat

end

end A296162.P18373812136522557987

/-!
# A296163: a(n) = [x^n] Product_{k>=1} ((1 - x^(5*k))/(1 - x^k))^n.

The programs for A296163, there is no canonical definition to state claims against.
-/

/-! ## A296163.P11526324828856708169

`A363546(n)+A018853(A051118(n))`
-/

namespace A296163.P11526324828856708169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363546 n + A018853 (A051118 n).toNat

end

end A296163.P11526324828856708169

/-! ## A296163.P4910324306121664265

`A363546(n)+A341027(A320740(n))`
-/

namespace A296163.P4910324306121664265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363546 n + A341027 ((A320740 n).toNat + 220)

end

end A296163.P4910324306121664265

/-!
# A296164: a(n) = [x^n] Product_{k>=1} ((1 + x^k)/(1 + x^(3*k)))^n.

The programs for A296164, there is no canonical definition to state claims against.
-/

/-! ## A296164.P8942611924801230770

`A123108(A192967(n))+A123108(A257838(n))`
-/

namespace A296164.P8942611924801230770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A192967 n).toNat + A123108 (A257838 n).toNat

end

end A296164.P8942611924801230770

/-! ## A296164.P4770330985551549798

`A110656(∑[∑[A119375(n)]])`
-/

namespace A296164.P4770330985551549798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119375 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296164.P4770330985551549798

/-! ## A296164.P8652114034522472528

`A008615(Δ[Δ[A148968(n)]])`
-/

namespace A296164.P8652114034522472528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148968 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (n + 1) - f1 n).toNat

end

end A296164.P8652114034522472528

/-!
# A296165: a(n) is the number of unimodular triangulations of [0,2]x[0,n].

The programs for A296165, there is no canonical definition to state claims against.
-/

/-! ## A296165.P4722519608797612278

`A082640(∑[n]+2)`
-/

namespace A296165.P4722519608797612278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082640 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A296165.P4722519608797612278

/-! ## A296165.P8084366628120567556

`record[gcd(A014473(n), A082640(n+2))]`
-/

namespace A296165.P8084366628120567556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014473 n) (A082640 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296165.P8084366628120567556

/-!
# A296166: Numbers k such that the number of groups of order k exceeds the sum of divisors of k.

The programs for A296166, there is no canonical definition to state claims against.
-/

/-! ## A296166.P7829727608197870683

`lt[A201819(n+1), A000001(n)]`
-/

namespace A296166.P7829727608197870683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296166.P7829727608197870683

/-! ## A296166.P13693182236646227360

`lt[A201819(n+1), sqrt(A297420(n))]`
-/

namespace A296166.P13693182236646227360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201819 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A297420 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A296166.P13693182236646227360

/-! ## A296166.P15493398172809599689

`A008619(lt[A001651(n+1), A238877(n+1)])`
-/

namespace A296166.P15493398172809599689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296166.P15493398172809599689

/-! ## A296166.P1954640221517073274

`A008619(lt[A008619(n)+n, A238877(n+1)])`
-/

namespace A296166.P1954640221517073274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296166.P1954640221517073274

/-! ## A296166.P7820580787562460341

`A008619(lt[A008619(3*n), A238877(n+1)])`
-/

namespace A296166.P7820580787562460341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296166.P7820580787562460341

/-!
# A296167: Triangle read by rows: T(n,k) is the number of circular compositions of n with length k such that no two adjacent parts are equal (1 <= k <= n).

The programs for A296167, there is no canonical definition to state claims against.
-/

/-! ## A296167.P2875600036246860090

`A351356(A215561(n))+A060016(n+1)`
-/

namespace A296167.P2875600036246860090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351356 (A215561 n).toNat + A060016 (n + 1)

end

end A296167.P2875600036246860090

/-! ## A296167.P5679355633840576363

`A060016(n+1)+A025458(A215122(n))`
-/

namespace A296167.P5679355633840576363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1) + A025458 (A215122 n).toNat

end

end A296167.P5679355633840576363

/-! ## A296167.P4889288977299677998

`A124761(A145903(n))+A060016(n+1)`
-/

namespace A296167.P4889288977299677998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A145903 n).toNat + A060016 (n + 1)

end

end A296167.P4889288977299677998

/-! ## A296167.P14580881847229857253

`A234538(A176129(n))`
-/

namespace A296167.P14580881847229857253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234538 (A176129 n).toNat

end

end A296167.P14580881847229857253

/-! ## A296167.P7044471825723630532

`A242082(A339350(n))`
-/

namespace A296167.P7044471825723630532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242082 (A339350 n).toNat

end

end A296167.P7044471825723630532

/-!
# A296169: E.g.f. A(x) satisfies: A(x) = 1+x - cos(2*A(x) - x).

The programs for A296169, there is no canonical definition to state claims against.
-/

/-! ## A296169.P5312359066483432189

`A187186(Δ[floor(sqrt(n)*n^n)])`
-/

namespace A296169.P5312359066483432189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (n : ℝ) * (n ^ n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187186 (f1 (n + 1) - f1 n).toNat

end

end A296169.P5312359066483432189

/-!
# A296170: E.g.f. A(x) satisfies: [x^(n-1)] A(x)^(n^2) = [x^n] A(x)^(n^2) for n>=1.

The programs for A296170, there is no canonical definition to state claims against.
-/

/-! ## A296170.P2422973977853147504

`1-A076953((n+1)^(n+1))`
-/

namespace A296170.P2422973977853147504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A076953 ((n + 1) ^ (n + 1))

end

end A296170.P2422973977853147504

/-!
# A296171: O.g.f. A(x) satisfies: [x^n] exp( n^2 * A(x) ) = [x^(n-1)] exp( n^2 * A(x) ) for n>=1.

The programs for A296171, there is no canonical definition to state claims against.
-/

/-! ## A296171.P17364429670882260639

`2-∑[A215395((n+1)²)]`
-/

namespace A296171.P17364429670882260639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215395 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296171.P17364429670882260639

/-!
# A296179: Number of points of the inner discrete Theodorus spiral on sheet S_n, n >= 1. First differences of A295339.

The programs for A296179, there is no canonical definition to state claims against.
-/

/-! ## A296179.P8410331916051960750

`A295338(n+1)-floor(acot(n)²)`
-/

namespace A296179.P8410331916051960750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295338 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A296179.P8410331916051960750

/-! ## A296179.P15709472499398760151

`A295338(n+1)-A000038(n)`
-/

namespace A296179.P15709472499398760151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295338 (n + 1) - A000038 n

end

end A296179.P15709472499398760151

/-! ## A296179.P2466100428857301537

`A295338(n+1)-2*A000007(n)`
-/

namespace A296179.P2466100428857301537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295338 (n + 1) - 2 * A000007 n

end

end A296179.P2466100428857301537

/-! ## A296179.P18177269781950833777

`A295338(n+1)-C(2, A000328(n))`
-/

namespace A296179.P18177269781950833777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295338 (n + 1) - (Nat.choose 2 (A000328 n).toNat : ℤ)

end

end A296179.P18177269781950833777

/-!
# A296180: Triangle read by rows: T(n, k) = 3*(n - k)*k + 1, n >= 0, 0 <= k <= n.

The programs for A296180, the canonical program `A296180.P14152267377895258393` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296180 has offset 0).

The definition of A296180 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(row(n)-col(n))*col(n)+1` (program `A296180.P14152267377895258393`, by `A296180.P14152267377895258393.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A296180.P14152267377895258393

`3*(row(n)-col(n))*col(n)+1`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A296180

/-- `3*(row(n)-col(n))*col(n)+1` -/
def P14152267377895258393.Spec : Prop :=
  ∀ n, P14152267377895258393.a n = A296180 n

theorem P14152267377895258393.correct : P14152267377895258393.Spec := by
  intro n
  simp only [A296180]

end A296180

/-! ## A296180.P3187238569078205370

`1+3*col(n)*(row(n)-col(n))`
-/

namespace A296180.P3187238569078205370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (3 * SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))

end

end A296180.P3187238569078205370

namespace A296180

/-- `1+3*col(n)*(row(n)-col(n))` -/
def P3187238569078205370.Spec : Prop :=
  ∀ n, P3187238569078205370.a n = A296180 n

theorem P3187238569078205370.correct : P3187238569078205370.Spec := by
  intro n
  simp only [A296180, Nat.add_sub_cancel, A296180.P3187238569078205370.a, A296180.P14152267377895258393.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A296180

/-! ## A296180.P1607420442538355336

`2-A176625(n)`
-/

namespace A296180.P1607420442538355336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A176625 n

end

end A296180.P1607420442538355336

namespace A296180

/-- `2-A176625(n)` -/
def P1607420442538355336.Spec : Prop :=
  ∀ n, P1607420442538355336.a n = A296180 n

theorem P1607420442538355336.correct : P1607420442538355336.Spec := by
  intro n
  simp only [A296180, Nat.add_sub_cancel, A296180.P1607420442538355336.a, A296180.P14152267377895258393.a, A176625, A176625.P17207149786843791027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A296180

/-! ## A296180.P1857626383578357049

`ceil(A287326(n)/2)`
-/

namespace A296180.P1857626383578357049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A287326 n : ℚ) / 2⌉

end

end A296180.P1857626383578357049

namespace A296180

/-- `ceil(A287326(n)/2)` -/
def P1857626383578357049.Spec : Prop :=
  ∀ n, P1857626383578357049.a n = A296180 n

end A296180

/-! ## A296180.P13327149340355027434

`3*A004247(n)+1`
-/

namespace A296180.P13327149340355027434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004247 n + 1

end

end A296180.P13327149340355027434

namespace A296180

/-- `3*A004247(n)+1` -/
def P13327149340355027434.Spec : Prop :=
  ∀ n, P13327149340355027434.a n = A296180 n

theorem P13327149340355027434.correct : P13327149340355027434.Spec := by
  intro n
  simp only [A296180, Nat.add_sub_cancel, A296180.P13327149340355027434.a, A296180.P14152267377895258393.a, A004247, A004247.P2751605162508615148.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A296180

/-! ## A296180.P15969400500795500348

`3*A077028(n)-2`
-/

namespace A296180.P15969400500795500348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A077028 n - 2

end

end A296180.P15969400500795500348

namespace A296180

/-- `3*A077028(n)-2` -/
def P15969400500795500348.Spec : Prop :=
  ∀ n, P15969400500795500348.a n = A296180 n

theorem P15969400500795500348.correct : P15969400500795500348.Spec := by
  intro n
  simp only [A296180, Nat.add_sub_cancel, A296180.P15969400500795500348.a, A296180.P14152267377895258393.a, A077028, A077028.P18404356772921913843.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A296180

/-! ## A296180.P9005391166530605426

`4-3*A176270(n)`
-/

namespace A296180.P9005391166530605426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - 3 * A176270 n

end

end A296180.P9005391166530605426

namespace A296180

/-- `4-3*A176270(n)` -/
def P9005391166530605426.Spec : Prop :=
  ∀ n, P9005391166530605426.a n = A296180 n

theorem P9005391166530605426.correct : P9005391166530605426.Spec := by
  intro n
  simp only [A296180, Nat.add_sub_cancel, A296180.P9005391166530605426.a, A296180.P14152267377895258393.a, A176270, A176270.P15264438552937889960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A296180

/-! ## A296180.P9383310809895604328

`A016777(A004247(n))`
-/

namespace A296180.P9383310809895604328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A004247 n).toNat

end

end A296180.P9383310809895604328

namespace A296180

/-- `A016777(A004247(n))` -/
def P9383310809895604328.Spec : Prop :=
  ∀ n, P9383310809895604328.a n = A296180 n

end A296180

/-! ## A296180.P5125389858239418800

`A168233(A157528(n))`
-/

namespace A296180.P5125389858239418800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168233 (A157528 n).toNat

end

end A296180.P5125389858239418800

namespace A296180

/-- `A168233(A157528(n))` -/
def P5125389858239418800.Spec : Prop :=
  ∀ n, P5125389858239418800.a n = A296180 n

end A296180

/-! ## A296180.P5969832075306016888

`A001651(A130154(n+1))`
-/

namespace A296180.P5969832075306016888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A130154 (n + 1)).toNat

end

end A296180.P5969832075306016888

namespace A296180

/-- `A001651(A130154(n+1))` -/
def P5969832075306016888.Spec : Prop :=
  ∀ n, P5969832075306016888.a n = A296180 n

end A296180

/-! ## A296180.P3076997470401792090

`A016777(A077028(n)-1)`
-/

namespace A296180.P3076997470401792090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A077028 n - 1).toNat

end

end A296180.P3076997470401792090

namespace A296180

/-- `A016777(A077028(n)-1)` -/
def P3076997470401792090.Spec : Prop :=
  ∀ n, P3076997470401792090.a n = A296180 n

end A296180

/-! ## A296180.P7053328637781426242

`A082046(n)-A004247(n)²`
-/

namespace A296180.P7053328637781426242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082046 n - A004247 n ^ 2

end

end A296180.P7053328637781426242

namespace A296180

/-- `A082046(n)-A004247(n)²` -/
def P7053328637781426242.Spec : Prop :=
  ∀ n, P7053328637781426242.a n = A296180 n

theorem P7053328637781426242.correct : P7053328637781426242.Spec := by
  intro n
  simp only [A296180, Nat.add_sub_cancel, A296180.P7053328637781426242.a, A296180.P14152267377895258393.a, A004247, A004247.P2751605162508615148.a, A082046, A082046.P3826101076602898823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A296180

/-! ## A296180.P15369968054266569817

`A008486(A004247(n)+1)-2`
-/

namespace A296180.P15369968054266569817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A004247 n + 1).toNat - 2

end

end A296180.P15369968054266569817

namespace A296180

/-- `A008486(A004247(n)+1)-2` -/
def P15369968054266569817.Spec : Prop :=
  ∀ n, P15369968054266569817.a n = A296180 n

end A296180

/-! ## A296180.P1202647392111083465

`A016789(2*A004247(n))/2`
-/

namespace A296180.P1202647392111083465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016789 (2 * A004247 n).toNat : ℚ) / 2

end

end A296180.P1202647392111083465

namespace A296180

/-- `A016789(2*A004247(n))/2` -/
def P1202647392111083465.Spec : Prop :=
  ∀ n, P1202647392111083465.a n = (A296180 n : ℚ)

end A296180

/-! ## A296180.P18171452937534081741

`A130154(n+1)+A004247(n)`
-/

namespace A296180.P18171452937534081741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130154 (n + 1) + A004247 n

end

end A296180.P18171452937534081741

namespace A296180

/-- `A130154(n+1)+A004247(n)` -/
def P18171452937534081741.Spec : Prop :=
  ∀ n, P18171452937534081741.a n = A296180 n

theorem P18171452937534081741.correct : P18171452937534081741.Spec := by
  intro n
  simp only [A296180, Nat.add_sub_cancel, A296180.P18171452937534081741.a, A296180.P14152267377895258393.a, A004247, A004247.P2751605162508615148.a, A130154, A130154.P10522574722174175207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A296180

/-! ## A296180.P1683516029044864724

`A082110(n)+1-A082043(n)`
-/

namespace A296180.P1683516029044864724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082110 n + (1 - A082043 n)

end

end A296180.P1683516029044864724

namespace A296180

/-- `A082110(n)+1-A082043(n)` -/
def P1683516029044864724.Spec : Prop :=
  ∀ n, P1683516029044864724.a n = A296180 n

theorem P1683516029044864724.correct : P1683516029044864724.Spec := by
  intro n
  simp only [A296180, Nat.add_sub_cancel, A296180.P1683516029044864724.a, A296180.P14152267377895258393.a, A082043, A082043.P1888788749395997436.a, A082110, A082110.P2791386172549189163.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A296180

/-! ## A296180.P9631117066028953543

`A073254(n)+1-A114327(n)²`
-/

namespace A296180.P9631117066028953543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073254 n + (1 - A114327 n ^ 2)

end

end A296180.P9631117066028953543

namespace A296180

/-- `A073254(n)+1-A114327(n)²` -/
def P9631117066028953543.Spec : Prop :=
  ∀ n, P9631117066028953543.a n = A296180 n

theorem P9631117066028953543.correct : P9631117066028953543.Spec := by
  intro n
  simp only [A296180, Nat.add_sub_cancel, A296180.P9631117066028953543.a, A296180.P14152267377895258393.a, A073254, A073254.P5875854829665146571.a, A114327, A114327.P12930942860764139837.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A296180

/-! ## A296180.P5839130784464348056

`A003056(n)²+1-A349039(n)`
-/

namespace A296180.P5839130784464348056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n ^ 2 + (1 - A349039 n)

end

end A296180.P5839130784464348056

namespace A296180

/-- `A003056(n)²+1-A349039(n)` -/
def P5839130784464348056.Spec : Prop :=
  ∀ n, P5839130784464348056.a n = A296180 n

end A296180

/-! ## A296180.P18136169594612420150

`A016777((A130154(n+1)-1)/2)`
-/

namespace A296180.P18136169594612420150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.roundAway ((A130154 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A296180.P18136169594612420150

namespace A296180

/-- `A016777((A130154(n+1)-1)/2)` -/
def P18136169594612420150.Spec : Prop :=
  ∀ n, P18136169594612420150.a n = A296180 n

end A296180

/-! ## A296180.P9105089677437900488

`A130154(n+1)+A077028(n)-1`
-/

namespace A296180.P9105089677437900488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130154 (n + 1) + (A077028 n - 1)

end

end A296180.P9105089677437900488

namespace A296180

/-- `A130154(n+1)+A077028(n)-1` -/
def P9105089677437900488.Spec : Prop :=
  ∀ n, P9105089677437900488.a n = A296180 n

theorem P9105089677437900488.correct : P9105089677437900488.Spec := by
  intro n
  simp only [A296180, Nat.add_sub_cancel, A296180.P9105089677437900488.a, A296180.P14152267377895258393.a, A077028, A077028.P18404356772921913843.a, A130154, A130154.P10522574722174175207.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A296180

/-!
# A296181: First point of the discrete Theodorus spiral in the fourth quadrant for the n-th revolution, for n >= 1.

The programs for A296181, there is no canonical definition to state claims against.
-/

/-! ## A296181.P8430582913613372344

`A055437(n+1)+∑[A057078(A122768(2*(n+2)))]`
-/

namespace A296181.P8430582913613372344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A122768 (2 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055437 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296181.P8430582913613372344

/-! ## A296181.P17097680301698938054

`A055436(n+1)+A006928(A253946(n+6))`
-/

namespace A296181.P17097680301698938054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055436 (n + 1) + A006928 (A253946 (n + 6)).toNat

end

end A296181.P17097680301698938054

/-!
# A296184: Decimal expansion of 2 + phi, with the golden section phi from A001622.

The programs for A296184, there is no canonical definition to state claims against.
-/

/-! ## A296184.P6085813757742926723

`or(C(2, n), A104457(n))`
-/

namespace A296184.P6085813757742926723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 n : ℤ) (A104457 (n + 1))

end

end A296184.P6085813757742926723

/-! ## A296184.P4079829831376984478

`floor(A001622(n)+acot(n)²)`
-/

namespace A296184.P4079829831376984478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001622 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A296184.P4079829831376984478

/-! ## A296184.P6513358254224066081

`A001622(n)+A000038(n)`
-/

namespace A296184.P6513358254224066081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + A000038 n

end

end A296184.P6513358254224066081

/-! ## A296184.P12359607568201795253

`A001622(A020761(n)+n)`
-/

namespace A296184.P12359607568201795253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A020761 n + (n : ℤ)).toNat + 1)

end

end A296184.P12359607568201795253

/-! ## A296184.P13287438895959963861

`A104457(n)+A000007(n)`
-/

namespace A296184.P13287438895959963861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1) + A000007 n

end

end A296184.P13287438895959963861

/-! ## A296184.P14575418029804722618

`A001622(or(n, A020761(n)))`
-/

namespace A296184.P14575418029804722618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((Int.lor (n : ℤ) (A020761 n)).toNat + 1)

end

end A296184.P14575418029804722618

/-! ## A296184.P15754210631270016678

`or(A001622(n), A104457(n))`
-/

namespace A296184.P15754210631270016678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001622 (n + 1)) (A104457 (n + 1))

end

end A296184.P15754210631270016678

/-! ## A296184.P13948012019945924695

`A001622(xor(n, A020761(n)))`
-/

namespace A296184.P13948012019945924695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((Int.xor (n : ℤ) (A020761 n)).toNat + 1)

end

end A296184.P13948012019945924695

/-! ## A296184.P15950180100867837171

`A104457(n)+char[A004935(n)]`
-/

namespace A296184.P15950180100867837171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004935 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A296184.P15950180100867837171

/-! ## A296184.P12925984902217199398

`A054977(n)+A104457(n)-1`
-/

namespace A296184.P12925984902217199398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + (A104457 (n + 1) - 1)

end

end A296184.P12925984902217199398

/-! ## A296184.P9303133139558166788

`A104457(n)+1-A057427(n)`
-/

namespace A296184.P9303133139558166788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1) + (1 - A057427 n)

end

end A296184.P9303133139558166788

/-! ## A296184.P137106220303943603

`A001622(n)+2*A000007(n)`
-/

namespace A296184.P137106220303943603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + 2 * A000007 n

end

end A296184.P137106220303943603

/-! ## A296184.P7937655476971725684

`4+A001622(n)-A040002(n)`
-/

namespace A296184.P7937655476971725684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + (A001622 (n + 1) - A040002 n)

end

end A296184.P7937655476971725684

/-! ## A296184.P6121067383114669343

`A001622(n)+2*(A054977(n)-1)`
-/

namespace A296184.P6121067383114669343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + 2 * (A054977 n - 1)

end

end A296184.P6121067383114669343

/-! ## A296184.P7075986816363142041

`or(A000007(a(n-1)+1), A001622(n))` with `a(0)=3`
-/

namespace A296184.P7075986816363142041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  Int.lor (A000007 (a (n - 1) + 1).toNat) (A001622 (n + 1))

end

end A296184.P7075986816363142041

/-! ## A296184.P11398225647876308652

`A001622(n)+A000122(A000122(n)+n)`
-/

namespace A296184.P11398225647876308652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + A000122 (A000122 n + (n : ℤ)).toNat

end

end A296184.P11398225647876308652

/-! ## A296184.P6554444582141603108

`A001622(n)+A132338(n)-A225667(n)`
-/

namespace A296184.P6554444582141603108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + (A132338 n - A225667 (n + 1))

end

end A296184.P6554444582141603108

/-! ## A296184.P11250921432625455454

`A104457(n)+A116425(n)-A231187(n)`
-/

namespace A296184.P11250921432625455454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1) + (A116425 (n + 1) - A231187 (n + 1))

end

end A296184.P11250921432625455454

/-! ## A296184.P13099027848421143019

`A079585(n+1)+A001622(n)-A225667(n)`
-/

namespace A296184.P13099027848421143019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079585 (n + 1 + 1) + (A001622 (n + 1) - A225667 (n + 1))

end

end A296184.P13099027848421143019

/-!
# A296185: Numbers that are not the sum of 3 squares and an 8th power.

The programs for A296185, there is no canonical definition to state claims against.
-/

/-! ## A296185.P2174427632075330349

`112+n*128`
-/

namespace A296185.P2174427632075330349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  112 + n * 128

end

end A296185.P2174427632075330349

/-!
# A296187: Yarborough primes that remain Yarborough primes when each of their digits are replaced by their squares.

The programs for A296187, there is no canonical definition to state claims against.
-/

/-! ## A296187.P1216374114500800269

`or(A104802(n+3), A324686(A008000(n)))`
-/

namespace A296187.P1216374114500800269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A104802 (n + 3)) (A324686 (A008000 n).toNat)

end

end A296187.P1216374114500800269

/-!
# A296188: Number of normal semistandard Young tableaux whose shape is the integer partition with Heinz number n.

The programs for A296188, there is no canonical definition to state claims against.
-/

/-! ## A296188.P4348752509866043008

`A296560(A122111(n+1))`
-/

namespace A296188.P4348752509866043008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296560 (A122111 (n + 1)).toNat

end

end A296188.P4348752509866043008

/-! ## A296188.P3717850926669892450

`A296560(A243053(n+1))`
-/

namespace A296188.P3717850926669892450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296560 (A243053 (n + 1)).toNat

end

end A296188.P3717850926669892450

/-! ## A296188.P11594570965935886167

`A296560(A279351(n+1))`
-/

namespace A296188.P11594570965935886167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296560 (A279351 (n + 1)).toNat

end

end A296188.P11594570965935886167

/-! ## A296188.P3858271599033276883

`A296560(A279352(n+1))`
-/

namespace A296188.P3858271599033276883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296560 (A279352 (n + 1)).toNat

end

end A296188.P3858271599033276883

/-! ## A296188.P15244550026398415524

`A296560(∑{d}[n+1, A329034(#)])`
-/

namespace A296188.P15244550026398415524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296560 (∑ d ∈ Nat.divisors (f1 n), A329034 d).toNat

end

end A296188.P15244550026398415524

/-!
# A296189: Harary index for the n-Keller graph.

The programs for A296189, there is no canonical definition to state claims against.
-/

/-! ## A296189.P933902908621866970

`A284838(n+1)+A000302(n)*A301571(n+1)`
-/

namespace A296189.P933902908621866970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284838 (n + 1) + A000302 n * A301571 (n + 1)

end

end A296189.P933902908621866970

/-! ## A296189.P887392809775921118

`A284838(n+1)+A155543(n)*A301571(n+1)`
-/

namespace A296189.P887392809775921118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284838 (n + 1) + A155543 n * A301571 (n + 1)

end

end A296189.P887392809775921118

/-!
# A296190: Numerators of Harary index for the n-permutation star graph.

The programs for A296190, there is no canonical definition to state claims against.
-/

/-! ## A296190.P5977305967628526204

`A097337(∑[A149493(n)²])`
-/

namespace A296190.P5977305967628526204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149493 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296190.P5977305967628526204

/-!
# A296192: Denominators of the Harary index of the n X n grid graph.

The programs for A296192, there is no canonical definition to state claims against.
-/

/-! ## A296192.P3786917708451526807

`A336823(∑[∏[A006899(n+1)]])`
-/

namespace A296192.P3786917708451526807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006899 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336823 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296192.P3786917708451526807

/-! ## A296192.P10152953034224249330

`floor(n/2)!*A324497(A272787(n))`
-/

namespace A296192.P10152953034224249330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat : ℤ) * A324497 (A272787 n).toNat

end

end A296192.P10152953034224249330

/-!
# A296193: Numerators of Harary index for the n-Mycielski graph.

The programs for A296193, there is no canonical definition to state claims against.
-/

/-! ## A296193.P4840214426775969584

`A053604(n²*A240478(n+1)+1)`
-/

namespace A296193.P4840214426775969584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053604 ((n ^ 2 : ℤ) * A240478 (n + 1) + 1).toNat

end

end A296193.P4840214426775969584

/-!
# A296194: Harary index of the n-transposition graph.

The programs for A296194, there is no canonical definition to state claims against.
-/

/-! ## A296194.P5273656439660512075

`A007094(n*A308877(n))`
-/

namespace A296194.P5273656439660512075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 ((n : ℤ) * A308877 n).toNat

end

end A296194.P5273656439660512075

/-!
# A296195: Number of disjoint covering systems of cardinality n.

The programs for A296195, there is no canonical definition to state claims against.
-/

/-! ## A296195.P5044024436938611324

`A326589(A285849(n))+A050385(n+1)`
-/

namespace A296195.P5044024436938611324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326589 (A285849 n).toNat + A050385 (n + 1)

end

end A296195.P5044024436938611324

/-! ## A296195.P15914389437130512068

`A127648(A050429(n+1))+A050385(n+1)`
-/

namespace A296195.P15914389437130512068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 (A050429 (n + 1)).toNat + A050385 (n + 1)

end

end A296195.P15914389437130512068

/-! ## A296195.P4644882165306428296

`A326545(A233249(n+1))+A050385(n+1)`
-/

namespace A296195.P4644882165306428296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326545 (A233249 (n + 1)).toNat + A050385 (n + 1)

end

end A296195.P4644882165306428296

/-! ## A296195.P10327344611832362308

`A050385(n+1)+Δ[A011860(A292475(n+1))]`
-/

namespace A296195.P10327344611832362308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 (A292475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050385 (n + 1) + (f1 (n + 1) - f1 n)

end

end A296195.P10327344611832362308

/-!
# A296196: Harary index of the n X n queen graph.

The programs for A296196, the canonical program `A296196.P3347013475010231834` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296196 has offset 1).

The definition of A296196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296196.P6957052014459521120

`ogf((6x+2x^2-2x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A296196.P6957052014459521120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 2, -2] [1, -5, 10, -10, 5, -1] n

end

end A296196.P6957052014459521120

namespace A296196

/-- `ogf((6x+2x^2-2x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P6957052014459521120.Spec : Prop :=
  ∀ n, P6957052014459521120.a n = A296196 (n + 1)

end A296196

/-! ## A296196.P2885114593806302469

`(n+1)*n*(3*(n+1)²+13*(n+1)-2)/12`
-/

namespace A296196.P2885114593806302469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * n : ℤ) * ((3 * (n + 1) ^ 2 + 13 * (n + 1) : ℤ) - 2) : ℚ) / 12

end

end A296196.P2885114593806302469

namespace A296196

/-- `(n+1)*n*(3*(n+1)²+13*(n+1)-2)/12` -/
def P2885114593806302469.Spec : Prop :=
  ∀ n, P2885114593806302469.a n = (A296196 (n + 1) : ℚ)

theorem P2885114593806302469.correct : P2885114593806302469.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A296196, Nat.add_sub_cancel, A296196.P2885114593806302469.a, A296196.P3347013475010231834.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A296196, Nat.add_sub_cancel, A296196.P2885114593806302469.a, A296196.P3347013475010231834.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A296196

/-! ## A296196.P3347013475010231834

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=6, a(2)=32, a(3)=98, a(4)=230`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A296196

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3347013475010231834.Spec : Prop :=
  ∀ n, P3347013475010231834.a n = A296196 (n + 1)

theorem P3347013475010231834.correct : P3347013475010231834.Spec := by
  intro n
  simp only [A296196, Nat.add_sub_cancel]

end A296196

/-! ## A296196.P15703285874508102800

`∑[n*∑[a(n-1)+2]]` with `a(0)=1, a(1)=5`
-/

namespace A296196.P15703285874508102800
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296196.P15703285874508102800

namespace A296196

/-- `∑[n*∑[a(n-1)+2]]` -/
def P15703285874508102800.Spec : Prop :=
  ∀ n, (P15703285874508102800.a n : ℤ) = A296196 (n + 1)

end A296196

/-! ## A296196.P12972804682502323585

`∑[n*or(1, 4*n)]+∑[n]²`
-/

namespace A296196.P12972804682502323585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 (4 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A296196.P12972804682502323585

namespace A296196

/-- `∑[n*or(1, 4*n)]+∑[n]²` -/
def P12972804682502323585.Spec : Prop :=
  ∀ n, (P12972804682502323585.a n : ℤ) = A296196 (n + 1)

end A296196

/-! ## A296196.P11781058664170610647

`∑[n*xor(1, 4*n)]+∑[n]²`
-/

namespace A296196.P11781058664170610647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.xor 1 (4 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A296196.P11781058664170610647

namespace A296196

/-- `∑[n*xor(1, 4*n)]+∑[n]²` -/
def P11781058664170610647.Spec : Prop :=
  ∀ n, (P11781058664170610647.a n : ℤ) = A296196 (n + 1)

end A296196

/-! ## A296196.P16559338795781398995

`lcm(2, ∑[n*((n+1)²+2*n)])`
-/

namespace A296196.P16559338795781398995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * ((n + 1) ^ 2 + 2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A296196.P16559338795781398995

namespace A296196

/-- `lcm(2, ∑[n*((n+1)²+2*n)])` -/
def P16559338795781398995.Spec : Prop :=
  ∀ n, (P16559338795781398995.a n : ℤ) = A296196 (n + 1)

end A296196

/-! ## A296196.P9631267130895766914

`∑[(n+3)*∑[2*n]]-lcm(n, n+1)`
-/

namespace A296196.P9631267130895766914
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.lcm n (n + 1) : ℤ)

end

end A296196.P9631267130895766914

namespace A296196

/-- `∑[(n+3)*∑[2*n]]-lcm(n, n+1)` -/
def P9631267130895766914.Spec : Prop :=
  ∀ n, P9631267130895766914.a n = A296196 (n + 1)

end A296196

/-! ## A296196.P3592039326745967059

`a(n-1)+n*((n+1)²+2*n)` with `a(0)=0`
-/

namespace A296196.P3592039326745967059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * ((n + 1) ^ 2 + 2 * n)

end

end A296196.P3592039326745967059

namespace A296196

/-- `a(n-1)+n*((n+1)²+2*n)` -/
def P3592039326745967059.Spec : Prop :=
  ∀ n, (P3592039326745967059.a n : ℤ) = A296196 (n + 1)

end A296196

/-! ## A296196.P9312998244383037659

`A331987(n)+∑[n]²`
-/

namespace A296196.P9312998244383037659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331987 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A296196.P9312998244383037659

namespace A296196

/-- `A331987(n)+∑[n]²` -/
def P9312998244383037659.Spec : Prop :=
  ∀ n, P9312998244383037659.a n = A296196 (n + 1)

end A296196

/-! ## A296196.P11113531697319530231

`∑[2*A393231(n+1)]`
-/

namespace A296196.P11113531697319530231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A393231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296196.P11113531697319530231

namespace A296196

/-- `∑[2*A393231(n+1)]` -/
def P11113531697319530231.Spec : Prop :=
  ∀ n, P11113531697319530231.a n = A296196 (n + 1)

end A296196

/-! ## A296196.P6162526790999937929

`∑[A007742(n)]+∑[n]²`
-/

namespace A296196.P6162526790999937929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

end

end A296196.P6162526790999937929

namespace A296196

/-- `∑[A007742(n)]+∑[n]²` -/
def P6162526790999937929.Spec : Prop :=
  ∀ n, P6162526790999937929.a n = A296196 (n + 1)

end A296196

/-! ## A296196.P14325454627243993513

`A085740(n+1)+∑[n²]`
-/

namespace A296196.P14325454627243993513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085740 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A296196.P14325454627243993513

namespace A296196

/-- `A085740(n+1)+∑[n²]` -/
def P14325454627243993513.Spec : Prop :=
  ∀ n, P14325454627243993513.a n = A296196 (n + 1)

end A296196

/-! ## A296196.P8859619758659862835

`∑[n+1]²-A179297(n+1)`
-/

namespace A296196.P8859619758659862835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - A179297 (n + 1)

end

end A296196.P8859619758659862835

namespace A296196

/-- `∑[n+1]²-A179297(n+1)` -/
def P8859619758659862835.Spec : Prop :=
  ∀ n, P8859619758659862835.a n = A296196 (n + 1)

end A296196

/-! ## A296196.P18277972995506941006

`A000537(n)+∑[(2*n)²+n]`
-/

namespace A296196.P18277972995506941006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A296196.P18277972995506941006

namespace A296196

/-- `A000537(n)+∑[(2*n)²+n]` -/
def P18277972995506941006.Spec : Prop :=
  ∀ n, P18277972995506941006.a n = A296196 (n + 1)

end A296196

/-! ## A296196.P6832178353609748940

`A002492(n)+A001621(n)`
-/

namespace A296196.P6832178353609748940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 n + A001621 n

end

end A296196.P6832178353609748940

namespace A296196

/-- `A002492(n)+A001621(n)` -/
def P6832178353609748940.Spec : Prop :=
  ∀ n, P6832178353609748940.a n = A296196 (n + 1)

end A296196

/-! ## A296196.P11390667914692650939

`A132124(n)+A061316(n)`
-/

namespace A296196.P11390667914692650939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132124 n + A061316 n

end

end A296196.P11390667914692650939

namespace A296196

/-- `A132124(n)+A061316(n)` -/
def P11390667914692650939.Spec : Prop :=
  ∀ n, P11390667914692650939.a n = A296196 (n + 1)

end A296196

/-! ## A296196.P6820030588489223914

`A152457(n)+A059270(n)`
-/

namespace A296196.P6820030588489223914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152457 n + A059270 n

end

end A296196.P6820030588489223914

namespace A296196

/-- `A152457(n)+A059270(n)` -/
def P6820030588489223914.Spec : Prop :=
  ∀ n, P6820030588489223914.a n = A296196 (n + 1)

end A296196

/-! ## A296196.P10345910854057625905

`A304993(n)+A176060(n)`
-/

namespace A296196.P10345910854057625905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304993 n + A176060 n

end

end A296196.P10345910854057625905

namespace A296196

/-- `A304993(n)+A176060(n)` -/
def P10345910854057625905.Spec : Prop :=
  ∀ n, P10345910854057625905.a n = A296196 (n + 1)

end A296196

/-!
# A296197: Harary index of the n X n bishop graph.

The programs for A296197, the canonical program `A296197.P3173255232492000185` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296197 has offset 1).

The definition of A296197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296197.P8737660691698382621

`ogf((2x+5x^2-x^4)/(1-4x+5x^2-5x^4+4x^5-x^6))`
-/

namespace A296197.P8737660691698382621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 5, 0, -1] [1, -4, 5, 0, -5, 4, -1] n

end

end A296197.P8737660691698382621

namespace A296197

/-- `ogf((2x+5x^2-x^4)/(1-4x+5x^2-5x^4+4x^5-x^6))` -/
def P8737660691698382621.Spec : Prop :=
  ∀ n, P8737660691698382621.a n = A296197 (n + 1)

end A296197

/-! ## A296197.P3173255232492000185

`4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` with `a(0)=0, a(1)=2, a(2)=13, a(3)=42, a(4)=102, a(5)=208`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A296197

/-- `4*a(n-1)-5*a(n-2)+5*a(n-4)-4*a(n-5)+a(n-6)` -/
def P3173255232492000185.Spec : Prop :=
  ∀ n, P3173255232492000185.a n = A296197 (n + 1)

theorem P3173255232492000185.correct : P3173255232492000185.Spec := by
  intro n
  simp only [A296197, Nat.add_sub_cancel]

end A296197

/-! ## A296197.P13893415390493905673

`(3+8*(n+1)-36*(n+1)²+16*(n+1)^3+6*(n+1)^4-3*(-1)^(n+1))/48`
-/

namespace A296197.P13893415390493905673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 + 8 * (n + 1) : ℤ) - (36 * (n + 1) ^ 2 : ℤ) + (16 * (n + 1) ^ 3 : ℤ) + (6 * (n + 1) ^ 4 : ℤ) - 3 * (-1) ^ (n + 1) : ℚ) / 48

end

end A296197.P13893415390493905673

namespace A296197

/-- `(3+8*(n+1)-36*(n+1)²+16*(n+1)^3+6*(n+1)^4-3*(-1)^(n+1))/48` -/
def P13893415390493905673.Spec : Prop :=
  ∀ n, P13893415390493905673.a n = (A296197 (n + 1) : ℚ)

theorem P13893415390493905673.correct : P13893415390493905673.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A296197, Nat.add_sub_cancel, A296197.P13893415390493905673.a, A296197.P3173255232492000185.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h1 := ih (m + 5) (by omega)
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h5 := ih (m + 1) (by omega)
      have h6 := ih m (by omega)
      simp only [A296197, Nat.add_sub_cancel, A296197.P13893415390493905673.a, A296197.P3173255232492000185.a, SequenceMachineLib.memo_apply] at h1 h2 h4 h5 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 1 = m + 5 by omega, show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 5 = m + 1 by omega, show m + 6 - 6 = m by omega, show m + 5 < m + 6 by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m + 1 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h1 h2 h4 h5 h6 ⊢
      rw [← h1, ← h2, ← h4, ← h5, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A296197

/-! ## A296197.P10814243796188362061

`∑[A011934(n)+n²]`
-/

namespace A296197.P10814243796188362061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296197.P10814243796188362061

namespace A296197

/-- `∑[A011934(n)+n²]` -/
def P10814243796188362061.Spec : Prop :=
  ∀ n, P10814243796188362061.a n = A296197 (n + 1)

end A296197

/-! ## A296197.P8210637377450370102

`A105636(n)+∑[n²]`
-/

namespace A296197.P8210637377450370102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105636 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A296197.P8210637377450370102

namespace A296197

/-- `A105636(n)+∑[n²]` -/
def P8210637377450370102.Spec : Prop :=
  ∀ n, P8210637377450370102.a n = A296197 (n + 1)

end A296197

/-! ## A296197.P510695638318641376

`∑[A055232(n)]-(n+1)²`
-/

namespace A296197.P510695638318641376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A296197.P510695638318641376

namespace A296197

/-- `∑[A055232(n)]-(n+1)²` -/
def P510695638318641376.Spec : Prop :=
  ∀ n, P510695638318641376.a n = A296197 (n + 1)

end A296197

/-! ## A296197.P8724075815435437734

`∑[∑[A212959(n)]]-(n+1)²`
-/

namespace A296197.P8724075815435437734
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212959 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A296197.P8724075815435437734

namespace A296197

/-- `∑[∑[A212959(n)]]-(n+1)²` -/
def P8724075815435437734.Spec : Prop :=
  ∀ n, P8724075815435437734.a n = A296197 (n + 1)

end A296197

/-! ## A296197.P10919546158694479377

`A045947(n)+∑[(n+1)*∑[n]]`
-/

namespace A296197.P10919546158694479377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A296197.P10919546158694479377

namespace A296197

/-- `A045947(n)+∑[(n+1)*∑[n]]` -/
def P10919546158694479377.Spec : Prop :=
  ∀ n, P10919546158694479377.a n = A296197 (n + 1)

end A296197

/-! ## A296197.P9362917964047443116

`A212980(n+1)+A001296(n)`
-/

namespace A296197.P9362917964047443116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212980 (n + 1) + A001296 n

end

end A296197.P9362917964047443116

namespace A296197

/-- `A212980(n+1)+A001296(n)` -/
def P9362917964047443116.Spec : Prop :=
  ∀ n, P9362917964047443116.a n = A296197 (n + 1)

end A296197

/-! ## A296197.P14422441116863872602

`A274248(n+1)-A110426(n+1)`
-/

namespace A296197.P14422441116863872602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274248 (n + 1) - A110426 (n + 1)

end

end A296197.P14422441116863872602

namespace A296197

/-- `A274248(n+1)-A110426(n+1)` -/
def P14422441116863872602.Spec : Prop :=
  ∀ n, P14422441116863872602.a n = A296197 (n + 1)

end A296197

/-! ## A296197.P17121114986894788191

`A173196(2*n+1)+A050534(n+1)-A173196(n+1)`
-/

namespace A296197.P17121114986894788191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (2 * n + 1) + (A050534 (n + 1) - A173196 (n + 1))

end

end A296197.P17121114986894788191

namespace A296197

/-- `A173196(2*n+1)+A050534(n+1)-A173196(n+1)` -/
def P17121114986894788191.Spec : Prop :=
  ∀ n, P17121114986894788191.a n = A296197 (n + 1)

end A296197

/-! ## A296197.P2289451102571394508

`A001971(n²)+∑[A005476(n)]`
-/

namespace A296197.P2289451102571394508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (n ^ 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296197.P2289451102571394508

namespace A296197

/-- `A001971(n²)+∑[A005476(n)]` -/
def P2289451102571394508.Spec : Prop :=
  ∀ n, P2289451102571394508.a n = A296197 (n + 1)

end A296197

/-!
# A296198: Harary index of the n X n black bishop graph.

The programs for A296198, the canonical program `A296198.P1244796601229307320` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296198 has offset 1).

The definition of A296198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A296198.P1244796601229307320

`ogf((x+6x^2+3x^3+3x^4-x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A296198

/-- `ogf((x+6x^2+3x^3+3x^4-x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P1244796601229307320.Spec : Prop :=
  ∀ n, P1244796601229307320.a n = A296198 (n + 1)

theorem P1244796601229307320.correct : P1244796601229307320.Spec := by
  intro n
  simp only [A296198, Nat.add_sub_cancel]

end A296198

/-! ## A296198.P2777221350177651624

`∑[A131474(n+1)-or(1, n)]`
-/

namespace A296198.P2777221350177651624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131474 (n + 1) - (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296198.P2777221350177651624

namespace A296198

/-- `∑[A131474(n+1)-or(1, n)]` -/
def P2777221350177651624.Spec : Prop :=
  ∀ n, P2777221350177651624.a n = A296198 (n + 1)

end A296198

/-! ## A296198.P12988337364759271454

`∑[∑[A212684(n)]/A065033(n)]`
-/

namespace A296198.P12988337364759271454
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212684 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A065033 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296198.P12988337364759271454

namespace A296198

/-- `∑[∑[A212684(n)]/A065033(n)]` -/
def P12988337364759271454.Spec : Prop :=
  ∀ n, P12988337364759271454.a n = (A296198 (n + 1) : ℚ)

end A296198

/-! ## A296198.P6501576675696471076

`∑[A212760(n)-A184676(n+1)]`
-/

namespace A296198.P6501576675696471076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212760 n - A184676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296198.P6501576675696471076

namespace A296198

/-- `∑[A212760(n)-A184676(n+1)]` -/
def P6501576675696471076.Spec : Prop :=
  ∀ n, P6501576675696471076.a n = A296198 (n + 1)

end A296198

/-! ## A296198.P9927331284422856111

`A087811(n+1)²-∑[A184676(n+1)]`
-/

namespace A296198.P9927331284422856111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296198.P9927331284422856111

namespace A296198

/-- `A087811(n+1)²-∑[A184676(n+1)]` -/
def P9927331284422856111.Spec : Prop :=
  ∀ n, P9927331284422856111.a n = A296198 (n + 1)

end A296198

/-! ## A296198.P10868005261426121609

`A024206(n+1)+A024206(n+1)²-A005744(n)`
-/

namespace A296198.P10868005261426121609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (n + 1) + (A024206 (n + 1) ^ 2 - A005744 n)

end

end A296198.P10868005261426121609

namespace A296198

/-- `A024206(n+1)+A024206(n+1)²-A005744(n)` -/
def P10868005261426121609.Spec : Prop :=
  ∀ n, P10868005261426121609.a n = A296198 (n + 1)

end A296198

/-! ## A296198.P13555515795485787389

`∑[A131474(n+1)-Δ[A000982(n)]]`
-/

namespace A296198.P13555515795485787389
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131474 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296198.P13555515795485787389

namespace A296198

/-- `∑[A131474(n+1)-Δ[A000982(n)]]` -/
def P13555515795485787389.Spec : Prop :=
  ∀ n, P13555515795485787389.a n = A296198 (n + 1)

end A296198

/-! ## A296198.P2659687308216700892

`∑[A131474(n+1)]-A000982(n+1)`
-/

namespace A296198.P2659687308216700892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131474 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000982 (n + 1)

end

end A296198.P2659687308216700892

namespace A296198

/-- `∑[A131474(n+1)]-A000982(n+1)` -/
def P2659687308216700892.Spec : Prop :=
  ∀ n, P2659687308216700892.a n = A296198 (n + 1)

end A296198

/-! ## A296198.P1351934449728397479

`A002378(A024206(n+1))-A005744(n)`
-/

namespace A296198.P1351934449728397479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A024206 (n + 1)).toNat - A005744 n

end

end A296198.P1351934449728397479

namespace A296198

/-- `A002378(A024206(n+1))-A005744(n)` -/
def P1351934449728397479.Spec : Prop :=
  ∀ n, P1351934449728397479.a n = A296198 (n + 1)

end A296198

/-! ## A296198.P10982028259049665166

`A002620(A047838(n+2))-A005744(n)`
-/

namespace A296198.P10982028259049665166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A047838 (n + 2)).toNat - A005744 n

end

end A296198.P10982028259049665166

namespace A296198

/-- `A002620(A047838(n+2))-A005744(n)` -/
def P10982028259049665166.Spec : Prop :=
  ∀ n, P10982028259049665166.a n = A296198 (n + 1)

end A296198

/-! ## A296198.P6742332079393917605

`A002620(A004526(n)+∑[n+1])-A005744(n)`
-/

namespace A296198.P6742332079393917605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A004526 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat - A005744 n

end

end A296198.P6742332079393917605

namespace A296198

/-- `A002620(A004526(n)+∑[n+1])-A005744(n)` -/
def P6742332079393917605.Spec : Prop :=
  ∀ n, P6742332079393917605.a n = A296198 (n + 1)

end A296198

/-!
# A296199: Numerator of the contraharmonic mean of the first n primes.

The programs for A296199, the canonical program `A296199.P13100712386680932036` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296199 has offset 1).

The definition of A296199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296199.P15764726735766287412

`A024450(n+1)/A007504(n+1)*A294612(n+1)`
-/

namespace A296199.P15764726735766287412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024450 (n + 1) : ℚ) / (A007504 (n + 1) : ℚ) * (A294612 (n + 1) : ℚ)

end

end A296199.P15764726735766287412

namespace A296199

/-- `A024450(n+1)/A007504(n+1)*A294612(n+1)` -/
def P15764726735766287412.Spec : Prop :=
  ∀ n, P15764726735766287412.a n = (A296199 (n + 1) : ℚ)

end A296199

/-! ## A296199.P13100712386680932036

`A024450(n+1)/gcd(A024450(n+1), A117962(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A296199

/-- `A024450(n+1)/gcd(A024450(n+1), A117962(n+1))` -/
def P13100712386680932036.Spec : Prop :=
  ∀ n, P13100712386680932036.a n = (A296199 (n + 1) : ℚ)

end A296199

/-! ## A296199.P9700315769139453018

`A060819(lcm(A024450(n+1), A040880(2*n+3)))`
-/

namespace A296199.P9700315769139453018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (Int.lcm (A024450 (n + 1)) (A040880 (2 * n + 3)))

end

end A296199.P9700315769139453018

namespace A296199

/-- `A060819(lcm(A024450(n+1), A040880(2*n+3)))` -/
def P9700315769139453018.Spec : Prop :=
  ∀ n, P9700315769139453018.a n = A296199 (n + 1)

end A296199

/-! ## A296199.P16608082187833868756

`A024450(n+1)/A056624(A277324(n+2))`
-/

namespace A296199.P16608082187833868756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024450 (n + 1) : ℚ) / (A056624 (A277324 (n + 2)).toNat : ℚ)

end

end A296199.P16608082187833868756

namespace A296199

/-- `A024450(n+1)/A056624(A277324(n+2))` -/
def P16608082187833868756.Spec : Prop :=
  ∀ n, P16608082187833868756.a n = (A296199 (n + 1) : ℚ)

end A296199

