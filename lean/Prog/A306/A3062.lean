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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A306200: Number of unlabeled rooted semi-identity trees with n nodes.

The programs for A306200, there is no canonical definition to state claims against.
-/

/-! ## A306200.P12513763823142638188

`A003602(A052321(n+1))%A349501(n+1)`
-/

namespace A306200.P12513763823142638188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003602 (A052321 (n + 1)).toNat) (A349501 (n + 1))

end

end A306200.P12513763823142638188

/-! ## A306200.P8359015397010640242

`A000196(Δ[A173940(n)])`
-/

namespace A306200.P8359015397010640242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (n + 1) - f1 n).toNat

end

end A306200.P8359015397010640242

/-! ## A306200.P1186105702075632763

`A259361(A346747(n)+n)`
-/

namespace A306200.P1186105702075632763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A346747 n + (n : ℤ)).toNat

end

end A306200.P1186105702075632763

/-! ## A306200.P12065004898505649493

`A000194(floor(sqrt(A005736(n))))`
-/

namespace A306200.P12065004898505649493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.sqrt (A005736 n)).toNat

end

end A306200.P12065004898505649493

/-! ## A306200.P17716959345079624263

`row(∑[A197911(A030266(n))])`
-/

namespace A306200.P17716959345079624263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197911 (A030266 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306200.P17716959345079624263

/-!
# A306201: Number of unlabeled balanced rooted semi-identity trees with n nodes.

The programs for A306201, there is no canonical definition to state claims against.
-/

/-! ## A306201.P13257928723518376498

`A111660(A342338(n+1))`
-/

namespace A306201.P13257928723518376498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A342338 (n + 1)).toNat

end

end A306201.P13257928723518376498

/-! ## A306201.P8027213163695305676

`A273190(A026745(n)+A026733(n))`
-/

namespace A306201.P8027213163695305676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A026745 n + A026733 n).toNat

end

end A306201.P8027213163695305676

/-! ## A306201.P17716107900361284739

`A080197(A046682(n))%A166206(n)`
-/

namespace A306201.P17716107900361284739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080197 (A046682 n).toNat) (A166206 n)

end

end A306201.P17716107900361284739

/-! ## A306201.P9621239713413083414

`A320278(xor(A107659(n), A240496(2*(n+2))))`
-/

namespace A306201.P9621239713413083414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320278 (Int.xor (A107659 n) (A240496 (2 * (n + 2)))).toNat

end

end A306201.P9621239713413083414

/-! ## A306201.P665124463964071331

`A072493(n+5)-A354665(n*(n+1)/2)-A000120(A255125(n))`
-/

namespace A306201.P665124463964071331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072493 (n + 5) - A354665 (SequenceMachineLib.roundAway ((n : ℚ) * ((n + 1 : ℚ) / 2))).toNat - A000120 (A255125 n).toNat

end

end A306201.P665124463964071331

/-!
# A306202: Matula-Goebel numbers of rooted semi-identity trees.

The programs for A306202, there is no canonical definition to state claims against.
-/

/-! ## A306202.P16538985439918644418

`eq[A114099(n), A293162(A201195(n+1))]`
-/

namespace A306202.P16538985439918644418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 (A201195 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306202.P16538985439918644418

/-! ## A306202.P12801256437589638759

`lt[A003571(A217852(n+1)²), A128858(n+1)²]`
-/

namespace A306202.P12801256437589638759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003571 (A217852 (n + 1) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128858 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306202.P12801256437589638759

/-! ## A306202.P3382255458000786729

`record[A122132(n+1)%A122154(2*(n+2))]`
-/

namespace A306202.P3382255458000786729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122132 (n + 1)) (A122154 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306202.P3382255458000786729

/-! ## A306202.P854176155179646351

`eq[A114099(n), A276404(A157219(n))]`
-/

namespace A306202.P854176155179646351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276404 (A157219 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306202.P854176155179646351

/-! ## A306202.P3865276100551317978

`lt[A006694(A121739(n+1)), A128858(n+1)]`
-/

namespace A306202.P3865276100551317978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 (A121739 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128858 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306202.P3865276100551317978

/-!
# A306203: Matula-Goebel numbers of balanced rooted semi-identity trees.

The programs for A306203, there is no canonical definition to state claims against.
-/

/-! ## A306203.P9711051413507065222

`∩[A184155(n+1), A306202(n+1)]`
-/

namespace A306203.P9711051413507065222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306203.P9711051413507065222

/-! ## A306203.P5293725347013217511

`∩[A184155(n+1), A324935(n+1)]`
-/

namespace A306203.P5293725347013217511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306203.P5293725347013217511

/-! ## A306203.P3942451645595693769

`A324766(lt[A133277(n+1), 2*n+1])`
-/

namespace A306203.P3942451645595693769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133277 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324766 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A306203.P3942451645595693769

/-!
# A306206: a(n) = Sum_{k=0..n} (n^2)!/((n^2-n*k)!*n!^k).

The programs for A306206, the canonical program `A306206.P14126378335599603639` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306206 has offset 0).

The definition of A306206 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306206.P14126378335599603639

`∑{#}[n, n²!/((n²-n*#)!*n!^#)]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A306206

/-- `∑{#}[n, n²!/((n²-n*#)!*n!^#)]` -/
def P14126378335599603639.Spec : Prop :=
  ∀ n, P14126378335599603639.a n = (A306206 n : ℚ)

end A306206

/-!
# A306207: a(n) = Sum_{k=0..n} (n^2)!/((n^2-n*k)!*k!^n).

The programs for A306207, the canonical program `A306207.P16074860491734398284` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306207 has offset 0).

The definition of A306207 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306207.P16074860491734398284

`∑{#}[n, n²!/((n²-n*#)!*#!^n)]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A306207

/-- `∑{#}[n, n²!/((n²-n*#)!*#!^n)]` -/
def P16074860491734398284.Spec : Prop :=
  ∀ n, P16074860491734398284.a n = (A306207 n : ℚ)

end A306207

/-!
# A306208: Numbers x for which exists a number y such that x = Sum_{j=1..k}{y^(d_j) + (d_j)^y}, where d_j is one of the k digits of x.

The programs for A306208, there is no canonical definition to state claims against.
-/

/-! ## A306208.P11173799926361620547

`A381579(A112310(A350215(n+2)))`
-/

namespace A306208.P11173799926361620547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381579 (A112310 (A350215 (n + 2)).toNat).toNat

end

end A306208.P11173799926361620547

/-!
# A306209: Number A(n,k) of permutations of [n] within distance k of a fixed permutation; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A306209, there is no canonical definition to state claims against.
-/

/-! ## A306209.P584543849721119249

`A073093(A287417(n)!)`
-/

namespace A306209.P584543849721119249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (Nat.factorial (A287417 n).toNat)

end

end A306209.P584543849721119249

/-! ## A306209.P1965241060314670302

`A103183(A293718(n)+1)`
-/

namespace A306209.P1965241060314670302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103183 (A293718 n + 1).toNat

end

end A306209.P1965241060314670302

/-! ## A306209.P17138082998944149858

`A086833(A334548(n)+1)`
-/

namespace A306209.P17138082998944149858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086833 (A334548 n + 1).toNat

end

end A306209.P17138082998944149858

/-! ## A306209.P6003036831631450702

`A333748(2^A027935(n))`
-/

namespace A306209.P6003036831631450702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333748 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A027935 n : ℤ))).toNat

end

end A306209.P6003036831631450702

/-! ## A306209.P8219965530546266801

`A334948(2^A027935(n))`
-/

namespace A306209.P8219965530546266801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334948 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A027935 n : ℤ))).toNat

end

end A306209.P8219965530546266801

/-!
# A306210: T(n,k) = binomial(n + k, n) - binomial(n + floor(k/2), n) + 1, square array read by descending antidiagonals (n >= 0, k >= 0).

The programs for A306210, the canonical program `A306210.P6412861159377437369` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306210 has offset 0).

The definition of A306210 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(col(n)+row(n)-col(n), col(n))-C(col(n)+floor((row(n)-col(n))/2), col(n))+1` (program `A306210.P6412861159377437369`, by `A306210.P6412861159377437369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306210.P6412861159377437369

`C(col(n)+row(n)-col(n), col(n))-C(col(n)+floor((row(n)-col(n))/2), col(n))+1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A306210

/-- `C(col(n)+row(n)-col(n), col(n))-C(col(n)+floor((row(n)-col(n))/2), col(n))+1` -/
def P6412861159377437369.Spec : Prop :=
  ∀ n, P6412861159377437369.a n = A306210 n

theorem P6412861159377437369.correct : P6412861159377437369.Spec := by
  intro n
  simp only [A306210]

end A306210

/-! ## A306210.P6564789062343139682

`A131238(n)-(C(row(n), col(n))-1)`
-/

namespace A306210.P6564789062343139682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131238 n - ((Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) - 1)

end

end A306210.P6564789062343139682

namespace A306210

/-- `A131238(n)-(C(row(n), col(n))-1)` -/
def P6564789062343139682.Spec : Prop :=
  ∀ n, P6564789062343139682.a n = A306210 n

end A306210

/-! ## A306210.P3438234396828618436

`A131238(n)-A014473(n)`
-/

namespace A306210.P3438234396828618436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131238 n - A014473 n

end

end A306210.P3438234396828618436

namespace A306210

/-- `A131238(n)-A014473(n)` -/
def P3438234396828618436.Spec : Prop :=
  ∀ n, P3438234396828618436.a n = A306210 n

end A306210

/-! ## A306210.P6150390496699275985

`A007318(n)+1-A046854(n)`
-/

namespace A306210.P6150390496699275985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (1 - A046854 n)

end

end A306210.P6150390496699275985

namespace A306210

/-- `A007318(n)+1-A046854(n)` -/
def P6150390496699275985.Spec : Prop :=
  ∀ n, P6150390496699275985.a n = A306210 n

end A306210

/-! ## A306210.P3153780929230027678

`A131238(n)+1-A007318(n)`
-/

namespace A306210.P3153780929230027678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131238 n + (1 - A007318 n)

end

end A306210.P3153780929230027678

namespace A306210

/-- `A131238(n)+1-A007318(n)` -/
def P3153780929230027678.Spec : Prop :=
  ∀ n, P3153780929230027678.a n = A306210 n

end A306210

/-! ## A306210.P728706309256265945

`A131239(n)+1-A131238(n)`
-/

namespace A306210.P728706309256265945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131239 n + (1 - A131238 n)

end

end A306210.P728706309256265945

namespace A306210

/-- `A131239(n)+1-A131238(n)` -/
def P728706309256265945.Spec : Prop :=
  ∀ n, P728706309256265945.a n = A306210 n

end A306210

/-! ## A306210.P9874211078101106976

`A131350(n)+1-A131375(n)`
-/

namespace A306210.P9874211078101106976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131350 n + (1 - A131375 n)

end

end A306210.P9874211078101106976

namespace A306210

/-- `A131350(n)+1-A131375(n)` -/
def P9874211078101106976.Spec : Prop :=
  ∀ n, P9874211078101106976.a n = A306210 n

end A306210

/-! ## A306210.P4119935874121750465

`A131376(n)+1-A131374(n)`
-/

namespace A306210.P4119935874121750465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131376 n + (1 - A131374 n)

end

end A306210.P4119935874121750465

namespace A306210

/-- `A131376(n)+1-A131374(n)` -/
def P4119935874121750465.Spec : Prop :=
  ∀ n, P4119935874121750465.a n = A306210 n

end A306210

/-! ## A306210.P2990442664507966924

`A007318(n)+1-abs(A066170(n))`
-/

namespace A306210.P2990442664507966924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (1 - |A066170 n|)

end

end A306210.P2990442664507966924

namespace A306210

/-- `A007318(n)+1-abs(A066170(n))` -/
def P2990442664507966924.Spec : Prop :=
  ∀ n, P2990442664507966924.a n = A306210 n

end A306210

/-! ## A306210.P6183855774585499784

`Δ[A102363(n)]+1-A046854(n)`
-/

namespace A306210.P6183855774585499784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - A046854 n)

end

end A306210.P6183855774585499784

namespace A306210

/-- `Δ[A102363(n)]+1-A046854(n)` -/
def P6183855774585499784.Spec : Prop :=
  ∀ n, P6183855774585499784.a n = A306210 n

end A306210

/-!
# A306211: Concatenation of the current sequence with the lengths of the runs in the sequence, with a(1) = 1.

The programs for A306211, there is no canonical definition to state claims against.
-/

/-! ## A306211.P6609071455950788338

`gcd(A053238(n+1), A129001(n+1))`
-/

namespace A306211.P6609071455950788338
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053238 (n + 1)) (A129001 (n + 1))

end

end A306211.P6609071455950788338

/-! ## A306211.P16402540897932024814

`gcd(2, or(A055641(n), A129001(n+1)))`
-/

namespace A306211.P16402540897932024814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (Int.lor (A055641 n) (A129001 (n + 1)))

end

end A306211.P16402540897932024814

/-! ## A306211.P5547456557483702744

`gcd(A000032(A010894(n)), A129001(n+1))`
-/

namespace A306211.P5547456557483702744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000032 (A010894 (n + 21)).toNat) (A129001 (n + 1))

end

end A306211.P5547456557483702744

/-! ## A306211.P2715453912771615574

`A006530(gcd(A129001(n+1)-A010894(n), 2^n))`
-/

namespace A306211.P2715453912771615574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.gcd (A129001 (n + 1) - A010894 (n + 21)) (2 ^ n : ℤ))

end

end A306211.P2715453912771615574

/-! ## A306211.P12439666575786720327

`A000002(A377862(n+4)+A368517(3*n+2))`
-/

namespace A306211.P12439666575786720327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A377862 (n + 4) + A368517 (3 * n + 2)).toNat

end

end A306211.P12439666575786720327

/-!
# A306213: Numbers that are the sum of cubes of three distinct positive integers in arithmetic progression.

The programs for A306213, there is no canonical definition to state claims against.
-/

/-! ## A306213.P11045930528530618272

`A009004(A009012(A009004(A057096(2*n+1))))`
-/

namespace A306213.P11045930528530618272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009004 (A009012 (A009004 (A057096 (2 * n + 1)).toNat).toNat).toNat

end

end A306213.P11045930528530618272

/-!
# A306215: a(n) gives the length of A306211 after n generations.

The programs for A306215, there is no canonical definition to state claims against.
-/

/-! ## A306215.P6738642703478227154

`∑[A323475(n)]`
-/

namespace A306215.P6738642703478227154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306215.P6738642703478227154

/-! ## A306215.P15636124056549468935

`A323475(char[1]+n)+a(n-1)` with `a(0)=1`
-/

namespace A306215.P15636124056549468935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A323475 ((if ∃ j, f1 j = n then 1 else 0) + n) + a (n - 1)

end

end A306215.P15636124056549468935

/-! ## A306215.P11886623515358978371

`∑{d}[A000079(n), A323475(log2(#))]`
-/

namespace A306215.P11886623515358978371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A323475 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A306215.P11886623515358978371

/-! ## A306215.P13306312181585086019

`∑{d}[2^n, A323475(A001222(#))]`
-/

namespace A306215.P13306312181585086019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323475 (A001222 d).toNat

end

end A306215.P13306312181585086019

/-! ## A306215.P5211265763885888376

`∑[A135661(A279684(n))+1]`
-/

namespace A306215.P5211265763885888376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A279684 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306215.P5211265763885888376

/-!
# A306216: Successive concatenation of the current sequence with the first differences of the sequence, a(1) = a(2) = 1.

The programs for A306216, there is no canonical definition to state claims against.
-/

/-! ## A306216.P6830832466230127182

`A178948(∑[A032020(A073642(n))])`
-/

namespace A306216.P6830832466230127182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 (A073642 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178948 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306216.P6830832466230127182

/-! ## A306216.P306417208546565322

`A178948(A024661(n+1)%A107947(n+6))`
-/

namespace A306216.P306417208546565322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178948 (Int.tmod (A024661 (n + 1)) (A107947 (n + 6))).toNat

end

end A306216.P306417208546565322

/-! ## A306216.P12214573024064072496

`A178948(A024661(n+1))`
-/

namespace A306216.P12214573024064072496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178948 (A024661 (n + 1)).toNat

end

end A306216.P12214573024064072496

/-! ## A306216.P8110150491482343499

`A178948(A102493(n+2))`
-/

namespace A306216.P8110150491482343499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178948 (A102493 (n + 2)).toNat

end

end A306216.P8110150491482343499

/-! ## A306216.P10443889851114098334

`A178948(or(n+1, A002620(n)))`
-/

namespace A306216.P10443889851114098334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178948 (Int.lor (n + 1 : ℤ) (A002620 n)).toNat

end

end A306216.P10443889851114098334

/-!
# A306217: Sphenic numbers with a prime nearest neighbor.

The programs for A306217, the canonical program `A306217.P10231340410320966270` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306217 has offset 1).

The definition of A306217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1709 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306217.P8022736297473058874

`filter[A210939(n+1), A354926(#)]`
-/

namespace A306217.P8022736297473058874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A306217.P8022736297473058874

namespace A306217

/-- `filter[A210939(n+1), A354926(#)]` -/
def P8022736297473058874.Spec : Prop :=
  ∀ n, P8022736297473058874.a n = A306217 (n + 1)

end A306217

/-! ## A306217.P4729324921460392961

`∩[A075819(n+1), A210939(n+1)]`
-/

namespace A306217.P4729324921460392961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306217.P4729324921460392961

namespace A306217

/-- `∩[A075819(n+1), A210939(n+1)]` -/
def P4729324921460392961.Spec : Prop :=
  ∀ n, (P4729324921460392961.a n : ℤ) = A306217 (n + 1)

end A306217

/-! ## A306217.P10426771799900679296

`∩[A160350(n+1), A210939(n+1)]`
-/

namespace A306217.P10426771799900679296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306217.P10426771799900679296

namespace A306217

/-- `∩[A160350(n+1), A210939(n+1)]` -/
def P10426771799900679296.Spec : Prop :=
  ∀ n, (P10426771799900679296.a n : ℤ) = A306217 (n + 1)

end A306217

/-! ## A306217.P10231340410320966270

`filter[A045718(n), A354926(#)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A306217

/-- `filter[A045718(n), A354926(#)]` -/
def P10231340410320966270.Spec : Prop :=
  ∀ n, P10231340410320966270.a n = A306217 (n + 1)

theorem P10231340410320966270.correct : P10231340410320966270.Spec := by
  intro n
  simp only [A306217, Nat.add_sub_cancel]

end A306217

/-! ## A306217.P4235062172768266924

`∩[A075819(n+1), A045718(n)]`
-/

namespace A306217.P4235062172768266924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306217.P4235062172768266924

namespace A306217

/-- `∩[A075819(n+1), A045718(n)]` -/
def P4235062172768266924.Spec : Prop :=
  ∀ n, (P4235062172768266924.a n : ℤ) = A306217 (n + 1)

end A306217

/-! ## A306217.P9542032418670370497

`∩[A160350(n+1), A045718(n)]`
-/

namespace A306217.P9542032418670370497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306217.P9542032418670370497

namespace A306217

/-- `∩[A160350(n+1), A045718(n)]` -/
def P9542032418670370497.Spec : Prop :=
  ∀ n, (P9542032418670370497.a n : ℤ) = A306217 (n + 1)

end A306217

/-! ## A306217.P11636176260768897690

`∩[A007304(n+1), A045718(n)]`
-/

namespace A306217.P11636176260768897690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306217.P11636176260768897690

namespace A306217

/-- `∩[A007304(n+1), A045718(n)]` -/
def P11636176260768897690.Spec : Prop :=
  ∀ n, (P11636176260768897690.a n : ℤ) = A306217 (n + 1)

end A306217

/-! ## A306217.P1884000890223885921

`∩[A007304(n+1), A210939(n+1)]`
-/

namespace A306217.P1884000890223885921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210939 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306217.P1884000890223885921

namespace A306217

/-- `∩[A007304(n+1), A210939(n+1)]` -/
def P1884000890223885921.Spec : Prop :=
  ∀ n, (P1884000890223885921.a n : ℤ) = A306217 (n + 1)

end A306217

/-! ## A306217.P15743847250432648973

`filter[A210940(n+1), A354926(#)]`
-/

namespace A306217.P15743847250432648973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A306217.P15743847250432648973

namespace A306217

/-- `filter[A210940(n+1), A354926(#)]` -/
def P15743847250432648973.Spec : Prop :=
  ∀ n, P15743847250432648973.a n = A306217 (n + 1)

end A306217

/-! ## A306217.P2042337170927503442

`∩[A007304(n+1), A210940(n+1)]`
-/

namespace A306217.P2042337170927503442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306217.P2042337170927503442

namespace A306217

/-- `∩[A007304(n+1), A210940(n+1)]` -/
def P2042337170927503442.Spec : Prop :=
  ∀ n, (P2042337170927503442.a n : ℤ) = A306217 (n + 1)

end A306217

/-! ## A306217.P11577505154993092999

`∩[A075819(n+1), A210940(n+1)]`
-/

namespace A306217.P11577505154993092999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306217.P11577505154993092999

namespace A306217

/-- `∩[A075819(n+1), A210940(n+1)]` -/
def P11577505154993092999.Spec : Prop :=
  ∀ n, (P11577505154993092999.a n : ℤ) = A306217 (n + 1)

end A306217

/-! ## A306217.P12417701655768100572

`∩[A160350(n+1), A210940(n+1)]`
-/

namespace A306217.P12417701655768100572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306217.P12417701655768100572

namespace A306217

/-- `∩[A160350(n+1), A210940(n+1)]` -/
def P12417701655768100572.Spec : Prop :=
  ∀ n, (P12417701655768100572.a n : ℤ) = A306217 (n + 1)

end A306217

/-! ## A306217.P5031779701606521629

`eq[A051699(n)²+2, A325144(n)]`
-/

namespace A306217.P5031779701606521629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n ^ 2 + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306217.P5031779701606521629

namespace A306217

/-- `eq[A051699(n)²+2, A325144(n)]` -/
def P5031779701606521629.Spec : Prop :=
  ∀ n, (P5031779701606521629.a n : ℤ) = A306217 (n + 1)

end A306217

/-! ## A306217.P12859372951697137514

`filter[A066759(2*n+1), A354926(#)]`
-/

namespace A306217.P12859372951697137514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066759 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A306217.P12859372951697137514

namespace A306217

/-- `filter[A066759(2*n+1), A354926(#)]` -/
def P12859372951697137514.Spec : Prop :=
  ∀ n, P12859372951697137514.a n = A306217 (n + 1)

end A306217

/-! ## A306217.P12726753289308912362

`eq[A006881(A051700(n)), A160086(n)]`
-/

namespace A306217.P12726753289308912362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (A051700 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306217.P12726753289308912362

namespace A306217

/-- `eq[A006881(A051700(n)), A160086(n)]` -/
def P12726753289308912362.Spec : Prop :=
  ∀ n, (P12726753289308912362.a n : ℤ) = A306217 (n + 1)

end A306217

/-! ## A306217.P90745141430948005

`eq[A074206(n), A141077(A051700(n))]`
-/

namespace A306217.P90745141430948005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141077 (A051700 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306217.P90745141430948005

namespace A306217

/-- `eq[A074206(n), A141077(A051700(n))]` -/
def P90745141430948005.Spec : Prop :=
  ∀ n, (P90745141430948005.a n : ℤ) = A306217 (n + 1)

end A306217

/-! ## A306217.P7857019487652926958

`eq[A074206(n), A272994(A051699(n))]`
-/

namespace A306217.P7857019487652926958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272994 (A051699 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306217.P7857019487652926958

namespace A306217

/-- `eq[A074206(n), A272994(A051699(n))]` -/
def P7857019487652926958.Spec : Prop :=
  ∀ n, (P7857019487652926958.a n : ℤ) = A306217 (n + 1)

end A306217

/-! ## A306217.P7582414743193769091

`eq[A045943(A051699(n)), A325144(n)]`
-/

namespace A306217.P7582414743193769091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 (A051699 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325144 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306217.P7582414743193769091

namespace A306217

/-- `eq[A045943(A051699(n)), A325144(n)]` -/
def P7582414743193769091.Spec : Prop :=
  ∀ n, (P7582414743193769091.a n : ℤ) = A306217 (n + 1)

end A306217

/-!
# A306219: Records in A096004.

The programs for A306219, there is no canonical definition to state claims against.
-/

/-! ## A306219.P1736388181130694701

`record[and(or(1, n), A068554(n))]`
-/

namespace A306219.P1736388181130694701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.lor 1 n : ℤ) (A068554 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306219.P1736388181130694701

/-! ## A306219.P11275384963616940905

`A008574(lt[A188134(n), 11])`
-/

namespace A306219.P11275384963616940905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A306219.P11275384963616940905

/-! ## A306219.P15439990840207357535

`record[A145154(A071574(n+1))]`
-/

namespace A306219.P15439990840207357535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (A071574 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306219.P15439990840207357535

/-! ## A306219.P10103680357019973176

`record[and(A004442(n), A068554(n))]`
-/

namespace A306219.P10103680357019973176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004442 n) (A068554 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306219.P10103680357019973176

/-! ## A306219.P17005767575461442011

`lt[A265056(A106617(n)), A274931(n)]`
-/

namespace A306219.P17005767575461442011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265056 (A106617 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274931 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306219.P17005767575461442011

/-!
# A306222: Positions of 4's in A306211.

The programs for A306222, there is no canonical definition to state claims against.
-/

/-! ## A306222.P6606868932581023503

`eq[4, A306211(n+1)]+1`
-/

namespace A306222.P6606868932581023503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A306222.P6606868932581023503

/-! ## A306222.P1125545891051614374

`eq[4, A306211(A028310(n))]`
-/

namespace A306222.P1125545891051614374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306222.P1125545891051614374

/-! ## A306222.P3559240330831020748

`A153152(eq[4, A306211(n+1)])`
-/

namespace A306222.P3559240330831020748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306222.P3559240330831020748

/-! ## A306222.P5327929374965608306

`eq[4, A306211(A138153(n+1))]`
-/

namespace A306222.P5327929374965608306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306222.P5327929374965608306

/-! ## A306222.P14129635467614051896

`eq[4, A306211(A233583(n+1))]`
-/

namespace A306222.P14129635467614051896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306222.P14129635467614051896

/-!
# A306223: Positions of 5's in A306211.

The programs for A306223, there is no canonical definition to state claims against.
-/

/-! ## A306223.P9085244831374836380

`eq[5, A306211(A028310(n))]`
-/

namespace A306223.P9085244831374836380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306223.P9085244831374836380

/-! ## A306223.P7042255891036007439

`A153152(eq[5, A306211(n+1)])`
-/

namespace A306223.P7042255891036007439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306223.P7042255891036007439

/-! ## A306223.P17479466043476488935

`eq[5, A306211(A138153(n+1))]`
-/

namespace A306223.P17479466043476488935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306223.P17479466043476488935

/-! ## A306223.P10653356997777477954

`eq[5, A306211(A233583(n+1))]`
-/

namespace A306223.P10653356997777477954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306223.P10653356997777477954

/-!
# A306224: a(n) is the smallest prime p such that -n is not a square mod p.

The programs for A306224, there is no canonical definition to state claims against.
-/

/-! ## A306224.P6028948292412258031

`A306220(4*(n+1))`
-/

namespace A306224.P6028948292412258031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306220 (4 * (n + 1))

end

end A306224.P6028948292412258031

/-! ## A306224.P11715263856611535116

`p?[and(A102560(n), A306220(n+1))]`
-/

namespace A306224.P11715263856611535116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A102560 n) (A306220 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306224.P11715263856611535116

/-! ## A306224.P12629927090682351386

`A006530(A306220(Δ[(n+1)²+n²]))`
-/

namespace A306224.P12629927090682351386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A306220 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A306224.P12629927090682351386

/-! ## A306224.P6773885340274387920

`A020639(A306220(Δ[n²+(n+1)²]))`
-/

namespace A306224.P6773885340274387920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A306220 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A306224.P6773885340274387920

/-! ## A306224.P18185328046387330604

`A306220(Δ[A001844(n)])+A000007(n+1)`
-/

namespace A306224.P18185328046387330604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306220 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A306224.P18185328046387330604

/-! ## A306224.P18291270562798553098

`A306220(Δ[A001844(n)])%A000041(n+4)`
-/

namespace A306224.P18291270562798553098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306220 (f1 (n + 1) - f1 n).toNat) (A000041 (n + 4))

end

end A306224.P18291270562798553098

/-! ## A306224.P491423757252332999

`p?[gcd(A007877(n+2), A306220(n+2))]`
-/

namespace A306224.P491423757252332999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007877 (n + 2)) (A306220 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A306224.P491423757252332999

/-!
# A306227: Number of ways to write n as w + x^4 + y*(y+1)/2 + z*(z+1)/2, where w is 0 or 1, and x, y, z are nonnegative integers with x >= w and y < z.

The programs for A306227, there is no canonical definition to state claims against.
-/

/-! ## A306227.P9650397855493532358

`A249615(A008277(n+3)*A278291(n+1))`
-/

namespace A306227.P9650397855493532358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249615 (A008277 (n + 3) * A278291 (n + 1)).toNat

end

end A306227.P9650397855493532358

/-!
# A306228: Numerators of the even moments of the standard V-monotone Gaussian distribution (see the reference in 'Links', Section 5).

The programs for A306228, there is no canonical definition to state claims against.
-/

/-! ## A306228.P8374778344067812589

`A005843(A209305(n))-A324373(n)`
-/

namespace A306228.P8374778344067812589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A209305 n).toNat - A324373 n

end

end A306228.P8374778344067812589

/-!
# A306229: Lexicographically earliest sequence of distinct positive terms such that for any n > 0, K(n) <> K(a(n)) (where K denotes the Kolakoski sequence A000002).

The programs for A306229, there is no canonical definition to state claims against.
-/

/-! ## A306229.P12975645359163369877

`A023443(xor(A138902(n), A187829(n+2)))`
-/

namespace A306229.P12975645359163369877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (Int.xor (A138902 n) (A187829 (n + 2))).toNat

end

end A306229.P12975645359163369877

/-! ## A306229.P17009711139682314640

`A346703((2^∑{digits}[n, #%C(n, #)])!)+xor(1, n)`
-/

namespace A306229.P17009711139682314640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346703 (Nat.factorial (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum)) + (Nat.xor 1 n : ℤ)

end

end A306229.P17009711139682314640

/-! ## A306229.P5463264432986196091

`A004736(A309864(n))+xor(1, n)`
-/

namespace A306229.P5463264432986196091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A309864 n).toNat + (Nat.xor 1 n : ℤ)

end

end A306229.P5463264432986196091

/-! ## A306229.P12286677464209803403

`A005811(A185293(n))+abs(xor(n, -2))`
-/

namespace A306229.P12286677464209803403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A185293 n).toNat + |Int.xor (n : ℤ) (-2)|

end

end A306229.P12286677464209803403

/-! ## A306229.P901749667485745388

`A370814(A206074(2*n+5))+xor(1, n)`
-/

namespace A306229.P901749667485745388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370814 (A206074 (2 * n + 5)).toNat + (Nat.xor 1 n : ℤ)

end

end A306229.P901749667485745388

/-!
# A306230: Lexicographically earliest sequence of distinct positive terms such that for any n > 0, G(n) <> G(a(n)) (where G denotes Golomb's sequence A001462).

The programs for A306230, there is no canonical definition to state claims against.
-/

/-! ## A306230.P1504330736313234691

`A306229(n+5)-A000005(A111299(2*(n+1)))`
-/

namespace A306230.P1504330736313234691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306229 (n + 5) - A000005 (A111299 (2 * (n + 1))).toNat

end

end A306230.P1504330736313234691

/-!
# A306234: Number T(n,k) of occurrences of k in a (signed) displacement set of a permutation of [n] divided by |k|!; triangle T(n,k), n>=1, 1-n<=k<=n-1, read by rows.

The programs for A306234, there is no canonical definition to state claims against.
-/

/-! ## A306234.P12696022790487538395

`A306461(n+1)/A000142(A053615(n))`
-/

namespace A306234.P12696022790487538395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306461 (n + 1) : ℚ) / (A000142 (A053615 n).toNat : ℚ)

end

end A306234.P12696022790487538395

/-!
# A306235: Indices in A306428 of permutations t with a finite number of nonfixed points and such that t_i - t_j <> j - i for any distinct i and j (see Comments for precise definition).

The programs for A306235, there is no canonical definition to state claims against.
-/

/-! ## A306235.P7546405887244619075

`record[A333627(n)%A100754(n+6)]`
-/

namespace A306235.P7546405887244619075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333627 n) (A100754 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306235.P7546405887244619075

/-! ## A306235.P10857403717546000033

`A069205(n+1)-A262626(A000108(n))`
-/

namespace A306235.P10857403717546000033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069205 (n + 1) - A262626 (A000108 n).toNat

end

end A306235.P10857403717546000033

/-!
# A306236: a(n) is the smallest integer m > n with integer j > m makes n^2, m^2 and j^2 an arithmetic progression.

The programs for A306236, there is no canonical definition to state claims against.
-/

/-! ## A306236.P2437905799014548569

`sqrt(((n+1)²+A289398(n+1)²)/2)`
-/

namespace A306236.P2437905799014548569
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((((n + 1) ^ 2 : ℤ) + A289398 (n + 1) ^ 2 : ℚ) / 2 : ℝ)

end

end A306236.P2437905799014548569

/-! ## A306236.P11213593244683693146

`A008587(n+1)%A268457(A213899(n+5))`
-/

namespace A306236.P11213593244683693146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008587 (n + 1)) (A268457 (A213899 (n + 5)).toNat)

end

end A306236.P11213593244683693146

/-! ## A306236.P10225305576490151030

`A322967(A000217(2*n+1))+A102393(3*(n+1))`
-/

namespace A306236.P10225305576490151030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322967 (A000217 (2 * n + 1)).toNat + A102393 (3 * (n + 1))

end

end A306236.P10225305576490151030

/-! ## A306236.P13026373138942164531

`A248359(n+1)%A332580(A077095(n+1))`
-/

namespace A306236.P13026373138942164531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248359 (n + 1)) (A332580 (A077095 (n + 1)).toNat)

end

end A306236.P13026373138942164531

/-! ## A306236.P16467996683113310993

`A332102(Δ[n²])%A332580(A077095(n+1))`
-/

namespace A306236.P16467996683113310993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332102 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A332580 (A077095 (n + 1)).toNat)

end

end A306236.P16467996683113310993

/-!
# A306237: a(n) = primorial prime(n)#/prime(n - 1).

The programs for A306237, the canonical program `A306237.P9842382789925021475` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306237 has offset 2).

The definition of A306237 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306237.P9842382789925021475

`A002110(n+2)/A000040(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A306237

/-- `A002110(n+2)/A000040(n+1)` -/
def P9842382789925021475.Spec : Prop :=
  ∀ n, P9842382789925021475.a n = (A306237 (n + 2) : ℚ)

end A306237

/-! ## A306237.P12854199350618456908

`A246868(eq[1, col(n)])`
-/

namespace A306237.P12854199350618456908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246868 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A306237.P12854199350618456908

namespace A306237

/-- `A246868(eq[1, col(n)])` -/
def P12854199350618456908.Spec : Prop :=
  ∀ n, P12854199350618456908.a n = A306237 (n + 2)

end A306237

/-! ## A306237.P11791780737514840846

`A246868(∑[n+1]+1)`
-/

namespace A306237.P11791780737514840846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246868 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A306237.P11791780737514840846

namespace A306237

/-- `A246868(∑[n+1]+1)` -/
def P11791780737514840846.Spec : Prop :=
  ∀ n, P11791780737514840846.a n = A306237 (n + 2)

end A306237

/-! ## A306237.P17285125660114699523

`A077011(∑[n+1]+2)`
-/

namespace A306237.P17285125660114699523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A306237.P17285125660114699523

namespace A306237

/-- `A077011(∑[n+1]+2)` -/
def P17285125660114699523.Spec : Prop :=
  ∀ n, P17285125660114699523.a n = A306237 (n + 2)

end A306237

/-! ## A306237.P772622000408656767

`∏[eq[n, ∏{d}[n, #]]]*A000040(n+2)`
-/

namespace A306237.P772622000408656767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A000040 (n + 2)

end

end A306237.P772622000408656767

namespace A306237

/-- `∏[eq[n, ∏{d}[n, #]]]*A000040(n+2)` -/
def P772622000408656767.Spec : Prop :=
  ∀ n, P772622000408656767.a n = A306237 (n + 2)

end A306237

/-! ## A306237.P13247841823536218154

`∏[eq[n, ∏{d}[n, #]]]*A008578(n+3)`
-/

namespace A306237.P13247841823536218154
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A008578 (n + 3)

end

end A306237.P13247841823536218154

namespace A306237

/-- `∏[eq[n, ∏{d}[n, #]]]*A008578(n+3)` -/
def P13247841823536218154.Spec : Prop :=
  ∀ n, P13247841823536218154.a n = A306237 (n + 2)

end A306237

/-! ## A306237.P10372015360409001592

`∏[record[A020639(n+1)]]*p?[2*n+1]`
-/

namespace A306237.P10372015360409001592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) : ℤ)

end

end A306237.P10372015360409001592

namespace A306237

/-- `∏[record[A020639(n+1)]]*p?[2*n+1]` -/
def P10372015360409001592.Spec : Prop :=
  ∀ n, P10372015360409001592.a n = A306237 (n + 2)

end A306237

/-! ## A306237.P17534100363931420751

`p?[A005408(n)]*A002110(n)`
-/

namespace A306237.P17534100363931420751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A002110 n

end

end A306237.P17534100363931420751

namespace A306237

/-- `p?[A005408(n)]*A002110(n)` -/
def P17534100363931420751.Spec : Prop :=
  ∀ n, P17534100363931420751.a n = A306237 (n + 2)

end A306237

/-! ## A306237.P15084940749984778955

`A002110(n)*A065091(n+1)`
-/

namespace A306237.P15084940749984778955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A065091 (n + 1)

end

end A306237.P15084940749984778955

namespace A306237

/-- `A002110(n)*A065091(n+1)` -/
def P15084940749984778955.Spec : Prop :=
  ∀ n, P15084940749984778955.a n = A306237 (n + 2)

end A306237

/-! ## A306237.P8092764594363563467

`A000040(n+2)*A002110(n)`
-/

namespace A306237.P8092764594363563467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A002110 n

end

end A306237.P8092764594363563467

namespace A306237

/-- `A000040(n+2)*A002110(n)` -/
def P8092764594363563467.Spec : Prop :=
  ∀ n, P8092764594363563467.a n = A306237 (n + 2)

end A306237

/-!
# A306239: Number of ways to write n as x^3 + y^3 + pen(z) + pen(w), where x, y, z, w are nonnegative integers with x <= y and z <= w, and pen(k) denotes the pentagonal number k*(3*k-1)/2.

The programs for A306239, there is no canonical definition to state claims against.
-/

/-! ## A306239.P14531248290366767373

`A001221(A329738(n+4)+A301708(n))`
-/

namespace A306239.P14531248290366767373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A329738 (n + 4) + A301708 n).toNat

end

end A306239.P14531248290366767373

/-!
# A306241: a(n) = Sum_{k=0..n} (k*n)!/n!^k.

The programs for A306241, the canonical program `A306241.P11096922784626305221` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306241 has offset 0).

The definition of A306241 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306241.P11096922784626305221

`∑{#}[n, (#*n)!/n!^#]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A306241

/-- `∑{#}[n, (#*n)!/n!^#]` -/
def P11096922784626305221.Spec : Prop :=
  ∀ n, P11096922784626305221.a n = (A306241 n : ℚ)

end A306241

/-!
# A306245: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where A(0,k) = 1 and A(n,k) = Sum_{j=0..n-1} k^j * binomial(n-1,j) * A(j,k) for n > 0.

The programs for A306245, there is no canonical definition to state claims against.
-/

/-! ## A306245.P5869572564591216372

`A089657(A290759(n))`
-/

namespace A306245.P5869572564591216372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089657 (A290759 n).toNat

end

end A306245.P5869572564591216372

/-! ## A306245.P12988559918579435273

`or(A010051(A206100(n)), A290759(n))`
-/

namespace A306245.P12988559918579435273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (A206100 n).toNat) (A290759 n)

end

end A306245.P12988559918579435273

/-! ## A306245.P12467463651169683440

`or(A051731(A258695(n)), A290759(n))`
-/

namespace A306245.P12467463651169683440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051731 (A258695 n).toNat) (A290759 n)

end

end A306245.P12467463651169683440

/-! ## A306245.P4945566884165095120

`or(A030190(A299275(n)), A290759(n))`
-/

namespace A306245.P4945566884165095120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030190 (A299275 n).toNat) (A290759 n)

end

end A306245.P4945566884165095120

/-! ## A306245.P7704116617696882774

`or(A290759(n), A327253(A320354(n)))`
-/

namespace A306245.P7704116617696882774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290759 n) (A327253 (A320354 n).toNat)

end

end A306245.P7704116617696882774

/-!
# A306246: a(1) = 1, a(2) = 2, and for any n > 2, a(n) = o(n-1) + o(n-2) where o(k) is the number of occurrences of a(k) among a(1), ..., a(k).

The programs for A306246, there is no canonical definition to state claims against.
-/

/-! ## A306246.P7244290253928745648

`∑[A364027(n+2)-A364027(n)]`
-/

namespace A306246.P7244290253928745648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364027 (n + 2) - A364027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306246.P7244290253928745648

/-! ## A306246.P4927663732025044945

`A364027(n+1)+A364027(n+2)`
-/

namespace A306246.P4927663732025044945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364027 (n + 1) + A364027 (n + 2)

end

end A306246.P4927663732025044945

/-! ## A306246.P5511460423141700707

`A115572(A064162(n+1))+A000120(n)`
-/

namespace A306246.P5511460423141700707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115572 (A064162 (n + 1)).toNat + A000120 n

end

end A306246.P5511460423141700707

/-! ## A306246.P14411286202880743344

`A305079(n+1)+A000120(A181811(n+1))`
-/

namespace A306246.P14411286202880743344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (n + 1) + A000120 (A181811 (n + 1)).toNat

end

end A306246.P14411286202880743344

/-! ## A306246.P5926997090600568835

`A115572(A064162(n+1))+A001222(A001316(n))`
-/

namespace A306246.P5926997090600568835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115572 (A064162 (n + 1)).toNat + A001222 (A001316 n).toNat

end

end A306246.P5926997090600568835

/-!
# A306248: Smallest m for which 2n is not m-powerful (for the definition of k-powerful see A323395).

The programs for A306248, there is no canonical definition to state claims against.
-/

/-! ## A306248.P6516713896935519918

`A211701(A183079(n+1))`
-/

namespace A306248.P6516713896935519918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211701 (A183079 (n + 1)).toNat

end

end A306248.P6516713896935519918

/-! ## A306248.P18037708125904433896

`A001511(A061537(n+1))-A024155(n+1)`
-/

namespace A306248.P18037708125904433896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A061537 (n + 1)).toNat - A024155 (n + 1)

end

end A306248.P18037708125904433896

/-! ## A306248.P5527261576255836197

`A001511(A061537(n+1)/(A024155(n+1)+1))`
-/

namespace A306248.P5527261576255836197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A061537 (n + 1) : ℚ) / (A024155 (n + 1) + 1 : ℚ))).toNat

end

end A306248.P5527261576255836197

/-! ## A306248.P12219694186816806484

`ceil(A183063(A269394(3*n+2)+1)/2)+1`
-/

namespace A306248.P12219694186816806484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A183063 (A269394 (3 * n + 2) + 1).toNat : ℚ) / 2⌉ + 1

end

end A306248.P12219694186816806484

/-! ## A306248.P15156411937391311932

`A220400(6*(n+1))+A178764(A111166(8*n+2))`
-/

namespace A306248.P15156411937391311932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220400 (6 * (n + 1)) + A178764 (A111166 (8 * n + 2)).toNat

end

end A306248.P15156411937391311932

/-!
# A306249: Number of ways to write n as x*(2x-1) + y*(3y-1) + z*(4z-1) + w*(5w-1), where x,y,z are nonnegative integers and w is 0 or 1.

The programs for A306249, there is no canonical definition to state claims against.
-/

/-! ## A306249.P1964471510932307738

`A001221(A177737(n)+A024354(n+1))`
-/

namespace A306249.P1964471510932307738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A177737 n + A024354 (n + 1)).toNat

end

end A306249.P1964471510932307738

/-! ## A306249.P4604383464620304762

`∑{p}[A177737(n)+A024354(n+1), A306682(#)]`
-/

namespace A306249.P4604383464620304762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177737 n + A024354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A306682 p

end

end A306249.P4604383464620304762

/-! ## A306249.P17984923442225158137

`A001222(∏{p}[A177737(n)+A024354(n+1), #])`
-/

namespace A306249.P17984923442225158137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177737 n + A024354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A306249.P17984923442225158137

/-! ## A306249.P18401697958004326892

`A212793(2*n+1)+A024359(A362193(n))`
-/

namespace A306249.P18401697958004326892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (2 * n + 1) + A024359 (A362193 n).toNat

end

end A306249.P18401697958004326892

/-! ## A306249.P16002856332141793890

`A001221(A324925(3*(n+1))+char[A001911(n+2)])`
-/

namespace A306249.P16002856332141793890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A324925 (3 * (n + 1)) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A306249.P16002856332141793890

/-!
# A306251: Ordinal transform of A306246.

The programs for A306251, there is no canonical definition to state claims against.
-/

/-! ## A306251.P13569396679573913793

`A364036(1+n)+1`
-/

namespace A306251.P13569396679573913793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364036 (1 + n) + 1

end

end A306251.P13569396679573913793

/-! ## A306251.P779869856204452554

`A306246(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A306251.P779869856204452554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A306246 (n + 2) - a (n - 1)

end

end A306251.P779869856204452554

/-! ## A306251.P9025191652522080077

`A306246(n+2)-A364027(n+2)`
-/

namespace A306251.P9025191652522080077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306246 (n + 2) - A364027 (n + 2)

end

end A306251.P9025191652522080077

/-! ## A306251.P12293370019791725103

`A364027(n+3)`
-/

namespace A306251.P12293370019791725103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364027 (n + 3)

end

end A306251.P12293370019791725103

/-! ## A306251.P812296756058888263

`A001222(A311941(n)+A052806(n))`
-/

namespace A306251.P812296756058888263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A311941 n + A052806 n).toNat

end

end A306251.P812296756058888263

/-!
# A306252: Least primitive root mod A033948(n).

The programs for A306252, there is no canonical definition to state claims against.
-/

/-! ## A306252.P1209834972294966873

`A046145(A033948(1+n))`
-/

namespace A306252.P1209834972294966873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A033948 (1 + n)).toNat

end

end A306252.P1209834972294966873

/-! ## A306252.P4714776543595873520

`A046145(lt[dr(n), 4^A046145(n)])`
-/

namespace A306252.P4714776543595873520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n : ℤ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A046145 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A306252.P4714776543595873520

/-! ## A306252.P7974772077498867592

`A046145(record[(n+1)%(A046145(n+1)+n+1)])`
-/

namespace A306252.P7974772077498867592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A046145 (n + 1) + (n + 1 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306252.P7974772077498867592

/-! ## A306252.P16811476161097029144

`A046145(eq[A000010(n+1), A002322(n+1)]+1)`
-/

namespace A306252.P16811476161097029144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A306252.P16811476161097029144

/-! ## A306252.P7253128237363800406

`A046145(lt[n, (n+1)^A046145(n)])`
-/

namespace A306252.P7253128237363800406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A046145 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A306252.P7253128237363800406

/-!
# A306253: Largest primitive root mod A033948(n).

The programs for A306253, there is no canonical definition to state claims against.
-/

/-! ## A306253.P1027004146601607114

`A046146(A033948(n+1))`
-/

namespace A306253.P1027004146601607114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (A033948 (n + 1)).toNat

end

end A306253.P1027004146601607114

/-! ## A306253.P8698526039138566097

`A046146(record[A141258(n+1)])`
-/

namespace A306253.P8698526039138566097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306253.P8698526039138566097

/-! ## A306253.P2145841230193607943

`A046146(eq[1, gcd(n, A046146(n))])`
-/

namespace A306253.P2145841230193607943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A046146 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A306253.P2145841230193607943

/-! ## A306253.P5507091150875258898

`A046146(record[A160377(n+1)+1])`
-/

namespace A306253.P5507091150875258898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160377 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306253.P5507091150875258898

/-! ## A306253.P13989589290308469316

`A046146(lt[n, (A046146(n)+1)²])`
-/

namespace A306253.P13989589290308469316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046146 n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A306253.P13989589290308469316

/-! ## A306253.P1282179916804266761

`A046146(lt[1, A046146(n)+acot(n)])`
-/

namespace A306253.P1282179916804266761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A046146 n : ℝ) + SequenceMachineLib.acot (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)

end

end A306253.P1282179916804266761

/-! ## A306253.P4840809719768036929

`A046146(lt[n, A254667(n)+A046146(n)])`
-/

namespace A306253.P4840809719768036929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n + A046146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A306253.P4840809719768036929

/-! ## A306253.P14040525042022218456

`A046146(lt[n-A046146(n), A254667(n)])`
-/

namespace A306253.P14040525042022218456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A046146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A306253.P14040525042022218456

/-! ## A306253.P11038984042592653858

`A046146(lt[A001222(n+1), A046146(n)+1])`
-/

namespace A306253.P11038984042592653858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A306253.P11038984042592653858

/-! ## A306253.P7573867077534867525

`A046146(eq[A010554(n+1), A046144(n+1)]+1)`
-/

namespace A306253.P7573867077534867525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A306253.P7573867077534867525

/-! ## A306253.P10440929535540330059

`A046146(lt[n, A254667(A046146(n)+n)])`
-/

namespace A306253.P10440929535540330059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A046146 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A306253.P10440929535540330059

/-! ## A306253.P3824530075486408973

`A247176(A033948(2*n+1-n))`
-/

namespace A306253.P3824530075486408973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247176 (A033948 (2 * n + 1 - n)).toNat

end

end A306253.P3824530075486408973

/-!
# A306254: Denominators of the rational factor of Kaplan's series for the Dottie number.

The programs for A306254, there is no canonical definition to state claims against.
-/

/-! ## A306254.P5843000569639806560

`A000079(2*n+1)*A362406(n)`
-/

namespace A306254.P5843000569639806560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) * A362406 n

end

end A306254.P5843000569639806560

/-!
# A306257: a(n) = t for the minimal integer k > t such that k^2 mod n = t^2 is a perfect square.

The programs for A306257, there is no canonical definition to state claims against.
-/

/-! ## A306257.P3429252957724401367

`A306284(n+1)+A371124(n+1)-A306271(n+1)`
-/

namespace A306257.P3429252957724401367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306284 (n + 1) + (A371124 (n + 1) - A306271 (n + 1))

end

end A306257.P3429252957724401367

/-!
# A306258: a(n) = floor(n^2/4)*n!.

The programs for A306258, the canonical program `A306258.P563634594813119937` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306258 has offset 0).

The definition of A306258 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n²/4)*n!` (program `A306258.P563634594813119937`, by `A306258.P563634594813119937.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306258.P563634594813119937

`floor(n²/4)*n!`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A306258

/-- `floor(n²/4)*n!` -/
def P563634594813119937.Spec : Prop :=
  ∀ n, P563634594813119937.a n = A306258 n

theorem P563634594813119937.correct : P563634594813119937.Spec := by
  intro n
  simp only [A306258]

end A306258

/-! ## A306258.P2911728688023293772

`n!*floor((n/2)²)`
-/

namespace A306258.P2911728688023293772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ⌊((n : ℚ) / 2) ^ 2⌋

end

end A306258.P2911728688023293772

namespace A306258

/-- `n!*floor((n/2)²)` -/
def P2911728688023293772.Spec : Prop :=
  ∀ n, P2911728688023293772.a n = A306258 n

theorem P2911728688023293772.correct : P2911728688023293772.Spec := by
  intro n
  simp only [A306258, Nat.add_sub_cancel, A306258.P2911728688023293772.a, A306258.P563634594813119937.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A306258

/-! ## A306258.P13336411716390936636

`lcm(n!, dr(n))*∑[floor(n/2)]`
-/

namespace A306258.P13336411716390936636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (Nat.factorial n) (SequenceMachineLib.digitalRoot (n : ℤ)) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306258.P13336411716390936636

namespace A306258

/-- `lcm(n!, dr(n))*∑[floor(n/2)]` -/
def P13336411716390936636.Spec : Prop :=
  ∀ n, P13336411716390936636.a n = A306258 n

end A306258

/-! ## A306258.P6086759321297141394

`n!*A007590(n)/2`
-/

namespace A306258.P6086759321297141394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A007590 n : ℚ) / 2

end

end A306258.P6086759321297141394

namespace A306258

/-- `n!*A007590(n)/2` -/
def P6086759321297141394.Spec : Prop :=
  ∀ n, P6086759321297141394.a n = (A306258 n : ℚ)

end A306258

/-! ## A306258.P17694150596221093195

`∑[and(n, -2)]*A001710(n)`
-/

namespace A306258.P17694150596221093195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001710 n

end

end A306258.P17694150596221093195

namespace A306258

/-- `∑[and(n, -2)]*A001710(n)` -/
def P17694150596221093195.Spec : Prop :=
  ∀ n, P17694150596221093195.a n = A306258 n

end A306258

/-! ## A306258.P14231013665308755814

`floor((n/2)²)*A000142(n)`
-/

namespace A306258.P14231013665308755814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋ * A000142 n

end

end A306258.P14231013665308755814

namespace A306258

/-- `floor((n/2)²)*A000142(n)` -/
def P14231013665308755814.Spec : Prop :=
  ∀ n, P14231013665308755814.a n = A306258 n

theorem P14231013665308755814.correct : P14231013665308755814.Spec := by
  intro n
  simp only [A306258, Nat.add_sub_cancel, A306258.P14231013665308755814.a, A306258.P563634594813119937.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306258

/-! ## A306258.P8315986639014011862

`A000142(n)*A002620(n)`
-/

namespace A306258.P8315986639014011862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A002620 n

end

end A306258.P8315986639014011862

namespace A306258

/-- `A000142(n)*A002620(n)` -/
def P8315986639014011862.Spec : Prop :=
  ∀ n, P8315986639014011862.a n = A306258 n

theorem P8315986639014011862.correct : P8315986639014011862.Spec := by
  intro n
  simp only [A306258, Nat.add_sub_cancel, A306258.P8315986639014011862.a, A306258.P563634594813119937.a, A000142, A000142.P3272619076580183195.a, A002620, A002620.P9002536657626793813.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306258

/-! ## A306258.P8256520680202961304

`A052618(n)-A000142(n+1)`
-/

namespace A306258.P8256520680202961304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052618 n - A000142 (n + 1)

end

end A306258.P8256520680202961304

namespace A306258

/-- `A052618(n)-A000142(n+1)` -/
def P8256520680202961304.Spec : Prop :=
  ∀ n, P8256520680202961304.a n = A306258 n

end A306258

/-! ## A306258.P9065973840144873365

`A004526(n+1)*A052657(n)`
-/

namespace A306258.P9065973840144873365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) * A052657 n

end

end A306258.P9065973840144873365

namespace A306258

/-- `A004526(n+1)*A052657(n)` -/
def P9065973840144873365.Spec : Prop :=
  ∀ n, P9065973840144873365.a n = A306258 n

end A306258

/-! ## A306258.P9232530666761018416

`A002620(n)*A081123(2*n)`
-/

namespace A306258.P9232530666761018416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n * A081123 (2 * n)

end

end A306258.P9232530666761018416

namespace A306258

/-- `A002620(n)*A081123(2*n)` -/
def P9232530666761018416.Spec : Prop :=
  ∀ n, P9232530666761018416.a n = A306258 n

end A306258

/-!
# A306260: Number of ways to write n as w*(4w+1) + x*(4x-1) + y*(4y-2) + z*(4z-3) with w,x,y,z nonnegative integers.

The programs for A306260, there is no canonical definition to state claims against.
-/

/-! ## A306260.P2662953161198329420

`A001826(or(A173278(n), A176187(n)))`
-/

namespace A306260.P2662953161198329420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (Int.lor (A173278 n) (A176187 n)).toNat

end

end A306260.P2662953161198329420

/-! ## A306260.P16146113007945567981

`A001826(or(A173278(n), A279060(n)))`
-/

namespace A306260.P16146113007945567981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (Int.lor (A173278 n) (A279060 n)).toNat

end

end A306260.P16146113007945567981

/-! ## A306260.P16017405458751909046

`A043531(n+1)^A324852(A275463(n+1))`
-/

namespace A306260.P16017405458751909046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A043531 (n + 1) : ℚ) ^ (A324852 (A275463 (n + 1)).toNat : ℤ)

end

end A306260.P16017405458751909046

/-! ## A306260.P6606522613383063218

`A001221(A162766(n+1)*A365663(n+2)+1)`
-/

namespace A306260.P6606522613383063218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A162766 (n + 1) * A365663 (n + 2) + 1).toNat

end

end A306260.P6606522613383063218

/-! ## A306260.P9391346787080442082

`A305079(A332284(2*n+1)+A002061(2*n+3))`
-/

namespace A306260.P9391346787080442082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A332284 (2 * n + 1) + A002061 (2 * n + 3)).toNat

end

end A306260.P9391346787080442082

/-!
# A306261: Least k > 0 such that 2n - p is prime where p is some prime divisor of 4n^2 - (2k-1)^2 for n >= 4.

The programs for A306261, there is no canonical definition to state claims against.
-/

/-! ## A306261.P1710441989219496124

`A056832(gcd(A245826(n+4), A245840(3*n+2)))`
-/

namespace A306261.P1710441989219496124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (Int.gcd (A245826 (n + 4)) (A245840 (3 * n + 2)))

end

end A306261.P1710441989219496124

/-! ## A306261.P9535559565393103733

`gcd(A101852(A195919(2*(n+2))), A106490(2*n+5))`
-/

namespace A306261.P9535559565393103733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101852 (A195919 (2 * (n + 2))).toNat) (A106490 (2 * n + 5))

end

end A306261.P9535559565393103733

/-! ## A306261.P3490140771826744871

`A000002(gcd(A054317(n+3), A289249(n)))`
-/

namespace A306261.P3490140771826744871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (Int.gcd (A054317 (n + 3)) (A289249 n))

end

end A306261.P3490140771826744871

/-! ## A306261.P17468604699655419784

`gcd(A038548(2*n+5), A111496(A276086(n)))`
-/

namespace A306261.P17468604699655419784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038548 (2 * n + 5)) (A111496 (A276086 n).toNat)

end

end A306261.P17468604699655419784

/-! ## A306261.P15658881766344241346

`A202832(A244986(n+2)%A304687(2*n+5))`
-/

namespace A306261.P15658881766344241346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202832 (Int.tmod (A244986 (n + 2)) (A304687 (2 * n + 5))).toNat

end

end A306261.P15658881766344241346

/-!
# A306262: Difference between maximum and minimum sum of products of successive pairs in permutations of [n].

The programs for A306262, the canonical program `A306262.P9681407930267255523` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306262 has offset 0).

The definition of A306262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306262.P6740123331806007451

`ogf((4x^3-x^4-x^5)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A306262.P6740123331806007451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 4, -1, -1] [1, -3, 2, 2, -3, 1] n

end

end A306262.P6740123331806007451

namespace A306262

/-- `ogf((4x^3-x^4-x^5)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P6740123331806007451.Spec : Prop :=
  ∀ n, P6740123331806007451.a n = A306262 n

end A306262

/-! ## A306262.P9681407930267255523

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=4, a(4)=11, a(5)=24`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A306262

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P9681407930267255523.Spec : Prop :=
  ∀ n, P9681407930267255523.a n = A306262 n

theorem P9681407930267255523.correct : P9681407930267255523.Spec := by
  intro n
  simp only [A306262]

end A306262

/-! ## A306262.P18441553563559400235

`A110610(n+1)-A110611(n+1)`
-/

namespace A306262.P18441553563559400235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110610 (n + 1) - A110611 (n + 1)

end

end A306262.P18441553563559400235

namespace A306262

/-- `A110610(n+1)-A110611(n+1)` -/
def P18441553563559400235.Spec : Prop :=
  ∀ n, P18441553563559400235.a n = A306262 n

end A306262

/-! ## A306262.P13068186600261529394

`a(n-2)+n²-5` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A306262.P13068186600261529394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  a (n - 2) + ((n ^ 2 : ℤ) - 5)

end

end A306262.P13068186600261529394

namespace A306262

/-- `a(n-2)+n²-5` -/
def P13068186600261529394.Spec : Prop :=
  ∀ n, P13068186600261529394.a n = A306262 n

end A306262

/-! ## A306262.P17954739122081713484

`n²-(5-a(n-2))` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A306262.P17954739122081713484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  (n ^ 2 : ℤ) - (5 - a (n - 2))

end

end A306262.P17954739122081713484

namespace A306262

/-- `n²-(5-a(n-2))` -/
def P17954739122081713484.Spec : Prop :=
  ∀ n, P17954739122081713484.a n = A306262 n

end A306262

/-! ## A306262.P3203527295251714104

`∑[∑[a(n-2)+2]]` with `a(0)=0, a(1)=0, a(2)=0, a(3)=4, a(4)=3`
-/

namespace A306262.P3203527295251714104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 4, 3] fun n f2 =>
  f2 (n - 2) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306262.P3203527295251714104

namespace A306262

/-- `∑[∑[a(n-2)+2]]` -/
def P3203527295251714104.Spec : Prop :=
  ∀ n, (P3203527295251714104.a n : ℤ) = A306262 n

end A306262

/-! ## A306262.P4825991992248487721

`n²+∑[char[1]+n²]+1-ceil(C(n+3, 3)+(n-1)/2)`
-/

namespace A306262.P4825991992248487721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℕ) : ℤ) - ⌈(Nat.choose (n + 3) 3 : ℚ) + ((n : ℤ) - 1 : ℚ) / 2⌉

end

end A306262.P4825991992248487721

namespace A306262

/-- `n²+∑[char[1]+n²]+1-ceil(C(n+3, 3)+(n-1)/2)` -/
def P4825991992248487721.Spec : Prop :=
  ∀ n, P4825991992248487721.a n = A306262 n

end A306262

/-! ## A306262.P8210006989849360121

`∑[∑[n-char[2]]]-A032766(n)`
-/

namespace A306262.P8210006989849360121
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A032766 n

end

end A306262.P8210006989849360121

namespace A306262

/-- `∑[∑[n-char[2]]]-A032766(n)` -/
def P8210006989849360121.Spec : Prop :=
  ∀ n, P8210006989849360121.a n = A306262 n

end A306262

/-! ## A306262.P7297781815612519015

`A064843(n+1)-A004273(n)`
-/

namespace A306262.P7297781815612519015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064843 (n + 1) - A004273 n

end

end A306262.P7297781815612519015

namespace A306262

/-- `A064843(n+1)-A004273(n)` -/
def P7297781815612519015.Spec : Prop :=
  ∀ n, P7297781815612519015.a n = A306262 n

end A306262

/-! ## A306262.P1911666466601978242

`A393145(n+1)-A131098(n+1)`
-/

namespace A306262.P1911666466601978242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393145 (n + 1) - A131098 (n + 1)

end

end A306262.P1911666466601978242

namespace A306262

/-- `A393145(n+1)-A131098(n+1)` -/
def P1911666466601978242.Spec : Prop :=
  ∀ n, P1911666466601978242.a n = A306262 n

end A306262

/-! ## A306262.P2862836232432998313

`A393145(n+1)+A393532(n+1)-A110611(n+1)`
-/

namespace A306262.P2862836232432998313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393145 (n + 1) + (A393532 (n + 1) - A110611 (n + 1))

end

end A306262.P2862836232432998313

namespace A306262

/-- `A393145(n+1)+A393532(n+1)-A110611(n+1)` -/
def P2862836232432998313.Spec : Prop :=
  ∀ n, P2862836232432998313.a n = A306262 n

end A306262

/-! ## A306262.P17893012047972955816

`∑[∑[n+1-and(3, A266447(n+1))]]`
-/

namespace A306262.P17893012047972955816
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - Int.land 3 (A266447 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306262.P17893012047972955816

namespace A306262

/-- `∑[∑[n+1-and(3, A266447(n+1))]]` -/
def P17893012047972955816.Spec : Prop :=
  ∀ n, P17893012047972955816.a n = A306262 n

end A306262

/-! ## A306262.P4436329306224470707

`A116721(n+1)-A000982(n+1)`
-/

namespace A306262.P4436329306224470707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116721 (n + 1) - A000982 (n + 1)

end

end A306262.P4436329306224470707

namespace A306262

/-- `A116721(n+1)-A000982(n+1)` -/
def P4436329306224470707.Spec : Prop :=
  ∀ n, P4436329306224470707.a n = A306262 n

end A306262

/-! ## A306262.P18003968484111503967

`∑[A289207(∑[n])]-A004526(n)`
-/

namespace A306262.P18003968484111503967
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004526 n

end

end A306262.P18003968484111503967

namespace A306262

/-- `∑[A289207(∑[n])]-A004526(n)` -/
def P18003968484111503967.Spec : Prop :=
  ∀ n, P18003968484111503967.a n = A306262 n

end A306262

/-!
# A306263: Numbers k such that, for any divisor d of k, the Hamming weight of d divides k.

The programs for A306263, the canonical program `A306263.P2796597650289034260` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306263 has offset 1).

The definition of A306263 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306263.P2796597650289034260

`record[gcd(n+1, A324393(n+1))]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A306263

/-- `record[gcd(n+1, A324393(n+1))]` -/
def P2796597650289034260.Spec : Prop :=
  ∀ n, (P2796597650289034260.a n : ℤ) = A306263 (n + 1)

theorem P2796597650289034260.correct : P2796597650289034260.Spec := by
  intro n
  simp only [A306263, Nat.add_sub_cancel]

end A306263

/-! ## A306263.P16763779395000737547

`lt[A324393(n+1), 1]+1`
-/

namespace A306263.P16763779395000737547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324393 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A306263.P16763779395000737547

namespace A306263

/-- `lt[A324393(n+1), 1]+1` -/
def P16763779395000737547.Spec : Prop :=
  ∀ n, (P16763779395000737547.a n : ℤ) = A306263 (n + 1)

end A306263

/-! ## A306263.P16656263877515319693

`eq[A000005(n+1), A324392(n+1)]+1`
-/

namespace A306263.P16656263877515319693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324392 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A306263.P16656263877515319693

namespace A306263

/-- `eq[A000005(n+1), A324392(n+1)]+1` -/
def P16656263877515319693.Spec : Prop :=
  ∀ n, (P16656263877515319693.a n : ℤ) = A306263 (n + 1)

end A306263

/-! ## A306263.P13944948046746250607

`eq[A294927(2*n+1), A324393(n+1)]+1`
-/

namespace A306263.P13944948046746250607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294927 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324393 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A306263.P13944948046746250607

namespace A306263

/-- `eq[A294927(2*n+1), A324393(n+1)]+1` -/
def P13944948046746250607.Spec : Prop :=
  ∀ n, (P13944948046746250607.a n : ℤ) = A306263 (n + 1)

end A306263

/-! ## A306263.P5170913580840951852

`eq[A000038(n), A324393(A028310(n))]`
-/

namespace A306263.P5170913580840951852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324393 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306263.P5170913580840951852

namespace A306263

/-- `eq[A000038(n), A324393(A028310(n))]` -/
def P5170913580840951852.Spec : Prop :=
  ∀ n, (P5170913580840951852.a n : ℤ) = A306263 (n + 1)

end A306263

/-!
# A306264: a(n) = 1 + d*a(n/d); a(1)=0. If n has only one prime divisor, then d=n, otherwise d is the greatest proper unitary divisor of n.

The programs for A306264, there is no canonical definition to state claims against.
-/

/-! ## A306264.P16342851803051349148

`1+A324388(n+1)*a((n+1)/A324388(n+1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A306264.P16342851803051349148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + A324388 (n + 1) * a (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A324388 (n + 1) : ℚ) - 1)).toNat

end

end A306264.P16342851803051349148

/-! ## A306264.P7076653198138998287

`(A324388(n+1)+1)%(n+1)`
-/

namespace A306264.P7076653198138998287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324388 (n + 1) + 1) (n + 1 : ℤ)

end

end A306264.P7076653198138998287

/-! ## A306264.P17295434821338613936

`A052125(n+1)+a(A001221(n+1)-1)` with `a(0)=0`
-/

namespace A306264.P17295434821338613936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A052125 (n + 1) + a (A001221 (n + 1) - 1).toNat

end

end A306264.P17295434821338613936

/-! ## A306264.P2902493847921027118

`(A100994(n+1)+A052125(n+1))%(n+1)`
-/

namespace A306264.P2902493847921027118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100994 (n + 1) + A052125 (n + 1)) (n + 1 : ℤ)

end

end A306264.P2902493847921027118

/-! ## A306264.P13634138423904361481

`A065475(A052125(n+1))-A000007(n)`
-/

namespace A306264.P13634138423904361481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A052125 (n + 1)).toNat - A000007 n

end

end A306264.P13634138423904361481

/-! ## A306264.P934586960161355865

`A065475(A052125(n+1))%A000124(n)`
-/

namespace A306264.P934586960161355865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065475 (A052125 (n + 1)).toNat) (A000124 n)

end

end A306264.P934586960161355865

/-! ## A306264.P11342978770380120382

`A087156(A052125(n+1))+A087156(n+1)-n`
-/

namespace A306264.P11342978770380120382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (A052125 (n + 1)).toNat + (A087156 (n + 1) - (n : ℤ))

end

end A306264.P11342978770380120382

/-! ## A306264.P8300976659559452206

`A004525(A026491(A324388(n+1))%A026491(n))`
-/

namespace A306264.P8300976659559452206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A026491 (A324388 (n + 1)).toNat) (A026491 n)).toNat

end

end A306264.P8300976659559452206

/-! ## A306264.P13326244696593024589

`A004525(A103517(A324388(n+1))%A103517(n))`
-/

namespace A306264.P13326244696593024589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A103517 (A324388 (n + 1)).toNat) (A103517 n)).toNat

end

end A306264.P13326244696593024589

/-!
# A306266: Number of reciprocally monophyletic coalescence sequences for 2n lineages, n each in 2 species.

The programs for A306266, the canonical program `A306266.P767882629584554745` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306266 has offset 1).

The definition of A306266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306266.P767882629584554745

`(n+1)!²*(2*(n+1)-2)!/2^(2*(n+1)-2)`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A306266

/-- `(n+1)!²*(2*(n+1)-2)!/2^(2*(n+1)-2)` -/
def P767882629584554745.Spec : Prop :=
  ∀ n, P767882629584554745.a n = (A306266 (n + 1) : ℚ)

end A306266

/-! ## A306266.P16003398559450939637

`(n+1)!*A202689(n)`
-/

namespace A306266.P16003398559450939637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A202689 n

end

end A306266.P16003398559450939637

namespace A306266

/-- `(n+1)!*A202689(n)` -/
def P16003398559450939637.Spec : Prop :=
  ∀ n, P16003398559450939637.a n = A306266 (n + 1)

end A306266

/-! ## A306266.P658274795409386302

`(n+1)*a(n-1)*∑[A000567(n)]` with `a(0)=1`
-/

namespace A306266.P658274795409386302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℤ) * a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306266.P658274795409386302

namespace A306266

/-- `(n+1)*a(n-1)*∑[A000567(n)]` -/
def P658274795409386302.Spec : Prop :=
  ∀ n, P658274795409386302.a n = A306266 (n + 1)

end A306266

/-! ## A306266.P17919435127222021261

`n!²/2^n*(n+1)*A132911(n)`
-/

namespace A306266.P17919435127222021261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℚ) / (2 ^ n : ℚ) * (n + 1 : ℚ) * (A132911 n : ℚ)

end

end A306266.P17919435127222021261

namespace A306266

/-- `n!²/2^n*(n+1)*A132911(n)` -/
def P17919435127222021261.Spec : Prop :=
  ∀ n, P17919435127222021261.a n = (A306266 (n + 1) : ℚ)

end A306266

/-! ## A306266.P414705099803889886

`A006472(n+1)*A132911(n)`
-/

namespace A306266.P414705099803889886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006472 (n + 1) * A132911 n

end

end A306266.P414705099803889886

namespace A306266

/-- `A006472(n+1)*A132911(n)` -/
def P414705099803889886.Spec : Prop :=
  ∀ n, P414705099803889886.a n = A306266 (n + 1)

end A306266

/-!
# A306267: Number of permutations of [n] within distance floor(n/2) of a fixed permutation.

The programs for A306267, there is no canonical definition to state claims against.
-/

/-! ## A306267.P17352254446655973868

`A306209(C(n+floor(n/2)+1, 2)+n)`
-/

namespace A306267.P17352254446655973868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306209 (Nat.choose ((n : ℤ) + ⌊(n : ℚ) / 2⌋ + 1).toNat 2 + n)

end

end A306267.P17352254446655973868

/-! ## A306267.P4135863618724157668

`A271608(A063776(n+1)*A389062(n+1))`
-/

namespace A306267.P4135863618724157668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271608 (A063776 (n + 1) * A389062 (n + 1)).toNat

end

end A306267.P4135863618724157668

/-! ## A306267.P64325551696318212

`A002487(A280020(n+1)*A359361(n+2))`
-/

namespace A306267.P64325551696318212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A280020 (n + 1) * A359361 (n + 2)).toNat

end

end A306267.P64325551696318212

/-!
# A306268: Number of ways to choose a strict factorization into squarefree factors of each factor in a strict factorization of n.

The programs for A306268, there is no canonical definition to state claims against.
-/

/-! ## A306268.P13464364296571799094

`A149588(A139393(n+1))%5`
-/

namespace A306268.P13464364296571799094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A149588 (A139393 (n + 1)).toNat) 5

end

end A306268.P13464364296571799094

/-! ## A306268.P7107375652393148690

`C(A320033(A320017(n+1)), ∏{e}[n+1, #])`
-/

namespace A306268.P7107375652393148690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A320033 (A320017 (n + 1)).toNat).toNat (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A306268.P7107375652393148690

/-! ## A306268.P400612787647968214

`A339846(A001055(n+1)^∏{e}[n+1, ceil(2/#)])`
-/

namespace A306268.P400612787647968214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339846 (SequenceMachineLib.roundAway ((A001055 (n + 1) : ℚ) ^ (∏ p ∈ Nat.primeFactors (f1 n), ⌈2 / (Nat.factorization (f1 n) p : ℚ)⌉ : ℤ))).toNat

end

end A306268.P400612787647968214

/-! ## A306268.P4897191932836128589

`A347048(A001055(n+1)^∏{e}[n+1, ceil(2/#)])`
-/

namespace A306268.P4897191932836128589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347048 (SequenceMachineLib.roundAway ((A001055 (n + 1) : ℚ) ^ (∏ p ∈ Nat.primeFactors (f1 n), ⌈2 / (Nat.factorization (f1 n) p : ℚ)⌉ : ℤ))).toNat

end

end A306268.P4897191932836128589

/-! ## A306268.P14035609340432913232

`C(A099952(A034444(n+1)), A051903(n+1))`
-/

namespace A306268.P14035609340432913232
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A099952 (A034444 (n + 1)).toNat).toNat (A051903 (n + 1)).toNat

end

end A306268.P14035609340432913232

/-!
# A306269: Regular triangle read by rows where T(n,k) is the number of unlabeled balanced rooted semi-identity trees with n >= 1 nodes and depth 0 <= k < n.

The programs for A306269, there is no canonical definition to state claims against.
-/

/-! ## A306269.P2850756831814250226

`A055640(A135302(n)+A068914(n))`
-/

namespace A306269.P2850756831814250226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A135302 n + A068914 n).toNat

end

end A306269.P2850756831814250226

/-! ## A306269.P4992728105743835964

`round(A259100(n)/A200370(n+1))`
-/

namespace A306269.P4992728105743835964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A259100 n : ℚ) / (A200370 (n + 1) : ℚ))

end

end A306269.P4992728105743835964

/-! ## A306269.P15921885523060959912

`A160384(A108934(n))+A025441(A269955(n))`
-/

namespace A306269.P15921885523060959912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 (A108934 n).toNat + A025441 (A269955 n).toNat

end

end A306269.P15921885523060959912

/-! ## A306269.P3484836288857341915

`A060130(A368028(n))`
-/

namespace A306269.P3484836288857341915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A368028 n).toNat

end

end A306269.P3484836288857341915

/-! ## A306269.P11858169868169176611

`A055640(A135302(n)%A265947(n+4))`
-/

namespace A306269.P11858169868169176611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (Int.tmod (A135302 n) (A265947 (n + 4))).toNat

end

end A306269.P11858169868169176611

/-!
# A306272: Sum of distinct distances between n non-attacking rooks over all n X n chessboards.

The programs for A306272, there is no canonical definition to state claims against.
-/

/-! ## A306272.P2470603725241930750

`∑[∑[A098235(ceil((3^n/2)²))]]`
-/

namespace A306272.P2470603725241930750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098235 ⌈((3 ^ n : ℚ) / 2) ^ 2⌉.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306272.P2470603725241930750

/-!
# A306273: Numbers k such that k * rev(k) is a square, where rev=A004086, decimal reversal.

The programs for A306273, there is no canonical definition to state claims against.
-/

/-! ## A306273.P6908836957500080795

`∪[A002113(n+1), A070760(n+1)]`
-/

namespace A306273.P6908836957500080795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A306273.P6908836957500080795

/-! ## A306273.P10515313834538999593

`eq[1, A131963(A213217(n))]`
-/

namespace A306273.P10515313834538999593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131963 (A213217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306273.P10515313834538999593

/-! ## A306273.P13088291937605473330

`eq[A056965(n), A321538(A166047(n))]`
-/

namespace A306273.P13088291937605473330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 (A166047 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306273.P13088291937605473330

/-! ## A306273.P14225119466363803364

`eq[A107846(A002113(n+1)), A107846(n)]`
-/

namespace A306273.P14225119466363803364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A002113 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A306273.P14225119466363803364

/-! ## A306273.P13493437888587245235

`lt[A137564(n), A005670(A137564(n+1))]`
-/

namespace A306273.P13493437888587245235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005670 (A137564 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A306273.P13493437888587245235

/-!
# A306274: Number of unlabeled balanced rooted semi-identity trees with 2n-1 nodes and depth n.

The programs for A306274, there is no canonical definition to state claims against.
-/

/-! ## A306274.P1900053647900655050

`A306269(C(2*(n+1)-1, 2)+n+1)`
-/

namespace A306274.P1900053647900655050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306269 (Nat.choose ((2 * (n + 1) : ℤ) - 1).toNat 2 + (n + 1))

end

end A306274.P1900053647900655050

/-! ## A306274.P16022773821026892731

`A306269(∑[4*n]+1)`
-/

namespace A306274.P16022773821026892731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306269 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A306274.P16022773821026892731

/-! ## A306274.P11636454571988631121

`or(C(2, n+2), A306269(A001844(n)))`
-/

namespace A306274.P11636454571988631121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 (n + 2) : ℤ) (A306269 (A001844 n).toNat)

end

end A306274.P11636454571988631121

/-! ## A306274.P1291321822217093762

`A306269(A001844(n))%A086225(n)`
-/

namespace A306274.P1291321822217093762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306269 (A001844 n).toNat) (A086225 n)

end

end A306274.P1291321822217093762

/-! ## A306274.P7602247435549778522

`lcm(A033999(n), A306269(A001844(n)))`
-/

namespace A306274.P7602247435549778522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A306269 (A001844 n).toNat)

end

end A306274.P7602247435549778522

/-! ## A306274.P4933122595358520236

`and(A267816(n), A306269(A001844(n)))`
-/

namespace A306274.P4933122595358520236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267816 n) (A306269 (A001844 n).toNat)

end

end A306274.P4933122595358520236

/-!
# A306275: Number of values 0 < k <= n for which there are no k distinct n-th roots of unity that sum to zero.

The programs for A306275, there is no canonical definition to state claims against.
-/

/-! ## A306275.P15191156020557432055

`A065475(n+1)-A322366(n+1)`
-/

namespace A306275.P15191156020557432055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) - A322366 (n + 1)

end

end A306275.P15191156020557432055

/-! ## A306275.P11239755285742106641

`A040000(n)-A322366(n+1)+n`
-/

namespace A306275.P11239755285742106641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n - A322366 (n + 1) + (n : ℤ)

end

end A306275.P11239755285742106641

/-! ## A306275.P6877694557233349814

`A000027(n+2)-A028310(A322366(n+1))`
-/

namespace A306275.P6877694557233349814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 2) - A028310 (A322366 (n + 1)).toNat

end

end A306275.P6877694557233349814

/-! ## A306275.P11451486335380052261

`A348776(n+2)-A322366(A348776(n+1))`
-/

namespace A306275.P11451486335380052261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348776 (n + 2) - A322366 (A348776 (n + 1)).toNat

end

end A306275.P11451486335380052261

/-! ## A306275.P9839712578048277717

`A001221(A100484(n+1))-A322366(n+1)+n`
-/

namespace A306275.P9839712578048277717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A100484 (n + 1)).toNat - A322366 (n + 1) + (n : ℤ)

end

end A306275.P9839712578048277717

/-! ## A306275.P8847474539176323585

`A266977(2*n)-A322366(n+1)`
-/

namespace A306275.P8847474539176323585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 (2 * n) - A322366 (n + 1)

end

end A306275.P8847474539176323585

/-!
# A306276: a(0) = a(1) = a(2) = a(3) = 1; thereafter a(n) = a(n-2) + a(n-3) + a(n-4).

The programs for A306276, the canonical program `A306276.P16572436606826329749` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306276 has offset 0).

The definition of A306276 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)+a(n-4)` (program `A306276.P16572436606826329749`, by `A306276.P16572436606826329749.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306276.P10024301060553428239

`ogf((1+x-x^3)/(1-x^2-x^3-x^4))`
-/

namespace A306276.P10024301060553428239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, -1] [1, 0, -1, -1, -1] n

end

end A306276.P10024301060553428239

namespace A306276

/-- `ogf((1+x-x^3)/(1-x^2-x^3-x^4))` -/
def P10024301060553428239.Spec : Prop :=
  ∀ n, P10024301060553428239.a n = A306276 n

end A306276

/-! ## A306276.P16572436606826329749

`a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A306276

/-- `a(n-2)+a(n-3)+a(n-4)` -/
def P16572436606826329749.Spec : Prop :=
  ∀ n, (P16572436606826329749.a n : ℤ) = A306276 n

theorem P16572436606826329749.correct : P16572436606826329749.Spec := by
  intro n
  simp only [A306276]

end A306276

/-! ## A306276.P6920763844212233872

`a(n-1)+a(n-3)+(-1)^n` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A306276.P6920763844212233872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) + (a (n - 3) + (-1) ^ n)

end

end A306276.P6920763844212233872

namespace A306276

/-- `a(n-1)+a(n-3)+(-1)^n` -/
def P6920763844212233872.Spec : Prop :=
  ∀ n, P6920763844212233872.a n = A306276 n

end A306276

/-! ## A306276.P3781627914556313667

`∑[2*A107458(n)]-1`
-/

namespace A306276.P3781627914556313667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A306276.P3781627914556313667

namespace A306276

/-- `∑[2*A107458(n)]-1` -/
def P3781627914556313667.Spec : Prop :=
  ∀ n, P3781627914556313667.a n = A306276 n

end A306276

/-! ## A306276.P8217659418144956691

`a(n-2)+2*A135851(n+1)` with `a(0)=1, a(1)=1`
-/

namespace A306276.P8217659418144956691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + 2 * A135851 (n + 1)

end

end A306276.P8217659418144956691

namespace A306276

/-- `a(n-2)+2*A135851(n+1)` -/
def P8217659418144956691.Spec : Prop :=
  ∀ n, P8217659418144956691.a n = A306276 n

end A306276

/-! ## A306276.P14640080242058581025

`A277252(n)+A078012(n)`
-/

namespace A306276.P14640080242058581025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277252 n + A078012 n

end

end A306276.P14640080242058581025

namespace A306276

/-- `A277252(n)+A078012(n)` -/
def P14640080242058581025.Spec : Prop :=
  ∀ n, P14640080242058581025.a n = A306276 n

end A306276

/-! ## A306276.P17633505442219336866

`A135851(n+1)+A013979(n)`
-/

namespace A306276.P17633505442219336866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (n + 1) + A013979 n

end

end A306276.P17633505442219336866

namespace A306276

/-- `A135851(n+1)+A013979(n)` -/
def P17633505442219336866.Spec : Prop :=
  ∀ n, P17633505442219336866.a n = A306276 n

end A306276

/-! ## A306276.P7672998945248068596

`A107458(n)+A078012(n+2)`
-/

namespace A306276.P7672998945248068596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 n + A078012 (n + 2)

end

end A306276.P7672998945248068596

namespace A306276

/-- `A107458(n)+A078012(n+2)` -/
def P7672998945248068596.Spec : Prop :=
  ∀ n, P7672998945248068596.a n = A306276 n

end A306276

/-! ## A306276.P6348257990974439470

`∑[A001222(2*A006530(n+1))*A107458(n)]`
-/

namespace A306276.P6348257990974439470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A006530 (n + 1)).toNat * A107458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306276.P6348257990974439470

namespace A306276

/-- `∑[A001222(2*A006530(n+1))*A107458(n)]` -/
def P6348257990974439470.Spec : Prop :=
  ∀ n, P6348257990974439470.a n = A306276 n

end A306276

/-! ## A306276.P11312875474244487566

`A013979(n+1)+A107458(n)-A107458(n+1)`
-/

namespace A306276.P11312875474244487566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (n + 1) + (A107458 n - A107458 (n + 1))

end

end A306276.P11312875474244487566

namespace A306276

/-- `A013979(n+1)+A107458(n)-A107458(n+1)` -/
def P11312875474244487566.Spec : Prop :=
  ∀ n, P11312875474244487566.a n = A306276 n

end A306276

/-! ## A306276.P17138859103329408454

`A000930(n)-A107458(n+1)`
-/

namespace A306276.P17138859103329408454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n - A107458 (n + 1)

end

end A306276.P17138859103329408454

namespace A306276

/-- `A000930(n)-A107458(n+1)` -/
def P17138859103329408454.Spec : Prop :=
  ∀ n, P17138859103329408454.a n = A306276 n

end A306276

/-! ## A306276.P17755597644773048567

`A013979(n+2)-A078012(n+1)`
-/

namespace A306276.P17755597644773048567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (n + 2) - A078012 (n + 1)

end

end A306276.P17755597644773048567

namespace A306276

/-- `A013979(n+2)-A078012(n+1)` -/
def P17755597644773048567.Spec : Prop :=
  ∀ n, P17755597644773048567.a n = A306276 n

end A306276

/-! ## A306276.P12923870676434562747

`A013979(n+2)-A226916(2*n+3)`
-/

namespace A306276.P12923870676434562747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (n + 2) - A226916 (2 * n + 3)

end

end A306276.P12923870676434562747

namespace A306276

/-- `A013979(n+2)-A226916(2*n+3)` -/
def P12923870676434562747.Spec : Prop :=
  ∀ n, P12923870676434562747.a n = A306276 n

end A306276

/-! ## A306276.P7702571730033845552

`A000930(n)-(A078012(n)-A107458(n))`
-/

namespace A306276.P7702571730033845552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n - (A078012 n - A107458 n)

end

end A306276.P7702571730033845552

namespace A306276

/-- `A000930(n)-(A078012(n)-A107458(n))` -/
def P7702571730033845552.Spec : Prop :=
  ∀ n, P7702571730033845552.a n = A306276 n

end A306276

/-! ## A306276.P13062809255667169316

`A078012(n)+∑[A078012(n)]-A277253(n)`
-/

namespace A306276.P13062809255667169316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n + (∑ j ∈ Finset.range (n + 1), f1 j - A277253 n)

end

end A306276.P13062809255667169316

namespace A306276

/-- `A078012(n)+∑[A078012(n)]-A277253(n)` -/
def P13062809255667169316.Spec : Prop :=
  ∀ n, P13062809255667169316.a n = A306276 n

end A306276

/-! ## A306276.P8338902109591267161

`A097333(n)-A013979(n+1)`
-/

namespace A306276.P8338902109591267161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 n - A013979 (n + 1)

end

end A306276.P8338902109591267161

namespace A306276

/-- `A097333(n)-A013979(n+1)` -/
def P8338902109591267161.Spec : Prop :=
  ∀ n, P8338902109591267161.a n = A306276 n

end A306276

/-! ## A306276.P5120195698454887442

`A058278(n+3)-A013979(n+1)`
-/

namespace A306276.P5120195698454887442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 (n + 3) - A013979 (n + 1)

end

end A306276.P5120195698454887442

namespace A306276

/-- `A058278(n+3)-A013979(n+1)` -/
def P5120195698454887442.Spec : Prop :=
  ∀ n, P5120195698454887442.a n = A306276 n

end A306276

/-! ## A306276.P13838331737429777781

`A023435(n+1)+A135851(n+1)-A023435(n)`
-/

namespace A306276.P13838331737429777781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 (n + 1) + (A135851 (n + 1) - A023435 n)

end

end A306276.P13838331737429777781

namespace A306276

/-- `A023435(n+1)+A135851(n+1)-A023435(n)` -/
def P13838331737429777781.Spec : Prop :=
  ∀ n, P13838331737429777781.a n = A306276 n

end A306276

/-! ## A306276.P1319128727871379075

`A107458(n)+Δ[A068921(n)]`
-/

namespace A306276.P1319128727871379075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 n + (f1 (n + 1) - f1 n)

end

end A306276.P1319128727871379075

namespace A306276

/-- `A107458(n)+Δ[A068921(n)]` -/
def P1319128727871379075.Spec : Prop :=
  ∀ n, P1319128727871379075.a n = A306276 n

end A306276

/-! ## A306276.P13939368692287107229

`A068921(n+1)+A107458(n)-A068921(n)`
-/

namespace A306276.P13939368692287107229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 1) + (A107458 n - A068921 n)

end

end A306276.P13939368692287107229

namespace A306276

/-- `A068921(n+1)+A107458(n)-A068921(n)` -/
def P13939368692287107229.Spec : Prop :=
  ∀ n, P13939368692287107229.a n = A306276 n

end A306276

/-!
# A306277: Numbers congruent to 1 or 8 mod 10.

The programs for A306277, the canonical program `A306277.P13848044577103196063` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306277 has offset 1).

The definition of A306277 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A306277.anchor (n : ℕ) (hn : 1 ≤ n) : A306277 n = (Nat.nth (fun k => k % 10 ∈ ({1, 8} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A306.A306277`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306277.P3129754389145795854

`ogf((1+7x+2x^2)/(1-x-x^2+x^3))`
-/

namespace A306277.P3129754389145795854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 2] [1, -1, -1, 1] n

end

end A306277.P3129754389145795854

namespace A306277

/-- `ogf((1+7x+2x^2)/(1-x-x^2+x^3))` -/
def P3129754389145795854.Spec : Prop :=
  ∀ n, P3129754389145795854.a n = A306277 (n + 1)

end A306277

/-! ## A306277.P13848044577103196063

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=8, a(2)=11`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A306277

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P13848044577103196063.Spec : Prop :=
  ∀ n, P13848044577103196063.a n = A306277 (n + 1)

theorem P13848044577103196063.correct : P13848044577103196063.Spec := by
  intro n
  simp only [A306277, Nat.add_sub_cancel]

end A306277

/-! ## A306277.P10161854675190694269

`A273669(n+1)-1`
-/

namespace A306277.P10161854675190694269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273669 (n + 1) - 1

end

end A306277.P10161854675190694269

namespace A306277

/-- `A273669(n+1)-1` -/
def P10161854675190694269.Spec : Prop :=
  ∀ n, P10161854675190694269.a n = A306277 (n + 1)

end A306277

/-! ## A306277.P14581779280239428907

`5*(n+1)-2*A000034(n+1)`
-/

namespace A306277.P14581779280239428907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - 2 * A000034 (n + 1)

end

end A306277.P14581779280239428907

namespace A306277

/-- `5*(n+1)-2*A000034(n+1)` -/
def P14581779280239428907.Spec : Prop :=
  ∀ n, P14581779280239428907.a n = A306277 (n + 1)

end A306277

/-! ## A306277.P4893820165740054432

`10+a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A306277.P4893820165740054432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  10 + a (n - 2)

end

end A306277.P4893820165740054432

namespace A306277

/-- `10+a(n-2)` -/
def P4893820165740054432.Spec : Prop :=
  ∀ n, (P4893820165740054432.a n : ℤ) = A306277 (n + 1)

end A306277

/-! ## A306277.P14144944042555696802

`2-xor(1, -(5*n))`
-/

namespace A306277.P14144944042555696802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(5 * n : ℤ))

end

end A306277.P14144944042555696802

namespace A306277

/-- `2-xor(1, -(5*n))` -/
def P14144944042555696802.Spec : Prop :=
  ∀ n, P14144944042555696802.a n = A306277 (n + 1)

end A306277

/-! ## A306277.P1937475788311041796

`abs(xor(5*n+1, -2))`
-/

namespace A306277.P1937475788311041796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (5 * n + 1 : ℤ) (-2)|

end

end A306277.P1937475788311041796

namespace A306277

/-- `abs(xor(5*n+1, -2))` -/
def P1937475788311041796.Spec : Prop :=
  ∀ n, P1937475788311041796.a n = A306277 (n + 1)

end A306277

/-! ## A306277.P15639720657256711327

`xor(1, 5*n+1)+1`
-/

namespace A306277.P15639720657256711327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (5 * n + 1) + 1

end

end A306277.P15639720657256711327

namespace A306277

/-- `xor(1, 5*n+1)+1` -/
def P15639720657256711327.Spec : Prop :=
  ∀ n, (P15639720657256711327.a n : ℤ) = A306277 (n + 1)

end A306277

/-! ## A306277.P7439609771194170454

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=7, a(2)=3`
-/

namespace A306277.P7439609771194170454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7, 3] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306277.P7439609771194170454

namespace A306277

/-- `∑[abs(a(n-2))]` -/
def P7439609771194170454.Spec : Prop :=
  ∀ n, (P7439609771194170454.a n : ℤ) = A306277 (n + 1)

end A306277

/-! ## A306277.P14210136629108331279

`∑[10-a(n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A306277.P14210136629108331279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306277.P14210136629108331279

namespace A306277

/-- `∑[10-a(n-1)]` -/
def P14210136629108331279.Spec : Prop :=
  ∀ n, P14210136629108331279.a n = A306277 (n + 1)

end A306277

/-! ## A306277.P14342330952870558603

`3^(n%2)+5*n`
-/

namespace A306277.P14342330952870558603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n % 2) + 5 * n

end

end A306277.P14342330952870558603

namespace A306277

/-- `3^(n%2)+5*n` -/
def P14342330952870558603.Spec : Prop :=
  ∀ n, (P14342330952870558603.a n : ℤ) = A306277 (n + 1)

end A306277

/-! ## A306277.P5933520680758155160

`∑[floor(7/gcd(2, n))]-2`
-/

namespace A306277.P5933520680758155160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊7 / (Nat.gcd 2 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A306277.P5933520680758155160

namespace A306277

/-- `∑[floor(7/gcd(2, n))]-2` -/
def P5933520680758155160.Spec : Prop :=
  ∀ n, P5933520680758155160.a n = A306277 (n + 1)

end A306277

/-! ## A306277.P742805661323516082

`∑[∑[ogf((1+7x+2x^2)/(1+x))]]`
-/

namespace A306277.P742805661323516082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306277.P742805661323516082

namespace A306277

/-- `∑[∑[ogf((1+7x+2x^2)/(1+x))]]` -/
def P742805661323516082.Spec : Prop :=
  ∀ n, P742805661323516082.a n = A306277 (n + 1)

end A306277

/-! ## A306277.P14162922071989391592

`5*n+2-(-1)^n`
-/

namespace A306277.P14162922071989391592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 2 : ℤ) - (-1) ^ n

end

end A306277.P14162922071989391592

namespace A306277

/-- `5*n+2-(-1)^n` -/
def P14162922071989391592.Spec : Prop :=
  ∀ n, P14162922071989391592.a n = A306277 (n + 1)

theorem P14162922071989391592.correct : P14162922071989391592.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A306277, Nat.add_sub_cancel, A306277.P14162922071989391592.a, A306277.P13848044577103196063.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A306277, Nat.add_sub_cancel, A306277.P14162922071989391592.a, A306277.P13848044577103196063.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A306277

/-! ## A306277.P17893756209627187037

`∑[dr(1-A040384(n))]`
-/

namespace A306277.P17893756209627187037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A040384 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306277.P17893756209627187037

namespace A306277

/-- `∑[dr(1-A040384(n))]` -/
def P17893756209627187037.Spec : Prop :=
  ∀ n, (P17893756209627187037.a n : ℤ) = A306277 (n + 1)

end A306277

/-! ## A306277.P10560529072329465483

`∑[A089725(a(n-1))]` with `a(0)=1`
-/

namespace A306277.P10560529072329465483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A089725 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306277.P10560529072329465483

namespace A306277

/-- `∑[A089725(a(n-1))]` -/
def P10560529072329465483.Spec : Prop :=
  ∀ n, P10560529072329465483.a n = A306277 (n + 1)

end A306277

/-! ## A306277.P8207831176042616447

`∑[A232127(a(n-1))]` with `a(0)=1`
-/

namespace A306277.P8207831176042616447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A232127 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306277.P8207831176042616447

namespace A306277

/-- `∑[A232127(a(n-1))]` -/
def P8207831176042616447.Spec : Prop :=
  ∀ n, P8207831176042616447.a n = A306277 (n + 1)

end A306277

/-! ## A306277.P3792041157474446860

`(A322490(n+1)-1)/2`
-/

namespace A306277.P3792041157474446860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322490 (n + 1) - 1 : ℚ) / 2

end

end A306277.P3792041157474446860

namespace A306277

/-- `(A322490(n+1)-1)/2` -/
def P3792041157474446860.Spec : Prop :=
  ∀ n, P3792041157474446860.a n = (A306277 (n + 1) : ℚ)

theorem P3792041157474446860.correct : P3792041157474446860.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A306277, Nat.add_sub_cancel, A306277.P3792041157474446860.a, A306277.P13848044577103196063.a, A322490, A322490.P17921866161295689927.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A306277, Nat.add_sub_cancel, A306277.P3792041157474446860.a, A306277.P13848044577103196063.a, A322490, A322490.P17921866161295689927.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A306277

/-! ## A306277.P12974781216025249007

`∪[A017281(n), A017365(n)]`
-/

namespace A306277.P12974781216025249007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A306277.P12974781216025249007

namespace A306277

/-- `∪[A017281(n), A017365(n)]` -/
def P12974781216025249007.Spec : Prop :=
  ∀ n, (P12974781216025249007.a n : ℤ) = A306277 (n + 1)

end A306277

/-! ## A306277.P17228423683654671596

`∑[A145399(A020639(n+1))]`
-/

namespace A306277.P17228423683654671596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145399 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306277.P17228423683654671596

namespace A306277

/-- `∑[A145399(A020639(n+1))]` -/
def P17228423683654671596.Spec : Prop :=
  ∀ n, P17228423683654671596.a n = A306277 (n + 1)

end A306277

/-!
# A306278: Numbers congruent to 2 or 11 mod 14.

The programs for A306278, the canonical program `A306278.P15628367988812863921` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306278 has offset 1).

The definition of A306278 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A306278.anchor (n : ℕ) (hn : 1 ≤ n) : A306278 n = (Nat.nth (fun k => k % 14 ∈ ({2, 11} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A306.A306278`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306278.P1023953408432587559

`ogf((2+9x+3x^2)/(1-x-x^2+x^3))`
-/

namespace A306278.P1023953408432587559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 9, 3] [1, -1, -1, 1] n

end

end A306278.P1023953408432587559

namespace A306278

/-- `ogf((2+9x+3x^2)/(1-x-x^2+x^3))` -/
def P1023953408432587559.Spec : Prop :=
  ∀ n, P1023953408432587559.a n = A306278 (n + 1)

end A306278

/-! ## A306278.P15628367988812863921

`7*(n+1)-4+(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A306278

/-- `7*(n+1)-4+(-1)^(n+1)` -/
def P15628367988812863921.Spec : Prop :=
  ∀ n, P15628367988812863921.a n = A306278 (n + 1)

theorem P15628367988812863921.correct : P15628367988812863921.Spec := by
  intro n
  simp only [A306278, Nat.add_sub_cancel]

end A306278

/-! ## A306278.P7627666497888753172

`xor(1, 7*n+3)`
-/

namespace A306278.P7627666497888753172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (7 * n + 3)

end

end A306278.P7627666497888753172

namespace A306278

/-- `xor(1, 7*n+3)` -/
def P7627666497888753172.Spec : Prop :=
  ∀ n, (P7627666497888753172.a n : ℤ) = A306278 (n + 1)

end A306278

/-! ## A306278.P6515151973556950937

`a(n-2)+14` with `a(0)=2, a(1)=11`
-/

namespace A306278.P6515151973556950937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 11] fun n a =>
  a (n - 2) + 14

end

end A306278.P6515151973556950937

namespace A306278

/-- `a(n-2)+14` -/
def P6515151973556950937.Spec : Prop :=
  ∀ n, (P6515151973556950937.a n : ℤ) = A306278 (n + 1)

theorem P6515151973556950937.correct : P6515151973556950937.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A306278, Nat.add_sub_cancel, A306278.P6515151973556950937.a, A306278.P15628367988812863921.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A306278, Nat.add_sub_cancel, A306278.P6515151973556950937.a, A306278.P15628367988812863921.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A306278

/-! ## A306278.P8147223393434134185

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=9, a(2)=5`
-/

namespace A306278.P8147223393434134185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 9, 5] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306278.P8147223393434134185

namespace A306278

/-- `∑[abs(a(n-2))]` -/
def P8147223393434134185.Spec : Prop :=
  ∀ n, (P8147223393434134185.a n : ℤ) = A306278 (n + 1)

end A306278

/-! ## A306278.P3311305241690473728

`∑[14-a(n-1)]` with `a(0)=2, a(1)=9`
-/

namespace A306278.P3311305241690473728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n f1 =>
  14 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306278.P3311305241690473728

namespace A306278

/-- `∑[14-a(n-1)]` -/
def P3311305241690473728.Spec : Prop :=
  ∀ n, P3311305241690473728.a n = A306278 (n + 1)

end A306278

/-! ## A306278.P17360241513052075418

`∑[∑[ogf((2+9x+3x^2)/(1+x))]]`
-/

namespace A306278.P17360241513052075418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 9, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306278.P17360241513052075418

namespace A306278

/-- `∑[∑[ogf((2+9x+3x^2)/(1+x))]]` -/
def P17360241513052075418.Spec : Prop :=
  ∀ n, P17360241513052075418.a n = A306278 (n + 1)

end A306278

/-! ## A306278.P3837074695516000928

`14*n-a(n-1)-1` with `a(0)=2`
-/

namespace A306278.P3837074695516000928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (14 * n : ℤ) - a (n - 1) - 1

end

end A306278.P3837074695516000928

namespace A306278

/-- `14*n-a(n-1)-1` -/
def P3837074695516000928.Spec : Prop :=
  ∀ n, P3837074695516000928.a n = A306278 (n + 1)

theorem P3837074695516000928.correct : P3837074695516000928.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A306278, Nat.add_sub_cancel, A306278.P3837074695516000928.a, A306278.P15628367988812863921.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A306278, Nat.add_sub_cancel, A306278.P3837074695516000928.a, A306278.P15628367988812863921.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A306278

/-! ## A306278.P4210379530817378338

`5*(n+1)-or(3, -(2*n))`
-/

namespace A306278.P4210379530817378338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - Int.lor 3 (-(2 * n : ℤ))

end

end A306278.P4210379530817378338

namespace A306278

/-- `5*(n+1)-or(3, -(2*n))` -/
def P4210379530817378338.Spec : Prop :=
  ∀ n, P4210379530817378338.a n = A306278 (n + 1)

end A306278

/-! ## A306278.P13519810726814602405

`record[or(5, n-1)]+3*(n+1)`
-/

namespace A306278.P13519810726814602405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 5 ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (3 * (n + 1) : ℤ)

end

end A306278.P13519810726814602405

namespace A306278

/-- `record[or(5, n-1)]+3*(n+1)` -/
def P13519810726814602405.Spec : Prop :=
  ∀ n, P13519810726814602405.a n = A306278 (n + 1)

end A306278

/-! ## A306278.P7579997496565184515

`or(2, 3*(2*n+1))+n-1`
-/

namespace A306278.P7579997496565184515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 (3 * (2 * n + 1)) : ℤ) + ((n : ℤ) - 1)

end

end A306278.P7579997496565184515

namespace A306278

/-- `or(2, 3*(2*n+1))+n-1` -/
def P7579997496565184515.Spec : Prop :=
  ∀ n, P7579997496565184515.a n = A306278 (n + 1)

end A306278

/-! ## A306278.P15052342960326288449

`Δ[gcd(2, n)+(2*n)²]-(n+1)`
-/

namespace A306278.P15052342960326288449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n + (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n + 1 : ℤ)

end

end A306278.P15052342960326288449

namespace A306278

/-- `Δ[gcd(2, n)+(2*n)²]-(n+1)` -/
def P15052342960326288449.Spec : Prop :=
  ∀ n, P15052342960326288449.a n = A306278 (n + 1)

end A306278

/-! ## A306278.P5849635996944838698

`Δ[(2*n)²-and(1, n)]-(n+1)`
-/

namespace A306278.P5849635996944838698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A306278.P5849635996944838698

namespace A306278

/-- `Δ[(2*n)²-and(1, n)]-(n+1)` -/
def P5849635996944838698.Spec : Prop :=
  ∀ n, P5849635996944838698.a n = A306278 (n + 1)

end A306278

/-! ## A306278.P3951783125175867244

`(record[lcm(12, n+1)/3]+n+n)/2`
-/

namespace A306278.P3951783125175867244
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 12 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℚ) + (n : ℚ)) / 2

end

end A306278.P3951783125175867244

namespace A306278

/-- `(record[lcm(12, n+1)/3]+n+n)/2` -/
def P3951783125175867244.Spec : Prop :=
  ∀ n, P3951783125175867244.a n = (A306278 (n + 1) : ℚ)

end A306278

/-! ## A306278.P1164748563631121234

`∑[dr(1-A040875(n))]`
-/

namespace A306278.P1164748563631121234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A040875 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306278.P1164748563631121234

namespace A306278

/-- `∑[dr(1-A040875(n))]` -/
def P1164748563631121234.Spec : Prop :=
  ∀ n, (P1164748563631121234.a n : ℤ) = A306278 (n + 1)

end A306278

/-! ## A306278.P5703389190311329925

`(A231002(n+1)-1)/2`
-/

namespace A306278.P5703389190311329925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231002 (n + 1) - 1 : ℚ) / 2

end

end A306278.P5703389190311329925

namespace A306278

/-- `(A231002(n+1)-1)/2` -/
def P5703389190311329925.Spec : Prop :=
  ∀ n, P5703389190311329925.a n = (A306278 (n + 1) : ℚ)

end A306278

/-! ## A306278.P9468314117363425723

`(A306285(n+1)+n)/2`
-/

namespace A306278.P9468314117363425723
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306285 (n + 1) + (n : ℤ) : ℚ) / 2

end

end A306278.P9468314117363425723

namespace A306278

/-- `(A306285(n+1)+n)/2` -/
def P9468314117363425723.Spec : Prop :=
  ∀ n, P9468314117363425723.a n = (A306278 (n + 1) : ℚ)

end A306278

/-! ## A306278.P9146716959270743769

`A306331(n+1)%A259755(n+1)`
-/

namespace A306278.P9146716959270743769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306331 (n + 1)) (A259755 (n + 1))

end

end A306278.P9146716959270743769

namespace A306278

/-- `A306331(n+1)%A259755(n+1)` -/
def P9146716959270743769.Spec : Prop :=
  ∀ n, P9146716959270743769.a n = A306278 (n + 1)

end A306278

/-! ## A306278.P10810109333045868771

`comp[xor(n, gcd(7, 3-n))]`
-/

namespace A306278.P10810109333045868771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (Int.gcd 7 (3 - (n : ℤ)))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A306278.P10810109333045868771

namespace A306278

/-- `comp[xor(n, gcd(7, 3-n))]` -/
def P10810109333045868771.Spec : Prop :=
  ∀ n, (P10810109333045868771.a n : ℤ) = A306278 (n + 1)

end A306278

/-! ## A306278.P2633675356893971472

`floor(A184552(2*n+1)/2)`
-/

namespace A306278.P2633675356893971472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A184552 (2 * n + 1) : ℚ) / 2⌋

end

end A306278.P2633675356893971472

namespace A306278

/-- `floor(A184552(2*n+1)/2)` -/
def P2633675356893971472.Spec : Prop :=
  ∀ n, P2633675356893971472.a n = A306278 (n + 1)

end A306278

/-!
# A306279: Numbers congruent to 3 or 18 mod 22.

The programs for A306279, the canonical program `A306279.P15417631850282334460` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306279 has offset 1).

The definition of A306279 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A306279.anchor (n : ℕ) (hn : 1 ≤ n) : A306279 n = (Nat.nth (fun k => k % 22 ∈ ({3, 18} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A306.A306279`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306279.P481204590245173389

`ogf((3+15x+4x^2)/(1-x-x^2+x^3))`
-/

namespace A306279.P481204590245173389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 15, 4] [1, -1, -1, 1] n

end

end A306279.P481204590245173389

namespace A306279

/-- `ogf((3+15x+4x^2)/(1-x-x^2+x^3))` -/
def P481204590245173389.Spec : Prop :=
  ∀ n, P481204590245173389.a n = A306279 (n + 1)

end A306279

/-! ## A306279.P15417631850282334460

`11*(n+1)-6+2*(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A306279

/-- `11*(n+1)-6+2*(-1)^(n+1)` -/
def P15417631850282334460.Spec : Prop :=
  ∀ n, P15417631850282334460.a n = A306279 (n + 1)

theorem P15417631850282334460.correct : P15417631850282334460.Spec := by
  intro n
  simp only [A306279, Nat.add_sub_cancel]

end A306279

/-! ## A306279.P9564609664548238501

`a(n-2)+22` with `a(0)=3, a(1)=18`
-/

namespace A306279.P9564609664548238501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 18] fun n a =>
  a (n - 2) + 22

end

end A306279.P9564609664548238501

namespace A306279

/-- `a(n-2)+22` -/
def P9564609664548238501.Spec : Prop :=
  ∀ n, (P9564609664548238501.a n : ℤ) = A306279 (n + 1)

theorem P9564609664548238501.correct : P9564609664548238501.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A306279, Nat.add_sub_cancel, A306279.P9564609664548238501.a, A306279.P15417631850282334460.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A306279, Nat.add_sub_cancel, A306279.P9564609664548238501.a, A306279.P15417631850282334460.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A306279

/-! ## A306279.P3645356225196605969

`∑[22-a(n-1)]` with `a(0)=3, a(1)=15`
-/

namespace A306279.P3645356225196605969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 15] fun n f1 =>
  22 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306279.P3645356225196605969

namespace A306279

/-- `∑[22-a(n-1)]` -/
def P3645356225196605969.Spec : Prop :=
  ∀ n, P3645356225196605969.a n = A306279 (n + 1)

end A306279

/-! ## A306279.P4694157927759726621

`or(4, 6*(2*n+1))-(n+3)`
-/

namespace A306279.P4694157927759726621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 4 (6 * (2 * n + 1)) : ℤ) - (n + 3 : ℤ)

end

end A306279.P4694157927759726621

namespace A306279

/-- `or(4, 6*(2*n+1))-(n+3)` -/
def P4694157927759726621.Spec : Prop :=
  ∀ n, P4694157927759726621.a n = A306279 (n + 1)

end A306279

/-! ## A306279.P3421381490281906344

`xor(1, A322489(n+1)+n)`
-/

namespace A306279.P3421381490281906344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A322489 (n + 1) + (n : ℤ))

end

end A306279.P3421381490281906344

namespace A306279

/-- `xor(1, A322489(n+1)+n)` -/
def P3421381490281906344.Spec : Prop :=
  ∀ n, P3421381490281906344.a n = A306279 (n + 1)

end A306279

/-! ## A306279.P1518990380296889830

`A168484(A047467(n+2))`
-/

namespace A306279.P1518990380296889830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (A047467 (n + 2)).toNat

end

end A306279.P1518990380296889830

namespace A306279

/-- `A168484(A047467(n+2))` -/
def P1518990380296889830.Spec : Prop :=
  ∀ n, P1518990380296889830.a n = A306279 (n + 1)

end A306279

/-! ## A306279.P11331996228549322686

`A364668(A306277(n+1))`
-/

namespace A306279.P11331996228549322686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364668 (A306277 (n + 1)).toNat

end

end A306279.P11331996228549322686

namespace A306279

/-- `A364668(A306277(n+1))` -/
def P11331996228549322686.Spec : Prop :=
  ∀ n, P11331996228549322686.a n = A306279 (n + 1)

end A306279

/-! ## A306279.P535835139061145183

`A106252(A091999(n+1))`
-/

namespace A306279.P535835139061145183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106252 (A091999 (n + 1)).toNat

end

end A306279.P535835139061145183

namespace A306279

/-- `A106252(A091999(n+1))` -/
def P535835139061145183.Spec : Prop :=
  ∀ n, P535835139061145183.a n = A306279 (n + 1)

end A306279

/-! ## A306279.P4126235302375651941

`A243989(A113802(n+1))`
-/

namespace A306279.P4126235302375651941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243989 (A113802 (n + 1)).toNat

end

end A306279.P4126235302375651941

namespace A306279

/-- `A243989(A113802(n+1))` -/
def P4126235302375651941.Spec : Prop :=
  ∀ n, P4126235302375651941.a n = A306279 (n + 1)

end A306279

/-! ## A306279.P3791743733834235477

`A032797(A306771(n+1))`
-/

namespace A306279.P3791743733834235477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032797 (A306771 (n + 1)).toNat

end

end A306279.P3791743733834235477

namespace A306279

/-- `A032797(A306771(n+1))` -/
def P3791743733834235477.Spec : Prop :=
  ∀ n, P3791743733834235477.a n = A306279 (n + 1)

end A306279

/-! ## A306279.P17478912165767712617

`A160542(A322490(n+1))`
-/

namespace A306279.P17478912165767712617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (A322490 (n + 1)).toNat

end

end A306279.P17478912165767712617

namespace A306279

/-- `A160542(A322490(n+1))` -/
def P17478912165767712617.Spec : Prop :=
  ∀ n, P17478912165767712617.a n = A306279 (n + 1)

end A306279

/-! ## A306279.P8045544538479929777

`A065164(A017449(n))`
-/

namespace A306279.P8045544538479929777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065164 (A017449 n).toNat

end

end A306279.P8045544538479929777

namespace A306279

/-- `A065164(A017449(n))` -/
def P8045544538479929777.Spec : Prop :=
  ∀ n, P8045544538479929777.a n = A306279 (n + 1)

end A306279

/-! ## A306279.P8961226187418858589

`filter[A343028(2*n+1), A145568(#)]`
-/

namespace A306279.P8961226187418858589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343028 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A306279.P8961226187418858589

namespace A306279

/-- `filter[A343028(2*n+1), A145568(#)]` -/
def P8961226187418858589.Spec : Prop :=
  ∀ n, P8961226187418858589.a n = A306279 (n + 1)

end A306279

/-! ## A306279.P6930698074016361620

`A081594(A139611(n))`
-/

namespace A306279.P6930698074016361620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081594 (A139611 n).toNat

end

end A306279.P6930698074016361620

namespace A306279

/-- `A081594(A139611(n))` -/
def P6930698074016361620.Spec : Prop :=
  ∀ n, P6930698074016361620.a n = A306279 (n + 1)

end A306279

/-!
# A306280: a(n) = Sum_{k=0..n} binomial(n,k)*binomial(n^2+k,k).

The programs for A306280, the canonical program `A306280.P8862614783267420309` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306280 has offset 0).

The definition of A306280 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)*C(n²+#, #)]` (program `A306280.P8862614783267420309`, by `A306280.P8862614783267420309.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306280.P8862614783267420309

`∑{#}[n, C(n, #)*C(n²+#, #)]`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A306280

/-- `∑{#}[n, C(n, #)*C(n²+#, #)]` -/
def P8862614783267420309.Spec : Prop :=
  ∀ n, (P8862614783267420309.a n : ℤ) = A306280 n

theorem P8862614783267420309.correct : P8862614783267420309.Spec := by
  intro n
  simp only [A306280]

end A306280

/-! ## A306280.P98349318559288265

`∑{#}[n, 2^(n-#)*C(n, #)*C(n², #)]`
-/

namespace A306280.P98349318559288265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (Nat.choose (n ^ 2) k : ℚ)

end

end A306280.P98349318559288265

namespace A306280

/-- `∑{#}[n, 2^(n-#)*C(n, #)*C(n², #)]` -/
def P98349318559288265.Spec : Prop :=
  ∀ n, P98349318559288265.a n = (A306280 n : ℚ)

end A306280

/-! ## A306280.P1286011873313339066

`A387934(∑[4*n])`
-/

namespace A306280.P1286011873313339066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387934 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306280.P1286011873313339066

namespace A306280

/-- `A387934(∑[4*n])` -/
def P1286011873313339066.Spec : Prop :=
  ∀ n, P1286011873313339066.a n = A306280 n

end A306280

/-! ## A306280.P11188628164684101727

`record[gcd(A003987(n), A387934(n))]`
-/

namespace A306280.P11188628164684101727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A387934 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306280.P11188628164684101727

namespace A306280

/-- `record[gcd(A003987(n), A387934(n))]` -/
def P11188628164684101727.Spec : Prop :=
  ∀ n, (P11188628164684101727.a n : ℤ) = A306280 n

end A306280

/-! ## A306280.P3965152875361767261

`A208341(floor(Δ[n^5/10])+n)`
-/

namespace A306280.P3965152875361767261
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 5 : ℚ) / 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (⌊f1 (n + 1) - f1 n⌋ + (n : ℤ)).toNat

end

end A306280.P3965152875361767261

namespace A306280

/-- `A208341(floor(Δ[n^5/10])+n)` -/
def P3965152875361767261.Spec : Prop :=
  ∀ n, P3965152875361767261.a n = A306280 n

end A306280

/-!
# A306281: Number of (undirected) Hamiltonian paths on the 6 X n knight graph.

The programs for A306281, there is no canonical definition to state claims against.
-/

/-! ## A306281.P477615941625243021

`A389756(6*(n+1))`
-/

namespace A306281.P477615941625243021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389756 (6 * (n + 1))

end

end A306281.P477615941625243021

/-! ## A306281.P10105092073820523187

`A390833(A374007(n+1))`
-/

namespace A306281.P10105092073820523187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390833 (A374007 (n + 1)).toNat

end

end A306281.P10105092073820523187

/-!
# A306283: Number of (undirected) Hamiltonian paths on the 7 X n knight graph.

The programs for A306283, there is no canonical definition to state claims against.
-/

/-! ## A306283.P16826572412628085523

`A389757(7*(n+1))`
-/

namespace A306283.P16826572412628085523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389757 (7 * (n + 1))

end

end A306283.P16826572412628085523

/-! ## A306283.P14155872875124881583

`A390833(A374008(n+1))`
-/

namespace A306283.P14155872875124881583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390833 (A374008 (n + 1)).toNat

end

end A306283.P14155872875124881583

/-!
# A306284: a(n) is the smallest positive integer x such that x > y >= 0 and n divides x^2 - y^2.

The programs for A306284, there is no canonical definition to state claims against.
-/

/-! ## A306284.P15011709985798325066

`A000224(n+1)-A083914(A205479(n+1)²)`
-/

namespace A306284.P15011709985798325066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (n + 1) - A083914 (A205479 (n + 1) ^ 2).toNat

end

end A306284.P15011709985798325066

/-! ## A306284.P13424300078400959179

`A029578(A111234(n+1)%eq[2, A054989(n+1)])`
-/

namespace A306284.P13424300078400959179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (Int.tmod (A111234 (n + 1)) (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A306284.P13424300078400959179

/-! ## A306284.P6538690711597788483

`A029579(A111234(n+1))-A010121(A165571(n+1))`
-/

namespace A306284.P6538690711597788483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A111234 (n + 1)).toNat - A010121 (A165571 (n + 1)).toNat

end

end A306284.P6538690711597788483

/-!
# A306285: Numbers congruent to 4 or 21 mod 26.

The programs for A306285, the canonical program `A306285.P1173840425612155152` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306285 has offset 1).

The definition of A306285 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A306285.anchor (n : ℕ) (hn : 1 ≤ n) : A306285 n = (Nat.nth (fun k => k % 26 ∈ ({4, 21} : Finset ℕ)) (n - 1) : ℤ)` in `Proof.A306.A306285`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306285.P2645503416625024446

`ogf((4+17x+5x^2)/(1-x-x^2+x^3))`
-/

namespace A306285.P2645503416625024446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 17, 5] [1, -1, -1, 1] n

end

end A306285.P2645503416625024446

namespace A306285

/-- `ogf((4+17x+5x^2)/(1-x-x^2+x^3))` -/
def P2645503416625024446.Spec : Prop :=
  ∀ n, P2645503416625024446.a n = A306285 (n + 1)

end A306285

/-! ## A306285.P1173840425612155152

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=4, a(1)=21, a(2)=30`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A306285

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P1173840425612155152.Spec : Prop :=
  ∀ n, P1173840425612155152.a n = A306285 (n + 1)

theorem P1173840425612155152.correct : P1173840425612155152.Spec := by
  intro n
  simp only [A306285, Nat.add_sub_cancel]

end A306285

/-! ## A306285.P9347513490508539426

`13*(n+1)-A010720(n+1)`
-/

namespace A306285.P9347513490508539426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (13 * (n + 1) : ℤ) - A010720 (n + 1)

end

end A306285.P9347513490508539426

namespace A306285

/-- `13*(n+1)-A010720(n+1)` -/
def P9347513490508539426.Spec : Prop :=
  ∀ n, P9347513490508539426.a n = A306285 (n + 1)

end A306285

/-! ## A306285.P8112169142126182040

`a(n-2)+26` with `a(0)=4, a(1)=21`
-/

namespace A306285.P8112169142126182040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 21] fun n a =>
  a (n - 2) + 26

end

end A306285.P8112169142126182040

namespace A306285

/-- `a(n-2)+26` -/
def P8112169142126182040.Spec : Prop :=
  ∀ n, (P8112169142126182040.a n : ℤ) = A306285 (n + 1)

end A306285

/-! ## A306285.P2250048357424117688

`∑[26-a(n-1)]` with `a(0)=4, a(1)=17`
-/

namespace A306285.P2250048357424117688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 17] fun n f1 =>
  26 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306285.P2250048357424117688

namespace A306285

/-- `∑[26-a(n-1)]` -/
def P2250048357424117688.Spec : Prop :=
  ∀ n, P2250048357424117688.a n = A306285 (n + 1)

end A306285

/-! ## A306285.P16434919429062124584

`or(4, 12*n+4)+n`
-/

namespace A306285.P16434919429062124584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (12 * n + 4) + n

end

end A306285.P16434919429062124584

namespace A306285

/-- `or(4, 12*n+4)+n` -/
def P16434919429062124584.Spec : Prop :=
  ∀ n, (P16434919429062124584.a n : ℤ) = A306285 (n + 1)

end A306285

/-! ## A306285.P17847416230854925987

`record[lcm(12, n+1)/3]+n`
-/

namespace A306285.P17847416230854925987
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 12 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℚ)

end

end A306285.P17847416230854925987

namespace A306285

/-- `record[lcm(12, n+1)/3]+n` -/
def P17847416230854925987.Spec : Prop :=
  ∀ n, P17847416230854925987.a n = (A306285 (n + 1) : ℚ)

end A306285

/-! ## A306285.P1070260486232277928

`2*xor(1, 7*n+3)-n`
-/

namespace A306285.P1070260486232277928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor 1 (7 * n + 3) : ℤ) - (n : ℤ)

end

end A306285.P1070260486232277928

namespace A306285

/-- `2*xor(1, 7*n+3)-n` -/
def P1070260486232277928.Spec : Prop :=
  ∀ n, P1070260486232277928.a n = A306285 (n + 1)

end A306285

/-! ## A306285.P14327100051849534167

`26*n-1-a(n-1)` with `a(0)=4`
-/

namespace A306285.P14327100051849534167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (26 * n : ℤ) - 1 - a (n - 1)

end

end A306285.P14327100051849534167

namespace A306285

/-- `26*n-1-a(n-1)` -/
def P14327100051849534167.Spec : Prop :=
  ∀ n, P14327100051849534167.a n = A306285 (n + 1)

end A306285

/-! ## A306285.P16322327620343191159

`Δ[xor(1, 7*n²)]-1-n`
-/

namespace A306285.P16322327620343191159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (7 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1 - (n : ℤ)

end

end A306285.P16322327620343191159

namespace A306285

/-- `Δ[xor(1, 7*n²)]-1-n` -/
def P16322327620343191159.Spec : Prop :=
  ∀ n, P16322327620343191159.a n = A306285 (n + 1)

end A306285

/-! ## A306285.P11067091911287538216

`A259755(n+1)+n`
-/

namespace A306285.P11067091911287538216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259755 (n + 1) + (n : ℤ)

end

end A306285.P11067091911287538216

namespace A306285

/-- `A259755(n+1)+n` -/
def P11067091911287538216.Spec : Prop :=
  ∀ n, P11067091911287538216.a n = A306285 (n + 1)

theorem P11067091911287538216.correct : P11067091911287538216.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A306285, Nat.add_sub_cancel, A306285.P11067091911287538216.a, A306285.P1173840425612155152.a, A259755, A259755.P4631213340866640928.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A306285, Nat.add_sub_cancel, A306285.P11067091911287538216.a, A306285.P1173840425612155152.a, A259755, A259755.P4631213340866640928.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A306285

/-! ## A306285.P2521080829163804906

`∑[A344335(a(n-1))]` with `a(0)=4`
-/

namespace A306285.P2521080829163804906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A344335 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306285.P2521080829163804906

namespace A306285

/-- `∑[A344335(a(n-1))]` -/
def P2521080829163804906.Spec : Prop :=
  ∀ n, P2521080829163804906.a n = A306285 (n + 1)

end A306285

/-! ## A306285.P6372788793076463005

`Δ[4*A032528(n)]+n`
-/

namespace A306285.P6372788793076463005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A032528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A306285.P6372788793076463005

namespace A306285

/-- `Δ[4*A032528(n)]+n` -/
def P6372788793076463005.Spec : Prop :=
  ∀ n, P6372788793076463005.a n = A306285 (n + 1)

end A306285

/-! ## A306285.P12379443464790174861

`A231002(n+1)-(n+1)`
-/

namespace A306285.P12379443464790174861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231002 (n + 1) - (n + 1 : ℤ)

end

end A306285.P12379443464790174861

namespace A306285

/-- `A231002(n+1)-(n+1)` -/
def P12379443464790174861.Spec : Prop :=
  ∀ n, P12379443464790174861.a n = A306285 (n + 1)

end A306285

/-! ## A306285.P12062942285949123936

`2*A091999(n+1)+n`
-/

namespace A306285.P12062942285949123936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091999 (n + 1) + (n : ℤ)

end

end A306285.P12062942285949123936

namespace A306285

/-- `2*A091999(n+1)+n` -/
def P12062942285949123936.Spec : Prop :=
  ∀ n, P12062942285949123936.a n = A306285 (n + 1)

end A306285

/-! ## A306285.P4529994840409885847

`2*A306278(n+1)-n`
-/

namespace A306285.P4529994840409885847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A306278 (n + 1) - (n : ℤ)

end

end A306285.P4529994840409885847

namespace A306285

/-- `2*A306278(n+1)-n` -/
def P4529994840409885847.Spec : Prop :=
  ∀ n, P4529994840409885847.a n = A306285 (n + 1)

theorem P4529994840409885847.correct : P4529994840409885847.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A306285, Nat.add_sub_cancel, A306285.P4529994840409885847.a, A306285.P1173840425612155152.a, A306278, A306278.P15628367988812863921.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A306285, Nat.add_sub_cancel, A306285.P4529994840409885847.a, A306285.P1173840425612155152.a, A306278, A306278.P15628367988812863921.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A306285

/-! ## A306285.P17265622229832027887

`4*A007310(n+1)+n`
-/

namespace A306285.P17265622229832027887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007310 (n + 1) + (n : ℤ)

end

end A306285.P17265622229832027887

namespace A306285

/-- `4*A007310(n+1)+n` -/
def P17265622229832027887.Spec : Prop :=
  ∀ n, P17265622229832027887.a n = A306285 (n + 1)

end A306285

/-! ## A306285.P6919056651989180082

`4*or(1, A016777(n))+n`
-/

namespace A306285.P6919056651989180082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.lor 1 (A016777 n) + (n : ℤ)

end

end A306285.P6919056651989180082

namespace A306285

/-- `4*or(1, A016777(n))+n` -/
def P6919056651989180082.Spec : Prop :=
  ∀ n, P6919056651989180082.a n = A306285 (n + 1)

end A306285

/-! ## A306285.P4200479370596938648

`A306279(n+1)+Δ[n²]`
-/

namespace A306285.P4200479370596938648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306279 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A306285.P4200479370596938648

namespace A306285

/-- `A306279(n+1)+Δ[n²]` -/
def P4200479370596938648.Spec : Prop :=
  ∀ n, P4200479370596938648.a n = A306285 (n + 1)

theorem P4200479370596938648.correct : P4200479370596938648.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A306285, Nat.add_sub_cancel, A306285.P4200479370596938648.f1, A306285.P4200479370596938648.a, A306285.P1173840425612155152.a, A306279, A306279.P15417631850282334460.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A306285, Nat.add_sub_cancel, A306285.P4200479370596938648.f1, A306285.P4200479370596938648.a, A306285.P1173840425612155152.a, A306279, A306279.P15417631850282334460.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A306285

/-!
# A306286: a(n) is the product of the positions of the ones in the binary expansion of n (the most significant bit having position 1).

The programs for A306286, the canonical program `A306286.P7034646562799688644` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306286 has offset 0).

The definition of A306286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306286.P11590054816565474101

`A070939(n)!/A306549(n)`
-/

namespace A306286.P11590054816565474101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A070939 n).toNat : ℚ) / (A306549 n : ℚ)

end

end A306286.P11590054816565474101

namespace A306286

/-- `A070939(n)!/A306549(n)` -/
def P11590054816565474101.Spec : Prop :=
  ∀ n, P11590054816565474101.a n = (A306286 n : ℚ)

end A306286

/-! ## A306286.P277288420158402013

`A029837(n+1)!/A306549(n)`
-/

namespace A306286.P277288420158402013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A029837 (n + 1)).toNat : ℚ) / (A306549 n : ℚ)

end

end A306286.P277288420158402013

namespace A306286

/-- `A029837(n+1)!/A306549(n)` -/
def P277288420158402013.Spec : Prop :=
  ∀ n, P277288420158402013.a n = (A306286 n : ℚ)

end A306286

/-! ## A306286.P4103848483457976521

`A306549(A092569(A033999(n)+n))`
-/

namespace A306286.P4103848483457976521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306549 (A092569 (A033999 n + (n : ℤ)).toNat).toNat

end

end A306286.P4103848483457976521

namespace A306286

/-- `A306549(A092569(A033999(n)+n))` -/
def P4103848483457976521.Spec : Prop :=
  ∀ n, P4103848483457976521.a n = A306286 n

end A306286

/-! ## A306286.P17484233622126681947

`A306549(A053644(n))/A306549(n)`
-/

namespace A306286.P17484233622126681947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306549 (A053644 n).toNat : ℚ) / (A306549 n : ℚ)

end

end A306286.P17484233622126681947

namespace A306286

/-- `A306549(A053644(n))/A306549(n)` -/
def P17484233622126681947.Spec : Prop :=
  ∀ n, P17484233622126681947.a n = (A306286 n : ℚ)

end A306286

/-! ## A306286.P7034646562799688644

`a(A029578(n))*A070939(A093178(n))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A306286

/-- `a(A029578(n))*A070939(A093178(n))` -/
def P7034646562799688644.Spec : Prop :=
  ∀ n, P7034646562799688644.a n = A306286 n

theorem P7034646562799688644.correct : P7034646562799688644.Spec := by
  intro n
  simp only [A306286]

end A306286

/-! ## A306286.P4384298413030399600

`A306549(A092569(2*n)+1)`
-/

namespace A306286.P4384298413030399600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306549 (A092569 (2 * n) + 1).toNat

end

end A306286.P4384298413030399600

namespace A306286

/-- `A306549(A092569(2*n)+1)` -/
def P4384298413030399600.Spec : Prop :=
  ∀ n, P4384298413030399600.a n = A306286 n

end A306286

/-! ## A306286.P13535416344731272994

`A306549(A092569(2*n)/2)`
-/

namespace A306286.P13535416344731272994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306549 (SequenceMachineLib.roundAway ((A092569 (2 * n) : ℚ) / 2)).toNat

end

end A306286.P13535416344731272994

namespace A306286

/-- `A306549(A092569(2*n)/2)` -/
def P13535416344731272994.Spec : Prop :=
  ∀ n, P13535416344731272994.a n = A306286 n

end A306286

/-! ## A306286.P12014735235946205393

`A306549(A092569(2*n+1))`
-/

namespace A306286.P12014735235946205393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306549 (A092569 (2 * n + 1)).toNat

end

end A306286.P12014735235946205393

namespace A306286

/-- `A306549(A092569(2*n+1))` -/
def P12014735235946205393.Spec : Prop :=
  ∀ n, P12014735235946205393.a n = A306286 n

end A306286

/-!
# A306287: Irregular triangle T(n,k), 1 <= n, 1 <= k <= (1/6)*(4+5*2^(2*n)), read by rows: T(n,k) determines absolute directions along the perimeter of the n-th Y-type Hilbert Tree.

The programs for A306287, there is no canonical definition to state claims against.
-/

/-! ## A306287.P3980538697549521218

`and(3, ∑[A344686(A256217(n+1))])`
-/

namespace A306287.P3980538697549521218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344686 (A256217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306287.P3980538697549521218

/-! ## A306287.P2328571402535398799

`xor(A101666(n), A271223(A034386(n)))`
-/

namespace A306287.P2328571402535398799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A101666 n) (A271223 (A034386 n).toNat)

end

end A306287.P2328571402535398799

/-! ## A306287.P13649611545030731947

`A287108(A217941(n+1))+A275281(n)`
-/

namespace A306287.P13649611545030731947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287108 (A217941 (n + 1)).toNat + A275281 n

end

end A306287.P13649611545030731947

/-! ## A306287.P7451200111408895044

`A027748(n+1)%p?[A318323(A102543(n))]`
-/

namespace A306287.P7451200111408895044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318323 (A102543 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027748 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A306287.P7451200111408895044

/-! ## A306287.P11968261684284517545

`A003238(A003680(n+1))%A063438(n+5)`
-/

namespace A306287.P11968261684284517545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003238 (A003680 (n + 1)).toNat) (A063438 (n + 5))

end

end A306287.P11968261684284517545

/-!
# A306289: The smallest prime factor of numbers greater than 1 and coprime to 6.

The programs for A306289, there is no canonical definition to state claims against.
-/

/-! ## A306289.P3044475206911049891

`A020639(6*ceil((n+1)/2)+(-1)^(n+1))`
-/

namespace A306289.P3044475206911049891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (6 * ⌈(n + 1 : ℚ) / 2⌉ + (-1) ^ (n + 1)).toNat

end

end A306289.P3044475206911049891

/-! ## A306289.P3651236082516579413

`filter[A020639(n+1), A355450(#)]`
-/

namespace A306289.P3651236082516579413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A306289.P3651236082516579413

/-! ## A306289.P5241336645610073119

`A090368(A001651(n+1)+2)`
-/

namespace A306289.P5241336645610073119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A001651 (n + 1) + 2).toNat

end

end A306289.P5241336645610073119

/-! ## A306289.P3638633384295083821

`filter[A090368(n+1), A123110(#)]`
-/

namespace A306289.P3638633384295083821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A306289.P3638633384295083821

/-! ## A306289.P11891393498139999695

`filter[A090368(n+1), A355450(#)]`
-/

namespace A306289.P11891393498139999695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A306289.P11891393498139999695

/-! ## A306289.P12261172520676380117

`filter[A090368(n+1), A359172(#)]`
-/

namespace A306289.P12261172520676380117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A306289.P12261172520676380117

/-! ## A306289.P15571034971833441869

`filter[A090368(n+1), A361460(#)]`
-/

namespace A306289.P15571034971833441869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361460 (f1 j).toNat = 1) n)

end

end A306289.P15571034971833441869

/-! ## A306289.P11380856365167300236

`filter[A090368(n+2), A014578(#)]`
-/

namespace A306289.P11380856365167300236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A306289.P11380856365167300236

/-! ## A306289.P4000160265708620961

`filter[A090368(n+2), A187074(#)]`
-/

namespace A306289.P4000160265708620961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A306289.P4000160265708620961

/-! ## A306289.P5344107416038542031

`filter[A090368(n+2), A320106(#)]`
-/

namespace A306289.P5344107416038542031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A306289.P5344107416038542031

/-! ## A306289.P10377167617874156199

`filter[A090368(n+2), A323511(#)]`
-/

namespace A306289.P10377167617874156199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323511 (f1 j).toNat = 1) n)

end

end A306289.P10377167617874156199

/-! ## A306289.P4144232976459147532

`filter[A090368(n+2), A323512(#)]`
-/

namespace A306289.P4144232976459147532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323512 (f1 j).toNat = 1) n)

end

end A306289.P4144232976459147532

/-! ## A306289.P15759664167891291296

`filter[A090368(n+2), A354354(#)]`
-/

namespace A306289.P15759664167891291296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A306289.P15759664167891291296

/-! ## A306289.P2797119386700567393

`filter[A090368(n+2), A356161(#)]`
-/

namespace A306289.P2797119386700567393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356161 (f1 j).toNat = 1) n)

end

end A306289.P2797119386700567393

/-! ## A306289.P6570102465975142678

`A117367(A254050(n+2))`
-/

namespace A306289.P6570102465975142678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117367 (A254050 (n + 2)).toNat

end

end A306289.P6570102465975142678

/-! ## A306289.P17565635866383141042

`filter[A020639(n+1), A171387(#)]`
-/

namespace A306289.P17565635866383141042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A306289.P17565635866383141042

/-! ## A306289.P1257872919156629550

`filter[A020639(n+1), A185114(#)]`
-/

namespace A306289.P1257872919156629550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185114 (f1 j).toNat = 1) n)

end

end A306289.P1257872919156629550

/-! ## A306289.P5617834016362315266

`filter[A090368(n+1), A171387(#)]`
-/

namespace A306289.P5617834016362315266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A306289.P5617834016362315266

/-! ## A306289.P18070732900571942587

`filter[A090368(n+1), A174282(#)]`
-/

namespace A306289.P18070732900571942587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174282 (f1 j).toNat = 1) n)

end

end A306289.P18070732900571942587

/-! ## A306289.P14463737758550482389

`filter[A090368(n+1), A266246(#)]`
-/

namespace A306289.P14463737758550482389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A306289.P14463737758550482389

/-!
# A306290: a(n) = 1/(Integral_{x=0..1} (x^3 - x^4)^n dx).

The programs for A306290, the canonical program `A306290.P10608388856596034568` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306290 has offset 0).

The definition of A306290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306290.P3087912939023654058

`A016813(n)*A005810(n)`
-/

namespace A306290.P3087912939023654058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n * A005810 n

end

end A306290.P3087912939023654058

namespace A306290

/-- `A016813(n)*A005810(n)` -/
def P3087912939023654058.Spec : Prop :=
  ∀ n, P3087912939023654058.a n = A306290 n

end A306290

/-! ## A306290.P3929764570897324222

`(4*n+1)*C(4*n, n)`
-/

namespace A306290.P3929764570897324222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + 1) * Nat.choose (4 * n) n

end

end A306290.P3929764570897324222

namespace A306290

/-- `(4*n+1)*C(4*n, n)` -/
def P3929764570897324222.Spec : Prop :=
  ∀ n, (P3929764570897324222.a n : ℤ) = A306290 n

end A306290

/-! ## A306290.P10608388856596034568

`(4*n+1)!/(n!*(3*n)!)`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A306290

/-- `(4*n+1)!/(n!*(3*n)!)` -/
def P10608388856596034568.Spec : Prop :=
  ∀ n, P10608388856596034568.a n = (A306290 n : ℚ)

end A306290

/-! ## A306290.P5043196440501589796

`(n+1)*A335647(n)`
-/

namespace A306290.P5043196440501589796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A335647 n

end

end A306290.P5043196440501589796

namespace A306290

/-- `(n+1)*A335647(n)` -/
def P5043196440501589796.Spec : Prop :=
  ∀ n, P5043196440501589796.a n = A306290 n

end A306290

/-! ## A306290.P12630967876812102095

`(1+3*n)*A052203(n)`
-/

namespace A306290.P12630967876812102095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + 3 * n : ℤ) * A052203 n

end

end A306290.P12630967876812102095

namespace A306290

/-- `(1+3*n)*A052203(n)` -/
def P12630967876812102095.Spec : Prop :=
  ∀ n, P12630967876812102095.a n = A306290 n

end A306290

/-! ## A306290.P3364234368383088274

`A005810(n)*A016813(n)`
-/

namespace A306290.P3364234368383088274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005810 n * A016813 n

end

end A306290.P3364234368383088274

namespace A306290

/-- `A005810(n)*A016813(n)` -/
def P3364234368383088274.Spec : Prop :=
  ∀ n, P3364234368383088274.a n = A306290 n

end A306290

/-! ## A306290.P12990399832586582627

`A060544(n+1)*A069271(n)`
-/

namespace A306290.P12990399832586582627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1) * A069271 n

end

end A306290.P12990399832586582627

namespace A306290

/-- `A060544(n+1)*A069271(n)` -/
def P12990399832586582627.Spec : Prop :=
  ∀ n, P12990399832586582627.a n = A306290 n

end A306290

/-! ## A306290.P15536026753620131712

`A016777(n)*A283799(2*n)`
-/

namespace A306290.P15536026753620131712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n * A283799 (2 * n)

end

end A306290.P15536026753620131712

namespace A306290

/-- `A016777(n)*A283799(2*n)` -/
def P15536026753620131712.Spec : Prop :=
  ∀ n, P15536026753620131712.a n = A306290 n

end A306290

/-!
# A306292: Number of asymmetric Dyck paths of semilength n.

The programs for A306292, the canonical program `A306292.P10261785905661555885` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306292 has offset 1).

The definition of A306292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306292.P10261785905661555885

`C(2*(n+1), n+1)/(n+2)-C(n+1, floor((n+1)/2))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A306292

/-- `C(2*(n+1), n+1)/(n+2)-C(n+1, floor((n+1)/2))` -/
def P10261785905661555885.Spec : Prop :=
  ∀ n, P10261785905661555885.a n = (A306292 (n + 1) : ℚ)

end A306292

/-! ## A306292.P17368868497952333938

`A000108(n+1)-C(n+1, floor((n+1)/2))`
-/

namespace A306292.P17368868497952333938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - (Nat.choose (n + 1) ⌊(n + 1 : ℚ) / 2⌋.toNat : ℤ)

end

end A306292.P17368868497952333938

namespace A306292

/-- `A000108(n+1)-C(n+1, floor((n+1)/2))` -/
def P17368868497952333938.Spec : Prop :=
  ∀ n, P17368868497952333938.a n = A306292 (n + 1)

end A306292

/-! ## A306292.P8493784922181438744

`∑[A000245(n)-A037952(n)]`
-/

namespace A306292.P8493784922181438744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n - A037952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306292.P8493784922181438744

namespace A306292

/-- `∑[A000245(n)-A037952(n)]` -/
def P8493784922181438744.Spec : Prop :=
  ∀ n, P8493784922181438744.a n = A306292 (n + 1)

end A306292

/-! ## A306292.P3170958355166240324

`∑[Δ[A000108(n)]-A037952(n)]`
-/

namespace A306292.P3170958355166240324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A037952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306292.P3170958355166240324

namespace A306292

/-- `∑[Δ[A000108(n)]-A037952(n)]` -/
def P3170958355166240324.Spec : Prop :=
  ∀ n, P3170958355166240324.a n = A306292 (n + 1)

end A306292

/-! ## A306292.P9911176989031282521

`∑[Δ[A120304(n)]-A037952(n)]`
-/

namespace A306292.P9911176989031282521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A037952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306292.P9911176989031282521

namespace A306292

/-- `∑[Δ[A120304(n)]-A037952(n)]` -/
def P9911176989031282521.Spec : Prop :=
  ∀ n, P9911176989031282521.a n = A306292 (n + 1)

end A306292

/-! ## A306292.P13501302312255664117

`A000108(n+1)-A001405(n+1)`
-/

namespace A306292.P13501302312255664117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A001405 (n + 1)

end

end A306292.P13501302312255664117

namespace A306292

/-- `A000108(n+1)-A001405(n+1)` -/
def P13501302312255664117.Spec : Prop :=
  ∀ n, P13501302312255664117.a n = A306292 (n + 1)

end A306292

/-! ## A306292.P9250274521517463424

`A000108(n+1)-A210736(n+2)`
-/

namespace A306292.P9250274521517463424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A210736 (n + 2)

end

end A306292.P9250274521517463424

namespace A306292

/-- `A000108(n+1)-A210736(n+2)` -/
def P9250274521517463424.Spec : Prop :=
  ∀ n, P9250274521517463424.a n = A306292 (n + 1)

end A306292

/-! ## A306292.P11590610685754309209

`A026008(2*n)-A001405(n+1)`
-/

namespace A306292.P11590610685754309209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026008 (2 * n) - A001405 (n + 1)

end

end A306292.P11590610685754309209

namespace A306292

/-- `A026008(2*n)-A001405(n+1)` -/
def P11590610685754309209.Spec : Prop :=
  ∀ n, P11590610685754309209.a n = A306292 (n + 1)

end A306292

/-! ## A306292.P18264779649285499486

`A000108(n+1)-abs(A126930(n+1))`
-/

namespace A306292.P18264779649285499486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - |A126930 (n + 1)|

end

end A306292.P18264779649285499486

namespace A306292

/-- `A000108(n+1)-abs(A126930(n+1))` -/
def P18264779649285499486.Spec : Prop :=
  ∀ n, P18264779649285499486.a n = A306292 (n + 1)

end A306292

/-! ## A306292.P9071123234257649565

`abs(A168491(n+1))-A001405(n+1)`
-/

namespace A306292.P9071123234257649565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 (n + 1)| - A001405 (n + 1)

end

end A306292.P9071123234257649565

namespace A306292

/-- `abs(A168491(n+1))-A001405(n+1)` -/
def P9071123234257649565.Spec : Prop :=
  ∀ n, P9071123234257649565.a n = A306292 (n + 1)

end A306292

/-! ## A306292.P8027622393670428350

`A208355(2*n+1)-A001405(n+1)`
-/

namespace A306292.P8027622393670428350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n + 1) - A001405 (n + 1)

end

end A306292.P8027622393670428350

namespace A306292

/-- `A208355(2*n+1)-A001405(n+1)` -/
def P8027622393670428350.Spec : Prop :=
  ∀ n, P8027622393670428350.a n = A306292 (n + 1)

end A306292

/-! ## A306292.P6938680374132442092

`A000108(n+1)-(A086905(n+1)+A086905(n))`
-/

namespace A306292.P6938680374132442092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - (A086905 (n + 1) + A086905 n)

end

end A306292.P6938680374132442092

namespace A306292

/-- `A000108(n+1)-(A086905(n+1)+A086905(n))` -/
def P6938680374132442092.Spec : Prop :=
  ∀ n, P6938680374132442092.a n = A306292 (n + 1)

end A306292

/-! ## A306292.P12036662281877153182

`Δ[A014137(n)-A036256(n)]`
-/

namespace A306292.P12036662281877153182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 n - A036256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306292.P12036662281877153182

namespace A306292

/-- `Δ[A014137(n)-A036256(n)]` -/
def P12036662281877153182.Spec : Prop :=
  ∀ n, P12036662281877153182.a n = A306292 (n + 1)

end A306292

/-! ## A306292.P14456583302690782240

`Δ[∑[A000108(n)]-A036256(n)]`
-/

namespace A306292.P14456583302690782240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A036256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A306292.P14456583302690782240

namespace A306292

/-- `Δ[∑[A000108(n)]-A036256(n)]` -/
def P14456583302690782240.Spec : Prop :=
  ∀ n, P14456583302690782240.a n = A306292 (n + 1)

end A306292

/-! ## A306292.P10354920561005396958

`A014137(n+1)-(A014137(n)+A001405(n+1))`
-/

namespace A306292.P10354920561005396958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 (n + 1) - (A014137 n + A001405 (n + 1))

end

end A306292.P10354920561005396958

namespace A306292

/-- `A014137(n+1)-(A014137(n)+A001405(n+1))` -/
def P10354920561005396958.Spec : Prop :=
  ∀ n, P10354920561005396958.a n = A306292 (n + 1)

end A306292

/-! ## A306292.P14769919093048081372

`A014138(n+1)-(A014138(n)+A001405(n+1))`
-/

namespace A306292.P14769919093048081372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 (n + 1) - (A014138 n + A001405 (n + 1))

end

end A306292.P14769919093048081372

namespace A306292

/-- `A014138(n+1)-(A014138(n)+A001405(n+1))` -/
def P14769919093048081372.Spec : Prop :=
  ∀ n, P14769919093048081372.a n = A306292 (n + 1)

end A306292

/-! ## A306292.P5329912956450045213

`A000108(n+1)-sqrt(A018224(n+1))`
-/

namespace A306292.P5329912956450045213
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000108 (n + 1) : ℝ) - Real.sqrt (A018224 (n + 1) : ℝ)

end

end A306292.P5329912956450045213

namespace A306292

/-- `A000108(n+1)-sqrt(A018224(n+1))` -/
def P5329912956450045213.Spec : Prop :=
  ∀ n, P5329912956450045213.a n = (A306292 (n + 1) : ℝ)

end A306292

/-! ## A306292.P18108854470374552802

`A063549(2*(n+1))-A001405(n+1)`
-/

namespace A306292.P18108854470374552802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063549 (2 * (n + 1)) - A001405 (n + 1)

end

end A306292.P18108854470374552802

namespace A306292

/-- `A063549(2*(n+1))-A001405(n+1)` -/
def P18108854470374552802.Spec : Prop :=
  ∀ n, P18108854470374552802.a n = A306292 (n + 1)

end A306292

/-! ## A306292.P13863735176907909058

`A009766(A000096(n+1))-A001405(n+1)`
-/

namespace A306292.P13863735176907909058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (A000096 (n + 1)).toNat - A001405 (n + 1)

end

end A306292.P13863735176907909058

namespace A306292

/-- `A009766(A000096(n+1))-A001405(n+1)` -/
def P13863735176907909058.Spec : Prop :=
  ∀ n, P13863735176907909058.a n = A306292 (n + 1)

end A306292

/-!
# A306293: Number of binary words of length n such that in every prefix and in every suffix the number of 0's and the number of 1's differ by at most two.

The programs for A306293, the canonical program `A306293.P9701320851030017885` is in `Seq.B000.C043`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306293 has offset 0).

The definition of A306293 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306293.P9701320851030017885

`ogf((1+2x-4x^2-10x^3+12x^5+11x^6-4x^8)/(1-8x^2+22x^4-23x^6+6x^8))`

The canonical program, it is in `Seq.B000.C043`.
-/

namespace A306293

/-- `ogf((1+2x-4x^2-10x^3+12x^5+11x^6-4x^8)/(1-8x^2+22x^4-23x^6+6x^8))` -/
def P9701320851030017885.Spec : Prop :=
  ∀ n, P9701320851030017885.a n = A306293 n

theorem P9701320851030017885.correct : P9701320851030017885.Spec := by
  intro n
  simp only [A306293]

end A306293

/-! ## A306293.P3322757312499293833

`A368100(a(n-2))+3` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A306293.P3322757312499293833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A368100 (a (n - 2)).toNat + 3

end

end A306293.P3322757312499293833

namespace A306293

/-- `A368100(a(n-2))+3` -/
def P3322757312499293833.Spec : Prop :=
  ∀ n, P3322757312499293833.a n = A306293 n

end A306293

/-! ## A306293.P7758852349935302231

`∑[A098667(Δ[A294413(n)])]`
-/

namespace A306293.P7758852349935302231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294413 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098667 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306293.P7758852349935302231

namespace A306293

/-- `∑[A098667(Δ[A294413(n)])]` -/
def P7758852349935302231.Spec : Prop :=
  ∀ n, P7758852349935302231.a n = A306293 n

end A306293

/-! ## A306293.P4303999557550811607

`∑[A098667(record[A339067(n+1)])]`
-/

namespace A306293.P4303999557550811607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339067 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098667 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306293.P4303999557550811607

namespace A306293

/-- `∑[A098667(record[A339067(n+1)])]` -/
def P4303999557550811607.Spec : Prop :=
  ∀ n, P4303999557550811607.a n = A306293 n

end A306293

/-! ## A306293.P6636438443765973504

`∑[A000010(2*A245879(n+1))]`
-/

namespace A306293.P6636438443765973504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * A245879 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306293.P6636438443765973504

namespace A306293

/-- `∑[A000010(2*A245879(n+1))]` -/
def P6636438443765973504.Spec : Prop :=
  ∀ n, P6636438443765973504.a n = A306293 n

end A306293

/-!
# A306295: Maximal number of coalescent histories among non-matching pairs consisting of a caterpillar gene tree and a caterpillar species tree with n+2 leaves.

The programs for A306295, there is no canonical definition to state claims against.
-/

/-! ## A306295.P5668619875204198467

`A000108(n+2)-A005817(n+1)`
-/

namespace A306295.P5668619875204198467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 2) - A005817 (n + 1)

end

end A306295.P5668619875204198467

/-! ## A306295.P9675186310641482940

`A120588(n+3)-A005817(n+1)`
-/

namespace A306295.P9675186310641482940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 3) - A005817 (n + 1)

end

end A306295.P9675186310641482940

/-! ## A306295.P13082543769637590095

`abs(A168491(n+2))-A005817(n+1)`
-/

namespace A306295.P13082543769637590095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 (n + 2)| - A005817 (n + 1)

end

end A306295.P13082543769637590095

/-! ## A306295.P13386859136239720659

`Δ[A014137(n+1)]-A005817(n+1)`
-/

namespace A306295.P13386859136239720659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005817 (n + 1)

end

end A306295.P13386859136239720659

/-! ## A306295.P5778826291747051625

`Δ[A014138(n+1)]-A005817(n+1)`
-/

namespace A306295.P5778826291747051625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005817 (n + 1)

end

end A306295.P5778826291747051625

/-!
# A306296: Numbers not of the form x^2+7*y^2+7*z^2.

The programs for A306296, there is no canonical definition to state claims against.
-/

/-! ## A306296.P4016578747225403842

`lt[A046569(A000217(n+1)), gcd(7, A276287(n))]`
-/

namespace A306296.P4016578747225403842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046569 (A000217 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A276287 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A306296.P4016578747225403842

/-! ## A306296.P6889097334185136847

`comp[A324940(n+1)]`
-/

namespace A306296.P6889097334185136847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324940 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A306296.P6889097334185136847

/-!
# A306298: Numbers k such that k^2-1 is divisible by exactly two distinct primes.

The programs for A306298, the canonical program `A306298.P5813132135022434998` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306298 has offset 1).

The definition of A306298 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 237 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306298.P5813132135022434998

`eq[2, A082863(n+2)]+2`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A306298

/-- `eq[2, A082863(n+2)]+2` -/
def P5813132135022434998.Spec : Prop :=
  ∀ n, (P5813132135022434998.a n : ℤ) = A306298 (n + 1)

theorem P5813132135022434998.correct : P5813132135022434998.Spec := by
  intro n
  simp only [A306298, Nat.add_sub_cancel]

end A306298

/-! ## A306298.P11595546398191455446

`record[A005843(n+4)/A082863(n+4)]`
-/

namespace A306298.P11595546398191455446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005843 (n + 4) : ℚ) / (A082863 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306298.P11595546398191455446

namespace A306298

/-- `record[A005843(n+4)/A082863(n+4)]` -/
def P11595546398191455446.Spec : Prop :=
  ∀ n, P11595546398191455446.a n = (A306298 (n + 1) : ℚ)

end A306298

/-! ## A306298.P7180546723660674813

`lt[(2-∑{e}[∏{p}[1-n², #], #])², 1]`
-/

namespace A306298.P7180546723660674813
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n ^ 2 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)) ^ 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A306298.P7180546723660674813

namespace A306298

/-- `lt[(2-∑{e}[∏{p}[1-n², #], #])², 1]` -/
def P7180546723660674813.Spec : Prop :=
  ∀ n, (P7180546723660674813.a n : ℤ) = A306298 (n + 1)

end A306298

/-! ## A306298.P14422816959266956937

`eq[2, A082863(A233583(n+1))]`
-/

namespace A306298.P14422816959266956937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082863 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306298.P14422816959266956937

namespace A306298

/-- `eq[2, A082863(A233583(n+1))]` -/
def P14422816959266956937.Spec : Prop :=
  ∀ n, (P14422816959266956937.a n : ℤ) = A306298 (n + 1)

end A306298

/-! ## A306298.P570372849421221419

`eq[2, A001221((n+1)*(n+3))]+2`
-/

namespace A306298.P570372849421221419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1) * (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A306298.P570372849421221419

namespace A306298

/-- `eq[2, A001221((n+1)*(n+3))]+2` -/
def P570372849421221419.Spec : Prop :=
  ∀ n, (P570372849421221419.a n : ℤ) = A306298 (n + 1)

end A306298

/-!
# A306299: Number of binary carry-connected subsets of [n] containing n (for n > 0).

The programs for A306299, there is no canonical definition to state claims against.
-/

/-! ## A306299.P3560508622499531586

`abs(Δ[A325105(abs(1-n))])`
-/

namespace A306299.P3560508622499531586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325105 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A306299.P3560508622499531586

/-! ## A306299.P14781116673210008556

`runs[A062383(A326749(n+1))]`
-/

namespace A306299.P14781116673210008556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A326749 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A306299.P14781116673210008556

