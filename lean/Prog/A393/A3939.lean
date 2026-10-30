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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C014
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
# A393901: Triangle read by rows: T(n,k) = (2*n + k - 1) * 2^(k-2).

The programs for A393901, the canonical program `A393901.P5729677441842478698` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393901 has offset 1).

The definition of A393901 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393901.P5729677441842478698

`(2*(row(n)+1)+col(n)+1-1)*2^(col(n)-1)`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393901

/-- `(2*(row(n)+1)+col(n)+1-1)*2^(col(n)-1)` -/
def P5729677441842478698.Spec : Prop :=
  ∀ n, P5729677441842478698.a n = (A393901 (n + 1) : ℚ)

end A393901

/-! ## A393901.P12485630952122330653

`2^(col(n)-1)*(col(n)+2*(row(n)+1))`
-/

namespace A393901.P12485630952122330653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.triCol n : ℤ) - 1 : ℤ) * (SequenceMachineLib.triCol n + 2 * (SequenceMachineLib.triRow n + 1) : ℚ)

end

end A393901.P12485630952122330653

namespace A393901

/-- `2^(col(n)-1)*(col(n)+2*(row(n)+1))` -/
def P12485630952122330653.Spec : Prop :=
  ∀ n, P12485630952122330653.a n = (A393901 (n + 1) : ℚ)

end A393901

/-! ## A393901.P9350242213273031306

`A118413(n+1)-A152920(n)`
-/

namespace A393901.P9350242213273031306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118413 (n + 1) - A152920 n

end

end A393901.P9350242213273031306

namespace A393901

/-- `A118413(n+1)-A152920(n)` -/
def P9350242213273031306.Spec : Prop :=
  ∀ n, P9350242213273031306.a n = A393901 (n + 1)

end A393901

/-!
# A393906: Equivalence classes of clusters of n connected lozenges in the triangular grid.

The programs for A393906, there is no canonical definition to state claims against.
-/

/-! ## A393906.P1041153593113586971

`row(row(A076467(A082579(n))))`
-/

namespace A393906.P1041153593113586971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (SequenceMachineLib.triRow (A076467 (A082579 n).toNat).toNat)

end

end A393906.P1041153593113586971

/-! ## A393906.P10303875939640254576

`A380377(A000081(2*n+1)-n)`
-/

namespace A393906.P10303875939640254576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380377 (A000081 (2 * n + 1) - (n : ℤ)).toNat

end

end A393906.P10303875939640254576

/-!
# A393907: Number of planar embedding isomorphism classes of the n-Hanoi graph.

The programs for A393907, the canonical program `A393907.P16316879088530982332` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393907 has offset 1).

The definition of A393907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393907.P16316879088530982332

`ogf((1-12x+38x^2-32x^3)/(1-14x+56x^2-64x^3))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393907

/-- `ogf((1-12x+38x^2-32x^3)/(1-14x+56x^2-64x^3))` -/
def P16316879088530982332.Spec : Prop :=
  ∀ n, P16316879088530982332.a n = A393907 (n + 1)

theorem P16316879088530982332.correct : P16316879088530982332.Spec := by
  intro n
  simp only [A393907, Nat.add_sub_cancel]

end A393907

/-! ## A393907.P46058478367440021

`(2^n+1)*(2^n+2)/6*round(2^(n-1))`
-/

namespace A393907.P46058478367440021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 1 : ℚ) * ((2 ^ n + 2 : ℚ) / 6) * (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) : ℚ)

end

end A393907.P46058478367440021

namespace A393907

/-- `(2^n+1)*(2^n+2)/6*round(2^(n-1))` -/
def P46058478367440021.Spec : Prop :=
  ∀ n, P46058478367440021.a n = (A393907 (n + 1) : ℚ)

end A393907

/-! ## A393907.P7757244301669931271

`floor((A092055(n)+1)/2)`
-/

namespace A393907.P7757244301669931271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A092055 n + 1 : ℚ) / 2⌋

end

end A393907.P7757244301669931271

namespace A393907

/-- `floor((A092055(n)+1)/2)` -/
def P7757244301669931271.Spec : Prop :=
  ∀ n, P7757244301669931271.a n = A393907 (n + 1)

end A393907

/-! ## A393907.P764129973169313177

`lcm(A007581(n), A011782(n))`
-/

namespace A393907.P764129973169313177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007581 n) (A011782 n)

end

end A393907.P764129973169313177

namespace A393907

/-- `lcm(A007581(n), A011782(n))` -/
def P764129973169313177.Spec : Prop :=
  ∀ n, (P764129973169313177.a n : ℤ) = A393907 (n + 1)

end A393907

/-! ## A393907.P10302099499943070177

`A006331(A011782(n))-A000007(n)`
-/

namespace A393907.P10302099499943070177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 (A011782 n).toNat - A000007 n

end

end A393907.P10302099499943070177

namespace A393907

/-- `A006331(A011782(n))-A000007(n)` -/
def P10302099499943070177.Spec : Prop :=
  ∀ n, P10302099499943070177.a n = A393907 (n + 1)

end A393907

/-!
# A393908: a(n) = Sum_{i=0..n} Sum_{j=0..i} binomial(n+2*i,3*i) * binomial(i+2*j,3*j).

The programs for A393908, there is no canonical definition to state claims against.
-/

/-! ## A393908.P8754075972268564533

`A314257(a(n-1))-3` with `a(0)=1, a(1)=3`
-/

namespace A393908.P8754075972268564533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A314257 (a (n - 1)).toNat - 3

end

end A393908.P8754075972268564533

/-!
# A393911: a(n) = 1 + n*(n+1)/2 + Sum_{k=0..n-1} a(k) * a(n-1-k).

The programs for A393911, there is no canonical definition to state claims against.
-/

/-! ## A393911.P5208993951737768990

`A398691(A151164(n))`
-/

namespace A393911.P5208993951737768990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398691 (A151164 n).toNat

end

end A393911.P5208993951737768990

/-! ## A393911.P16188302659021185836

`A008616(A016269(n))+A000069(n+1)`
-/

namespace A393911.P16188302659021185836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A016269 n).toNat + A000069 (n + 1)

end

end A393911.P16188302659021185836

/-!
# A393912: a(n) = 1 + binomial(n+2,3) + Sum_{k=0..n-1} a(k) * a(n-1-k).

The programs for A393912, there is no canonical definition to state claims against.
-/

/-! ## A393912.P6400295232045101241

`or(A020988(n), A111900(A006880(n)))`
-/

namespace A393912.P6400295232045101241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A020988 n) (A111900 (A006880 n).toNat)

end

end A393912.P6400295232045101241

/-!
# A393913: a(n) = 1 + n^2 + Sum_{k=0..n-1} a(k) * a(n-1-k).

The programs for A393913, there is no canonical definition to state claims against.
-/

/-! ## A393913.P12289500546105907870

`A130371(A149066(n+1))`
-/

namespace A393913.P12289500546105907870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130371 (A149066 (n + 1)).toNat

end

end A393913.P12289500546105907870

/-!
# A393914: Numbers k such that A008472(k) is coprime to A001414(k).

The programs for A393914, there is no canonical definition to state claims against.
-/

/-! ## A393914.P9729090685970967397

`filter[A362618(n+1), A355447(#)]`
-/

namespace A393914.P9729090685970967397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A393914.P9729090685970967397

/-! ## A393914.P8547831608974680310

`∩[A059404(n+1), A362618(n+1)]`
-/

namespace A393914.P8547831608974680310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393914.P8547831608974680310

/-! ## A393914.P4437545126718940045

`∩[A126706(n+1), A362618(n+1)]`
-/

namespace A393914.P4437545126718940045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393914.P4437545126718940045

/-! ## A393914.P11316506940158254649

`∩[A303946(n+1), A362618(n+1)]`
-/

namespace A393914.P11316506940158254649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393914.P11316506940158254649

/-! ## A393914.P10090564317734288179

`∩[A323055(n+1), A362618(n+1)]`
-/

namespace A393914.P10090564317734288179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393914.P10090564317734288179

/-!
# A393915: a(n) = Sum_{k=0..n} binomial(n,k)^2 * binomial(2*k,k) * k!.

The programs for A393915, the canonical program `A393915.P2780476472627507345` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393915 has offset 0).

The definition of A393915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)²*C(2*#, #)*#!]` (program `A393915.P2780476472627507345`, by `A393915.P2780476472627507345.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393915.P2780476472627507345

`∑{#}[n, C(n, #)²*C(2*#, #)*#!]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393915

/-- `∑{#}[n, C(n, #)²*C(2*#, #)*#!]` -/
def P2780476472627507345.Spec : Prop :=
  ∀ n, (P2780476472627507345.a n : ℤ) = A393915 n

theorem P2780476472627507345.correct : P2780476472627507345.Spec := by
  intro n
  simp only [A393915]

end A393915

/-!
# A393917: Number of primes strictly between (prime(n) + prime(n+1)) and (prime(n) * prime(n+1)).

The programs for A393917, the canonical program `A393917.P7977796838059119531` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393917 has offset 1).

The definition of A393917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393917.P7977796838059119531

`A000720(A006094(n+1))-A000720(A001043(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A393917

/-- `A000720(A006094(n+1))-A000720(A001043(n+1))` -/
def P7977796838059119531.Spec : Prop :=
  ∀ n, P7977796838059119531.a n = A393917 (n + 1)

theorem P7977796838059119531.correct : P7977796838059119531.Spec := by
  intro n
  simp only [A393917, Nat.add_sub_cancel]

end A393917

/-! ## A393917.P14923226935163139265

`A000720(A000040(n+1)*A000040(n+2))-A000720(A000040(n+1)+A000040(n+2))`
-/

namespace A393917.P14923226935163139265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (n + 1) * A000040 (n + 2)).toNat - A000720 (A000040 (n + 1) + A000040 (n + 2)).toNat

end

end A393917.P14923226935163139265

namespace A393917

/-- `A000720(A000040(n+1)*A000040(n+2))-A000720(A000040(n+1)+A000040(n+2))` -/
def P14923226935163139265.Spec : Prop :=
  ∀ n, P14923226935163139265.a n = A393917 (n + 1)

end A393917

/-!
# A393918: Triangle read by rows: T(n, k) is the number of compositions of n into parts at least k.

The programs for A393918, there is no canonical definition to state claims against.
-/

/-! ## A393918.P3168921779647686955

`A099238(row(n)-2*col(n)+n)`
-/

namespace A393918.P3168921779647686955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099238 ((SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ) + (n : ℤ)).toNat

end

end A393918.P3168921779647686955

/-! ## A393918.P10824950244517537265

`A099238(A061579(n))`
-/

namespace A393918.P10824950244517537265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099238 (A061579 n).toNat

end

end A393918.P10824950244517537265

/-! ## A393918.P18011037468439532114

`A099238(A002024(n+1)²-(n+1))`
-/

namespace A393918.P18011037468439532114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099238 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A393918.P18011037468439532114

/-! ## A393918.P6342617733756081662

`A099238(A038722(n+2))`
-/

namespace A393918.P6342617733756081662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099238 (A038722 (n + 2)).toNat

end

end A393918.P6342617733756081662

/-! ## A393918.P1646555752879881784

`A137710(n+1)-A112765(A000055(n))`
-/

namespace A393918.P1646555752879881784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137710 (n + 1) - A112765 (A000055 n).toNat

end

end A393918.P1646555752879881784

/-!
# A393920: Number of full subcategories of the category of finite dimensional linear representations of a totally ordered set with n elements (over any field) that are closed under extensions and direct summands.

The programs for A393920, there is no canonical definition to state claims against.
-/

/-! ## A393920.P16584369454217746458

`A356118(n+2)+A293959(A000578(n))`
-/

namespace A393920.P16584369454217746458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356118 (n + 2) + A293959 (A000578 n).toNat

end

end A393920.P16584369454217746458

/-!
# A393921: Number of ordered set partitions of [n] whose set of block sizes covers an initial interval.

The programs for A393921, there is no canonical definition to state claims against.
-/

/-! ## A393921.P4926590380861482748

`A004277(A000009(n)*A059838(n))`
-/

namespace A393921.P4926590380861482748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000009 n * A059838 n).toNat

end

end A393921.P4926590380861482748

/-! ## A393921.P15365944355621894935

`A129314(A001006(n))`
-/

namespace A393921.P15365944355621894935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129314 (A001006 n).toNat

end

end A393921.P15365944355621894935

/-!
# A393923: Product of numbers k <= n that have the same squarefree kernel as n.

The programs for A393923, there is no canonical definition to state claims against.
-/

/-! ## A393923.P9879859570566337687

`(n+1)*a(A285328(n+1)-1)` with `a(0)=1`
-/

namespace A393923.P9879859570566337687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (A285328 (n + 1) - 1).toNat

end

end A393923.P9879859570566337687

/-!
# A393924: Numbers that are either squarefree or squareful.

The programs for A393924, the canonical program `A393924.P12806141696084150267` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393924 has offset 1).

The definition of A393924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393924.P14659640448615213491

`lt[A389905(n+1), 1]+1`
-/

namespace A393924.P14659640448615213491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389905 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A393924.P14659640448615213491

namespace A393924

/-- `lt[A389905(n+1), 1]+1` -/
def P14659640448615213491.Spec : Prop :=
  ∀ n, (P14659640448615213491.a n : ℤ) = A393924 (n + 1)

end A393924

/-! ## A393924.P17734922394947918601

`comp[A332785(n+1)-1]+1`
-/

namespace A393924.P17734922394947918601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A393924.P17734922394947918601

namespace A393924

/-- `comp[A332785(n+1)-1]+1` -/
def P17734922394947918601.Spec : Prop :=
  ∀ n, (P17734922394947918601.a n : ℤ) = A393924 (n + 1)

end A393924

/-! ## A393924.P12806141696084150267

`record[gcd(n, A326186(n+1))+1]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A393924

/-- `record[gcd(n, A326186(n+1))+1]` -/
def P12806141696084150267.Spec : Prop :=
  ∀ n, (P12806141696084150267.a n : ℤ) = A393924 (n + 1)

theorem P12806141696084150267.correct : P12806141696084150267.Spec := by
  intro n
  simp only [A393924, Nat.add_sub_cancel]

end A393924

/-! ## A393924.P4800319645649177867

`∪[A001694(n+1), A005117(n+1)]`
-/

namespace A393924.P4800319645649177867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393924.P4800319645649177867

namespace A393924

/-- `∪[A001694(n+1), A005117(n+1)]` -/
def P4800319645649177867.Spec : Prop :=
  ∀ n, (P4800319645649177867.a n : ℤ) = A393924 (n + 1)

end A393924

/-! ## A393924.P11586286860711327585

`∪[A001694(n+1), A303554(n+1)]`
-/

namespace A393924.P11586286860711327585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A393924.P11586286860711327585

namespace A393924

/-- `∪[A001694(n+1), A303554(n+1)]` -/
def P11586286860711327585.Spec : Prop :=
  ∀ n, (P11586286860711327585.a n : ℤ) = A393924 (n + 1)

end A393924

/-! ## A393924.P188155519867473050

`lt[A001221(A073184(n+1)), 2]+1`
-/

namespace A393924.P188155519867473050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A073184 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A393924.P188155519867473050

namespace A393924

/-- `lt[A001221(A073184(n+1)), 2]+1` -/
def P188155519867473050.Spec : Prop :=
  ∀ n, (P188155519867473050.a n : ℤ) = A393924 (n + 1)

end A393924

/-!
# A393925: Number of transitive relations on an n-set with exactly eight ordered pairs.

The programs for A393925, there is no canonical definition to state claims against.
-/

/-! ## A393925.P1447469730151231452

`A395544(n)-A395093(n)`
-/

namespace A393925.P1447469730151231452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395544 n - A395093 n

end

end A393925.P1447469730151231452

/-! ## A393925.P8205842311368753343

`A395544(n)-(A394769(n)+A392460(n))`
-/

namespace A393925.P8205842311368753343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395544 n - (A394769 n + A392460 n)

end

end A393925.P8205842311368753343

/-!
# A393926: a(0) = 1; a(n) = 3 - 2*n + Sum_{k=0..n-1} a(k) * a(n-1-k).

The programs for A393926, there is no canonical definition to state claims against.
-/

/-! ## A393926.P9311964283828937871

`A156562(A086613(n))`
-/

namespace A393926.P9311964283828937871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A086613 n).toNat

end

end A393926.P9311964283828937871

/-! ## A393926.P5929253225012007311

`A154099(A150773(n))`
-/

namespace A393926.P5929253225012007311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154099 (A150773 n).toNat

end

end A393926.P5929253225012007311

/-! ## A393926.P5745641033897557834

`A089610(A149474(n+1))`
-/

namespace A393926.P5745641033897557834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089610 (A149474 (n + 1)).toNat

end

end A393926.P5745641033897557834

/-!
# A393929: a(n) is the sum of divisors of n whose decimal representation is not a substring of the decimal representation of n.

The programs for A393929, there is no canonical definition to state claims against.
-/

/-! ## A393929.P5515882912701136020

`A000203(n+1)-A355620(n+1)`
-/

namespace A393929.P5515882912701136020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A355620 (n + 1)

end

end A393929.P5515882912701136020

/-! ## A393929.P3717514157606457784

`A000203(n+1)-A357630(A341660(n+1))`
-/

namespace A393929.P3717514157606457784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A357630 (A341660 (n + 1)).toNat

end

end A393929.P3717514157606457784

/-!
# A393930: a(0) = 0, a(1) = 1; a(n) = n! * [x^n] (1/n)^2 * exp(n*x) * Sum_{k=1..n-1} a(k)*x^k/k!.

The programs for A393930, there is no canonical definition to state claims against.
-/

/-! ## A393930.P1033229696751895027

`A165190(∑[∑[A006882(2*n)]])`
-/

namespace A393930.P1033229696751895027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A393930.P1033229696751895027

/-! ## A393930.P4335416460445272158

`A049759(A054369(n))+A000311(n)`
-/

namespace A393930.P4335416460445272158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049759 (A054369 n).toNat + A000311 n

end

end A393930.P4335416460445272158

/-!
# A393932: Start with a point at (0,0). At each iteration, add a new point by going one step up or to the right from the current point, choosing the option that gives the least maximum number of points on a line through the new point. In case of ties, compare the number of points on the line with the next largest number of points, etc. If there is still a tie, go to the right. a(n) is 0 if the n-th step is to the right, 1 if the step is upwards.

The programs for A393932, there is no canonical definition to state claims against.
-/

/-! ## A393932.P10137966706220211779

`A288600(A090568(3*n+1)+A031215(n+1))`
-/

namespace A393932.P10137966706220211779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (A090568 (3 * n + 1) + A031215 (n + 1)).toNat

end

end A393932.P10137966706220211779

/-! ## A393932.P8463746807302724962

`A266716(A116503(n+2))`
-/

namespace A393932.P8463746807302724962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266716 (A116503 (n + 2)).toNat

end

end A393932.P8463746807302724962

/-! ## A393932.P8434660523710331281

`A392736(A003144(3*n+2)*A129594(3*n+4))`
-/

namespace A393932.P8434660523710331281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392736 (A003144 (3 * n + 2) * A129594 (3 * n + 4)).toNat

end

end A393932.P8434660523710331281

/-! ## A393932.P4395645972311144976

`A292077(A081591(n))`
-/

namespace A393932.P4395645972311144976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292077 (A081591 n).toNat

end

end A393932.P4395645972311144976

/-! ## A393932.P4189730115945106454

`A011663(A285439(n+1))`
-/

namespace A393932.P4189730115945106454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011663 (A285439 (n + 1)).toNat

end

end A393932.P4189730115945106454

/-!
# A393934: Array T(n,k) read by antidiagonals, n,k >= 1: Start with a point at the origin of the n-dimensional grid. At each iteration, add a new point by increasing one of the coordinates of the current point by 1, choosing the option that gives the least maximum number of points on a line through the new point. In case of ties, compare the number of points on the line with the next largest number of points, etc. If there is still a tie, choose the first among the optimal coordinates. T(n,k) is the zero-based index of the coordinate that is increased in the k-th step.

The programs for A393934, there is no canonical definition to state claims against.
-/

/-! ## A393934.P612275827699589683

`A330166(A378112(n+1))`
-/

namespace A393934.P612275827699589683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330166 (A378112 (n + 1)).toNat

end

end A393934.P612275827699589683

/-! ## A393934.P4603609439270842206

`val(A134033(n+1), 2)`
-/

namespace A393934.P4603609439270842206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A134033 (n + 1)).toNat 2

end

end A393934.P4603609439270842206

/-! ## A393934.P15803238939446502917

`A007814(A134033(n+1))`
-/

namespace A393934.P15803238939446502917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A134033 (n + 1)).toNat

end

end A393934.P15803238939446502917

/-! ## A393934.P7529896311387820766

`A000073(gcd(A011782(n), A134033(n+1)))`
-/

namespace A393934.P7529896311387820766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (Int.gcd (A011782 n) (A134033 (n + 1)))

end

end A393934.P7529896311387820766

/-! ## A393934.P1427157574525999275

`and(A073189(n), A073200(A068930(n+1)))`
-/

namespace A393934.P1427157574525999275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073189 n) (A073200 (A068930 (n + 1)).toNat)

end

end A393934.P1427157574525999275

/-!
# A393936: a(n) is the number of points that have been added when n collinear points first appear in the path defined in A393933.

The programs for A393936, there is no canonical definition to state claims against.
-/

/-! ## A393936.P7122898076331492883

`A378307(A088052(n))`
-/

namespace A393936.P7122898076331492883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378307 (A088052 n).toNat

end

end A393936.P7122898076331492883

/-!
# A393938: Triangle read by rows: T(n,k) is the number of free polycubes with n cells, where the maximum number of collinear cell centers is k; 1 <= k <= n.

The programs for A393938, there is no canonical definition to state claims against.
-/

/-! ## A393938.P5718880266408315111

`lcm(A106566(n), A118668(A279623(n)))`
-/

namespace A393938.P5718880266408315111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A106566 n) (A118668 (A279623 n).toNat)

end

end A393938.P5718880266408315111

/-! ## A393938.P288299700441060817

`A066099(A318763(n+1))*A106566(n)`
-/

namespace A393938.P288299700441060817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A318763 (n + 1)).toNat * A106566 n

end

end A393938.P288299700441060817

/-! ## A393938.P12074881992995710129

`A147746(n)*A380563((n+1)/(1-and(n, n+2)/(n+2)))`
-/

namespace A393938.P12074881992995710129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147746 n * A380563 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (1 - (Nat.land n (n + 2) : ℚ) / (n + 2 : ℚ)))).toNat

end

end A393938.P12074881992995710129

/-! ## A393938.P1425322755526415425

`A353859(n)+A033665(A007059(n))`
-/

namespace A393938.P1425322755526415425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353859 n + A033665 (A007059 n).toNat

end

end A393938.P1425322755526415425

/-! ## A393938.P7570174320981948761

`A287822(n)+A151755(A028303(n))`
-/

namespace A393938.P7570174320981948761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 n + A151755 (A028303 n).toNat

end

end A393938.P7570174320981948761

/-!
# A393939: Number of free polycubes with n cells such that pairs of cell centers determine the largest possible number (A394394(n)) of distinct lines.

The programs for A393939, there is no canonical definition to state claims against.
-/

/-! ## A393939.P1125159405416086359

`A393938(C(n+1, 2)+1)+A393938(C(n+1, 2)+2)`
-/

namespace A393939.P1125159405416086359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393938 (Nat.choose (n + 1) 2 + 1) + A393938 (Nat.choose (n + 1) 2 + 2)

end

end A393939.P1125159405416086359

/-! ## A393939.P9666310926532965561

`A393938(A133263(n))`
-/

namespace A393939.P9666310926532965561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393938 (A133263 n).toNat

end

end A393939.P9666310926532965561

/-! ## A393939.P4338750321952701886

`A393938(A238531(n+1))`
-/

namespace A393939.P4338750321952701886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393938 (A238531 (n + 1)).toNat

end

end A393939.P4338750321952701886

/-!
# A393941: Achilles numbers whose prime power factors have distinct exponents.

The programs for A393941, there is no canonical definition to state claims against.
-/

/-! ## A393941.P165995328371813753

`filter[A052486(n+1), A351564(#)]`
-/

namespace A393941.P165995328371813753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A393941.P165995328371813753

/-!
# A393944: Number of subsets of [n] in which exactly one third of the elements are primes and one third of the elements are squares.

The programs for A393944, there is no canonical definition to state claims against.
-/

/-! ## A393944.P1681833052140324049

`A132075(A146131(n+1))`
-/

namespace A393944.P1681833052140324049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132075 (A146131 (n + 1)).toNat

end

end A393944.P1681833052140324049

/-!
# A393945: Number of binary words of length n with an even number of occurrences of subword 101.

The programs for A393945, the canonical program `A393945.P3874364795812403129` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393945 has offset 0).

The definition of A393945 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393945.P3874364795812403129

`ogf((1-2x+2x^2-3x^3)/(1-4x+6x^2-6x^3+4x^4))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393945

/-- `ogf((1-2x+2x^2-3x^3)/(1-4x+6x^2-6x^3+4x^4))` -/
def P3874364795812403129.Spec : Prop :=
  ∀ n, P3874364795812403129.a n = A393945 n

theorem P3874364795812403129.correct : P3874364795812403129.Spec := by
  intro n
  simp only [A393945]

end A393945

/-! ## A393945.P2240198450366095358

`A104767(n)+A011782(n)`
-/

namespace A393945.P2240198450366095358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104767 n + A011782 n

end

end A393945.P2240198450366095358

namespace A393945

/-- `A104767(n)+A011782(n)` -/
def P2240198450366095358.Spec : Prop :=
  ∀ n, P2240198450366095358.a n = A393945 n

end A393945

/-! ## A393945.P3757826165330836808

`record[A023432(∑[A294079(2*n+3)])]`
-/

namespace A393945.P3757826165330836808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294079 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023432 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393945.P3757826165330836808

namespace A393945

/-- `record[A023432(∑[A294079(2*n+3)])]` -/
def P3757826165330836808.Spec : Prop :=
  ∀ n, P3757826165330836808.a n = A393945 n

end A393945

/-! ## A393945.P17420980647304556751

`A023432(n+3)%A006512(A093637(n))`
-/

namespace A393945.P17420980647304556751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023432 (n + 3)) (A006512 (A093637 n).toNat)

end

end A393945.P17420980647304556751

namespace A393945

/-- `A023432(n+3)%A006512(A093637(n))` -/
def P17420980647304556751.Spec : Prop :=
  ∀ n, P17420980647304556751.a n = A393945 n

end A393945

/-! ## A393945.P12701740612843703943

`A023432(n+3)^A299037(A219274(n))`
-/

namespace A393945.P12701740612843703943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023432 (n + 3) : ℚ) ^ (A299037 (A219274 n).toNat : ℤ)

end

end A393945.P12701740612843703943

namespace A393945

/-- `A023432(n+3)^A299037(A219274(n))` -/
def P12701740612843703943.Spec : Prop :=
  ∀ n, P12701740612843703943.a n = (A393945 n : ℚ)

end A393945

/-!
# A393946: Numbers that are neither squarefree nor squareful, with prime power factor exponents that are pairwise coprime.

The programs for A393946, there is no canonical definition to state claims against.
-/

/-! ## A393946.P15709384705279720241

`A052410(A392069(n+1))`
-/

namespace A393946.P15709384705279720241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A392069 (n + 1)).toNat

end

end A393946.P15709384705279720241

/-! ## A393946.P7597043520948927641

`filter[A359470(1+n), A132350(#)]`
-/

namespace A393946.P7597043520948927641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359470 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A393946.P7597043520948927641

/-! ## A393946.P173078423678387562

`filter[A359470(n+1), A389905(#)]`
-/

namespace A393946.P173078423678387562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A393946.P173078423678387562

/-! ## A393946.P11161680531852906868

`∩[A303946(n+1), A359470(n+1)]`
-/

namespace A393946.P11161680531852906868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393946.P11161680531852906868

/-!
# A393947: Numbers that are neither squarefree nor squareful with prime power factor exponents that are not all pairwise coprime.

The programs for A393947, there is no canonical definition to state claims against.
-/

/-! ## A393947.P11959120361459312155

`filter[A072413(n+1), A389905(#)]`
-/

namespace A393947.P11959120361459312155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A393947.P11959120361459312155

/-! ## A393947.P7322134433563890580

`∩[A072413(n+1), A390949(n+1)]`
-/

namespace A393947.P7322134433563890580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393947.P7322134433563890580

/-! ## A393947.P1251776909796496506

`∩[A072413(n+1), A332785(n+1)]`
-/

namespace A393947.P1251776909796496506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393947.P1251776909796496506

/-!
# A393954: Expansion of ( 1 + Series_Reversion( x*(1-2*x-x^2) ) )^2.

The programs for A393954, there is no canonical definition to state claims against.
-/

/-! ## A393954.P7589098937213835890

`∑{#}[n, A192945(#)*A192945(n-#)]`
-/

namespace A393954.P7589098937213835890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A192945 k * A192945 (n - k)

end

end A393954.P7589098937213835890

/-! ## A393954.P1156174516365937479

`A030530(3^A278453(n+1))`
-/

namespace A393954.P1156174516365937479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A278453 (n + 1) : ℤ))).toNat

end

end A393954.P1156174516365937479

/-!
# A393955: Expansion of e.g.f. ( 1 + Series_Reversion( x*exp(-x*(2+x)) ) )^2.

The programs for A393955, there is no canonical definition to state claims against.
-/

/-! ## A393955.P4805990421414336246

`A249818(A248471(n))+n`
-/

namespace A393955.P4805990421414336246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249818 (A248471 n).toNat + (n : ℤ)

end

end A393955.P4805990421414336246

/-!
# A393957: Number of bipartite non-complete simple games with a maximal number of minimal winning pairs.

The programs for A393957, the canonical program `A393957.P14878393042655647116` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393957 has offset 1).

The definition of A393957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393957.P14878393042655647116

`ogf((x^3+4x^4-x^5-x^8)/(1-4x^2+6x^4-4x^6+x^8))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393957

/-- `ogf((x^3+4x^4-x^5-x^8)/(1-4x^2+6x^4-4x^6+x^8))` -/
def P14878393042655647116.Spec : Prop :=
  ∀ n, P14878393042655647116.a n = A393957 (n + 1)

theorem P14878393042655647116.correct : P14878393042655647116.Spec := by
  intro n
  simp only [A393957, Nat.add_sub_cancel]

end A393957

/-!
# A393959: G.f. A(x) satisfies A(x) = 1 - E^2(log(1 - x*A(x))), where E is the Euler operator x*d/dx.

The programs for A393959, there is no canonical definition to state claims against.
-/

/-! ## A393959.P6973717487777328318

`A050431(A000244(n))*A393136(n)`
-/

namespace A393959.P6973717487777328318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050431 (A000244 n).toNat * A393136 n

end

end A393959.P6973717487777328318

/-!
# A393966: Numbers k which are not divisible by their digital root A010888(k).

The programs for A393966, the canonical program `A393966.P17334113040274682572` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393966 has offset 1).

The definition of A393966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393966.P17334113040274682572

`lt[n, lcm(n, dr(n))]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393966

/-- `lt[n, lcm(n, dr(n))]` -/
def P17334113040274682572.Spec : Prop :=
  ∀ n, (P17334113040274682572.a n : ℤ) = A393966 (n + 1)

theorem P17334113040274682572.correct : P17334113040274682572.Spec := by
  intro n
  simp only [A393966, Nat.add_sub_cancel]

end A393966

/-! ## A393966.P3981923392072041873

`comp[A064807(n+1)-1]+1`
-/

namespace A393966.P3981923392072041873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064807 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A393966.P3981923392072041873

namespace A393966

/-- `comp[A064807(n+1)-1]+1` -/
def P3981923392072041873.Spec : Prop :=
  ∀ n, (P3981923392072041873.a n : ℤ) = A393966 (n + 1)

end A393966

/-!
# A393970: Number of partitions p of n into distinct parts such that max(p) < 3*min(p).

The programs for A393970, there is no canonical definition to state claims against.
-/

/-! ## A393970.P10811745058513146913

`A393971(n+1)-A241063(n+1)`
-/

namespace A393970.P10811745058513146913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393971 (n + 1) - A241063 (n + 1)

end

end A393970.P10811745058513146913

/-! ## A393970.P5297381279006743846

`A240874(n+1)+A241036(n+1)-A393986(n+1)`
-/

namespace A393970.P5297381279006743846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240874 (n + 1) + (A241036 (n + 1) - A393986 (n + 1))

end

end A393970.P5297381279006743846

/-! ## A393970.P1677290451711349803

`A393971(n+1)+A393985(n+1)-A393986(n+1)`
-/

namespace A393970.P1677290451711349803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393971 (n + 1) + (A393985 (n + 1) - A393986 (n + 1))

end

end A393970.P1677290451711349803

/-! ## A393970.P9586088960203450809

`A216763(A288338(n))`
-/

namespace A393970.P9586088960203450809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216763 (A288338 n).toNat

end

end A393970.P9586088960203450809

/-! ## A393970.P15536446605570533353

`A329320(A055690(n+1))`
-/

namespace A393970.P15536446605570533353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329320 (A055690 (n + 1)).toNat

end

end A393970.P15536446605570533353

/-!
# A393971: Number of partitions p of n into distinct parts such that max(p) <= 3*min(p).

The programs for A393971, there is no canonical definition to state claims against.
-/

/-! ## A393971.P8120028752022452587

`A393970(n+1)+A241063(n+1)`
-/

namespace A393971.P8120028752022452587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393970 (n + 1) + A241063 (n + 1)

end

end A393971.P8120028752022452587

/-! ## A393971.P3922830810543226741

`A000009(n+1)-A393985(n+1)`
-/

namespace A393971.P3922830810543226741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A393985 (n + 1)

end

end A393971.P3922830810543226741

/-! ## A393971.P646219943911594435

`A240874(n+1)+A241036(n+1)-A393985(n+1)`
-/

namespace A393971.P646219943911594435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240874 (n + 1) + (A241036 (n + 1) - A393985 (n + 1))

end

end A393971.P646219943911594435

/-! ## A393971.P14632311821977689598

`A241037(n+1)+A241061(n+1)-A393985(n+1)`
-/

namespace A393971.P14632311821977689598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241037 (n + 1) + (A241061 (n + 1) - A393985 (n + 1))

end

end A393971.P14632311821977689598

/-! ## A393971.P6956049692275372018

`A393970(n+1)+A393986(n+1)-A393985(n+1)`
-/

namespace A393971.P6956049692275372018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393970 (n + 1) + (A393986 (n + 1) - A393985 (n + 1))

end

end A393971.P6956049692275372018

/-!
# A393972: Number of partitions p of n such that max(p) < 3*min(p).

The programs for A393972, there is no canonical definition to state claims against.
-/

/-! ## A393972.P1521282516171880367

`Δ[A000070(n)]-A363211(n+1)`
-/

namespace A393972.P1521282516171880367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A363211 (n + 1)

end

end A393972.P1521282516171880367

/-! ## A393972.P14853307946450476395

`record[A035363(n)]-A363211(n+1)`
-/

namespace A393972.P14853307946450476395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A363211 (n + 1)

end

end A393972.P14853307946450476395

/-! ## A393972.P9077898271878881293

`record[A035377(n)]-A363211(n+1)`
-/

namespace A393972.P9077898271878881293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A363211 (n + 1)

end

end A393972.P9077898271878881293

/-! ## A393972.P13489180091630340266

`A000041(1+n)-A363211(n+1)`
-/

namespace A393972.P13489180091630340266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (1 + n) - A363211 (n + 1)

end

end A393972.P13489180091630340266

/-! ## A393972.P16358837037087218343

`A035377(A047273(2*n+3))-A363211(n+1)`
-/

namespace A393972.P16358837037087218343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (A047273 (2 * n + 3)).toNat - A363211 (n + 1)

end

end A393972.P16358837037087218343

/-! ## A393972.P17878823732602637178

`A237821(n+1)+A053263(n)-A363211(n+1)`
-/

namespace A393972.P17878823732602637178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237821 (n + 1) + A053263 n - A363211 (n + 1)

end

end A393972.P17878823732602637178

/-! ## A393972.P8137140312785675087

`A393973(n+1)-A237825(n+1)`
-/

namespace A393972.P8137140312785675087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393973 (n + 1) - A237825 (n + 1)

end

end A393972.P8137140312785675087

/-! ## A393972.P308189029302396901

`Δ[A000070(n)]-(A393097(n+1)+A237825(n+1))`
-/

namespace A393972.P308189029302396901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A393097 (n + 1) + A237825 (n + 1))

end

end A393972.P308189029302396901

/-! ## A393972.P12658965893570295935

`A393097(n+1)+A393973(n+1)-A363211(n+1)`
-/

namespace A393972.P12658965893570295935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393097 (n + 1) + (A393973 (n + 1) - A363211 (n + 1))

end

end A393972.P12658965893570295935

/-! ## A393972.P15507934901926111435

`A237821(n+1)+A053263(n)-(A393097(n+1)+A237825(n+1))`
-/

namespace A393972.P15507934901926111435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237821 (n + 1) + A053263 n - (A393097 (n + 1) + A237825 (n + 1))

end

end A393972.P15507934901926111435

/-!
# A393973: Number of partitions p of n such that max(p) <= 3*min(p).

The programs for A393973, there is no canonical definition to state claims against.
-/

/-! ## A393973.P327480081641417297

`A393972(n+1)+A237825(n+1)`
-/

namespace A393973.P327480081641417297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393972 (n + 1) + A237825 (n + 1)

end

end A393973.P327480081641417297

/-! ## A393973.P1062471351980551529

`Δ[A000070(n)]-A393097(n+1)`
-/

namespace A393973.P1062471351980551529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A393097 (n + 1)

end

end A393973.P1062471351980551529

/-! ## A393973.P1908715181331591737

`record[A035363(n)]-A393097(n+1)`
-/

namespace A393973.P1908715181331591737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A393097 (n + 1)

end

end A393973.P1908715181331591737

/-! ## A393973.P17618067391352115210

`record[A035377(n)]-A393097(n+1)`
-/

namespace A393973.P17618067391352115210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A393097 (n + 1)

end

end A393973.P17618067391352115210

/-! ## A393973.P15699192525898443753

`A237821(n+1)+A053263(n)-A393097(n+1)`
-/

namespace A393973.P15699192525898443753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237821 (n + 1) + A053263 n - A393097 (n + 1)

end

end A393973.P15699192525898443753

/-! ## A393973.P5402150030330618651

`A363211(n+1)+A393972(n+1)-A393097(n+1)`
-/

namespace A393973.P5402150030330618651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363211 (n + 1) + (A393972 (n + 1) - A393097 (n + 1))

end

end A393973.P5402150030330618651

/-!
# A393974: Number of transitive relations on an n-set with exactly nine ordered pairs.

The programs for A393974, there is no canonical definition to state claims against.
-/

/-! ## A393974.P16131972976345007524

`C(n*3^a(n-1), 3)` with `a(0)=0`
-/

namespace A393974.P16131972976345007524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (n * 3 ^ a (n - 1)) 3

end

end A393974.P16131972976345007524

/-!
# A393975: Primes that can be written as p + r where p is a prime and r is an anagram of p.

The programs for A393975, there is no canonical definition to state claims against.
-/

/-! ## A393975.P6945574392980460566

`p?[A394667(n+1)]`
-/

namespace A393975.P6945574392980460566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A393975.P6945574392980460566

/-! ## A393975.P9101351278423318203

`filter[A394667(1+n), A010051(#)]`
-/

namespace A393975.P9101351278423318203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394667 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A393975.P9101351278423318203

/-! ## A393975.P4934581282203018388

`∩[A000040(n+1), A394667(n+1)]`
-/

namespace A393975.P4934581282203018388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393975.P4934581282203018388

/-! ## A393975.P2622860317045820052

`∩[A004139(n+1), A394667(n+1)]`
-/

namespace A393975.P2622860317045820052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393975.P2622860317045820052

/-! ## A393975.P9199808364159515124

`∩[A006005(n+1), A394667(n+1)]`
-/

namespace A393975.P9199808364159515124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393975.P9199808364159515124

/-! ## A393975.P11851096132582534248

`∩[A008578(n+1), A394667(n+1)]`
-/

namespace A393975.P11851096132582534248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393975.P11851096132582534248

/-! ## A393975.P17524090778834482415

`∩[A045319(n+1), A394667(n+1)]`
-/

namespace A393975.P17524090778834482415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393975.P17524090778834482415

/-! ## A393975.P15155249646927957195

`∩[A045344(n+1), A394667(n+1)]`
-/

namespace A393975.P15155249646927957195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393975.P15155249646927957195

/-! ## A393975.P14838582308860956202

`∩[A065091(n+1), A394667(n+1)]`
-/

namespace A393975.P14838582308860956202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393975.P14838582308860956202

/-! ## A393975.P18443034006296414140

`∩[A071621(n+1), A394667(n+1)]`
-/

namespace A393975.P18443034006296414140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393975.P18443034006296414140

/-! ## A393975.P3699849222681076806

`∩[A078132(n+1), A394667(n+1)]`
-/

namespace A393975.P3699849222681076806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393975.P3699849222681076806

/-! ## A393975.P5669272402076447631

`∩[A078138(n+1), A394667(n+1)]`
-/

namespace A393975.P5669272402076447631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393975.P5669272402076447631

/-! ## A393975.P8029275683186969971

`∩[A083249(n+1), A394667(n+1)]`
-/

namespace A393975.P8029275683186969971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393975.P8029275683186969971

/-! ## A393975.P7811331556808556493

`filter[A394667(n+1), A080339(#)]`
-/

namespace A393975.P7811331556808556493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A393975.P7811331556808556493

/-! ## A393975.P10573267248562556867

`filter[A394667(n+1), A080545(#)]`
-/

namespace A393975.P10573267248562556867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A393975.P10573267248562556867

/-! ## A393975.P17515384989413237704

`filter[A394667(n+1), A171387(#)]`
-/

namespace A393975.P17515384989413237704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A393975.P17515384989413237704

/-! ## A393975.P3768269043122126000

`∩[A005180(n+1), A394667(n+1)]`
-/

namespace A393975.P3768269043122126000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A393975.P3768269043122126000

/-!
# A393976: a(n) = phi(n)^2 + phi(n) + 1, where phi is Euler's totient function.

The programs for A393976, the canonical program `A393976.P13235993701100155495` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393976 has offset 1).

The definition of A393976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)²+A000010(n+1)+1` (program `A393976.P13235993701100155495`, by `A393976.P13235993701100155495.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393976.P11083541113519582612

`A127473(n+1)+A000010(n+1)+1`
-/

namespace A393976.P11083541113519582612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127473 (n + 1) + A000010 (n + 1) + 1

end

end A393976.P11083541113519582612

namespace A393976

/-- `A127473(n+1)+A000010(n+1)+1` -/
def P11083541113519582612.Spec : Prop :=
  ∀ n, P11083541113519582612.a n = A393976 (n + 1)

end A393976

/-! ## A393976.P13235993701100155495

`A000010(n+1)²+A000010(n+1)+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A393976

/-- `A000010(n+1)²+A000010(n+1)+1` -/
def P13235993701100155495.Spec : Prop :=
  ∀ n, P13235993701100155495.a n = A393976 (n + 1)

theorem P13235993701100155495.correct : P13235993701100155495.Spec := by
  intro n
  simp only [A393976, Nat.add_sub_cancel]

end A393976

/-! ## A393976.P8745441517066504619

`2*C(1+Δ[A002088(n)], 2)+1`
-/

namespace A393976.P8745441517066504619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (1 + (f1 (n + 1) - f1 n)).toNat 2 + 1

end

end A393976.P8745441517066504619

namespace A393976

/-- `2*C(1+Δ[A002088(n)], 2)+1` -/
def P8745441517066504619.Spec : Prop :=
  ∀ n, (P8745441517066504619.a n : ℤ) = A393976 (n + 1)

end A393976

/-! ## A393976.P6218723298815188719

`2*C(1+Δ[A100449(n)/4], 2)+1`
-/

namespace A393976.P6218723298815188719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (SequenceMachineLib.roundAway (1 + (f1 (n + 1) - f1 n))).toNat 2 + 1

end

end A393976.P6218723298815188719

namespace A393976

/-- `2*C(1+Δ[A100449(n)/4], 2)+1` -/
def P6218723298815188719.Spec : Prop :=
  ∀ n, (P6218723298815188719.a n : ℤ) = A393976 (n + 1)

end A393976

/-! ## A393976.P248048973496635434

`2*C(1+sqrt(sqrt(A361148(n+1))), 2)+1`
-/

namespace A393976.P248048973496635434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (SequenceMachineLib.roundAway (1 + Real.sqrt (Real.sqrt (A361148 (n + 1) : ℝ)))).toNat 2 + 1

end

end A393976.P248048973496635434

namespace A393976

/-- `2*C(1+sqrt(sqrt(A361148(n+1))), 2)+1` -/
def P248048973496635434.Spec : Prop :=
  ∀ n, (P248048973496635434.a n : ℤ) = A393976 (n + 1)

end A393976

/-! ## A393976.P10631855227300974384

`A002061(A039649(n+1))`
-/

namespace A393976.P10631855227300974384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A039649 (n + 1)).toNat

end

end A393976.P10631855227300974384

namespace A393976

/-- `A002061(A039649(n+1))` -/
def P10631855227300974384.Spec : Prop :=
  ∀ n, P10631855227300974384.a n = A393976 (n + 1)

end A393976

/-! ## A393976.P666339586718040087

`A002061(A000010(n+1)+1)`
-/

namespace A393976.P666339586718040087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A000010 (n + 1) + 1).toNat

end

end A393976.P666339586718040087

namespace A393976

/-- `A002061(A000010(n+1)+1)` -/
def P666339586718040087.Spec : Prop :=
  ∀ n, P666339586718040087.a n = A393976 (n + 1)

end A393976

/-! ## A393976.P998687767704649649

`A127473(n+1)+A039649(n+1)`
-/

namespace A393976.P998687767704649649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127473 (n + 1) + A039649 (n + 1)

end

end A393976.P998687767704649649

namespace A393976

/-- `A127473(n+1)+A039649(n+1)` -/
def P998687767704649649.Spec : Prop :=
  ∀ n, P998687767704649649.a n = A393976 (n + 1)

theorem P998687767704649649.correct : P998687767704649649.Spec := by
  intro n
  simp only [A393976, Nat.add_sub_cancel, A393976.P998687767704649649.a, A393976.P13235993701100155495.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A127473, A127473.P9698007400369304439.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393976

/-! ## A393976.P3931720818035561458

`A039649(n+1)+A000010(n+1)*A000010(n+1)`
-/

namespace A393976.P3931720818035561458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) + A000010 (n + 1) * A000010 (n + 1)

end

end A393976.P3931720818035561458

namespace A393976

/-- `A039649(n+1)+A000010(n+1)*A000010(n+1)` -/
def P3931720818035561458.Spec : Prop :=
  ∀ n, P3931720818035561458.a n = A393976 (n + 1)

theorem P3931720818035561458.correct : P3931720818035561458.Spec := by
  intro n
  simp only [A393976, Nat.add_sub_cancel, A393976.P3931720818035561458.a, A393976.P13235993701100155495.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393976

/-! ## A393976.P18348216341056781594

`A200975(2*A000010(n+1))`
-/

namespace A393976.P18348216341056781594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200975 (2 * A000010 (n + 1)).toNat

end

end A393976.P18348216341056781594

namespace A393976

/-- `A200975(2*A000010(n+1))` -/
def P18348216341056781594.Spec : Prop :=
  ∀ n, P18348216341056781594.a n = A393976 (n + 1)

end A393976

/-! ## A393976.P4477584058729515838

`∑{#}[A000010(n+1), 2*#]+1`
-/

namespace A393976.P4477584058729515838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, 2 * k + 1

end

end A393976.P4477584058729515838

namespace A393976

/-- `∑{#}[A000010(n+1), 2*#]+1` -/
def P4477584058729515838.Spec : Prop :=
  ∀ n, (P4477584058729515838.a n : ℤ) = A393976 (n + 1)

end A393976

/-! ## A393976.P1954503283725071114

`A000037(A069806(A000010(n+1)²))`
-/

namespace A393976.P1954503283725071114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (A069806 (A000010 (n + 1) ^ 2).toNat).toNat

end

end A393976.P1954503283725071114

namespace A393976

/-- `A000037(A069806(A000010(n+1)²))` -/
def P1954503283725071114.Spec : Prop :=
  ∀ n, P1954503283725071114.a n = A393976 (n + 1)

end A393976

/-!
# A393977: G.f. A(x) satisfies A(x) = 1 - E^3(log(1 - x*A(x))), where E is the Euler operator x*d/dx.

The programs for A393977, there is no canonical definition to state claims against.
-/

/-! ## A393977.P4343901495326182013

`A000010(A000296(n+2)*A139102(n+1))`
-/

namespace A393977.P4343901495326182013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000296 (n + 2) * A139102 (n + 1)).toNat

end

end A393977.P4343901495326182013

/-!
# A393980: On the nonnegative integer number line, go to the first next unused power of 2 minus 1, then spiral back to pick up any skipped numbers, and repeat.

The programs for A393980, the canonical program `A393980.P14400587957278650939` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393980 has offset 0).

The definition of A393980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A393980.P14400587957278650939

`A153154(A233280(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A393980

/-- `A153154(A233280(n))` -/
def P14400587957278650939.Spec : Prop :=
  ∀ n, P14400587957278650939.a n = A393980 n

theorem P14400587957278650939.correct : P14400587957278650939.Spec := by
  intro n
  simp only [A393980]

end A393980

/-! ## A393980.P709433089931763439

`A153150(A056539(2*n)/2)`
-/

namespace A393980.P709433089931763439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153150 (SequenceMachineLib.roundAway ((A056539 (2 * n) : ℚ) / 2)).toNat

end

end A393980.P709433089931763439

namespace A393980

/-- `A153150(A056539(2*n)/2)` -/
def P709433089931763439.Spec : Prop :=
  ∀ n, P709433089931763439.a n = A393980 n

end A393980

/-! ## A393980.P8115926238562521949

`A153154(A003188(A153154(A231550(n))))`
-/

namespace A393980.P8115926238562521949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 (A003188 (A153154 (A231550 n).toNat).toNat).toNat

end

end A393980.P8115926238562521949

namespace A393980

/-- `A153154(A003188(A153154(A231550(n))))` -/
def P8115926238562521949.Spec : Prop :=
  ∀ n, P8115926238562521949.a n = A393980 n

end A393980

/-! ## A393980.P3796108657066931988

`A153154(A153154(A231550(A154436(n))))`
-/

namespace A393980.P3796108657066931988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153154 (A153154 (A231550 (A154436 n).toNat).toNat).toNat

end

end A393980.P3796108657066931988

namespace A393980

/-- `A153154(A153154(A231550(A154436(n))))` -/
def P3796108657066931988.Spec : Prop :=
  ∀ n, P3796108657066931988.a n = A393980 n

end A393980

/-!
# A393981: Numbers k such that A003557(k) < A053669(k).

The programs for A393981, there is no canonical definition to state claims against.
-/

/-! ## A393981.P13765560747077182177

`record[gcd(n+1, A360543(n+1))]`
-/

namespace A393981.P13765560747077182177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A360543 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393981.P13765560747077182177

/-! ## A393981.P11030646085012951799

`record[A007947(n+1)*A008479(n+1)]`
-/

namespace A393981.P11030646085012951799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A008479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393981.P11030646085012951799

/-! ## A393981.P9621053353220262288

`lt[A003557(n+1), A053669(n+1)]+1`
-/

namespace A393981.P9621053353220262288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A393981.P9621053353220262288

/-!
# A393982: a(n) = a(n-1) + a(n-3) + a(n-4), a(0) = 1, a(1) = 7, a(2) = 49, a(3) = 56.

The programs for A393982, the canonical program `A393982.P12248329740450704825` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393982 has offset 0).

The definition of A393982 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-4)` (program `A393982.P12248329740450704825`, by `A393982.P12248329740450704825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A393982.P1789253550386589814

`ogf((1+6x+42x^2+6x^3)/(1-x-x^3-x^4))`
-/

namespace A393982.P1789253550386589814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 42, 6] [1, -1, 0, -1, -1] n

end

end A393982.P1789253550386589814

namespace A393982

/-- `ogf((1+6x+42x^2+6x^3)/(1-x-x^3-x^4))` -/
def P1789253550386589814.Spec : Prop :=
  ∀ n, P1789253550386589814.a n = A393982 n

end A393982

/-! ## A393982.P12248329740450704825

`a(n-1)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=7, a(2)=49, a(3)=56`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A393982

/-- `a(n-1)+a(n-3)+a(n-4)` -/
def P12248329740450704825.Spec : Prop :=
  ∀ n, (P12248329740450704825.a n : ℤ) = A393982 n

theorem P12248329740450704825.correct : P12248329740450704825.Spec := by
  intro n
  simp only [A393982]

end A393982

/-!
# A393985: Number of partitions p of n into distinct parts such that max(p) > 3*min(p).

The programs for A393985, there is no canonical definition to state claims against.
-/

/-! ## A393985.P13914595613134339403

`A000009(n+1)-A393971(n+1)`
-/

namespace A393985.P13914595613134339403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A393971 (n + 1)

end

end A393985.P13914595613134339403

/-! ## A393985.P8029507441081160600

`A240874(n+1)+A241036(n+1)-A393971(n+1)`
-/

namespace A393985.P8029507441081160600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240874 (n + 1) + (A241036 (n + 1) - A393971 (n + 1))

end

end A393985.P8029507441081160600

/-! ## A393985.P10031628055075152396

`A241037(n+1)+A241061(n+1)-A393971(n+1)`
-/

namespace A393985.P10031628055075152396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241037 (n + 1) + (A241061 (n + 1) - A393971 (n + 1))

end

end A393985.P10031628055075152396

/-! ## A393985.P774767847864481406

`A393986(n+1)-A241063(n+1)`
-/

namespace A393985.P774767847864481406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393986 (n + 1) - A241063 (n + 1)

end

end A393985.P774767847864481406

/-! ## A393985.P256774134917283190

`A393970(n+1)+A393986(n+1)-A393971(n+1)`
-/

namespace A393985.P256774134917283190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393970 (n + 1) + (A393986 (n + 1) - A393971 (n + 1))

end

end A393985.P256774134917283190

/-!
# A393986: Number of partitions p of n into distinct parts such that max(p) >= 3*min(p).

The programs for A393986, there is no canonical definition to state claims against.
-/

/-! ## A393986.P2291581297104823653

`A393985(n+1)+A241063(n+1)`
-/

namespace A393986.P2291581297104823653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393985 (n + 1) + A241063 (n + 1)

end

end A393986.P2291581297104823653

/-! ## A393986.P5831103463376149488

`A000009(n+1)-A393970(n+1)`
-/

namespace A393986.P5831103463376149488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - A393970 (n + 1)

end

end A393986.P5831103463376149488

/-! ## A393986.P17492720240158302165

`A240874(n+1)+A241036(n+1)-A393970(n+1)`
-/

namespace A393986.P17492720240158302165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240874 (n + 1) + (A241036 (n + 1) - A393970 (n + 1))

end

end A393986.P17492720240158302165

/-! ## A393986.P4793778289796363123

`A393971(n+1)+A393985(n+1)-A393970(n+1)`
-/

namespace A393986.P4793778289796363123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393971 (n + 1) + (A393985 (n + 1) - A393970 (n + 1))

end

end A393986.P4793778289796363123

/-!
# A393987: Expansion of g.f.: Product_{k>=1} (1 + x^(k*(k+3)/2)).

The programs for A393987, there is no canonical definition to state claims against.
-/

/-! ## A393987.P15843786955420005044

`A033461(A383750(n+1))%A164333(2*(n+1))`
-/

namespace A393987.P15843786955420005044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033461 (A383750 (n + 1)).toNat) (A164333 (2 * (n + 1)))

end

end A393987.P15843786955420005044

/-! ## A393987.P3419268835241795307

`A033461(A156079(3*n+2)+n)`
-/

namespace A393987.P3419268835241795307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (A156079 (3 * n + 2) + (n : ℤ)).toNat

end

end A393987.P3419268835241795307

/-! ## A393987.P419570120081105234

`A033461(A156081(3*n+5)+A023443(n))`
-/

namespace A393987.P419570120081105234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033461 (A156081 (3 * n + 5) + A023443 n).toNat

end

end A393987.P419570120081105234

/-! ## A393987.P11061440230332463139

`A033461(A383750(n+1))%A387954(n+2)`
-/

namespace A393987.P11061440230332463139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033461 (A383750 (n + 1)).toNat) (A387954 (n + 2))

end

end A393987.P11061440230332463139

/-! ## A393987.P18250794540557226144

`A253283(n)%A353929(A304682(2*(n+3)))`
-/

namespace A393987.P18250794540557226144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253283 n) (A353929 (A304682 (2 * (n + 3))).toNat)

end

end A393987.P18250794540557226144

/-!
# A393988: Expansion of g.f.: Product_{k>=1} 1 / (1 - x^(k*(k+5)/2)).

The programs for A393988, there is no canonical definition to state claims against.
-/

/-! ## A393988.P17486008547175237121

`and(A085203(A025841(n)), A146778(n+1))`
-/

namespace A393988.P17486008547175237121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A085203 (A025841 n).toNat) (A146778 (n + 1))

end

end A393988.P17486008547175237121

/-! ## A393988.P3359381810785557331

`A025849(n)^A331562(A002620(n))`
-/

namespace A393988.P3359381810785557331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025849 n : ℚ) ^ (A331562 (A002620 n).toNat : ℤ)

end

end A393988.P3359381810785557331

/-! ## A393988.P8037022070614162274

`A025849(n)^A331562(A006218(n))`
-/

namespace A393988.P8037022070614162274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025849 n : ℚ) ^ (A331562 (A006218 n).toNat : ℤ)

end

end A393988.P8037022070614162274

/-! ## A393988.P6448788183604897780

`A025849(n)^A331562(A026814(n))`
-/

namespace A393988.P6448788183604897780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025849 n : ℚ) ^ (A331562 (A026814 n).toNat : ℤ)

end

end A393988.P6448788183604897780

/-! ## A393988.P7434199677296371362

`A025849(n)%A001316(A116406(n))`
-/

namespace A393988.P7434199677296371362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025849 n) (A001316 (A116406 n).toNat)

end

end A393988.P7434199677296371362

/-!
# A393989: Expansion of g.f.: Product_{k>=1} (1 + x^(k*(k+5)/2)).

The programs for A393989, there is no canonical definition to state claims against.
-/

/-! ## A393989.P15539987615592345835

`A387379(A090348(2*(n+2)))%2`
-/

namespace A393989.P15539987615592345835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A387379 (A090348 (2 * (n + 2))).toNat) 2

end

end A393989.P15539987615592345835

/-! ## A393989.P6859310408188588648

`A026409(A048375(3*n+4))%2`
-/

namespace A393989.P6859310408188588648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026409 (A048375 (3 * n + 4)).toNat) 2

end

end A393989.P6859310408188588648

/-! ## A393989.P4549074971287093576

`A116178((n+1)*A202679(n+1))`
-/

namespace A393989.P4549074971287093576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116178 ((n + 1 : ℤ) * A202679 (n + 1)).toNat

end

end A393989.P4549074971287093576

/-! ## A393989.P1526618328355530703

`A284775(A284802(2*n+5)+A033042(2*n+3))`
-/

namespace A393989.P1526618328355530703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284775 (A284802 (2 * n + 5) + A033042 (2 * n + 3)).toNat

end

end A393989.P1526618328355530703

/-!
# A393990: Expansion of g.f.: Product_{k>=1} 1 / (1 - x^(k^2 + 1)).

The programs for A393990, there is no canonical definition to state claims against.
-/

/-! ## A393990.P8863403409844692716

`A281273(n%A186559(n+1))`
-/

namespace A393990.P8863403409844692716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281273 (Int.tmod (n : ℤ) (A186559 (n + 1))).toNat

end

end A393990.P8863403409844692716

/-! ## A393990.P10981562908761701352

`and(A152388(n+1), A281273(n))`
-/

namespace A393990.P10981562908761701352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152388 (n + 1)) (A281273 n)

end

end A393990.P10981562908761701352

/-! ## A393990.P5628331069898447326

`and(A186559(n+1), A281273(n))`
-/

namespace A393990.P5628331069898447326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A186559 (n + 1)) (A281273 n)

end

end A393990.P5628331069898447326

/-! ## A393990.P11179155280057896088

`and(A273236(n+1), A281273(n))`
-/

namespace A393990.P11179155280057896088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273236 (n + 1)) (A281273 n)

end

end A393990.P11179155280057896088

/-! ## A393990.P14080989837100736436

`and(A281273(n), A383046(n+3))`
-/

namespace A393990.P14080989837100736436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A281273 n) (A383046 (n + 3))

end

end A393990.P14080989837100736436

/-!
# A393991: Expansion of g.f.: Product_{k>=1} (1 + x^(k^2 + 1)).

The programs for A393991, there is no canonical definition to state claims against.
-/

/-! ## A393991.P10597921942554773494

`A281274(lt[A000041(n+4), A341528(2*n+3)])`
-/

namespace A393991.P10597921942554773494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341528 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281274 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A393991.P10597921942554773494

/-!
# A393992: Largest number of distinct lines determined by pairs of cell centers of a polyomino with n cells.

The programs for A393992, there is no canonical definition to state claims against.
-/

/-! ## A393992.P16196572874196214314

`A131138(A052115(n))`
-/

namespace A393992.P16196572874196214314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131138 (A052115 n).toNat

end

end A393992.P16196572874196214314

/-! ## A393992.P14879763606356240631

`A121373(A083705(n))+A004137(n+1)`
-/

namespace A393992.P14879763606356240631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A083705 n).toNat + A004137 (n + 1)

end

end A393992.P14879763606356240631

/-! ## A393992.P11035939897164654824

`A056594(A004137(2*n+5))+A004137(n+1)`
-/

namespace A393992.P11035939897164654824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A004137 (2 * n + 5)).toNat + A004137 (n + 1)

end

end A393992.P11035939897164654824

/-! ## A393992.P13776376540979014025

`A001399(2*n)-A003417(A189186(2*n+3))`
-/

namespace A393992.P13776376540979014025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * n) - A003417 (A189186 (2 * n + 3)).toNat

end

end A393992.P13776376540979014025

/-! ## A393992.P9328829620824475233

`A004137(n+1)-A039966(A033650(n))`
-/

namespace A393992.P9328829620824475233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004137 (n + 1) - A039966 (A033650 n).toNat

end

end A393992.P9328829620824475233

/-!
# A393994: Largest number of distinct directions of lines determined by pairs of cell centers of a polycube with n cells.

The programs for A393994, there is no canonical definition to state claims against.
-/

/-! ## A393994.P15981779000021397743

`record[floor(n²/3)-comp[2*n+7]]`
-/

namespace A393994.P15981779000021397743
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 3⌋ - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A393994.P15981779000021397743

/-! ## A393994.P5480442522964082134

`∑[A262519(n)-1]`
-/

namespace A393994.P5480442522964082134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262519 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393994.P5480442522964082134

/-! ## A393994.P10562119210482181976

`∑[A303158(n+1)%7]`
-/

namespace A393994.P10562119210482181976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303158 (n + 1)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393994.P10562119210482181976

/-! ## A393994.P7035811654258351404

`∑[∑[-A106549(n+1)]]`
-/

namespace A393994.P7035811654258351404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A106549 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393994.P7035811654258351404

/-! ## A393994.P13363109516560702368

`∑[∑[A294080(2*n+1)]]`
-/

namespace A393994.P13363109516560702368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294080 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A393994.P13363109516560702368

/-!
# A393995: Difference between the numbers of binary words of length n with an even and with an odd number of occurrences of subword 101.

The programs for A393995, the canonical program `A393995.P5611640221726888957` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A393995 has offset 0).

The definition of A393995 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A393995.P566208187134282364

`ogf((1+2x^2)/(1-2x+2x^2-2x^3))`
-/

namespace A393995.P566208187134282364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 2] [1, -2, 2, -2] n

end

end A393995.P566208187134282364

namespace A393995

/-- `ogf((1+2x^2)/(1-2x+2x^2-2x^3))` -/
def P566208187134282364.Spec : Prop :=
  ∀ n, P566208187134282364.a n = A393995 n

end A393995

/-! ## A393995.P5611640221726888957

`2*A393945(n)-2^n`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A393995

/-- `2*A393945(n)-2^n` -/
def P5611640221726888957.Spec : Prop :=
  ∀ n, P5611640221726888957.a n = A393995 n

theorem P5611640221726888957.correct : P5611640221726888957.Spec := by
  intro n
  simp only [A393995]

end A393995

/-! ## A393995.P9938794271421368025

`a(n-1)+2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A393995.P9938794271421368025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 6] fun n a =>
  a (n - 1) + 2 * a (n - 4)

end

end A393995.P9938794271421368025

namespace A393995

/-- `a(n-1)+2*a(n-4)` -/
def P9938794271421368025.Spec : Prop :=
  ∀ n, (P9938794271421368025.a n : ℤ) = A393995 n

end A393995

/-! ## A393995.P11667534243411840114

`a(n-4)+a(n-1)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`
-/

namespace A393995.P11667534243411840114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 6] fun n a =>
  a (n - 4) + (a (n - 1) + a (n - 4))

end

end A393995.P11667534243411840114

namespace A393995

/-- `a(n-4)+a(n-1)+a(n-4)` -/
def P11667534243411840114.Spec : Prop :=
  ∀ n, (P11667534243411840114.a n : ℤ) = A393995 n

end A393995

/-! ## A393995.P4443848395459830063

`2*(a(n-1)-(a(n-2)-a(n-3)))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A393995.P4443848395459830063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  2 * (a (n - 1) - (a (n - 2) - a (n - 3)))

end

end A393995.P4443848395459830063

namespace A393995

/-- `2*(a(n-1)-(a(n-2)-a(n-3)))` -/
def P4443848395459830063.Spec : Prop :=
  ∀ n, P4443848395459830063.a n = A393995 n

end A393995

/-! ## A393995.P1742430776747834764

`A078003(n+2)+A077943(n)`
-/

namespace A393995.P1742430776747834764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078003 (n + 2) + A077943 n

end

end A393995.P1742430776747834764

namespace A393995

/-- `A078003(n+2)+A077943(n)` -/
def P1742430776747834764.Spec : Prop :=
  ∀ n, P1742430776747834764.a n = A393995 n

end A393995

/-! ## A393995.P14105169852640218915

`A104767(n+2)-A078003(n)`
-/

namespace A393995.P14105169852640218915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104767 (n + 2) - A078003 n

end

end A393995.P14105169852640218915

namespace A393995

/-- `A104767(n+2)-A078003(n)` -/
def P14105169852640218915.Spec : Prop :=
  ∀ n, P14105169852640218915.a n = A393995 n

end A393995

/-! ## A393995.P8825476552901632196

`A104767(n+2)-A122788(n+1)`
-/

namespace A393995.P8825476552901632196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104767 (n + 2) - A122788 (n + 1)

end

end A393995.P8825476552901632196

namespace A393995

/-- `A104767(n+2)-A122788(n+1)` -/
def P8825476552901632196.Spec : Prop :=
  ∀ n, P8825476552901632196.a n = A393995 n

end A393995

/-! ## A393995.P4683454062109371771

`A077943(n+1)+A077943(n+1)-A075115(n)`
-/

namespace A393995.P4683454062109371771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077943 (n + 1) + (A077943 (n + 1) - A075115 n)

end

end A393995.P4683454062109371771

namespace A393995

/-- `A077943(n+1)+A077943(n+1)-A075115(n)` -/
def P4683454062109371771.Spec : Prop :=
  ∀ n, P4683454062109371771.a n = A393995 n

end A393995

/-! ## A393995.P7188436405765088843

`A104767(n+1)+A104767(n+1)-A077943(n)`
-/

namespace A393995.P7188436405765088843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104767 (n + 1) + (A104767 (n + 1) - A077943 n)

end

end A393995.P7188436405765088843

namespace A393995

/-- `A104767(n+1)+A104767(n+1)-A077943(n)` -/
def P7188436405765088843.Spec : Prop :=
  ∀ n, P7188436405765088843.a n = A393995 n

end A393995

/-! ## A393995.P13832201139479134628

`A077943(n+2)-A122788(n+2)`
-/

namespace A393995.P13832201139479134628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077943 (n + 2) - A122788 (n + 2)

end

end A393995.P13832201139479134628

namespace A393995

/-- `A077943(n+2)-A122788(n+2)` -/
def P13832201139479134628.Spec : Prop :=
  ∀ n, P13832201139479134628.a n = A393995 n

end A393995

/-! ## A393995.P4846780827768577594

`Δ[A104767(n+3)]`
-/

namespace A393995.P4846780827768577594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104767 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A393995.P4846780827768577594

namespace A393995

/-- `Δ[A104767(n+3)]` -/
def P4846780827768577594.Spec : Prop :=
  ∀ n, P4846780827768577594.a n = A393995 n

end A393995

/-! ## A393995.P5533898104729507982

`A077943(n+3)/2`
-/

namespace A393995.P5533898104729507982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077943 (n + 3) : ℚ) / 2

end

end A393995.P5533898104729507982

namespace A393995

/-- `A077943(n+3)/2` -/
def P5533898104729507982.Spec : Prop :=
  ∀ n, P5533898104729507982.a n = (A393995 n : ℚ)

end A393995

/-! ## A393995.P8384864339020853687

`A393945(n)+A393945(n)-A000079(n)`
-/

namespace A393995.P8384864339020853687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393945 n + (A393945 n - A000079 n)

end

end A393995.P8384864339020853687

namespace A393995

/-- `A393945(n)+A393945(n)-A000079(n)` -/
def P8384864339020853687.Spec : Prop :=
  ∀ n, P8384864339020853687.a n = A393995 n

theorem P8384864339020853687.correct : P8384864339020853687.Spec := by
  intro n
  simp only [A393995, Nat.add_sub_cancel, A393995.P8384864339020853687.a, A393995.P5611640221726888957.a, A000079, A000079.P10855139691139572931.a, A393945, A393945.P3874364795812403129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A393995

/-!
# A393996: Number of integer partitions of 2*n with reverse-alternating sum 4.

The programs for A393996, there is no canonical definition to state claims against.
-/

/-! ## A393996.P11533635526560865785

`∑{#}[n, A343941(#)*A000041(n-#)]`
-/

namespace A393996.P11533635526560865785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A343941 k * A000041 (n - k)

end

end A393996.P11533635526560865785

/-! ## A393996.P10555149008908567685

`A344612(A132209(n)+3)`
-/

namespace A393996.P10555149008908567685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344612 (A132209 n + 3).toNat

end

end A393996.P10555149008908567685

/-! ## A393996.P10363780451660616546

`A344612(A238531(2*n+1)+n)`
-/

namespace A393996.P10363780451660616546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344612 (A238531 (2 * n + 1) + (n : ℤ)).toNat

end

end A393996.P10363780451660616546

/-! ## A393996.P1675284629413569240

`A249728(A356954(n))-A288327(n)`
-/

namespace A393996.P1675284629413569240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (A356954 n).toNat - A288327 n

end

end A393996.P1675284629413569240

/-! ## A393996.P16456417659076199710

`floor(A384317(3*n+4)/10)`
-/

namespace A393996.P16456417659076199710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A384317 (3 * n + 4) : ℚ) / 10⌋

end

end A393996.P16456417659076199710

/-!
# A393998: a(n) is the least y such that A393978(n)^2 - y^2 is an anagram of y^2.

The programs for A393998, there is no canonical definition to state claims against.
-/

/-! ## A393998.P12062979387934701844

`A394001(A292125(n+1))`
-/

namespace A393998.P12062979387934701844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394001 (A292125 (n + 1)).toNat

end

end A393998.P12062979387934701844

/-! ## A393998.P14736940705087186322

`char[A274451(n+1)]*A394001(n+1)`
-/

namespace A393998.P14736940705087186322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274451 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A394001 (n + 1)

end

end A393998.P14736940705087186322

