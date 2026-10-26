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
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A264100: Sum of the lengths of the arithmetic progressions in {1,2,3,...,n}, including trivial arithmetic progressions of lengths 1 and 2.

The programs for A264100, the canonical program `A264100.P6875568316045527134` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264100 has offset 0).

The definition of A264100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264100.P6875568316045527134

`∑[∑[∑{d}[n-1, #+1]]-1]-1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264100

/-- `∑[∑[∑{d}[n-1, #+1]]-1]-1` -/
def P6875568316045527134.Spec : Prop :=
  ∀ n, P6875568316045527134.a n = A264100 n

theorem P6875568316045527134.correct : P6875568316045527134.Spec := by
  intro n
  simp only [A264100]

end A264100

/-! ## A264100.P14629336174855384711

`∑[A257644(n)]-(∑[∑{d}[n, #+1]]+1)`
-/

namespace A264100.P14629336174855384711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257644 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), (d + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

end

end A264100.P14629336174855384711

namespace A264100

/-- `∑[A257644(n)]-(∑[∑{d}[n, #+1]]+1)` -/
def P14629336174855384711.Spec : Prop :=
  ∀ n, P14629336174855384711.a n = A264100 n

end A264100

/-! ## A264100.P16153018861826959117

`∑[A257644(n)]-A257644(n)`
-/

namespace A264100.P16153018861826959117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A257644 n

end

end A264100.P16153018861826959117

namespace A264100

/-- `∑[A257644(n)]-A257644(n)` -/
def P16153018861826959117.Spec : Prop :=
  ∀ n, P16153018861826959117.a n = A264100 n

end A264100

/-! ## A264100.P5852771714508908484

`∑[n²-∑{e}[A327656(A002002(n)+1), #]]`
-/

namespace A264100.P5852771714508908484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (A002002 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264100.P5852771714508908484

namespace A264100

/-- `∑[n²-∑{e}[A327656(A002002(n)+1), #]]` -/
def P5852771714508908484.Spec : Prop :=
  ∀ n, P5852771714508908484.a n = A264100 n

end A264100

/-!
# A264101: Numbers that can't be represented as the sum of two squares, two triangular numbers, or a square and a triangular number.

The programs for A264101, the canonical program `A264101.P4487585031418735045` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264101 has offset 1).

The definition of A264101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1666 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264101.P14476714629695498845

`lt[4, A176873(n)]`
-/

namespace A264101.P14476714629695498845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A264101.P14476714629695498845

namespace A264101

/-- `lt[4, A176873(n)]` -/
def P14476714629695498845.Spec : Prop :=
  ∀ n, (P14476714629695498845.a n : ℤ) = A264101 (n + 1)

end A264101

/-! ## A264101.P12152203416725847294

`eq[A112603(n)+A052343(n), A330574(n)]`
-/

namespace A264101.P12152203416725847294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112603 n + A052343 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A264101.P12152203416725847294

namespace A264101

/-- `eq[A112603(n)+A052343(n), A330574(n)]` -/
def P12152203416725847294.Spec : Prop :=
  ∀ n, (P12152203416725847294.a n : ℤ) = A264101 (n + 1)

end A264101

/-! ## A264101.P10084857731657637173

`eq[A209941(n)+A112603(n), A330574(n)]`
-/

namespace A264101.P10084857731657637173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209941 n + A112603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330574 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A264101.P10084857731657637173

namespace A264101

/-- `eq[A209941(n)+A112603(n), A330574(n)]` -/
def P10084857731657637173.Spec : Prop :=
  ∀ n, (P10084857731657637173.a n : ℤ) = A264101 (n + 1)

end A264101

/-! ## A264101.P4487585031418735045

`eq[0, A025426(n)+A112603(n)+A052343(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A264101

/-- `eq[0, A025426(n)+A112603(n)+A052343(n)]` -/
def P4487585031418735045.Spec : Prop :=
  ∀ n, (P4487585031418735045.a n : ℤ) = A264101 (n + 1)

theorem P4487585031418735045.correct : P4487585031418735045.Spec := by
  intro n
  simp only [A264101, Nat.add_sub_cancel]

end A264101

/-!
# A264102: Numbers n with the property that the symmetric representation of sigma(n) has four parts, each of width one.

The programs for A264102, there is no canonical definition to state claims against.
-/

/-! ## A264102.P1524770018789939355

`∩[A131651(n+1), A174905(n+1)]`
-/

namespace A264102.P1524770018789939355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264102.P1524770018789939355

/-! ## A264102.P3306560472287680649

`record[A053626(A280107(n+1))]`
-/

namespace A264102.P3306560472287680649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (A280107 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264102.P3306560472287680649

/-! ## A264102.P633604235546712283

`filter[A280107(n+1), A356173(#)]`
-/

namespace A264102.P633604235546712283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356173 (f1 j).toNat = 1) n)

end

end A264102.P633604235546712283

/-! ## A264102.P1934011936108681101

`record[A319626(A280107(C(n+1, n)))]`
-/

namespace A264102.P1934011936108681101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A280107 (Nat.choose (n + 1) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264102.P1934011936108681101

/-! ## A264102.P16272553248728713029

`record[A319626(A280107(floor(n/2)+1))]`
-/

namespace A264102.P16272553248728713029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (A280107 (⌊(n : ℚ) / 2⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264102.P16272553248728713029

/-! ## A264102.P3835610339019878511

`∩[A131651(n+1), A280107(n+1)]`
-/

namespace A264102.P3835610339019878511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264102.P3835610339019878511

/-! ## A264102.P1579345809522933724

`∩[A174905(n+1), A280107(n+1)]`
-/

namespace A264102.P1579345809522933724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174905 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264102.P1579345809522933724

/-! ## A264102.P12069680933256078989

`∩[A280107(n+1), A291127(n+1)]`
-/

namespace A264102.P12069680933256078989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264102.P12069680933256078989

/-! ## A264102.P5994088384064189979

`∩[A280107(n+1), A319630(n+1)]`
-/

namespace A264102.P5994088384064189979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264102.P5994088384064189979

/-! ## A264102.P4902926493645618512

`∩[A280107(n+1), A381137(n+1)]`
-/

namespace A264102.P4902926493645618512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264102.P4902926493645618512

/-!
# A264103: Number of n X n nonconsecutive tableaux.

The programs for A264103, there is no canonical definition to state claims against.
-/

/-! ## A264103.P12362018997938602775

`A214021(∑[4*n])`
-/

namespace A264103.P12362018997938602775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214021 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264103.P12362018997938602775

/-! ## A264103.P12201400352511752568

`A133687(n)*A214021(A046092(n))`
-/

namespace A264103.P12201400352511752568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133687 n * A214021 (A046092 n).toNat

end

end A264103.P12201400352511752568

/-! ## A264103.P6494041603267852580

`A208673(n)*A214021(A046092(n))`
-/

namespace A264103.P6494041603267852580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208673 n * A214021 (A046092 n).toNat

end

end A264103.P6494041603267852580

/-! ## A264103.P14742641864876845481

`A214020(n)*A214021(A046092(n))`
-/

namespace A264103.P14742641864876845481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214020 n * A214021 (A046092 n).toNat

end

end A264103.P14742641864876845481

/-! ## A264103.P5578015517542036804

`A000041(round(n/39))*A214021(A046092(n))`
-/

namespace A264103.P5578015517542036804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((n : ℚ) / 39)).toNat * A214021 (A046092 n).toNat

end

end A264103.P5578015517542036804

/-!
# A264104: Numbers k with the property that the symmetric representation of sigma(k) has four parts, each of width one and two regions meet at the center of the Dyck path.

The programs for A264104, there is no canonical definition to state claims against.
-/

/-! ## A264104.P2047225317905394184

`A161680(p?[A085681(n+1)+1])`
-/

namespace A264104.P2047225317905394184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085681 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A264104.P2047225317905394184

/-! ## A264104.P2960636702064524417

`A161680(p?[A346599(A085681(n+1))])`
-/

namespace A264104.P2960636702064524417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346599 (A085681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A264104.P2960636702064524417

/-! ## A264104.P13718634537167020690

`A161680(p?[A005408(A246955(n+1))])`
-/

namespace A264104.P13718634537167020690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A246955 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A264104.P13718634537167020690

/-! ## A264104.P6446083629771356042

`filter[A392197(n+1), A340370(#)]`
-/

namespace A264104.P6446083629771356042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A264104.P6446083629771356042

/-! ## A264104.P15396858522593443561

`C(p?[A115956(n+1)+1], 2)`
-/

namespace A264104.P15396858522593443561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115956 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat 2

end

end A264104.P15396858522593443561

/-!
# A264105: a(n) = smallest k such that n divides Sum_{i=1..k} Fibonacci(i).

The programs for A264105, there is no canonical definition to state claims against.
-/

/-! ## A264105.P6931807648902940636

`A034883(A076988(n+1))`
-/

namespace A264105.P6931807648902940636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (A076988 (n + 1)).toNat

end

end A264105.P6931807648902940636

/-! ## A264105.P11012904623630042686

`A135818(A076988(n+1)+1)`
-/

namespace A264105.P11012904623630042686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135818 (A076988 (n + 1) + 1).toNat

end

end A264105.P11012904623630042686

/-! ## A264105.P509679454012802992

`A000193(A076988(n+1)²)`
-/

namespace A264105.P509679454012802992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A076988 (n + 1) ^ 2).toNat

end

end A264105.P509679454012802992

/-! ## A264105.P1896256978914788491

`A000193((A076988(n+1)-1)*A076988(n+1))`
-/

namespace A264105.P1896256978914788491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 ((A076988 (n + 1) - 1) * A076988 (n + 1)).toNat

end

end A264105.P1896256978914788491

/-!
# A264106: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 0,2 or 1,1.

The programs for A264106, the canonical program `A264106.P2813248939736115491` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264106 has offset 1).

The definition of A264106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 158 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264106.P9593152012848670160

`Δ[Δ[ogf(-1/(-1+4x+4x^3+x^4))]]`
-/

namespace A264106.P9593152012848670160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -4, 0, -4, -1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A264106.P9593152012848670160

namespace A264106

/-- `Δ[Δ[ogf(-1/(-1+4x+4x^3+x^4))]]` -/
def P9593152012848670160.Spec : Prop :=
  ∀ n, P9593152012848670160.a n = A264106 (n + 1)

end A264106

/-! ## A264106.P2813248939736115491

`4*a(n-1)+4*a(n-3)+a(n-4)` with `a(0)=9, a(1)=40, a(2)=169, a(3)=714`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264106

/-- `4*a(n-1)+4*a(n-3)+a(n-4)` -/
def P2813248939736115491.Spec : Prop :=
  ∀ n, (P2813248939736115491.a n : ℤ) = A264106 (n + 1)

theorem P2813248939736115491.correct : P2813248939736115491.Spec := by
  intro n
  simp only [A264106, Nat.add_sub_cancel]

end A264106

/-! ## A264106.P7507871824147659885

`A006498(3*(n+2))`
-/

namespace A264106.P7507871824147659885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (3 * (n + 2))

end

end A264106.P7507871824147659885

namespace A264106

/-- `A006498(3*(n+2))` -/
def P7507871824147659885.Spec : Prop :=
  ∀ n, P7507871824147659885.a n = A264106 (n + 1)

end A264106

/-! ## A264106.P11632129648375405703

`A074677(3*n+7)`
-/

namespace A264106.P11632129648375405703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074677 (3 * n + 7)

end

end A264106.P11632129648375405703

namespace A264106

/-- `A074677(3*n+7)` -/
def P11632129648375405703.Spec : Prop :=
  ∀ n, P11632129648375405703.a n = A264106 (n + 1)

end A264106

/-! ## A264106.P9135408808683525552

`A295680(3*(n+3))/2`
-/

namespace A264106.P9135408808683525552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295680 (3 * (n + 3)) : ℚ) / 2

end

end A264106.P9135408808683525552

namespace A264106

/-- `A295680(3*(n+3))/2` -/
def P9135408808683525552.Spec : Prop :=
  ∀ n, P9135408808683525552.a n = (A264106 (n + 1) : ℚ)

end A264106

/-! ## A264106.P5145914811812207399

`record[A006498(A160943(n+2))]`
-/

namespace A264106.P5145914811812207399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (A160943 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264106.P5145914811812207399

namespace A264106

/-- `record[A006498(A160943(n+2))]` -/
def P5145914811812207399.Spec : Prop :=
  ∀ n, P5145914811812207399.a n = A264106 (n + 1)

end A264106

/-! ## A264106.P8274201320694857386

`record[A006498(A080512(n+4))]`
-/

namespace A264106.P8274201320694857386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (A080512 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264106.P8274201320694857386

namespace A264106

/-- `record[A006498(A080512(n+4))]` -/
def P8274201320694857386.Spec : Prop :=
  ∀ n, P8274201320694857386.a n = A264106 (n + 1)

end A264106

/-! ## A264106.P12329636432850429632

`(A151889(n+1)+A117647(n+1))*A151889(n+2)`
-/

namespace A264106.P12329636432850429632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A151889 (n + 1) + A117647 (n + 1)) * A151889 (n + 2)

end

end A264106.P12329636432850429632

namespace A264106

/-- `(A151889(n+1)+A117647(n+1))*A151889(n+2)` -/
def P12329636432850429632.Spec : Prop :=
  ∀ n, P12329636432850429632.a n = A264106 (n + 1)

end A264106

/-! ## A264106.P17702983738056945126

`round((5+3*sqrt(5))*A000045(3*(n+1)+3)/10)`
-/

namespace A264106.P17702983738056945126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 + 3 * Real.sqrt (5 : ℝ)) * (A000045 (3 * (n + 1) + 3) : ℝ) / 10)

end

end A264106.P17702983738056945126

namespace A264106

/-- `round((5+3*sqrt(5))*A000045(3*(n+1)+3)/10)` -/
def P17702983738056945126.Spec : Prop :=
  ∀ n, P17702983738056945126.a n = A264106 (n + 1)

end A264106

/-! ## A264106.P15161931503054578249

`sqrt(A264184(2*n+3))`
-/

namespace A264106.P15161931503054578249
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264184 (2 * n + 3) : ℝ)

end

end A264106.P15161931503054578249

namespace A264106

/-- `sqrt(A264184(2*n+3))` -/
def P15161931503054578249.Spec : Prop :=
  ∀ n, P15161931503054578249.a n = (A264106 (n + 1) : ℝ)

end A264106

/-!
# A264107: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 0,2 or 1,1.

The programs for A264107, there is no canonical definition to state claims against.
-/

/-! ## A264107.P7197767197347976070

`A264192(2*(n+1))/sqrt(A264192(2*n+1))`
-/

namespace A264107.P7197767197347976070
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264192 (2 * (n + 1)) : ℝ) / Real.sqrt (A264192 (2 * n + 1) : ℝ)

end

end A264107.P7197767197347976070

/-! ## A264107.P1887802710828530200

`sqrt(A264192(2*n+3))`
-/

namespace A264107.P1887802710828530200
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264192 (2 * n + 3) : ℝ)

end

end A264107.P1887802710828530200

/-! ## A264107.P15555734224732071525

`A264110(A141214(n+1))`
-/

namespace A264107.P15555734224732071525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264110 (A141214 (n + 1)).toNat

end

end A264107.P15555734224732071525

/-! ## A264107.P13437787230586808829

`A264110(A027379(n+2))`
-/

namespace A264107.P13437787230586808829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264110 (A027379 (n + 2)).toNat

end

end A264107.P13437787230586808829

/-!
# A264108: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 0,2 or 1,1.

The programs for A264108, there is no canonical definition to state claims against.
-/

/-! ## A264108.P17708526795943019317

`sqrt(A264193(2*n+3))`
-/

namespace A264108.P17708526795943019317
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264193 (2 * n + 3) : ℝ)

end

end A264108.P17708526795943019317

/-! ## A264108.P13111622594411808051

`A264110(Δ[A264443(n)])`
-/

namespace A264108.P13111622594411808051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264110 (f1 (n + 1) - f1 n).toNat

end

end A264108.P13111622594411808051

/-! ## A264108.P12337811578877995642

`A264110(A046691(n+3))`
-/

namespace A264108.P12337811578877995642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264110 (A046691 (n + 3)).toNat

end

end A264108.P12337811578877995642

/-!
# A264109: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 0,2 or 1,1.

The programs for A264109, there is no canonical definition to state claims against.
-/

/-! ## A264109.P5827059991622712027

`A264110(A052905(n+3))`
-/

namespace A264109.P5827059991622712027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264110 (A052905 (n + 3)).toNat

end

end A264109.P5827059991622712027

/-! ## A264109.P5856416771681853401

`A264110(A056119(n)+16)`
-/

namespace A264109.P5856416771681853401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264110 (A056119 n + 16).toNat

end

end A264109.P5856416771681853401

/-!
# A264111: Number of (1+1) X (n+1) arrays of permutations of 0..n*2+1 with each element having index change +-(.,.) 0,0 0,2 or 1,1.

The programs for A264111, there is no canonical definition to state claims against.
-/

/-! ## A264111.P7032723307415261271

`sqrt(A264197(n+1))`
-/

namespace A264111.P7032723307415261271
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264197 (n + 1) : ℝ)

end

end A264111.P7032723307415261271

/-! ## A264111.P18315520091785486885

`root(A264197(n+1), A020639(2*(n+1)))`
-/

namespace A264111.P18315520091785486885
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264197 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A264111.P18315520091785486885

/-! ## A264111.P1713972315190206055

`root(A264197(n+1), A001316(A001316(n)))`
-/

namespace A264111.P1713972315190206055
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264197 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A264111.P1713972315190206055

/-! ## A264111.P9621482749290993641

`sqrt(A264196(n+1)/A189145(n+2)*A264196(n+1))`
-/

namespace A264111.P9621482749290993641
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A264196 (n + 1) : ℚ) / (A189145 (n + 2) : ℚ) * (A264196 (n + 1) : ℚ) : ℝ)

end

end A264111.P9621482749290993641

/-!
# A264112: Number of (2+1)X(n+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 0,2 or 1,1.

The programs for A264112, there is no canonical definition to state claims against.
-/

/-! ## A264112.P15031344319976599188

`A264198(n+1)/sqrt(A264197(n+1))`
-/

namespace A264112.P15031344319976599188
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264198 (n + 1) : ℝ) / Real.sqrt (A264197 (n + 1) : ℝ)

end

end A264112.P15031344319976599188

/-! ## A264112.P11561933769658083289

`sqrt(A264199(n+1))`
-/

namespace A264112.P11561933769658083289
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264199 (n + 1) : ℝ)

end

end A264112.P11561933769658083289

/-! ## A264112.P12483679423552660012

`root(A264199(n+1), A001316(A001316(n)))`
-/

namespace A264112.P12483679423552660012
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264199 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A264112.P12483679423552660012

/-! ## A264112.P3092665271357157244

`A264199(n+1)^2^A008683(A038888(n+1))`
-/

namespace A264112.P3092665271357157244
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264199 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A038888 (n + 1)).toNat : ℤ) : ℝ)

end

end A264112.P3092665271357157244

/-!
# A264113: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having index change +-(.,.) 0,0 0,2 or 1,1.

The programs for A264113, there is no canonical definition to state claims against.
-/

/-! ## A264113.P4606665955436554723

`A264110(∑[n+2]+4)`
-/

namespace A264113.P4606665955436554723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264110 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264113.P4606665955436554723

/-! ## A264113.P15161735306087780457

`A264110(A167614(n+1))+A036599(n)`
-/

namespace A264113.P15161735306087780457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264110 (A167614 (n + 1)).toNat + A036599 n

end

end A264113.P15161735306087780457

/-! ## A264113.P4986975628850788495

`A264110(A167614(n+1))+A036600(n)`
-/

namespace A264113.P4986975628850788495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264110 (A167614 (n + 1)).toNat + A036600 n

end

end A264113.P4986975628850788495

/-! ## A264113.P3356816303537156379

`A264110(A167614(n+1))+A036601(n)`
-/

namespace A264113.P3356816303537156379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264110 (A167614 (n + 1)).toNat + A036601 n

end

end A264113.P3356816303537156379

/-! ## A264113.P17926208678418273754

`A264110(A167614(n+1))+A184955(n)`
-/

namespace A264113.P17926208678418273754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264110 (A167614 (n + 1)).toNat + A184955 n

end

end A264113.P17926208678418273754

/-!
# A264114: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 0,2 or 1,1.

The programs for A264114, there is no canonical definition to state claims against.
-/

/-! ## A264114.P2026695941714897008

`A264110(∑[n+3]+7)`
-/

namespace A264114.P2026695941714897008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264110 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A264114.P2026695941714897008

/-!
# A264115: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 0,2 or 1,1.

The programs for A264115, there is no canonical definition to state claims against.
-/

/-! ## A264115.P17975889678526624827

`A264110(∑[n+4]+11)`
-/

namespace A264115.P17975889678526624827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264110 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A264115.P17975889678526624827

/-! ## A264115.P4558155289507636280

`A316868(2*(n+2))+A264110(A000217(n+4)+5)`
-/

namespace A264115.P4558155289507636280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316868 (2 * (n + 2)) + A264110 (A000217 (n + 4) + 5).toNat

end

end A264115.P4558155289507636280

/-! ## A264115.P3756647596338151112

`A264110(A000217(n+4)+5)%A049350(3*n+4)`
-/

namespace A264115.P3756647596338151112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264110 (A000217 (n + 4) + 5).toNat) (A049350 (3 * n + 4))

end

end A264115.P3756647596338151112

/-!
# A264116: Irregular triangle read by rows: T(n,k), n>=1, k>=1, of the alternating sum of entries 1 through k in the n-th row of A235791; the first element of column k is in row k(k+1)/2.

The programs for A264116, there is no canonical definition to state claims against.
-/

/-! ## A264116.P4144170180908998876

`A319416(A190071(3*n+2)-A124765(n))`
-/

namespace A264116.P4144170180908998876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 (A190071 (3 * n + 2) - A124765 n).toNat

end

end A264116.P4144170180908998876

/-! ## A264116.P1911414647087608022

`A290399(A040148(n+2)+1)`
-/

namespace A264116.P1911414647087608022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290399 (A040148 (n + 2) + 1).toNat

end

end A264116.P1911414647087608022

/-! ## A264116.P17843583712062683526

`A329362(A144304(n)+A105856(n))`
-/

namespace A264116.P17843583712062683526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329362 (A144304 n + A105856 n).toNat

end

end A264116.P17843583712062683526

/-! ## A264116.P2422373190958475798

`A065770(A102750(n+1)*A285068(n))`
-/

namespace A264116.P2422373190958475798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A102750 (n + 1) * A285068 n).toNat

end

end A264116.P2422373190958475798

/-! ## A264116.P16528849186038973199

`A124767(A049090(n+1)-A175223(n+1))`
-/

namespace A264116.P16528849186038973199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A049090 (n + 1) - A175223 (n + 1)).toNat

end

end A264116.P16528849186038973199

/-!
# A264118: Numbers that can be represented as S1+S2, as T1+T2, and as S3+T3, where S1, S2, S3 are positive squares, and T1, T2, T3 are positive triangular numbers.

The programs for A264118, there is no canonical definition to state claims against.
-/

/-! ## A264118.P12574792357410843891

`∩[A133254(n+1), A191765(n+1)]`
-/

namespace A264118.P12574792357410843891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264118.P12574792357410843891

/-!
# A264119: Look and say for Fibonacci word A003842.

The programs for A264119, the canonical program `A264119.P17883340675905039687` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264119 has offset 0).

The definition of A264119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264119.P17883340675905039687

`gcd(∑[n], A001468(A174571(n)))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A264119

/-- `gcd(∑[n], A001468(A174571(n)))` -/
def P17883340675905039687.Spec : Prop :=
  ∀ n, (P17883340675905039687.a n : ℤ) = A264119 n

theorem P17883340675905039687.correct : P17883340675905039687.Spec := by
  intro n
  simp only [A264119]

end A264119

/-! ## A264119.P11583869438094946634

`A040001(A279226(n)+A193220(n+2))`
-/

namespace A264119.P11583869438094946634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A279226 n + A193220 (n + 2)).toNat

end

end A264119.P11583869438094946634

namespace A264119

/-- `A040001(A279226(n)+A193220(n+2))` -/
def P11583869438094946634.Spec : Prop :=
  ∀ n, P11583869438094946634.a n = A264119 n

end A264119

/-! ## A264119.P6878795579784874021

`gcd(A048798(A050027(n+1)), A346953(n+1))`
-/

namespace A264119.P6878795579784874021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048798 (A050027 (n + 1)).toNat) (A346953 (n + 1))

end

end A264119.P6878795579784874021

namespace A264119

/-- `gcd(A048798(A050027(n+1)), A346953(n+1))` -/
def P6878795579784874021.Spec : Prop :=
  ∀ n, (P6878795579784874021.a n : ℤ) = A264119 n

end A264119

/-! ## A264119.P15806357760769455668

`A070939(A096057(3*n+4)%A259649(n+2))`
-/

namespace A264119.P15806357760769455668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A096057 (3 * n + 4)) (A259649 (n + 2))).toNat

end

end A264119.P15806357760769455668

namespace A264119

/-- `A070939(A096057(3*n+4)%A259649(n+2))` -/
def P15806357760769455668.Spec : Prop :=
  ∀ n, P15806357760769455668.a n = A264119 n

end A264119

/-!
# A264120: Values of k such that A001163(k) is positive.

The programs for A264120, there is no canonical definition to state claims against.
-/

/-! ## A264120.P17861429115822842762

`comp[or(2, n)+1]`
-/

namespace A264120.P17861429115822842762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A264120.P17861429115822842762

/-! ## A264120.P13277573026616584783

`comp[and(n, -3)+3]`
-/

namespace A264120.P13277573026616584783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3) + 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A264120.P13277573026616584783

/-! ## A264120.P7592979521459300499

`comp[n-or(n, -3)]`
-/

namespace A264120.P7592979521459300499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor (n : ℤ) (-3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A264120.P7592979521459300499

/-! ## A264120.P17692767859528746313

`comp[record[abs(xor(n, -3))]]`
-/

namespace A264120.P17692767859528746313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-3)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A264120.P17692767859528746313

/-! ## A264120.P12659283866167060365

`comp[record[-xor(n, -3)]]`
-/

namespace A264120.P12659283866167060365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n : ℤ) (-3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A264120.P12659283866167060365

/-! ## A264120.P1761231033380512068

`comp[ceil(or(5, n)/2)]`
-/

namespace A264120.P1761231033380512068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 5 n : ℚ) / 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A264120.P1761231033380512068

/-! ## A264120.P4260082078814308429

`comp[round(or(5, n)/2)]`
-/

namespace A264120.P4260082078814308429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 5 n : ℚ) / 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A264120.P4260082078814308429

/-! ## A264120.P6784496745557608481

`comp[record[xor(2, n)+1]]`
-/

namespace A264120.P6784496745557608481
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A264120.P6784496745557608481

/-! ## A264120.P12990530042524846331

`comp[∑[gcd(3, n%2)]]`
-/

namespace A264120.P12990530042524846331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n % 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A264120.P12990530042524846331

/-! ## A264120.P12124254142735313479

`comp[∑[or(1, gcd(2, n))]]`
-/

namespace A264120.P12124254142735313479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.gcd 2 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A264120.P12124254142735313479

/-!
# A264121: Number of (n+1)X(n+1) arrays of permutations of 0..(n+1)^2-1 with each element having index change +-(.,.) 0,0 1,-2 or 2,-1.

The programs for A264121, there is no canonical definition to state claims against.
-/

/-! ## A264121.P12971547104289029046

`A264128(∑[4*n]+1)`
-/

namespace A264121.P12971547104289029046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264121.P12971547104289029046

/-! ## A264121.P16052848785376954176

`record[A264128(Δ[A235355(n)])]`
-/

namespace A264121.P16052848785376954176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264121.P16052848785376954176

/-! ## A264121.P3445228824905587354

`record[A264128(A272267(n+1))]`
-/

namespace A264121.P3445228824905587354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264121.P3445228824905587354

/-! ## A264121.P8916843971972762942

`record[A264128(A330613(n+1))]`
-/

namespace A264121.P8916843971972762942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264121.P8916843971972762942

/-!
# A264122: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 1,-2 or 2,-1.

The programs for A264122, there is no canonical definition to state claims against.
-/

/-! ## A264122.P17933567364883204399

`A264128(∑[n+1]+2)`
-/

namespace A264122.P17933567364883204399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264122.P17933567364883204399

/-! ## A264122.P8559181824531017744

`record[A010054(n)*A264128(n+2)]`
-/

namespace A264122.P8559181824531017744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A264128 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264122.P8559181824531017744

/-! ## A264122.P15375838441546061161

`record[root(A264128(n+2), A077581(n+1))]`
-/

namespace A264122.P15375838441546061161
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264128 (n + 2) : ℝ) ^ (1 / (A077581 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264122.P15375838441546061161

/-! ## A264122.P6595790740651901386

`record[A264128(abs(A201163(n)))]`
-/

namespace A264122.P6595790740651901386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264122.P6595790740651901386

/-! ## A264122.P2717392075396064703

`record[A264128(Δ[A003453(n+5)])]`
-/

namespace A264122.P2717392075396064703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264122.P2717392075396064703

/-!
# A264123: Number of (n+1) X (3+1) arrays of permutations of 0..n*4+3 with each element having index change +-(.,.) 0,0 1,-2 or 2,-1.

The programs for A264123, there is no canonical definition to state claims against.
-/

/-! ## A264123.P924739945155571742

`A264128(∑[n+2]+4)`
-/

namespace A264123.P924739945155571742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264123.P924739945155571742

/-! ## A264123.P8504400240237507386

`A264128(A167614(n+1))+A185238(n)`
-/

namespace A264123.P8504400240237507386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (A167614 (n + 1)).toNat + A185238 n

end

end A264123.P8504400240237507386

/-! ## A264123.P198207211487291179

`A264128(A167614(n+1))%A016892(n)`
-/

namespace A264123.P198207211487291179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264128 (A167614 (n + 1)).toNat) (A016892 n)

end

end A264123.P198207211487291179

/-! ## A264123.P8058634730831513277

`lcm(A008550(n), A264128(A167614(n+1)))`
-/

namespace A264123.P8058634730831513277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008550 n) (A264128 (A167614 (n + 1)).toNat)

end

end A264123.P8058634730831513277

/-! ## A264123.P6262342836747767429

`A264128(A167614(n+1))+A034499(n+1)`
-/

namespace A264123.P6262342836747767429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (A167614 (n + 1)).toNat + A034499 (n + 1)

end

end A264123.P6262342836747767429

/-!
# A264124: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 1,-2 or 2,-1.

The programs for A264124, there is no canonical definition to state claims against.
-/

/-! ## A264124.P14691097174142643811

`A264128(∑[n+3]+7)`
-/

namespace A264124.P14691097174142643811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A264124.P14691097174142643811

/-!
# A264125: Number of (n+1) X (5+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 1,-2 or 2,-1.

The programs for A264125, there is no canonical definition to state claims against.
-/

/-! ## A264125.P7851010054900918446

`A264128(∑[n+4]+11)`
-/

namespace A264125.P7851010054900918446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A264125.P7851010054900918446

/-! ## A264125.P4156488471868146419

`A264128(A374005(n+1))%A006253(3*(n+1))`
-/

namespace A264125.P4156488471868146419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264128 (A374005 (n + 1)).toNat) (A006253 (3 * (n + 1)))

end

end A264125.P4156488471868146419

/-! ## A264125.P11142907285646455116

`A264128(A046691(n+3))%A128962(3*(n+1))`
-/

namespace A264125.P11142907285646455116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264128 (A046691 (n + 3)).toNat) (A128962 (3 * (n + 1)))

end

end A264125.P11142907285646455116

/-!
# A264126: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 1,-2 or 2,-1.

The programs for A264126, there is no canonical definition to state claims against.
-/

/-! ## A264126.P17415126434005101345

`A264128(A167614(n+4)+3)`
-/

namespace A264126.P17415126434005101345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (A167614 (n + 4) + 3).toNat

end

end A264126.P17415126434005101345

/-! ## A264126.P3141934430312264000

`A264128(A000124(n+5)+5)`
-/

namespace A264126.P3141934430312264000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (A000124 (n + 5) + 5).toNat

end

end A264126.P3141934430312264000

/-! ## A264126.P13923850258070827925

`A264128(A000217(n+5)+6)`
-/

namespace A264126.P13923850258070827925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (A000217 (n + 5) + 6).toNat

end

end A264126.P13923850258070827925

/-! ## A264126.P2828436974868308550

`A264128(A141214(n+2)+9)`
-/

namespace A264126.P2828436974868308550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (A141214 (n + 2) + 9).toNat

end

end A264126.P2828436974868308550

/-! ## A264126.P8223608842184723971

`A264128(eq[7, A131818(n+1)])`
-/

namespace A264126.P8223608842184723971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264126.P8223608842184723971

/-!
# A264127: Number of (n+1) X (7+1) arrays of permutations of 0..n*8+7 with each element having index change +-(.,.) 0,0 1,-2 or 2,-1.

The programs for A264127, there is no canonical definition to state claims against.
-/

/-! ## A264127.P16047424610068555907

`A264128(A167487(n+5))`
-/

namespace A264127.P16047424610068555907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (A167487 (n + 5)).toNat

end

end A264127.P16047424610068555907

/-! ## A264127.P6384005565893801532

`A264128(A000217(n+6)+7)`
-/

namespace A264127.P6384005565893801532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (A000217 (n + 6) + 7).toNat

end

end A264127.P6384005565893801532

/-! ## A264127.P11246112222112758959

`A264128(eq[8, A131818(n+1)])`
-/

namespace A264127.P11246112222112758959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264127.P11246112222112758959

/-! ## A264127.P7795638397897772675

`A264128(A374008(n+1))`
-/

namespace A264127.P7795638397897772675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (A374008 (n + 1)).toNat

end

end A264127.P7795638397897772675

/-! ## A264127.P17816266178163431603

`A264128(A055999(n+4))`
-/

namespace A264127.P17816266178163431603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264128 (A055999 (n + 4)).toNat

end

end A264127.P17816266178163431603

/-!
# A264128: T(n,k)=Number of (n+1)X(k+1) arrays of permutations of 0..(n+1)*(k+1)-1 with each element having index change +-(.,.) 0,0 1,-2 or 2,-1.

The programs for A264128, there is no canonical definition to state claims against.
-/

/-! ## A264128.P15337448905033634438

`A005940(A347940(n)%A095631(n))`
-/

namespace A264128.P15337448905033634438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (Int.tmod (A347940 n) (A095631 n)).toNat

end

end A264128.P15337448905033634438

/-! ## A264128.P8313221720026653842

`A005940(or(A151938(n), A347940(n)))`
-/

namespace A264128.P8313221720026653842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (Int.lor (A151938 n) (A347940 n)).toNat

end

end A264128.P8313221720026653842

/-! ## A264128.P10127676574498046052

`A005940(A347940(n)^A066577(n+1))`
-/

namespace A264128.P10127676574498046052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (SequenceMachineLib.roundAway ((A347940 n : ℚ) ^ (A066577 (n + 1) : ℤ))).toNat

end

end A264128.P10127676574498046052

/-! ## A264128.P14867193778471634052

`A005940(A347940(n))%A056654(n+5)`
-/

namespace A264128.P14867193778471634052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005940 (A347940 n).toNat) (A056654 (n + 5))

end

end A264128.P14867193778471634052

/-! ## A264128.P10946361923467906977

`A229637(A032559(n+1))+A194979(n+1)`
-/

namespace A264128.P10946361923467906977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229637 (A032559 (n + 1)).toNat + A194979 (n + 1)

end

end A264128.P10946361923467906977

/-!
# A264129: Number of (n+1) X (4+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 0,2 or 1,2.

The programs for A264129, there is no canonical definition to state claims against.
-/

/-! ## A264129.P16839540398512633768

`2*A109105(n+1)`
-/

namespace A264129.P16839540398512633768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109105 (n + 1)

end

end A264129.P16839540398512633768

/-! ## A264129.P11437583771236498215

`Δ[Δ[5^n]]*A048575(n+1)`
-/

namespace A264129.P11437583771236498215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A048575 (n + 1)

end

end A264129.P11437583771236498215

/-! ## A264129.P14147190574545849052

`A109105(A000027(n+1))+A109105(n+1)`
-/

namespace A264129.P14147190574545849052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109105 (A000027 (n + 1)).toNat + A109105 (n + 1)

end

end A264129.P14147190574545849052

/-! ## A264129.P1817636711100902581

`A109105(n+1)+lcm(A000034(n), A109105(n+1))`
-/

namespace A264129.P1817636711100902581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109105 (n + 1) + (Int.lcm (A000034 n) (A109105 (n + 1)) : ℤ)

end

end A264129.P1817636711100902581

/-! ## A264129.P5821922216917066796

`A109105(n+1)+A109105(n+1)^A007318(∑[n])`
-/

namespace A264129.P5821922216917066796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109105 (n + 1) : ℚ) + (A109105 (n + 1) : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A264129.P5821922216917066796

/-!
# A264130: Number of (n+1) X (6+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 0,2 or 1,2.

The programs for A264130, there is no canonical definition to state claims against.
-/

/-! ## A264130.P13298990354205038219

`A055842(n+2)*A189444(n+2)`
-/

namespace A264130.P13298990354205038219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055842 (n + 2) * A189444 (n + 2)

end

end A264130.P13298990354205038219

/-! ## A264130.P8415697024929304973

`A264131(A052905(n+3))`
-/

namespace A264130.P8415697024929304973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264131 (A052905 (n + 3)).toNat

end

end A264130.P8415697024929304973

/-!
# A264132: Number of (1+1)X(n+1) arrays of permutations of 0..n*2+1 with each element having index change +-(.,.) 0,0 0,2 or 1,2.

The programs for A264132, there is no canonical definition to state claims against.
-/

/-! ## A264132.P6525208634986550538

`A264131(∑[n]+1)`
-/

namespace A264132.P6525208634986550538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264131 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264132.P6525208634986550538

/-! ## A264132.P3426260486458217681

`record[A264131(∑[A057979(n)])]`
-/

namespace A264132.P3426260486458217681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264131 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264132.P3426260486458217681

/-! ## A264132.P16777040940490504955

`record[ratio[A264131(A028310(n))]]`
-/

namespace A264132.P16777040940490504955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264131 (A028310 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264132.P16777040940490504955

/-! ## A264132.P18370071553908965256

`record[A264131(A166017(n+1))]`
-/

namespace A264132.P18370071553908965256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264131 (A166017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264132.P18370071553908965256

/-! ## A264132.P4862378944875069419

`record[A264131(A246276(n+1))]`
-/

namespace A264132.P4862378944875069419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264131 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264132.P4862378944875069419

/-!
# A264133: Number of (2+1)X(n+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 0,2 or 1,2.

The programs for A264133, there is no canonical definition to state claims against.
-/

/-! ## A264133.P4510332598523442873

`A264131(∑[n+1]+2)`
-/

namespace A264133.P4510332598523442873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264131 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264133.P4510332598523442873

/-! ## A264133.P10820653600963998610

`record[A264131(A133263(∑{e}[n, #]))]`
-/

namespace A264133.P10820653600963998610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264131 (A133263 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264133.P10820653600963998610

/-! ## A264133.P4639174422956044225

`record[gcd(A097230(n), A264131(n+1))]`
-/

namespace A264133.P4639174422956044225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A264131 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264133.P4639174422956044225

/-! ## A264133.P4307987937830041280

`record[gcd(A122200(n), A264131(n+3))]`
-/

namespace A264133.P4307987937830041280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122200 n) (A264131 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264133.P4307987937830041280

/-! ## A264133.P12694904717088259871

`record[gcd(A008290(n), A264131(n+4))]`
-/

namespace A264133.P12694904717088259871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A264131 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264133.P12694904717088259871

/-!
# A264134: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having index change +-(.,.) 0,0 0,2 or 1,2.

The programs for A264134, there is no canonical definition to state claims against.
-/

/-! ## A264134.P3251026804820338014

`A264131(∑[n+2]+4)`
-/

namespace A264134.P3251026804820338014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264131 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264134.P3251026804820338014

/-! ## A264134.P17666033275224722362

`A264131(A167614(n+1))+A185044(n)`
-/

namespace A264134.P17666033275224722362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264131 (A167614 (n + 1)).toNat + A185044 n

end

end A264134.P17666033275224722362

/-! ## A264134.P17284525003612749848

`A264131(A167614(n+1))+A185284(n)`
-/

namespace A264134.P17284525003612749848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264131 (A167614 (n + 1)).toNat + A185284 n

end

end A264134.P17284525003612749848

/-! ## A264134.P4507319924176362532

`A281155(n)+A264131(A167614(n+1))`
-/

namespace A264134.P4507319924176362532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 n + A264131 (A167614 (n + 1)).toNat

end

end A264134.P4507319924176362532

/-! ## A264134.P1089234767342282762

`A326455(n)+A264131(A167614(n+1))`
-/

namespace A264134.P1089234767342282762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n + A264131 (A167614 (n + 1)).toNat

end

end A264134.P1089234767342282762

/-!
# A264135: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 0,2 or 1,2.

The programs for A264135, there is no canonical definition to state claims against.
-/

/-! ## A264135.P1931499455216846249

`A264131(∑[n+3]+7)`
-/

namespace A264135.P1931499455216846249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264131 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A264135.P1931499455216846249

/-!
# A264138: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 1,-2 or 1,1.

The programs for A264138, there is no canonical definition to state claims against.
-/

/-! ## A264138.P7349185407398744408

`A264142(A141214(n+1))`
-/

namespace A264138.P7349185407398744408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A141214 (n + 1)).toNat

end

end A264138.P7349185407398744408

/-! ## A264138.P16586096697321013882

`A264142(A155212(n)+5)`
-/

namespace A264138.P16586096697321013882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A155212 n + 5).toNat

end

end A264138.P16586096697321013882

/-! ## A264138.P2466550875217518480

`A264142(A056000(n)+7)`
-/

namespace A264138.P2466550875217518480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A056000 n + 7).toNat

end

end A264138.P2466550875217518480

/-! ## A264138.P527907400094237981

`A264142(A052905(n+1)+2)`
-/

namespace A264138.P527907400094237981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A052905 (n + 1) + 2).toNat

end

end A264138.P527907400094237981

/-! ## A264138.P3362778014498509445

`A264142(A051936(n+4)+6)`
-/

namespace A264138.P3362778014498509445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A051936 (n + 4) + 6).toNat

end

end A264138.P3362778014498509445

/-!
# A264139: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 1,-2 or 1,1.

The programs for A264139, there is no canonical definition to state claims against.
-/

/-! ## A264139.P4524593540957016738

`A264142(eq[4, A193592(n)])`
-/

namespace A264139.P4524593540957016738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264139.P4524593540957016738

/-! ## A264139.P11585340211843679933

`A264142(Δ[A023545(n+1)])`
-/

namespace A264139.P11585340211843679933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (f1 (n + 1) - f1 n).toNat

end

end A264139.P11585340211843679933

/-! ## A264139.P12350901178054650558

`A264142(A000124(n+5)-5)`
-/

namespace A264139.P12350901178054650558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A000124 (n + 5) - 5).toNat

end

end A264139.P12350901178054650558

/-! ## A264139.P7702153720156945138

`A264142(eq[5, A200370(n+1)])`
-/

namespace A264139.P7702153720156945138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264139.P7702153720156945138

/-! ## A264139.P7711883768168973848

`A264142(eq[6, A185782(n+1)])`
-/

namespace A264139.P7711883768168973848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264139.P7711883768168973848

/-!
# A264140: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 1,-2 or 1,1.

The programs for A264140, there is no canonical definition to state claims against.
-/

/-! ## A264140.P12202622175987579250

`A264142(A052905(n+3))`
-/

namespace A264140.P12202622175987579250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A052905 (n + 3)).toNat

end

end A264140.P12202622175987579250

/-! ## A264140.P3379859445329077791

`A264142(eq[3, A219347(n)])`
-/

namespace A264140.P3379859445329077791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264140.P3379859445329077791

/-! ## A264140.P13366464829696237857

`A264142(eq[5, A193592(n)])`
-/

namespace A264140.P13366464829696237857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264140.P13366464829696237857

/-! ## A264140.P810258169346351021

`A264142(eq[8, A258709(n)])`
-/

namespace A264140.P810258169346351021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264140.P810258169346351021

/-!
# A264141: Number of (n+1)X(7+1) arrays of permutations of 0..n*8+7 with each element having index change +-(.,.) 0,0 1,-2 or 1,1.

The programs for A264141, there is no canonical definition to state claims against.
-/

/-! ## A264141.P10321168602301220777

`A264142(eq[4, A219347(n)])`
-/

namespace A264141.P10321168602301220777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264141.P10321168602301220777

/-! ## A264141.P6177689716114550148

`A264142(eq[6, A243060(n+1)])`
-/

namespace A264141.P6177689716114550148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243060 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264141.P6177689716114550148

/-!
# A264143: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having index change +-(.,.) 0,0 1,-2 or 1,1.

The programs for A264143, there is no canonical definition to state claims against.
-/

/-! ## A264143.P16342047928411066852

`A264054(n+1)/A264056(n+1)*A264057(n+1)`
-/

namespace A264143.P16342047928411066852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264054 (n + 1) : ℚ) / (A264056 (n + 1) : ℚ) * (A264057 (n + 1) : ℚ)

end

end A264143.P16342047928411066852

/-! ## A264143.P6491396260433807147

`sqrt(A264058(n+1))`
-/

namespace A264143.P6491396260433807147
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264058 (n + 1) : ℝ)

end

end A264143.P6491396260433807147

/-! ## A264143.P7483197186510064451

`root(A264058(n+1), p?[A121902(n)])`
-/

namespace A264143.P7483197186510064451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264058 (n + 1) : ℝ) ^ (1 / (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℝ))

end

end A264143.P7483197186510064451

/-! ## A264143.P9994044011427474587

`A264142(∑[n+2]+4)`
-/

namespace A264143.P9994044011427474587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264143.P9994044011427474587

/-! ## A264143.P7935732348062628011

`A264142(A167614(n+1))+A011731(n)`
-/

namespace A264143.P7935732348062628011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A167614 (n + 1)).toNat + A011731 n

end

end A264143.P7935732348062628011

/-!
# A264144: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 1,-2 or 1,1.

The programs for A264144, there is no canonical definition to state claims against.
-/

/-! ## A264144.P12810400527414770831

`A264142(A141214(n)+7)`
-/

namespace A264144.P12810400527414770831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A141214 n + 7).toNat

end

end A264144.P12810400527414770831

/-! ## A264144.P17982391403657737283

`A264142(A052905(n)+9)`
-/

namespace A264144.P17982391403657737283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A052905 n + 9).toNat

end

end A264144.P17982391403657737283

/-! ## A264144.P9978428608984179942

`A264142(A055999(n)+10)`
-/

namespace A264144.P9978428608984179942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A055999 n + 10).toNat

end

end A264144.P9978428608984179942

/-! ## A264144.P11688297918169937607

`A264142(A167614(n+2)+1)`
-/

namespace A264144.P11688297918169937607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A167614 (n + 2) + 1).toNat

end

end A264144.P11688297918169937607

/-! ## A264144.P18166168157586240115

`A264142(A167499(n+2)-1)`
-/

namespace A264144.P18166168157586240115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A167499 (n + 2) - 1).toNat

end

end A264144.P18166168157586240115

/-!
# A264145: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 1,-2 or 1,1.

The programs for A264145, there is no canonical definition to state claims against.
-/

/-! ## A264145.P14367538974929655964

`A264142(A167499(n+3))`
-/

namespace A264145.P14367538974929655964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A167499 (n + 3)).toNat

end

end A264145.P14367538974929655964

/-! ## A264145.P14209299240590505751

`A264142(eq[7, A066657(n)])`
-/

namespace A264145.P14209299240590505751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264145.P14209299240590505751

/-! ## A264145.P17906300884853214882

`A264142(eq[6, A131818(n+1)])`
-/

namespace A264145.P17906300884853214882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264145.P17906300884853214882

/-! ## A264145.P17882894612446400134

`A264142(A000124(n+5)-(n+1))`
-/

namespace A264145.P17882894612446400134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A264145.P17882894612446400134

/-! ## A264145.P10621456550298304205

`A264142(A000217(n+6)-A020739(n))`
-/

namespace A264145.P10621456550298304205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A000217 (n + 6) - A020739 n).toNat

end

end A264145.P10621456550298304205

/-!
# A264146: Number of (6+1) X (n+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 1,-2 or 1,1.

The programs for A264146, there is no canonical definition to state claims against.
-/

/-! ## A264146.P14862810330931045476

`A264142(A166136(n+4))`
-/

namespace A264146.P14862810330931045476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A166136 (n + 4)).toNat

end

end A264146.P14862810330931045476

/-! ## A264146.P3676584096298742058

`A264142(A000124(n+5)+5)`
-/

namespace A264146.P3676584096298742058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A000124 (n + 5) + 5).toNat

end

end A264146.P3676584096298742058

/-! ## A264146.P12057289899313458789

`A264142(A000217(n+5)+6)`
-/

namespace A264146.P12057289899313458789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A000217 (n + 5) + 6).toNat

end

end A264146.P12057289899313458789

/-! ## A264146.P14558785858801169570

`A264142(A056000(n+1)+16)`
-/

namespace A264146.P14558785858801169570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (A056000 (n + 1) + 16).toNat

end

end A264146.P14558785858801169570

/-! ## A264146.P2705913057422685559

`A264142(eq[7, A131818(n+1)])`
-/

namespace A264146.P2705913057422685559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264146.P2705913057422685559

/-!
# A264147: a(n) = n*F(n+1) - (n+1)*F(n), where F = A000045.

The programs for A264147, the canonical program `A264147.P9936490276008260745` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264147 has offset 0).

The definition of A264147 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*A000045(n+1)-(n+1)*A000045(n)` (program `A264147.P9936490276008260745`, by `A264147.P9936490276008260745.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A264147.P18086878405599857444

`2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=-1, a(2)=1, a(3)=1`
-/

namespace A264147.P18086878405599857444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 1, 1] fun n a =>
  2 * a (n - 1) + a (n - 2) - 2 * a (n - 3) - a (n - 4)

end

end A264147.P18086878405599857444

namespace A264147

/-- `2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)` -/
def P18086878405599857444.Spec : Prop :=
  ∀ n, P18086878405599857444.a n = A264147 n

end A264147

/-! ## A264147.P6566039166239307726

`3*A001629(n)-A001629(n+1)`
-/

namespace A264147.P6566039166239307726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001629 n - A001629 (n + 1)

end

end A264147.P6566039166239307726

namespace A264147

/-- `3*A001629(n)-A001629(n+1)` -/
def P6566039166239307726.Spec : Prop :=
  ∀ n, P6566039166239307726.a n = A264147 n

end A264147

/-! ## A264147.P9936490276008260745

`n*A000045(n+1)-(n+1)*A000045(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A264147

/-- `n*A000045(n+1)-(n+1)*A000045(n)` -/
def P9936490276008260745.Spec : Prop :=
  ∀ n, P9936490276008260745.a n = A264147 n

theorem P9936490276008260745.correct : P9936490276008260745.Spec := by
  intro n
  simp only [A264147]

end A264147

/-! ## A264147.P16688881664900878685

`ogf((-x+3x^2)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A264147.P16688881664900878685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, -1, 3] [1, -2, -1, 2, 1] n

end

end A264147.P16688881664900878685

namespace A264147

/-- `ogf((-x+3x^2)/(1-2x-x^2+2x^3+x^4))` -/
def P16688881664900878685.Spec : Prop :=
  ∀ n, P16688881664900878685.a n = A264147 n

end A264147

/-! ## A264147.P13694707650649786947

`A001629(n)-A240847(n+1)`
-/

namespace A264147.P13694707650649786947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n - A240847 (n + 1)

end

end A264147.P13694707650649786947

namespace A264147

/-- `A001629(n)-A240847(n+1)` -/
def P13694707650649786947.Spec : Prop :=
  ∀ n, P13694707650649786947.a n = A264147 n

end A264147

/-! ## A264147.P17365593925131003265

`A094588(n)-2*A000045(n)`
-/

namespace A264147.P17365593925131003265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 n - 2 * A000045 n

end

end A264147.P17365593925131003265

namespace A264147

/-- `A094588(n)-2*A000045(n)` -/
def P17365593925131003265.Spec : Prop :=
  ∀ n, P17365593925131003265.a n = A264147 n

end A264147

/-! ## A264147.P11655277847686590846

`n*A212804(n)-A000045(n)`
-/

namespace A264147.P11655277847686590846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A212804 n - A000045 n

end

end A264147.P11655277847686590846

namespace A264147

/-- `n*A212804(n)-A000045(n)` -/
def P11655277847686590846.Spec : Prop :=
  ∀ n, P11655277847686590846.a n = A264147 n

end A264147

/-! ## A264147.P11218374246162607192

`A006490(n+1)-∑[A212804(n)]`
-/

namespace A264147.P11218374246162607192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264147.P11218374246162607192

namespace A264147

/-- `A006490(n+1)-∑[A212804(n)]` -/
def P11218374246162607192.Spec : Prop :=
  ∀ n, P11218374246162607192.a n = A264147 n

end A264147

/-! ## A264147.P7685477005237212910

`∑[n*(A118658(n)-A000045(n))]`
-/

namespace A264147.P7685477005237212910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A118658 n - A000045 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264147.P7685477005237212910

namespace A264147

/-- `∑[n*(A118658(n)-A000045(n))]` -/
def P7685477005237212910.Spec : Prop :=
  ∀ n, P7685477005237212910.a n = A264147 n

end A264147

/-! ## A264147.P5165096417472716575

`n*Δ[A002062(n)]-A002062(n)`
-/

namespace A264147.P5165096417472716575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) - A002062 n

end

end A264147.P5165096417472716575

namespace A264147

/-- `n*Δ[A002062(n)]-A002062(n)` -/
def P5165096417472716575.Spec : Prop :=
  ∀ n, P5165096417472716575.a n = A264147 n

theorem P5165096417472716575.correct : P5165096417472716575.Spec := by
  intro n
  simp only [A264147, Nat.add_sub_cancel, A264147.P5165096417472716575.f1, A264147.P5165096417472716575.a, A264147.P9936490276008260745.a, A000045, A000045.P11838749114346432762.a, A002062, A002062.P4072436808255348786.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A264147

/-! ## A264147.P7079929271610218012

`n*Δ[A065220(n)]-A065220(n)`
-/

namespace A264147.P7079929271610218012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) - A065220 n

end

end A264147.P7079929271610218012

namespace A264147

/-- `n*Δ[A065220(n)]-A065220(n)` -/
def P7079929271610218012.Spec : Prop :=
  ∀ n, P7079929271610218012.a n = A264147 n

theorem P7079929271610218012.correct : P7079929271610218012.Spec := by
  intro n
  simp only [A264147, Nat.add_sub_cancel, A264147.P7079929271610218012.f1, A264147.P7079929271610218012.a, A264147.P9936490276008260745.a, A000045, A000045.P11838749114346432762.a, A065220, A065220.P6653459094866898540.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A264147

/-! ## A264147.P10056499357094195386

`A006490(n+1)-A000045(n+1)`
-/

namespace A264147.P10056499357094195386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1) - A000045 (n + 1)

end

end A264147.P10056499357094195386

namespace A264147

/-- `A006490(n+1)-A000045(n+1)` -/
def P10056499357094195386.Spec : Prop :=
  ∀ n, P10056499357094195386.a n = A264147 n

end A264147

/-! ## A264147.P5731758826978659089

`A001629(n+1)-A191830(n+1)`
-/

namespace A264147.P5731758826978659089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) - A191830 (n + 1)

end

end A264147.P5731758826978659089

namespace A264147

/-- `A001629(n+1)-A191830(n+1)` -/
def P5731758826978659089.Spec : Prop :=
  ∀ n, P5731758826978659089.a n = A264147 n

end A264147

/-! ## A264147.P11939114477210278256

`A136391(n+1)-A000045(n+2)`
-/

namespace A264147.P11939114477210278256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136391 (n + 1) - A000045 (n + 2)

end

end A264147.P11939114477210278256

namespace A264147

/-- `A136391(n+1)-A000045(n+2)` -/
def P11939114477210278256.Spec : Prop :=
  ∀ n, P11939114477210278256.a n = A264147 n

end A264147

/-! ## A264147.P14917731923867619606

`A006490(n+1)-A212804(n+2)`
-/

namespace A264147.P14917731923867619606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1) - A212804 (n + 2)

end

end A264147.P14917731923867619606

namespace A264147

/-- `A006490(n+1)-A212804(n+2)` -/
def P14917731923867619606.Spec : Prop :=
  ∀ n, P14917731923867619606.a n = A264147 n

end A264147

/-! ## A264147.P506502951000405037

`n*A212804(n)-A212804(n+1)`
-/

namespace A264147.P506502951000405037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A212804 n - A212804 (n + 1)

end

end A264147.P506502951000405037

namespace A264147

/-- `n*A212804(n)-A212804(n+1)` -/
def P506502951000405037.Spec : Prop :=
  ∀ n, P506502951000405037.a n = A264147 n

end A264147

/-! ## A264147.P71770652624006901

`A006490(n+1)-∑[A118658(n)/2]`
-/

namespace A264147.P71770652624006901
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118658 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006490 (n + 1) : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A264147.P71770652624006901

namespace A264147

/-- `A006490(n+1)-∑[A118658(n)/2]` -/
def P71770652624006901.Spec : Prop :=
  ∀ n, P71770652624006901.a n = (A264147 n : ℚ)

end A264147

/-! ## A264147.P7744321634337264340

`A006490(n+1)-(A000071(n+1)+1)`
-/

namespace A264147.P7744321634337264340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 1) - (A000071 (n + 1) + 1)

end

end A264147.P7744321634337264340

namespace A264147

/-- `A006490(n+1)-(A000071(n+1)+1)` -/
def P7744321634337264340.Spec : Prop :=
  ∀ n, P7744321634337264340.a n = A264147 n

end A264147

/-! ## A264147.P9373030450162947154

`A001629(n)+A001629(n)-A010049(n)`
-/

namespace A264147.P9373030450162947154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n + (A001629 n - A010049 n)

end

end A264147.P9373030450162947154

namespace A264147

/-- `A001629(n)+A001629(n)-A010049(n)` -/
def P9373030450162947154.Spec : Prop :=
  ∀ n, P9373030450162947154.a n = A264147 n

end A264147

/-! ## A264147.P1932659093035725495

`A022095(n)+A094588(n)-A022097(n)`
-/

namespace A264147.P1932659093035725495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022095 n + (A094588 n - A022097 n)

end

end A264147.P1932659093035725495

namespace A264147

/-- `A022095(n)+A094588(n)-A022097(n)` -/
def P1932659093035725495.Spec : Prop :=
  ∀ n, P1932659093035725495.a n = A264147 n

end A264147

/-!
# A264149: Denominators of rational coefficients related to Stirling's asymptotic series for the Gamma function.

The programs for A264149, there is no canonical definition to state claims against.
-/

/-! ## A264149.P11206122133849070603

`A004185(∏[A293316(n)])`
-/

namespace A264149.P11206122133849070603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A264149.P11206122133849070603

/-!
# A264150: Numerators of SGGS((2*n+1)/2^(n+1)) where the rational numbers SGGS(n) are defined in A264148.

The programs for A264150, there is no canonical definition to state claims against.
-/

/-! ## A264150.P3784940854621539629

`A090804(n)/2^(n+1)`
-/

namespace A264150.P3784940854621539629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090804 n : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A264150.P3784940854621539629

/-! ## A264150.P11565963734172847477

`A005447(2*(n+1))`
-/

namespace A264150.P11565963734172847477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005447 (2 * (n + 1))

end

end A264150.P11565963734172847477

/-! ## A264150.P8807305787575804614

`or(1, A005447(A103517(n)))`
-/

namespace A264150.P8807305787575804614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005447 (A103517 n).toNat)

end

end A264150.P8807305787575804614

/-! ## A264150.P11026421835731646866

`A005447(A103517(n))%A090804(n)`
-/

namespace A264150.P11026421835731646866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005447 (A103517 n).toNat) (A090804 n)

end

end A264150.P11026421835731646866

/-! ## A264150.P590719001259757554

`A299432(2*(n+2))`
-/

namespace A264150.P590719001259757554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299432 (2 * (n + 2))

end

end A264150.P590719001259757554

/-!
# A264151: Row sums of A179455.

The programs for A264151, there is no canonical definition to state claims against.
-/

/-! ## A264151.P15155719108050672278

`A072964(n)+A047486(A002869(n))`
-/

namespace A264151.P15155719108050672278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072964 n + A047486 (A002869 n).toNat

end

end A264151.P15155719108050672278

/-!
# A264152: a(n) = (2^floor(n+n/2)/sqrt(Pi)^mod(n+1,2))*Gamma(n+1/2)/Gamma(n/2+1).

The programs for A264152, the canonical program `A264152.P11680780030930013707` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264152 has offset 0).

The definition of A264152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264152.P11680780030930013707

`A001813(n)/A006882(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A264152

/-- `A001813(n)/A006882(n)` -/
def P11680780030930013707.Spec : Prop :=
  ∀ n, P11680780030930013707.a n = (A264152 n : ℚ)

end A264152

/-! ## A264152.P16511890776139096202

`A000108(n)*∏[(n+1)/a(n-1)]` with `a(0)=1`
-/

namespace A264152.P16511890776139096202
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n + 1 : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 n : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A264152.P16511890776139096202

namespace A264152

/-- `A000108(n)*∏[(n+1)/a(n-1)]` -/
def P16511890776139096202.Spec : Prop :=
  ∀ n, P16511890776139096202.a n = (A264152 n : ℚ)

end A264152

/-! ## A264152.P4085187608411187071

`A000108(n)*A248809(∑[n])`
-/

namespace A264152.P4085187608411187071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A248809 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264152.P4085187608411187071

namespace A264152

/-- `A000108(n)*A248809(∑[n])` -/
def P4085187608411187071.Spec : Prop :=
  ∀ n, P4085187608411187071.a n = A264152 n

end A264152

/-! ## A264152.P10501956966961295220

`A000108(n)*A006882(n+1)`
-/

namespace A264152.P10501956966961295220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A006882 (n + 1)

end

end A264152.P10501956966961295220

namespace A264152

/-- `A000108(n)*A006882(n+1)` -/
def P10501956966961295220.Spec : Prop :=
  ∀ n, P10501956966961295220.a n = A264152 n

end A264152

/-! ## A264152.P7764102420661110836

`A000079(n)/A006882(n)*A001147(n)`
-/

namespace A264152.P7764102420661110836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A006882 n : ℚ) * (A001147 n : ℚ)

end

end A264152.P7764102420661110836

namespace A264152

/-- `A000079(n)/A006882(n)*A001147(n)` -/
def P7764102420661110836.Spec : Prop :=
  ∀ n, P7764102420661110836.a n = (A264152 n : ℚ)

end A264152

/-! ## A264152.P17260170326068484699

`A011782(n+1)/A006882(n)*A001147(n)`
-/

namespace A264152.P17260170326068484699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) / (A006882 n : ℚ) * (A001147 n : ℚ)

end

end A264152.P17260170326068484699

namespace A264152

/-- `A011782(n+1)/A006882(n)*A001147(n)` -/
def P17260170326068484699.Spec : Prop :=
  ∀ n, P17260170326068484699.a n = (A264152 n : ℚ)

end A264152

/-! ## A264152.P2421673669637948540

`A081125(2*n)/A006882(n)`
-/

namespace A264152.P2421673669637948540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081125 (2 * n) : ℚ) / (A006882 n : ℚ)

end

end A264152.P2421673669637948540

namespace A264152

/-- `A081125(2*n)/A006882(n)` -/
def P2421673669637948540.Spec : Prop :=
  ∀ n, P2421673669637948540.a n = (A264152 n : ℚ)

end A264152

/-! ## A264152.P828472201475406322

`A094941(2*n)/A006882(n)`
-/

namespace A264152.P828472201475406322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094941 (2 * n) : ℚ) / (A006882 n : ℚ)

end

end A264152.P828472201475406322

namespace A264152

/-- `A094941(2*n)/A006882(n)` -/
def P828472201475406322.Spec : Prop :=
  ∀ n, P828472201475406322.a n = (A264152 n : ℚ)

end A264152

/-! ## A264152.P7873711176528539223

`A081125(2*n)/A172089(A000124(n))`
-/

namespace A264152.P7873711176528539223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081125 (2 * n) : ℚ) / (A172089 (A000124 n).toNat : ℚ)

end

end A264152.P7873711176528539223

namespace A264152

/-- `A081125(2*n)/A172089(A000124(n))` -/
def P7873711176528539223.Spec : Prop :=
  ∀ n, P7873711176528539223.a n = (A264152 n : ℚ)

end A264152

/-! ## A264152.P4963625821431552120

`A081125(2*n)/A230698(A000217(n))`
-/

namespace A264152.P4963625821431552120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081125 (2 * n) : ℚ) / (A230698 (A000217 n).toNat : ℚ)

end

end A264152.P4963625821431552120

namespace A264152

/-- `A081125(2*n)/A230698(A000217(n))` -/
def P4963625821431552120.Spec : Prop :=
  ∀ n, P4963625821431552120.a n = (A264152 n : ℚ)

end A264152

/-!
# A264153: a(n) = ((2*n)!)^2 / 2^n.

The programs for A264153, the canonical program `A264153.P13912112558782281304` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264153 has offset 0).

The definition of A264153 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A264153.P13912112558782281304

`(2*n)!²/2^n`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264153

/-- `(2*n)!²/2^n` -/
def P13912112558782281304.Spec : Prop :=
  ∀ n, P13912112558782281304.a n = (A264153 n : ℚ)

end A264153

/-! ## A264153.P13757588181766382049

`A134372(n)/A000079(n)`
-/

namespace A264153.P13757588181766382049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134372 n : ℚ) / (A000079 n : ℚ)

end

end A264153.P13757588181766382049

namespace A264153

/-- `A134372(n)/A000079(n)` -/
def P13757588181766382049.Spec : Prop :=
  ∀ n, P13757588181766382049.a n = (A264153 n : ℚ)

end A264153

/-! ## A264153.P5491256622733539394

`2*C(2*n, 2)²*a(n-1)` with `a(0)=1`
-/

namespace A264153.P5491256622733539394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * (Nat.choose (2 * n) 2 ^ 2 * a (n - 1))

end

end A264153.P5491256622733539394

namespace A264153

/-- `2*C(2*n, 2)²*a(n-1)` -/
def P5491256622733539394.Spec : Prop :=
  ∀ n, (P5491256622733539394.a n : ℤ) = A264153 n

end A264153

/-! ## A264153.P1680126634405822810

`2*(n*(2*n-1))²*a(n-1)` with `a(0)=1`
-/

namespace A264153.P1680126634405822810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((n : ℤ) * ((2 * n : ℤ) - 1)) ^ 2 * a (n - 1)

end

end A264153.P1680126634405822810

namespace A264153

/-- `2*(n*(2*n-1))²*a(n-1)` -/
def P1680126634405822810.Spec : Prop :=
  ∀ n, P1680126634405822810.a n = A264153 n

end A264153

/-! ## A264153.P828106352128055189

`A000680(n)²*2^n`
-/

namespace A264153.P828106352128055189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000680 n ^ 2 * (2 ^ n : ℤ)

end

end A264153.P828106352128055189

namespace A264153

/-- `A000680(n)²*2^n` -/
def P828106352128055189.Spec : Prop :=
  ∀ n, P828106352128055189.a n = A264153 n

end A264153

/-!
# A264155: a(n) is the smallest integer m such that n is the least exponent k satisfying sigma(m)^k divides m.

The programs for A264155, there is no canonical definition to state claims against.
-/

/-! ## A264155.P16953893060283969791

`A132724(A001615(n+1)*A175141(n+1))`
-/

namespace A264155.P16953893060283969791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132724 (A001615 (n + 1) * A175141 (n + 1)).toNat

end

end A264155.P16953893060283969791

/-!
# A264158: Number of (n+1) X (1+1) arrays of permutations of 0..n*2+1 with each element having directed index change 0,1 0,-1 0,2 1,0 -1,0 or 2,0.

The programs for A264158, there is no canonical definition to state claims against.
-/

/-! ## A264158.P5110303087292501287

`A264257(∑[n]+1)`
-/

namespace A264158.P5110303087292501287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264257 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264158.P5110303087292501287

/-! ## A264158.P11256210444016990840

`record[A103451(n)*A264257(n+1)]`
-/

namespace A264158.P11256210444016990840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A264257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264158.P11256210444016990840

/-! ## A264158.P8560239188676671135

`record[gcd(A002262(n), A264257(n+1))]`
-/

namespace A264158.P8560239188676671135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A264257 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264158.P8560239188676671135

/-! ## A264158.P7485705932409245854

`record[A264257(n+1)/A300620(n+1)]`
-/

namespace A264158.P7485705932409245854
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264257 (n + 1) : ℚ) / (A300620 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264158.P7485705932409245854

/-! ## A264158.P672478327066731057

`record[A264257(n+1)/A300625(n+1)]`
-/

namespace A264158.P672478327066731057
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264257 (n + 1) : ℚ) / (A300625 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264158.P672478327066731057

/-!
# A264159: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,1 0,-1 0,2 1,0 -1,0 or 2,0.

The programs for A264159, there is no canonical definition to state claims against.
-/

/-! ## A264159.P8940195618550323542

`A264163(∑[n+1]+2)`
-/

namespace A264159.P8940195618550323542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264163 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264159.P8940195618550323542

/-! ## A264159.P15685175305623395831

`record[A264163(A113782(n+1)+2)]`
-/

namespace A264159.P15685175305623395831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264163 (A113782 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264159.P15685175305623395831

/-! ## A264159.P11683580871995640071

`lcm(A033630(n), A264163(A000096(n+1)))`
-/

namespace A264159.P11683580871995640071
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033630 n) (A264163 (A000096 (n + 1)).toNat)

end

end A264159.P11683580871995640071

/-! ## A264159.P7516279883326824892

`A264163(A000096(n+1))*A354987(n+1)`
-/

namespace A264159.P7516279883326824892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264163 (A000096 (n + 1)).toNat * A354987 (n + 1)

end

end A264159.P7516279883326824892

/-! ## A264159.P8020309449879578917

`A033630(2*n+1)*A264163(A000096(n+1))`
-/

namespace A264159.P8020309449879578917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (2 * n + 1) * A264163 (A000096 (n + 1)).toNat

end

end A264159.P8020309449879578917

/-!
# A264160: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,1 0,-1 0,2 1,0 -1,0 or 2,0.

The programs for A264160, there is no canonical definition to state claims against.
-/

/-! ## A264160.P7583891959608467979

`A264163(∑[n+2]+4)`
-/

namespace A264160.P7583891959608467979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264163 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264160.P7583891959608467979

/-! ## A264160.P10628032117543456224

`A152847(n)*A264163(A167614(n+1))`
-/

namespace A264160.P10628032117543456224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152847 n * A264163 (A167614 (n + 1)).toNat

end

end A264160.P10628032117543456224

/-! ## A264160.P2088971900346815372

`lcm(A020985(n), A264163(A167614(n+1)))`
-/

namespace A264160.P2088971900346815372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A264163 (A167614 (n + 1)).toNat)

end

end A264160.P2088971900346815372

/-! ## A264160.P9628257563945455466

`or(A000007(n), A264163(A167614(n+1)))`
-/

namespace A264160.P9628257563945455466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A264163 (A167614 (n + 1)).toNat)

end

end A264160.P9628257563945455466

/-! ## A264160.P15793603765984607096

`or(A255361(n), A264163(A167614(n+1)))`
-/

namespace A264160.P15793603765984607096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A255361 n) (A264163 (A167614 (n + 1)).toNat)

end

end A264160.P15793603765984607096

/-!
# A264161: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,1 0,-1 0,2 1,0 -1,0 or 2,0.

The programs for A264161, there is no canonical definition to state claims against.
-/

/-! ## A264161.P11823386860700304882

`A264163(∑[n+3]+7)`
-/

namespace A264161.P11823386860700304882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264163 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A264161.P11823386860700304882

/-! ## A264161.P667733865912832883

`A264163(A167614(n+2)+1)/A055642(n)`
-/

namespace A264161.P667733865912832883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264163 (A167614 (n + 2) + 1).toNat : ℚ) / (A055642 n : ℚ)

end

end A264161.P667733865912832883

/-!
# A264162: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,1 0,-1 0,2 1,0 -1,0 or 2,0.

The programs for A264162, there is no canonical definition to state claims against.
-/

/-! ## A264162.P367397965385111442

`A264163(A374005(n+1))`
-/

namespace A264162.P367397965385111442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264163 (A374005 (n + 1)).toNat

end

end A264162.P367397965385111442

/-! ## A264162.P16327564303558978280

`A264163(A056000(n)+15)`
-/

namespace A264162.P16327564303558978280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264163 (A056000 n + 15).toNat

end

end A264162.P16327564303558978280

/-! ## A264162.P6142299728555545289

`A264163(eq[7, A066657(n)])`
-/

namespace A264162.P6142299728555545289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264162.P6142299728555545289

/-! ## A264162.P10024610989498610135

`A264163(A000124(n+4)+4)`
-/

namespace A264162.P10024610989498610135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264163 (A000124 (n + 4) + 4).toNat

end

end A264162.P10024610989498610135

/-! ## A264162.P6540134964735305946

`A264163(eq[6, A131818(n+1)])`
-/

namespace A264162.P6540134964735305946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264162.P6540134964735305946

/-!
# A264164: 3-smooth numbers whose number of divisors is not 3-smooth.

The programs for A264164, there is no canonical definition to state claims against.
-/

/-! ## A264164.P6669145645076370975

`∩[A003586(n+1), A354181(n+1)]`
-/

namespace A264164.P6669145645076370975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264164.P6669145645076370975

/-! ## A264164.P1068070259434524083

`∩[A055600(n+1)-1, A354181(n+1)]`
-/

namespace A264164.P1068070259434524083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055600 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354181 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A264164.P1068070259434524083

/-!
# A264165: 3-smooth numbers whose number of divisors is 3-smooth.

The programs for A264165, there is no canonical definition to state claims against.
-/

/-! ## A264165.P4087465474228928247

`∩[A252044(n+1), A284698(n+1)]/6`
-/

namespace A264165.P4087465474228928247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284698 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 6

end

end A264165.P4087465474228928247

/-! ## A264165.P10808910287032102210

`A120942(n+1)/6`
-/

namespace A264165.P10808910287032102210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120942 (n + 1) : ℚ) / 6

end

end A264165.P10808910287032102210

/-! ## A264165.P14462583323499540071

`record[A065331(n+1)/A065330(A000005(n+1))]`
-/

namespace A264165.P14462583323499540071
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065331 (n + 1) : ℚ) / (A065330 (A000005 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264165.P14462583323499540071

/-! ## A264165.P12335091988492655772

`A255591(A120942(n+1))`
-/

namespace A264165.P12335091988492655772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A120942 (n + 1)).toNat

end

end A264165.P12335091988492655772

/-! ## A264165.P4913609947261577289

`A255591(∩[A033845(n+1), A284698(n+1)])`
-/

namespace A264165.P4913609947261577289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033845 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284698 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A264165.P4913609947261577289

/-!
# A264166: Number of (n+1) X (1+1) arrays of permutations of 0..n*2+1 with each element having directed index change 0,0 0,1 1,0 -2,-1 or -1,-2.

The programs for A264166, the canonical program `A264166.P16021622730537967700` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264166 has offset 1).

The definition of A264166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264166.P16021622730537967700

`a(n-1)+a(n-2)+2*a(n-3)+a(n-4)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=4, a(2)=8, a(3)=16, a(4)=33, a(5)=69`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A264166

/-- `a(n-1)+a(n-2)+2*a(n-3)+a(n-4)+a(n-5)-a(n-6)` -/
def P16021622730537967700.Spec : Prop :=
  ∀ n, P16021622730537967700.a n = A264166 (n + 1)

theorem P16021622730537967700.correct : P16021622730537967700.Spec := by
  intro n
  simp only [A264166, Nat.add_sub_cancel]

end A264166

/-! ## A264166.P11407827817492456329

`A297224(∑[n+1]+2)`
-/

namespace A264166.P11407827817492456329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264166.P11407827817492456329

namespace A264166

/-- `A297224(∑[n+1]+2)` -/
def P11407827817492456329.Spec : Prop :=
  ∀ n, P11407827817492456329.a n = A264166 (n + 1)

end A264166

/-! ## A264166.P8465786485203358103

`record[A297224(A286159(n+1)+2)]`
-/

namespace A264166.P8465786485203358103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (A286159 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264166.P8465786485203358103

namespace A264166

/-- `record[A297224(A286159(n+1)+2)]` -/
def P8465786485203358103.Spec : Prop :=
  ∀ n, P8465786485203358103.a n = A264166 (n + 1)

end A264166

/-! ## A264166.P3608354222453561149

`record[floor(A297224(n+3)/A297224(n+1))]`
-/

namespace A264166.P3608354222453561149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A297224 (n + 3) : ℚ) / (A297224 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264166.P3608354222453561149

namespace A264166

/-- `record[floor(A297224(n+3)/A297224(n+1))]` -/
def P3608354222453561149.Spec : Prop :=
  ∀ n, P3608354222453561149.a n = A264166 (n + 1)

end A264166

/-! ## A264166.P2804549890128915719

`A264285(∑[n]+1)`
-/

namespace A264166.P2804549890128915719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264285 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A264166.P2804549890128915719

namespace A264166

/-- `A264285(∑[n]+1)` -/
def P2804549890128915719.Spec : Prop :=
  ∀ n, P2804549890128915719.a n = A264166 (n + 1)

end A264166

/-!
# A264167: Number of (n+1) X (2+1) arrays of permutations of 0..n*3+2 with each element having directed index change 0,0 0,1 1,0 -2,-1 or -1,-2.

The programs for A264167, there is no canonical definition to state claims against.
-/

/-! ## A264167.P9887991230661792696

`A264172(∑[n+1]+2)`
-/

namespace A264167.P9887991230661792696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264167.P9887991230661792696

/-! ## A264167.P7688851143756637737

`record[A010054(n)*A264172(n+2)]`
-/

namespace A264167.P7688851143756637737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A264172 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264167.P7688851143756637737

/-! ## A264167.P12100497302978649418

`record[A264172(A072735(n+2))]`
-/

namespace A264167.P12100497302978649418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (A072735 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264167.P12100497302978649418

/-! ## A264167.P2529966867439888756

`record[A264172(Δ[A003453(n+5)])]`
-/

namespace A264167.P2529966867439888756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264167.P2529966867439888756

/-! ## A264167.P3253691771179784673

`record[A264172(lt[A297224(n+1), n])]`
-/

namespace A264167.P3253691771179784673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297224 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264167.P3253691771179784673

/-!
# A264168: Number of (n+1)X(3+1) arrays of permutations of 0..n*4+3 with each element having directed index change 0,0 0,1 1,0 -2,-1 or -1,-2.

The programs for A264168, there is no canonical definition to state claims against.
-/

/-! ## A264168.P4378469755047230111

`A264172(∑[n+2]+4)`
-/

namespace A264168.P4378469755047230111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264168.P4378469755047230111

/-! ## A264168.P12311373850901387505

`A264172(A167614(n+1))+A025442(n)`
-/

namespace A264168.P12311373850901387505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (A167614 (n + 1)).toNat + A025442 n

end

end A264168.P12311373850901387505

/-! ## A264168.P8205430814190002719

`or(A008437(n), A264172(A167614(n+1)))`
-/

namespace A264168.P8205430814190002719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008437 n) (A264172 (A167614 (n + 1)).toNat)

end

end A264168.P8205430814190002719

/-! ## A264168.P8271262905780500984

`or(A025460(n), A264172(A167614(n+1)))`
-/

namespace A264168.P8271262905780500984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025460 n) (A264172 (A167614 (n + 1)).toNat)

end

end A264168.P8271262905780500984

/-! ## A264168.P1344618911679471655

`or(A114699(n), A264172(A167614(n+1)))`
-/

namespace A264168.P1344618911679471655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A114699 n) (A264172 (A167614 (n + 1)).toNat)

end

end A264168.P1344618911679471655

/-!
# A264169: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having directed index change 0,0 0,1 1,0 -2,-1 or -1,-2.

The programs for A264169, there is no canonical definition to state claims against.
-/

/-! ## A264169.P12820694594237349656

`A264172(A374004(n+1))`
-/

namespace A264169.P12820694594237349656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (A374004 (n + 1)).toNat

end

end A264169.P12820694594237349656

/-! ## A264169.P8810572164749615736

`A264172(A141214(n)+7)`
-/

namespace A264169.P8810572164749615736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (A141214 n + 7).toNat

end

end A264169.P8810572164749615736

/-! ## A264169.P2189833816623505863

`A264172(A052905(n)+9)`
-/

namespace A264169.P2189833816623505863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (A052905 n + 9).toNat

end

end A264169.P2189833816623505863

/-! ## A264169.P17707114682358006415

`A264172(A055999(n)+10)`
-/

namespace A264169.P17707114682358006415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (A055999 n + 10).toNat

end

end A264169.P17707114682358006415

/-! ## A264169.P7659815405695853750

`A264172(A167614(n+2)+1)`
-/

namespace A264169.P7659815405695853750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (A167614 (n + 2) + 1).toNat

end

end A264169.P7659815405695853750

/-!
# A264170: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having directed index change 0,0 0,1 1,0 -2,-1 or -1,-2.

The programs for A264170, there is no canonical definition to state claims against.
-/

/-! ## A264170.P5092773616684630154

`A264172(A374005(n+1))`
-/

namespace A264170.P5092773616684630154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (A374005 (n + 1)).toNat

end

end A264170.P5092773616684630154

/-! ## A264170.P16218344281093356333

`A264172(A155212(n)+13)`
-/

namespace A264170.P16218344281093356333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (A155212 n + 13).toNat

end

end A264170.P16218344281093356333

/-! ## A264170.P8226404884969153801

`A264172(eq[6, A131818(n+1)])`
-/

namespace A264170.P8226404884969153801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264170.P8226404884969153801

/-! ## A264170.P10964232130385761891

`A264172(eq[5, A193592(n)]-Δ[n²])`
-/

namespace A264170.P10964232130385761891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))).toNat

end

end A264170.P10964232130385761891

/-! ## A264170.P6231671306892274534

`A264172(Δ[A264443(n)])`
-/

namespace A264170.P6231671306892274534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (f1 (n + 1) - f1 n).toNat

end

end A264170.P6231671306892274534

/-!
# A264171: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having directed index change 0,0 0,1 1,0 -2,-1 or -1,-2.

The programs for A264171, there is no canonical definition to state claims against.
-/

/-! ## A264171.P5718174320107835259

`A264172(A374007(n+1))`
-/

namespace A264171.P5718174320107835259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (A374007 (n + 1)).toNat

end

end A264171.P5718174320107835259

/-! ## A264171.P8128533654755796633

`A264172(A161680(n+6)+6)`
-/

namespace A264171.P8128533654755796633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (A161680 (n + 6) + 6).toNat

end

end A264171.P8128533654755796633

/-! ## A264171.P14760679673442342436

`A264172(eq[7, A131818(n+1)])`
-/

namespace A264171.P14760679673442342436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264171.P14760679673442342436

/-! ## A264171.P5887949670614899616

`A264172(A052905(n+4)-1-Δ[n²])`
-/

namespace A264171.P5887949670614899616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (A052905 (n + 4) - 1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A264171.P5887949670614899616

/-! ## A264171.P569873016281051973

`A264172(eq[5, A193592(n)])`
-/

namespace A264171.P569873016281051973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264171.P569873016281051973

/-!
# A264173: Number T(n,k) of permutations of [n] with exactly k (possibly overlapping) occurrences of the consecutive pattern 1324; triangle T(n,k), n>=0, 0<=k<=max(0,floor(n/2-1)), read by rows.

The programs for A264173, there is no canonical definition to state claims against.
-/

/-! ## A264173.P1501095768510075843

`A264319(n)+A083914(A042317(n))`
-/

namespace A264173.P1501095768510075843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264319 n + A083914 (A042317 n).toNat

end

end A264173.P1501095768510075843

/-! ## A264173.P14384416579154868382

`A264319(n)+A165877(A120037(n))`
-/

namespace A264173.P14384416579154868382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264319 n + A165877 (A120037 n).toNat

end

end A264173.P14384416579154868382

/-! ## A264173.P11157769819507687341

`A286561(A014363(n))+A264319(n)`
-/

namespace A264173.P11157769819507687341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286561 (A014363 n).toNat + A264319 n

end

end A264173.P11157769819507687341

/-! ## A264173.P16285823566502841159

`A332671(A027688(n))+A264319(n)`
-/

namespace A264173.P16285823566502841159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332671 (A027688 n).toNat + A264319 n

end

end A264173.P16285823566502841159

/-! ## A264173.P4936140235031445438

`A264319(n)+A165877(A244490(n))`
-/

namespace A264173.P4936140235031445438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264319 n + A165877 (A244490 n).toNat

end

end A264173.P4936140235031445438

/-!
# A264174: Number of permutations of [n] with exactly one occurrence of the consecutive pattern 1324.

The programs for A264174, there is no canonical definition to state claims against.
-/

/-! ## A264174.P11016833594871683398

`A264173(A033638(n+3)+2)`
-/

namespace A264174.P11016833594871683398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264173 (A033638 (n + 3) + 2).toNat

end

end A264174.P11016833594871683398

/-! ## A264174.P18409587833366022528

`A264173(A024206(n+2)+4)`
-/

namespace A264174.P18409587833366022528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264173 (A024206 (n + 2) + 4).toNat

end

end A264174.P18409587833366022528

/-! ## A264174.P12410704375491912999

`A264173(A002620(n+1)+n+5)`
-/

namespace A264174.P12410704375491912999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264173 (A002620 (n + 1) + (n + 5 : ℤ)).toNat

end

end A264174.P12410704375491912999

/-! ## A264174.P4208480229882992324

`A264173(A167499(n)-A033638(n))`
-/

namespace A264174.P4208480229882992324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264173 (A167499 n - A033638 n).toNat

end

end A264174.P4208480229882992324

/-!
# A264175: Number of permutations of [n] with exactly two (possibly overlapping) occurrences of the consecutive pattern 1324.

The programs for A264175, there is no canonical definition to state claims against.
-/

/-! ## A264175.P12212495475101024401

`A264173(lt[A132159(3*n+4), A274976(n+1)])`
-/

namespace A264175.P12212495475101024401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132159 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264173 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A264175.P12212495475101024401

/-!
# A264179: Number of permutations of [n] with exactly six (possibly overlapping) occurrences of the consecutive pattern 1324.

The programs for A264179, there is no canonical definition to state claims against.
-/

/-! ## A264179.P11205038179803339603

`A264173(eq[6, A055087(n)]+2)`
-/

namespace A264179.P11205038179803339603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264173 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A264179.P11205038179803339603

/-!
# A264184: Number of (n+1)X(2+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 1,-1 or 2,2.

The programs for A264184, the canonical program `A264184.P10399417770699243344` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A264184 has offset 1).

The definition of A264184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A264184.P10399417770699243344

`A031923(3*(n+1))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A264184

/-- `A031923(3*(n+1))` -/
def P10399417770699243344.Spec : Prop :=
  ∀ n, P10399417770699243344.a n = A264184 (n + 1)

theorem P10399417770699243344.correct : P10399417770699243344.Spec := by
  intro n
  simp only [A264184, Nat.add_sub_cancel]

end A264184

/-! ## A264184.P8465885624296844939

`record[A031923(A006368(n+2))]`
-/

namespace A264184.P8465885624296844939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031923 (A006368 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264184.P8465885624296844939

namespace A264184

/-- `record[A031923(A006368(n+2))]` -/
def P8465885624296844939.Spec : Prop :=
  ∀ n, P8465885624296844939.a n = A264184 (n + 1)

end A264184

/-! ## A264184.P10052498317164702300

`abs(A031923(A008486(n+1))-2)+2`
-/

namespace A264184.P10052498317164702300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A031923 (A008486 (n + 1)).toNat - 2| + 2

end

end A264184.P10052498317164702300

namespace A264184

/-- `abs(A031923(A008486(n+1))-2)+2` -/
def P10052498317164702300.Spec : Prop :=
  ∀ n, P10052498317164702300.a n = A264184 (n + 1)

end A264184

/-! ## A264184.P2189373005160956834

`A031923(A008486(n+1))+C(n, A002878(n))`
-/

namespace A264184.P2189373005160956834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031923 (A008486 (n + 1)).toNat + (Nat.choose n (A002878 n).toNat : ℤ)

end

end A264184.P2189373005160956834

namespace A264184

/-- `A031923(A008486(n+1))+C(n, A002878(n))` -/
def P2189373005160956834.Spec : Prop :=
  ∀ n, P2189373005160956834.a n = A264184 (n + 1)

end A264184

/-! ## A264184.P2770776312508298159

`A031923(A008486(n+1))+C(n, A167104(n))`
-/

namespace A264184.P2770776312508298159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031923 (A008486 (n + 1)).toNat + (Nat.choose n (A167104 n).toNat : ℤ)

end

end A264184.P2770776312508298159

namespace A264184

/-- `A031923(A008486(n+1))+C(n, A167104(n))` -/
def P2770776312508298159.Spec : Prop :=
  ∀ n, P2770776312508298159.a n = A264184 (n + 1)

end A264184

/-! ## A264184.P4068880685277183511

`A031923(A008486(n+1))/A000005(gcd(n, n+1))`
-/

namespace A264184.P4068880685277183511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031923 (A008486 (n + 1)).toNat : ℚ) / (A000005 (Nat.gcd n (n + 1)) : ℚ)

end

end A264184.P4068880685277183511

namespace A264184

/-- `A031923(A008486(n+1))/A000005(gcd(n, n+1))` -/
def P4068880685277183511.Spec : Prop :=
  ∀ n, P4068880685277183511.a n = (A264184 (n + 1) : ℚ)

end A264184

/-! ## A264184.P17539271187565794252

`A031923(A008486(n+1))/A001222(A032591(n))^n`
-/

namespace A264184.P17539271187565794252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031923 (A008486 (n + 1)).toNat : ℚ) / (A001222 (A032591 n).toNat ^ n : ℚ)

end

end A264184.P17539271187565794252

namespace A264184

/-- `A031923(A008486(n+1))/A001222(A032591(n))^n` -/
def P17539271187565794252.Spec : Prop :=
  ∀ n, P17539271187565794252.a n = (A264184 (n + 1) : ℚ)

end A264184

/-! ## A264184.P2963280490648191080

`A031923(A031193(n+1))%A006044(n+4)`
-/

namespace A264184.P2963280490648191080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031923 (A031193 (n + 1)).toNat) (A006044 (n + 4))

end

end A264184.P2963280490648191080

namespace A264184

/-- `A031923(A031193(n+1))%A006044(n+4)` -/
def P2963280490648191080.Spec : Prop :=
  ∀ n, P2963280490648191080.a n = A264184 (n + 1)

end A264184

/-! ## A264184.P14952851714000587546

`A031923(A008486(n+1))%(A199317(n+1)+2)`
-/

namespace A264184.P14952851714000587546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031923 (A008486 (n + 1)).toNat) (A199317 (n + 1) + 2)

end

end A264184.P14952851714000587546

namespace A264184

/-- `A031923(A008486(n+1))%(A199317(n+1)+2)` -/
def P14952851714000587546.Spec : Prop :=
  ∀ n, P14952851714000587546.a n = A264184 (n + 1)

end A264184

/-!
# A264185: Number of (n+1) X (3+1) arrays of permutations of 0..n*4+3 with each element having index change +-(.,.) 0,0 1,-1 or 2,2.

The programs for A264185, there is no canonical definition to state claims against.
-/

/-! ## A264185.P5635362252315280696

`A209539(n+3)/9`
-/

namespace A264185.P5635362252315280696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209539 (n + 3) : ℚ) / 9

end

end A264185.P5635362252315280696

/-! ## A264185.P663430763519523059

`A264190(∑[n+2]+4)`
-/

namespace A264185.P663430763519523059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A264185.P663430763519523059

/-! ## A264185.P6989836802983055932

`A264190(A167614(n+1))+A151795(n)`
-/

namespace A264185.P6989836802983055932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (A167614 (n + 1)).toNat + A151795 n

end

end A264185.P6989836802983055932

/-! ## A264185.P1482112578358901047

`A264190(A167614(n+1))+A185236(n)`
-/

namespace A264185.P1482112578358901047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (A167614 (n + 1)).toNat + A185236 n

end

end A264185.P1482112578358901047

/-! ## A264185.P6095197094609314306

`A264190(A167614(n+1))+A210717(n)`
-/

namespace A264185.P6095197094609314306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (A167614 (n + 1)).toNat + A210717 n

end

end A264185.P6095197094609314306

/-!
# A264186: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 1,-1 or 2,2.

The programs for A264186, there is no canonical definition to state claims against.
-/

/-! ## A264186.P2102510629491759702

`A264190(∑[n+3]+7)`
-/

namespace A264186.P2102510629491759702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A264186.P2102510629491759702

/-!
# A264187: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 1,-1 or 2,2.

The programs for A264187, there is no canonical definition to state claims against.
-/

/-! ## A264187.P1427353990993915723

`A264190(A374005(n+1))`
-/

namespace A264187.P1427353990993915723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (A374005 (n + 1)).toNat

end

end A264187.P1427353990993915723

/-! ## A264187.P6300697030485615615

`A264190(A155212(n)+13)`
-/

namespace A264187.P6300697030485615615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (A155212 n + 13).toNat

end

end A264187.P6300697030485615615

/-! ## A264187.P6312777400675034076

`A264190(eq[6, A131818(n+1)])`
-/

namespace A264187.P6312777400675034076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264187.P6312777400675034076

/-! ## A264187.P14329671535226560648

`A264190(Δ[A264443(n)])`
-/

namespace A264187.P14329671535226560648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (f1 (n + 1) - f1 n).toNat

end

end A264187.P14329671535226560648

/-! ## A264187.P18394889328836223958

`A264190(eq[4, A193592(n)])`
-/

namespace A264187.P18394889328836223958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264187.P18394889328836223958

/-!
# A264188: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 1,-1 or 2,2.

The programs for A264188, there is no canonical definition to state claims against.
-/

/-! ## A264188.P574543663669005521

`A264190(A374007(n+1))`
-/

namespace A264188.P574543663669005521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (A374007 (n + 1)).toNat

end

end A264188.P574543663669005521

/-! ## A264188.P17314498175060405985

`A264190(eq[7, A131818(n+1)])`
-/

namespace A264188.P17314498175060405985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264188.P17314498175060405985

/-! ## A264188.P9245982952472566271

`A264190(A056119(n)+16)`
-/

namespace A264188.P9245982952472566271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (A056119 n + 16).toNat

end

end A264188.P9245982952472566271

/-! ## A264188.P4983660639944517008

`A264190(eq[3, A219347(n)])`
-/

namespace A264188.P4983660639944517008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264188.P4983660639944517008

/-! ## A264188.P2537689325625206095

`A264190(eq[5, A193592(n)])`
-/

namespace A264188.P2537689325625206095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264188.P2537689325625206095

/-!
# A264189: Number of (n+1) X (7+1) arrays of permutations of 0..n*8+7 with each element having index change +-(.,.) 0,0 1,-1 or 2,2.

The programs for A264189, there is no canonical definition to state claims against.
-/

/-! ## A264189.P18147781948652326922

`A264190(A374008(n+1))`
-/

namespace A264189.P18147781948652326922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (A374008 (n + 1)).toNat

end

end A264189.P18147781948652326922

/-! ## A264189.P8385017226646971334

`A264190(eq[11, A066657(n)])`
-/

namespace A264189.P8385017226646971334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264189.P8385017226646971334

/-! ## A264189.P1486968207884430449

`A264190(A167499(n+5)+2)`
-/

namespace A264189.P1486968207884430449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (A167499 (n + 5) + 2).toNat

end

end A264189.P1486968207884430449

/-! ## A264189.P16920520317586538180

`A264190(A167614(n+5)+4)`
-/

namespace A264189.P16920520317586538180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (A167614 (n + 5) + 4).toNat

end

end A264189.P16920520317586538180

/-! ## A264189.P15156020625286944899

`A264190(A155212(n+2)+15)`
-/

namespace A264189.P15156020625286944899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264190 (A155212 (n + 2) + 15).toNat

end

end A264189.P15156020625286944899

/-!
# A264191: Number of (n+1)X(2+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 0,2 or 2,1.

The programs for A264191, there is no canonical definition to state claims against.
-/

/-! ## A264191.P14412871583419346891

`A264195(∑[n+2])`
-/

namespace A264191.P14412871583419346891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264195 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A264191.P14412871583419346891

/-! ## A264191.P2900895633941909240

`A264195(A000096(n+1))+A185264(n)`
-/

namespace A264191.P2900895633941909240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264195 (A000096 (n + 1)).toNat + A185264 n

end

end A264191.P2900895633941909240

/-! ## A264191.P3540208543777044629

`lcm(A169623(n), A264195(A000096(n+1)))`
-/

namespace A264191.P3540208543777044629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A169623 n) (A264195 (A000096 (n + 1)).toNat)

end

end A264191.P3540208543777044629

/-! ## A264191.P7238263239792716114

`A264195(A000096(n+1))^A290544(n)`
-/

namespace A264191.P7238263239792716114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264195 (A000096 (n + 1)).toNat : ℚ) ^ (A290544 n : ℤ)

end

end A264191.P7238263239792716114

/-!
# A264192: Number of (n+1)X(4+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 0,2 or 2,1.

The programs for A264192, there is no canonical definition to state claims against.
-/

/-! ## A264192.P9629818820978103279

`A264195(Δ[n²]+∑[n+2]+4)`
-/

namespace A264192.P9629818820978103279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264195 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A264192.P9629818820978103279

/-!
# A264193: Number of (n+1)X(5+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 0,2 or 2,1.

The programs for A264193, there is no canonical definition to state claims against.
-/

/-! ## A264193.P7848537987472212014

`A264195(Δ[A264443(n)])`
-/

namespace A264193.P7848537987472212014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264195 (f1 (n + 1) - f1 n).toNat

end

end A264193.P7848537987472212014

/-! ## A264193.P12896546045521058072

`A264195(eq[3, A152157(n)])`
-/

namespace A264193.P12896546045521058072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264195 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264193.P12896546045521058072

/-! ## A264193.P11475086587980835000

`A264195(eq[4, A193592(n)])`
-/

namespace A264193.P11475086587980835000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264195 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264193.P11475086587980835000

/-! ## A264193.P17847558197567530888

`A264195(eq[5, A239144(n)])`
-/

namespace A264193.P17847558197567530888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264195 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264193.P17847558197567530888

/-!
# A264194: Number of (n+1)X(6+1) arrays of permutations of 0..n*7+6 with each element having index change +-(.,.) 0,0 0,2 or 2,1.

The programs for A264194, there is no canonical definition to state claims against.
-/

/-! ## A264194.P12086791657555942077

`A264195(A056119(n)+16)`
-/

namespace A264194.P12086791657555942077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264195 (A056119 n + 16).toNat

end

end A264194.P12086791657555942077

/-! ## A264194.P9785807038785860940

`A264195(eq[3, A219347(n)])`
-/

namespace A264194.P9785807038785860940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264195 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264194.P9785807038785860940

/-! ## A264194.P4837205908112712364

`A264195(eq[5, A193592(n)])`
-/

namespace A264194.P4837205908112712364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264195 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A264194.P4837205908112712364

/-!
# A264195: T(n,k)=Number of (n+1)X(k+1) arrays of permutations of 0..(n+1)*(k+1)-1 with each element having index change +-(.,.) 0,0 0,2 or 2,1.

The programs for A264195, there is no canonical definition to state claims against.
-/

/-! ## A264195.P18208138664047273353

`lcm(A000005(A058702(n)), A143697(n+4))`
-/

namespace A264195.P18208138664047273353
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A058702 n).toNat) (A143697 (n + 4))

end

end A264195.P18208138664047273353

/-!
# A264196: Number of (2+1)X(n+1) arrays of permutations of 0..n*3+2 with each element having index change +-(.,.) 0,0 0,2 or 2,1.

The programs for A264196, there is no canonical definition to state claims against.
-/

/-! ## A264196.P8665799237310276994

`A006498(n+2)*A264111(n+1)`
-/

namespace A264196.P8665799237310276994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006498 (n + 2) * A264111 (n + 1)

end

end A264196.P8665799237310276994

/-! ## A264196.P10975757299222834463

`root(A264197(n+1), 2)*A006498(n+2)`
-/

namespace A264196.P10975757299222834463
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264197 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A006498 (n + 2) : ℝ)

end

end A264196.P10975757299222834463

/-! ## A264196.P10716819044410444165

`A264195(∑[n+1]+2)`
-/

namespace A264196.P10716819044410444165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264195 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A264196.P10716819044410444165

/-! ## A264196.P17254113380607845848

`record[A010054(n+1)*A264195(n+3)]`
-/

namespace A264196.P17254113380607845848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A264195 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A264196.P17254113380607845848

/-!
# A264197: Number of (3+1)X(n+1) arrays of permutations of 0..n*4+3 with each element having index change +-(.,.) 0,0 0,2 or 2,1.

The programs for A264197, there is no canonical definition to state claims against.
-/

/-! ## A264197.P7221827284339540548

`A264111(n+1)²`
-/

namespace A264197.P7221827284339540548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264111 (n + 1) ^ 2

end

end A264197.P7221827284339540548

/-! ## A264197.P6047034351262882346

`A264111(n+1)^A000005(A051698(n))`
-/

namespace A264197.P6047034351262882346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264111 (n + 1) : ℚ) ^ (A000005 (A051698 n).toNat : ℤ)

end

end A264197.P6047034351262882346

/-! ## A264197.P11164607543096022190

`A264111(A000027(n+1))*A264111(n+1)`
-/

namespace A264197.P11164607543096022190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264111 (A000027 (n + 1)).toNat * A264111 (n + 1)

end

end A264197.P11164607543096022190

/-! ## A264197.P7921944825481136877

`A264111(n+1)^A001222(A006881(n+1))`
-/

namespace A264197.P7921944825481136877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264111 (n + 1) : ℚ) ^ (A001222 (A006881 (n + 1)).toNat : ℤ)

end

end A264197.P7921944825481136877

/-! ## A264197.P11016116058079869541

`A264111(n+1)^A000005(A306220(n+1))`
-/

namespace A264197.P11016116058079869541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264111 (n + 1) : ℚ) ^ (A000005 (A306220 (n + 1)).toNat : ℤ)

end

end A264197.P11016116058079869541

/-! ## A264197.P2367264952262657917

`A264196(n+1)/A189145(n+2)*A264196(n+1)`
-/

namespace A264197.P2367264952262657917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264196 (n + 1) : ℚ) / (A189145 (n + 2) : ℚ) * (A264196 (n + 1) : ℚ)

end

end A264197.P2367264952262657917

/-!
# A264198: Number of (4+1)X(n+1) arrays of permutations of 0..n*5+4 with each element having index change +-(.,.) 0,0 0,2 or 2,1.

The programs for A264198, there is no canonical definition to state claims against.
-/

/-! ## A264198.P15309965672604861261

`A264111(n+1)*A264112(n+1)`
-/

namespace A264198.P15309965672604861261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264111 (n + 1) * A264112 (n + 1)

end

end A264198.P15309965672604861261

/-! ## A264198.P15298818849348318115

`sqrt(A264197(n+1))*A264112(n+1)`
-/

namespace A264198.P15298818849348318115
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264197 (n + 1) : ℝ) * (A264112 (n + 1) : ℝ)

end

end A264198.P15298818849348318115

/-! ## A264198.P15854558511370608299

`root(A264197(n+1), A020639(2*(n+1)))*A264112(n+1)`
-/

namespace A264198.P15854558511370608299
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A264197 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ)) * (A264112 (n + 1) : ℝ)

end

end A264198.P15854558511370608299

/-! ## A264198.P11341542285418912820

`sqrt(A264197(n+1)*A264199(n+1))`
-/

namespace A264198.P11341542285418912820
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A264197 (n + 1) * A264199 (n + 1) : ℝ)

end

end A264198.P11341542285418912820

/-! ## A264198.P14269891483063675757

`A264110(∑[n]+1)*A264112(n+1)`
-/

namespace A264198.P14269891483063675757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264110 (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A264112 (n + 1)

end

end A264198.P14269891483063675757

/-!
# A264199: Number of (5+1)X(n+1) arrays of permutations of 0..n*6+5 with each element having index change +-(.,.) 0,0 0,2 or 2,1.

The programs for A264199, there is no canonical definition to state claims against.
-/

/-! ## A264199.P1447726877794555980

`A264112(n+1)²`
-/

namespace A264199.P1447726877794555980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264112 (n + 1) ^ 2

end

end A264199.P1447726877794555980

/-! ## A264199.P290852726669044570

`A264112(n+1)^(A107711(n)+1)`
-/

namespace A264199.P290852726669044570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264112 (n + 1) : ℚ) ^ (A107711 n + 1 : ℤ)

end

end A264199.P290852726669044570

/-! ## A264199.P8420972097257672624

`A264198(n+1)²/A264197(n+1)`
-/

namespace A264199.P8420972097257672624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264198 (n + 1) ^ 2 : ℚ) / (A264197 (n + 1) : ℚ)

end

end A264199.P8420972097257672624

/-! ## A264199.P7902972143445268879

`A264112(n+1)^A020639(A002203(n))`
-/

namespace A264199.P7902972143445268879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264112 (n + 1) : ℚ) ^ (A020639 (A002203 n).toNat : ℤ)

end

end A264199.P7902972143445268879

/-! ## A264199.P3585205748530380273

`A264112(n+1)^A000005(A045380(n+1))`
-/

namespace A264199.P3585205748530380273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264112 (n + 1) : ℚ) ^ (A000005 (A045380 (n + 1)).toNat : ℤ)

end

end A264199.P3585205748530380273

