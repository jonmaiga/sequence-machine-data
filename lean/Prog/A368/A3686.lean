import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A368600: Number of ways to choose a set of n nonempty subsets of {1..n} such that it is not possible to choose a different element from each.

The programs for A368600, there is no canonical definition to state claims against.
-/

/-! ## A368600.P16706921292071619220

`A136556(n)-A368601(n)`
-/

namespace A368600.P16706921292071619220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136556 n - A368601 n

end

end A368600.P16706921292071619220

/-! ## A368600.P6430344175827018886

`A357812(A000225(n))-A368601(n)`
-/

namespace A368600.P6430344175827018886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357812 (A000225 n).toNat - A368601 n

end

end A368600.P6430344175827018886

/-!
# A368601: Number of ways to choose a set of n nonempty subsets of {1..n} such that it is possible to choose a different element from each.

The programs for A368601, there is no canonical definition to state claims against.
-/

/-! ## A368601.P14509209320741602350

`A136556(n)-A368600(n)`
-/

namespace A368601.P14509209320741602350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136556 n - A368600 n

end

end A368601.P14509209320741602350

/-! ## A368601.P14267399399987662129

`A370640(2^n)`
-/

namespace A368601.P14267399399987662129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370640 (2 ^ n)

end

end A368601.P14267399399987662129

/-!
# A368602: Triangle read by rows where T(n,k) is the number of labeled acyclic digraphs on {1..n} with sinks {1..k}.

The programs for A368602, there is no canonical definition to state claims against.
-/

/-! ## A368602.P18195195459887583551

`A361718(n)/A007318(n)`
-/

namespace A368602.P18195195459887583551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361718 n : ℚ) / (A007318 n : ℚ)

end

end A368602.P18195195459887583551

/-! ## A368602.P12595497133406831971

`A361718(n)/A091918(n)`
-/

namespace A368602.P12595497133406831971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361718 n : ℚ) / (A091918 n : ℚ)

end

end A368602.P12595497133406831971

/-! ## A368602.P16210056442219643526

`A361718(n)/A132749(n)`
-/

namespace A368602.P16210056442219643526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361718 n : ℚ) / (A132749 n : ℚ)

end

end A368602.P16210056442219643526

/-! ## A368602.P3390905171116705355

`A361718(n)/A135227(n)`
-/

namespace A368602.P3390905171116705355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361718 n : ℚ) / (A135227 n : ℚ)

end

end A368602.P3390905171116705355

/-! ## A368602.P4134176359073662079

`A361718(n)/A183154(n)`
-/

namespace A368602.P4134176359073662079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361718 n : ℚ) / (A183154 n : ℚ)

end

end A368602.P4134176359073662079

/-!
# A368603: Products of odd primes of squarefree index. MM-numbers of set multipartitions.

The programs for A368603, there is no canonical definition to state claims against.
-/

/-! ## A368603.P266799845889926035

`∩[2*n+1, A302478(n+1)]`
-/

namespace A368603.P266799845889926035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368603.P266799845889926035

/-! ## A368603.P11117858875711172894

`record[A000265(A302478(n+1))]`
-/

namespace A368603.P11117858875711172894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A302478 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368603.P11117858875711172894

/-! ## A368603.P334229665238103138

`record[A093178(A302478(1+n))]`
-/

namespace A368603.P334229665238103138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (A302478 (1 + n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368603.P334229665238103138

/-! ## A368603.P12774067527013536198

`filter[A302478(n+1), A000035(#)]`
-/

namespace A368603.P12774067527013536198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A368603.P12774067527013536198

/-! ## A368603.P8704565551960735455

`∩[A302478(n+1), A004273(n)]`
-/

namespace A368603.P8704565551960735455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368603.P8704565551960735455

/-! ## A368603.P7088780487782865471

`∩[A302478(n+1), A005408(n)]`
-/

namespace A368603.P7088780487782865471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368603.P7088780487782865471

/-! ## A368603.P4732960568368024915

`∩[A302478(n+1), A060747(n)]`
-/

namespace A368603.P4732960568368024915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368603.P4732960568368024915

/-! ## A368603.P11908041807681192915

`∩[A302478(n+1), A326835(n+1)]`
-/

namespace A368603.P11908041807681192915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368603.P11908041807681192915

/-! ## A368603.P18182374491999122963

`∩[A302478(n+1), A325129(n+1)]`
-/

namespace A368603.P18182374491999122963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368603.P18182374491999122963

/-!
# A368604: Triangular array T, read by rows: T(n,k) = number of sums |x-y|+|y-z| = k, where x,y,z are in {1,2,...,n} and x < y and y > z.

The programs for A368604, there is no canonical definition to state claims against.
-/

/-! ## A368604.P16768030978346160993

`A337541(7*A003599(n+1))`
-/

namespace A368604.P16768030978346160993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337541 (7 * A003599 (n + 1)).toNat

end

end A368604.P16768030978346160993

/-! ## A368604.P15165997593267622653

`A051601(n)-A059841(A330452(n))`
-/

namespace A368604.P15165997593267622653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051601 n - A059841 (A330452 n).toNat

end

end A368604.P15165997593267622653

/-! ## A368604.P5942167622907694503

`A102572(A038719(n)²)`
-/

namespace A368604.P5942167622907694503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (A038719 n ^ 2).toNat

end

end A368604.P5942167622907694503

/-! ## A368604.P4248897019262582219

`A084558(A277256(n+1))`
-/

namespace A368604.P4248897019262582219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (A277256 (n + 1)).toNat

end

end A368604.P4248897019262582219

/-! ## A368604.P14953433649246909638

`A102572(A127535(n+1)²)`
-/

namespace A368604.P14953433649246909638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102572 (A127535 (n + 1) ^ 2).toNat

end

end A368604.P14953433649246909638

/-!
# A368607: Irregular triangular array T, read by rows: T(n,k) = number of sums |x-y| + |y-z| = k, where x,y,z are in {1,2,...,n} and x != y and y < z.

The programs for A368607, there is no canonical definition to state claims against.
-/

/-! ## A368607.P4446695429308807722

`A368158(n+1)-Δ[A368606(n+1)]`
-/

namespace A368607.P4446695429308807722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368158 (n + 1) - (f1 (n + 1) - f1 n)

end

end A368607.P4446695429308807722

/-! ## A368607.P11614725916955527757

`A368516(n+1)/2`
-/

namespace A368607.P11614725916955527757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368516 (n + 1) : ℚ) / 2

end

end A368607.P11614725916955527757

/-! ## A368607.P15439980494135147769

`round(A368516(Δ[n²]-n)/2)`
-/

namespace A368607.P15439980494135147769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A368516 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2)

end

end A368607.P15439980494135147769

/-! ## A368607.P699759676601509817

`A001281(A368516(n+1))`
-/

namespace A368607.P699759676601509817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A368516 (n + 1)).toNat

end

end A368607.P699759676601509817

/-! ## A368607.P13003415764703572109

`A004526(A368516(n+1)+1)`
-/

namespace A368607.P13003415764703572109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A368516 (n + 1) + 1).toNat

end

end A368607.P13003415764703572109

/-! ## A368607.P2254130718450914893

`A028242(A368516(n+1)+1)`
-/

namespace A368607.P2254130718450914893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A368516 (n + 1) + 1).toNat

end

end A368607.P2254130718450914893

/-! ## A368607.P14321592191157435777

`A008619(A368516(n+1)-1)`
-/

namespace A368607.P14321592191157435777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A368516 (n + 1) - 1).toNat

end

end A368607.P14321592191157435777

/-! ## A368607.P9245599020378776518

`A065033(A368516(n+1)-1)`
-/

namespace A368607.P9245599020378776518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A368516 (n + 1) - 1).toNat

end

end A368607.P9245599020378776518

/-! ## A368607.P10127861015971177963

`A065033(A057427(n)*A368516(n+1))`
-/

namespace A368607.P10127861015971177963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A057427 n * A368516 (n + 1)).toNat

end

end A368607.P10127861015971177963

/-! ## A368607.P1642657136296785569

`A289441(A368516(n+1)%A001043(n+1))`
-/

namespace A368607.P1642657136296785569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (Int.tmod (A368516 (n + 1)) (A001043 (n + 1))).toNat

end

end A368607.P1642657136296785569

/-!
# A368609: a(n) = A368945(A071561(n)).

The programs for A368609, there is no canonical definition to state claims against.
-/

/-! ## A368609.P7953226121585328868

`A368945(A071561(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368609.P7953226121585328868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368945 (A071561 (n + 1)).toNat

end

end A368609.P7953226121585328868

/-!
# A368610: a(n) = Sum_{k=1..n} pi(k) * ceiling(n/k).

The programs for A368610, the canonical program `A368610.P10805571174604425511` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368610 has offset 1).

The definition of A368610 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000720(#+1)*ceil((n+1)/(#+1))]` (program `A368610.P10805571174604425511`, by `A368610.P10805571174604425511.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368610.P14133368080470142529

`A092494(n+1)+A368612(n+1)`
-/

namespace A368610.P14133368080470142529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092494 (n + 1) + A368612 (n + 1)

end

end A368610.P14133368080470142529

namespace A368610

/-- `A092494(n+1)+A368612(n+1)` -/
def P14133368080470142529.Spec : Prop :=
  ∀ n, P14133368080470142529.a n = A368610 (n + 1)

end A368610

/-! ## A368610.P10805571174604425511

`∑{#}[n, A000720(#+1)*ceil((n+1)/(#+1))]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A368610

/-- `∑{#}[n, A000720(#+1)*ceil((n+1)/(#+1))]` -/
def P10805571174604425511.Spec : Prop :=
  ∀ n, P10805571174604425511.a n = A368610 (n + 1)

theorem P10805571174604425511.correct : P10805571174604425511.Spec := by
  intro n
  simp only [A368610, Nat.add_sub_cancel]

end A368610

/-! ## A368610.P12539630653234803959

`A368616(n+1)+A368611(n+1)`
-/

namespace A368610.P12539630653234803959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368616 (n + 1) + A368611 (n + 1)

end

end A368610.P12539630653234803959

namespace A368610

/-- `A368616(n+1)+A368611(n+1)` -/
def P12539630653234803959.Spec : Prop :=
  ∀ n, P12539630653234803959.a n = A368610 (n + 1)

end A368610

/-! ## A368610.P12579696804913360360

`A013939(n+1)+A368612(n+1)+A048865(n+1)`
-/

namespace A368610.P12579696804913360360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1) + (A368612 (n + 1) + A048865 (n + 1))

end

end A368610.P12579696804913360360

namespace A368610

/-- `A013939(n+1)+A368612(n+1)+A048865(n+1)` -/
def P12579696804913360360.Spec : Prop :=
  ∀ n, P12579696804913360360.a n = A368610 (n + 1)

end A368610

/-! ## A368610.P3548990705463982636

`A013939(n+1)+A368616(n+1)+A368613(n+1)`
-/

namespace A368610.P3548990705463982636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1) + (A368616 (n + 1) + A368613 (n + 1))

end

end A368610.P3548990705463982636

namespace A368610

/-- `A013939(n+1)+A368616(n+1)+A368613(n+1)` -/
def P3548990705463982636.Spec : Prop :=
  ∀ n, P3548990705463982636.a n = A368610 (n + 1)

end A368610

/-! ## A368610.P13500287014944044498

`A048865(n+1)+A368641(n+1)+A368611(n+1)`
-/

namespace A368610.P13500287014944044498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (n + 1) + (A368641 (n + 1) + A368611 (n + 1))

end

end A368610.P13500287014944044498

namespace A368610

/-- `A048865(n+1)+A368641(n+1)+A368611(n+1)` -/
def P13500287014944044498.Spec : Prop :=
  ∀ n, P13500287014944044498.a n = A368610 (n + 1)

end A368610

/-! ## A368610.P16964907879386543808

`A092494(n+1)+A368641(n+1)+A368613(n+1)`
-/

namespace A368610.P16964907879386543808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092494 (n + 1) + (A368641 (n + 1) + A368613 (n + 1))

end

end A368610.P16964907879386543808

namespace A368610

/-- `A092494(n+1)+A368641(n+1)+A368613(n+1)` -/
def P16964907879386543808.Spec : Prop :=
  ∀ n, P16964907879386543808.a n = A368610 (n + 1)

end A368610

/-! ## A368610.P3256640089807208284

`A046992(n+1)+A368611(n+1)-A062774(n+1)`
-/

namespace A368610.P3256640089807208284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1) + (A368611 (n + 1) - A062774 (n + 1))

end

end A368610.P3256640089807208284

namespace A368610

/-- `A046992(n+1)+A368611(n+1)-A062774(n+1)` -/
def P3256640089807208284.Spec : Prop :=
  ∀ n, P3256640089807208284.a n = A368610 (n + 1)

end A368610

/-!
# A368611: a(n) = Sum_{k=1..n} pi(k) * floor(n/k).

The programs for A368611, the canonical program `A368611.P16551445510251628333` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368611 has offset 1).

The definition of A368611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000720(#+1)*floor((n+1)/(#+1))]` (program `A368611.P16551445510251628333`, by `A368611.P16551445510251628333.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368611.P5679025590224871819

`A013939(n+1)+A368613(n+1)`
-/

namespace A368611.P5679025590224871819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1) + A368613 (n + 1)

end

end A368611.P5679025590224871819

namespace A368611

/-- `A013939(n+1)+A368613(n+1)` -/
def P5679025590224871819.Spec : Prop :=
  ∀ n, P5679025590224871819.a n = A368611 (n + 1)

end A368611

/-! ## A368611.P16551445510251628333

`∑{#}[n, A000720(#+1)*floor((n+1)/(#+1))]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A368611

/-- `∑{#}[n, A000720(#+1)*floor((n+1)/(#+1))]` -/
def P16551445510251628333.Spec : Prop :=
  ∀ n, P16551445510251628333.a n = A368611 (n + 1)

theorem P16551445510251628333.correct : P16551445510251628333.Spec := by
  intro n
  simp only [A368611, Nat.add_sub_cancel]

end A368611

/-! ## A368611.P6772497377963491420

`∑[A062774(n+1)]`
-/

namespace A368611.P6772497377963491420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368611.P6772497377963491420

namespace A368611

/-- `∑[A062774(n+1)]` -/
def P6772497377963491420.Spec : Prop :=
  ∀ n, P6772497377963491420.a n = A368611 (n + 1)

end A368611

/-! ## A368611.P16322410197345926819

`∑[∑{d}[n+1, A000720(#)]]`
-/

namespace A368611.P16322410197345926819
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000720 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368611.P16322410197345926819

namespace A368611

/-- `∑[∑{d}[n+1, A000720(#)]]` -/
def P16322410197345926819.Spec : Prop :=
  ∀ n, P16322410197345926819.a n = A368611 (n + 1)

end A368611

/-! ## A368611.P2631309381204059946

`∑[∑{d}[n+1, A036234(#)-1]]`
-/

namespace A368611.P2631309381204059946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A036234 d - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368611.P2631309381204059946

namespace A368611

/-- `∑[∑{d}[n+1, A036234(#)-1]]` -/
def P2631309381204059946.Spec : Prop :=
  ∀ n, P2631309381204059946.a n = A368611 (n + 1)

end A368611

/-! ## A368611.P8789930801479438519

`A368610(n+1)-A368616(n+1)`
-/

namespace A368611.P8789930801479438519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368610 (n + 1) - A368616 (n + 1)

end

end A368611.P8789930801479438519

namespace A368611

/-- `A368610(n+1)-A368616(n+1)` -/
def P8789930801479438519.Spec : Prop :=
  ∀ n, P8789930801479438519.a n = A368611 (n + 1)

end A368611

/-! ## A368611.P6600826848842176183

`∑[A334800(n+1)+A062799(n+1)]`
-/

namespace A368611.P6600826848842176183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334800 (n + 1) + A062799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368611.P6600826848842176183

namespace A368611

/-- `∑[A334800(n+1)+A062799(n+1)]` -/
def P6600826848842176183.Spec : Prop :=
  ∀ n, P6600826848842176183.a n = A368611 (n + 1)

end A368611

/-! ## A368611.P13358942602743086061

`∑[A334800(n+1)+∑{p}[n+1, A000005((n+1)/#)]]`
-/

namespace A368611.P13358942602743086061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334800 (n + 1) + ∑ p ∈ Nat.primeFactors (f2 n), A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368611.P13358942602743086061

namespace A368611

/-- `∑[A334800(n+1)+∑{p}[n+1, A000005((n+1)/#)]]` -/
def P13358942602743086061.Spec : Prop :=
  ∀ n, P13358942602743086061.a n = A368611 (n + 1)

end A368611

/-! ## A368611.P4551461369557968323

`A013939(n+1)+A368612(n+1)-A368641(n+1)`
-/

namespace A368611.P4551461369557968323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1) + (A368612 (n + 1) - A368641 (n + 1))

end

end A368611.P4551461369557968323

namespace A368611

/-- `A013939(n+1)+A368612(n+1)-A368641(n+1)` -/
def P4551461369557968323.Spec : Prop :=
  ∀ n, P4551461369557968323.a n = A368611 (n + 1)

end A368611

/-! ## A368611.P13509477181883438590

`A368610(n+1)-(A368641(n+1)+A048865(n+1))`
-/

namespace A368611.P13509477181883438590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368610 (n + 1) - (A368641 (n + 1) + A048865 (n + 1))

end

end A368611.P13509477181883438590

namespace A368611

/-- `A368610(n+1)-(A368641(n+1)+A048865(n+1))` -/
def P13509477181883438590.Spec : Prop :=
  ∀ n, P13509477181883438590.a n = A368611 (n + 1)

end A368611

/-! ## A368611.P8279911759051289939

`A092494(n+1)+A368612(n+1)-A368616(n+1)`
-/

namespace A368611.P8279911759051289939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092494 (n + 1) + (A368612 (n + 1) - A368616 (n + 1))

end

end A368611.P8279911759051289939

namespace A368611

/-- `A092494(n+1)+A368612(n+1)-A368616(n+1)` -/
def P8279911759051289939.Spec : Prop :=
  ∀ n, P8279911759051289939.a n = A368611 (n + 1)

end A368611

/-! ## A368611.P2371572942220690063

`A368610(n+2)-A046992(n+2)`
-/

namespace A368611.P2371572942220690063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368610 (n + 2) - A046992 (n + 2)

end

end A368611.P2371572942220690063

namespace A368611

/-- `A368610(n+2)-A046992(n+2)` -/
def P2371572942220690063.Spec : Prop :=
  ∀ n, P2371572942220690063.a n = A368611 (n + 1)

end A368611

/-! ## A368611.P9494660119960543854

`A013939(n+1)+A368612(n+2)-A046992(n+1)`
-/

namespace A368611.P9494660119960543854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1) + (A368612 (n + 2) - A046992 (n + 1))

end

end A368611.P9494660119960543854

namespace A368611

/-- `A013939(n+1)+A368612(n+2)-A046992(n+1)` -/
def P9494660119960543854.Spec : Prop :=
  ∀ n, P9494660119960543854.a n = A368611 (n + 1)

end A368611

/-! ## A368611.P3646379675822886910

`A368613(n+1)+A092494(n+2)-A000720(n+2)`
-/

namespace A368611.P3646379675822886910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368613 (n + 1) + (A092494 (n + 2) - A000720 (n + 2))

end

end A368611.P3646379675822886910

namespace A368611

/-- `A368613(n+1)+A092494(n+2)-A000720(n+2)` -/
def P3646379675822886910.Spec : Prop :=
  ∀ n, P3646379675822886910.a n = A368611 (n + 1)

end A368611

/-! ## A368611.P14576447765879975888

`A092494(n+2)+A368612(n+2)-A046992(n+2)`
-/

namespace A368611.P14576447765879975888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092494 (n + 2) + (A368612 (n + 2) - A046992 (n + 2))

end

end A368611.P14576447765879975888

namespace A368611

/-- `A092494(n+2)+A368612(n+2)-A046992(n+2)` -/
def P14576447765879975888.Spec : Prop :=
  ∀ n, P14576447765879975888.a n = A368611 (n + 1)

end A368611

/-!
# A368612: a(n) = Sum_{k=2..n} pi(k-1) * ceiling(n/k).

The programs for A368612, the canonical program `A368612.P17291396393129314388` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368612 has offset 1).

The definition of A368612 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A000720(#+1)*ceil((n+1)/(#+2))]` (program `A368612.P17291396393129314388`, by `A368612.P17291396393129314388.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368612.P6816572192409665287

`A368610(n+1)-A092494(n+1)`
-/

namespace A368612.P6816572192409665287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368610 (n + 1) - A092494 (n + 1)

end

end A368612.P6816572192409665287

namespace A368612

/-- `A368610(n+1)-A092494(n+1)` -/
def P6816572192409665287.Spec : Prop :=
  ∀ n, P6816572192409665287.a n = A368612 (n + 1)

end A368612

/-! ## A368612.P17291396393129314388

`∑{#}[n-1, A000720(#+1)*ceil((n+1)/(#+2))]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A368612

/-- `∑{#}[n-1, A000720(#+1)*ceil((n+1)/(#+2))]` -/
def P17291396393129314388.Spec : Prop :=
  ∀ n, P17291396393129314388.a n = A368612 (n + 1)

theorem P17291396393129314388.correct : P17291396393129314388.Spec := by
  intro n
  simp only [A368612, Nat.add_sub_cancel]

end A368612

/-! ## A368612.P7996746472473035764

`A368641(n+1)+A368613(n+1)`
-/

namespace A368612.P7996746472473035764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368641 (n + 1) + A368613 (n + 1)

end

end A368612.P7996746472473035764

namespace A368612

/-- `A368641(n+1)+A368613(n+1)` -/
def P7996746472473035764.Spec : Prop :=
  ∀ n, P7996746472473035764.a n = A368612 (n + 1)

end A368612

/-! ## A368612.P2134134559129696898

`A368610(n+1)-(A048865(n+1)+A013939(n+1))`
-/

namespace A368612.P2134134559129696898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368610 (n + 1) - (A048865 (n + 1) + A013939 (n + 1))

end

end A368612.P2134134559129696898

namespace A368612

/-- `A368610(n+1)-(A048865(n+1)+A013939(n+1))` -/
def P2134134559129696898.Spec : Prop :=
  ∀ n, P2134134559129696898.a n = A368612 (n + 1)

end A368612

/-! ## A368612.P16476015977870889055

`A368611(n+1)+A368641(n+1)-A013939(n+1)`
-/

namespace A368612.P16476015977870889055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368611 (n + 1) + (A368641 (n + 1) - A013939 (n + 1))

end

end A368612.P16476015977870889055

namespace A368612

/-- `A368611(n+1)+A368641(n+1)-A013939(n+1)` -/
def P16476015977870889055.Spec : Prop :=
  ∀ n, P16476015977870889055.a n = A368612 (n + 1)

end A368612

/-! ## A368612.P2715926944391473872

`A368613(n+1)+A368616(n+1)-A048865(n+1)`
-/

namespace A368612.P2715926944391473872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368613 (n + 1) + (A368616 (n + 1) - A048865 (n + 1))

end

end A368612.P2715926944391473872

namespace A368612

/-- `A368613(n+1)+A368616(n+1)-A048865(n+1)` -/
def P2715926944391473872.Spec : Prop :=
  ∀ n, P2715926944391473872.a n = A368612 (n + 1)

end A368612

/-!
# A368613: a(n) = Sum_{k=2..n} pi(k-1) * floor(n/k).

The programs for A368613, the canonical program `A368613.P10186010355465194779` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368613 has offset 1).

The definition of A368613 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A000720(#+1)*floor((n+1)/(#+2))]` (program `A368613.P10186010355465194779`, by `A368613.P10186010355465194779.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368613.P1521130662845117134

`A368611(n+1)-A013939(n+1)`
-/

namespace A368613.P1521130662845117134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368611 (n + 1) - A013939 (n + 1)

end

end A368613.P1521130662845117134

namespace A368613

/-- `A368611(n+1)-A013939(n+1)` -/
def P1521130662845117134.Spec : Prop :=
  ∀ n, P1521130662845117134.a n = A368613 (n + 1)

end A368613

/-! ## A368613.P10186010355465194779

`∑{#}[n-1, A000720(#+1)*floor((n+1)/(#+2))]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A368613

/-- `∑{#}[n-1, A000720(#+1)*floor((n+1)/(#+2))]` -/
def P10186010355465194779.Spec : Prop :=
  ∀ n, P10186010355465194779.a n = A368613 (n + 1)

theorem P10186010355465194779.correct : P10186010355465194779.Spec := by
  intro n
  simp only [A368613, Nat.add_sub_cancel]

end A368613

/-! ## A368613.P6106416453923146245

`A368612(n+1)-A368641(n+1)`
-/

namespace A368613.P6106416453923146245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368612 (n + 1) - A368641 (n + 1)

end

end A368613.P6106416453923146245

namespace A368613

/-- `A368612(n+1)-A368641(n+1)` -/
def P6106416453923146245.Spec : Prop :=
  ∀ n, P6106416453923146245.a n = A368613 (n + 1)

end A368613

/-! ## A368613.P17091646562770243678

`∑[A062774(n+1)-A001221(n+1)]`
-/

namespace A368613.P17091646562770243678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062774 (n + 1) - A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368613.P17091646562770243678

namespace A368613

/-- `∑[A062774(n+1)-A001221(n+1)]` -/
def P17091646562770243678.Spec : Prop :=
  ∀ n, P17091646562770243678.a n = A368613 (n + 1)

end A368613

/-! ## A368613.P12149982169367583427

`A368610(n+1)-(A368641(n+1)+A092494(n+1))`
-/

namespace A368613.P12149982169367583427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368610 (n + 1) - (A368641 (n + 1) + A092494 (n + 1))

end

end A368613.P12149982169367583427

namespace A368613

/-- `A368610(n+1)-(A368641(n+1)+A092494(n+1))` -/
def P12149982169367583427.Spec : Prop :=
  ∀ n, P12149982169367583427.a n = A368613 (n + 1)

end A368613

/-! ## A368613.P13069066561477589766

`A368612(n+2)-A046992(n+1)`
-/

namespace A368613.P13069066561477589766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368612 (n + 2) - A046992 (n + 1)

end

end A368613.P13069066561477589766

namespace A368613

/-- `A368612(n+2)-A046992(n+1)` -/
def P13069066561477589766.Spec : Prop :=
  ∀ n, P13069066561477589766.a n = A368613 (n + 1)

end A368613

/-! ## A368613.P8184439307637573263

`A368611(n+1)+A000720(n+2)-A092494(n+2)`
-/

namespace A368613.P8184439307637573263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368611 (n + 1) + (A000720 (n + 2) - A092494 (n + 2))

end

end A368613.P8184439307637573263

namespace A368613

/-- `A368611(n+1)+A000720(n+2)-A092494(n+2)` -/
def P8184439307637573263.Spec : Prop :=
  ∀ n, P8184439307637573263.a n = A368613 (n + 1)

end A368613

/-! ## A368613.P2315567204500174334

`A368610(n+2)-(A092494(n+2)+A046992(n+1))`
-/

namespace A368613.P2315567204500174334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368610 (n + 2) - (A092494 (n + 2) + A046992 (n + 1))

end

end A368613.P2315567204500174334

namespace A368613

/-- `A368610(n+2)-(A092494(n+2)+A046992(n+1))` -/
def P2315567204500174334.Spec : Prop :=
  ∀ n, P2315567204500174334.a n = A368613 (n + 1)

end A368613

/-!
# A368614: Number of n-step self-avoiding walks on a 2D square lattice where each visited lattice point is either a neighbor of the first visited lattice point, else the first visited lattice point is directly visible (cf. A358036) from the lattice point when it is first visited.

The programs for A368614, there is no canonical definition to state claims against.
-/

/-! ## A368614.P6253634551083057828

`A080604(A126645(n+1))`
-/

namespace A368614.P6253634551083057828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080604 (A126645 (n + 1)).toNat

end

end A368614.P6253634551083057828

/-! ## A368614.P12944629666407937908

`A087261(A341858(n+1))`
-/

namespace A368614.P12944629666407937908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087261 (A341858 (n + 1)).toNat

end

end A368614.P12944629666407937908

/-! ## A368614.P10799606639278487651

`4*A095923(A033501(n+1))`
-/

namespace A368614.P10799606639278487651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A095923 (A033501 (n + 1)).toNat

end

end A368614.P10799606639278487651

/-!
# A368616: a(n) = Sum_{k=1..n} pi(k) * (ceiling(n/k) - floor(n/k)).

The programs for A368616, the canonical program `A368616.P1532469686188965116` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368616 has offset 1).

The definition of A368616 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A000720(#+1)*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]` (program `A368616.P1532469686188965116`, by `A368616.P1532469686188965116.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368616.P6518794454505754323

`A368641(n+1)+A048865(n+1)`
-/

namespace A368616.P6518794454505754323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368641 (n + 1) + A048865 (n + 1)

end

end A368616.P6518794454505754323

namespace A368616

/-- `A368641(n+1)+A048865(n+1)` -/
def P6518794454505754323.Spec : Prop :=
  ∀ n, P6518794454505754323.a n = A368616 (n + 1)

end A368616

/-! ## A368616.P2512839611313928927

`A046992(n+1)-A062774(n+1)`
-/

namespace A368616.P2512839611313928927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1) - A062774 (n + 1)

end

end A368616.P2512839611313928927

namespace A368616

/-- `A046992(n+1)-A062774(n+1)` -/
def P2512839611313928927.Spec : Prop :=
  ∀ n, P2512839611313928927.a n = A368616 (n + 1)

end A368616

/-! ## A368616.P5984927567513005127

`A368610(n+1)-A368611(n+1)`
-/

namespace A368616.P5984927567513005127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368610 (n + 1) - A368611 (n + 1)

end

end A368616.P5984927567513005127

namespace A368616

/-- `A368610(n+1)-A368611(n+1)` -/
def P5984927567513005127.Spec : Prop :=
  ∀ n, P5984927567513005127.a n = A368616 (n + 1)

end A368616

/-! ## A368616.P1532469686188965116

`∑{#}[n, A000720(#+1)*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A368616

/-- `∑{#}[n, A000720(#+1)*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]` -/
def P1532469686188965116.Spec : Prop :=
  ∀ n, P1532469686188965116.a n = A368616 (n + 1)

theorem P1532469686188965116.correct : P1532469686188965116.Spec := by
  intro n
  simp only [A368616, Nat.add_sub_cancel]

end A368616

/-! ## A368616.P6410339429542558145

`∑[A000720(n+1)]-A062774(n+1)`
-/

namespace A368616.P6410339429542558145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A062774 (n + 1)

end

end A368616.P6410339429542558145

namespace A368616

/-- `∑[A000720(n+1)]-A062774(n+1)` -/
def P6410339429542558145.Spec : Prop :=
  ∀ n, P6410339429542558145.a n = A368616 (n + 1)

end A368616

/-! ## A368616.P15382079886572900989

`A092494(n+1)+A368641(n+1)-A013939(n+1)`
-/

namespace A368616.P15382079886572900989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092494 (n + 1) + (A368641 (n + 1) - A013939 (n + 1))

end

end A368616.P15382079886572900989

namespace A368616

/-- `A092494(n+1)+A368641(n+1)-A013939(n+1)` -/
def P15382079886572900989.Spec : Prop :=
  ∀ n, P15382079886572900989.a n = A368616 (n + 1)

end A368616

/-! ## A368616.P13678901255144410423

`A092494(n+1)+A368612(n+1)-A368611(n+1)`
-/

namespace A368616.P13678901255144410423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092494 (n + 1) + (A368612 (n + 1) - A368611 (n + 1))

end

end A368616.P13678901255144410423

namespace A368616

/-- `A092494(n+1)+A368612(n+1)-A368611(n+1)` -/
def P13678901255144410423.Spec : Prop :=
  ∀ n, P13678901255144410423.a n = A368616 (n + 1)

end A368616

/-! ## A368616.P1111117701393859386

`A368610(n+1)+A046992(n+2)-A368610(n+2)`
-/

namespace A368616.P1111117701393859386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368610 (n + 1) + (A046992 (n + 2) - A368610 (n + 2))

end

end A368616.P1111117701393859386

namespace A368616

/-- `A368610(n+1)+A046992(n+2)-A368610(n+2)` -/
def P1111117701393859386.Spec : Prop :=
  ∀ n, P1111117701393859386.a n = A368616 (n + 1)

end A368616

/-!
# A368624: a(n) = Sum_{k = 1..n} (-1)^(n+k) * gcd(2*k, n).

The programs for A368624, the canonical program `A368624.P13349729406789641025` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368624 has offset 1).

The definition of A368624 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, (-1)^(n+1+#+1)*gcd(2*(#+1), n+1)]` (program `A368624.P13349729406789641025`, by `A368624.P13349729406789641025.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368624.P13349729406789641025

`∑{#}[n, (-1)^(n+1+#+1)*gcd(2*(#+1), n+1)]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368624

/-- `∑{#}[n, (-1)^(n+1+#+1)*gcd(2*(#+1), n+1)]` -/
def P13349729406789641025.Spec : Prop :=
  ∀ n, P13349729406789641025.a n = A368624 (n + 1)

theorem P13349729406789641025.correct : P13349729406789641025.Spec := by
  intro n
  simp only [A368624, Nat.add_sub_cancel]

end A368624

/-!
# A368625: Characteristic function of non-refactorable numbers (A159973).

The programs for A368625, the canonical program `A368625.P10862241457077750444` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368625 has offset 1).

The definition of A368625 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368625.P10862241457077750444

`1-A336040(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A368625

/-- `1-A336040(n+1)` -/
def P10862241457077750444.Spec : Prop :=
  ∀ n, P10862241457077750444.a n = A368625 (n + 1)

theorem P10862241457077750444.correct : P10862241457077750444.Spec := by
  intro n
  simp only [A368625, Nat.add_sub_cancel]

end A368625

/-! ## A368625.P10027466066000561788

`(n+2)%A124332(n+1)`
-/

namespace A368625.P10027466066000561788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A124332 (n + 1))

end

end A368625.P10027466066000561788

namespace A368625

/-- `(n+2)%A124332(n+1)` -/
def P10027466066000561788.Spec : Prop :=
  ∀ n, P10027466066000561788.a n = A368625 (n + 1)

end A368625

/-! ## A368625.P4060559401305503117

`1-floor(acot(A054008(n+1)))`
-/

namespace A368625.P4060559401305503117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊SequenceMachineLib.acot (A054008 (n + 1) : ℝ)⌋

end

end A368625.P4060559401305503117

namespace A368625

/-- `1-floor(acot(A054008(n+1)))` -/
def P4060559401305503117.Spec : Prop :=
  ∀ n, P4060559401305503117.a n = A368625 (n + 1)

end A368625

/-! ## A368625.P3292120807285486825

`C(n, C(A122377(n+1), n))`
-/

namespace A368625.P3292120807285486825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose (A122377 (n + 1)).toNat n)

end

end A368625.P3292120807285486825

namespace A368625

/-- `C(n, C(A122377(n+1), n))` -/
def P3292120807285486825.Spec : Prop :=
  ∀ n, (P3292120807285486825.a n : ℤ) = A368625 (n + 1)

end A368625

/-! ## A368625.P14261640366209692813

`1-A000007(A054008(n+1))`
-/

namespace A368625.P14261640366209692813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000007 (A054008 (n + 1)).toNat

end

end A368625.P14261640366209692813

namespace A368625

/-- `1-A000007(A054008(n+1))` -/
def P14261640366209692813.Spec : Prop :=
  ∀ n, P14261640366209692813.a n = A368625 (n + 1)

end A368625

/-! ## A368625.P3649765294087756212

`A057427(A298734(n+1)-1)`
-/

namespace A368625.P3649765294087756212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A298734 (n + 1) - 1).toNat

end

end A368625.P3649765294087756212

namespace A368625

/-- `A057427(A298734(n+1)-1)` -/
def P3649765294087756212.Spec : Prop :=
  ∀ n, P3649765294087756212.a n = A368625 (n + 1)

end A368625

/-! ## A368625.P6561136491796283753

`A334762(n+1)-A078709(n+1)`
-/

namespace A368625.P6561136491796283753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334762 (n + 1) - A078709 (n + 1)

end

end A368625.P6561136491796283753

namespace A368625

/-- `A334762(n+1)-A078709(n+1)` -/
def P6561136491796283753.Spec : Prop :=
  ∀ n, P6561136491796283753.a n = A368625 (n + 1)

end A368625

/-! ## A368625.P7584633151513220511

`∑{d}[n+1, A008683(#)*A349658((n+1)/#)]`
-/

namespace A368625.P7584633151513220511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A349658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368625.P7584633151513220511

namespace A368625

/-- `∑{d}[n+1, A008683(#)*A349658((n+1)/#)]` -/
def P7584633151513220511.Spec : Prop :=
  ∀ n, P7584633151513220511.a n = A368625 (n + 1)

end A368625

/-! ## A368625.P2405836699233687330

`A054008(n+1)/(A336040(n+1)+A054008(n+1))`
-/

namespace A368625.P2405836699233687330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054008 (n + 1) : ℚ) / (A336040 (n + 1) + A054008 (n + 1) : ℚ)

end

end A368625.P2405836699233687330

namespace A368625

/-- `A054008(n+1)/(A336040(n+1)+A054008(n+1))` -/
def P2405836699233687330.Spec : Prop :=
  ∀ n, P2405836699233687330.a n = (A368625 (n + 1) : ℚ)

end A368625

/-! ## A368625.P14810617087456137617

`(A161655(n+1)-A161654(n+1))/A000005(n+1)`
-/

namespace A368625.P14810617087456137617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161655 (n + 1) - A161654 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A368625.P14810617087456137617

namespace A368625

/-- `(A161655(n+1)-A161654(n+1))/A000005(n+1)` -/
def P14810617087456137617.Spec : Prop :=
  ∀ n, P14810617087456137617.a n = (A368625 (n + 1) : ℚ)

end A368625

/-! ## A368625.P5677866257743435040

`A174692(n)%A090387(n+1)`
-/

namespace A368625.P5677866257743435040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A174692 n) (A090387 (n + 1))

end

end A368625.P5677866257743435040

namespace A368625

/-- `A174692(n)%A090387(n+1)` -/
def P5677866257743435040.Spec : Prop :=
  ∀ n, P5677866257743435040.a n = A368625 (n + 1)

end A368625

/-! ## A368625.P11842358595816081064

`A075059(n)%A090387(n+1)`
-/

namespace A368625.P11842358595816081064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075059 n) (A090387 (n + 1))

end

end A368625.P11842358595816081064

namespace A368625

/-- `A075059(n)%A090387(n+1)` -/
def P11842358595816081064.Spec : Prop :=
  ∀ n, P11842358595816081064.a n = A368625 (n + 1)

end A368625

/-! ## A368625.P7372738462673463028

`A070858(n+1)%A090387(n+1)`
-/

namespace A368625.P7372738462673463028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070858 (n + 1)) (A090387 (n + 1))

end

end A368625.P7372738462673463028

namespace A368625

/-- `A070858(n+1)%A090387(n+1)` -/
def P7372738462673463028.Spec : Prop :=
  ∀ n, P7372738462673463028.a n = A368625 (n + 1)

end A368625

/-! ## A368625.P4740773954282012090

`A398894(n+1)%A090387(n+1)`
-/

namespace A368625.P4740773954282012090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A398894 (n + 1)) (A090387 (n + 1))

end

end A368625.P4740773954282012090

namespace A368625

/-- `A398894(n+1)%A090387(n+1)` -/
def P4740773954282012090.Spec : Prop :=
  ∀ n, P4740773954282012090.a n = A368625 (n + 1)

end A368625

/-! ## A368625.P14939775186134991116

`A104189(n+1)%A090387(n+1)`
-/

namespace A368625.P14939775186134991116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104189 (n + 1)) (A090387 (n + 1))

end

end A368625.P14939775186134991116

namespace A368625

/-- `A104189(n+1)%A090387(n+1)` -/
def P14939775186134991116.Spec : Prop :=
  ∀ n, P14939775186134991116.a n = A368625 (n + 1)

end A368625

/-! ## A368625.P258549490503683478

`A172196(n)%A090387(n+1)`
-/

namespace A368625.P258549490503683478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172196 n) (A090387 (n + 1))

end

end A368625.P258549490503683478

namespace A368625

/-- `A172196(n)%A090387(n+1)` -/
def P258549490503683478.Spec : Prop :=
  ∀ n, P258549490503683478.a n = A368625 (n + 1)

end A368625

/-! ## A368625.P6196884731665381304

`A237622(n)%A090387(n+1)`
-/

namespace A368625.P6196884731665381304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237622 n) (A090387 (n + 1))

end

end A368625.P6196884731665381304

namespace A368625

/-- `A237622(n)%A090387(n+1)` -/
def P6196884731665381304.Spec : Prop :=
  ∀ n, P6196884731665381304.a n = A368625 (n + 1)

end A368625

/-! ## A368625.P11618019879391120629

`A361705(n)%A090387(n+1)`
-/

namespace A368625.P11618019879391120629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361705 n) (A090387 (n + 1))

end

end A368625.P11618019879391120629

namespace A368625

/-- `A361705(n)%A090387(n+1)` -/
def P11618019879391120629.Spec : Prop :=
  ∀ n, P11618019879391120629.a n = A368625 (n + 1)

end A368625

/-! ## A368625.P10418517488453489754

`A361675(n)%A090387(n+1)`
-/

namespace A368625.P10418517488453489754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361675 n) (A090387 (n + 1))

end

end A368625.P10418517488453489754

namespace A368625

/-- `A361675(n)%A090387(n+1)` -/
def P10418517488453489754.Spec : Prop :=
  ∀ n, P10418517488453489754.a n = A368625 (n + 1)

end A368625

/-! ## A368625.P3448106803366401372

`A177848(n+1)%A090387(n+1)`
-/

namespace A368625.P3448106803366401372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177848 (n + 1)) (A090387 (n + 1))

end

end A368625.P3448106803366401372

namespace A368625

/-- `A177848(n+1)%A090387(n+1)` -/
def P3448106803366401372.Spec : Prop :=
  ∀ n, P3448106803366401372.a n = A368625 (n + 1)

end A368625

/-!
# A368626: Expansion of g.f. A(x) satisfying A(x) = 1 + x*(A(x)^2 - A(-x)^2)/2 + x*(A(x)^3 + A(-x)^3)/2.

The programs for A368626, there is no canonical definition to state claims against.
-/

/-! ## A368626.P4534595551744736648

`A112632(3*n+1)*A243494(A212140(n+1))`
-/

namespace A368626.P4534595551744736648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112632 (3 * n + 1) * A243494 (A212140 (n + 1)).toNat

end

end A368626.P4534595551744736648

/-! ## A368626.P8068828943923260639

`A316313(A275964(n)+A000079(n))`
-/

namespace A368626.P8068828943923260639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316313 (A275964 n + A000079 n).toNat

end

end A368626.P8068828943923260639

/-!
# A368627: Expansion of g.f. A(x) satisfying A(x) = 1 + x*(A(x)^2 + A(-x)^2)/2 + x*(A(x)^3 - A(-x)^3)/2.

The programs for A368627, there is no canonical definition to state claims against.
-/

/-! ## A368627.P15648402710910312881

`A089190(A148548(n))`
-/

namespace A368627.P15648402710910312881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089190 (A148548 n).toNat

end

end A368627.P15648402710910312881

/-! ## A368627.P9172341660157756838

`A130942(A306042(n))`
-/

namespace A368627.P9172341660157756838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130942 (A306042 n).toNat

end

end A368627.P9172341660157756838

/-!
# A368628: Expansion of g.f. A(x) satisfying A(x) = 1 + x*(A(x)^2 - A(-x)^2)/2 + x*(A(x)^4 + A(-x)^4)/2.

The programs for A368628, there is no canonical definition to state claims against.
-/

/-! ## A368628.P11106870156889351310

`A349801(n)+A056251(A003242(n))`
-/

namespace A368628.P11106870156889351310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349801 n + A056251 (A003242 n).toNat

end

end A368628.P11106870156889351310

/-! ## A368628.P12985277103183612376

`A289813(A320322(n)+A143415(n))`
-/

namespace A368628.P12985277103183612376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289813 (A320322 n + A143415 n).toNat

end

end A368628.P12985277103183612376

/-!
# A368629: Expansion of g.f. A(x) satisfying A(x) = 1 + x*(A(x)^2 + A(-x)^2)/2 + x*(A(x)^4 - A(-x)^4)/2.

The programs for A368629, there is no canonical definition to state claims against.
-/

/-! ## A368629.P10379253337460641184

`A354125(A316313(n+1)^n)`
-/

namespace A368629.P10379253337460641184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354125 (A316313 (n + 1) ^ n).toNat

end

end A368629.P10379253337460641184

/-! ## A368629.P8273677231237709909

`A007661(n)*A181819(A001142(n))`
-/

namespace A368629.P8273677231237709909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007661 n * A181819 (A001142 n).toNat

end

end A368629.P8273677231237709909

/-!
# A368630: Expansion of e.g.f. A(x) satisfying A(x/A(x)^2) = exp(x*A(x)).

The programs for A368630, there is no canonical definition to state claims against.
-/

/-! ## A368630.P6485067785302683324

`A046660(n+1)+A006083(A336578(n))`
-/

namespace A368630.P6485067785302683324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (n + 1) + A006083 (A336578 n).toNat

end

end A368630.P6485067785302683324

/-!
# A368631: Expansion of e.g.f. A(x) satisfying A(x/A(x)) = exp(x*A(x)^2).

The programs for A368631, there is no canonical definition to state claims against.
-/

/-! ## A368631.P5197129530485899217

`A220181(n)+A070205(A096671(n))`
-/

namespace A368631.P5197129530485899217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220181 n + A070205 (A096671 n).toNat

end

end A368631.P5197129530485899217

/-!
# A368632: Expansion of e.g.f. A(x) satisfying A(x/A(x)^2) = exp(x*A(x)^2).

The programs for A368632, there is no canonical definition to state claims against.
-/

/-! ## A368632.P4453491422527184434

`A333489(A266734(n)+A048809(n+5))`
-/

namespace A368632.P4453491422527184434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333489 (A266734 n + A048809 (n + 5)).toNat

end

end A368632.P4453491422527184434

/-!
# A368633: Expansion of g.f. A(x) satisfying A(x) = 1 + 2*x*A(x)^2 - x*A(-x)^2.

The programs for A368633, there is no canonical definition to state claims against.
-/

/-! ## A368633.P15925617091993615320

`A341194(a(n-1)+3)` with `a(0)=1, a(1)=1`
-/

namespace A368633.P15925617091993615320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A341194 (a (n - 1) + 3).toNat

end

end A368633.P15925617091993615320

/-!
# A368634: Expansion of g.f. A(x) satisfying A(x) = 1 + x*(3*A(x)^2 - A(-x)^2)/2.

The programs for A368634, there is no canonical definition to state claims against.
-/

/-! ## A368634.P9995153924409391552

`A330217(A372540(n)+A005043(n))`
-/

namespace A368634.P9995153924409391552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330217 (A372540 n + A005043 n).toNat

end

end A368634.P9995153924409391552

/-!
# A368635: Expansion of g.f. A(x) satisfying A(x) = 1 + 3*x*A(x)^2 - 2*x*A(-x)^2.

The programs for A368635, there is no canonical definition to state claims against.
-/

/-! ## A368635.P14037683916706108383

`A179069(A024988(n))`
-/

namespace A368635.P14037683916706108383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179069 (A024988 n).toNat

end

end A368635.P14037683916706108383

/-!
# A368638: a(n) is the number of triangular partitions whose Young diagram fits inside a square of side n.

The programs for A368638, the canonical program `A368638.P4766696637105011760` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368638 has offset 0).

The definition of A368638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368638.P17895984335423066018

`∑[A103116(n)]+1`
-/

namespace A368638.P17895984335423066018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A368638.P17895984335423066018

namespace A368638

/-- `∑[A103116(n)]+1` -/
def P17895984335423066018.Spec : Prop :=
  ∀ n, P17895984335423066018.a n = A368638 n

end A368638

/-! ## A368638.P5671601937908300194

`∑[A005598(n)]-n`
-/

namespace A368638.P5671601937908300194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A368638.P5671601937908300194

namespace A368638

/-- `∑[A005598(n)]-n` -/
def P5671601937908300194.Spec : Prop :=
  ∀ n, P5671601937908300194.a n = A368638 n

end A368638

/-! ## A368638.P15914885294333350386

`∑[∑[A002088(n)]]+1`
-/

namespace A368638.P15914885294333350386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A368638.P15914885294333350386

namespace A368638

/-- `∑[∑[A002088(n)]]+1` -/
def P15914885294333350386.Spec : Prop :=
  ∀ n, P15914885294333350386.a n = A368638 n

end A368638

/-! ## A368638.P2150943897975431451

`∑[∑[A005728(n)-1]]+1`
-/

namespace A368638.P2150943897975431451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A368638.P2150943897975431451

namespace A368638

/-- `∑[∑[A005728(n)-1]]+1` -/
def P2150943897975431451.Spec : Prop :=
  ∀ n, P2150943897975431451.a n = A368638 n

end A368638

/-! ## A368638.P4766696637105011760

`∑[A135342(n+1)]-2*n`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A368638

/-- `∑[A135342(n+1)]-2*n` -/
def P4766696637105011760.Spec : Prop :=
  ∀ n, P4766696637105011760.a n = A368638 n

theorem P4766696637105011760.correct : P4766696637105011760.Spec := by
  intro n
  simp only [A368638]

end A368638

/-!
# A368639: Number of lattice paths from (0,0) to (n,n) using steps (i,j) with i,j>=0 and gcd(i,j)=1.

The programs for A368639, there is no canonical definition to state claims against.
-/

/-! ## A368639.P8081541215757024570

`A362242(∑[4*n])`
-/

namespace A368639.P8081541215757024570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362242 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A368639.P8081541215757024570

/-! ## A368639.P4150417444232628487

`A109613(A362242((n+1)*2*n))`
-/

namespace A368639.P4150417444232628487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A362242 ((n + 1) * (2 * n))).toNat

end

end A368639.P4150417444232628487

/-!
# A368640: a(0) = 2; for n > 0, a(n) is the smallest prime that differs from the next prime by 2n and is not part of a run of 3 or more consecutive primes in arithmetic progression, or -1 if no such prime exists.

The programs for A368640, there is no canonical definition to state claims against.
-/

/-! ## A368640.P6631706045667937536

`or(A000230(n), A007652(A112502(n)))`
-/

namespace A368640.P6631706045667937536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000230 n) (A007652 (A112502 n).toNat)

end

end A368640.P6631706045667937536

/-! ## A368640.P3060391354131838653

`or(A000230(n), A285721(A063418(n)))`
-/

namespace A368640.P3060391354131838653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000230 n) (A285721 (A063418 n).toNat)

end

end A368640.P3060391354131838653

/-!
# A368641: a(n) = Sum_{k=2..n} pi(k-1) * (ceiling(n/k) - floor(n/k)).

The programs for A368641, the canonical program `A368641.P1573491388468461906` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368641 has offset 1).

The definition of A368641 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, A000720(#+1)*(ceil((n+1)/(#+2))-floor((n+1)/(#+2)))]` (program `A368641.P1573491388468461906`, by `A368641.P1573491388468461906.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368641.P10387616186859536638

`A368616(n+1)-A048865(n+1)`
-/

namespace A368641.P10387616186859536638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368616 (n + 1) - A048865 (n + 1)

end

end A368641.P10387616186859536638

namespace A368641

/-- `A368616(n+1)-A048865(n+1)` -/
def P10387616186859536638.Spec : Prop :=
  ∀ n, P10387616186859536638.a n = A368641 (n + 1)

end A368641

/-! ## A368641.P1387741873073176465

`A368612(n+1)-A368613(n+1)`
-/

namespace A368641.P1387741873073176465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368612 (n + 1) - A368613 (n + 1)

end

end A368641.P1387741873073176465

namespace A368641

/-- `A368612(n+1)-A368613(n+1)` -/
def P1387741873073176465.Spec : Prop :=
  ∀ n, P1387741873073176465.a n = A368641 (n + 1)

end A368641

/-! ## A368641.P1573491388468461906

`∑{#}[n-1, A000720(#+1)*(ceil((n+1)/(#+2))-floor((n+1)/(#+2)))]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A368641

/-- `∑{#}[n-1, A000720(#+1)*(ceil((n+1)/(#+2))-floor((n+1)/(#+2)))]` -/
def P1573491388468461906.Spec : Prop :=
  ∀ n, P1573491388468461906.a n = A368641 (n + 1)

theorem P1573491388468461906.correct : P1573491388468461906.Spec := by
  intro n
  simp only [A368641, Nat.add_sub_cancel]

end A368641

/-! ## A368641.P1197781341364717928

`A013939(n+1)+A368612(n+1)-A368611(n+1)`
-/

namespace A368641.P1197781341364717928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1) + (A368612 (n + 1) - A368611 (n + 1))

end

end A368641.P1197781341364717928

namespace A368641

/-- `A013939(n+1)+A368612(n+1)-A368611(n+1)` -/
def P1197781341364717928.Spec : Prop :=
  ∀ n, P1197781341364717928.a n = A368641 (n + 1)

end A368641

/-! ## A368641.P4517006348758058035

`A368610(n+1)-(A368611(n+1)+A048865(n+1))`
-/

namespace A368641.P4517006348758058035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368610 (n + 1) - (A368611 (n + 1) + A048865 (n + 1))

end

end A368641.P4517006348758058035

namespace A368641

/-- `A368610(n+1)-(A368611(n+1)+A048865(n+1))` -/
def P4517006348758058035.Spec : Prop :=
  ∀ n, P4517006348758058035.a n = A368641 (n + 1)

end A368641

/-! ## A368641.P15533946381772400283

`A368610(n+1)-(A368613(n+1)+A092494(n+1))`
-/

namespace A368641.P15533946381772400283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368610 (n + 1) - (A368613 (n + 1) + A092494 (n + 1))

end

end A368641.P15533946381772400283

namespace A368641

/-- `A368610(n+1)-(A368613(n+1)+A092494(n+1))` -/
def P15533946381772400283.Spec : Prop :=
  ∀ n, P15533946381772400283.a n = A368641 (n + 1)

end A368641

/-! ## A368641.P11732849432633433999

`A046992(n+1)+A368612(n+1)-A368612(n+2)`
-/

namespace A368641.P11732849432633433999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1) + (A368612 (n + 1) - A368612 (n + 2))

end

end A368641.P11732849432633433999

namespace A368641

/-- `A046992(n+1)+A368612(n+1)-A368612(n+2)` -/
def P11732849432633433999.Spec : Prop :=
  ∀ n, P11732849432633433999.a n = A368641 (n + 1)

end A368641

/-!
# A368642: a(n) = Sum_{k=1..n} mu(k)^2 * ceiling(n/k), where mu is the Möbius function (A008683).

The programs for A368642, the canonical program `A368642.P11237544480615087837` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368642 has offset 1).

The definition of A368642 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, A008683(#+1)²*ceil((n+1)/(#+1))]` (program `A368642.P11237544480615087837`, by `A368642.P11237544480615087837.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368642.P2583294438814666232

`A013928(n+1)+A008966(n+1)+A064608(n+1)-A034444(n+1)`
-/

namespace A368642.P2583294438814666232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) + A008966 (n + 1) + A064608 (n + 1) - A034444 (n + 1)

end

end A368642.P2583294438814666232

namespace A368642

/-- `A013928(n+1)+A008966(n+1)+A064608(n+1)-A034444(n+1)` -/
def P2583294438814666232.Spec : Prop :=
  ∀ n, P2583294438814666232.a n = A368642 (n + 1)

end A368642

/-! ## A368642.P11237544480615087837

`∑{#}[n, A008683(#+1)²*ceil((n+1)/(#+1))]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A368642

/-- `∑{#}[n, A008683(#+1)²*ceil((n+1)/(#+1))]` -/
def P11237544480615087837.Spec : Prop :=
  ∀ n, P11237544480615087837.a n = A368642 (n + 1)

theorem P11237544480615087837.correct : P11237544480615087837.Spec := by
  intro n
  simp only [A368642, Nat.add_sub_cancel]

end A368642

/-! ## A368642.P16010908200870066709

`A368673(n+1)+A064608(n+1)`
-/

namespace A368642.P16010908200870066709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368673 (n + 1) + A064608 (n + 1)

end

end A368642.P16010908200870066709

namespace A368642

/-- `A368673(n+1)+A064608(n+1)` -/
def P16010908200870066709.Spec : Prop :=
  ∀ n, P16010908200870066709.a n = A368642 (n + 1)

theorem P16010908200870066709.correct : P16010908200870066709.Spec := by
  intro n
  simp only [A368642, Nat.add_sub_cancel, A368642.P16010908200870066709.a, A368642.P11237544480615087837.f1, A368642.P11237544480615087837.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A064608, A064608.P13779215787646709680.a, A368673, A368673.P18187719419902595963.a, A034444, A034444.P6574915864346323298.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A368642

/-! ## A368642.P18306577488784795272

`A368673(n+1)+∑[abs(A158522(n+1))]`
-/

namespace A368642.P18306577488784795272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158522 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368673 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368642.P18306577488784795272

namespace A368642

/-- `A368673(n+1)+∑[abs(A158522(n+1))]` -/
def P18306577488784795272.Spec : Prop :=
  ∀ n, P18306577488784795272.a n = A368642 (n + 1)

end A368642

/-! ## A368642.P4369479966458112260

`A368673(n+1)+∑[2^A001221(n+1)]`
-/

namespace A368642.P4369479966458112260
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368673 (n + 1) : ℚ) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368642.P4369479966458112260

namespace A368642

/-- `A368673(n+1)+∑[2^A001221(n+1)]` -/
def P4369479966458112260.Spec : Prop :=
  ∀ n, P4369479966458112260.a n = (A368642 (n + 1) : ℚ)

end A368642

/-! ## A368642.P16271523502107925547

`A064608(n+1)+A013928(n+2)-A034444(n+1)`
-/

namespace A368642.P16271523502107925547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064608 (n + 1) + (A013928 (n + 2) - A034444 (n + 1))

end

end A368642.P16271523502107925547

namespace A368642

/-- `A064608(n+1)+A013928(n+2)-A034444(n+1)` -/
def P16271523502107925547.Spec : Prop :=
  ∀ n, P16271523502107925547.a n = A368642 (n + 1)

end A368642

/-!
# A368643: Manhattan distance from the origin of triangular number point T(n) = n*(n+1)/2 in a square spiral with point 0 at the origin.

The programs for A368643, the canonical program `A368643.P1232698465905316366` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368643 has offset 0).

The definition of A368643 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368643.P1232698465905316366

`A214526(n*(n+1)/2+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A368643

/-- `A214526(n*(n+1)/2+1)` -/
def P1232698465905316366.Spec : Prop :=
  ∀ n, P1232698465905316366.a n = A368643 n

theorem P1232698465905316366.correct : P1232698465905316366.Spec := by
  intro n
  simp only [A368643]

end A368643

/-! ## A368643.P14547090955625096712

`A214526(A000124(n))%64`
-/

namespace A368643.P14547090955625096712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A214526 (A000124 n).toNat) 64

end

end A368643.P14547090955625096712

namespace A368643

/-- `A214526(A000124(n))%64` -/
def P14547090955625096712.Spec : Prop :=
  ∀ n, P14547090955625096712.a n = A368643 n

end A368643

/-! ## A368643.P6843400235645451486

`A214526(A000124(n))+A000007(n+4)`
-/

namespace A368643.P6843400235645451486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A000124 n).toNat + A000007 (n + 4)

end

end A368643.P6843400235645451486

namespace A368643

/-- `A214526(A000124(n))+A000007(n+4)` -/
def P6843400235645451486.Spec : Prop :=
  ∀ n, P6843400235645451486.a n = A368643 n

end A368643

/-! ## A368643.P15488145105536148961

`A033999(2*n)*A214526(A000124(n))`
-/

namespace A368643.P15488145105536148961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A214526 (A000124 n).toNat

end

end A368643.P15488145105536148961

namespace A368643

/-- `A033999(2*n)*A214526(A000124(n))` -/
def P15488145105536148961.Spec : Prop :=
  ∀ n, P15488145105536148961.a n = A368643 n

end A368643

/-! ## A368643.P8268772406440766066

`A214526(A000124(n))-A057427(n+1)+1`
-/

namespace A368643.P8268772406440766066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A000124 n).toNat - A057427 (n + 1) + 1

end

end A368643.P8268772406440766066

namespace A368643

/-- `A214526(A000124(n))-A057427(n+1)+1` -/
def P8268772406440766066.Spec : Prop :=
  ∀ n, P8268772406440766066.a n = A368643 n

end A368643

/-! ## A368643.P2996459301261576308

`A292261(2*(n+2))+A214526(A000124(n))`
-/

namespace A368643.P2996459301261576308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292261 (2 * (n + 2)) + A214526 (A000124 n).toNat

end

end A368643.P2996459301261576308

namespace A368643

/-- `A292261(2*(n+2))+A214526(A000124(n))` -/
def P2996459301261576308.Spec : Prop :=
  ∀ n, P2996459301261576308.a n = A368643 n

end A368643

/-! ## A368643.P9383697942428465860

`A214526(A000124(n))+C(n, A000040(n+1))`
-/

namespace A368643.P9383697942428465860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A000124 n).toNat + (Nat.choose n (A000040 (n + 1)).toNat : ℤ)

end

end A368643.P9383697942428465860

namespace A368643

/-- `A214526(A000124(n))+C(n, A000040(n+1))` -/
def P9383697942428465860.Spec : Prop :=
  ∀ n, P9383697942428465860.a n = A368643 n

end A368643

/-! ## A368643.P17172309533460828202

`A214526(A000124(n))+C(n, A000217(n+1))`
-/

namespace A368643.P17172309533460828202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A000124 n).toNat + (Nat.choose n (A000217 (n + 1)).toNat : ℤ)

end

end A368643.P17172309533460828202

namespace A368643

/-- `A214526(A000124(n))+C(n, A000217(n+1))` -/
def P17172309533460828202.Spec : Prop :=
  ∀ n, P17172309533460828202.a n = A368643 n

end A368643

/-! ## A368643.P17451839475705911146

`A214526(A000124(n))+C(n, A002131(n+1))`
-/

namespace A368643.P17451839475705911146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A000124 n).toNat + (Nat.choose n (A002131 (n + 1)).toNat : ℤ)

end

end A368643.P17451839475705911146

namespace A368643

/-- `A214526(A000124(n))+C(n, A002131(n+1))` -/
def P17451839475705911146.Spec : Prop :=
  ∀ n, P17451839475705911146.a n = A368643 n

end A368643

/-! ## A368643.P12347557952389919137

`A214526(A000124(n))+C(n, A002645(n+1))`
-/

namespace A368643.P12347557952389919137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A000124 n).toNat + (Nat.choose n (A002645 (n + 1)).toNat : ℤ)

end

end A368643.P12347557952389919137

namespace A368643

/-- `A214526(A000124(n))+C(n, A002645(n+1))` -/
def P12347557952389919137.Spec : Prop :=
  ∀ n, P12347557952389919137.a n = A368643 n

end A368643

/-!
# A368647: The number of distinct primes of the form 3*k+2 dividing n minus the number of distinct primes of the form 3*k+1 dividing n.

The programs for A368647, the canonical program `A368647.P6890929061440035933` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368647 has offset 1).

The definition of A368647 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005088, A005090, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368647.P6890929061440035933

`A005090(n+1)-A005088(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A368647

/-- `A005090(n+1)-A005088(n+1)` -/
def P6890929061440035933.Spec : Prop :=
  ∀ n, P6890929061440035933.a n = A368647 (n + 1)

theorem P6890929061440035933.correct : P6890929061440035933.Spec := by
  intro n
  simp only [A368647, Nat.add_sub_cancel]

end A368647

/-! ## A368647.P17365698588340659709

`∑{p}[n+1, A163804(#)]`
-/

namespace A368647.P17365698588340659709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A163804 p

end

end A368647.P17365698588340659709

namespace A368647

/-- `∑{p}[n+1, A163804(#)]` -/
def P17365698588340659709.Spec : Prop :=
  ∀ n, P17365698588340659709.a n = A368647 (n + 1)

end A368647

/-! ## A368647.P5434305377996185602

`∑{p}[n+1, A365428(#)]`
-/

namespace A368647.P5434305377996185602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A365428 p

end

end A368647.P5434305377996185602

namespace A368647

/-- `∑{p}[n+1, A365428(#)]` -/
def P5434305377996185602.Spec : Prop :=
  ∀ n, P5434305377996185602.a n = A368647 (n + 1)

end A368647

/-! ## A368647.P10666927594018794952

`A005090(n+1)-A001221(A248909(n+1))`
-/

namespace A368647.P10666927594018794952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (n + 1) - A001221 (A248909 (n + 1)).toNat

end

end A368647.P10666927594018794952

namespace A368647

/-- `A005090(n+1)-A001221(A248909(n+1))` -/
def P10666927594018794952.Spec : Prop :=
  ∀ n, P10666927594018794952.a n = A368647 (n + 1)

end A368647

/-! ## A368647.P17633561688173465229

`A001221(3*n+3)-A130245(A115069(n+1))`
-/

namespace A368647.P17633561688173465229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (3 * n + 3) - A130245 (A115069 (n + 1)).toNat

end

end A368647.P17633561688173465229

namespace A368647

/-- `A001221(3*n+3)-A130245(A115069(n+1))` -/
def P17633561688173465229.Spec : Prop :=
  ∀ n, P17633561688173465229.a n = A368647 (n + 1)

end A368647

/-!
# A368649: a(n) = round(n*rho), where rho = (5+sqrt(5))/2.

The programs for A368649, the canonical program `A368649.P10230968255946045705` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368649 has offset 1).

The definition of A368649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368649.P10230968255946045705

`floor((n+1)*(5+sqrt(5))/2+1/2)`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368649

/-- `floor((n+1)*(5+sqrt(5))/2+1/2)` -/
def P10230968255946045705.Spec : Prop :=
  ∀ n, P10230968255946045705.a n = A368649 (n + 1)

theorem P10230968255946045705.correct : P10230968255946045705.Spec := by
  intro n
  simp only [A368649, Nat.add_sub_cancel]

end A368649

/-! ## A368649.P1606489519553206658

`∑[A006340(n)+2]`
-/

namespace A368649.P1606489519553206658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006340 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368649.P1606489519553206658

namespace A368649

/-- `∑[A006340(n)+2]` -/
def P1606489519553206658.Spec : Prop :=
  ∀ n, P1606489519553206658.a n = A368649 (n + 1)

end A368649

/-! ## A368649.P14834739560029451243

`∑[A334413(n)+3]`
-/

namespace A368649.P14834739560029451243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334413 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368649.P14834739560029451243

namespace A368649

/-- `∑[A334413(n)+3]` -/
def P14834739560029451243.Spec : Prop :=
  ∀ n, P14834739560029451243.a n = A368649 (n + 1)

end A368649

/-! ## A368649.P7825543540540307457

`∑[4-A334414(n)]`
-/

namespace A368649.P7825543540540307457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A334414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368649.P7825543540540307457

namespace A368649

/-- `∑[4-A334414(n)]` -/
def P7825543540540307457.Spec : Prop :=
  ∀ n, P7825543540540307457.a n = A368649 (n + 1)

end A368649

/-! ## A368649.P6943949596672467364

`A004937(n+1)+1+n`
-/

namespace A368649.P6943949596672467364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004937 (n + 1) + 1 + (n : ℤ)

end

end A368649.P6943949596672467364

namespace A368649

/-- `A004937(n+1)+1+n` -/
def P6943949596672467364.Spec : Prop :=
  ∀ n, P6943949596672467364.a n = A368649 (n + 1)

end A368649

/-! ## A368649.P15346260782701752849

`A189379(n+1)+2+n`
-/

namespace A368649.P15346260782701752849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 (n + 1) + 2 + (n : ℤ)

end

end A368649.P15346260782701752849

namespace A368649

/-- `A189379(n+1)+2+n` -/
def P15346260782701752849.Spec : Prop :=
  ∀ n, P15346260782701752849.a n = A368649 (n + 1)

end A368649

/-! ## A368649.P11216590522616531704

`A007067(n+1)+2*(n+1)`
-/

namespace A368649.P11216590522616531704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (n + 1) + (2 * (n + 1) : ℤ)

end

end A368649.P11216590522616531704

namespace A368649

/-- `A007067(n+1)+2*(n+1)` -/
def P11216590522616531704.Spec : Prop :=
  ∀ n, P11216590522616531704.a n = A368649 (n + 1)

end A368649

/-! ## A368649.P14986156865222309657

`A184656(n+1)+2*n+3`
-/

namespace A368649.P14986156865222309657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184656 (n + 1) + (2 * n + 3 : ℤ)

end

end A368649.P14986156865222309657

namespace A368649

/-- `A184656(n+1)+2*n+3` -/
def P14986156865222309657.Spec : Prop :=
  ∀ n, P14986156865222309657.a n = A368649 (n + 1)

end A368649

/-! ## A368649.P16944157619826499947

`A001962(n+1)-∑[A001468(n)]`
-/

namespace A368649.P16944157619826499947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368649.P16944157619826499947

namespace A368649

/-- `A001962(n+1)-∑[A001468(n)]` -/
def P16944157619826499947.Spec : Prop :=
  ∀ n, P16944157619826499947.a n = A368649 (n + 1)

end A368649

/-! ## A368649.P2236202932731113714

`A001962(n+1)-A000201(n+1)`
-/

namespace A368649.P2236202932731113714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (n + 1) - A000201 (n + 1)

end

end A368649.P2236202932731113714

namespace A368649

/-- `A001962(n+1)-A000201(n+1)` -/
def P2236202932731113714.Spec : Prop :=
  ∀ n, P2236202932731113714.a n = A368649 (n + 1)

end A368649

/-! ## A368649.P5504047138525352869

`A190508(n+1)-A190509(n+1)`
-/

namespace A368649.P5504047138525352869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190508 (n + 1) - A190509 (n + 1)

end

end A368649.P5504047138525352869

namespace A368649

/-- `A190508(n+1)-A190509(n+1)` -/
def P5504047138525352869.Spec : Prop :=
  ∀ n, P5504047138525352869.a n = A368649 (n + 1)

end A368649

/-! ## A368649.P47690381998319353

`A189378(n+1)-A283233(n+1)`
-/

namespace A368649.P47690381998319353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189378 (n + 1) - A283233 (n + 1)

end

end A368649.P47690381998319353

namespace A368649

/-- `A189378(n+1)-A283233(n+1)` -/
def P47690381998319353.Spec : Prop :=
  ∀ n, P47690381998319353.a n = A368649 (n + 1)

end A368649

/-! ## A368649.P15355545238551938789

`A003622(2*(n+1))-A022342(n+1)`
-/

namespace A368649.P15355545238551938789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (2 * (n + 1)) - A022342 (n + 1)

end

end A368649.P15355545238551938789

namespace A368649

/-- `A003622(2*(n+1))-A022342(n+1)` -/
def P15355545238551938789.Spec : Prop :=
  ∀ n, P15355545238551938789.a n = A368649 (n + 1)

end A368649

/-! ## A368649.P17985578941516490744

`A189378(n+1)-2*A000201(n+1)`
-/

namespace A368649.P17985578941516490744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189378 (n + 1) - 2 * A000201 (n + 1)

end

end A368649.P17985578941516490744

namespace A368649

/-- `A189378(n+1)-2*A000201(n+1)` -/
def P17985578941516490744.Spec : Prop :=
  ∀ n, P17985578941516490744.a n = A368649 (n + 1)

end A368649

/-! ## A368649.P11166871140563870151

`A101803(n+1)+3*(n+1)`
-/

namespace A368649.P11166871140563870151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101803 (n + 1) + (3 * (n + 1) : ℤ)

end

end A368649.P11166871140563870151

namespace A368649

/-- `A101803(n+1)+3*(n+1)` -/
def P11166871140563870151.Spec : Prop :=
  ∀ n, P11166871140563870151.a n = A368649 (n + 1)

end A368649

/-! ## A368649.P10284324912010092421

`A004976(n+1)-A060143(n+1)`
-/

namespace A368649.P10284324912010092421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 (n + 1) - A060143 (n + 1)

end

end A368649.P10284324912010092421

namespace A368649

/-- `A004976(n+1)-A060143(n+1)` -/
def P10284324912010092421.Spec : Prop :=
  ∀ n, P10284324912010092421.a n = A368649 (n + 1)

end A368649

/-! ## A368649.P15579232274605976026

`A284621(n+2)-A214990(n+1)`
-/

namespace A368649.P15579232274605976026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284621 (n + 2) - A214990 (n + 1)

end

end A368649.P15579232274605976026

namespace A368649

/-- `A284621(n+2)-A214990(n+1)` -/
def P15579232274605976026.Spec : Prop :=
  ∀ n, P15579232274605976026.a n = A368649 (n + 1)

end A368649

/-! ## A368649.P4565196981168612360

`A189462(2*(n+1))-n`
-/

namespace A368649.P4565196981168612360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189462 (2 * (n + 1)) - (n : ℤ)

end

end A368649.P4565196981168612360

namespace A368649

/-- `A189462(2*(n+1))-n` -/
def P4565196981168612360.Spec : Prop :=
  ∀ n, P4565196981168612360.a n = A368649 (n + 1)

end A368649

/-! ## A368649.P10501582240086224272

`A001950(2*(n+1))-A000201(n+1)`
-/

namespace A368649.P10501582240086224272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (2 * (n + 1)) - A000201 (n + 1)

end

end A368649.P10501582240086224272

namespace A368649

/-- `A001950(2*(n+1))-A000201(n+1)` -/
def P10501582240086224272.Spec : Prop :=
  ∀ n, P10501582240086224272.a n = A368649 (n + 1)

end A368649

/-! ## A368649.P1059674965923568293

`A003231(2*(n+1))-A003231(n+1)`
-/

namespace A368649.P1059674965923568293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003231 (2 * (n + 1)) - A003231 (n + 1)

end

end A368649.P1059674965923568293

namespace A368649

/-- `A003231(2*(n+1))-A003231(n+1)` -/
def P1059674965923568293.Spec : Prop :=
  ∀ n, P1059674965923568293.a n = A368649 (n + 1)

end A368649

/-!
# A368655: Binomial transform of Gould's sequence (A001316).

The programs for A368655, the canonical program `A368655.P7964603861778386212` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368655 has offset 0).

The definition of A368655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368655.P7964603861778386212

`∑{#}[n, C(n, #)*A001316(#)]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A368655

/-- `∑{#}[n, C(n, #)*A001316(#)]` -/
def P7964603861778386212.Spec : Prop :=
  ∀ n, P7964603861778386212.a n = A368655 n

theorem P7964603861778386212.correct : P7964603861778386212.Spec := by
  intro n
  simp only [A368655]

end A368655

/-! ## A368655.P1365052809800024319

`∑{#}[n, C(n, #)*2^A000120(#)]`
-/

namespace A368655.P1365052809800024319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℚ) * (2 : ℚ) ^ (A000120 k : ℤ)

end

end A368655.P1365052809800024319

namespace A368655

/-- `∑{#}[n, C(n, #)*2^A000120(#)]` -/
def P1365052809800024319.Spec : Prop :=
  ∀ n, P1365052809800024319.a n = (A368655 n : ℚ)

end A368655

/-! ## A368655.P15993629557959722144

`A204854(A116904(n))`
-/

namespace A368655.P15993629557959722144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204854 (A116904 n).toNat

end

end A368655.P15993629557959722144

namespace A368655

/-- `A204854(A116904(n))` -/
def P15993629557959722144.Spec : Prop :=
  ∀ n, P15993629557959722144.a n = A368655 n

end A368655

/-!
# A368656: Decimal expansion of 271801/99990.

The programs for A368656, the canonical program `A368656.P9848291197144225492` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368656 has offset 1).

The definition of A368656 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368656.P9848291197144225492

`ogf((2+7x+x^2+8x^3+x^5)/(1-x^4))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A368656

/-- `ogf((2+7x+x^2+8x^3+x^5)/(1-x^4))` -/
def P9848291197144225492.Spec : Prop :=
  ∀ n, P9848291197144225492.a n = A368656 (n + 1)

theorem P9848291197144225492.correct : P9848291197144225492.Spec := by
  intro n
  simp only [A368656, Nat.add_sub_cancel]

end A368656

/-!
# A368657: Number of cycles in an n X n grid where the cycle cannot touch itself orthogonally or diagonally and must contain at least one inside point.

The programs for A368657, there is no canonical definition to state claims against.
-/

/-! ## A368657.P9536067161083707700

`A185969(A175176(n))-A000041(n)`
-/

namespace A368657.P9536067161083707700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185969 (A175176 n).toNat - A000041 n

end

end A368657.P9536067161083707700

/-! ## A368657.P16587378714662889512

`A004525(A276728(n))-A218579(n+1)`
-/

namespace A368657.P16587378714662889512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A276728 n).toNat - A218579 (n + 1)

end

end A368657.P16587378714662889512

/-!
# A368658: a(n) is the number of correct decimal digits of e obtained from the fraction A368618(n)/A368619(n).

The programs for A368658, there is no canonical definition to state claims against.
-/

/-! ## A368658.P15948967639209852990

`A323202(A258913(n+1)+2)+n+1`
-/

namespace A368658.P15948967639209852990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323202 (A258913 (n + 1) + 2).toNat + (n + 1 : ℤ)

end

end A368658.P15948967639209852990

/-! ## A368658.P12918434540700309890

`A008619(2*(n+1))-A345927(A126148(n+3))`
-/

namespace A368658.P12918434540700309890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * (n + 1)) - A345927 (A126148 (n + 3)).toNat

end

end A368658.P12918434540700309890

/-!
# A368660: Square array read by antidiagonals; the n-th row is the decimal expansion of the probability that the free polyomino with binary code A246521(n+1) appears in diffusion-limited aggregation on the square lattice.

The programs for A368660, there is no canonical definition to state claims against.
-/

/-! ## A368660.P15421885198553717663

`A360911(A359576(n+1))*A368662(n+1)`
-/

namespace A368660.P15421885198553717663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360911 (A359576 (n + 1)).toNat * A368662 (n + 1)

end

end A368660.P15421885198553717663

/-! ## A368660.P6012349016608036987

`lcm(A278908(A050471(n+1)), A368662(n+1))`
-/

namespace A368660.P6012349016608036987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A278908 (A050471 (n + 1)).toNat) (A368662 (n + 1))

end

end A368660.P6012349016608036987

/-! ## A368660.P11583447072420765271

`A124010(A280107(3*n+2))*A368662(n+1)`
-/

namespace A368660.P11583447072420765271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A280107 (3 * n + 2)).toNat * A368662 (n + 1)

end

end A368660.P11583447072420765271

/-! ## A368660.P1709209172131901833

`A368662(A067080(n+1))`
-/

namespace A368660.P1709209172131901833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368662 (A067080 (n + 1)).toNat

end

end A368660.P1709209172131901833

/-!
# A368662: Square array read by antidiagonals; the n-th row is the decimal expansion of the maximum probability that a particular free polyomino with n cells appears in diffusion-limited aggregation on the square lattice.

The programs for A368662, there is no canonical definition to state claims against.
-/

/-! ## A368662.P13434000511369626236

`A368660(n+1)%A249948(A225393(n))`
-/

namespace A368662.P13434000511369626236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368660 (n + 1)) (A249948 (A225393 n).toNat)

end

end A368662.P13434000511369626236

/-! ## A368662.P6453991537727529867

`gcd(A107846(A198315(n+1)), A368660(n+1))`
-/

namespace A368662.P6453991537727529867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107846 (A198315 (n + 1)).toNat) (A368660 (n + 1))

end

end A368662.P6453991537727529867

/-!
# A368663: Decimal expansion of the probability that the L tromino appears when the 3rd cell is added in diffusion-limited aggregation on the square lattice.

The programs for A368663, there is no canonical definition to state claims against.
-/

/-! ## A368663.P7437109426716699166

`9-A368664(n)`
-/

namespace A368663.P7437109426716699166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A368664 n

end

end A368663.P7437109426716699166

/-! ## A368663.P12785084866062472561

`A368660(A167614(n+2))`
-/

namespace A368663.P12785084866062472561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368660 (A167614 (n + 2)).toNat

end

end A368663.P12785084866062472561

/-! ## A368663.P1741968320574793023

`A368660(A052905(n)+8)`
-/

namespace A368663.P1741968320574793023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368660 (A052905 n + 8).toNat

end

end A368663.P1741968320574793023

/-! ## A368663.P11384630744192475190

`A368660(A055999(n)+9)`
-/

namespace A368663.P11384630744192475190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368660 (A055999 n + 9).toNat

end

end A368663.P11384630744192475190

/-! ## A368663.P1254993536848590945

`A368660(A000124(n+3)+2)`
-/

namespace A368663.P1254993536848590945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368660 (A000124 (n + 3) + 2).toNat

end

end A368663.P1254993536848590945

/-! ## A368663.P9086959675854447

`A368660(A167499(n+3)-(n+6))`
-/

namespace A368663.P9086959675854447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368660 (A167499 (n + 3) - (n + 6 : ℤ)).toNat

end

end A368663.P9086959675854447

/-!
# A368664: Decimal expansion of the probability that the straight tromino appears when the 3rd cell is added in diffusion-limited aggregation on the square lattice.

The programs for A368664, there is no canonical definition to state claims against.
-/

/-! ## A368664.P5567417741221021319

`9-A368663(n)`
-/

namespace A368664.P5567417741221021319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A368663 n

end

end A368664.P5567417741221021319

/-! ## A368664.P15830100618284995376

`A368660(A167499(n+3)-1)`
-/

namespace A368664.P15830100618284995376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368660 (A167499 (n + 3) - 1).toNat

end

end A368664.P15830100618284995376

/-! ## A368664.P2569829876029732141

`A368660(A000217(n+4)+4)`
-/

namespace A368664.P2569829876029732141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368660 (A000217 (n + 4) + 4).toNat

end

end A368664.P2569829876029732141

/-!
# A368665: Decimal expansion of the probability that the L tetromino appears when the 4th cell is added in diffusion-limited aggregation on the square lattice.

The programs for A368665, there is no canonical definition to state claims against.
-/

/-! ## A368665.P3834370882913304011

`A368660(eq[5, A002262(n)])`
-/

namespace A368665.P3834370882913304011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368660 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A368665.P3834370882913304011

/-!
# A368666: Decimal expansion of the probability that the square tetromino appears when the 4th cell is added in diffusion-limited aggregation on the square lattice.

The programs for A368666, there is no canonical definition to state claims against.
-/

/-! ## A368666.P2516001951415162090

`A368660(A056115(n+1)+21)`
-/

namespace A368666.P2516001951415162090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368660 (A056115 (n + 1) + 21).toNat

end

end A368666.P2516001951415162090

/-!
# A368668: Decimal expansion of the probability that the skew tetromino appears when the 4th cell is added in diffusion-limited aggregation on the square lattice.

The programs for A368668, there is no canonical definition to state claims against.
-/

/-! ## A368668.P13913527291273142077

`A368660(A167499(n+7)+3)`
-/

namespace A368668.P13913527291273142077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368660 (A167499 (n + 7) + 3).toNat

end

end A368668.P13913527291273142077

/-! ## A368668.P18431566815620736467

`A368660(A000096(n+7)+9)`
-/

namespace A368668.P18431566815620736467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368660 (A000096 (n + 7) + 9).toNat

end

end A368668.P18431566815620736467

/-!
# A368670: Numbers k such that k, k + 1, k + 2, and k + 4 are all semiprimes.

The programs for A368670, the canonical program `A368670.P14636685480981549727` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368670 has offset 1).

The definition of A368670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368670.P8753434283239993025

`∩[A045939(n+1), A175648(n+1)]`
-/

namespace A368670.P8753434283239993025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175648 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368670.P8753434283239993025

namespace A368670

/-- `∩[A045939(n+1), A175648(n+1)]` -/
def P8753434283239993025.Spec : Prop :=
  ∀ n, (P8753434283239993025.a n : ℤ) = A368670 (n + 1)

end A368670

/-! ## A368670.P14636685480981549727

`∩[A056809(n+1), A175648(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A368670

/-- `∩[A056809(n+1), A175648(n+1)]` -/
def P14636685480981549727.Spec : Prop :=
  ∀ n, (P14636685480981549727.a n : ℤ) = A368670 (n + 1)

theorem P14636685480981549727.correct : P14636685480981549727.Spec := by
  intro n
  simp only [A368670, Nat.add_sub_cancel]

end A368670

/-! ## A368670.P2121076087934360080

`∩[A033945(n+1), A092125(n+1)]`
-/

namespace A368670.P2121076087934360080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368670.P2121076087934360080

namespace A368670

/-- `∩[A033945(n+1), A092125(n+1)]` -/
def P2121076087934360080.Spec : Prop :=
  ∀ n, (P2121076087934360080.a n : ℤ) = A368670 (n + 1)

end A368670

/-! ## A368670.P3298100500135896387

`∩[A045920(n+1), A092125(n+1)]`
-/

namespace A368670.P3298100500135896387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368670.P3298100500135896387

namespace A368670

/-- `∩[A045920(n+1), A092125(n+1)]` -/
def P3298100500135896387.Spec : Prop :=
  ∀ n, (P3298100500135896387.a n : ℤ) = A368670 (n + 1)

end A368670

/-! ## A368670.P16629077838699196102

`∩[A045939(n+1), A092125(n+1)]`
-/

namespace A368670.P16629077838699196102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368670.P16629077838699196102

namespace A368670

/-- `∩[A045939(n+1), A092125(n+1)]` -/
def P16629077838699196102.Spec : Prop :=
  ∀ n, (P16629077838699196102.a n : ℤ) = A368670 (n + 1)

end A368670

/-! ## A368670.P6955788758664914817

`∩[A056809(n+1), A092125(n+1)]`
-/

namespace A368670.P6955788758664914817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368670.P6955788758664914817

namespace A368670

/-- `∩[A056809(n+1), A092125(n+1)]` -/
def P6955788758664914817.Spec : Prop :=
  ∀ n, (P6955788758664914817.a n : ℤ) = A368670 (n + 1)

end A368670

/-! ## A368670.P14541067805169967994

`∩[A070552(n+1), A092125(n+1)]`
-/

namespace A368670.P14541067805169967994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070552 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368670.P14541067805169967994

namespace A368670

/-- `∩[A070552(n+1), A092125(n+1)]` -/
def P14541067805169967994.Spec : Prop :=
  ∀ n, (P14541067805169967994.a n : ℤ) = A368670 (n + 1)

end A368670

/-! ## A368670.P11675019706017145616

`∩[A075032(n+1), A092125(n+1)]`
-/

namespace A368670.P11675019706017145616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368670.P11675019706017145616

namespace A368670

/-- `∩[A075032(n+1), A092125(n+1)]` -/
def P11675019706017145616.Spec : Prop :=
  ∀ n, (P11675019706017145616.a n : ℤ) = A368670 (n + 1)

end A368670

/-! ## A368670.P17673045581832121156

`∩[A075033(n+1), A092125(n+1)]`
-/

namespace A368670.P17673045581832121156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368670.P17673045581832121156

namespace A368670

/-- `∩[A075033(n+1), A092125(n+1)]` -/
def P17673045581832121156.Spec : Prop :=
  ∀ n, (P17673045581832121156.a n : ℤ) = A368670 (n + 1)

end A368670

/-! ## A368670.P10623993942216214877

`∩[A076274(n+1), A092125(n+1)]`
-/

namespace A368670.P10623993942216214877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368670.P10623993942216214877

namespace A368670

/-- `∩[A076274(n+1), A092125(n+1)]` -/
def P10623993942216214877.Spec : Prop :=
  ∀ n, (P10623993942216214877.a n : ℤ) = A368670 (n + 1)

end A368670

/-!
# A368672: Total number of lattice paths from (0,0) to (k,n-k) for k=0..n using steps (i,j) with i,j>=0 and gcd(i,j)=1.

The programs for A368672, there is no canonical definition to state claims against.
-/

/-! ## A368672.P3811659107465763667

`A284831(∑[∑[n]]+1)`
-/

namespace A368672.P3811659107465763667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284831 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A368672.P3811659107465763667

/-! ## A368672.P6401300951595599458

`A231149(A085810(n+2))`
-/

namespace A368672.P6401300951595599458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231149 (A085810 (n + 2)).toNat

end

end A368672.P6401300951595599458

/-! ## A368672.P1467606204967373233

`A368101(A085748(n))+A010873(n)`
-/

namespace A368672.P1467606204967373233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368101 (A085748 n).toNat + A010873 n

end

end A368672.P1467606204967373233

/-!
# A368673: Number of squarefree numbers less than n that do not divide n.

The programs for A368673, the canonical program `A368673.P18187719419902595963` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368673 has offset 1).

The definition of A368673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368673.P18187719419902595963

`A368642(n+1)-A064608(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A368673

/-- `A368642(n+1)-A064608(n+1)` -/
def P18187719419902595963.Spec : Prop :=
  ∀ n, P18187719419902595963.a n = A368673 (n + 1)

theorem P18187719419902595963.correct : P18187719419902595963.Spec := by
  intro n
  simp only [A368673, Nat.add_sub_cancel]

end A368673

/-! ## A368673.P6719088521078507739

`∑{#}[n, A008683(#+1)²*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]`
-/

namespace A368673.P6719088521078507739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A008683 (k + 1) ^ 2 * (⌈(n + 1 : ℚ) / (k + 1 : ℚ)⌉ - ⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋)

end

end A368673.P6719088521078507739

namespace A368673

/-- `∑{#}[n, A008683(#+1)²*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]` -/
def P6719088521078507739.Spec : Prop :=
  ∀ n, P6719088521078507739.a n = A368673 (n + 1)

end A368673

/-! ## A368673.P8176985787624061742

`∑[A008966(n+1)]-2^∑{e}[∏{p}[n+1, #], #]`
-/

namespace A368673.P8176985787624061742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℤ)

end

end A368673.P8176985787624061742

namespace A368673

/-- `∑[A008966(n+1)]-2^∑{e}[∏{p}[n+1, #], #]` -/
def P8176985787624061742.Spec : Prop :=
  ∀ n, P8176985787624061742.a n = A368673 (n + 1)

end A368673

/-! ## A368673.P17828382629020349691

`A013928(n+1)-A293227(n+1)`
-/

namespace A368673.P17828382629020349691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A293227 (n + 1)

end

end A368673.P17828382629020349691

namespace A368673

/-- `A013928(n+1)-A293227(n+1)` -/
def P17828382629020349691.Spec : Prop :=
  ∀ n, P17828382629020349691.a n = A368673 (n + 1)

end A368673

/-! ## A368673.P8133221217339290380

`A351520(n+1)-A000005(n+1)`
-/

namespace A368673.P8133221217339290380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351520 (n + 1) - A000005 (n + 1)

end

end A368673.P8133221217339290380

namespace A368673

/-- `A351520(n+1)-A000005(n+1)` -/
def P8133221217339290380.Spec : Prop :=
  ∀ n, P8133221217339290380.a n = A368673 (n + 1)

end A368673

/-! ## A368673.P18081818599562138843

`A013928(n+2)-A034444(n+1)`
-/

namespace A368673.P18081818599562138843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 2) - A034444 (n + 1)

end

end A368673.P18081818599562138843

namespace A368673

/-- `A013928(n+2)-A034444(n+1)` -/
def P18081818599562138843.Spec : Prop :=
  ∀ n, P18081818599562138843.a n = A368673 (n + 1)

end A368673

/-!
# A368674: Sum of the squarefree numbers less than n that do not divide n.

The programs for A368674, the canonical program `A368674.P18254584690086326789` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368674 has offset 1).

The definition of A368674 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368674.P18254584690086326789

`∑{#}[n, (#+1)*A008683(#+1)²*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A368674

/-- `∑{#}[n, (#+1)*A008683(#+1)²*(ceil((n+1)/(#+1))-floor((n+1)/(#+1)))]` -/
def P18254584690086326789.Spec : Prop :=
  ∀ n, P18254584690086326789.a n = A368674 (n + 1)

theorem P18254584690086326789.correct : P18254584690086326789.Spec := by
  intro n
  simp only [A368674, Nat.add_sub_cancel]

end A368674

/-! ## A368674.P2215030909904095731

`∑[C(∏{p}[n+1, #], n)]-∏{p}[n+1, #+1]`
-/

namespace A368674.P2215030909904095731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∏ p ∈ Nat.primeFactors (f3 n), (p + 1) : ℕ) : ℤ)

end

end A368674.P2215030909904095731

namespace A368674

/-- `∑[C(∏{p}[n+1, #], n)]-∏{p}[n+1, #+1]` -/
def P2215030909904095731.Spec : Prop :=
  ∀ n, P2215030909904095731.a n = A368674 (n + 1)

end A368674

/-! ## A368674.P9141399456311910171

`A066779(n+1)-A048250(n+1)`
-/

namespace A368674.P9141399456311910171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066779 (n + 1) - A048250 (n + 1)

end

end A368674.P9141399456311910171

namespace A368674

/-- `A066779(n+1)-A048250(n+1)` -/
def P9141399456311910171.Spec : Prop :=
  ∀ n, P9141399456311910171.a n = A368674 (n + 1)

end A368674

/-! ## A368674.P11603476190154945189

`A351828(n+1)-A000203(n+1)`
-/

namespace A368674.P11603476190154945189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351828 (n + 1) - A000203 (n + 1)

end

end A368674.P11603476190154945189

namespace A368674

/-- `A351828(n+1)-A000203(n+1)` -/
def P11603476190154945189.Spec : Prop :=
  ∀ n, P11603476190154945189.a n = A368674 (n + 1)

end A368674

/-! ## A368674.P4658056683967844184

`A351828(n+1)-A097012(n+1)`
-/

namespace A368674.P4658056683967844184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351828 (n + 1) - A097012 (n + 1)

end

end A368674.P4658056683967844184

namespace A368674

/-- `A351828(n+1)-A097012(n+1)` -/
def P4658056683967844184.Spec : Prop :=
  ∀ n, P4658056683967844184.a n = A368674 (n + 1)

end A368674

/-!
# A368675: Number of partitions of [n] whose block maxima sum to 2n.

The programs for A368675, there is no canonical definition to state claims against.
-/

/-! ## A368675.P1872133024995751980

`A365441(n)-A131577(n)`
-/

namespace A368675.P1872133024995751980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365441 n - A131577 n

end

end A368675.P1872133024995751980

/-! ## A368675.P10937502224883036013

`A365441(n)-Δ[A011782(n)]`
-/

namespace A368675.P10937502224883036013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365441 n - (f1 (n + 1) - f1 n)

end

end A368675.P10937502224883036013

/-! ## A368675.P9936794166352993704

`A367955(A180415(n+1))-A131577(n)`
-/

namespace A368675.P9936794166352993704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367955 (A180415 (n + 1)).toNat - A131577 n

end

end A368675.P9936794166352993704

/-! ## A368675.P9350067872709604120

`A367955(A180415(n+1))-Δ[A011782(n)]`
-/

namespace A368675.P9350067872709604120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367955 (A180415 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A368675.P9350067872709604120

/-! ## A368675.P3689341776006861226

`A367955(A177787(n+1))-A131577(n)`
-/

namespace A368675.P3689341776006861226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367955 (A177787 (n + 1)).toNat - A131577 n

end

end A368675.P3689341776006861226

/-!
# A368677: Number of numbers k less than n and not dividing n such that n-k is squarefree.

The programs for A368677, there is no canonical definition to state claims against.
-/

/-! ## A368677.P6082555028561683111

`A013928(n+1)-A330868(n+1)`
-/

namespace A368677.P6082555028561683111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A330868 (n + 1)

end

end A368677.P6082555028561683111

/-! ## A368677.P1556188727142835491

`A134021(2^n)-A226898(n+1)`
-/

namespace A368677.P1556188727142835491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (2 ^ n) - A226898 (n + 1)

end

end A368677.P1556188727142835491

/-! ## A368677.P4162528459321730055

`A071693(n)-A285668(A112287(n+1))`
-/

namespace A368677.P4162528459321730055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071693 n - A285668 (A112287 (n + 1)).toNat

end

end A368677.P4162528459321730055

/-! ## A368677.P4103818178270527397

`A062153(A221984(3*n+11)+A213246(n+1))`
-/

namespace A368677.P4103818178270527397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A221984 (3 * n + 11) + A213246 (n + 1)).toNat

end

end A368677.P4103818178270527397

/-!
# A368681: Products of primorials that are perfect powers.

The programs for A368681, there is no canonical definition to state claims against.
-/

/-! ## A368681.P8077975113963541658

`∪[A151821(n+1), A368682(n+1)]`
-/

namespace A368681.P8077975113963541658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368681.P8077975113963541658

/-! ## A368681.P4653548848239261734

`∩[∪[(n+1)², A097054(n+1)], A025487(n+1)]`
-/

namespace A368681.P4653548848239261734
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097054 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A368681.P4653548848239261734

/-! ## A368681.P7325520842979639712

`∩[A025487(n+1), ∑[A076412(n)]]`
-/

namespace A368681.P7325520842979639712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368681.P7325520842979639712

/-! ## A368681.P8997987917502537961

`∩[A001597(n+1), A025487(n+1)]`
-/

namespace A368681.P8997987917502537961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368681.P8997987917502537961

/-! ## A368681.P2782970847083502694

`∩[A001597(n+1), A181800(n+1)]`
-/

namespace A368681.P2782970847083502694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368681.P2782970847083502694

/-! ## A368681.P13069903141276443417

`∩[A025487(n+1), abs(A157985(n+1))]`
-/

namespace A368681.P13069903141276443417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157985 (n + 1)|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368681.P13069903141276443417

/-!
# A368682: Products of primorials that are perfect powers but not prime powers.

The programs for A368682, there is no canonical definition to state claims against.
-/

/-! ## A368682.P10052891558978292531

`∪[A365308(n+1), A390290(n+1)]`
-/

namespace A368682.P10052891558978292531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P10052891558978292531

/-! ## A368682.P9361835239440101647

`∩[A368681(n+1), A380446(n+1)]`
-/

namespace A368682.P9361835239440101647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P9361835239440101647

/-! ## A368682.P12104619959542229729

`∩[A364930(n+1), A368681(n+1)]`
-/

namespace A368682.P12104619959542229729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P12104619959542229729

/-! ## A368682.P6014592652664673556

`∩[A364930(n+1), A380446(n+1)]`
-/

namespace A368682.P6014592652664673556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P6014592652664673556

/-! ## A368682.P17140051963641371324

`∩[A304250(n+1), A364930(n+1)]`
-/

namespace A368682.P17140051963641371324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P17140051963641371324

/-! ## A368682.P3543505607923918256

`∩[A181800(n+1), A380446(n+1)]`
-/

namespace A368682.P3543505607923918256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P3543505607923918256

/-! ## A368682.P18376328071273872126

`∩[A304250(n+1), A364710(n+1)]`
-/

namespace A368682.P18376328071273872126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P18376328071273872126

/-! ## A368682.P5898129124113360139

`∩[A364710(n+1), A368681(n+1)]`
-/

namespace A368682.P5898129124113360139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P5898129124113360139

/-! ## A368682.P12389387135467764849

`∩[A364710(n+1), A380446(n+1)]`
-/

namespace A368682.P12389387135467764849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P12389387135467764849

/-! ## A368682.P11274521603574842827

`∩[A025487(n+1), A380446(n+1)]`
-/

namespace A368682.P11274521603574842827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P11274521603574842827

/-! ## A368682.P2823310947397999018

`∩[A368681(n+1), A369374(n+1)]`
-/

namespace A368682.P2823310947397999018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P2823310947397999018

/-! ## A368682.P8665455531952269041

`∩[2*A363814(n+1), A368681(n+1)]`
-/

namespace A368682.P8665455531952269041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P8665455531952269041

/-! ## A368682.P11339706635608169280

`∩[A363814(n+1), A368681(n+1)]`
-/

namespace A368682.P11339706635608169280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P11339706635608169280

/-! ## A368682.P12536201549095578726

`∩[A124143(n+1), A364710(n+1)]`
-/

namespace A368682.P12536201549095578726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P12536201549095578726

/-! ## A368682.P13212864033401710985

`∩[A124143(n+1), A364930(n+1)]`
-/

namespace A368682.P13212864033401710985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P13212864033401710985

/-! ## A368682.P9858424825643198195

`∩[A025487(n+1), A353238(n+1)]`
-/

namespace A368682.P9858424825643198195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P9858424825643198195

/-! ## A368682.P5474589524834906738

`∩[A181800(n+1), A353238(n+1)]`
-/

namespace A368682.P5474589524834906738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P5474589524834906738

/-! ## A368682.P10257575050813860757

`∩[A353238(n+1), A364710(n+1)]`
-/

namespace A368682.P10257575050813860757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P10257575050813860757

/-! ## A368682.P12860601849923364629

`∩[A353238(n+1), A364930(n+1)]`
-/

namespace A368682.P12860601849923364629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P12860601849923364629

/-! ## A368682.P1445364023032458259

`∩[A353238(n+1), A368681(n+1)]`
-/

namespace A368682.P1445364023032458259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368682.P1445364023032458259

/-!
# A368684: Number of partitions of n into 2 parts such that the smaller part divides both n and floor(n/2).

The programs for A368684, the canonical program `A368684.P17029386363666908636` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368684 has offset 1).

The definition of A368684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368684.P10186726123261799932

`(∑{d}[n+1, log2(gcd(2, #))]^(n%2))%(n+1)`
-/

namespace A368684.P10186726123261799932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (Nat.gcd 2 d : ℝ)) ^ (n % 2))) (n + 1 : ℤ)

end

end A368684.P10186726123261799932

namespace A368684

/-- `(∑{d}[n+1, log2(gcd(2, #))]^(n%2))%(n+1)` -/
def P10186726123261799932.Spec : Prop :=
  ∀ n, P10186726123261799932.a n = A368684 (n + 1)

end A368684

/-! ## A368684.P17029386363666908636

`A091954(n+1)-A335021(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A368684

/-- `A091954(n+1)-A335021(n+1)` -/
def P17029386363666908636.Spec : Prop :=
  ∀ n, P17029386363666908636.a n = A368684 (n + 1)

theorem P17029386363666908636.correct : P17029386363666908636.Spec := by
  intro n
  simp only [A368684, Nat.add_sub_cancel]

end A368684

/-! ## A368684.P11323339198095341606

`A000005(n+1)-(A111775(n+1)+1)`
-/

namespace A368684.P11323339198095341606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - (A111775 (n + 1) + 1)

end

end A368684.P11323339198095341606

namespace A368684

/-- `A000005(n+1)-(A111775(n+1)+1)` -/
def P11323339198095341606.Spec : Prop :=
  ∀ n, P11323339198095341606.a n = A368684 (n + 1)

end A368684

/-! ## A368684.P14396391464608781995

`∑{d}[n+1, A135523(#)*A296066((n+1)/#)]`
-/

namespace A368684.P14396391464608781995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A135523 d * A296066 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368684.P14396391464608781995

namespace A368684

/-- `∑{d}[n+1, A135523(#)*A296066((n+1)/#)]` -/
def P14396391464608781995.Spec : Prop :=
  ∀ n, P14396391464608781995.a n = A368684 (n + 1)

end A368684

/-! ## A368684.P18080011756706318766

`A000005(n+1)*A060576(n+1)-A091954(n+1)`
-/

namespace A368684.P18080011756706318766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A060576 (n + 1) - A091954 (n + 1)

end

end A368684.P18080011756706318766

namespace A368684

/-- `A000005(n+1)*A060576(n+1)-A091954(n+1)` -/
def P18080011756706318766.Spec : Prop :=
  ∀ n, P18080011756706318766.a n = A368684 (n + 1)

end A368684

/-! ## A368684.P7865458996115987814

`gcd(A003272(n), A069157(n+1))`
-/

namespace A368684.P7865458996115987814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003272 n) (A069157 (n + 1))

end

end A368684.P7865458996115987814

namespace A368684

/-- `gcd(A003272(n), A069157(n+1))` -/
def P7865458996115987814.Spec : Prop :=
  ∀ n, (P7865458996115987814.a n : ℤ) = A368684 (n + 1)

end A368684

/-! ## A368684.P923230585559091752

`A293234(A032528(n+1))`
-/

namespace A368684.P923230585559091752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293234 (A032528 (n + 1)).toNat

end

end A368684.P923230585559091752

namespace A368684

/-- `A293234(A032528(n+1))` -/
def P923230585559091752.Spec : Prop :=
  ∀ n, P923230585559091752.a n = A368684 (n + 1)

end A368684

/-! ## A368684.P6730373314291944374

`A000041(n+1)-A391629(n+1)`
-/

namespace A368684.P6730373314291944374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A391629 (n + 1)

end

end A368684.P6730373314291944374

namespace A368684

/-- `A000041(n+1)-A391629(n+1)` -/
def P6730373314291944374.Spec : Prop :=
  ∀ n, P6730373314291944374.a n = A368684 (n + 1)

end A368684

/-! ## A368684.P17644110433245360725

`A293234(A195043(n+1))`
-/

namespace A368684.P17644110433245360725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293234 (A195043 (n + 1)).toNat

end

end A368684.P17644110433245360725

namespace A368684

/-- `A293234(A195043(n+1))` -/
def P17644110433245360725.Spec : Prop :=
  ∀ n, P17644110433245360725.a n = A368684 (n + 1)

end A368684

/-! ## A368684.P10936105166617043169

`A293234(A195145(n+1))`
-/

namespace A368684.P10936105166617043169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293234 (A195145 (n + 1)).toNat

end

end A368684.P10936105166617043169

namespace A368684

/-- `A293234(A195145(n+1))` -/
def P10936105166617043169.Spec : Prop :=
  ∀ n, P10936105166617043169.a n = A368684 (n + 1)

end A368684

/-!
# A368687: Expansion of g.f. Sum_{n>=1} q^n/(1-q^n-q^(2*n)-q^(3*n)).

The programs for A368687, there is no canonical definition to state claims against.
-/

/-! ## A368687.P6296388726417249703

`∑{d}[n+1, A000073(#+1)]`
-/

namespace A368687.P6296388726417249703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000073 (d + 1)

end

end A368687.P6296388726417249703

/-! ## A368687.P5202042261960645207

`∑{d}[n+1, A089068(#-1)+1]`
-/

namespace A368687.P5202042261960645207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A089068 (d - 1) + 1)

end

end A368687.P5202042261960645207

/-!
# A368688: Expansion of g.f. Sum_{n>=1} q^n/(1-q^n-q^(3*n)).

The programs for A368688, there is no canonical definition to state claims against.
-/

/-! ## A368688.P473423617852275212

`∑{d}[n+1, A000930(#-1)]`
-/

namespace A368688.P473423617852275212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000930 (d - 1)

end

end A368688.P473423617852275212

/-!
# A368689: Expansion of g.f. Sum_{n>=1} q^n/(1-q^(2*n)-q^(3*n)).

The programs for A368689, there is no canonical definition to state claims against.
-/

/-! ## A368689.P5348686002955128149

`∑{d}[n+1, A000931(#+2)]`
-/

namespace A368689.P5348686002955128149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000931 (d + 2)

end

end A368689.P5348686002955128149

/-! ## A368689.P13222518471036907694

`∑{d}[n+1, A182097(#-1)]`
-/

namespace A368689.P13222518471036907694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A182097 (d - 1)

end

end A368689.P13222518471036907694

/-!
# A368691: Primes p such that p + 4 * q is prime, where q is the next prime after p.

The programs for A368691, there is no canonical definition to state claims against.
-/

/-! ## A368691.P5701560680725909641

`A156284(or(A003973(n+1), A051293(n+1)))`
-/

namespace A368691.P5701560680725909641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156284 (Int.lor (A003973 (n + 1)) (A051293 (n + 1))).toNat

end

end A368691.P5701560680725909641

/-! ## A368691.P17320983173871287961

`A020482(A264598(3*(n+1))+A000010(n+1))`
-/

namespace A368691.P17320983173871287961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A264598 (3 * (n + 1)) + A000010 (n + 1)).toNat

end

end A368691.P17320983173871287961

/-!
# A368694: Dirichlet inverse of the highest power of two that divides sigma(n), applied to A163511(n).

The programs for A368694, there is no canonical definition to state claims against.
-/

/-! ## A368694.P13839377191353886437

`A366889(A163511(n))`
-/

namespace A368694.P13839377191353886437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366889 (A163511 n).toNat

end

end A368694.P13839377191353886437

/-!
# A368696: Numbers whose arithmetic derivative (A003415) is a squarefree number of the form 4k+2.

The programs for A368696, the canonical program `A368696.P14589055336645590982` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368696 has offset 1).

The definition of A368696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7746 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368696.P14589055336645590982

`filter[A327862(n+1), A354874(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A368696

/-- `filter[A327862(n+1), A354874(#)]` -/
def P14589055336645590982.Spec : Prop :=
  ∀ n, P14589055336645590982.a n = A368696 (n + 1)

theorem P14589055336645590982.correct : P14589055336645590982.Spec := by
  intro n
  simp only [A368696, Nat.add_sub_cancel]

end A368696

/-! ## A368696.P1579014024076882307

`filter[A327862(n+1), A341994(#)]`
-/

namespace A368696.P1579014024076882307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A368696.P1579014024076882307

namespace A368696

/-- `filter[A327862(n+1), A341994(#)]` -/
def P1579014024076882307.Spec : Prop :=
  ∀ n, P1579014024076882307.a n = A368696 (n + 1)

end A368696

/-! ## A368696.P5750842405793276684

`filter[A373265(n+1), A341994(#)]`
-/

namespace A368696.P5750842405793276684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A368696.P5750842405793276684

namespace A368696

/-- `filter[A373265(n+1), A341994(#)]` -/
def P5750842405793276684.Spec : Prop :=
  ∀ n, P5750842405793276684.a n = A368696 (n + 1)

end A368696

/-! ## A368696.P1238085358948082412

`filter[A373265(n+1), A354874(#)]`
-/

namespace A368696.P1238085358948082412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A368696.P1238085358948082412

namespace A368696

/-- `filter[A373265(n+1), A354874(#)]` -/
def P1238085358948082412.Spec : Prop :=
  ∀ n, P1238085358948082412.a n = A368696 (n + 1)

end A368696

/-! ## A368696.P1478412085638591622

`filter[A368998(n+1), A341994(#)]`
-/

namespace A368696.P1478412085638591622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A368696.P1478412085638591622

namespace A368696

/-- `filter[A368998(n+1), A341994(#)]` -/
def P1478412085638591622.Spec : Prop :=
  ∀ n, P1478412085638591622.a n = A368696 (n + 1)

end A368696

/-! ## A368696.P596763998813722559

`filter[A368998(n+1), A354874(#)]`
-/

namespace A368696.P596763998813722559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A368696.P596763998813722559

namespace A368696

/-- `filter[A368998(n+1), A354874(#)]` -/
def P596763998813722559.Spec : Prop :=
  ∀ n, P596763998813722559.a n = A368696 (n + 1)

end A368696

/-! ## A368696.P11872170484364681509

`filter[A046337(n+1), A341994(#)]`
-/

namespace A368696.P11872170484364681509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A368696.P11872170484364681509

namespace A368696

/-- `filter[A046337(n+1), A341994(#)]` -/
def P11872170484364681509.Spec : Prop :=
  ∀ n, P11872170484364681509.a n = A368696 (n + 1)

end A368696

/-! ## A368696.P13122520309902513281

`filter[A046337(n+1), A354874(#)]`
-/

namespace A368696.P13122520309902513281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046337 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A368696.P13122520309902513281

namespace A368696

/-- `filter[A046337(n+1), A354874(#)]` -/
def P13122520309902513281.Spec : Prop :=
  ∀ n, P13122520309902513281.a n = A368696 (n + 1)

end A368696

/-! ## A368696.P559670671618715709

`filter[A345452(n+1), A341994(#)]`
-/

namespace A368696.P559670671618715709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A368696.P559670671618715709

namespace A368696

/-- `filter[A345452(n+1), A341994(#)]` -/
def P559670671618715709.Spec : Prop :=
  ∀ n, P559670671618715709.a n = A368696 (n + 1)

end A368696

/-! ## A368696.P2016868885791080456

`filter[A345452(n+1), A354874(#)]`
-/

namespace A368696.P2016868885791080456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345452 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A368696.P2016868885791080456

namespace A368696

/-- `filter[A345452(n+1), A354874(#)]` -/
def P2016868885791080456.Spec : Prop :=
  ∀ n, P2016868885791080456.a n = A368696 (n + 1)

end A368696

/-! ## A368696.P14538049368735732729

`filter[A369002(n+1), A341994(#)]`
-/

namespace A368696.P14538049368735732729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A368696.P14538049368735732729

namespace A368696

/-- `filter[A369002(n+1), A341994(#)]` -/
def P14538049368735732729.Spec : Prop :=
  ∀ n, P14538049368735732729.a n = A368696 (n + 1)

end A368696

/-! ## A368696.P8774662923165693640

`filter[A369002(n+1), A354874(#)]`
-/

namespace A368696.P8774662923165693640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A368696.P8774662923165693640

namespace A368696

/-- `filter[A369002(n+1), A354874(#)]` -/
def P8774662923165693640.Spec : Prop :=
  ∀ n, P8774662923165693640.a n = A368696 (n + 1)

end A368696

/-! ## A368696.P16270521853404303194

`filter[A328234(n+1), A353374(#)]`
-/

namespace A368696.P16270521853404303194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353374 (f1 j).toNat = 1) n)

end

end A368696.P16270521853404303194

namespace A368696

/-- `filter[A328234(n+1), A353374(#)]` -/
def P16270521853404303194.Spec : Prop :=
  ∀ n, P16270521853404303194.a n = A368696 (n + 1)

end A368696

/-! ## A368696.P11886101229552282407

`filter[A328234(n+1), A353495(#)]`
-/

namespace A368696.P11886101229552282407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353495 (f1 j).toNat = 1) n)

end

end A368696.P11886101229552282407

namespace A368696

/-- `filter[A328234(n+1), A353495(#)]` -/
def P11886101229552282407.Spec : Prop :=
  ∀ n, P11886101229552282407.a n = A368696 (n + 1)

end A368696

/-! ## A368696.P10317268236508764556

`filter[A328234(n+1), A353557(#)]`
-/

namespace A368696.P10317268236508764556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A368696.P10317268236508764556

namespace A368696

/-- `filter[A328234(n+1), A353557(#)]` -/
def P10317268236508764556.Spec : Prop :=
  ∀ n, P10317268236508764556.a n = A368696 (n + 1)

end A368696

/-! ## A368696.P8929613763997440467

`filter[A328234(n+1), A358680(#)]`
-/

namespace A368696.P8929613763997440467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A368696.P8929613763997440467

namespace A368696

/-- `filter[A328234(n+1), A358680(#)]` -/
def P8929613763997440467.Spec : Prop :=
  ∀ n, P8929613763997440467.a n = A368696 (n + 1)

end A368696

/-! ## A368696.P8984416114202596236

`filter[A328234(n+1), A368997(#)]`
-/

namespace A368696.P8984416114202596236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368997 (f1 j).toNat = 1) n)

end

end A368696.P8984416114202596236

namespace A368696

/-- `filter[A328234(n+1), A368997(#)]` -/
def P8984416114202596236.Spec : Prop :=
  ∀ n, P8984416114202596236.a n = A368696 (n + 1)

end A368696

/-! ## A368696.P6418011269381528215

`filter[A328234(n+1), A369001(#)]`
-/

namespace A368696.P6418011269381528215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369001 (f1 j).toNat = 1) n)

end

end A368696.P6418011269381528215

namespace A368696

/-- `filter[A328234(n+1), A369001(#)]` -/
def P6418011269381528215.Spec : Prop :=
  ∀ n, P6418011269381528215.a n = A368696 (n + 1)

end A368696

/-! ## A368696.P18300137609676020581

`filter[A328234(n+1), A373264(#)]`
-/

namespace A368696.P18300137609676020581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373264 (f1 j).toNat = 1) n)

end

end A368696.P18300137609676020581

namespace A368696

/-- `filter[A328234(n+1), A373264(#)]` -/
def P18300137609676020581.Spec : Prop :=
  ∀ n, P18300137609676020581.a n = A368696 (n + 1)

end A368696

/-! ## A368696.P5666698873011811230

`filter[A328234(n+1), A373374(#)]`
-/

namespace A368696.P5666698873011811230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A368696.P5666698873011811230

namespace A368696

/-- `filter[A328234(n+1), A373374(#)]` -/
def P5666698873011811230.Spec : Prop :=
  ∀ n, P5666698873011811230.a n = A368696 (n + 1)

end A368696

/-!
# A368697: Numbers that are divisible by the squares of two distinct primes and whose arithmetic derivative (A003415) is a squarefree number of the form 4k+2.

The programs for A368697, there is no canonical definition to state claims against.
-/

/-! ## A368697.P5585771532336508996

`filter[A369977(n+1), A354874(#)]`
-/

namespace A368697.P5585771532336508996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354874 (f1 j).toNat = 1) n)

end

end A368697.P5585771532336508996

/-! ## A368697.P14529439781335295229

`filter[A369977(n+1), A341994(#)]`
-/

namespace A368697.P14529439781335295229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341994 (f1 j).toNat = 1) n)

end

end A368697.P14529439781335295229

/-!
# A368698: a(n) is the smallest positive k such that A005940(1+n) divides the oblong number k*(k+1).

The programs for A368698, there is no canonical definition to state claims against.
-/

/-! ## A368698.P9964602093405412088

`A344005(A005940(1+n))`
-/

namespace A368698.P9964602093405412088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (A005940 (1 + n)).toNat

end

end A368698.P9964602093405412088

/-! ## A368698.P15308522469184789448

`A344005(A292602(3*(n+1)+n))`
-/

namespace A368698.P15308522469184789448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (A292602 (3 * (n + 1) + n)).toNat

end

end A368698.P15308522469184789448

/-! ## A368698.P18293315502932707371

`A344005(A324394(n)*A324395(n))`
-/

namespace A368698.P18293315502932707371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344005 (A324394 n * A324395 n).toNat

end

end A368698.P18293315502932707371

/-!
# A368699: a(n) = A354989(A005940(1+n)).

The programs for A368699, there is no canonical definition to state claims against.
-/

/-! ## A368699.P8477177845429605299

`A354989(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A368699.P8477177845429605299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354989 (A005940 (1 + n)).toNat

end

end A368699.P8477177845429605299

/-! ## A368699.P12173325023352767595

`Δ[A368700(abs(1-n))]`
-/

namespace A368699.P12173325023352767595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368700 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A368699.P12173325023352767595

/-! ## A368699.P4921867869659249781

`A079944(A088567(n)*A363035(n+1))`
-/

namespace A368699.P4921867869659249781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A088567 n * A363035 (n + 1)).toNat

end

end A368699.P4921867869659249781

/-! ## A368699.P14794874961015061730

`A003056(A241339(n))%A188169(2*n+5)`
-/

namespace A368699.P14794874961015061730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A241339 n).toNat) (A188169 (2 * n + 5))

end

end A368699.P14794874961015061730

