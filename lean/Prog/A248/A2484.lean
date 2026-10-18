import SequenceMachineLib
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B010.C000
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
import Seq.Opaque.C025

/-!
# A248400: Noncongruent squarefree numbers n with A248394(n)/d(n) = -2, where d(n) = A000005(n).

The programs for A248400, there is no canonical definition to state claims against.
-/

/-! ## A248400.P3860294351609556812

`eq[-A000005(A004277(n)), A248394(n)]`
-/

namespace A248400.P3860294351609556812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A000005 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248400.P3860294351609556812

/-! ## A248400.P18178566558408351042

`A263012(A127739(n+1)+A001096(n))`
-/

namespace A248400.P18178566558408351042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263012 (A127739 (n + 1) + A001096 n).toNat

end

end A248400.P18178566558408351042

/-!
# A248403: Noncongruent squarefree numbers n with A248395(n)/d(n) = 1, where d(n) = A000005(n).

The programs for A248403, there is no canonical definition to state claims against.
-/

/-! ## A248403.P11082404755167318955

`lt[A266640(n+1), A347658(A135481(n+1))]`
-/

namespace A248403.P11082404755167318955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347658 (A135481 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A248403.P11082404755167318955

/-!
# A248404: Noncongruent squarefree numbers n with A248395(n)/d(n) = -1, where d(n) = A000005(n).

The programs for A248404, there is no canonical definition to state claims against.
-/

/-! ## A248404.P5798720197716642760

`A220100(A166479(n+1))`
-/

namespace A248404.P5798720197716642760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220100 (A166479 (n + 1)).toNat

end

end A248404.P5798720197716642760

/-!
# A248407: Squarefree noncongruent numbers.

The programs for A248407, there is no canonical definition to state claims against.
-/

/-! ## A248407.P13324943955049181385

`record[∏{p}[A165564(n+1), #]]`
-/

namespace A248407.P13324943955049181385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165564 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248407.P13324943955049181385

/-! ## A248407.P357491548038675278

`record[A007947(A165564(n+1))]`
-/

namespace A248407.P357491548038675278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A165564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248407.P357491548038675278

/-! ## A248407.P8022265953165607669

`filter[A165564(n+1), A008966(#)]`
-/

namespace A248407.P8022265953165607669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A248407.P8022265953165607669

/-! ## A248407.P18356639452521285265

`filter[A165564(n+1), A323154(#)]`
-/

namespace A248407.P18356639452521285265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A248407.P18356639452521285265

/-! ## A248407.P12045050941609831599

`∩[A034044(n+1), A165564(n+1)]`
-/

namespace A248407.P12045050941609831599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248407.P12045050941609831599

/-! ## A248407.P7692339133626572235

`∩[A005117(n+1), A165564(n+1)]`
-/

namespace A248407.P7692339133626572235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248407.P7692339133626572235

/-! ## A248407.P11199872205109426613

`∩[A064594(n+1), A165564(n+1)]`
-/

namespace A248407.P11199872205109426613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165564 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A248407.P11199872205109426613

/-! ## A248407.P10461355865471118505

`eq[cos(A319510(n+1)), A003557(n+1)]+1`
-/

namespace A248407.P10461355865471118505
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (A319510 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A248407.P10461355865471118505

/-!
# A248409: Least prime of the form x^2+13*n^2.

The programs for A248409, there is no canonical definition to state claims against.
-/

/-! ## A248409.P11090281058691099638

`A056896(13*(n+1)²)`
-/

namespace A248409.P11090281058691099638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056896 (13 * (n + 1) ^ 2)

end

end A248409.P11090281058691099638

/-!
# A248410: a(n) = number of polynomials a_k*x^k + ... + a_1*x + n with k > 0, integer coefficients and only distinct integer roots.

The programs for A248410, there is no canonical definition to state claims against.
-/

/-! ## A248410.P16178634824083455621

`A139250(A262095((n+1)*p?[round(8*n/7)]²))`
-/

namespace A248410.P16178634824083455621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (A262095 ((n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2).toNat).toNat

end

end A248410.P16178634824083455621

/-! ## A248410.P5019616012945155253

`A023211(∏{e}[n+1, C(#+2, 2)]%A252232(n+1))`
-/

namespace A248410.P5019616012945155253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023211 (Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 2) 2 : ℕ) : ℤ) (A252232 (n + 1))).toNat

end

end A248410.P5019616012945155253

/-! ## A248410.P7512248389083459279

`A023211(A007425(n+1)%A252232(n+1))`
-/

namespace A248410.P7512248389083459279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023211 (Int.tmod (A007425 (n + 1)) (A252232 (n + 1))).toNat

end

end A248410.P7512248389083459279

/-! ## A248410.P16727815475540201969

`A136059(A111332(2*(n+2))+A007425(n+1))`
-/

namespace A248410.P16727815475540201969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136059 (A111332 (2 * (n + 2)) + A007425 (n + 1)).toNat

end

end A248410.P16727815475540201969

/-!
# A248418: Least number k such that k*tan(Pi/k) - Pi < 1/n.

The programs for A248418, there is no canonical definition to state claims against.
-/

/-! ## A248418.P17334150737835036225

`A003057(A162782(n+8)+A008706(n+3))`
-/

namespace A248418.P17334150737835036225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A162782 (n + 8) + A008706 (n + 3)).toNat

end

end A248418.P17334150737835036225

/-! ## A248418.P9016737832981290307

`A003057(A187715(n+4)+A162782(n+8))`
-/

namespace A248418.P9016737832981290307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A187715 (n + 4) + A162782 (n + 8)).toNat

end

end A248418.P9016737832981290307

/-! ## A248418.P17021229225642153823

`A000196(A034096(n+3)-A111850(n+9))`
-/

namespace A248418.P17021229225642153823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A034096 (n + 3) - A111850 (n + 9)).toNat

end

end A248418.P17021229225642153823

/-! ## A248418.P2337073832328473494

`A000196(A034096(n+3)-A111890(n+9))`
-/

namespace A248418.P2337073832328473494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A034096 (n + 3) - A111890 (n + 9)).toNat

end

end A248418.P2337073832328473494

/-! ## A248418.P13669167133617707071

`A003056(5*n+14)+A020639(A167499(8*n+9))`
-/

namespace A248418.P13669167133617707071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (5 * n + 14) + A020639 (A167499 (8 * n + 9)).toNat

end

end A248418.P13669167133617707071

/-! ## A248418.P7033577524112394223

`A003056(5*n+14)+A020639(A030978(8*n+10))`
-/

namespace A248418.P7033577524112394223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (5 * n + 14) + A020639 (A030978 (8 * n + 10)).toNat

end

end A248418.P7033577524112394223

/-!
# A248419: Numbers k such that A248418(k+1) = A248418(k).

The programs for A248419, the canonical program `A248419.P9185861201192963104` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248419 has offset 1).

The definition of A248419 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248419.P9185861201192963104

`comp[A248421(n+3)-2]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A248419

/-- `comp[A248421(n+3)-2]` -/
def P9185861201192963104.Spec : Prop :=
  ∀ n, (P9185861201192963104.a n : ℤ) = A248419 (n + 1)

theorem P9185861201192963104.correct : P9185861201192963104.Spec := by
  intro n
  simp only [A248419, Nat.add_sub_cancel]

end A248419

/-! ## A248419.P13588704686668236156

`comp[∑[A248421(n+5)%A248421(n+4)]]`
-/

namespace A248419.P13588704686668236156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248421 (n + 5)) (A248421 (n + 4))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A248419.P13588704686668236156

namespace A248419

/-- `comp[∑[A248421(n+5)%A248421(n+4)]]` -/
def P13588704686668236156.Spec : Prop :=
  ∀ n, (P13588704686668236156.a n : ℤ) = A248419 (n + 1)

end A248419

/-! ## A248419.P18019647155212028498

`n+1+A000267(A137910(n+1))`
-/

namespace A248419.P18019647155212028498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A000267 (A137910 (n + 1)).toNat

end

end A248419.P18019647155212028498

namespace A248419

/-- `n+1+A000267(A137910(n+1))` -/
def P18019647155212028498.Spec : Prop :=
  ∀ n, P18019647155212028498.a n = A248419 (n + 1)

end A248419

/-! ## A248419.P10437044378803410641

`A186383(n+1)+gcd(2, A087201(n+3))`
-/

namespace A248419.P10437044378803410641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186383 (n + 1) + (Int.gcd 2 (A087201 (n + 3)) : ℤ)

end

end A248419.P10437044378803410641

namespace A248419

/-- `A186383(n+1)+gcd(2, A087201(n+3))` -/
def P10437044378803410641.Spec : Prop :=
  ∀ n, P10437044378803410641.a n = A248419 (n + 1)

end A248419

/-! ## A248419.P13626232122381801680

`A186383(n+1)+A061906(A062279(n))`
-/

namespace A248419.P13626232122381801680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186383 (n + 1) + A061906 (A062279 n).toNat

end

end A248419.P13626232122381801680

namespace A248419

/-- `A186383(n+1)+A061906(A062279(n))` -/
def P13626232122381801680.Spec : Prop :=
  ∀ n, P13626232122381801680.a n = A248419 (n + 1)

end A248419

/-! ## A248419.P4984152618381345190

`A186383(n+1)+A001222(A094745(n+1))`
-/

namespace A248419.P4984152618381345190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186383 (n + 1) + A001222 (A094745 (n + 1)).toNat

end

end A248419.P4984152618381345190

namespace A248419

/-- `A186383(n+1)+A001222(A094745(n+1))` -/
def P4984152618381345190.Spec : Prop :=
  ∀ n, P4984152618381345190.a n = A248419 (n + 1)

end A248419

/-! ## A248419.P18079724619543008339

`A186383(n+1)+A001222(A157173(n+1))`
-/

namespace A248419.P18079724619543008339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186383 (n + 1) + A001222 (A157173 (n + 1)).toNat

end

end A248419.P18079724619543008339

namespace A248419

/-- `A186383(n+1)+A001222(A157173(n+1))` -/
def P18079724619543008339.Spec : Prop :=
  ∀ n, P18079724619543008339.a n = A248419 (n + 1)

end A248419

/-! ## A248419.P4364146730497224510

`eq[1, A267084(A318775(n))]-2`
-/

namespace A248419.P4364146730497224510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (A318775 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 2

end

end A248419.P4364146730497224510

namespace A248419

/-- `eq[1, A267084(A318775(n))]-2` -/
def P4364146730497224510.Spec : Prop :=
  ∀ n, P4364146730497224510.a n = A248419 (n + 1)

end A248419

/-!
# A248420: Numbers k such that A248418(k+1) = A248418(k) + 1.

The programs for A248420, the canonical program `A248420.P8447675986398564391` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248420 has offset 1).

The definition of A248420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248420.P8447675986398564391

`A248421(n+6)-2`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A248420

/-- `A248421(n+6)-2` -/
def P8447675986398564391.Spec : Prop :=
  ∀ n, P8447675986398564391.a n = A248420 (n + 1)

theorem P8447675986398564391.correct : P8447675986398564391.Spec := by
  intro n
  simp only [A248420, Nat.add_sub_cancel]

end A248420

/-! ## A248420.P16469143381206065243

`∑[abs(Δ[A248421(n+5)])]`
-/

namespace A248420.P16469143381206065243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248421 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248420.P16469143381206065243

namespace A248420

/-- `∑[abs(Δ[A248421(n+5)])]` -/
def P16469143381206065243.Spec : Prop :=
  ∀ n, P16469143381206065243.a n = A248420 (n + 1)

end A248420

/-! ## A248420.P14667742105575087239

`∑[A000027(Δ[A248421(n+5)])]`
-/

namespace A248420.P14667742105575087239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248421 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248420.P14667742105575087239

namespace A248420

/-- `∑[A000027(Δ[A248421(n+5)])]` -/
def P14667742105575087239.Spec : Prop :=
  ∀ n, P14667742105575087239.a n = A248420 (n + 1)

end A248420

/-! ## A248420.P56311633500194435

`∑[A028310(Δ[A248421(n+5)])]`
-/

namespace A248420.P56311633500194435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248421 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248420.P56311633500194435

namespace A248420

/-- `∑[A028310(Δ[A248421(n+5)])]` -/
def P56311633500194435.Spec : Prop :=
  ∀ n, P56311633500194435.a n = A248420 (n + 1)

end A248420

/-! ## A248420.P8570497454232695114

`∑[Δ[A248421(n+5)]%A007918(n)]`
-/

namespace A248420.P8570497454232695114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248421 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A007918 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248420.P8570497454232695114

namespace A248420

/-- `∑[Δ[A248421(n+5)]%A007918(n)]` -/
def P8570497454232695114.Spec : Prop :=
  ∀ n, P8570497454232695114.a n = A248420 (n + 1)

end A248420

/-! ## A248420.P10649969379088310496

`∑[A248421(n+6)%A248421(n+5)]`
-/

namespace A248420.P10649969379088310496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248421 (n + 6)) (A248421 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248420.P10649969379088310496

namespace A248420

/-- `∑[A248421(n+6)%A248421(n+5)]` -/
def P10649969379088310496.Spec : Prop :=
  ∀ n, P10649969379088310496.a n = A248420 (n + 1)

end A248420

/-! ## A248420.P10160131416376435839

`∑[A000007(n+1)+Δ[A248421(n+5)]]`
-/

namespace A248420.P10160131416376435839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248421 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248420.P10160131416376435839

namespace A248420

/-- `∑[A000007(n+1)+Δ[A248421(n+5)]]` -/
def P10160131416376435839.Spec : Prop :=
  ∀ n, P10160131416376435839.a n = A248420 (n + 1)

end A248420

/-! ## A248420.P10585112224552124160

`∑[A000045(((-1)^n)²)*Δ[A248421(n+5)]]`
-/

namespace A248420.P10585112224552124160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248421 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((-1) ^ n) ^ 2).toNat * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248420.P10585112224552124160

namespace A248420

/-- `∑[A000045(((-1)^n)²)*Δ[A248421(n+5)]]` -/
def P10585112224552124160.Spec : Prop :=
  ∀ n, P10585112224552124160.a n = A248420 (n + 1)

end A248420

/-! ## A248420.P12805107876675661002

`∑[A000032((-1)^(2*n))*Δ[A248421(n+5)]]`
-/

namespace A248420.P12805107876675661002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248421 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 ((-1) ^ (2 * n)).toNat * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248420.P12805107876675661002

namespace A248420

/-- `∑[A000032((-1)^(2*n))*Δ[A248421(n+5)]]` -/
def P12805107876675661002.Spec : Prop :=
  ∀ n, P12805107876675661002.a n = A248420 (n + 1)

end A248420

/-! ## A248420.P17631223549392499093

`∑[A014963(4*n+6)*Δ[A248421(n+5)]]`
-/

namespace A248420.P17631223549392499093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248421 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248420.P17631223549392499093

namespace A248420

/-- `∑[A014963(4*n+6)*Δ[A248421(n+5)]]` -/
def P17631223549392499093.Spec : Prop :=
  ∀ n, P17631223549392499093.a n = A248420 (n + 1)

end A248420

/-! ## A248420.P12043883219135885169

`∑[A000194(Δ[A248421(n+5)]²)]`
-/

namespace A248420.P12043883219135885169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248421 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248420.P12043883219135885169

namespace A248420

/-- `∑[A000194(Δ[A248421(n+5)]²)]` -/
def P12043883219135885169.Spec : Prop :=
  ∀ n, P12043883219135885169.a n = A248420 (n + 1)

end A248420

/-! ## A248420.P4693619807687090983

`record[(n+1)*(A248418(n+4)-A248418(n+3))]`
-/

namespace A248420.P4693619807687090983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A248418 (n + 4) - A248418 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248420.P4693619807687090983

namespace A248420

/-- `record[(n+1)*(A248418(n+4)-A248418(n+3))]` -/
def P4693619807687090983.Spec : Prop :=
  ∀ n, P4693619807687090983.a n = A248420 (n + 1)

end A248420

/-!
# A248421: a(n) = floor( 1/(n*tan(Pi/n) - Pi) ).

The programs for A248421, the canonical program `A248421.P747775703092991021` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248421 has offset 3).

The definition of A248421 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(1/((n+3)*tan(π/(n+3))-π))` (program `A248421.P747775703092991021`, by `A248421.P747775703092991021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248421.P747775703092991021

`floor(1/((n+3)*tan(π/(n+3))-π))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A248421

/-- `floor(1/((n+3)*tan(π/(n+3))-π))` -/
def P747775703092991021.Spec : Prop :=
  ∀ n, P747775703092991021.a n = A248421 (n + 3)

theorem P747775703092991021.correct : P747775703092991021.Spec := by
  intro n
  simp only [A248421, Nat.add_sub_cancel]

end A248421

/-! ## A248421.P10494188619227581618

`record[A130520(n)-A185255(n)]`
-/

namespace A248421.P10494188619227581618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 n - A185255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248421.P10494188619227581618

namespace A248421

/-- `record[A130520(n)-A185255(n)]` -/
def P10494188619227581618.Spec : Prop :=
  ∀ n, P10494188619227581618.a n = A248421 (n + 3)

end A248421

/-! ## A248421.P17143847159929527416

`record[A111856(A319846(n+1)²)]`
-/

namespace A248421.P17143847159929527416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111856 (A319846 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248421.P17143847159929527416

namespace A248421

/-- `record[A111856(A319846(n+1)²)]` -/
def P17143847159929527416.Spec : Prop :=
  ∀ n, P17143847159929527416.a n = A248421 (n + 3)

end A248421

/-! ## A248421.P16112680272485846772

`record[A111856(A319847(n+1)²)]`
-/

namespace A248421.P16112680272485846772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111856 (A319847 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248421.P16112680272485846772

namespace A248421

/-- `record[A111856(A319847(n+1)²)]` -/
def P16112680272485846772.Spec : Prop :=
  ∀ n, P16112680272485846772.a n = A248421 (n + 3)

end A248421

/-! ## A248421.P8025625333483274636

`∑[∑[A007814(A299276(n+1))]]`
-/

namespace A248421.P8025625333483274636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A299276 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248421.P8025625333483274636

namespace A248421

/-- `∑[∑[A007814(A299276(n+1))]]` -/
def P8025625333483274636.Spec : Prop :=
  ∀ n, P8025625333483274636.a n = A248421 (n + 3)

end A248421

/-!
# A248422: Even integers concatenated with themselves.

The programs for A248422, the canonical program `A248422.P13301175043225490051` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248422 has offset 1).

The definition of A248422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248422.P17337764789704281344

`A001704(2*(n+1))-1`
-/

namespace A248422.P17337764789704281344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001704 (2 * (n + 1)) - 1

end

end A248422.P17337764789704281344

namespace A248422

/-- `A001704(2*(n+1))-1` -/
def P17337764789704281344.Spec : Prop :=
  ∀ n, P17337764789704281344.a n = A248422 (n + 1)

end A248422

/-! ## A248422.P13301175043225490051

`A127421(2*n+3)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A248422

/-- `A127421(2*n+3)-1` -/
def P13301175043225490051.Spec : Prop :=
  ∀ n, P13301175043225490051.a n = A248422 (n + 1)

theorem P13301175043225490051.correct : P13301175043225490051.Spec := by
  intro n
  simp only [A248422, Nat.add_sub_cancel]

end A248422

/-! ## A248422.P16498457524710129579

`2*(A019550(n+1)-(n+1))`
-/

namespace A248422.P16498457524710129579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A019550 (n + 1) - (n + 1 : ℤ))

end

end A248422.P16498457524710129579

namespace A248422

/-- `2*(A019550(n+1)-(n+1))` -/
def P16498457524710129579.Spec : Prop :=
  ∀ n, P16498457524710129579.a n = A248422 (n + 1)

end A248422

/-! ## A248422.P1322975814164822190

`2*(A309809(n+1)-(n+2))`
-/

namespace A248422.P1322975814164822190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A309809 (n + 1) - (n + 2 : ℤ))

end

end A248422.P1322975814164822190

namespace A248422

/-- `2*(A309809(n+1)-(n+2))` -/
def P1322975814164822190.Spec : Prop :=
  ∀ n, P1322975814164822190.a n = A248422 (n + 1)

end A248422

/-! ## A248422.P17072779129755203951

`xor(1, A001704(A000027(2*(n+1))))`
-/

namespace A248422.P17072779129755203951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A001704 (A000027 (2 * (n + 1))).toNat)

end

end A248422.P17072779129755203951

namespace A248422

/-- `xor(1, A001704(A000027(2*(n+1))))` -/
def P17072779129755203951.Spec : Prop :=
  ∀ n, P17072779129755203951.a n = A248422 (n + 1)

end A248422

/-! ## A248422.P8825122212055283507

`abs(A127421((A016969(n)+1)/3+1)-1)`
-/

namespace A248422.P8825122212055283507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127421 (SequenceMachineLib.roundAway ((A016969 n + 1 : ℚ) / 3 + 1)).toNat - 1|

end

end A248422.P8825122212055283507

namespace A248422

/-- `abs(A127421((A016969(n)+1)/3+1)-1)` -/
def P8825122212055283507.Spec : Prop :=
  ∀ n, P8825122212055283507.a n = A248422 (n + 1)

end A248422

/-! ## A248422.P3400940836900359033

`A030656(n+1)-1`
-/

namespace A248422.P3400940836900359033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030656 (n + 1) - 1

end

end A248422.P3400940836900359033

namespace A248422

/-- `A030656(n+1)-1` -/
def P3400940836900359033.Spec : Prop :=
  ∀ n, P3400940836900359033.a n = A248422 (n + 1)

end A248422

/-! ## A248422.P5849103894166905451

`A020338(2*(n+1))`
-/

namespace A248422.P5849103894166905451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (2 * (n + 1))

end

end A248422.P5849103894166905451

namespace A248422

/-- `A020338(2*(n+1))` -/
def P5849103894166905451.Spec : Prop :=
  ∀ n, P5849103894166905451.a n = A248422 (n + 1)

end A248422

/-! ## A248422.P11418067779729996783

`record[A020338(A004442(n)+1)]`
-/

namespace A248422.P11418067779729996783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (A004442 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248422.P11418067779729996783

namespace A248422

/-- `record[A020338(A004442(n)+1)]` -/
def P11418067779729996783.Spec : Prop :=
  ∀ n, P11418067779729996783.a n = A248422 (n + 1)

end A248422

/-! ## A248422.P5335233801385263263

`record[A020338(2*A133310(n))]`
-/

namespace A248422.P5335233801385263263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (2 * A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248422.P5335233801385263263

namespace A248422

/-- `record[A020338(2*A133310(n))]` -/
def P5335233801385263263.Spec : Prop :=
  ∀ n, P5335233801385263263.a n = A248422 (n + 1)

end A248422

/-! ## A248422.P8462861659836385859

`record[A020338(2*A328399(n))]`
-/

namespace A248422.P8462861659836385859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020338 (2 * A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248422.P8462861659836385859

namespace A248422

/-- `record[A020338(2*A328399(n))]` -/
def P8462861659836385859.Spec : Prop :=
  ∀ n, P8462861659836385859.a n = A248422 (n + 1)

end A248422

/-! ## A248422.P13050353348665442297

`A033999(2*n+1)+A030656(n+1)`
-/

namespace A248422.P13050353348665442297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A030656 (n + 1)

end

end A248422.P13050353348665442297

namespace A248422

/-- `A033999(2*n+1)+A030656(n+1)` -/
def P13050353348665442297.Spec : Prop :=
  ∀ n, P13050353348665442297.a n = A248422 (n + 1)

end A248422

/-! ## A248422.P724928026065052997

`A033999(2*n+1)+A001704(2*(n+1))`
-/

namespace A248422.P724928026065052997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A001704 (2 * (n + 1))

end

end A248422.P724928026065052997

namespace A248422

/-- `A033999(2*n+1)+A001704(2*(n+1))` -/
def P724928026065052997.Spec : Prop :=
  ∀ n, P724928026065052997.a n = A248422 (n + 1)

end A248422

/-! ## A248422.P15372370718424002684

`A275238(2*(n+1))-1`
-/

namespace A248422.P15372370718424002684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275238 (2 * (n + 1)) - 1

end

end A248422.P15372370718424002684

namespace A248422

/-- `A275238(2*(n+1))-1` -/
def P15372370718424002684.Spec : Prop :=
  ∀ n, P15372370718424002684.a n = A248422 (n + 1)

end A248422

/-! ## A248422.P11927997849644734951

`2*A074993(2*(n+1))`
-/

namespace A248422.P11927997849644734951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074993 (2 * (n + 1))

end

end A248422.P11927997849644734951

namespace A248422

/-- `2*A074993(2*(n+1))` -/
def P11927997849644734951.Spec : Prop :=
  ∀ n, P11927997849644734951.a n = A248422 (n + 1)

end A248422

/-! ## A248422.P11708953021971226182

`A248378(4*n+2)-1`
-/

namespace A248422.P11708953021971226182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248378 (4 * n + 2) - 1

end

end A248422.P11708953021971226182

namespace A248422

/-- `A248378(4*n+2)-1` -/
def P11708953021971226182.Spec : Prop :=
  ∀ n, P11708953021971226182.a n = A248422 (n + 1)

end A248422

/-! ## A248422.P5978550218580833552

`record[Δ[A127421(A099375(n))]]`
-/

namespace A248422.P5978550218580833552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127421 (A099375 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248422.P5978550218580833552

namespace A248422

/-- `record[Δ[A127421(A099375(n))]]` -/
def P5978550218580833552.Spec : Prop :=
  ∀ n, P5978550218580833552.a n = A248422 (n + 1)

end A248422

/-!
# A248423: Multiples of 4 with digits backwards.

The programs for A248423, there is no canonical definition to state claims against.
-/

/-! ## A248423.P11687297910709039462

`A004086(4*n)`
-/

namespace A248423.P11687297910709039462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (4 * n)

end

end A248423.P11687297910709039462

/-! ## A248423.P83355602615467426

`A004086(A008586(n))+and(2, n²)`
-/

namespace A248423.P83355602615467426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A008586 n).toNat + (Nat.land 2 (n ^ 2) : ℤ)

end

end A248423.P83355602615467426

/-! ## A248423.P15585918507380685114

`A004093(2*n)`
-/

namespace A248423.P15585918507380685114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (2 * n)

end

end A248423.P15585918507380685114

/-! ## A248423.P17971810773291132931

`A056964(4*n)-4*n`
-/

namespace A248423.P17971810773291132931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (4 * n) - (4 * n : ℤ)

end

end A248423.P17971810773291132931

/-! ## A248423.P1984670748007849642

`A004093(A005843(n))/A007318(C(2, n))`
-/

namespace A248423.P1984670748007849642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004093 (A005843 n).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A248423.P1984670748007849642

/-! ## A248423.P4641073803504850377

`4*n-A056965(4*n)`
-/

namespace A248423.P4641073803504850377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A056965 (4 * n)

end

end A248423.P4641073803504850377

/-! ## A248423.P567002630259807391

`xor(4*n, A256756(4*n))`
-/

namespace A248423.P567002630259807391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (4 * n : ℤ) (A256756 (4 * n))

end

end A248423.P567002630259807391

/-! ## A248423.P1602029698589470439

`A061601(A267193(4*n))`
-/

namespace A248423.P1602029698589470439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 (A267193 (4 * n)).toNat

end

end A248423.P1602029698589470439

/-! ## A248423.P521340112461175202

`A103168(A008706(8*n))`
-/

namespace A248423.P521340112461175202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (A008706 (8 * n)).toNat

end

end A248423.P521340112461175202

/-! ## A248423.P18359009190837536861

`A391365((2*n+1)*(n+3))`
-/

namespace A248423.P18359009190837536861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391365 ((2 * n + 1) * (n + 3))

end

end A248423.P18359009190837536861

/-!
# A248425: Number of "squares" (repeated identical blocks) in the n-th Fibonacci word.

The programs for A248425, there is no canonical definition to state claims against.
-/

/-! ## A248425.P4024439478949964619

`∑[A135663(A087188(n²))]`
-/

namespace A248425.P4024439478949964619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135663 (A087188 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248425.P4024439478949964619

/-! ## A248425.P13020450767526616409

`∑[∑[A003002(A309302(n))]]`
-/

namespace A248425.P13020450767526616409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A309302 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248425.P13020450767526616409

/-! ## A248425.P6032773836038772922

`∑[A135661(record[A073202(n)])]`
-/

namespace A248425.P6032773836038772922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073202 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248425.P6032773836038772922

/-! ## A248425.P12718101997042909019

`∑[A000196(A278135(n+2))]`
-/

namespace A248425.P12718101997042909019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A278135 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248425.P12718101997042909019

/-! ## A248425.P7025422673205702975

`∑[∑[A121902(A297708(n)-1)]]`
-/

namespace A248425.P7025422673205702975
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A297708 n - 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248425.P7025422673205702975

/-!
# A248426: Number of permutations of length n avoiding the pattern 1342 and with 1 appearing before n.

The programs for A248426, there is no canonical definition to state claims against.
-/

/-! ## A248426.P6422529933718793275

`record[A103221(floor(floor((n/8)^n)/2))]`
-/

namespace A248426.P6422529933718793275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 ⌊(⌊((n : ℚ) / 8) ^ n⌋ : ℚ) / 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248426.P6422529933718793275

/-! ## A248426.P13153756713226499421

`A065033(∑[∑[A107264(n)]])`
-/

namespace A248426.P13153756713226499421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107264 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A248426.P13153756713226499421

/-!
# A248427: Circumference of the (n,n)-knight graph.

The programs for A248427, the canonical program `A248427.P3950945098184206332` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248427 has offset 3).

The definition of A248427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248427.P3950945098184206332

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=8, a(1)=14, a(2)=24, a(3)=36, a(4)=48, a(5)=64`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A248427

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P3950945098184206332.Spec : Prop :=
  ∀ n, P3950945098184206332.a n = A248427 (n + 3)

theorem P3950945098184206332.correct : P3950945098184206332.Spec := by
  intro n
  simp only [A248427, Nat.add_sub_cancel]

end A248427

/-! ## A248427.P15844609571575411050

`(n-2)%2+(n+3)²-1`
-/

namespace A248427.P15844609571575411050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 2) 2 + (((n + 3) ^ 2 : ℤ) - 1)

end

end A248427.P15844609571575411050

namespace A248427

/-- `(n-2)%2+(n+3)²-1` -/
def P15844609571575411050.Spec : Prop :=
  ∀ n, P15844609571575411050.a n = A248427 (n + 3)

end A248427

/-! ## A248427.P6977306172495663457

`(n+2)*(n+4)-(2-n)%2`
-/

namespace A248427.P6977306172495663457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 4) : ℤ) - Int.tmod (2 - (n : ℤ)) 2

end

end A248427.P6977306172495663457

namespace A248427

/-- `(n+2)*(n+4)-(2-n)%2` -/
def P6977306172495663457.Spec : Prop :=
  ∀ n, P6977306172495663457.a n = A248427 (n + 3)

end A248427

/-! ## A248427.P15114476656138339471

`(n+3)²-val(n+3, xor(1, n+2))`
-/

namespace A248427.P15114476656138339471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - (SequenceMachineLib.valuation (n + 3) (Nat.xor 1 (n + 2)) : ℤ)

end

end A248427.P15114476656138339471

namespace A248427

/-- `(n+3)²-val(n+3, xor(1, n+2))` -/
def P15114476656138339471.Spec : Prop :=
  ∀ n, P15114476656138339471.a n = A248427 (n + 3)

end A248427

/-! ## A248427.P14353955826360321545

`(n+3)²-and(n+1, floor((n+3)/(n+1)))`
-/

namespace A248427.P14353955826360321545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - Int.land (n + 1 : ℤ) ⌊(n + 3 : ℚ) / (n + 1 : ℚ)⌋

end

end A248427.P14353955826360321545

namespace A248427

/-- `(n+3)²-and(n+1, floor((n+3)/(n+1)))` -/
def P14353955826360321545.Spec : Prop :=
  ∀ n, P14353955826360321545.a n = A248427 (n + 3)

end A248427

/-! ## A248427.P5909991337721488034

`A267458(A267460(n))+n*(n+5)+7`
-/

namespace A248427.P5909991337721488034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267458 (A267460 n).toNat + (n * (n + 5) + 7 : ℤ)

end

end A248427.P5909991337721488034

namespace A248427

/-- `A267458(A267460(n))+n*(n+5)+7` -/
def P5909991337721488034.Spec : Prop :=
  ∀ n, P5909991337721488034.a n = A248427 (n + 3)

end A248427

/-! ## A248427.P932588904672125815

`(n+3)²-A033687(A266220(n))`
-/

namespace A248427.P932588904672125815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) ^ 2 : ℤ) - A033687 (A266220 n).toNat

end

end A248427.P932588904672125815

namespace A248427

/-- `(n+3)²-A033687(A266220(n))` -/
def P932588904672125815.Spec : Prop :=
  ∀ n, P932588904672125815.a n = A248427 (n + 3)

end A248427

/-! ## A248427.P14159903159541415377

`record[A020703(A103517(A299232(n+1)))]`
-/

namespace A248427.P14159903159541415377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020703 (A103517 (A299232 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248427.P14159903159541415377

namespace A248427

/-- `record[A020703(A103517(A299232(n+1)))]` -/
def P14159903159541415377.Spec : Prop :=
  ∀ n, P14159903159541415377.a n = A248427 (n + 3)

end A248427

/-!
# A248428: Number of length n+2 0..3 arrays with every three consecutive terms having the sum of some two elements equal to twice the third.

The programs for A248428, the canonical program `A248428.P12605456157937816709` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248428 has offset 1).

The definition of A248428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 986 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248428.P12605456157937816709

`4*∑[2*a(n-3)]` with `a(0)=4, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A248428

/-- `4*∑[2*a(n-3)]` -/
def P12605456157937816709.Spec : Prop :=
  ∀ n, (P12605456157937816709.a n : ℤ) = A248428 (n + 1)

theorem P12605456157937816709.correct : P12605456157937816709.Spec := by
  intro n
  simp only [A248428, Nat.add_sub_cancel]

end A248428

/-! ## A248428.P17118355990927139869

`4*(A029747(n+3)+1)`
-/

namespace A248428.P17118355990927139869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A029747 (n + 3) + 1)

end

end A248428.P17118355990927139869

namespace A248428

/-- `4*(A029747(n+3)+1)` -/
def P17118355990927139869.Spec : Prop :=
  ∀ n, P17118355990927139869.a n = A248428 (n + 1)

end A248428

/-! ## A248428.P4983086028894789539

`2*(A200672(n+3)+5)`
-/

namespace A248428.P4983086028894789539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A200672 (n + 3) + 5)

end

end A248428.P4983086028894789539

namespace A248428

/-- `2*(A200672(n+3)+5)` -/
def P4983086028894789539.Spec : Prop :=
  ∀ n, P4983086028894789539.a n = A248428 (n + 1)

end A248428

/-! ## A248428.P8528709050252857333

`A246074(2*(n+6))+4`
-/

namespace A248428.P8528709050252857333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (2 * (n + 6)) + 4

end

end A248428.P8528709050252857333

namespace A248428

/-- `A246074(2*(n+6))+4` -/
def P8528709050252857333.Spec : Prop :=
  ∀ n, P8528709050252857333.a n = A248428 (n + 1)

end A248428

/-! ## A248428.P18257597020284608170

`a(n-1)+2*a(n-3)-2*a(n-4)` with `a(0)=16, a(1)=20, a(2)=24, a(3)=28`
-/

namespace A248428.P18257597020284608170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 20, 24, 28] fun n a =>
  a (n - 1) + 2 * a (n - 3) - 2 * a (n - 4)

end

end A248428.P18257597020284608170

namespace A248428

/-- `a(n-1)+2*a(n-3)-2*a(n-4)` -/
def P18257597020284608170.Spec : Prop :=
  ∀ n, P18257597020284608170.a n = A248428 (n + 1)

end A248428

/-! ## A248428.P8216097226260373082

`A248433(∑[n+3]+1)`
-/

namespace A248428.P8216097226260373082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A248428.P8216097226260373082

namespace A248428

/-- `A248433(∑[n+3]+1)` -/
def P8216097226260373082.Spec : Prop :=
  ∀ n, P8216097226260373082.a n = A248428 (n + 1)

end A248428

/-!
# A248429: Number of length n+2 0..4 arrays with every three consecutive terms having the sum of some two elements equal to twice the third.

The programs for A248429, the canonical program `A248429.P13996543522747922926` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248429 has offset 1).

The definition of A248429 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 492 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248429.P13996543522747922926

`A072944(n+7)+5`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A248429

/-- `A072944(n+7)+5` -/
def P13996543522747922926.Spec : Prop :=
  ∀ n, P13996543522747922926.a n = A248429 (n + 1)

theorem P13996543522747922926.correct : P13996543522747922926.Spec := by
  intro n
  simp only [A248429, Nat.add_sub_cancel]

end A248429

/-! ## A248429.P9379265817692989503

`A248428(2*(n+2))+1`
-/

namespace A248429.P9379265817692989503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248428 (2 * (n + 2)) + 1

end

end A248429.P9379265817692989503

namespace A248429

/-- `A248428(2*(n+2))+1` -/
def P9379265817692989503.Spec : Prop :=
  ∀ n, P9379265817692989503.a n = A248429 (n + 1)

end A248429

/-! ## A248429.P4359878660450655095

`A200672(2*n+9)+8`
-/

namespace A248429.P4359878660450655095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200672 (2 * n + 9) + 8

end

end A248429.P4359878660450655095

namespace A248429

/-- `A200672(2*n+9)+8` -/
def P4359878660450655095.Spec : Prop :=
  ∀ n, P4359878660450655095.a n = A248429 (n + 1)

end A248429

/-! ## A248429.P12389312048508169846

`a(n-1)+4*a(n-3)-4*a(n-4)` with `a(0)=29, a(1)=45, a(2)=69, a(3)=101`
-/

namespace A248429.P12389312048508169846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [29, 45, 69, 101] fun n a =>
  a (n - 1) + 4 * a (n - 3) - 4 * a (n - 4)

end

end A248429.P12389312048508169846

namespace A248429

/-- `a(n-1)+4*a(n-3)-4*a(n-4)` -/
def P12389312048508169846.Spec : Prop :=
  ∀ n, P12389312048508169846.a n = A248429 (n + 1)

end A248429

/-! ## A248429.P826375332166431773

`A248433(∑[n+4]+3)`
-/

namespace A248429.P826375332166431773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A248429.P826375332166431773

namespace A248429

/-- `A248433(∑[n+4]+3)` -/
def P826375332166431773.Spec : Prop :=
  ∀ n, P826375332166431773.a n = A248429 (n + 1)

end A248429

/-! ## A248429.P8600901467105190695

`or(1, A248433(A155212(n)+5))`
-/

namespace A248429.P8600901467105190695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A248433 (A155212 n + 5).toNat)

end

end A248429.P8600901467105190695

namespace A248429

/-- `or(1, A248433(A155212(n)+5))` -/
def P8600901467105190695.Spec : Prop :=
  ∀ n, P8600901467105190695.a n = A248429 (n + 1)

end A248429

/-!
# A248430: Number of length n+2 0..5 arrays with every three consecutive terms having the sum of some two elements equal to twice the third.

The programs for A248430, there is no canonical definition to state claims against.
-/

/-! ## A248430.P2798233114160171397

`A248433(∑[n+5]+6)`
-/

namespace A248430.P2798233114160171397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A248430.P2798233114160171397

/-! ## A248430.P4995098543624045846

`lcm(2, A248433(Δ[A023545(n+1)]))`
-/

namespace A248430.P4995098543624045846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A248433 (f1 (n + 1) - f1 n).toNat)

end

end A248430.P4995098543624045846

/-! ## A248430.P10308703172093032335

`record[root(A248433(n+11), A248433(n+15))²]`
-/

namespace A248430.P10308703172093032335
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A248433 (n + 11) : ℝ) ^ (1 / (A248433 (n + 15) : ℝ))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248430.P10308703172093032335

/-! ## A248430.P2287906365514366741

`or(A000038(n), A248433(A000217(n+5)-4))`
-/

namespace A248430.P2287906365514366741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A248433 (A000217 (n + 5) - 4).toNat)

end

end A248430.P2287906365514366741

/-! ## A248430.P10955133907547065266

`A248433(Δ[A023545(n+1)])%A293368(n+4)`
-/

namespace A248430.P10955133907547065266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248433 (f1 (n + 1) - f1 n).toNat) (A293368 (n + 4))

end

end A248430.P10955133907547065266

/-! ## A248430.P17542364647033216873

`A248433(A000217(n+5)-4)*A286852(A000040(n+1))`
-/

namespace A248430.P17542364647033216873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A000217 (n + 5) - 4).toNat * A286852 (A000040 (n + 1)).toNat

end

end A248430.P17542364647033216873

/-!
# A248431: Number of length n+2 0..6 arrays with every three consecutive terms having the sum of some two elements equal to twice the third.

The programs for A248431, there is no canonical definition to state claims against.
-/

/-! ## A248431.P4470775890427260690

`A248433((n+4)²-∑[n+1]+1)`
-/

namespace A248431.P4470775890427260690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A248431.P4470775890427260690

/-! ## A248431.P18074321131518855660

`or(1, A248433(A052905(n+3)))`
-/

namespace A248431.P18074321131518855660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A248433 (A052905 (n + 3)).toNat)

end

end A248431.P18074321131518855660

/-! ## A248431.P10656486701407445727

`or(1, A248433(A000124(n+6)-6))`
-/

namespace A248431.P10656486701407445727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A248433 (A000124 (n + 6) - 6).toNat)

end

end A248431.P10656486701407445727

/-! ## A248431.P10163595645323140927

`A007318(∑[n])*A248433(A000124(n+6)-6)`
-/

namespace A248431.P10163595645323140927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A248433 (A000124 (n + 6) - 6).toNat

end

end A248431.P10163595645323140927

/-! ## A248431.P14752692807094051493

`A001511(2*n+1)*A248433(A052905(n+3))`
-/

namespace A248431.P14752692807094051493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 1) * A248433 (A052905 (n + 3)).toNat

end

end A248431.P14752692807094051493

/-! ## A248431.P12333158807166187137

`A248433(A000124(n+6)-6)%A248432(n+1)`
-/

namespace A248431.P12333158807166187137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248433 (A000124 (n + 6) - 6).toNat) (A248432 (n + 1))

end

end A248431.P12333158807166187137

/-! ## A248431.P18323463280592585943

`A248433(A000124(n+6)-6)+A000035(2*(n+1))`
-/

namespace A248431.P18323463280592585943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A000124 (n + 6) - 6).toNat + A000035 (2 * (n + 1))

end

end A248431.P18323463280592585943

/-! ## A248431.P16620433770794982495

`A248433(A000124(n+6)-6)/((-1)^A007318(n))²`
-/

namespace A248431.P16620433770794982495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248433 (A000124 (n + 6) - 6).toNat : ℚ) / ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2

end

end A248431.P16620433770794982495

/-! ## A248431.P15815802173570997288

`A014963(A017233(n))*A248433(A000124(n+6)-6)`
-/

namespace A248431.P15815802173570997288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017233 n).toNat * A248433 (A000124 (n + 6) - 6).toNat

end

end A248431.P15815802173570997288

/-! ## A248431.P6262418838965587290

`A248433(A000124(n+6)-6)+A117371(A033203(n+1))`
-/

namespace A248431.P6262418838965587290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A000124 (n + 6) - 6).toNat + A117371 (A033203 (n + 1)).toNat

end

end A248431.P6262418838965587290

/-! ## A248431.P6959653269785306604

`A248433(A000124(n+6)-6)^A007318(((-1)^A007318(n))²)`
-/

namespace A248431.P6959653269785306604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248433 (A000124 (n + 6) - 6).toNat : ℚ) ^ (A007318 (SequenceMachineLib.roundAway (((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2)).toNat : ℤ)

end

end A248431.P6959653269785306604

/-! ## A248431.P14834434902087773901

`A225650(A118135(n))*A248433(A000124(n+6)-6)`
-/

namespace A248431.P14834434902087773901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225650 (A118135 n).toNat * A248433 (A000124 (n + 6) - 6).toNat

end

end A248431.P14834434902087773901

/-!
# A248432: Number of length n+2 0..7 arrays with every three consecutive terms having the sum of some two elements equal to twice the third.

The programs for A248432, there is no canonical definition to state claims against.
-/

/-! ## A248432.P154993331211520197

`A248433(A055999(n+4))`
-/

namespace A248432.P154993331211520197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A055999 (n + 4)).toNat

end

end A248432.P154993331211520197

/-! ## A248432.P6849147492151952395

`A248433(Δ[A023551(n+2)])`
-/

namespace A248432.P6849147492151952395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (f1 (n + 1) - f1 n).toNat

end

end A248432.P6849147492151952395

/-! ## A248432.P9362340435993724679

`A248433(A046691(n+5)-2)`
-/

namespace A248432.P9362340435993724679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A046691 (n + 5) - 2).toNat

end

end A248432.P9362340435993724679

/-! ## A248432.P13072371684651140086

`A248433(A000096(n+6)-5)`
-/

namespace A248432.P13072371684651140086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A000096 (n + 6) - 5).toNat

end

end A248432.P13072371684651140086

/-! ## A248432.P8838685644758718925

`A248433(A000124(n+7)-7)`
-/

namespace A248432.P8838685644758718925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A000124 (n + 7) - 7).toNat

end

end A248432.P8838685644758718925

/-! ## A248432.P6926142955892206952

`A248433(A002378(n+6)-A167499(n+4))`
-/

namespace A248432.P6926142955892206952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A002378 (n + 6) - A167499 (n + 4)).toNat

end

end A248432.P6926142955892206952

/-!
# A248434: Number of length three 0..n arrays with the sum of two elements equal to twice the third.

The programs for A248434, the canonical program `A248434.P16003224983889302755` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248434 has offset 1).

The definition of A248434 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248434.P16003224983889302755

`a(n-1)+1+6*floor((n+1)/2)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A248434

/-- `a(n-1)+1+6*floor((n+1)/2)` -/
def P16003224983889302755.Spec : Prop :=
  ∀ n, P16003224983889302755.a n = A248434 (n + 1)

theorem P16003224983889302755.correct : P16003224983889302755.Spec := by
  intro n
  simp only [A248434, Nat.add_sub_cancel]

end A248434

/-! ## A248434.P9224349285860777274

`6*floor((n+2)/2)*floor((n+1)/2)+n+2`
-/

namespace A248434.P9224349285860777274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌊(n + 2 : ℚ) / 2⌋ * ⌊(n + 1 : ℚ) / 2⌋ + (n + 2 : ℤ)

end

end A248434.P9224349285860777274

namespace A248434

/-- `6*floor((n+2)/2)*floor((n+1)/2)+n+2` -/
def P9224349285860777274.Spec : Prop :=
  ∀ n, P9224349285860777274.a n = A248434 (n + 1)

end A248434

/-! ## A248434.P6531847279543499115

`∑[a(n-2)+6]` with `a(0)=2, a(1)=7, a(2)=7`
-/

namespace A248434.P6531847279543499115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7, 7] fun n f1 =>
  f1 (n - 2) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248434.P6531847279543499115

namespace A248434

/-- `∑[a(n-2)+6]` -/
def P6531847279543499115.Spec : Prop :=
  ∀ n, (P6531847279543499115.a n : ℤ) = A248434 (n + 1)

end A248434

/-! ## A248434.P17442271793253461025

`xor(1, ∑[or(1, 3*n+2)])`
-/

namespace A248434.P17442271793253461025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248434.P17442271793253461025

namespace A248434

/-- `xor(1, ∑[or(1, 3*n+2)])` -/
def P17442271793253461025.Spec : Prop :=
  ∀ n, (P17442271793253461025.a n : ℤ) = A248434 (n + 1)

end A248434

/-! ## A248434.P865514584481751607

`∑[∑[6-a(n-1)]]` with `a(0)=2, a(1)=5, a(2)=0`
-/

namespace A248434.P865514584481751607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 0] fun n f2 =>
  6 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248434.P865514584481751607

namespace A248434

/-- `∑[∑[6-a(n-1)]]` -/
def P865514584481751607.Spec : Prop :=
  ∀ n, P865514584481751607.a n = A248434 (n + 1)

end A248434

/-! ## A248434.P15072588705762813988

`∑[A271114(ceil(n/2))]`
-/

namespace A248434.P15072588705762813988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248434.P15072588705762813988

namespace A248434

/-- `∑[A271114(ceil(n/2))]` -/
def P15072588705762813988.Spec : Prop :=
  ∀ n, P15072588705762813988.a n = A248434 (n + 1)

end A248434

/-! ## A248434.P12013055345316448711

`xor(1, ∑[A047270(n+1)])`
-/

namespace A248434.P12013055345316448711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248434.P12013055345316448711

namespace A248434

/-- `xor(1, ∑[A047270(n+1)])` -/
def P12013055345316448711.Spec : Prop :=
  ∀ n, P12013055345316448711.a n = A248434 (n + 1)

end A248434

/-! ## A248434.P16951717837339498376

`∑[A019426(A000034(n)+n)]`
-/

namespace A248434.P16951717837339498376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A000034 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248434.P16951717837339498376

namespace A248434

/-- `∑[A019426(A000034(n)+n)]` -/
def P16951717837339498376.Spec : Prop :=
  ∀ n, P16951717837339498376.a n = A248434 (n + 1)

end A248434

/-! ## A248434.P9695829232974557056

`xor(1, A227017(n+2))`
-/

namespace A248434.P9695829232974557056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A227017 (n + 2))

end

end A248434.P9695829232974557056

namespace A248434

/-- `xor(1, A227017(n+2))` -/
def P9695829232974557056.Spec : Prop :=
  ∀ n, P9695829232974557056.a n = A248434 (n + 1)

end A248434

/-! ## A248434.P14274738146810729964

`∑[A160413(A109613(n+1))]`
-/

namespace A248434.P14274738146810729964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (A109613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248434.P14274738146810729964

namespace A248434

/-- `∑[A160413(A109613(n+1))]` -/
def P14274738146810729964.Spec : Prop :=
  ∀ n, P14274738146810729964.a n = A248434 (n + 1)

end A248434

/-! ## A248434.P7610875672923710515

`A008820(A272975(n+2))`
-/

namespace A248434.P7610875672923710515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008820 (A272975 (n + 2)).toNat

end

end A248434.P7610875672923710515

namespace A248434

/-- `A008820(A272975(n+2))` -/
def P7610875672923710515.Spec : Prop :=
  ∀ n, P7610875672923710515.a n = A248434 (n + 1)

end A248434

/-! ## A248434.P11752699109191947665

`A248433(∑[n]+1)`
-/

namespace A248434.P11752699109191947665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A248434.P11752699109191947665

namespace A248434

/-- `A248433(∑[n]+1)` -/
def P11752699109191947665.Spec : Prop :=
  ∀ n, P11752699109191947665.a n = A248434 (n + 1)

end A248434

/-!
# A248435: Number of length 2+2 0..n arrays with every three consecutive terms having the sum of some two elements equal to twice the third.

The programs for A248435, the canonical program `A248435.P12802222838650945265` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248435 has offset 1).

The definition of A248435 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248435.P12802222838650945265

`a(n-1)+a(n-3)-a(n-5)-a(n-7)+a(n-8)` with `a(0)=2, a(1)=9, a(2)=20, a(3)=45, a(4)=70, a(5)=105, a(6)=140, a(7)=189`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A248435

/-- `a(n-1)+a(n-3)-a(n-5)-a(n-7)+a(n-8)` -/
def P12802222838650945265.Spec : Prop :=
  ∀ n, P12802222838650945265.a n = A248435 (n + 1)

theorem P12802222838650945265.correct : P12802222838650945265.Spec := by
  intro n
  simp only [A248435, Nat.add_sub_cancel]

end A248435

/-! ## A248435.P15546036889608583564

`A248433(∑[n+1]+2)`
-/

namespace A248435.P15546036889608583564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A248435.P15546036889608583564

namespace A248435

/-- `A248433(∑[n+1]+2)` -/
def P15546036889608583564.Spec : Prop :=
  ∀ n, P15546036889608583564.a n = A248435 (n + 1)

end A248435

/-! ## A248435.P8201159418376286642

`record[A248433(A133263(n)-n)]`
-/

namespace A248435.P8201159418376286642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A133263 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248435.P8201159418376286642

namespace A248435

/-- `record[A248433(A133263(n)-n)]` -/
def P8201159418376286642.Spec : Prop :=
  ∀ n, P8201159418376286642.a n = A248435 (n + 1)

end A248435

/-! ## A248435.P1505737588944205018

`or(val(n²+1, 2), A248433(A133263(n+1)))`
-/

namespace A248435.P1505737588944205018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (n ^ 2 + 1) 2 : ℤ) (A248433 (A133263 (n + 1)).toNat)

end

end A248435.P1505737588944205018

namespace A248435

/-- `or(val(n²+1, 2), A248433(A133263(n+1)))` -/
def P1505737588944205018.Spec : Prop :=
  ∀ n, P1505737588944205018.a n = A248435 (n + 1)

end A248435

/-! ## A248435.P9730336235192762632

`record[A248433(A133263(A025480(n)))]`
-/

namespace A248435.P9730336235192762632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A133263 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248435.P9730336235192762632

namespace A248435

/-- `record[A248433(A133263(A025480(n)))]` -/
def P9730336235192762632.Spec : Prop :=
  ∀ n, P9730336235192762632.a n = A248435 (n + 1)

end A248435

/-! ## A248435.P10729731230091229251

`A248433(A133263(n+1))%A001538(n)`
-/

namespace A248435.P10729731230091229251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248433 (A133263 (n + 1)).toNat) (A001538 n)

end

end A248435.P10729731230091229251

namespace A248435

/-- `A248433(A133263(n+1))%A001538(n)` -/
def P10729731230091229251.Spec : Prop :=
  ∀ n, P10729731230091229251.a n = A248435 (n + 1)

end A248435

/-! ## A248435.P5692299092252993

`gcd(A000038(n), A248433(A133263(n+1)))`
-/

namespace A248435.P5692299092252993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A248433 (A133263 (n + 1)).toNat)

end

end A248435.P5692299092252993

namespace A248435

/-- `gcd(A000038(n), A248433(A133263(n+1)))` -/
def P5692299092252993.Spec : Prop :=
  ∀ n, (P5692299092252993.a n : ℤ) = A248435 (n + 1)

end A248435

/-! ## A248435.P17901196866105405473

`lcm(A054977(n), A248433(A000096(n)+3))`
-/

namespace A248435.P17901196866105405473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A054977 n) (A248433 (A000096 n + 3).toNat)

end

end A248435.P17901196866105405473

namespace A248435

/-- `lcm(A054977(n), A248433(A000096(n)+3))` -/
def P17901196866105405473.Spec : Prop :=
  ∀ n, (P17901196866105405473.a n : ℤ) = A248435 (n + 1)

end A248435

/-! ## A248435.P12045462076643495260

`A248433(A000096(n)+3)%A155145(n+1)`
-/

namespace A248435.P12045462076643495260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248433 (A000096 n + 3).toNat) (A155145 (n + 1))

end

end A248435.P12045462076643495260

namespace A248435

/-- `A248433(A000096(n)+3)%A155145(n+1)` -/
def P12045462076643495260.Spec : Prop :=
  ∀ n, P12045462076643495260.a n = A248435 (n + 1)

end A248435

/-!
# A248436: Number of length 3+2 0..n arrays with every three consecutive terms having the sum of some two elements equal to twice the third.

The programs for A248436, there is no canonical definition to state claims against.
-/

/-! ## A248436.P11414026386995620711

`A248433(∑[n+2]+4)`
-/

namespace A248436.P11414026386995620711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A248436.P11414026386995620711

/-! ## A248436.P11629734646745097620

`A248433(A167499(n)+n)+(2*n)%2`
-/

namespace A248436.P11629734646745097620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A167499 n + (n : ℤ)).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A248436.P11629734646745097620

/-! ## A248436.P17418939356344349498

`or(A000038(n), A248433(A167614(n+1)))`
-/

namespace A248436.P17418939356344349498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A248433 (A167614 (n + 1)).toNat)

end

end A248436.P17418939356344349498

/-! ## A248436.P10212814075271915826

`A248433(A167614(n+1))+A000007(n+1)`
-/

namespace A248436.P10212814075271915826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A248436.P10212814075271915826

/-! ## A248436.P9774874582546812231

`A248433(A167614(n+1))+A000035(2*n)`
-/

namespace A248436.P9774874582546812231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A248436.P9774874582546812231

/-! ## A248436.P17393187506566171250

`A248433(A167614(n+1))%A248431(n+1)`
-/

namespace A248436.P17393187506566171250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248433 (A167614 (n + 1)).toNat) (A248431 (n + 1))

end

end A248436.P17393187506566171250

/-! ## A248436.P11821215634651099205

`A248433(A046691(n)+7)%A254804(n+1)`
-/

namespace A248436.P11821215634651099205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248433 (A046691 n + 7).toNat) (A254804 (n + 1))

end

end A248436.P11821215634651099205

/-! ## A248436.P9776340631053616420

`or(A248433(A167614(n+1)), A284751(n+1))`
-/

namespace A248436.P9776340631053616420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A248433 (A167614 (n + 1)).toNat) (A284751 (n + 1))

end

end A248436.P9776340631053616420

/-! ## A248436.P2049830440854434444

`lcm(A071935(n+1), A248433(A167499(n)+n))`
-/

namespace A248436.P2049830440854434444
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071935 (n + 1)) (A248433 (A167499 n + (n : ℤ)).toNat)

end

end A248436.P2049830440854434444

/-! ## A248436.P9927657187339808472

`A248433(A167614(n+1))+A195207(A036272(n))`
-/

namespace A248436.P9927657187339808472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A167614 (n + 1)).toNat + A195207 (A036272 n).toNat

end

end A248436.P9927657187339808472

/-! ## A248436.P12851187585098974906

`A248433(A046691(n)+7)%A163604(n)`
-/

namespace A248436.P12851187585098974906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248433 (A046691 n + 7).toNat) (A163604 n)

end

end A248436.P12851187585098974906

/-!
# A248437: Number of length 4+2 0..n arrays with every three consecutive terms having the sum of some two elements equal to twice the third.

The programs for A248437, there is no canonical definition to state claims against.
-/

/-! ## A248437.P3846016504448371356

`A248433(∑[n+3]+7)`
-/

namespace A248437.P3846016504448371356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A248437.P3846016504448371356

/-! ## A248437.P11924854670969445849

`record[A248433(A038722(A027379(n)))]`
-/

namespace A248437.P11924854670969445849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A038722 (A027379 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248437.P11924854670969445849

/-! ## A248437.P14774144977242837527

`A248433(A052905(n)+9)%A016958(n)`
-/

namespace A248437.P14774144977242837527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248433 (A052905 n + 9).toNat) (A016958 n)

end

end A248437.P14774144977242837527

/-! ## A248437.P17924467735735197088

`A248433(A055999(n)+10)%A017510(n)`
-/

namespace A248437.P17924467735735197088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248433 (A055999 n + 10).toNat) (A017510 n)

end

end A248437.P17924467735735197088

/-! ## A248437.P14970304950450964005

`lcm(A248433(A055999(n)+10), A309873(n+1))`
-/

namespace A248437.P14970304950450964005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A248433 (A055999 n + 10).toNat) (A309873 (n + 1))

end

end A248437.P14970304950450964005

/-! ## A248437.P15329153985568188252

`A248433(A167614(n+2)+1)%A050533(n+1)`
-/

namespace A248437.P15329153985568188252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248433 (A167614 (n + 2) + 1).toNat) (A050533 (n + 1))

end

end A248437.P15329153985568188252

/-! ## A248437.P14191736355642649695

`lcm(A071935(n+1), A248433(A167614(n+2)+1))`
-/

namespace A248437.P14191736355642649695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071935 (n + 1)) (A248433 (A167614 (n + 2) + 1).toNat)

end

end A248437.P14191736355642649695

/-! ## A248437.P17336403528211271531

`A248433(A000124(n+3)+3)%A000579(n+9)`
-/

namespace A248437.P17336403528211271531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248433 (A000124 (n + 3) + 3).toNat) (A000579 (n + 9))

end

end A248437.P17336403528211271531

/-!
# A248438: Number of length 5+2 0..n arrays with every three consecutive terms having the sum of some two elements equal to twice the third.

The programs for A248438, there is no canonical definition to state claims against.
-/

/-! ## A248438.P8005959751975863385

`A248433(∑[n+4]+11)`
-/

namespace A248438.P8005959751975863385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A248438.P8005959751975863385

/-! ## A248438.P10439786756046785597

`A248433(A167499(n+3))%A033455(n+2)`
-/

namespace A248438.P10439786756046785597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248433 (A167499 (n + 3)).toNat) (A033455 (n + 2))

end

end A248438.P10439786756046785597

/-! ## A248438.P3045009015078283557

`gcd(A000038(n), A248433(A000217(n+4)+5))`
-/

namespace A248438.P3045009015078283557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A248433 (A000217 (n + 4) + 5).toNat)

end

end A248438.P3045009015078283557

/-! ## A248438.P15565948410315348200

`A248433(A155212(n)+13)%A345629(n+1)`
-/

namespace A248438.P15565948410315348200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248433 (A155212 n + 13).toNat) (A345629 (n + 1))

end

end A248438.P15565948410315348200

/-! ## A248438.P8105992638838525863

`A248433(A000217(n+4)+5)%A096560(n+1)`
-/

namespace A248438.P8105992638838525863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248433 (A000217 (n + 4) + 5).toNat) (A096560 (n + 1))

end

end A248438.P8105992638838525863

/-! ## A248438.P10184329508927214224

`A000041(C(2, 2*n))*A248433(A167499(n+3))`
-/

namespace A248438.P10184329508927214224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A248433 (A167499 (n + 3)).toNat

end

end A248438.P10184329508927214224

/-! ## A248438.P4379741493000385165

`A248433(A155212(n)+13)%A169604(n)`
-/

namespace A248438.P4379741493000385165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248433 (A155212 n + 13).toNat) (A169604 n)

end

end A248438.P4379741493000385165

/-!
# A248439: Number of length 6+2 0..n arrays with every three consecutive terms having the sum of some two elements equal to twice the third.

The programs for A248439, there is no canonical definition to state claims against.
-/

/-! ## A248439.P16300873173714644827

`A248433(A166136(n+4))`
-/

namespace A248439.P16300873173714644827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A166136 (n + 4)).toNat

end

end A248439.P16300873173714644827

/-! ## A248439.P2858058221708548863

`A248433(A167499(n+4)+1)`
-/

namespace A248439.P2858058221708548863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A167499 (n + 4) + 1).toNat

end

end A248439.P2858058221708548863

/-! ## A248439.P12161295145875563359

`A248433(A000124(n+5)+5)`
-/

namespace A248439.P12161295145875563359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A000124 (n + 5) + 5).toNat

end

end A248439.P12161295145875563359

/-! ## A248439.P17419796051484402736

`A248433(A000217(n+5)+6)`
-/

namespace A248439.P17419796051484402736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A000217 (n + 5) + 6).toNat

end

end A248439.P17419796051484402736

/-! ## A248439.P11811985373463199896

`A248433(A161680(n+6)+6)`
-/

namespace A248439.P11811985373463199896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A161680 (n + 6) + 6).toNat

end

end A248439.P11811985373463199896

/-! ## A248439.P9398925805419940444

`A248433(A046691(n+5)-A004273(n+2))`
-/

namespace A248439.P9398925805419940444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A046691 (n + 5) - A004273 (n + 2)).toNat

end

end A248439.P9398925805419940444

/-! ## A248439.P10091988311694732945

`A248433(A002620(n+2)+A002620(n+9))`
-/

namespace A248439.P10091988311694732945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A248439.P10091988311694732945

/-!
# A248440: Number of length 7+2 0..n arrays with every three consecutive terms having the sum of some two elements equal to twice the third.

The programs for A248440, there is no canonical definition to state claims against.
-/

/-! ## A248440.P18208150983773297101

`A248433(A167499(n+5)+2)`
-/

namespace A248440.P18208150983773297101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A167499 (n + 5) + 2).toNat

end

end A248440.P18208150983773297101

/-! ## A248440.P3588395746632729097

`A248433(A000217(n+6)+7)`
-/

namespace A248440.P3588395746632729097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A000217 (n + 6) + 7).toNat

end

end A248440.P3588395746632729097

/-! ## A248440.P2042539186847311585

`A248433(A161680(n+7)+7)`
-/

namespace A248440.P2042539186847311585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A161680 (n + 7) + 7).toNat

end

end A248440.P2042539186847311585

/-! ## A248440.P12969242540724996419

`A248433(A046691(n+7)-A016777(n+4))`
-/

namespace A248440.P12969242540724996419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A046691 (n + 7) - A016777 (n + 4)).toNat

end

end A248440.P12969242540724996419

/-! ## A248440.P16458642653997879921

`A248433(A167614(n+7)-A004273(n+6))`
-/

namespace A248440.P16458642653997879921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248433 (A167614 (n + 7) - A004273 (n + 6)).toNat

end

end A248440.P16458642653997879921

/-!
# A248441: Number of length n+5 0..1 arrays with no three disjoint pairs in any consecutive six terms having the same sum.

The programs for A248441, there is no canonical definition to state claims against.
-/

/-! ## A248441.P2560231914853252614

`A248448(∑[n+1])`
-/

namespace A248441.P2560231914853252614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248441.P2560231914853252614

/-! ## A248441.P6470666583954167704

`record[gcd(A025581(n), A248448(n+1))]`
-/

namespace A248441.P6470666583954167704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A248448 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248441.P6470666583954167704

/-! ## A248441.P3599381109862845753

`record[root(A248448(n+1), A183110(n+1))]`
-/

namespace A248441.P3599381109862845753
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A248448 (n + 1) : ℝ) ^ (1 / (A183110 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248441.P3599381109862845753

/-! ## A248441.P536421272610204986

`record[(2-A049834(n+1))*A248448(n+1)]`
-/

namespace A248441.P536421272610204986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A049834 (n + 1)) * A248448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248441.P536421272610204986

/-! ## A248441.P17642071786332227510

`A248448(A000217(n+1))%A159000(n+1)`
-/

namespace A248441.P17642071786332227510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248448 (A000217 (n + 1)).toNat) (A159000 (n + 1))

end

end A248441.P17642071786332227510

/-!
# A248442: Number of length n+5 0..2 arrays with no three disjoint pairs in any consecutive six terms having the same sum.

The programs for A248442, there is no canonical definition to state claims against.
-/

/-! ## A248442.P5050148960637670110

`A248448(∑[n+2])`
-/

namespace A248442.P5050148960637670110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248442.P5050148960637670110

/-! ## A248442.P16203665004613813765

`record[A248448(A101881(n)+1)]`
-/

namespace A248442.P16203665004613813765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248442.P16203665004613813765

/-! ## A248442.P15505455971101609209

`record[A248448(A000096(A002260(n+1)))]`
-/

namespace A248442.P15505455971101609209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248442.P15505455971101609209

/-! ## A248442.P5959869993805412976

`record[A248448(A000096(A049834(n+1)))]`
-/

namespace A248442.P5959869993805412976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A000096 (A049834 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248442.P5959869993805412976

/-! ## A248442.P8281037937227407559

`record[A248448(A000096(A323241(n+1)))]`
-/

namespace A248442.P8281037937227407559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A000096 (A323241 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248442.P8281037937227407559

/-!
# A248443: Number of length n+5 0..3 arrays with no three disjoint pairs in any consecutive six terms having the same sum.

The programs for A248443, there is no canonical definition to state claims against.
-/

/-! ## A248443.P12019301581526563070

`A248448(∑[n+3]+1)`
-/

namespace A248443.P12019301581526563070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A248443.P12019301581526563070

/-! ## A248443.P5725444403238754671

`record[A248448(A101881(n+2))]`
-/

namespace A248443.P5725444403238754671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A101881 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248443.P5725444403238754671

/-! ## A248443.P3806430137818656846

`record[A248448(A198464(n+1))]`
-/

namespace A248443.P3806430137818656846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248443.P3806430137818656846

/-!
# A248444: Number of length n+5 0..4 arrays with no three disjoint pairs in any consecutive six terms having the same sum.

The programs for A248444, there is no canonical definition to state claims against.
-/

/-! ## A248444.P12210206192071529649

`A248448(A141214(n+1))`
-/

namespace A248444.P12210206192071529649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A141214 (n + 1)).toNat

end

end A248444.P12210206192071529649

/-! ## A248444.P8887845443346636135

`A248448(A027379(n+2))`
-/

namespace A248444.P8887845443346636135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A027379 (n + 2)).toNat

end

end A248444.P8887845443346636135

/-! ## A248444.P18435007733398085755

`A248448(A055998(n+2))`
-/

namespace A248444.P18435007733398085755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A055998 (n + 2)).toNat

end

end A248444.P18435007733398085755

/-! ## A248444.P2282435598511646959

`A248448(A056000(n)+7)`
-/

namespace A248444.P2282435598511646959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A056000 n + 7).toNat

end

end A248444.P2282435598511646959

/-! ## A248444.P1692105745285963763

`A248448(A052905(n+1)+2)`
-/

namespace A248444.P1692105745285963763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A052905 (n + 1) + 2).toNat

end

end A248444.P1692105745285963763

/-!
# A248445: Number of length n+5 0..5 arrays with no three disjoint pairs in any consecutive six terms having the same sum.

The programs for A248445, there is no canonical definition to state claims against.
-/

/-! ## A248445.P17170366520741938628

`A248448(Δ[A264443(n)])`
-/

namespace A248445.P17170366520741938628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (f1 (n + 1) - f1 n).toNat

end

end A248445.P17170366520741938628

/-! ## A248445.P15979756004502290829

`A248448(A046691(n+3))`
-/

namespace A248445.P15979756004502290829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A046691 (n + 3)).toNat

end

end A248445.P15979756004502290829

/-! ## A248445.P9227286834864721166

`A248448(eq[4, A193592(n)])`
-/

namespace A248445.P9227286834864721166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248445.P9227286834864721166

/-! ## A248445.P18186560413267343190

`A248448(Δ[A023545(n+1)])`
-/

namespace A248445.P18186560413267343190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (f1 (n + 1) - f1 n).toNat

end

end A248445.P18186560413267343190

/-! ## A248445.P14243522948804974773

`A248448(A000217(n+5)-4)`
-/

namespace A248445.P14243522948804974773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A000217 (n + 5) - 4).toNat

end

end A248445.P14243522948804974773

/-!
# A248446: Number of length n+5 0..6 arrays with no three disjoint pairs in any consecutive six terms having the same sum.

The programs for A248446, there is no canonical definition to state claims against.
-/

/-! ## A248446.P12354549191078532093

`A248448(A052905(n+3))`
-/

namespace A248446.P12354549191078532093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A052905 (n + 3)).toNat

end

end A248446.P12354549191078532093

/-! ## A248446.P3057778973348116983

`A248448(eq[3, A219347(n)])`
-/

namespace A248446.P3057778973348116983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248446.P3057778973348116983

/-! ## A248446.P13385596998095225207

`A248448(eq[5, A193592(n)])`
-/

namespace A248446.P13385596998095225207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248446.P13385596998095225207

/-! ## A248446.P2636170738057230683

`A248448(Δ[Δ[A006504(n+1)]])`
-/

namespace A248446.P2636170738057230683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (f1 (n + 1) - f1 n).toNat

end

end A248446.P2636170738057230683

/-! ## A248446.P14285840929837834817

`A248448(Δ[A264443(n+1)]-1)`
-/

namespace A248446.P14285840929837834817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (f1 (n + 1) - f1 n - 1).toNat

end

end A248446.P14285840929837834817

/-!
# A248447: Number of length n+5 0..7 arrays with no three disjoint pairs in any consecutive six terms having the same sum.

The programs for A248447, there is no canonical definition to state claims against.
-/

/-! ## A248447.P7439834683856920918

`A248448(∑[a(n-1)+1])` with `a(0)=22, a(1)=8`
-/

namespace A248447.P7439834683856920918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [22, 8] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248447.P7439834683856920918

/-! ## A248447.P1767443122717018407

`A248448(A055999(n+4))`
-/

namespace A248447.P1767443122717018407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A055999 (n + 4)).toNat

end

end A248447.P1767443122717018407

/-! ## A248447.P1796903962141544041

`A248448(eq[4, A219347(n)])`
-/

namespace A248447.P1796903962141544041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248447.P1796903962141544041

/-! ## A248447.P8319868762078019195

`A248448(eq[6, A193592(n)])`
-/

namespace A248447.P8319868762078019195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248447.P8319868762078019195

/-! ## A248447.P2982147662350756977

`A248448(eq[7, A200370(n+1)])`
-/

namespace A248447.P2982147662350756977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248447.P2982147662350756977

/-!
# A248449: Number of length 1+5 0..n arrays with no three disjoint pairs in any consecutive six terms having the same sum.

The programs for A248449, there is no canonical definition to state claims against.
-/

/-! ## A248449.P15803147904432033374

`A248448(∑[n]+1)`
-/

namespace A248449.P15803147904432033374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A248449.P15803147904432033374

/-! ## A248449.P11589620253889766074

`lcm(2, A248448(A000124(n)))`
-/

namespace A248449.P11589620253889766074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A248448 (A000124 n).toNat)

end

end A248449.P11589620253889766074

/-! ## A248449.P1056333031017035555

`record[A010054(n)*A248448(n+1)]`
-/

namespace A248449.P1056333031017035555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A248448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248449.P1056333031017035555

/-! ## A248449.P15115261112850762375

`record[A248448(n+1)/A013612(n)]`
-/

namespace A248449.P15115261112850762375
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248448 (n + 1) : ℚ) / (A013612 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248449.P15115261112850762375

/-! ## A248449.P15570768253622961688

`record[gcd(A002262(n), A248448(n+1))]`
-/

namespace A248449.P15570768253622961688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A248448 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248449.P15570768253622961688

/-!
# A248450: Number of length 2+5 0..n arrays with no three disjoint pairs in any consecutive six terms having the same sum.

The programs for A248450, there is no canonical definition to state claims against.
-/

/-! ## A248450.P17902518734752894616

`A248448(∑[n+1]+2)`
-/

namespace A248450.P17902518734752894616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A248450.P17902518734752894616

/-! ## A248450.P11300413427581960937

`lcm(2, A248448(C(n+2, 2)+2))`
-/

namespace A248450.P11300413427581960937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A248448 (Nat.choose (n + 2) 2 + 2))

end

end A248450.P11300413427581960937

/-! ## A248450.P16715717766627111437

`lcm(2, A248448(A000096(n)+3))`
-/

namespace A248450.P16715717766627111437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A248448 (A000096 n + 3).toNat)

end

end A248450.P16715717766627111437

/-! ## A248450.P1751096781992495185

`A248448(C(n+2, 2)+2)+A000035(2*n)`
-/

namespace A248450.P1751096781992495185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (Nat.choose (n + 2) 2 + 2) + A000035 (2 * n)

end

end A248450.P1751096781992495185

/-! ## A248450.P6412665983673370712

`A248448(A000096(n)+3)%A113640(n+1)`
-/

namespace A248450.P6412665983673370712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248448 (A000096 n + 3).toNat) (A113640 (n + 1))

end

end A248450.P6412665983673370712

/-!
# A248451: Number of length 3+5 0..n arrays with no three disjoint pairs in any consecutive six terms having the same sum.

The programs for A248451, there is no canonical definition to state claims against.
-/

/-! ## A248451.P1383813806653589554

`A248448(∑[n+2]+4)`
-/

namespace A248451.P1383813806653589554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A248451.P1383813806653589554

/-! ## A248451.P17395831528366494577

`lcm(2, A248448(A167614(n+1)))`
-/

namespace A248451.P17395831528366494577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A248448 (A167614 (n + 1)).toNat)

end

end A248451.P17395831528366494577

/-! ## A248451.P4250729991583043612

`A248448(A167614(n+1))+A185255(n)`
-/

namespace A248451.P4250729991583043612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A167614 (n + 1)).toNat + A185255 n

end

end A248451.P4250729991583043612

/-! ## A248451.P112266546870899242

`A248448(A167614(n+1))%A221008(n)`
-/

namespace A248451.P112266546870899242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248448 (A167614 (n + 1)).toNat) (A221008 n)

end

end A248451.P112266546870899242

/-! ## A248451.P12219847830494408321

`A000034(2*n)*A248448(A167614(n+1))`
-/

namespace A248451.P12219847830494408321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A248448 (A167614 (n + 1)).toNat

end

end A248451.P12219847830494408321

/-!
# A248452: Number of length 4+5 0..n arrays with no three disjoint pairs in any consecutive six terms having the same sum.

The programs for A248452, there is no canonical definition to state claims against.
-/

/-! ## A248452.P12667160067922811659

`A248448(A141214(n)+7)`
-/

namespace A248452.P12667160067922811659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A141214 n + 7).toNat

end

end A248452.P12667160067922811659

/-! ## A248452.P7723007774653218438

`A248448(A052905(n)+9)`
-/

namespace A248452.P7723007774653218438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A052905 n + 9).toNat

end

end A248452.P7723007774653218438

/-! ## A248452.P12025852102073544628

`A248448(A055999(n)+10)`
-/

namespace A248452.P12025852102073544628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A055999 n + 10).toNat

end

end A248452.P12025852102073544628

/-! ## A248452.P6601290561282388846

`A248448(A167614(n+2)+1)`
-/

namespace A248452.P6601290561282388846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A167614 (n + 2) + 1).toNat

end

end A248452.P6601290561282388846

/-! ## A248452.P12249283323076803385

`A248448(A166136(n+2)-2)`
-/

namespace A248452.P12249283323076803385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A166136 (n + 2) - 2).toNat

end

end A248452.P12249283323076803385

/-!
# A248453: Number of length 5+5 0..n arrays with no three disjoint pairs in any consecutive six terms having the same sum.

The programs for A248453, there is no canonical definition to state claims against.
-/

/-! ## A248453.P11762696425896458379

`A248448(A167499(n+3))`
-/

namespace A248453.P11762696425896458379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A167499 (n + 3)).toNat

end

end A248453.P11762696425896458379

/-! ## A248453.P6609536129921864389

`A248448(A155212(n)+13)`
-/

namespace A248453.P6609536129921864389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A155212 n + 13).toNat

end

end A248453.P6609536129921864389

/-! ## A248453.P6399384150426564498

`A248448(A000124(n+4)+4)`
-/

namespace A248453.P6399384150426564498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A000124 (n + 4) + 4).toNat

end

end A248453.P6399384150426564498

/-! ## A248453.P1626423037287297820

`A248448(A000096(n+3)+6)`
-/

namespace A248453.P1626423037287297820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A000096 (n + 3) + 6).toNat

end

end A248453.P1626423037287297820

/-! ## A248453.P4641425983732508807

`A248448(A000217(n+4)+5)`
-/

namespace A248453.P4641425983732508807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A000217 (n + 4) + 5).toNat

end

end A248453.P4641425983732508807

/-!
# A248454: Number of length 6+5 0..n arrays with no three disjoint pairs in any consecutive six terms having the same sum.

The programs for A248454, there is no canonical definition to state claims against.
-/

/-! ## A248454.P8228739407436669307

`A248448(A167499(n+4)+1)`
-/

namespace A248454.P8228739407436669307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A167499 (n + 4) + 1).toNat

end

end A248454.P8228739407436669307

/-! ## A248454.P15710844618710726291

`A248448(A000124(n+5)+5)`
-/

namespace A248454.P15710844618710726291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A000124 (n + 5) + 5).toNat

end

end A248454.P15710844618710726291

/-! ## A248454.P1751910827711975543

`A248448(A000217(n+5)+6)`
-/

namespace A248454.P1751910827711975543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A000217 (n + 5) + 6).toNat

end

end A248454.P1751910827711975543

/-! ## A248454.P13609782986561726090

`A248448(A133263(n+6)-(n+2))`
-/

namespace A248454.P13609782986561726090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A133263 (n + 6) - (n + 2 : ℤ)).toNat

end

end A248454.P13609782986561726090

/-! ## A248454.P17984295796319841000

`A248448(A052905(n+4)-A005843(n+1))`
-/

namespace A248454.P17984295796319841000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A052905 (n + 4) - A005843 (n + 1)).toNat

end

end A248454.P17984295796319841000

/-!
# A248455: Number of length 7+5 0..n arrays with no three disjoint pairs in any consecutive six terms having the same sum.

The programs for A248455, there is no canonical definition to state claims against.
-/

/-! ## A248455.P5304568085354878649

`A248448(eq[11, A066657(n)])`
-/

namespace A248455.P5304568085354878649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248455.P5304568085354878649

/-! ## A248455.P383058148535993547

`A248448(A000124(n+6)+6)`
-/

namespace A248455.P383058148535993547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (A000124 (n + 6) + 6).toNat

end

end A248455.P383058148535993547

/-! ## A248455.P1755497262793573627

`A248448(eq[8, A131818(n+1)])`
-/

namespace A248455.P1755497262793573627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248455.P1755497262793573627

/-! ## A248455.P8753648006204842985

`A248448(C(A005843(n+4)-n, 2)-n)`
-/

namespace A248455.P8753648006204842985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248448 (Nat.choose (A005843 (n + 4) - (n : ℤ)).toNat 2 - n)

end

end A248455.P8753648006204842985

/-!
# A248456: Number of length n+2 0..3 arrays with no three consecutive terms having the sum of any two elements equal to twice the third.

The programs for A248456, there is no canonical definition to state claims against.
-/

/-! ## A248456.P4671289178795727889

`A248461(∑[n+3]+1)`
-/

namespace A248456.P4671289178795727889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A248456.P4671289178795727889

/-! ## A248456.P10005578092125421367

`lcm(2, A248461(Δ[A008778(n)]))`
-/

namespace A248456.P10005578092125421367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A248461 (f1 (n + 1) - f1 n).toNat)

end

end A248456.P10005578092125421367

/-! ## A248456.P13064642628495001557

`(n%2)!*A248461(A034856(n+2))`
-/

namespace A248456.P13064642628495001557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A248461 (A034856 (n + 2)).toNat

end

end A248456.P13064642628495001557

/-! ## A248456.P14207163984189009364

`A057427(n+1)*A248461(A034856(n+2))`
-/

namespace A248456.P14207163984189009364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A248461 (A034856 (n + 2)).toNat

end

end A248456.P14207163984189009364

/-! ## A248456.P18397123621533497295

`A248461(A034856(n+2))+A000035(2*n)`
-/

namespace A248456.P18397123621533497295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A034856 (n + 2)).toNat + A000035 (2 * n)

end

end A248456.P18397123621533497295

/-! ## A248456.P7309487671537539597

`A248461(A034856(n+2))%A202643(n+1)`
-/

namespace A248456.P7309487671537539597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248461 (A034856 (n + 2)).toNat) (A202643 (n + 1))

end

end A248456.P7309487671537539597

/-! ## A248456.P15558506603088778996

`A248461(A055999(n)+4)%A250636(n+1)`
-/

namespace A248456.P15558506603088778996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248461 (A055999 n + 4).toNat) (A250636 (n + 1))

end

end A248456.P15558506603088778996

/-!
# A248457: Number of length n+2 0..4 arrays with no three consecutive terms having the sum of any two elements equal to twice the third.

The programs for A248457, there is no canonical definition to state claims against.
-/

/-! ## A248457.P11086807962547365272

`A248461(A027379(n+2))`
-/

namespace A248457.P11086807962547365272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A027379 (n + 2)).toNat

end

end A248457.P11086807962547365272

/-! ## A248457.P2208606201147844124

`A248461(A055998(n+2))`
-/

namespace A248457.P2208606201147844124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A055998 (n + 2)).toNat

end

end A248457.P2208606201147844124

/-! ## A248457.P8310976730837849016

`A248461(A155212(n)+5)`
-/

namespace A248457.P8310976730837849016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A155212 n + 5).toNat

end

end A248457.P8310976730837849016

/-! ## A248457.P12100583196622065300

`A248461(A056000(n)+7)`
-/

namespace A248457.P12100583196622065300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A056000 n + 7).toNat

end

end A248457.P12100583196622065300

/-! ## A248457.P10286858596020213361

`A248461(A052905(n+1)+2)`
-/

namespace A248457.P10286858596020213361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A052905 (n + 1) + 2).toNat

end

end A248457.P10286858596020213361

/-! ## A248457.P16059470419623740584

`A248461(Δ[A008778(n+1)]-1)`
-/

namespace A248457.P16059470419623740584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (f1 (n + 1) - f1 n - 1).toNat

end

end A248457.P16059470419623740584

/-! ## A248457.P3015928906605557890

`A248461(A005408(n)+∑[n+2]+4)`
-/

namespace A248457.P3015928906605557890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A005408 n + ((∑ j ∈ Finset.range (n + 1), f1 j + 4 : ℕ) : ℤ)).toNat

end

end A248457.P3015928906605557890

/-! ## A248457.P8416777309972546419

`A248461(A167499(n)+A016777(n))`
-/

namespace A248457.P8416777309972546419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A167499 n + A016777 n).toNat

end

end A248457.P8416777309972546419

/-! ## A248457.P2780114118988286742

`A248461(A167614(n+1)+A005408(n))`
-/

namespace A248457.P2780114118988286742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A167614 (n + 1) + A005408 n).toNat

end

end A248457.P2780114118988286742

/-!
# A248458: Number of length n+2 0..5 arrays with no three consecutive terms having the sum of any two elements equal to twice the third.

The programs for A248458, there is no canonical definition to state claims against.
-/

/-! ## A248458.P16250859790159808067

`A248461(Δ[A264443(n)])`
-/

namespace A248458.P16250859790159808067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (f1 (n + 1) - f1 n).toNat

end

end A248458.P16250859790159808067

/-! ## A248458.P7428402599053086349

`A248461(A046691(n+3))`
-/

namespace A248458.P7428402599053086349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A046691 (n + 3)).toNat

end

end A248458.P7428402599053086349

/-! ## A248458.P10705357877174739977

`A248461(Δ[A023545(n+1)])`
-/

namespace A248458.P10705357877174739977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (f1 (n + 1) - f1 n).toNat

end

end A248458.P10705357877174739977

/-! ## A248458.P10007959826059428990

`A248461(A000217(n+5)-4)`
-/

namespace A248458.P10007959826059428990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A000217 (n + 5) - 4).toNat

end

end A248458.P10007959826059428990

/-! ## A248458.P4966787314272815095

`A248461(A000124(n+5)-5)`
-/

namespace A248458.P4966787314272815095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A000124 (n + 5) - 5).toNat

end

end A248458.P4966787314272815095

/-! ## A248458.P8683733614963162643

`A248461(A167614(n+1)+3*n+5)`
-/

namespace A248458.P8683733614963162643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A167614 (n + 1) + (3 * n + 5 : ℤ)).toNat

end

end A248458.P8683733614963162643

/-! ## A248458.P9002075032038575665

`A248461(A264443(n+1)-A264443(n))`
-/

namespace A248458.P9002075032038575665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A264443 (n + 1) - A264443 n).toNat

end

end A248458.P9002075032038575665

/-!
# A248459: Number of length n+2 0..6 arrays with no three consecutive terms having the sum of any two elements equal to twice the third.

The programs for A248459, there is no canonical definition to state claims against.
-/

/-! ## A248459.P16068323854781111104

`A248461(A052905(n+3))`
-/

namespace A248459.P16068323854781111104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A052905 (n + 3)).toNat

end

end A248459.P16068323854781111104

/-! ## A248459.P9987920548950716693

`A248461(A055999(n+3)+1)`
-/

namespace A248459.P9987920548950716693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A055999 (n + 3) + 1).toNat

end

end A248459.P9987920548950716693

/-! ## A248459.P2199338882170627702

`A248461(A055998(n+4)-2)`
-/

namespace A248459.P2199338882170627702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A055998 (n + 4) - 2).toNat

end

end A248459.P2199338882170627702

/-! ## A248459.P16875139365812654993

`A248461(A000217(n+6)-5)`
-/

namespace A248459.P16875139365812654993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A000217 (n + 6) - 5).toNat

end

end A248459.P16875139365812654993

/-! ## A248459.P8729353562834377400

`A248461(A000124(n+6)-6)`
-/

namespace A248459.P8729353562834377400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A000124 (n + 6) - 6).toNat

end

end A248459.P8729353562834377400

/-! ## A248459.P14644662980888860262

`A248461(Δ[A264443(n+1)]-1)`
-/

namespace A248459.P14644662980888860262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (f1 (n + 1) - f1 n - 1).toNat

end

end A248459.P14644662980888860262

/-! ## A248459.P5729857899436594730

`A248461(Δ[A023545(n+2)]-1)`
-/

namespace A248459.P5729857899436594730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (f1 (n + 1) - f1 n - 1).toNat

end

end A248459.P5729857899436594730

/-! ## A248459.P9024273835229688483

`A248461((n+6)²-A167499(n+4))`
-/

namespace A248459.P9024273835229688483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (((n + 6) ^ 2 : ℤ) - A167499 (n + 4)).toNat

end

end A248459.P9024273835229688483

/-! ## A248459.P15528691167685414674

`A248461((n+7)²%A167499(n+6))`
-/

namespace A248459.P15528691167685414674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (Int.tmod ((n + 7) ^ 2 : ℤ) (A167499 (n + 6))).toNat

end

end A248459.P15528691167685414674

/-! ## A248459.P4431324917937308349

`A248461(A004275(n+4)+A000217(n+4))`
-/

namespace A248459.P4431324917937308349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A004275 (n + 4) + A000217 (n + 4)).toNat

end

end A248459.P4431324917937308349

/-!
# A248460: Number of length n+2 0..7 arrays with no three consecutive terms having the sum of any two elements equal to twice the third.

The programs for A248460, there is no canonical definition to state claims against.
-/

/-! ## A248460.P2257246401875134670

`A248461(A055999(n+4))`
-/

namespace A248460.P2257246401875134670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A055999 (n + 4)).toNat

end

end A248460.P2257246401875134670

/-! ## A248460.P1211943740270941632

`A248461(A052905(n+4)-1)`
-/

namespace A248460.P1211943740270941632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A052905 (n + 4) - 1).toNat

end

end A248460.P1211943740270941632

/-! ## A248460.P7238073387901800535

`A248461(A055998(n+5)-3)`
-/

namespace A248460.P7238073387901800535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A055998 (n + 5) - 3).toNat

end

end A248460.P7238073387901800535

/-! ## A248460.P826063145798315081

`A248461(A000124(n+7)-7)`
-/

namespace A248460.P826063145798315081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A000124 (n + 7) - 7).toNat

end

end A248460.P826063145798315081

/-! ## A248460.P3446949847640449800

`A248461(A005408(n+3)+A000217(n+5))`
-/

namespace A248460.P3446949847640449800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A005408 (n + 3) + A000217 (n + 5)).toNat

end

end A248460.P3446949847640449800

/-!
# A248462: Number of length 1+2 0..n arrays with no three consecutive terms having the sum of any two elements equal to twice the third.

The programs for A248462, the canonical program `A248462.P4404624796138473730` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248462 has offset 1).

The definition of A248462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248462.P4404624796138473730

`∑[∑[6*or(1, n)]]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A248462

/-- `∑[∑[6*or(1, n)]]` -/
def P4404624796138473730.Spec : Prop :=
  ∀ n, (P4404624796138473730.a n : ℤ) = A248462 (n + 1)

theorem P4404624796138473730.correct : P4404624796138473730.Spec := by
  intro n
  simp only [A248462, Nat.add_sub_cancel]

end A248462

/-! ## A248462.P6524039196734684619

`∑[∑[a(n-2)+12]]` with `a(0)=6, a(1)=6`
-/

namespace A248462.P6524039196734684619
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [6, 6] fun n f2 =>
  f2 (n - 2) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248462.P6524039196734684619

namespace A248462

/-- `∑[∑[a(n-2)+12]]` -/
def P6524039196734684619.Spec : Prop :=
  ∀ n, (P6524039196734684619.a n : ℤ) = A248462 (n + 1)

end A248462

/-! ## A248462.P7818792503561042591

`∑[6*ceil((n+1)²/2)]`
-/

namespace A248462.P7818792503561042591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌈((n + 1) ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248462.P7818792503561042591

namespace A248462

/-- `∑[6*ceil((n+1)²/2)]` -/
def P7818792503561042591.Spec : Prop :=
  ∀ n, P7818792503561042591.a n = A248462 (n + 1)

end A248462

/-! ## A248462.P4072993676214066829

`6*∑[∑[and(n, -2)+1]]`
-/

namespace A248462.P4072993676214066829
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248462.P4072993676214066829

namespace A248462

/-- `6*∑[∑[and(n, -2)+1]]` -/
def P4072993676214066829.Spec : Prop :=
  ∀ n, P4072993676214066829.a n = A248462 (n + 1)

end A248462

/-! ## A248462.P11172956416892029691

`6*∑[∑[xor(1, and(n, -2))]]`
-/

namespace A248462.P11172956416892029691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.land (n : ℤ) (-2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248462.P11172956416892029691

namespace A248462

/-- `6*∑[∑[xor(1, and(n, -2))]]` -/
def P11172956416892029691.Spec : Prop :=
  ∀ n, P11172956416892029691.a n = A248462 (n + 1)

end A248462

/-! ## A248462.P1226944613931892872

`6*∑[∑[log2(gcd(2, n))+n]]`
-/

namespace A248462.P1226944613931892872
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) + (n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248462.P1226944613931892872

namespace A248462

/-- `6*∑[∑[log2(gcd(2, n))+n]]` -/
def P1226944613931892872.Spec : Prop :=
  ∀ n, P1226944613931892872.a n = (A248462 (n + 1) : ℝ)

end A248462

/-! ## A248462.P11286374746942756013

`6*∑[∑[xor(n, char[2*n])]]`
-/

namespace A248462.P11286374746942756013
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248462.P11286374746942756013

namespace A248462

/-- `6*∑[∑[xor(n, char[2*n])]]` -/
def P11286374746942756013.Spec : Prop :=
  ∀ n, (P11286374746942756013.a n : ℤ) = A248462 (n + 1)

end A248462

/-! ## A248462.P84873568542451012

`∑[∑[or(1, n)]]/(1-5/6)`
-/

namespace A248462.P84873568542451012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (1 - (5 : ℚ) / 6)

end

end A248462.P84873568542451012

namespace A248462

/-- `∑[∑[or(1, n)]]/(1-5/6)` -/
def P84873568542451012.Spec : Prop :=
  ∀ n, P84873568542451012.a n = (A248462 (n + 1) : ℚ)

end A248462

/-! ## A248462.P2031605003876737494

`6*∑[∑[(n+1)%2+n]]`
-/

namespace A248462.P2031605003876737494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248462.P2031605003876737494

namespace A248462

/-- `6*∑[∑[(n+1)%2+n]]` -/
def P2031605003876737494.Spec : Prop :=
  ∀ n, (P2031605003876737494.a n : ℤ) = A248462 (n + 1)

end A248462

/-! ## A248462.P11296525750454890450

`3*∑[∑[xor(1, n)+1+n]]`
-/

namespace A248462.P11296525750454890450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248462.P11296525750454890450

namespace A248462

/-- `3*∑[∑[xor(1, n)+1+n]]` -/
def P11296525750454890450.Spec : Prop :=
  ∀ n, (P11296525750454890450.a n : ℤ) = A248462 (n + 1)

end A248462

/-! ## A248462.P3261726518160835173

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=6, a(1)=18, a(2)=48, a(3)=96, a(4)=174`
-/

namespace A248462.P3261726518160835173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 18, 48, 96, 174] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) - 2 * a (n - 3) + 3 * a (n - 4) - a (n - 5)

end

end A248462.P3261726518160835173

namespace A248462

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P3261726518160835173.Spec : Prop :=
  ∀ n, P3261726518160835173.a n = A248462 (n + 1)

end A248462

/-! ## A248462.P6432020111759089758

`3*A171218(n+1)`
-/

namespace A248462.P6432020111759089758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A171218 (n + 1)

end

end A248462.P6432020111759089758

namespace A248462

/-- `3*A171218(n+1)` -/
def P6432020111759089758.Spec : Prop :=
  ∀ n, P6432020111759089758.a n = A248462 (n + 1)

end A248462

/-! ## A248462.P4179958280930930259

`6*A131941(n+1)`
-/

namespace A248462.P4179958280930930259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A131941 (n + 1)

end

end A248462.P4179958280930930259

namespace A248462

/-- `6*A131941(n+1)` -/
def P4179958280930930259.Spec : Prop :=
  ∀ n, P4179958280930930259.a n = A248462 (n + 1)

end A248462

/-! ## A248462.P16882679657634486812

`3*∑[A085046(n+1)+1]`
-/

namespace A248462.P16882679657634486812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085046 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A248462.P16882679657634486812

namespace A248462

/-- `3*∑[A085046(n+1)+1]` -/
def P16882679657634486812.Spec : Prop :=
  ∀ n, P16882679657634486812.a n = A248462 (n + 1)

end A248462

/-! ## A248462.P3666111613990451581

`A212960(n)+A199705(n+1)`
-/

namespace A248462.P3666111613990451581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212960 n + A199705 (n + 1)

end

end A248462.P3666111613990451581

namespace A248462

/-- `A212960(n)+A199705(n+1)` -/
def P3666111613990451581.Spec : Prop :=
  ∀ n, P3666111613990451581.a n = A248462 (n + 1)

end A248462

/-! ## A248462.P2452877068374431249

`A188377(n+3)-A236283(n+1)`
-/

namespace A248462.P2452877068374431249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188377 (n + 3) - A236283 (n + 1)

end

end A248462.P2452877068374431249

namespace A248462

/-- `A188377(n+3)-A236283(n+1)` -/
def P2452877068374431249.Spec : Prop :=
  ∀ n, P2452877068374431249.a n = A248462 (n + 1)

end A248462

/-! ## A248462.P13651037797793438466

`3*(A168582(n+2)-1)`
-/

namespace A248462.P13651037797793438466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A168582 (n + 2) - 1)

end

end A248462.P13651037797793438466

namespace A248462

/-- `3*(A168582(n+2)-1)` -/
def P13651037797793438466.Spec : Prop :=
  ∀ n, P13651037797793438466.a n = A248462 (n + 1)

end A248462

/-! ## A248462.P2686642137252826642

`A212976(n+1)+A212976(n)`
-/

namespace A248462.P2686642137252826642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212976 (n + 1) + A212976 n

end

end A248462.P2686642137252826642

namespace A248462

/-- `A212976(n+1)+A212976(n)` -/
def P2686642137252826642.Spec : Prop :=
  ∀ n, P2686642137252826642.a n = A248462 (n + 1)

end A248462

/-! ## A248462.P13957700949509187311

`6*A005232(2*n)`
-/

namespace A248462.P13957700949509187311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A005232 (2 * n)

end

end A248462.P13957700949509187311

namespace A248462

/-- `6*A005232(2*n)` -/
def P13957700949509187311.Spec : Prop :=
  ∀ n, P13957700949509187311.a n = A248462 (n + 1)

end A248462

/-!
# A248463: Number of length 2+2 0..n arrays with no three consecutive terms having the sum of any two elements equal to twice the third.

The programs for A248463, there is no canonical definition to state claims against.
-/

/-! ## A248463.P12108878497009648009

`A248461(∑[n+1]+2)`
-/

namespace A248463.P12108878497009648009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A248463.P12108878497009648009

/-! ## A248463.P8065353189067906398

`lcm(2, A248461(A133263(n+1)))`
-/

namespace A248463.P8065353189067906398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A248461 (A133263 (n + 1)).toNat)

end

end A248463.P8065353189067906398

/-! ## A248463.P7762278928258440640

`or(A000038(n), A248461(A133263(n+1)))`
-/

namespace A248463.P7762278928258440640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A248461 (A133263 (n + 1)).toNat)

end

end A248463.P7762278928258440640

/-! ## A248463.P53844758788735194

`A248461(A133263(n+1))%A010902(n)²`
-/

namespace A248463.P53844758788735194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248461 (A133263 (n + 1)).toNat) (A010902 n ^ 2)

end

end A248463.P53844758788735194

/-! ## A248463.P7136708478852048579

`char[A004443(n)]*A248461(A133263(n+1))`
-/

namespace A248463.P7136708478852048579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A248461 (A133263 (n + 1)).toNat

end

end A248463.P7136708478852048579

/-! ## A248463.P13144343245695987352

`A007318(C(3, n))*A248461(A133263(n+1))`
-/

namespace A248463.P13144343245695987352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A248461 (A133263 (n + 1)).toNat

end

end A248463.P13144343245695987352

/-! ## A248463.P1572258975712239598

`A248461(A133263(n+1))^A057428(n+2)²`
-/

namespace A248463.P1572258975712239598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248461 (A133263 (n + 1)).toNat : ℚ) ^ (A057428 (n + 2) ^ 2 : ℤ)

end

end A248463.P1572258975712239598

/-! ## A248463.P11148084242041747081

`A248461(A133263(n+1))+A130706(2*(n+1))`
-/

namespace A248463.P11148084242041747081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A133263 (n + 1)).toNat + A130706 (2 * (n + 1))

end

end A248463.P11148084242041747081

/-! ## A248463.P5626058852895767858

`A248461(A133263(n+1))+A024000(n+1)+n`
-/

namespace A248463.P5626058852895767858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A133263 (n + 1)).toNat + A024000 (n + 1) + (n : ℤ)

end

end A248463.P5626058852895767858

/-! ## A248463.P711824605284486080

`A248461(A133263(n+1))+C(n, A000203(n+1))`
-/

namespace A248463.P711824605284486080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A133263 (n + 1)).toNat + (Nat.choose n (A000203 (n + 1)).toNat : ℤ)

end

end A248463.P711824605284486080

/-!
# A248464: Number of length 3+2 0..n arrays with no three consecutive terms having the sum of any two elements equal to twice the third.

The programs for A248464, there is no canonical definition to state claims against.
-/

/-! ## A248464.P4668349094017664381

`A248461(∑[n+2]+4)`
-/

namespace A248464.P4668349094017664381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A248464.P4668349094017664381

/-! ## A248464.P17845065844412570921

`lcm(2, A248461(A167614(n+1)))`
-/

namespace A248464.P17845065844412570921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A248461 (A167614 (n + 1)).toNat)

end

end A248464.P17845065844412570921

/-! ## A248464.P8887920849143857183

`A248461(A167614(n+1))%A017023(n)`
-/

namespace A248464.P8887920849143857183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248461 (A167614 (n + 1)).toNat) (A017023 n)

end

end A248464.P8887920849143857183

/-! ## A248464.P13786347492387913115

`A248461(A167614(n+1))+A000007(n+1)`
-/

namespace A248464.P13786347492387913115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A167614 (n + 1)).toNat + A000007 (n + 1)

end

end A248464.P13786347492387913115

/-! ## A248464.P11809781978703605617

`A248461(A167614(n+1))+A000035(2*n)`
-/

namespace A248464.P11809781978703605617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A248464.P11809781978703605617

/-! ## A248464.P1365714723938174950

`A225561(2*n+1)*A248461(A167614(n+1))`
-/

namespace A248464.P1365714723938174950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225561 (2 * n + 1) * A248461 (A167614 (n + 1)).toNat

end

end A248464.P1365714723938174950

/-! ## A248464.P18405052712524719733

`and(A033999(2*n+1), A248461(A167614(n+1)))`
-/

namespace A248464.P18405052712524719733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (2 * n + 1)) (A248461 (A167614 (n + 1)).toNat)

end

end A248464.P18405052712524719733

/-! ## A248464.P17305784434805667425

`A007318(or(1, n)-(n-1))*A248461(A167614(n+1))`
-/

namespace A248464.P17305784434805667425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((Nat.lor 1 n : ℤ) - ((n : ℤ) - 1)).toNat * A248461 (A167614 (n + 1)).toNat

end

end A248464.P17305784434805667425

/-! ## A248464.P17465006547790342153

`A007318(A083892(n+1))*A248461(A167614(n+1))`
-/

namespace A248464.P17465006547790342153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A083892 (n + 1)).toNat * A248461 (A167614 (n + 1)).toNat

end

end A248464.P17465006547790342153

/-!
# A248465: Number of length 4+2 0..n arrays with no three consecutive terms having the sum of any two elements equal to twice the third.

The programs for A248465, there is no canonical definition to state claims against.
-/

/-! ## A248465.P13694181829906567968

`A248461(A052905(n)+9)`
-/

namespace A248465.P13694181829906567968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A052905 n + 9).toNat

end

end A248465.P13694181829906567968

/-! ## A248465.P4789108749604600685

`A248461(A055999(n)+10)`
-/

namespace A248465.P4789108749604600685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A055999 n + 10).toNat

end

end A248465.P4789108749604600685

/-! ## A248465.P5656501728153062673

`A248461(A167614(n+2)+1)`
-/

namespace A248465.P5656501728153062673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A167614 (n + 2) + 1).toNat

end

end A248465.P5656501728153062673

/-! ## A248465.P12006532160570365714

`A248461(A167499(n+2)-1)`
-/

namespace A248465.P12006532160570365714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A167499 (n + 2) - 1).toNat

end

end A248465.P12006532160570365714

/-! ## A248465.P14725111516290268543

`A248461(A133263(n+3)+2)`
-/

namespace A248465.P14725111516290268543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A133263 (n + 3) + 2).toNat

end

end A248465.P14725111516290268543

/-! ## A248465.P17591552690810414579

`A248461(A000124(n+3)+3)`
-/

namespace A248465.P17591552690810414579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A000124 (n + 3) + 3).toNat

end

end A248465.P17591552690810414579

/-! ## A248465.P16115145711676941643

`A248461(A167487(n+2)-3)`
-/

namespace A248465.P16115145711676941643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A167487 (n + 2) - 3).toNat

end

end A248465.P16115145711676941643

/-! ## A248465.P14785491514615385141

`A248461(A000217(n+3)+4)`
-/

namespace A248465.P14785491514615385141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A000217 (n + 3) + 4).toNat

end

end A248465.P14785491514615385141

/-! ## A248465.P114975136257303415

`A248461(A046691(n+1)+8)`
-/

namespace A248465.P114975136257303415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A046691 (n + 1) + 8).toNat

end

end A248465.P114975136257303415

/-! ## A248465.P5597226806845371152

`A248461(Δ[A264443(n)-n²])`
-/

namespace A248465.P5597226806845371152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (f1 (n + 1) - f1 n).toNat

end

end A248465.P5597226806845371152

/-!
# A248466: Number of length 5+2 0..n arrays with no three consecutive terms having the sum of any two elements equal to twice the third.

The programs for A248466, there is no canonical definition to state claims against.
-/

/-! ## A248466.P17936164709175821624

`A248461(A167499(n+3))`
-/

namespace A248466.P17936164709175821624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A167499 (n + 3)).toNat

end

end A248466.P17936164709175821624

/-! ## A248466.P922644657903291491

`A248461(A056000(n)+15)`
-/

namespace A248466.P922644657903291491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A056000 n + 15).toNat

end

end A248466.P922644657903291491

/-! ## A248466.P11361755395129443999

`A248461(A167614(n+3)+2)`
-/

namespace A248466.P11361755395129443999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A167614 (n + 3) + 2).toNat

end

end A248466.P11361755395129443999

/-! ## A248466.P4777823951971818837

`A248461(A133263(n+4)+3)`
-/

namespace A248466.P4777823951971818837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A133263 (n + 4) + 3).toNat

end

end A248466.P4777823951971818837

/-! ## A248466.P18108758332960610964

`A248461(A000217(n+4)+5)`
-/

namespace A248466.P18108758332960610964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A000217 (n + 4) + 5).toNat

end

end A248466.P18108758332960610964

/-! ## A248466.P13875511766432092530

`A248461(A046691(n+2)+9)`
-/

namespace A248466.P13875511766432092530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A046691 (n + 2) + 9).toNat

end

end A248466.P13875511766432092530

/-! ## A248466.P11975303626999254040

`A248461(A052905(n+3)-A005408(n))`
-/

namespace A248466.P11975303626999254040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A052905 (n + 3) - A005408 n).toNat

end

end A248466.P11975303626999254040

/-! ## A248466.P1060820782743833211

`A248461(A005408(n+5)+A000124(n+2))`
-/

namespace A248466.P1060820782743833211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A005408 (n + 5) + A000124 (n + 2)).toNat

end

end A248466.P1060820782743833211

/-! ## A248466.P17578757784846807095

`A248461(A033638(n+2)+A033638(n+7))`
-/

namespace A248466.P17578757784846807095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A033638 (n + 2) + A033638 (n + 7)).toNat

end

end A248466.P17578757784846807095

/-!
# A248467: Number of length 6+2 0..n arrays with no three consecutive terms having the sum of any two elements equal to twice the third.

The programs for A248467, there is no canonical definition to state claims against.
-/

/-! ## A248467.P1397431197657238181

`A248461(A056115(n)+21)`
-/

namespace A248467.P1397431197657238181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A056115 n + 21).toNat

end

end A248467.P1397431197657238181

/-! ## A248467.P805699178185928050

`A248461(A167499(n+4)+1)`
-/

namespace A248467.P805699178185928050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A167499 (n + 4) + 1).toNat

end

end A248467.P805699178185928050

/-! ## A248467.P14574208812024459599

`A248461(A167614(n+4)+3)`
-/

namespace A248467.P14574208812024459599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A167614 (n + 4) + 3).toNat

end

end A248467.P14574208812024459599

/-! ## A248467.P8193494423478566578

`A248461(A000124(n+5)+5)`
-/

namespace A248467.P8193494423478566578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A000124 (n + 5) + 5).toNat

end

end A248467.P8193494423478566578

/-! ## A248467.P3124307040192340490

`A248461(A000217(n+5)+6)`
-/

namespace A248467.P3124307040192340490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A000217 (n + 5) + 6).toNat

end

end A248467.P3124307040192340490

/-! ## A248467.P14779294755155463187

`A248461(Δ[A023545(n+1)]+10)`
-/

namespace A248467.P14779294755155463187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (f1 (n + 1) - f1 n + 10).toNat

end

end A248467.P14779294755155463187

/-! ## A248467.P5825491442122578285

`A248461(A052905(n+4)-2*(n+1))`
-/

namespace A248467.P5825491442122578285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A052905 (n + 4) - (2 * (n + 1) : ℤ)).toNat

end

end A248467.P5825491442122578285

/-! ## A248467.P16979711199744838006

`A248461(A002620(n+2)+A002620(n+9))`
-/

namespace A248467.P16979711199744838006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A002620 (n + 2) + A002620 (n + 9)).toNat

end

end A248467.P16979711199744838006

/-!
# A248468: Number of length 7+2 0..n arrays with no three consecutive terms having the sum of any two elements equal to twice the third.

The programs for A248468, there is no canonical definition to state claims against.
-/

/-! ## A248468.P14616243898200787358

`A248461(A167487(n+5))`
-/

namespace A248468.P14616243898200787358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A167487 (n + 5)).toNat

end

end A248468.P14616243898200787358

/-! ## A248468.P14575364517879957501

`A248461(A167499(n+5)+2)`
-/

namespace A248468.P14575364517879957501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A167499 (n + 5) + 2).toNat

end

end A248468.P14575364517879957501

/-! ## A248468.P7203589716826523448

`A248461(A167614(n+5)+4)`
-/

namespace A248468.P7203589716826523448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A167614 (n + 5) + 4).toNat

end

end A248468.P7203589716826523448

/-! ## A248468.P1765234460726971659

`A248461(A000217(n+6)+7)`
-/

namespace A248468.P1765234460726971659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A000217 (n + 6) + 7).toNat

end

end A248468.P1765234460726971659

/-! ## A248468.P17768584581624531781

`A248461(A052905(n+5)-A005408(n+1))`
-/

namespace A248468.P17768584581624531781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A052905 (n + 5) - A005408 (n + 1)).toNat

end

end A248468.P17768584581624531781

/-! ## A248468.P9581564911704656586

`A248461(A005408(n+8)+A000124(n+4))`
-/

namespace A248468.P9581564911704656586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248461 (A005408 (n + 8) + A000124 (n + 4)).toNat

end

end A248468.P9581564911704656586

/-!
# A248469: a(n) = floor((2*n^2)/e).

The programs for A248469, the canonical program `A248469.P8103976245482802455` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248469 has offset 1).

The definition of A248469 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2*(n+1)²/e)` (program `A248469.P8103976245482802455`, by `A248469.P8103976245482802455.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A248469.P8103976245482802455

`floor(2*(n+1)²/e)`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A248469

/-- `floor(2*(n+1)²/e)` -/
def P8103976245482802455.Spec : Prop :=
  ∀ n, P8103976245482802455.a n = A248469 (n + 1)

theorem P8103976245482802455.correct : P8103976245482802455.Spec := by
  intro n
  simp only [A248469, Nat.add_sub_cancel]

end A248469

/-! ## A248469.P1463656700997077908

`ceil(A093907(comp[2*n])/e)-1`
-/

namespace A248469.P1463656700997077908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A093907 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ) / Real.exp 1⌉ - 1

end

end A248469.P1463656700997077908

namespace A248469

/-- `ceil(A093907(comp[2*n])/e)-1` -/
def P1463656700997077908.Spec : Prop :=
  ∀ n, P1463656700997077908.a n = A248469 (n + 1)

end A248469

/-! ## A248469.P7876212468982763102

`ceil((n+1)*A005843(n+1)/e)-1`
-/

namespace A248469.P7876212468982763102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * ((A005843 (n + 1) : ℝ) / Real.exp 1)⌉ - 1

end

end A248469.P7876212468982763102

namespace A248469

/-- `ceil((n+1)*A005843(n+1)/e)-1` -/
def P7876212468982763102.Spec : Prop :=
  ∀ n, P7876212468982763102.a n = A248469 (n + 1)

end A248469

/-! ## A248469.P15554170795751010897

`ceil(A093005(2*(n+1))/e)-1`
-/

namespace A248469.P15554170795751010897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A093005 (2 * (n + 1)) : ℝ) / Real.exp 1⌉ - 1

end

end A248469.P15554170795751010897

namespace A248469

/-- `ceil(A093005(2*(n+1))/e)-1` -/
def P15554170795751010897.Spec : Prop :=
  ∀ n, P15554170795751010897.a n = A248469 (n + 1)

end A248469

/-! ## A248469.P4294680474602376001

`floor((A004273((n+1)²)+1)/e)^and(1, A000045(n))!`
-/

namespace A248469.P4294680474602376001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004273 ((n + 1) ^ 2) + 1 : ℝ) / Real.exp 1⌋ ^ Nat.factorial (Int.land 1 (A000045 n)).toNat

end

end A248469.P4294680474602376001

namespace A248469

/-- `floor((A004273((n+1)²)+1)/e)^and(1, A000045(n))!` -/
def P4294680474602376001.Spec : Prop :=
  ∀ n, P4294680474602376001.a n = A248469 (n + 1)

end A248469

/-! ## A248469.P10232647947696662175

`A004526(A032635(2*(n+1)))`
-/

namespace A248469.P10232647947696662175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A032635 (2 * (n + 1))).toNat

end

end A248469.P10232647947696662175

namespace A248469

/-- `A004526(A032635(2*(n+1)))` -/
def P10232647947696662175.Spec : Prop :=
  ∀ n, P10232647947696662175.a n = A248469 (n + 1)

end A248469

/-! ## A248469.P9459666290899684827

`A004526(A096228(2*(n+1)))`
-/

namespace A248469.P9459666290899684827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A096228 (2 * (n + 1))).toNat

end

end A248469.P9459666290899684827

namespace A248469

/-- `A004526(A096228(2*(n+1)))` -/
def P9459666290899684827.Spec : Prop :=
  ∀ n, P9459666290899684827.a n = A248469 (n + 1)

end A248469

/-! ## A248469.P17119676669325388884

`A110654(A032635(2*(n+1))-1)`
-/

namespace A248469.P17119676669325388884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A032635 (2 * (n + 1)) - 1).toNat

end

end A248469.P17119676669325388884

namespace A248469

/-- `A110654(A032635(2*(n+1))-1)` -/
def P17119676669325388884.Spec : Prop :=
  ∀ n, P17119676669325388884.a n = A248469 (n + 1)

end A248469

/-! ## A248469.P2651236901210135969

`A032634(2*(n+1)²)`
-/

namespace A248469.P2651236901210135969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (2 * (n + 1) ^ 2)

end

end A248469.P2651236901210135969

namespace A248469

/-- `A032634(2*(n+1)²)` -/
def P2651236901210135969.Spec : Prop :=
  ∀ n, P2651236901210135969.a n = A248469 (n + 1)

end A248469

/-!
# A248471: E.g.f.: Sum_{n>=0} x^n * (3*exp(n*x) - 2)^n.

The programs for A248471, there is no canonical definition to state claims against.
-/

/-! ## A248471.P15802865581093579042

`A188469(A338456(n)+∑[∑{d}[n, #%2]]-n)`
-/

namespace A248471.P15802865581093579042
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188469 (A338456 n + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A248471.P15802865581093579042

/-!
# A248473: Triangle of numbers b(i,j) = A(binomial(A(i), A(j))), where A = A007913, with the convention that A(0)=0.

The programs for A248473, there is no canonical definition to state claims against.
-/

/-! ## A248473.P9909564943669622611

`A007318(n)^A062242(A303650(n+3))`
-/

namespace A248473.P9909564943669622611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) ^ (A062242 (A303650 (n + 3)).toNat : ℤ)

end

end A248473.P9909564943669622611

/-! ## A248473.P12104966616289113396

`A007318(n)%A099802(A165198(n+1))`
-/

namespace A248473.P12104966616289113396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007318 n) (A099802 (A165198 (n + 1)).toNat)

end

end A248473.P12104966616289113396

/-! ## A248473.P17610676660133309983

`A157154(n)%A087057(A213372(n+1))`
-/

namespace A248473.P17610676660133309983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157154 n) (A087057 (A213372 (n + 1)).toNat)

end

end A248473.P17610676660133309983

/-! ## A248473.P14308424493554648181

`abs(A108086(n))%A099802(A165198(n+1))`
-/

namespace A248473.P14308424493554648181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A108086 n| (A099802 (A165198 (n + 1)).toNat)

end

end A248473.P14308424493554648181

/-!
# A248474: Numbers congruent to 13 or 17 mod 30.

The programs for A248474, the canonical program `A248474.P7394030702355487542` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248474 has offset 1).

The definition of A248474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A248474.P7394030702355487542

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=13, a(1)=17, a(2)=43`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A248474

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P7394030702355487542.Spec : Prop :=
  ∀ n, P7394030702355487542.a n = A248474 (n + 1)

theorem P7394030702355487542.correct : P7394030702355487542.Spec := by
  intro n
  simp only [A248474, Nat.add_sub_cancel]

end A248474

/-! ## A248474.P11724204701452755467

`a(n-2)+30` with `a(0)=13, a(1)=17`
-/

namespace A248474.P11724204701452755467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [13, 17] fun n a =>
  a (n - 2) + 30

end

end A248474.P11724204701452755467

namespace A248474

/-- `a(n-2)+30` -/
def P11724204701452755467.Spec : Prop :=
  ∀ n, (P11724204701452755467.a n : ℤ) = A248474 (n + 1)

end A248474

/-! ## A248474.P5630857198088644318

`∑[30-a(n-1)]` with `a(0)=13, a(1)=4`
-/

namespace A248474.P5630857198088644318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13, 4] fun n f1 =>
  30 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248474.P5630857198088644318

namespace A248474

/-- `∑[30-a(n-1)]` -/
def P5630857198088644318.Spec : Prop :=
  ∀ n, P5630857198088644318.a n = A248474 (n + 1)

end A248474

/-! ## A248474.P13762789545631688025

`30*n-a(n-1)` with `a(0)=13`
-/

namespace A248474.P13762789545631688025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  (30 * n : ℤ) - a (n - 1)

end

end A248474.P13762789545631688025

namespace A248474

/-- `30*n-a(n-1)` -/
def P13762789545631688025.Spec : Prop :=
  ∀ n, P13762789545631688025.a n = A248474 (n + 1)

end A248474

/-! ## A248474.P12630555642179126852

`∑[A040143(n)+2]-1`
-/

namespace A248474.P12630555642179126852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040143 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A248474.P12630555642179126852

namespace A248474

/-- `∑[A040143(n)+2]-1` -/
def P12630555642179126852.Spec : Prop :=
  ∀ n, P12630555642179126852.a n = A248474 (n + 1)

end A248474

/-! ## A248474.P514822670268204068

`∑[xor(2, A040135(n))]-1`
-/

namespace A248474.P514822670268204068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A040135 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A248474.P514822670268204068

namespace A248474

/-- `∑[xor(2, A040135(n))]-1` -/
def P514822670268204068.Spec : Prop :=
  ∀ n, P514822670268204068.a n = A248474 (n + 1)

end A248474

/-! ## A248474.P11927889724029428907

`∑[2*(A040041(n)+1)]-1`
-/

namespace A248474.P11927889724029428907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A040041 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A248474.P11927889724029428907

namespace A248474

/-- `∑[2*(A040041(n)+1)]-1` -/
def P11927889724029428907.Spec : Prop :=
  ∀ n, P11927889724029428907.a n = A248474 (n + 1)

end A248474

/-! ## A248474.P7161543256647739894

`A155096(n+1)+A028242(n)`
-/

namespace A248474.P7161543256647739894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155096 (n + 1) + A028242 n

end

end A248474.P7161543256647739894

namespace A248474

/-- `A155096(n+1)+A028242(n)` -/
def P7161543256647739894.Spec : Prop :=
  ∀ n, P7161543256647739894.a n = A248474 (n + 1)

end A248474

/-! ## A248474.P17026668154932312223

`A272100(n+1)+A114285(n)`
-/

namespace A248474.P17026668154932312223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272100 (n + 1) + A114285 n

end

end A248474.P17026668154932312223

namespace A248474

/-- `A272100(n+1)+A114285(n)` -/
def P17026668154932312223.Spec : Prop :=
  ∀ n, P17026668154932312223.a n = A248474 (n + 1)

end A248474

/-! ## A248474.P6451572911457980286

`A267985(n+1)+A226294(n)`
-/

namespace A248474.P6451572911457980286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267985 (n + 1) + A226294 n

end

end A248474.P6451572911457980286

namespace A248474

/-- `A267985(n+1)+A226294(n)` -/
def P6451572911457980286.Spec : Prop :=
  ∀ n, P6451572911457980286.a n = A248474 (n + 1)

end A248474

/-! ## A248474.P13898050191491328889

`A267984(n+1)-A010711(n)`
-/

namespace A248474.P13898050191491328889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267984 (n + 1) - A010711 n

end

end A248474.P13898050191491328889

namespace A248474

/-- `A267984(n+1)-A010711(n)` -/
def P13898050191491328889.Spec : Prop :=
  ∀ n, P13898050191491328889.a n = A248474 (n + 1)

end A248474

/-! ## A248474.P10854749486222631701

`∪[A082369(n+1), A128468(n)]`
-/

namespace A248474.P10854749486222631701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A248474.P10854749486222631701

namespace A248474

/-- `∪[A082369(n+1), A128468(n)]` -/
def P10854749486222631701.Spec : Prop :=
  ∀ n, (P10854749486222631701.a n : ℤ) = A248474 (n + 1)

end A248474

/-! ## A248474.P11199740887255290605

`A158803(n+1)-A281445(n+1)`
-/

namespace A248474.P11199740887255290605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158803 (n + 1) - A281445 (n + 1)

end

end A248474.P11199740887255290605

namespace A248474

/-- `A158803(n+1)-A281445(n+1)` -/
def P11199740887255290605.Spec : Prop :=
  ∀ n, P11199740887255290605.a n = A248474 (n + 1)

end A248474

/-! ## A248474.P6138770922228944606

`A259614(n+1)-(A166542(n+1)+2)`
-/

namespace A248474.P6138770922228944606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259614 (n + 1) - (A166542 (n + 1) + 2)

end

end A248474.P6138770922228944606

namespace A248474

/-- `A259614(n+1)-(A166542(n+1)+2)` -/
def P6138770922228944606.Spec : Prop :=
  ∀ n, P6138770922228944606.a n = A248474 (n + 1)

end A248474

/-! ## A248474.P12810962201491639280

`A175887(n+2)+A008597(n)-A175887(n+1)`
-/

namespace A248474.P12810962201491639280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 2) + (A008597 n - A175887 (n + 1))

end

end A248474.P12810962201491639280

namespace A248474

/-- `A175887(n+2)+A008597(n)-A175887(n+1)` -/
def P12810962201491639280.Spec : Prop :=
  ∀ n, P12810962201491639280.a n = A248474 (n + 1)

end A248474

/-! ## A248474.P8086439551616185481

`∑[A010218(2*n)]`
-/

namespace A248474.P8086439551616185481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010218 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A248474.P8086439551616185481

namespace A248474

/-- `∑[A010218(2*n)]` -/
def P8086439551616185481.Spec : Prop :=
  ∀ n, P8086439551616185481.a n = A248474 (n + 1)

end A248474

/-! ## A248474.P16502232013110044802

`A177964(A042964(n+1))`
-/

namespace A248474.P16502232013110044802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177964 (A042964 (n + 1)).toNat

end

end A248474.P16502232013110044802

namespace A248474

/-- `A177964(A042964(n+1))` -/
def P16502232013110044802.Spec : Prop :=
  ∀ n, P16502232013110044802.a n = A248474 (n + 1)

end A248474

/-! ## A248474.P7643352507731481802

`A177964(A053438(n+1))`
-/

namespace A248474.P7643352507731481802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177964 (A053438 (n + 1)).toNat

end

end A248474.P7643352507731481802

namespace A248474

/-- `A177964(A053438(n+1))` -/
def P7643352507731481802.Spec : Prop :=
  ∀ n, P7643352507731481802.a n = A248474 (n + 1)

end A248474

/-! ## A248474.P10208855038187955905

`filter[A177964(n+1), A322980(#)]`
-/

namespace A248474.P10208855038187955905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A248474.P10208855038187955905

namespace A248474

/-- `filter[A177964(n+1), A322980(#)]` -/
def P10208855038187955905.Spec : Prop :=
  ∀ n, P10208855038187955905.a n = A248474 (n + 1)

end A248474

/-! ## A248474.P11211214558575926964

`filter[A177964(n+1), A355450(#)]`
-/

namespace A248474.P11211214558575926964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177964 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A248474.P11211214558575926964

namespace A248474

/-- `filter[A177964(n+1), A355450(#)]` -/
def P11211214558575926964.Spec : Prop :=
  ∀ n, P11211214558575926964.a n = A248474 (n + 1)

end A248474

/-!
# A248476: Number of pairs (not necessarily successors) of partitions of n that are incomparable in dominance (natural, majorization) ordering.

The programs for A248476, there is no canonical definition to state claims against.
-/

/-! ## A248476.P9497073000966849323

`Δ[A259399(n)]-A182988(n+1)`
-/

namespace A248476.P9497073000966849323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A182988 (n + 1)

end

end A248476.P9497073000966849323

/-! ## A248476.P1689426267139673452

`A001255(n+1)-A182988(n+1)`
-/

namespace A248476.P1689426267139673452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (n + 1) - A182988 (n + 1)

end

end A248476.P1689426267139673452

/-! ## A248476.P9052740581567607562

`A000041(n+1)²-A182988(n+1)`
-/

namespace A248476.P9052740581567607562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A182988 (n + 1)

end

end A248476.P9052740581567607562

/-! ## A248476.P8672211365143741378

`(A000065(n+1)+1)²-A182988(n+1)`
-/

namespace A248476.P8672211365143741378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000065 (n + 1) + 1) ^ 2 - A182988 (n + 1)

end

end A248476.P8672211365143741378

/-! ## A248476.P13902017645475177515

`A259399(n+1)-(A259399(n)+A182988(n+1))`
-/

namespace A248476.P13902017645475177515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259399 (n + 1) - (A259399 n + A182988 (n + 1))

end

end A248476.P13902017645475177515

/-! ## A248476.P5109934568178225775

`Δ[A120452(n+2)-A002865(n+1)]²-A182988(n+1)`
-/

namespace A248476.P5109934568178225775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120452 (n + 2) - A002865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A182988 (n + 1)

end

end A248476.P5109934568178225775

/-!
# A248480: Consider two consecutive primes {p,q} such that P=2p+q and Q=2q+p are both prime. The sequence gives larger primes q.

The programs for A248480, there is no canonical definition to state claims against.
-/

/-! ## A248480.P8608703830556816092

`A067792(A181848(n+1))`
-/

namespace A248480.P8608703830556816092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067792 (A181848 (n + 1)).toNat

end

end A248480.P8608703830556816092

/-! ## A248480.P17059534054175282270

`A045344(A241945(n+1))`
-/

namespace A248480.P17059534054175282270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A241945 (n + 1)).toNat

end

end A248480.P17059534054175282270

/-! ## A248480.P9471453268887112667

`A151800(p?[A181848(n+1)])`
-/

namespace A248480.P9471453268887112667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A248480.P9471453268887112667

/-! ## A248480.P2084825976883702162

`A000040(A241945(n+1)+1)`
-/

namespace A248480.P2084825976883702162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A241945 (n + 1) + 1).toNat

end

end A248480.P2084825976883702162

/-! ## A248480.P3479943551747029449

`A006005(A241945(n+1)+1)`
-/

namespace A248480.P3479943551747029449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A241945 (n + 1) + 1).toNat

end

end A248480.P3479943551747029449

/-! ## A248480.P7272260445518040676

`A151800(A181848(n+1)+1)`
-/

namespace A248480.P7272260445518040676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A181848 (n + 1) + 1).toNat

end

end A248480.P7272260445518040676

/-! ## A248480.P10988643799117068497

`A008578(A241945(n+1)+2)`
-/

namespace A248480.P10988643799117068497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A241945 (n + 1) + 2).toNat

end

end A248480.P10988643799117068497

/-! ## A248480.P6367367785434682403

`A182986(A241945(n+1)+2)`
-/

namespace A248480.P6367367785434682403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A241945 (n + 1) + 2).toNat

end

end A248480.P6367367785434682403

/-! ## A248480.P16323242914775303808

`A114265(A241945(2*n+1-n))`
-/

namespace A248480.P16323242914775303808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114265 (A241945 (2 * n + 1 - n)).toNat

end

end A248480.P16323242914775303808

/-! ## A248480.P7828347362205086218

`∑{d}[A241945(n+1)+1, A007444(#)]`
-/

namespace A248480.P7828347362205086218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241945 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A248480.P7828347362205086218

/-!
# A248481: y-values in the solutions to x^2 + 999 = y^3.

The programs for A248481, there is no canonical definition to state claims against.
-/

/-! ## A248481.P17579039863934631883

`A345925(A078373(n+1))+A336619(n)`
-/

namespace A248481.P17579039863934631883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345925 (A078373 (n + 1)).toNat + A336619 n

end

end A248481.P17579039863934631883

/-!
# A248482: Consider two consecutive primes {p,q} such that P=2p+q and Q=2q+p are both prime. The sequence gives primes P.

The programs for A248482, there is no canonical definition to state claims against.
-/

/-! ## A248482.P10165414084295497238

`A095183(A241945(n+1))`
-/

namespace A248482.P10165414084295497238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095183 (A241945 (n + 1)).toNat

end

end A248482.P10165414084295497238

/-! ## A248482.P8242057160559695583

`A248480(n+1)+2*A181848(n+1)`
-/

namespace A248482.P8242057160559695583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248480 (n + 1) + 2 * A181848 (n + 1)

end

end A248482.P8242057160559695583

/-! ## A248482.P9833734995040752552

`A181848(n+1)+A013634(A181848(n+1))`
-/

namespace A248482.P9833734995040752552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1) + A013634 (A181848 (n + 1)).toNat

end

end A248482.P9833734995040752552

/-! ## A248482.P1466671970890368286

`A181848(n+1)+A001043(A241945(n+1))`
-/

namespace A248482.P1466671970890368286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1) + A001043 (A241945 (n + 1)).toNat

end

end A248482.P1466671970890368286

/-! ## A248482.P8586667859489167341

`A248480(n+1)+A005843(A181848(n+1))`
-/

namespace A248482.P8586667859489167341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248480 (n + 1) + A005843 (A181848 (n + 1)).toNat

end

end A248482.P8586667859489167341

/-!
# A248483: Consider two consecutive primes {p,q} such that P=2p+q and Q=2q+p are both prime. The sequence gives primes Q.

The programs for A248483, there is no canonical definition to state claims against.
-/

/-! ## A248483.P12509024226635832791

`A287615(A241945(n+1))`
-/

namespace A248483.P12509024226635832791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287615 (A241945 (n + 1)).toNat

end

end A248483.P12509024226635832791

/-! ## A248483.P2700258022011974650

`2*A001043(A241945(n+1))-A181848(n+1)`
-/

namespace A248483.P2700258022011974650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001043 (A241945 (n + 1)).toNat - A181848 (n + 1)

end

end A248483.P2700258022011974650

/-! ## A248483.P166314452905912344

`A001043(A241945(n+1))+A000040(A241945(n+1)+1)`
-/

namespace A248483.P166314452905912344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A241945 (n + 1)).toNat + A000040 (A241945 (n + 1) + 1).toNat

end

end A248483.P166314452905912344

/-! ## A248483.P8765464743014467270

`A006005(A241945(n+1)+1)+A001043(A241945(n+1))`
-/

namespace A248483.P8765464743014467270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A241945 (n + 1) + 1).toNat + A001043 (A241945 (n + 1)).toNat

end

end A248483.P8765464743014467270

/-! ## A248483.P17669730534478212556

`A008578(A241945(n+1)+2)+A001043(A241945(n+1))`
-/

namespace A248483.P17669730534478212556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A241945 (n + 1) + 2).toNat + A001043 (A241945 (n + 1)).toNat

end

end A248483.P17669730534478212556

/-! ## A248483.P13670793306672255052

`A065091(A241945(2*(n+1)-(n+1)))+A001043(A241945(n+1))`
-/

namespace A248483.P13670793306672255052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A241945 (2 * (n + 1) - (n + 1))).toNat + A001043 (A241945 (n + 1)).toNat

end

end A248483.P13670793306672255052

/-! ## A248483.P1080877741440388665

`A151800(A181848(n+1))+A001043(A241945(n+1))`
-/

namespace A248483.P1080877741440388665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A181848 (n + 1)).toNat + A001043 (A241945 (n + 1)).toNat

end

end A248483.P1080877741440388665

/-! ## A248483.P11239470715064283415

`A336845(A181848(n+1))+A181848(n+1)`
-/

namespace A248483.P11239470715064283415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336845 (A181848 (n + 1)).toNat + A181848 (n + 1)

end

end A248483.P11239470715064283415

/-! ## A248483.P17039245242163555049

`p?[A336845(A173971(n+1))+A173971(n+1)]`
-/

namespace A248483.P17039245242163555049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336845 (A173971 (n + 1)).toNat + A173971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A248483.P17039245242163555049

/-! ## A248483.P3292960172759774912

`A181848(n+1)+2*A248480(n+1)`
-/

namespace A248483.P3292960172759774912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181848 (n + 1) + 2 * A248480 (n + 1)

end

end A248483.P3292960172759774912

/-!
# A248484: Number of length n+5 0..3 arrays with some three disjoint pairs in each consecutive six terms having the same sum.

The programs for A248484, there is no canonical definition to state claims against.
-/

/-! ## A248484.P10465066503209337320

`A248489(∑[n+3]+1)`
-/

namespace A248484.P10465066503209337320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A248484.P10465066503209337320

/-! ## A248484.P16936973681392640614

`lcm(2, A248489(C(n+3, 2)+n+1))`
-/

namespace A248484.P16936973681392640614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A248489 (Nat.choose (n + 3) 2 + (n + 1)))

end

end A248484.P16936973681392640614

/-! ## A248484.P1411377135911531011

`lcm(2, A248489(Δ[A008778(n)]))`
-/

namespace A248484.P1411377135911531011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A248489 (f1 (n + 1) - f1 n).toNat)

end

end A248484.P1411377135911531011

/-! ## A248484.P3354050136894832070

`lcm(4, A248489(A034856(n+2)))`
-/

namespace A248484.P3354050136894832070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A248489 (A034856 (n + 2)).toNat)

end

end A248484.P3354050136894832070

/-! ## A248484.P2060392921827052460

`record[A248489(A165157(n+2)+1)]`
-/

namespace A248484.P2060392921827052460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A165157 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248484.P2060392921827052460

/-! ## A248484.P16022373802084118388

`A033999(n)²*A248489(Δ[A008778(n)])`
-/

namespace A248484.P16022373802084118388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A248489 (f1 (n + 1) - f1 n).toNat

end

end A248484.P16022373802084118388

/-! ## A248484.P4561942870646970950

`A248489(Δ[A008778(n)])+A000007(n+1)`
-/

namespace A248484.P4561942870646970950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A248484.P4561942870646970950

/-! ## A248484.P13840828113492600042

`A248489(Δ[A008778(n)])%A001014(n+3)`
-/

namespace A248484.P13840828113492600042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248489 (f1 (n + 1) - f1 n).toNat) (A001014 (n + 3))

end

end A248484.P13840828113492600042

/-! ## A248484.P8648736636581973570

`A248489(Δ[A008778(n)])+A008683(4*(n+1))`
-/

namespace A248484.P8648736636581973570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (f1 (n + 1) - f1 n).toNat + A008683 (4 * (n + 1))

end

end A248484.P8648736636581973570

/-! ## A248484.P10582046170128020187

`A014963(6*(n+1))*A248489(Δ[A008778(n)])`
-/

namespace A248484.P10582046170128020187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A248489 (f1 (n + 1) - f1 n).toNat

end

end A248484.P10582046170128020187

/-!
# A248485: Number of length n+5 0..4 arrays with some three disjoint pairs in each consecutive six terms having the same sum.

The programs for A248485, there is no canonical definition to state claims against.
-/

/-! ## A248485.P11183145888850877339

`A248489(∑[n+4]+3)`
-/

namespace A248485.P11183145888850877339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A248485.P11183145888850877339

/-! ## A248485.P8715836429470466203

`or(1, A248489(A055998(n+2)))`
-/

namespace A248485.P8715836429470466203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A248489 (A055998 (n + 2)).toNat)

end

end A248485.P8715836429470466203

/-! ## A248485.P1009866703963942289

`or(1, A248489(A155212(n)+5))`
-/

namespace A248485.P1009866703963942289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A248489 (A155212 n + 5).toNat)

end

end A248485.P1009866703963942289

/-! ## A248485.P1371163689921042337

`record[A248489(A055998(abs(1-n)+1))]`
-/

namespace A248485.P1371163689921042337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A055998 (|1 - (n : ℤ)| + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248485.P1371163689921042337

/-! ## A248485.P17842264798022097780

`A248489(A155212(n)+5)+char[A017104(n)]`
-/

namespace A248485.P17842264798022097780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017104 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A155212 n + 5).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A248485.P17842264798022097780

/-! ## A248485.P1049387628514301444

`A248489(A155212(n)+5)+A000007(n+1)`
-/

namespace A248485.P1049387628514301444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A155212 n + 5).toNat + A000007 (n + 1)

end

end A248485.P1049387628514301444

/-! ## A248485.P6509225121542422646

`or(1, A248489(A167614(n+1)+A005408(n)))`
-/

namespace A248485.P6509225121542422646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A248489 (A167614 (n + 1) + A005408 n).toNat)

end

end A248485.P6509225121542422646

/-! ## A248485.P17009383205234374487

`A248489(A155212(n)+5)+A001489(n)+n`
-/

namespace A248485.P17009383205234374487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A155212 n + 5).toNat + A001489 n + (n : ℤ)

end

end A248485.P17009383205234374487

/-! ## A248485.P7967816114869775081

`A248489(A055998(n+2))+val(n+1, A000045(n+4))`
-/

namespace A248485.P7967816114869775081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A055998 (n + 2)).toNat + (SequenceMachineLib.valuation (n + 1) (A000045 (n + 4)).toNat : ℤ)

end

end A248485.P7967816114869775081

/-! ## A248485.P3409787386311146656

`A322996(A000040(n+2))+A248489(A155212(n)+5)`
-/

namespace A248485.P3409787386311146656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322996 (A000040 (n + 2)).toNat + A248489 (A155212 n + 5).toNat

end

end A248485.P3409787386311146656

/-!
# A248486: Number of length n+5 0..5 arrays with some three disjoint pairs in each consecutive six terms having the same sum.

The programs for A248486, there is no canonical definition to state claims against.
-/

/-! ## A248486.P7293120409504438332

`A248489(∑[n+5]+6)`
-/

namespace A248486.P7293120409504438332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A248486.P7293120409504438332

/-! ## A248486.P8409874687128769658

`lcm(2, A248489(Δ[A023545(n+1)]))`
-/

namespace A248486.P8409874687128769658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A248489 (f1 (n + 1) - f1 n).toNat)

end

end A248486.P8409874687128769658

/-! ## A248486.P8578567665820172930

`lcm(4/2, A248489(A000217(n+5)-4))`
-/

namespace A248486.P8578567665820172930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((4 : ℚ) / 2)) (A248489 (A000217 (n + 5) - 4).toNat)

end

end A248486.P8578567665820172930

/-! ## A248486.P12290153402099910216

`lcm(log2(1/2), A248489(A055998(n+3)-1))`
-/

namespace A248486.P12290153402099910216
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ))) (A248489 (A055998 (n + 3) - 1).toNat)

end

end A248486.P12290153402099910216

/-! ## A248486.P2783807124167470709

`lcm(char[1]+1, A248489(A000096(n+4)-3))`
-/

namespace A248486.P2783807124167470709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) (A248489 (A000096 (n + 4) - 3).toNat)

end

end A248486.P2783807124167470709

/-! ## A248486.P9802363407633662771

`A007318(C(n, 2))*A248489(A000217(n+5)-4)`
-/

namespace A248486.P9802363407633662771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A248489 (A000217 (n + 5) - 4).toNat

end

end A248486.P9802363407633662771

/-! ## A248486.P13165345956374076820

`A248489(A055998(n+3)-1)+A008683(8*(n+1))`
-/

namespace A248486.P13165345956374076820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A055998 (n + 3) - 1).toNat + A008683 (8 * (n + 1))

end

end A248486.P13165345956374076820

/-! ## A248486.P16970253888551877390

`A248489(A000217(n+5)-4)+A008683(8*n+4)`
-/

namespace A248486.P16970253888551877390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A000217 (n + 5) - 4).toNat + A008683 (8 * n + 4)

end

end A248486.P16970253888551877390

/-! ## A248486.P3373162681253570770

`A014963(8*n+6)*A248489(A000217(n+5)-4)`
-/

namespace A248486.P3373162681253570770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 6) * A248489 (A000217 (n + 5) - 4).toNat

end

end A248486.P3373162681253570770

/-! ## A248486.P11033969250062698690

`A000041(((-1)^n)²)*A248489(A000217(n+5)-4)`
-/

namespace A248486.P11033969250062698690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (((-1) ^ n) ^ 2).toNat * A248489 (A000217 (n + 5) - 4).toNat

end

end A248486.P11033969250062698690

/-!
# A248487: Number of length n+5 0..6 arrays with some three disjoint pairs in each consecutive six terms having the same sum.

The programs for A248487, there is no canonical definition to state claims against.
-/

/-! ## A248487.P8203939032775812645

`A248489(∑[n+6]+10)`
-/

namespace A248487.P8203939032775812645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A248487.P8203939032775812645

/-! ## A248487.P21398051136425556

`A248489(Δ[A026054(n+3)]+1)+A000007(n+1)`
-/

namespace A248487.P21398051136425556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (f1 (n + 1) - f1 n + 1).toNat + A000007 (n + 1)

end

end A248487.P21398051136425556

/-!
# A248488: Number of length n+5 0..7 arrays with some three disjoint pairs in each consecutive six terms having the same sum.

The programs for A248488, there is no canonical definition to state claims against.
-/

/-! ## A248488.P17261854149321292362

`A248489(A055999(n+4))`
-/

namespace A248488.P17261854149321292362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A055999 (n + 4)).toNat

end

end A248488.P17261854149321292362

/-! ## A248488.P815047812365933642

`A248489(eq[6, A193592(n)])`
-/

namespace A248488.P815047812365933642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A248488.P815047812365933642

/-! ## A248488.P7181279603407435022

`A248489(Δ[A026054(n+4)])`
-/

namespace A248488.P7181279603407435022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (f1 (n + 1) - f1 n).toNat

end

end A248488.P7181279603407435022

/-! ## A248488.P14094612028464355197

`A248489(A052905(n+4)-1)`
-/

namespace A248488.P14094612028464355197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A052905 (n + 4) - 1).toNat

end

end A248488.P14094612028464355197

/-! ## A248488.P5734944212987891756

`A248489(A000217(n+7)-6)`
-/

namespace A248488.P5734944212987891756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A000217 (n + 7) - 6).toNat

end

end A248488.P5734944212987891756

/-!
# A248489: T(n,k)=Number of length n+5 0..k arrays with some three disjoint pairs in each consecutive six terms having the same sum.

The programs for A248489, there is no canonical definition to state claims against.
-/

/-! ## A248489.P2868197316413536568

`A248490(A004736(n+1)^A347142(n+1))`
-/

namespace A248489.P2868197316413536568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248490 (SequenceMachineLib.roundAway ((A004736 (n + 1) : ℚ) ^ (A347142 (n + 1) : ℤ))).toNat

end

end A248489.P2868197316413536568

/-! ## A248489.P1539120957105675276

`A248490(A004736(n+1)%A121533(n+1))`
-/

namespace A248489.P1539120957105675276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248490 (Int.tmod (A004736 (n + 1)) (A121533 (n + 1))).toNat

end

end A248489.P1539120957105675276

/-! ## A248489.P10534871637011163141

`A248490(gcd(A004736(n+1), A153434(n+1)))`
-/

namespace A248489.P10534871637011163141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248490 (Int.gcd (A004736 (n + 1)) (A153434 (n + 1)))

end

end A248489.P10534871637011163141

/-!
# A248490: Number of length 1+5 0..n arrays with some three disjoint pairs in each consecutive six terms having the same sum.

The programs for A248490, there is no canonical definition to state claims against.
-/

/-! ## A248490.P3882516806908131231

`(n+2)^6-A248449(n+1)`
-/

namespace A248490.P3882516806908131231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 6 : ℤ) - A248449 (n + 1)

end

end A248490.P3882516806908131231

/-! ## A248490.P13461834476324304283

`A248489(∑[n]+1)`
-/

namespace A248490.P13461834476324304283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A248490.P13461834476324304283

/-! ## A248490.P7941275462418928917

`round(1/acot(A248489(C(n, 2)+n+1)))`
-/

namespace A248490.P7941275462418928917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A248489 (Nat.choose n 2 + (n + 1)) : ℝ))

end

end A248490.P7941275462418928917

/-! ## A248490.P16580148928291062630

`round(sqrt(A248489(C(n+1, 2)+1)²+1))`
-/

namespace A248490.P16580148928291062630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A248489 (Nat.choose (n + 1) 2 + 1) ^ 2 + 1 : ℝ))

end

end A248490.P16580148928291062630

/-! ## A248490.P8114034017556333447

`record[A248489(∑[A057979(n)])]`
-/

namespace A248490.P8114034017556333447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248490.P8114034017556333447

/-! ## A248490.P15808035550327922184

`or(char[1], A248489(A000124(n)))`
-/

namespace A248490.P15808035550327922184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A248489 (A000124 n).toNat)

end

end A248490.P15808035550327922184

/-! ## A248490.P8963276246593845342

`record[A248489(n+1)/A007318(n)]`
-/

namespace A248490.P8963276246593845342
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248489 (n + 1) : ℚ) / (A007318 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248490.P8963276246593845342

/-! ## A248490.P16000749149415111953

`record[gcd(A002262(n), A248489(n+1))]`
-/

namespace A248490.P16000749149415111953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A248489 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248490.P16000749149415111953

/-! ## A248490.P7739457920844523404

`record[A248489(record[2-A007318(n)+n])]`
-/

namespace A248490.P7739457920844523404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A007318 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248490.P7739457920844523404

/-! ## A248490.P4031958318383610039

`A014963(10*(n+1))*A248489(A000124(n))`
-/

namespace A248490.P4031958318383610039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A248489 (A000124 n).toNat

end

end A248490.P4031958318383610039

/-!
# A248491: Number of length 2+5 0..n arrays with some three disjoint pairs in each consecutive six terms having the same sum.

The programs for A248491, there is no canonical definition to state claims against.
-/

/-! ## A248491.P5027209159198213718

`A248489(∑[n+1]+2)`
-/

namespace A248491.P5027209159198213718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A248491.P5027209159198213718

/-! ## A248491.P1938333895077705564

`record[A248489(A022856(n+1))]`
-/

namespace A248491.P1938333895077705564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A022856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248491.P1938333895077705564

/-! ## A248491.P13403309598836911645

`record[A248489(A089071(n+1))]`
-/

namespace A248491.P13403309598836911645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A089071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248491.P13403309598836911645

/-! ## A248491.P7462246375633476554

`record[A248489(A133263(n)-n)]`
-/

namespace A248491.P7462246375633476554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A133263 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248491.P7462246375633476554

/-! ## A248491.P14709277523525589859

`record[A248489(n+1)*A326822(n)]`
-/

namespace A248491.P14709277523525589859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (n + 1) * A326822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248491.P14709277523525589859

/-! ## A248491.P7687975667884633627

`record[A248489(A133263(A076314(n)))]`
-/

namespace A248491.P7687975667884633627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A133263 (A076314 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248491.P7687975667884633627

/-!
# A248492: Number of length 3+5 0..n arrays with some three disjoint pairs in each consecutive six terms having the same sum.

The programs for A248492, there is no canonical definition to state claims against.
-/

/-! ## A248492.P3222390619129885933

`A248489(∑[n+2]+4)`
-/

namespace A248492.P3222390619129885933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A248492.P3222390619129885933

/-! ## A248492.P6115062509494967975

`and(-1, A248489(A167614(n+1)))`
-/

namespace A248492.P6115062509494967975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A248489 (A167614 (n + 1)).toNat)

end

end A248492.P6115062509494967975

/-! ## A248492.P10869001507025214323

`or(char[1], A248489(A046691(n)+7))`
-/

namespace A248492.P10869001507025214323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A248489 (A046691 n + 7).toNat)

end

end A248492.P10869001507025214323

/-! ## A248492.P9929015155097995240

`or(char[1], A248489(A167499(n)+n))`
-/

namespace A248492.P9929015155097995240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A248489 (A167499 n + (n : ℤ)).toNat)

end

end A248492.P9929015155097995240

/-! ## A248492.P1384293714741073132

`floor(atan(n))!*A248489(A055998(n)+6)`
-/

namespace A248492.P1384293714741073132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊Real.arctan (n : ℝ)⌋.toNat : ℤ) * A248489 (A055998 n + 6).toNat

end

end A248492.P1384293714741073132

/-! ## A248492.P17379828167530780131

`A007318(C(n, 2))*A248489(A046691(n)+7)`
-/

namespace A248492.P17379828167530780131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A248489 (A046691 n + 7).toNat

end

end A248492.P17379828167530780131

/-! ## A248492.P2930703869726631915

`A007318(C(n, 2))*A248489(A167499(n)+n)`
-/

namespace A248492.P2930703869726631915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A248489 (A167499 n + (n : ℤ)).toNat

end

end A248492.P2930703869726631915

/-! ## A248492.P6007902230233977251

`lcm(A014963(2*(2*n+1)), A248489(A046691(n)+7))`
-/

namespace A248492.P6007902230233977251
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (2 * (2 * n + 1))) (A248489 (A046691 n + 7).toNat)

end

end A248492.P6007902230233977251

/-! ## A248492.P8443758269989596984

`((-1)^(A007318(n)+1))²*A248489(A046691(n)+7)`
-/

namespace A248492.P8443758269989596984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A007318 n + 1 : ℤ)) ^ 2 * (A248489 (A046691 n + 7).toNat : ℚ)

end

end A248492.P8443758269989596984

/-! ## A248492.P13178314781868873618

`A007318(A020639(3*(n+1)))*A248489(A167499(n)+n)`
-/

namespace A248492.P13178314781868873618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (3 * (n + 1))).toNat * A248489 (A167499 n + (n : ℤ)).toNat

end

end A248492.P13178314781868873618

/-!
# A248493: Number of length 4+5 0..n arrays with some three disjoint pairs in each consecutive six terms having the same sum.

The programs for A248493, there is no canonical definition to state claims against.
-/

/-! ## A248493.P14542723168058288025

`A248489(∑[n+3]+7)`
-/

namespace A248493.P14542723168058288025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A248493.P14542723168058288025

/-! ## A248493.P7431840368322916342

`or(char[1], A248489(A055999(n)+10))`
-/

namespace A248493.P7431840368322916342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A248489 (A055999 n + 10).toNat)

end

end A248493.P7431840368322916342

/-! ## A248493.P11658072245681062006

`or(n%2, A248489(Δ[A008778(n)]+6))`
-/

namespace A248493.P11658072245681062006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A248489 (f1 (n + 1) - f1 n + 6).toNat)

end

end A248493.P11658072245681062006

/-! ## A248493.P2137971337542421044

`abs(1-A248489(A167614(n+2)+1))+1`
-/

namespace A248493.P2137971337542421044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A248489 (A167614 (n + 2) + 1).toNat| + 1

end

end A248493.P2137971337542421044

/-! ## A248493.P5294792574987323602

`A248489(Δ[A008778(n)]+6)%A016948(n)`
-/

namespace A248493.P5294792574987323602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248489 (f1 (n + 1) - f1 n + 6).toNat) (A016948 n)

end

end A248493.P5294792574987323602

/-! ## A248493.P5719772821748396209

`A007318(C(2, n))*A248489(A055999(n)+10)`
-/

namespace A248493.P5719772821748396209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A248489 (A055999 n + 10).toNat

end

end A248493.P5719772821748396209

/-! ## A248493.P10636792455002461199

`A248489(Δ[A008778(n)]+6)+A000007(n+1)`
-/

namespace A248493.P10636792455002461199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (f1 (n + 1) - f1 n + 6).toNat + A000007 (n + 1)

end

end A248493.P10636792455002461199

/-! ## A248493.P10370825833382869885

`A248489(Δ[A008778(n)]+6)+A000038(n+1)`
-/

namespace A248493.P10370825833382869885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (f1 (n + 1) - f1 n + 6).toNat + A000038 (n + 1)

end

end A248493.P10370825833382869885

/-! ## A248493.P4858186610002973364

`A248489(Δ[A008778(n)]+6)+A000035(2*(n+1))`
-/

namespace A248493.P4858186610002973364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (f1 (n + 1) - f1 n + 6).toNat + A000035 (2 * (n + 1))

end

end A248493.P4858186610002973364

/-! ## A248493.P13028838013488435241

`A248489(Δ[A008778(n)]+6)+A008683(9*(n+1))`
-/

namespace A248493.P13028838013488435241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (f1 (n + 1) - f1 n + 6).toNat + A008683 (9 * (n + 1))

end

end A248493.P13028838013488435241

/-!
# A248494: Number of length 5+5 0..n arrays with some three disjoint pairs in each consecutive six terms having the same sum.

The programs for A248494, there is no canonical definition to state claims against.
-/

/-! ## A248494.P16348337327478302627

`A248489(∑[n+4]+11)`
-/

namespace A248494.P16348337327478302627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A248494.P16348337327478302627

/-! ## A248494.P338191695294191647

`abs(1-A248489(A000217(n+4)+5))+1`
-/

namespace A248494.P338191695294191647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A248489 (A000217 (n + 4) + 5).toNat| + 1

end

end A248494.P338191695294191647

/-! ## A248494.P9109718880913818197

`A248489(A000217(n+4)+5)*A304042(n)`
-/

namespace A248494.P9109718880913818197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A000217 (n + 4) + 5).toNat * A304042 n

end

end A248494.P9109718880913818197

/-! ## A248494.P5379191497173677764

`char[A182182(n)]*A248489(A000217(n+4)+5)`
-/

namespace A248494.P5379191497173677764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182182 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A248489 (A000217 (n + 4) + 5).toNat

end

end A248494.P5379191497173677764

/-! ## A248494.P3695871462995966190

`A007318(C(2, n))*A248489(A000217(n+4)+5)`
-/

namespace A248494.P3695871462995966190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A248489 (A000217 (n + 4) + 5).toNat

end

end A248494.P3695871462995966190

/-! ## A248494.P9280749683385211203

`gcd(9, A043561(n))*A248489(A000217(n+4)+5)`
-/

namespace A248494.P9280749683385211203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 9 (A043561 n) : ℤ) * A248489 (A000217 (n + 4) + 5).toNat

end

end A248494.P9280749683385211203

/-! ## A248494.P7181177443226122204

`A248489(A000217(n+4)+5)+A008683(4*(n+1))`
-/

namespace A248494.P7181177443226122204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A000217 (n + 4) + 5).toNat + A008683 (4 * (n + 1))

end

end A248494.P7181177443226122204

/-! ## A248494.P1457897464888184722

`A006530(gcd(n, n+1))*A248489(A000217(n+4)+5)`
-/

namespace A248494.P1457897464888184722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.gcd n (n + 1)) * A248489 (A000217 (n + 4) + 5).toNat

end

end A248494.P1457897464888184722

/-! ## A248494.P17763451103183642764

`A248489(A000217(n+4)+5)%(A016948(n)-A077070(n))`
-/

namespace A248494.P17763451103183642764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248489 (A000217 (n + 4) + 5).toNat) (A016948 n - A077070 n)

end

end A248494.P17763451103183642764

/-! ## A248494.P14680761505750091583

`A001222(A084696(2*n+1))*A248489(A000217(n+4)+5)`
-/

namespace A248494.P14680761505750091583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A084696 (2 * n + 1)).toNat * A248489 (A000217 (n + 4) + 5).toNat

end

end A248494.P14680761505750091583

/-!
# A248495: Number of length 6+5 0..n arrays with some three disjoint pairs in each consecutive six terms having the same sum.

The programs for A248495, there is no canonical definition to state claims against.
-/

/-! ## A248495.P13975948759531789917

`A248489(∑[n+5]+16)`
-/

namespace A248495.P13975948759531789917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A248495.P13975948759531789917

/-! ## A248495.P4589344485831243222

`or(char[1], A248489(A133263(n+5)+4))`
-/

namespace A248495.P4589344485831243222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A248489 (A133263 (n + 5) + 4).toNat)

end

end A248495.P4589344485831243222

/-! ## A248495.P16309626066420771319

`or(char[1], A248489(A000217(n+5)+6))`
-/

namespace A248495.P16309626066420771319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A248489 (A000217 (n + 5) + 6).toNat)

end

end A248495.P16309626066420771319

/-! ## A248495.P1457310968530073425

`char[A061579(n)]*A248489(A000217(n+5)+6)`
-/

namespace A248495.P1457310968530073425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A248489 (A000217 (n + 5) + 6).toNat

end

end A248495.P1457310968530073425

/-! ## A248495.P5508788295704528153

`A248489(A166136(n+4))+A036988(2*n+1)`
-/

namespace A248495.P5508788295704528153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A166136 (n + 4)).toNat + A036988 (2 * n + 1)

end

end A248495.P5508788295704528153

/-! ## A248495.P7484863480905474117

`gcd(A000038(n+1), A248489(A133263(n+5)+4))`
-/

namespace A248495.P7484863480905474117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (n + 1)) (A248489 (A133263 (n + 5) + 4).toNat)

end

end A248495.P7484863480905474117

/-! ## A248495.P14358304217852325005

`A007318(C(2, n))*A248489(A000217(n+5)+6)`
-/

namespace A248495.P14358304217852325005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A248489 (A000217 (n + 5) + 6).toNat

end

end A248495.P14358304217852325005

/-! ## A248495.P2605131479964949322

`A000041(round(n/39))*A248489(A133263(n+5)+4)`
-/

namespace A248495.P2605131479964949322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway ((n : ℚ) / 39)).toNat * A248489 (A133263 (n + 5) + 4).toNat

end

end A248495.P2605131479964949322

/-! ## A248495.P13166603621904377715

`A248489(A133263(n+5)+4)+A008683(4*(n+1))`
-/

namespace A248495.P13166603621904377715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A133263 (n + 5) + 4).toNat + A008683 (4 * (n + 1))

end

end A248495.P13166603621904377715

/-! ## A248495.P9941480802501076566

`A014963(6*(n+1))*A248489(A000217(n+5)+6)`
-/

namespace A248495.P9941480802501076566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A248489 (A000217 (n + 5) + 6).toNat

end

end A248495.P9941480802501076566

/-!
# A248496: Number of length 7+5 0..n arrays with some three disjoint pairs in each consecutive six terms having the same sum.

The programs for A248496, there is no canonical definition to state claims against.
-/

/-! ## A248496.P14665110585712762634

`A248489(∑[n+6]+22)`
-/

namespace A248496.P14665110585712762634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A248496.P14665110585712762634

/-! ## A248496.P18433155099989017841

`∑{d}[A248489(A167499(n+5)+2), A000010(#)]`
-/

namespace A248496.P18433155099989017841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248489 (A167499 (n + 5) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A248496.P18433155099989017841

/-!
# A248498: The smallest number of consecutive primes beginning with prime(n+1) added to prime(n) necessary to produce another prime.

The programs for A248498, there is no canonical definition to state claims against.
-/

/-! ## A248498.P10145567773276625198

`A071194(n+1)-1`
-/

namespace A248498.P10145567773276625198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071194 (n + 1) - 1

end

end A248498.P10145567773276625198

/-! ## A248498.P8057301414365815241

`A023443(A071194(n+1))`
-/

namespace A248498.P8057301414365815241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A071194 (n + 1)).toNat

end

end A248498.P8057301414365815241

/-! ## A248498.P13154582416097250112

`A000720(A071195(n+1))-(n+1)`
-/

namespace A248498.P13154582416097250112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A071195 (n + 1)).toNat - (n + 1 : ℤ)

end

end A248498.P13154582416097250112

/-! ## A248498.P17641730653871719088

`A336315(A071195(n+1))-(A000027(n+1)+1)`
-/

namespace A248498.P17641730653871719088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336315 (A071195 (n + 1)).toNat - (A000027 (n + 1) + 1)

end

end A248498.P17641730653871719088

/-! ## A248498.P13161392201232726342

`A056239(A071195(n+1))-A000027(n+1)`
-/

namespace A248498.P13161392201232726342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A071195 (n + 1)).toNat - A000027 (n + 1)

end

end A248498.P13161392201232726342

/-! ## A248498.P6366694763448873955

`A056239(A071195(n+1))-A008619(2*n)`
-/

namespace A248498.P6366694763448873955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A071195 (n + 1)).toNat - A008619 (2 * n)

end

end A248498.P6366694763448873955

/-! ## A248498.P11994682324236689563

`A092673(A031928(n+1))+A071194(n+1)`
-/

namespace A248498.P11994682324236689563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (A031928 (n + 1)).toNat + A071194 (n + 1)

end

end A248498.P11994682324236689563

/-!
# A248499: Numbers m that are coprime to A059995(m): floor(m/10).

The programs for A248499, the canonical program `A248499.P16177502757618689065` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A248499 has offset 1).

The definition of A248499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5823 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A248499.P16177502757618689065

`eq[1, gcd(n, A059995(n))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A248499

/-- `eq[1, gcd(n, A059995(n))]` -/
def P16177502757618689065.Spec : Prop :=
  ∀ n, (P16177502757618689065.a n : ℤ) = A248499 (n + 1)

theorem P16177502757618689065.correct : P16177502757618689065.Spec := by
  intro n
  simp only [A248499, Nat.add_sub_cancel]

end A248499

/-! ## A248499.P1523738007139765105

`eq[1, gcd(n², A081600(n))]`
-/

namespace A248499.P1523738007139765105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A081600 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248499.P1523738007139765105

namespace A248499

/-- `eq[1, gcd(n², A081600(n))]` -/
def P1523738007139765105.Spec : Prop :=
  ∀ n, (P1523738007139765105.a n : ℤ) = A248499 (n + 1)

end A248499

/-! ## A248499.P17916970856680388710

`record[(n+1)/gcd(n+1, A059995(n+1))]`
-/

namespace A248499.P17916970856680388710
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A059995 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248499.P17916970856680388710

namespace A248499

/-- `record[(n+1)/gcd(n+1, A059995(n+1))]` -/
def P17916970856680388710.Spec : Prop :=
  ∀ n, P17916970856680388710.a n = (A248499 (n + 1) : ℚ)

end A248499

/-! ## A248499.P5954012169257421618

`record[(n+1)/gcd((n+1)², A081600(n+1))]`
-/

namespace A248499.P5954012169257421618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd ((n + 1) ^ 2 : ℤ) (A081600 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A248499.P5954012169257421618

namespace A248499

/-- `record[(n+1)/gcd((n+1)², A081600(n+1))]` -/
def P5954012169257421618.Spec : Prop :=
  ∀ n, P5954012169257421618.a n = (A248499 (n + 1) : ℚ)

end A248499

/-! ## A248499.P3406436954155686483

`eq[1, gcd(A076309(n), A076313(n))]`
-/

namespace A248499.P3406436954155686483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076309 n) (A076313 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248499.P3406436954155686483

namespace A248499

/-- `eq[1, gcd(A076309(n), A076313(n))]` -/
def P3406436954155686483.Spec : Prop :=
  ∀ n, (P3406436954155686483.a n : ℤ) = A248499 (n + 1)

end A248499

/-! ## A248499.P16956601394498769449

`eq[1, gcd(A076312(n), A076314(n))]`
-/

namespace A248499.P16956601394498769449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A076312 n) (A076314 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248499.P16956601394498769449

namespace A248499

/-- `eq[1, gcd(A076312(n), A076314(n))]` -/
def P16956601394498769449.Spec : Prop :=
  ∀ n, (P16956601394498769449.a n : ℤ) = A248499 (n + 1)

end A248499

/-! ## A248499.P2218550009897404801

`eq[1, gcd(A081597(n), A081598(n))]`
-/

namespace A248499.P2218550009897404801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081597 n) (A081598 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A248499.P2218550009897404801

namespace A248499

/-- `eq[1, gcd(A081597(n), A081598(n))]` -/
def P2218550009897404801.Spec : Prop :=
  ∀ n, (P2218550009897404801.a n : ℤ) = A248499 (n + 1)

end A248499

