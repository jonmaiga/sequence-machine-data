import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

/-!
# A368400: Irregular triangle read by rows: T(n,k) is the position of k within the Christmas tree pattern (A367562) of order n, with n >= 1 and k >= 0.

The programs for A368400, there is no canonical definition to state claims against.
-/

/-! ## A368400.P2571650399543834089

`A062050(A368428(n+2))`
-/

namespace A368400.P2571650399543834089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062050 (A368428 (n + 2)).toNat

end

end A368400.P2571650399543834089

/-!
# A368402: Numbers k such that k and k+1 are both in A268375.

The programs for A368402, the canonical program `A368402.P12196050188781490392` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368402 has offset 1).

The definition of A368402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368402.P12196050188781490392

`∩[A268375(n+1)-1, A268375(n+1)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A368402

/-- `∩[A268375(n+1)-1, A268375(n+1)]` -/
def P12196050188781490392.Spec : Prop :=
  ∀ n, (P12196050188781490392.a n : ℤ) = A368402 (n + 1)

theorem P12196050188781490392.correct : P12196050188781490392.Spec := by
  intro n
  simp only [A368402, Nat.add_sub_cancel]

end A368402

/-!
# A368403: Starts of runs of 3 consecutive integers in A268375.

The programs for A368403, the canonical program `A368403.P10694540058155907726` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368403 has offset 1).

The definition of A368403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 558 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368403.P10694540058155907726

`∩[A368402(n+1)-1, A368402(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A368403

/-- `∩[A368402(n+1)-1, A368402(n+1)]` -/
def P10694540058155907726.Spec : Prop :=
  ∀ n, (P10694540058155907726.a n : ℤ) = A368403 (n + 1)

theorem P10694540058155907726.correct : P10694540058155907726.Spec := by
  intro n
  simp only [A368403, Nat.add_sub_cancel]

end A368403

/-! ## A368403.P4273693555023990353

`∩[A113191(n+1), A342029(n+1)]`
-/

namespace A368403.P4273693555023990353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368403.P4273693555023990353

namespace A368403

/-- `∩[A113191(n+1), A342029(n+1)]` -/
def P4273693555023990353.Spec : Prop :=
  ∀ n, (P4273693555023990353.a n : ℤ) = A368403 (n + 1)

end A368403

/-! ## A368403.P5667529426379149844

`∩[A342029(n+1), A382152(n+1)]`
-/

namespace A368403.P5667529426379149844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368403.P5667529426379149844

namespace A368403

/-- `∩[A342029(n+1), A382152(n+1)]` -/
def P5667529426379149844.Spec : Prop :=
  ∀ n, (P5667529426379149844.a n : ℤ) = A368403 (n + 1)

end A368403

/-!
# A368404: Starts of runs of 4 consecutive integers in A268375.

The programs for A368404, there is no canonical definition to state claims against.
-/

/-! ## A368404.P12940782600709187596

`∩[A342030(n+1), A368403(n+1)]`
-/

namespace A368404.P12940782600709187596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368404.P12940782600709187596

/-! ## A368404.P2866804857803441380

`∩[A368402(n+1)-2, A368402(n+1)]`
-/

namespace A368404.P2866804857803441380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368402 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368404.P2866804857803441380

/-! ## A368404.P9574991895623678520

`A342030(A219040(n+1)+A199092(3*n+1))`
-/

namespace A368404.P9574991895623678520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342030 (A219040 (n + 1) + A199092 (3 * n + 1)).toNat

end

end A368404.P9574991895623678520

/-! ## A368404.P2387193189059336670

`A342030(lt[A277055(3*n+2), A301397(n+1)])`
-/

namespace A368404.P2387193189059336670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277055 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342030 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A368404.P2387193189059336670

/-!
# A368405: Infinitary version of Mertens's function: a(n) = Sum_{k=1..n} A064179(k).

The programs for A368405, the canonical program `A368405.P11135542014781809674` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368405 has offset 1).

The definition of A368405 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368405.P18242477140952639557

`∑[(-1)^∑{e}[n+1, val((2*#)!, 2)]]`
-/

namespace A368405.P18242477140952639557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation (Nat.factorial (2 * Nat.factorization (f2 n) p)) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368405.P18242477140952639557

namespace A368405

/-- `∑[(-1)^∑{e}[n+1, val((2*#)!, 2)]]` -/
def P18242477140952639557.Spec : Prop :=
  ∀ n, P18242477140952639557.a n = A368405 (n + 1)

end A368405

/-! ## A368405.P13193258014508799513

`∑[(-1)^∑{e}[n+1, #-val(#!, 2)]]`
-/

namespace A368405.P13193258014508799513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p : ℤ) - (SequenceMachineLib.valuation (Nat.factorial (Nat.factorization (f2 n) p)) 2 : ℤ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368405.P13193258014508799513

namespace A368405

/-- `∑[(-1)^∑{e}[n+1, #-val(#!, 2)]]` -/
def P13193258014508799513.Spec : Prop :=
  ∀ n, P13193258014508799513.a n = (A368405 (n + 1) : ℚ)

end A368405

/-! ## A368405.P14351299755977916204

`∑[A064179(n+1)]`
-/

namespace A368405.P14351299755977916204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368405.P14351299755977916204

namespace A368405

/-- `∑[A064179(n+1)]` -/
def P14351299755977916204.Spec : Prop :=
  ∀ n, P14351299755977916204.a n = A368405 (n + 1)

end A368405

/-! ## A368405.P11135542014781809674

`∑[∏{e}[n+1, A106400(#)]]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A368405

/-- `∑[∏{e}[n+1, A106400(#)]]` -/
def P11135542014781809674.Spec : Prop :=
  ∀ n, P11135542014781809674.a n = A368405 (n + 1)

theorem P11135542014781809674.correct : P11135542014781809674.Spec := by
  intro n
  simp only [A368405, Nat.add_sub_cancel]

end A368405

/-! ## A368405.P11063803235624890169

`∑[(-1)^A064547(n+1)]`
-/

namespace A368405.P11063803235624890169
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A064547 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368405.P11063803235624890169

namespace A368405

/-- `∑[(-1)^A064547(n+1)]` -/
def P11063803235624890169.Spec : Prop :=
  ∀ n, P11063803235624890169.a n = (A368405 (n + 1) : ℚ)

end A368405

/-! ## A368405.P6705272663830372717

`A064179((n+1)²)+a(n-1)` with `a(0)=1`
-/

namespace A368405.P6705272663830372717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064179 ((n + 1) ^ 2) + a (n - 1)

end

end A368405.P6705272663830372717

namespace A368405

/-- `A064179((n+1)²)+a(n-1)` -/
def P6705272663830372717.Spec : Prop :=
  ∀ n, P6705272663830372717.a n = A368405 (n + 1)

end A368405

/-! ## A368405.P1121063328648357122

`∑[A004718(A046644(n+1))]`
-/

namespace A368405.P1121063328648357122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (A046644 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368405.P1121063328648357122

namespace A368405

/-- `∑[A004718(A046644(n+1))]` -/
def P1121063328648357122.Spec : Prop :=
  ∀ n, P1121063328648357122.a n = A368405 (n + 1)

end A368405

/-!
# A368409: Number of non-isomorphic connected set-systems of weight n contradicting a strict version of the axiom of choice.

The programs for A368409, there is no canonical definition to state claims against.
-/

/-! ## A368409.P8745518660530695907

`A096815(A324751(3*n+2))-1`
-/

namespace A368409.P8745518660530695907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096815 (A324751 (3 * n + 2)).toNat - 1

end

end A368409.P8745518660530695907

/-! ## A368409.P6626715576042320764

`A355734(A058187(n))%A000055(n)`
-/

namespace A368409.P6626715576042320764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A355734 (A058187 n).toNat) (A000055 n)

end

end A368409.P6626715576042320764

/-! ## A368409.P16965697073579552703

`A011842(A099962(n+4))%A099962(n)`
-/

namespace A368409.P16965697073579552703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011842 (A099962 (n + 4)).toNat) (A099962 n)

end

end A368409.P16965697073579552703

/-! ## A368409.P3542872213982048905

`A007547(A032302(2*(n+1)))%A000055(n)`
-/

namespace A368409.P3542872213982048905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007547 (A032302 (2 * (n + 1))).toNat) (A000055 n)

end

end A368409.P3542872213982048905

/-!
# A368410: Number of non-isomorphic connected set-systems of weight n satisfying a strict version of the axiom of choice.

The programs for A368410, there is no canonical definition to state claims against.
-/

/-! ## A368410.P15421643395591720887

`A390674(A003242(n))-A083035(n+1)`
-/

namespace A368410.P15421643395591720887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390674 (A003242 n).toNat - A083035 (n + 1)

end

end A368410.P15421643395591720887

/-!
# A368413: Number of factorizations of n into positive integers > 1 such that it is not possible to choose a different prime factor of each factor.

The programs for A368413, there is no canonical definition to state claims against.
-/

/-! ## A368413.P16021812914352666471

`A001055(n+1)-A368414(n+1)`
-/

namespace A368413.P16021812914352666471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A368414 (n + 1)

end

end A368413.P16021812914352666471

/-! ## A368413.P14674496516992957496

`A001055(n+1)-A379046(∏{e}[n+1, #+1]-∑{e}[n+1, #])`
-/

namespace A368413.P14674496516992957496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A379046 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) - ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A368413.P14674496516992957496

/-! ## A368413.P2002385053756081460

`A050322(A101296(n+1))-A368414(n+1)`
-/

namespace A368413.P2002385053756081460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (A101296 (n + 1)).toNat - A368414 (n + 1)

end

end A368413.P2002385053756081460

/-! ## A368413.P13940892530719448168

`A033273(n+1)+A167688(n+1)-A368414(n+1)`
-/

namespace A368413.P13940892530719448168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (n + 1) + (A167688 (n + 1) - A368414 (n + 1))

end

end A368413.P13940892530719448168

/-! ## A368413.P11298344826534539255

`A001055(n+1)-A357082(A000005(n+1)-∑{e}[n+1, #])`
-/

namespace A368413.P11298344826534539255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A357082 (A000005 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A368413.P11298344826534539255

/-! ## A368413.P121864962545777881

`A001055(n+1)-A266638(A000005(n+1)-A001222(n+1))`
-/

namespace A368413.P121864962545777881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A266638 (A000005 (n + 1) - A001222 (n + 1)).toNat

end

end A368413.P121864962545777881

/-!
# A368414: Number of factorizations of n into positive integers > 1 such that it is possible to choose a different prime factor of each factor.

The programs for A368414, there is no canonical definition to state claims against.
-/

/-! ## A368414.P13318427578419866545

`A001055(n+1)-A368413(n+1)`
-/

namespace A368414.P13318427578419866545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A368413 (n + 1)

end

end A368414.P13318427578419866545

/-! ## A368414.P13030268247398847097

`A379046(∏{e}[n+1, #+1]-∑{e}[n+1, #])`
-/

namespace A368414.P13030268247398847097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379046 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) - ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A368414.P13030268247398847097

/-! ## A368414.P10684598824495297773

`A091334(A285572(n+1))`
-/

namespace A368414.P10684598824495297773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091334 (A285572 (n + 1)).toNat

end

end A368414.P10684598824495297773

/-! ## A368414.P12738844246951177778

`A391713(n+1)+A050320(n+1)`
-/

namespace A368414.P12738844246951177778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391713 (n + 1) + A050320 (n + 1)

end

end A368414.P12738844246951177778

/-! ## A368414.P10368608467923025014

`A232639(A000005(n+1)-∑{e}[n+1, #])`
-/

namespace A368414.P10368608467923025014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232639 (A000005 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A368414.P10368608467923025014

/-! ## A368414.P2950161263896217819

`A256231(A000005(n+1)-∑{e}[n+1, #])`
-/

namespace A368414.P2950161263896217819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256231 (A000005 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A368414.P2950161263896217819

/-! ## A368414.P4142462997033615189

`A283192(A000005(n+1)-∑{e}[n+1, #])`
-/

namespace A368414.P4142462997033615189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283192 (A000005 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A368414.P4142462997033615189

/-! ## A368414.P16353556831544512889

`A357082(A000005(n+1)-∑{e}[n+1, #])`
-/

namespace A368414.P16353556831544512889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357082 (A000005 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)).toNat

end

end A368414.P16353556831544512889

/-! ## A368414.P9986994724508109439

`A005940(A065515(∏{e}[n+1, #+1]-∑{e}[n+1, #]))`
-/

namespace A368414.P9986994724508109439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A065515 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) - ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)).toNat

end

end A368414.P9986994724508109439

/-! ## A368414.P4619435228900013806

`A118462(A000005(n+1)-A001222(n+1))`
-/

namespace A368414.P4619435228900013806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118462 (A000005 (n + 1) - A001222 (n + 1)).toNat

end

end A368414.P4619435228900013806

/-!
# A368416: Numbers k whose decimal expansion can be split into two parts s and t with k = s^2 + t^2.

The programs for A368416, there is no canonical definition to state claims against.
-/

/-! ## A368416.P5868190869936901733

`A178530(n+4)`
-/

namespace A368416.P5868190869936901733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178530 (n + 4)

end

end A368416.P5868190869936901733

/-! ## A368416.P2241361968702939228

`A101311(n+1)+A087702(3*(n+1))²`
-/

namespace A368416.P2241361968702939228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101311 (n + 1) + A087702 (3 * (n + 1)) ^ 2

end

end A368416.P2241361968702939228

/-! ## A368416.P13476565250009389338

`A285648(A000010(2*n+3))+A101311(n+1)`
-/

namespace A368416.P13476565250009389338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285648 (A000010 (2 * n + 3)).toNat + A101311 (n + 1)

end

end A368416.P13476565250009389338

/-!
# A368421: Number of non-isomorphic set multipartitions of weight n contradicting a strict version of the axiom of choice.

The programs for A368421, there is no canonical definition to state claims against.
-/

/-! ## A368421.P8328252601096230548

`A004481(A006154(n)-A103300(n))`
-/

namespace A368421.P8328252601096230548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004481 (A006154 n - A103300 n).toNat

end

end A368421.P8328252601096230548

/-! ## A368421.P17601827060100727012

`A001006(n)-A039644(A103620(n))`
-/

namespace A368421.P17601827060100727012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A039644 (A103620 n).toNat

end

end A368421.P17601827060100727012

/-! ## A368421.P5498053927742097381

`A033107(A114396(n+1)+A110156(n))`
-/

namespace A368421.P5498053927742097381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033107 (A114396 (n + 1) + A110156 n).toNat

end

end A368421.P5498053927742097381

/-! ## A368421.P7880950248687017165

`A001006(n)-A000120(A079457(n+1))`
-/

namespace A368421.P7880950248687017165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A000120 (A079457 (n + 1)).toNat

end

end A368421.P7880950248687017165

/-!
# A368422: Number of non-isomorphic set multipartitions of weight n satisfying a strict version of the axiom of choice.

The programs for A368422, there is no canonical definition to state claims against.
-/

/-! ## A368422.P8033040385489732379

`A057365(A319768(n)+A098859(n))`
-/

namespace A368422.P8033040385489732379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057365 (A319768 n + A098859 n).toNat

end

end A368422.P8033040385489732379

/-!
# A368423: The least number of applications of functions in the Wainer hierarchy to reach n, starting from 0.

The programs for A368423, there is no canonical definition to state claims against.
-/

/-! ## A368423.P4614769091290295074

`A004216(A002496(n+1))+A000120(n)`
-/

namespace A368423.P4614769091290295074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A002496 (n + 1)).toNat + A000120 n

end

end A368423.P4614769091290295074

/-! ## A368423.P9051997720883060891

`A333525(A169802(n+1))+A000120(n)`
-/

namespace A368423.P9051997720883060891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333525 (A169802 (n + 1)).toNat + A000120 n

end

end A368423.P9051997720883060891

/-! ## A368423.P10702588170666032632

`A357186((2*∑[and(n, -n)²]+n)/3)`
-/

namespace A368423.P10702588170666032632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357186 (SequenceMachineLib.roundAway (((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3)).toNat

end

end A368423.P10702588170666032632

/-! ## A368423.P3925334693611244254

`A357186(A000695(n))`
-/

namespace A368423.P3925334693611244254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357186 (A000695 n).toNat

end

end A368423.P3925334693611244254

/-! ## A368423.P4442302456820003222

`A357186(record[A063694(n)])`
-/

namespace A368423.P4442302456820003222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357186 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A368423.P4442302456820003222

/-!
# A368429: Main diagonal of A357914.

The programs for A368429, there is no canonical definition to state claims against.
-/

/-! ## A368429.P7235010676367919856

`A357914((n+1)²+n²)`
-/

namespace A368429.P7235010676367919856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357914 ((n + 1) ^ 2 + n ^ 2)

end

end A368429.P7235010676367919856

/-! ## A368429.P3663302231655994531

`A008617(A257838(n)-A027430(n+1))`
-/

namespace A368429.P3663302231655994531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A257838 n - A027430 (n + 1)).toNat

end

end A368429.P3663302231655994531

/-!
# A368430: Number of binary words of length n not containing the substrings 0000, 0001, 0011, 0111.

The programs for A368430, the canonical program `A368430.P10998706655070685880` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368430 has offset 0).

The definition of A368430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368430.P10998706655070685880

`a(n-1)+a(n-2)+a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A368430

/-- `a(n-1)+a(n-2)+a(n-3)-2*a(n-4)` -/
def P10998706655070685880.Spec : Prop :=
  ∀ n, P10998706655070685880.a n = A368430 n

theorem P10998706655070685880.correct : P10998706655070685880.Spec := by
  intro n
  simp only [A368430]

end A368430

/-! ## A368430.P5953704481594315256

`a(n-2)+2*(a(n-3)+2)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A368430.P5953704481594315256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 2) + 2 * (a (n - 3) + 2)

end

end A368430.P5953704481594315256

namespace A368430

/-- `a(n-2)+2*(a(n-3)+2)` -/
def P5953704481594315256.Spec : Prop :=
  ∀ n, (P5953704481594315256.a n : ℤ) = A368430 n

end A368430

/-! ## A368430.P12880732761472864547

`a(n-2)+a(n-3)+a(n-3)+4` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A368430.P12880732761472864547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  a (n - 2) + (a (n - 3) + (a (n - 3) + 4))

end

end A368430.P12880732761472864547

namespace A368430

/-- `a(n-2)+a(n-3)+a(n-3)+4` -/
def P12880732761472864547.Spec : Prop :=
  ∀ n, (P12880732761472864547.a n : ℤ) = A368430 n

end A368430

/-! ## A368430.P5368276875059160365

`A052947(n)+A288668(n)-2`
-/

namespace A368430.P5368276875059160365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052947 n + (A288668 n - 2)

end

end A368430.P5368276875059160365

namespace A368430

/-- `A052947(n)+A288668(n)-2` -/
def P5368276875059160365.Spec : Prop :=
  ∀ n, P5368276875059160365.a n = A368430 n

end A368430

/-!
# A368433: a(n) is the number of reduced instances in the stable marriage problem of order n that generate the maximum possible number of stable matchings.

The programs for A368433, there is no canonical definition to state claims against.
-/

/-! ## A368433.P1122441899067350705

`A344669(n+1)/A010790(n)`
-/

namespace A368433.P1122441899067350705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344669 (n + 1) : ℚ) / (A010790 n : ℚ)

end

end A368433.P1122441899067350705

/-!
# A368434: Irregular triangular array T, read by rows: T(n,k) = number of sums |x-y|+|y-z| = k, where x,y,z are in {1,...,n}.

The programs for A368434, there is no canonical definition to state claims against.
-/

/-! ## A368434.P16559139519331879156

`A368435(A020703(n+1))`
-/

namespace A368434.P16559139519331879156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368435 (A020703 (n + 1)).toNat

end

end A368434.P16559139519331879156

/-!
# A368435: Irregular triangular array T, read by rows: T(n,k) = number of sums |x-y|+|y-z| = 2n-2-k, where x,y,z are in {1,...,n}.

The programs for A368435, there is no canonical definition to state claims against.
-/

/-! ## A368435.P14909153680410563421

`A368434(A020703(n+1))`
-/

namespace A368435.P14909153680410563421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368434 (A020703 (n + 1)).toNat

end

end A368435.P14909153680410563421

/-!
# A368436: Irregular triangular array T, read by rows: T(n,k) = number of sums |x-y|+|y-z| = k, where (x,y,z) is a permutation of three distinct numbers x,y,z taken from {0,1,...,n}, for n >= 2, k >= 2.

The programs for A368436, there is no canonical definition to state claims against.
-/

/-! ## A368436.P1874444217289126012

`A368437(A137575(3*n+2)-n)`
-/

namespace A368436.P1874444217289126012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368437 (A137575 (3 * n + 2) - (n : ℤ)).toNat

end

end A368436.P1874444217289126012

/-!
# A368438: Expansion of e.g.f. exp(x) / (3 - 2*exp(2*x)).

The programs for A368438, there is no canonical definition to state claims against.
-/

/-! ## A368438.P12956264474423674089

`A047273(A368442(n)+1)`
-/

namespace A368438.P12956264474423674089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (A368442 n + 1).toNat

end

end A368438.P12956264474423674089

/-!
# A368442: Expansion of e.g.f. exp(-x) / (3 - 2*exp(2*x)).

The programs for A368442, there is no canonical definition to state claims against.
-/

/-! ## A368442.P11231163753409866520

`2*floor(A368438(n)/3)+1`
-/

namespace A368442.P11231163753409866520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A368438 n : ℚ) / 3⌋ + 1

end

end A368442.P11231163753409866520

/-!
# A368444: Expansion of e.g.f. exp(x) / (1 + log(1 - 2*x)).

The programs for A368444, there is no canonical definition to state claims against.
-/

/-! ## A368444.P10439407848821243146

`A070087(A370259(n+1))-2`
-/

namespace A368444.P10439407848821243146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070087 (A370259 (n + 1)).toNat - 2

end

end A368444.P10439407848821243146

/-!
# A368446: Expansion of e.g.f. exp(-x) / (1 + log(1 - 2*x)).

The programs for A368446, there is no canonical definition to state claims against.
-/

/-! ## A368446.P5879112238024931725

`A109613(n^(n+1))`
-/

namespace A368446.P5879112238024931725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n ^ (n + 1))

end

end A368446.P5879112238024931725

/-!
# A368449: Expansion of e.g.f. exp(x) / (1 + log(1 - 2*x)/2).

The programs for A368449, there is no canonical definition to state claims against.
-/

/-! ## A368449.P17010406025179592383

`∑[A303845(A058785(n))]`
-/

namespace A368449.P17010406025179592383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303845 (A058785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368449.P17010406025179592383

/-!
# A368450: Expansion of e.g.f. exp(x) / (1 + log(1 - 3*x)/3).

The programs for A368450, there is no canonical definition to state claims against.
-/

/-! ## A368450.P11232560947336532037

`A122797(3*n*a(n-1))` with `a(0)=1`
-/

namespace A368450.P11232560947336532037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122797 ((3 * n : ℤ) * a (n - 1)).toNat

end

end A368450.P11232560947336532037

/-!
# A368451: Expansion of e.g.f. exp(-x) / (1 + log(1 - 2*x)/2).

The programs for A368451, there is no canonical definition to state claims against.
-/

/-! ## A368451.P3383143420584206591

`((a(n-1)+1)*(2^2^(n-1)-1))%A318052(2*n+3)` with `a(0)=1, a(1)=0`
-/

namespace A368451.P3383143420584206591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  Int.tmod (SequenceMachineLib.roundAway ((a (n - 1) + 1 : ℝ) * ((2 : ℝ) ^ ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - 1))) (A318052 (2 * n + 3))

end

end A368451.P3383143420584206591

/-!
# A368452: Expansion of e.g.f. exp(-x) / (1 + log(1 - 3*x)/3).

The programs for A368452, there is no canonical definition to state claims against.
-/

/-! ## A368452.P13229329877593056541

`A105515(xor(6, A031971(n+1)))`
-/

namespace A368452.P13229329877593056541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105515 (Int.xor 6 (A031971 (n + 1))).toNat

end

end A368452.P13229329877593056541

/-!
# A368453: Expansion of e.g.f. 3*exp(x) / (4 - exp(3*x)).

The programs for A368453, there is no canonical definition to state claims against.
-/

/-! ## A368453.P14944876154217323606

`A173643(A123203(n+1))`
-/

namespace A368453.P14944876154217323606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173643 (A123203 (n + 1)).toNat

end

end A368453.P14944876154217323606

/-!
# A368454: Expansion of e.g.f. 2*exp(-x) / (3 - exp(2*x)).

The programs for A368454, there is no canonical definition to state claims against.
-/

/-! ## A368454.P18284564213838938551

`A189919(n)-a(n-1)` with `a(0)=1`
-/

namespace A368454.P18284564213838938551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A189919 n - a (n - 1)

end

end A368454.P18284564213838938551

/-!
# A368455: Expansion of e.g.f. 3*exp(-x) / (4 - exp(3*x)).

The programs for A368455, there is no canonical definition to state claims against.
-/

/-! ## A368455.P14628395965736916658

`A005649(n)-A269725(A000079(n))`
-/

namespace A368455.P14628395965736916658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005649 n - A269725 (A000079 n).toNat

end

end A368455.P14628395965736916658

/-!
# A368458: Numbers k such that 2*(Bacher(k) - sigma(k)) + k + 1 > 0.

The programs for A368458, there is no canonical definition to state claims against.
-/

/-! ## A368458.P9782639586457538177

`lt[1, A368457(n+1)+1]+1`
-/

namespace A368458.P9782639586457538177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368457 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A368458.P9782639586457538177

/-! ## A368458.P5697079416915993068

`∩[A076271(n+1), A331913(n+1)]`
-/

namespace A368458.P5697079416915993068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368458.P5697079416915993068

/-! ## A368458.P9546713673317863931

`A094548(a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A368458.P9546713673317863931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A094548 (a (n - 1)).toNat

end

end A368458.P9546713673317863931

/-!
# A368459: Numbers k such that 2*(Bacher(k) - sigma(k)) + k + 1 < 0.

The programs for A368459, there is no canonical definition to state claims against.
-/

/-! ## A368459.P16338348012811121650

`lt[or(1, n+2)²/8, A152061(n)+1]`
-/

namespace A368459.P16338348012811121650
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (n + 2) ^ 2 : ℚ) / 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152061 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A368459.P16338348012811121650

/-! ## A368459.P9696463959450324261

`lt[A151664(n), A018783(n)]`
-/

namespace A368459.P9696463959450324261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151664 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368459.P9696463959450324261

/-! ## A368459.P1255194974437205029

`lt[A219032(n), A078898(n)]`
-/

namespace A368459.P1255194974437205029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219032 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368459.P1255194974437205029

/-! ## A368459.P10810221156085696899

`lt[A074458(n), A078898(n)²]`
-/

namespace A368459.P10810221156085696899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074458 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368459.P10810221156085696899

/-! ## A368459.P2745916060770993212

`lt[A007413(n+1), A078898(n)]`
-/

namespace A368459.P2745916060770993212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368459.P2745916060770993212

/-! ## A368459.P6195334732610917564

`lt[A006446(n+1), A103314(n)]`
-/

namespace A368459.P6195334732610917564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103314 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368459.P6195334732610917564

/-! ## A368459.P1403323336438516833

`lt[A006446(n+1), A152061(n)]`
-/

namespace A368459.P1403323336438516833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152061 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368459.P1403323336438516833

/-! ## A368459.P15702583233543712890

`lt[A000005(n+1), A357311(n)]`
-/

namespace A368459.P15702583233543712890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357311 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368459.P15702583233543712890

/-! ## A368459.P6007432040255204342

`lt[A056963(n+4), A279789(n)]`
-/

namespace A368459.P6007432040255204342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056963 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279789 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368459.P6007432040255204342

/-! ## A368459.P15644425879592224390

`lt[A053669(n+1)², A210442(n)]`
-/

namespace A368459.P15644425879592224390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368459.P15644425879592224390

/-!
# A368461: a(n) is the number of unlabeled planar modular lattices on n nodes.

The programs for A368461, there is no canonical definition to state claims against.
-/

/-! ## A368461.P12671570981327439786

`floor(root((n+1)*A369834(n), 3))`
-/

namespace A368461.P12671570981327439786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) * A369834 n : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A368461.P12671570981327439786

/-! ## A368461.P14906145528111238438

`A082447(A287892(n))`
-/

namespace A368461.P14906145528111238438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A287892 n).toNat

end

end A368461.P14906145528111238438

/-! ## A368461.P7733836015019606260

`A002024(A213092(n))+A001403(n+1)`
-/

namespace A368461.P7733836015019606260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A213092 n).toNat + A001403 (n + 1)

end

end A368461.P7733836015019606260

/-! ## A368461.P6383775521214424324

`A110334(n)-A025466(A056292(n+1))`
-/

namespace A368461.P6383775521214424324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110334 n - A025466 (A056292 (n + 1)).toNat

end

end A368461.P6383775521214424324

/-!
# A368463: Parity of the iterates of the Christmas tree pattern map (A367508), read by rows.

The programs for A368463, there is no canonical definition to state claims against.
-/

/-! ## A368463.P13502135824456457107

`A367508(n+1)%2`
-/

namespace A368463.P13502135824456457107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367508 (n + 1)) 2

end

end A368463.P13502135824456457107

/-! ## A368463.P2153710284009255073

`A367562(n+1)%2`
-/

namespace A368463.P2153710284009255073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367562 (n + 1)) 2

end

end A368463.P2153710284009255073

/-! ## A368463.P2975972352053887764

`A368427(n+2)%2`
-/

namespace A368463.P2975972352053887764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368427 (n + 2)) 2

end

end A368463.P2975972352053887764

/-! ## A368463.P14012916417635830257

`A000035(A367562(n+1))`
-/

namespace A368463.P14012916417635830257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A367562 (n + 1)).toNat

end

end A368463.P14012916417635830257

/-! ## A368463.P16636444405243277312

`A000035(A368427(n+2))`
-/

namespace A368463.P16636444405243277312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A368427 (n + 2)).toNat

end

end A368463.P16636444405243277312

/-! ## A368463.P12943984015994669764

`and(A054977(n), A367508(n+1))`
-/

namespace A368463.P12943984015994669764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A367508 (n + 1))

end

end A368463.P12943984015994669764

/-! ## A368463.P1021806879434852964

`and(A054977(n), A367562(n+1))`
-/

namespace A368463.P1021806879434852964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A367562 (n + 1))

end

end A368463.P1021806879434852964

/-! ## A368463.P3568173426103946860

`and(A057427(n), A367508(n+1))`
-/

namespace A368463.P3568173426103946860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A367508 (n + 1))

end

end A368463.P3568173426103946860

/-! ## A368463.P9625021574330835509

`and(A057427(n), A367562(n+1))`
-/

namespace A368463.P9625021574330835509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A367562 (n + 1))

end

end A368463.P9625021574330835509

/-! ## A368463.P6243219956004055078

`and(A077860(n), A367562(n+1))`
-/

namespace A368463.P6243219956004055078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077860 n) (A367562 (n + 1))

end

end A368463.P6243219956004055078

/-! ## A368463.P645399303827490286

`and(A000051(n), A367562(n+1))`
-/

namespace A368463.P645399303827490286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A367562 (n + 1))

end

end A368463.P645399303827490286

/-! ## A368463.P8220385578806453143

`and(A082605(n), A367562(n+1))`
-/

namespace A368463.P8220385578806453143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A082605 n) (A367562 (n + 1))

end

end A368463.P8220385578806453143

/-! ## A368463.P6203664437804854014

`and(A083318(n), A367562(n+1))`
-/

namespace A368463.P6203664437804854014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083318 n) (A367562 (n + 1))

end

end A368463.P6203664437804854014

/-! ## A368463.P1767189520634624815

`and(A048578(n), A367562(n+1))`
-/

namespace A368463.P1767189520634624815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048578 n) (A367562 (n + 1))

end

end A368463.P1767189520634624815

/-! ## A368463.P6201117593179001793

`and(A020737(n), A367508(n+1))`
-/

namespace A368463.P6201117593179001793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A367508 (n + 1))

end

end A368463.P6201117593179001793

/-! ## A368463.P2698441997433629987

`and(A020737(n), A367562(n+1))`
-/

namespace A368463.P2698441997433629987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 n) (A367562 (n + 1))

end

end A368463.P2698441997433629987

/-! ## A368463.P13737900995610669800

`and(A083575(n), A367562(n+1))`
-/

namespace A368463.P13737900995610669800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083575 n) (A367562 (n + 1))

end

end A368463.P13737900995610669800

/-! ## A368463.P16175226544853625735

`and(A083686(n), A367562(n+1))`
-/

namespace A368463.P16175226544853625735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083686 n) (A367562 (n + 1))

end

end A368463.P16175226544853625735

/-! ## A368463.P15155781985382191316

`and(A083683(n), A367562(n+1))`
-/

namespace A368463.P15155781985382191316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083683 n) (A367562 (n + 1))

end

end A368463.P15155781985382191316

/-! ## A368463.P2041068483274291744

`and(A035089(n), A367562(n+1))`
-/

namespace A368463.P2041068483274291744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035089 n) (A367562 (n + 1))

end

end A368463.P2041068483274291744

/-!
# A368464: Number of odd terms in each row of the iterates of the Christmas tree pattern map (A367508).

The programs for A368464, there is no canonical definition to state claims against.
-/

/-! ## A368464.P10755657234611754574

`A363718(n+1)-A368465(n+1)`
-/

namespace A368464.P10755657234611754574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363718 (n + 1) - A368465 (n + 1)

end

end A368464.P10755657234611754574

/-! ## A368464.P17627883701791484479

`and(A053610(n+1), A152773(A296245(n)))`
-/

namespace A368464.P17627883701791484479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053610 (n + 1)) (A152773 (A296245 n).toNat)

end

end A368464.P17627883701791484479

/-! ## A368464.P18078195347022658271

`xor(A103516(A000129(n)), A132747(n+1))`
-/

namespace A368464.P18078195347022658271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A103516 (A000129 n).toNat) (A132747 (n + 1))

end

end A368464.P18078195347022658271

/-! ## A368464.P13887517808064713444

`and(A190704(A356603(2*(n+2))), A279825(n))`
-/

namespace A368464.P13887517808064713444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A190704 (A356603 (2 * (n + 2))).toNat) (A279825 n)

end

end A368464.P13887517808064713444

/-! ## A368464.P851143055743381601

`A035188(A266195(3*n+2)+A252079(n+1))`
-/

namespace A368464.P851143055743381601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035188 (A266195 (3 * n + 2) + A252079 (n + 1)).toNat

end

end A368464.P851143055743381601

/-!
# A368465: Number of even terms in each row of the iterates of the Christmas tree pattern map (A367508).

The programs for A368465, there is no canonical definition to state claims against.
-/

/-! ## A368465.P5828069646202801730

`A363718(n+1)-A368464(n+1)`
-/

namespace A368465.P5828069646202801730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363718 (n + 1) - A368464 (n + 1)

end

end A368465.P5828069646202801730

/-! ## A368465.P5959592888193668809

`A124010(A256718(n)+12)`
-/

namespace A368465.P5959592888193668809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A256718 n + 12).toNat

end

end A368465.P5959592888193668809

/-! ## A368465.P5577185964631597892

`gcd(A016897(A288039(n)), A193924(n))`
-/

namespace A368465.P5577185964631597892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016897 (A288039 n).toNat) (A193924 n)

end

end A368465.P5577185964631597892

/-! ## A368465.P8029075515282758585

`A053797(A029910(n+1)+A000032(n))`
-/

namespace A368465.P8029075515282758585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053797 (A029910 (n + 1) + A000032 n).toNat

end

end A368465.P8029075515282758585

/-! ## A368465.P3125708503909708017

`A381440(A226874(n)+A131110(n+1))`
-/

namespace A368465.P3125708503909708017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381440 (A226874 n + A131110 (n + 1)).toNat

end

end A368465.P3125708503909708017

/-!
# A368466: a(n) = Sum_{k=0..n} 2^k * k^n.

The programs for A368466, there is no canonical definition to state claims against.
-/

/-! ## A368466.P7489196115628999921

`A368479(∑[4*n])`
-/

namespace A368466.P7489196115628999921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368479 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A368466.P7489196115628999921

/-!
# A368467: a(n) = Sum_{k=0..n} (-1)^k * binomial(2*n,k) * binomial(4*n,n-k).

The programs for A368467, there is no canonical definition to state claims against.
-/

/-! ## A368467.P9078629416999012709

`A359877(n)-A199331(A116430(n))`
-/

namespace A368467.P9078629416999012709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359877 n - A199331 (A116430 n).toNat

end

end A368467.P9078629416999012709

/-!
# A368468: a(n) is the number of exponentially odd divisors of the n-th exponentially odd number.

The programs for A368468, the canonical program `A368468.P2584022470948144189` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368468 has offset 1).

The definition of A368468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7055 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368468.P13044210510365258430

`∏{e}[A367407(n+1), #+1]`
-/

namespace A368468.P13044210510365258430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A368468.P13044210510365258430

namespace A368468

/-- `∏{e}[A367407(n+1), #+1]` -/
def P13044210510365258430.Spec : Prop :=
  ∀ n, (P13044210510365258430.a n : ℤ) = A368468 (n + 1)

end A368468

/-! ## A368468.P16273513471163641297

`A000005(A367407(n+1))`
-/

namespace A368468.P16273513471163641297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A367407 (n + 1)).toNat

end

end A368468.P16273513471163641297

namespace A368468

/-- `A000005(A367407(n+1))` -/
def P16273513471163641297.Spec : Prop :=
  ∀ n, P16273513471163641297.a n = A368468 (n + 1)

end A368468

/-! ## A368468.P2584022470948144189

`A322483(A268335(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A368468

/-- `A322483(A268335(n+1))` -/
def P2584022470948144189.Spec : Prop :=
  ∀ n, P2584022470948144189.a n = A368468 (n + 1)

theorem P2584022470948144189.correct : P2584022470948144189.Spec := by
  intro n
  simp only [A368468, Nat.add_sub_cancel]

end A368468

/-! ## A368468.P1009190858294640053

`A322483(record[A350389(n+1)])`
-/

namespace A368468.P1009190858294640053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A368468.P1009190858294640053

namespace A368468

/-- `A322483(record[A350389(n+1)])` -/
def P1009190858294640053.Spec : Prop :=
  ∀ n, P1009190858294640053.a n = A368468 (n + 1)

end A368468

/-! ## A368468.P1760709844540524271

`A368977(record[A350389(n+1)])`
-/

namespace A368468.P1760709844540524271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368977 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A368468.P1760709844540524271

namespace A368468

/-- `A368977(record[A350389(n+1)])` -/
def P1760709844540524271.Spec : Prop :=
  ∀ n, P1760709844540524271.a n = A368468 (n + 1)

end A368468

/-! ## A368468.P8306856435772419973

`A365551(A268335(2*n+1-n))`
-/

namespace A368468.P8306856435772419973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365551 (A268335 (2 * n + 1 - n)).toNat

end

end A368468.P8306856435772419973

namespace A368468

/-- `A365551(A268335(2*n+1-n))` -/
def P8306856435772419973.Spec : Prop :=
  ∀ n, P8306856435772419973.a n = A368468 (n + 1)

end A368468

/-! ## A368468.P14565380368911489460

`A368470(A268335(A000290(n+1)/(n+1)))`
-/

namespace A368468.P14565380368911489460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368470 (A268335 (SequenceMachineLib.roundAway ((A000290 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A368468.P14565380368911489460

namespace A368468

/-- `A368470(A268335(A000290(n+1)/(n+1)))` -/
def P14565380368911489460.Spec : Prop :=
  ∀ n, P14565380368911489460.a n = A368468 (n + 1)

end A368468

/-! ## A368468.P12434401806320423064

`A368977(A331737(A268335(n+1)²))`
-/

namespace A368468.P12434401806320423064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368977 (A331737 (A268335 (n + 1) ^ 2).toNat).toNat

end

end A368468.P12434401806320423064

namespace A368468

/-- `A368977(A331737(A268335(n+1)²))` -/
def P12434401806320423064.Spec : Prop :=
  ∀ n, P12434401806320423064.a n = A368468 (n + 1)

end A368468

/-! ## A368468.P4147474686707808695

`A046951(A367406(n+1))`
-/

namespace A368468.P4147474686707808695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A367406 (n + 1)).toNat

end

end A368468.P4147474686707808695

namespace A368468

/-- `A046951(A367406(n+1))` -/
def P4147474686707808695.Spec : Prop :=
  ∀ n, P4147474686707808695.a n = A368468 (n + 1)

end A368468

/-! ## A368468.P13784077075117729696

`A365491(A374458(n+1))`
-/

namespace A368468.P13784077075117729696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365491 (A374458 (n + 1)).toNat

end

end A368468.P13784077075117729696

namespace A368468

/-- `A365491(A374458(n+1))` -/
def P13784077075117729696.Spec : Prop :=
  ∀ n, P13784077075117729696.a n = A368468 (n + 1)

end A368468

/-!
# A368469: a(n) is the sum of exponentially odd divisors of the n-th exponentially odd number.

The programs for A368469, the canonical program `A368469.P12995681979237792953` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368469 has offset 1).

The definition of A368469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368469.P12995681979237792953

`A033634(A268335(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A368469

/-- `A033634(A268335(n+1))` -/
def P12995681979237792953.Spec : Prop :=
  ∀ n, P12995681979237792953.a n = A368469 (n + 1)

theorem P12995681979237792953.correct : P12995681979237792953.Spec := by
  intro n
  simp only [A368469, Nat.add_sub_cancel]

end A368469

/-! ## A368469.P634918370110863142

`A033634(record[A331737(n+1)])`
-/

namespace A368469.P634918370110863142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A368469.P634918370110863142

namespace A368469

/-- `A033634(record[A331737(n+1)])` -/
def P634918370110863142.Spec : Prop :=
  ∀ n, P634918370110863142.a n = A368469 (n + 1)

end A368469

/-! ## A368469.P7053561286276335927

`A033634(∪[A002035(n+1), A001848(n)])`
-/

namespace A368469.P7053561286276335927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001848 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A368469.P7053561286276335927

namespace A368469

/-- `A033634(∪[A002035(n+1), A001848(n)])` -/
def P7053561286276335927.Spec : Prop :=
  ∀ n, P7053561286276335927.a n = A368469 (n + 1)

end A368469

/-! ## A368469.P8845302473994753563

`A380322(A367407(n+1))`
-/

namespace A368469.P8845302473994753563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380322 (A367407 (n + 1)).toNat

end

end A368469.P8845302473994753563

namespace A368469

/-- `A380322(A367407(n+1))` -/
def P8845302473994753563.Spec : Prop :=
  ∀ n, P8845302473994753563.a n = A368469 (n + 1)

end A368469

/-! ## A368469.P251466393494529946

`A033634(record[A350389(n+1)])`
-/

namespace A368469.P251466393494529946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A368469.P251466393494529946

namespace A368469

/-- `A033634(record[A350389(n+1)])` -/
def P251466393494529946.Spec : Prop :=
  ∀ n, P251466393494529946.a n = A368469 (n + 1)

end A368469

/-! ## A368469.P5736112640753126680

`A368471(A268335(2*n+1-n))`
-/

namespace A368469.P5736112640753126680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368471 (A268335 (2 * n + 1 - n)).toNat

end

end A368469.P5736112640753126680

namespace A368469

/-- `A368471(A268335(2*n+1-n))` -/
def P5736112640753126680.Spec : Prop :=
  ∀ n, P5736112640753126680.a n = A368469 (n + 1)

end A368469

/-! ## A368469.P17739086521583129647

`A368471(A268335(n+1)%A202018(n))`
-/

namespace A368469.P17739086521583129647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368471 (Int.tmod (A268335 (n + 1)) (A202018 n)).toNat

end

end A368469.P17739086521583129647

namespace A368469

/-- `A368471(A268335(n+1)%A202018(n))` -/
def P17739086521583129647.Spec : Prop :=
  ∀ n, P17739086521583129647.a n = A368469 (n + 1)

end A368469

/-! ## A368469.P16982120696486176583

`A033634(A367406(n+1))`
-/

namespace A368469.P16982120696486176583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033634 (A367406 (n + 1)).toNat

end

end A368469.P16982120696486176583

namespace A368469

/-- `A033634(A367406(n+1))` -/
def P16982120696486176583.Spec : Prop :=
  ∀ n, P16982120696486176583.a n = A368469 (n + 1)

end A368469

/-! ## A368469.P9726482065322677871

`A390372(A331737(A268335(n+1)²))`
-/

namespace A368469.P9726482065322677871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390372 (A331737 (A268335 (n + 1) ^ 2).toNat).toNat

end

end A368469.P9726482065322677871

namespace A368469

/-- `A390372(A331737(A268335(n+1)²))` -/
def P9726482065322677871.Spec : Prop :=
  ∀ n, P9726482065322677871.a n = A368469 (n + 1)

end A368469

/-! ## A368469.P4014669934977051913

`A365336(A374458(n+1))`
-/

namespace A368469.P4014669934977051913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365336 (A374458 (n + 1)).toNat

end

end A368469.P4014669934977051913

namespace A368469

/-- `A365336(A374458(n+1))` -/
def P4014669934977051913.Spec : Prop :=
  ∀ n, P4014669934977051913.a n = A368469 (n + 1)

end A368469

/-!
# A368470: a(n) is the number of exponentially odd divisors of the largest unitary divisor of n that is an exponentially odd number (A268335).

The programs for A368470, the canonical program `A368470.P5926755419945979817` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368470 has offset 1).

The definition of A368470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368470.P3817974607029268024

`∏{e}[A071975(n+1), #+1]`
-/

namespace A368470.P3817974607029268024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A368470.P3817974607029268024

namespace A368470

/-- `∏{e}[A071975(n+1), #+1]` -/
def P3817974607029268024.Spec : Prop :=
  ∀ n, (P3817974607029268024.a n : ℤ) = A368470 (n + 1)

end A368470

/-! ## A368470.P745427035059899815

`A000005(A071975(n+1))`
-/

namespace A368470.P745427035059899815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A071975 (n + 1)).toNat

end

end A368470.P745427035059899815

namespace A368470

/-- `A000005(A071975(n+1))` -/
def P745427035059899815.Spec : Prop :=
  ∀ n, P745427035059899815.a n = A368470 (n + 1)

end A368470

/-! ## A368470.P2011356461387309817

`A322483(A350389(n+1))`
-/

namespace A368470.P2011356461387309817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A350389 (n + 1)).toNat

end

end A368470.P2011356461387309817

namespace A368470

/-- `A322483(A350389(n+1))` -/
def P2011356461387309817.Spec : Prop :=
  ∀ n, P2011356461387309817.a n = A368470 (n + 1)

end A368470

/-! ## A368470.P5926755419945979817

`A322483(n+1)/A367987(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A368470

/-- `A322483(n+1)/A367987(n+1)` -/
def P5926755419945979817.Spec : Prop :=
  ∀ n, P5926755419945979817.a n = (A368470 (n + 1) : ℚ)

end A368470

/-! ## A368470.P17614965405031848016

`A366901((n+1)/A350388(n+1))`
-/

namespace A368470.P17614965405031848016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366901 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A350388 (n + 1) : ℚ))).toNat

end

end A368470.P17614965405031848016

namespace A368470

/-- `A366901((n+1)/A350388(n+1))` -/
def P17614965405031848016.Spec : Prop :=
  ∀ n, P17614965405031848016.a n = A368470 (n + 1)

end A368470

/-! ## A368470.P12137787075349631247

`A000005(A019554(n+1)/A071974(n+1))`
-/

namespace A368470.P12137787075349631247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A019554 (n + 1) : ℚ) / (A071974 (n + 1) : ℚ))).toNat

end

end A368470.P12137787075349631247

namespace A368470

/-- `A000005(A019554(n+1)/A071974(n+1))` -/
def P12137787075349631247.Spec : Prop :=
  ∀ n, P12137787075349631247.a n = A368470 (n + 1)

end A368470

/-! ## A368470.P16291923172807824212

`A000005(sqrt(A053143(n+1))/A071974(n+1))`
-/

namespace A368470.P16291923172807824212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A053143 (n + 1) : ℝ) / (A071974 (n + 1) : ℝ))).toNat

end

end A368470.P16291923172807824212

namespace A368470

/-- `A000005(sqrt(A053143(n+1))/A071974(n+1))` -/
def P16291923172807824212.Spec : Prop :=
  ∀ n, P16291923172807824212.a n = A368470 (n + 1)

end A368470

/-! ## A368470.P10354322871733932017

`A000005((A254732(n+1)-(n+1))/A071974(n+1))`
-/

namespace A368470.P10354322871733932017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A254732 (n + 1) - (n + 1 : ℤ) : ℚ) / (A071974 (n + 1) : ℚ))).toNat

end

end A368470.P10354322871733932017

namespace A368470

/-- `A000005((A254732(n+1)-(n+1))/A071974(n+1))` -/
def P10354322871733932017.Spec : Prop :=
  ∀ n, P10354322871733932017.a n = A368470 (n + 1)

end A368470

/-! ## A368470.P14242858974701921907

`A000005(sqrt((n+1)*A007913(n+1))/A071974(n+1))`
-/

namespace A368470.P14242858974701921907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℤ) * A007913 (n + 1) : ℝ) / (A071974 (n + 1) : ℝ))).toNat

end

end A368470.P14242858974701921907

namespace A368470

/-- `A000005(sqrt((n+1)*A007913(n+1))/A071974(n+1))` -/
def P14242858974701921907.Spec : Prop :=
  ∀ n, P14242858974701921907.a n = A368470 (n + 1)

end A368470

/-! ## A368470.P2682385373220312204

`A000005(A000188(n+1)*A007913(n+1)/A071974(n+1))`
-/

namespace A368470.P2682385373220312204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A000188 (n + 1) * A007913 (n + 1) : ℚ) / (A071974 (n + 1) : ℚ))).toNat

end

end A368470.P2682385373220312204

namespace A368470

/-- `A000005(A000188(n+1)*A007913(n+1)/A071974(n+1))` -/
def P2682385373220312204.Spec : Prop :=
  ∀ n, P2682385373220312204.a n = A368470 (n + 1)

end A368470

/-! ## A368470.P17259216502273736647

`A367987(A011262(n+1))`
-/

namespace A368470.P17259216502273736647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367987 (A011262 (n + 1)).toNat

end

end A368470.P17259216502273736647

namespace A368470

/-- `A367987(A011262(n+1))` -/
def P17259216502273736647.Spec : Prop :=
  ∀ n, P17259216502273736647.a n = A368470 (n + 1)

end A368470

/-! ## A368470.P10519522637446543700

`A367987(A064549(n+1))`
-/

namespace A368470.P10519522637446543700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367987 (A064549 (n + 1)).toNat

end

end A368470.P10519522637446543700

namespace A368470

/-- `A367987(A064549(n+1))` -/
def P10519522637446543700.Spec : Prop :=
  ∀ n, P10519522637446543700.a n = A368470 (n + 1)

end A368470

/-! ## A368470.P4339013391909759916

`A367987(A071975(n+1)²)`
-/

namespace A368470.P4339013391909759916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367987 (A071975 (n + 1) ^ 2).toNat

end

end A368470.P4339013391909759916

namespace A368470

/-- `A367987(A071975(n+1)²)` -/
def P4339013391909759916.Spec : Prop :=
  ∀ n, P4339013391909759916.a n = A368470 (n + 1)

end A368470

/-! ## A368470.P6438437484605135805

`∑{d}[A071975(n+1), A071975(#²)]`
-/

namespace A368470.P6438437484605135805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A071975 (d ^ 2)

end

end A368470.P6438437484605135805

namespace A368470

/-- `∑{d}[A071975(n+1), A071975(#²)]` -/
def P6438437484605135805.Spec : Prop :=
  ∀ n, P6438437484605135805.a n = A368470 (n + 1)

end A368470

/-! ## A368470.P10145795772085742641

`A367987(A071975(n+1)*A071975(n+1))`
-/

namespace A368470.P10145795772085742641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367987 (A071975 (n + 1) * A071975 (n + 1)).toNat

end

end A368470.P10145795772085742641

namespace A368470

/-- `A367987(A071975(n+1)*A071975(n+1))` -/
def P10145795772085742641.Spec : Prop :=
  ∀ n, P10145795772085742641.a n = A368470 (n + 1)

end A368470

/-!
# A368471: a(n) is the sum of exponentially odd divisors of the largest unitary divisor of n that is an exponentially odd number (A268335).

The programs for A368471, the canonical program `A368471.P8379948987742590772` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368471 has offset 1).

The definition of A368471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368471.P8379948987742590772

`A033634(A350389(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A368471

/-- `A033634(A350389(n+1))` -/
def P8379948987742590772.Spec : Prop :=
  ∀ n, P8379948987742590772.a n = A368471 (n + 1)

theorem P8379948987742590772.correct : P8379948987742590772.Spec := by
  intro n
  simp only [A368471, Nat.add_sub_cancel]

end A368471

/-! ## A368471.P11843226495230062539

`A380322(A071975(n+1))`
-/

namespace A368471.P11843226495230062539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380322 (A071975 (n + 1)).toNat

end

end A368471.P11843226495230062539

namespace A368471

/-- `A380322(A071975(n+1))` -/
def P11843226495230062539.Spec : Prop :=
  ∀ n, P11843226495230062539.a n = A368471 (n + 1)

end A368471

/-! ## A368471.P17445571320475305217

`∑{d}[A071975(n+1), A102631(#)]`
-/

namespace A368471.P17445571320475305217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A102631 d

end

end A368471.P17445571320475305217

namespace A368471

/-- `∑{d}[A071975(n+1), A102631(#)]` -/
def P17445571320475305217.Spec : Prop :=
  ∀ n, P17445571320475305217.a n = A368471 (n + 1)

end A368471

/-! ## A368471.P15187419635690828479

`A390372(A350389(2*n+1-n))`
-/

namespace A368471.P15187419635690828479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390372 (A350389 (2 * n + 1 - n)).toNat

end

end A368471.P15187419635690828479

namespace A368471

/-- `A390372(A350389(2*n+1-n))` -/
def P15187419635690828479.Spec : Prop :=
  ∀ n, P15187419635690828479.a n = A368471 (n + 1)

end A368471

/-! ## A368471.P6774238524283077447

`A033634(n+1)/A033634(A350388(n+1))`
-/

namespace A368471.P6774238524283077447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033634 (n + 1) : ℚ) / (A033634 (A350388 (n + 1)).toNat : ℚ)

end

end A368471.P6774238524283077447

namespace A368471

/-- `A033634(n+1)/A033634(A350388(n+1))` -/
def P6774238524283077447.Spec : Prop :=
  ∀ n, P6774238524283077447.a n = (A368471 (n + 1) : ℚ)

end A368471

/-! ## A368471.P7477579756177127580

`gcd(A033634((n+1)*∏{p}[n+1, #]), A033634(n+1))`
-/

namespace A368471.P7477579756177127580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033634 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))) (A033634 (n + 1))

end

end A368471.P7477579756177127580

namespace A368471

/-- `gcd(A033634((n+1)*∏{p}[n+1, #]), A033634(n+1))` -/
def P7477579756177127580.Spec : Prop :=
  ∀ n, (P7477579756177127580.a n : ℤ) = A368471 (n + 1)

end A368471

/-! ## A368471.P1931478051080664632

`A390372(A331737(A350389(n+1)²))`
-/

namespace A368471.P1931478051080664632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390372 (A331737 (A350389 (n + 1) ^ 2).toNat).toNat

end

end A368471.P1931478051080664632

namespace A368471

/-- `A390372(A331737(A350389(n+1)²))` -/
def P1931478051080664632.Spec : Prop :=
  ∀ n, P1931478051080664632.a n = A368471 (n + 1)

end A368471

/-! ## A368471.P9764518285154601676

`∑{d}[A071975(n+1), A350390(#²)]`
-/

namespace A368471.P9764518285154601676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A350390 (d ^ 2)

end

end A368471.P9764518285154601676

namespace A368471

/-- `∑{d}[A071975(n+1), A350390(#²)]` -/
def P9764518285154601676.Spec : Prop :=
  ∀ n, P9764518285154601676.a n = A368471 (n + 1)

end A368471

/-!
# A368472: Product of exponents of prime factorization of the exponentially odd numbers.

The programs for A368472, the canonical program `A368472.P12800677972361698813` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368472 has offset 1).

The definition of A368472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368472.P12800677972361698813

`∏{e}[A268335(n+1), #]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A368472

/-- `∏{e}[A268335(n+1), #]` -/
def P12800677972361698813.Spec : Prop :=
  ∀ n, (P12800677972361698813.a n : ℤ) = A368472 (n + 1)

theorem P12800677972361698813.correct : P12800677972361698813.Spec := by
  intro n
  simp only [A368472, Nat.add_sub_cancel]

end A368472

/-! ## A368472.P17520204385740265911

`∏{e}[record[A331737(n+1)], #]`
-/

namespace A368472.P17520204385740265911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331737 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A368472.P17520204385740265911

namespace A368472

/-- `∏{e}[record[A331737(n+1)], #]` -/
def P17520204385740265911.Spec : Prop :=
  ∀ n, (P17520204385740265911.a n : ℤ) = A368472 (n + 1)

end A368472

/-! ## A368472.P18282956041258009745

`A005361(A268335(n+1))`
-/

namespace A368472.P18282956041258009745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A268335 (n + 1)).toNat

end

end A368472.P18282956041258009745

namespace A368472

/-- `A005361(A268335(n+1))` -/
def P18282956041258009745.Spec : Prop :=
  ∀ n, P18282956041258009745.a n = A368472 (n + 1)

end A368472

/-! ## A368472.P5600668780826325659

`A000005(A367418(n+1))`
-/

namespace A368472.P5600668780826325659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A367418 (n + 1)).toNat

end

end A368472.P5600668780826325659

namespace A368472

/-- `A000005(A367418(n+1))` -/
def P5600668780826325659.Spec : Prop :=
  ∀ n, P5600668780826325659.a n = A368472 (n + 1)

end A368472

/-! ## A368472.P1962223772160395724

`A000005(A367419(n+1)²)`
-/

namespace A368472.P1962223772160395724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A367419 (n + 1) ^ 2).toNat

end

end A368472.P1962223772160395724

namespace A368472

/-- `A000005(A367419(n+1)²)` -/
def P1962223772160395724.Spec : Prop :=
  ∀ n, P1962223772160395724.a n = A368472 (n + 1)

end A368472

/-! ## A368472.P15195748115031910832

`filter[A005361(n+1), A000035(#)]`
-/

namespace A368472.P15195748115031910832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A368472.P15195748115031910832

namespace A368472

/-- `filter[A005361(n+1), A000035(#)]` -/
def P15195748115031910832.Spec : Prop :=
  ∀ n, P15195748115031910832.a n = A368472 (n + 1)

end A368472

/-! ## A368472.P10209210432209003087

`A370079(A268335(2*n+1-n))`
-/

namespace A368472.P10209210432209003087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370079 (A268335 (2 * n + 1 - n)).toNat

end

end A368472.P10209210432209003087

namespace A368472

/-- `A370079(A268335(2*n+1-n))` -/
def P10209210432209003087.Spec : Prop :=
  ∀ n, P10209210432209003087.a n = A368472 (n + 1)

end A368472

/-! ## A368472.P13389157697338229183

`∏{e}[A367406(n+1), #-1]`
-/

namespace A368472.P13389157697338229183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A368472.P13389157697338229183

namespace A368472

/-- `∏{e}[A367406(n+1), #-1]` -/
def P13389157697338229183.Spec : Prop :=
  ∀ n, P13389157697338229183.a n = A368472 (n + 1)

end A368472

/-! ## A368472.P8161461408463257003

`A076869(2*A367418(n+1))`
-/

namespace A368472.P8161461408463257003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076869 (2 * A367418 (n + 1)).toNat

end

end A368472.P8161461408463257003

namespace A368472

/-- `A076869(2*A367418(n+1))` -/
def P8161461408463257003.Spec : Prop :=
  ∀ n, P8161461408463257003.a n = A368472 (n + 1)

end A368472

/-! ## A368472.P8697106479064095354

`A368711(A099257(n+1)+1)`
-/

namespace A368472.P8697106479064095354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368711 (A099257 (n + 1) + 1).toNat

end

end A368472.P8697106479064095354

namespace A368472

/-- `A368711(A099257(n+1)+1)` -/
def P8697106479064095354.Spec : Prop :=
  ∀ n, P8697106479064095354.a n = A368472 (n + 1)

end A368472

/-!
# A368473: Product of exponents of prime factorization of the exponentially 2^n-numbers (A138302).

The programs for A368473, the canonical program `A368473.P1957910570903881523` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368473 has offset 1).

The definition of A368473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368473.P17883985714337237282

`2^A372505(n+1)`
-/

namespace A368473.P17883985714337237282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A372505 (n + 1) : ℤ)

end

end A368473.P17883985714337237282

namespace A368473

/-- `2^A372505(n+1)` -/
def P17883985714337237282.Spec : Prop :=
  ∀ n, P17883985714337237282.a n = (A368473 (n + 1) : ℚ)

end A368473

/-! ## A368473.P1957910570903881523

`∏{e}[A138302(n+1), #]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A368473

/-- `∏{e}[A138302(n+1), #]` -/
def P1957910570903881523.Spec : Prop :=
  ∀ n, (P1957910570903881523.a n : ℤ) = A368473 (n + 1)

theorem P1957910570903881523.correct : P1957910570903881523.Spec := by
  intro n
  simp only [A368473, Nat.add_sub_cancel]

end A368473

/-! ## A368473.P11836645701216829903

`A005361(A138302(n+1))`
-/

namespace A368473.P11836645701216829903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A138302 (n + 1)).toNat

end

end A368473.P11836645701216829903

namespace A368473

/-- `A005361(A138302(n+1))` -/
def P11836645701216829903.Spec : Prop :=
  ∀ n, P11836645701216829903.a n = A368473 (n + 1)

end A368473

/-! ## A368473.P85100096202244981

`filter[A382787(n+1), A010055(#)]`
-/

namespace A368473.P85100096202244981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A368473.P85100096202244981

namespace A368473

/-- `filter[A382787(n+1), A010055(#)]` -/
def P85100096202244981.Spec : Prop :=
  ∀ n, P85100096202244981.a n = A368473 (n + 1)

end A368473

/-! ## A368473.P4842012299441542163

`filter[A382787(n+1), A010060(#)]`
-/

namespace A368473.P4842012299441542163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A368473.P4842012299441542163

namespace A368473

/-- `filter[A382787(n+1), A010060(#)]` -/
def P4842012299441542163.Spec : Prop :=
  ∀ n, P4842012299441542163.a n = A368473 (n + 1)

end A368473

/-! ## A368473.P766932384353218516

`filter[A382787(n+1), A011751(#)]`
-/

namespace A368473.P766932384353218516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011751 (f1 j).toNat = 1) n)

end

end A368473.P766932384353218516

namespace A368473

/-- `filter[A382787(n+1), A011751(#)]` -/
def P766932384353218516.Spec : Prop :=
  ∀ n, P766932384353218516.a n = A368473 (n + 1)

end A368473

/-! ## A368473.P15769798094617035971

`filter[A382787(n+1), A053866(#)]`
-/

namespace A368473.P15769798094617035971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A368473.P15769798094617035971

namespace A368473

/-- `filter[A382787(n+1), A053866(#)]` -/
def P15769798094617035971.Spec : Prop :=
  ∀ n, P15769798094617035971.a n = A368473 (n + 1)

end A368473

/-! ## A368473.P8951447488738816388

`∏{e}[record[A367168(n+1)], #]`
-/

namespace A368473.P8951447488738816388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367168 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A368473.P8951447488738816388

namespace A368473

/-- `∏{e}[record[A367168(n+1)], #]` -/
def P8951447488738816388.Spec : Prop :=
  ∀ n, (P8951447488738816388.a n : ℤ) = A368473 (n + 1)

end A368473

/-! ## A368473.P4060628216433396763

`filter[A005361(n+1), A076141(#)]`
-/

namespace A368473.P4060628216433396763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076141 (f1 j).toNat = 1) n)

end

end A368473.P4060628216433396763

namespace A368473

/-- `filter[A005361(n+1), A076141(#)]` -/
def P4060628216433396763.Spec : Prop :=
  ∀ n, P4060628216433396763.a n = A368473 (n + 1)

end A368473

/-! ## A368473.P6138626111674022466

`A368104(A138302(2*n+1-n))`
-/

namespace A368473.P6138626111674022466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368104 (A138302 (2 * n + 1 - n)).toNat

end

end A368473.P6138626111674022466

namespace A368473

/-- `A368104(A138302(2*n+1-n))` -/
def P6138626111674022466.Spec : Prop :=
  ∀ n, P6138626111674022466.a n = A368473 (n + 1)

end A368473

/-!
# A368474: Product of exponents of prime factorization of the numbers whose exponents in their prime power factorization are squares (A197680).

The programs for A368474, the canonical program `A368474.P7960031431284467080` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368474 has offset 1).

The definition of A368474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368474.P7960031431284467080

`∏{e}[A197680(n+1), #]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A368474

/-- `∏{e}[A197680(n+1), #]` -/
def P7960031431284467080.Spec : Prop :=
  ∀ n, (P7960031431284467080.a n : ℤ) = A368474 (n + 1)

theorem P7960031431284467080.correct : P7960031431284467080.Spec := by
  intro n
  simp only [A368474, Nat.add_sub_cancel]

end A368474

/-! ## A368474.P7622636264866400950

`A005361(A197680(n+1))`
-/

namespace A368474.P7622636264866400950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A197680 (n + 1)).toNat

end

end A368474.P7622636264866400950

namespace A368474

/-- `A005361(A197680(n+1))` -/
def P7622636264866400950.Spec : Prop :=
  ∀ n, P7622636264866400950.a n = A368474 (n + 1)

end A368474

/-! ## A368474.P11389181432795403671

`∏{e}[eq[1, A049419(n+1)%2]+1, #]`
-/

namespace A368474.P11389181432795403671
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049419 (n + 1)) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A368474.P11389181432795403671

namespace A368474

/-- `∏{e}[eq[1, A049419(n+1)%2]+1, #]` -/
def P11389181432795403671.Spec : Prop :=
  ∀ n, (P11389181432795403671.a n : ℤ) = A368474 (n + 1)

end A368474

/-! ## A368474.P4798880182377517902

`∏{e}[eq[1, A360112(A049419(n+1)+2)]+1, #]`
-/

namespace A368474.P4798880182377517902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360112 (A049419 (n + 1) + 2).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A368474.P4798880182377517902

namespace A368474

/-- `∏{e}[eq[1, A360112(A049419(n+1)+2)]+1, #]` -/
def P4798880182377517902.Spec : Prop :=
  ∀ n, (P4798880182377517902.a n : ℤ) = A368474 (n + 1)

end A368474

/-! ## A368474.P581657319349541457

`gcd(A018203(n), A369935(n+1))`
-/

namespace A368474.P581657319349541457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018203 n) (A369935 (n + 1))

end

end A368474.P581657319349541457

namespace A368474

/-- `gcd(A018203(n), A369935(n+1))` -/
def P581657319349541457.Spec : Prop :=
  ∀ n, (P581657319349541457.a n : ℤ) = A368474 (n + 1)

end A368474

/-! ## A368474.P11134489432190267505

`C(A369935(n+1), A369935(A059268(n)))`
-/

namespace A368474.P11134489432190267505
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A369935 (n + 1)).toNat (A369935 (A059268 n).toNat).toNat

end

end A368474.P11134489432190267505

namespace A368474

/-- `C(A369935(n+1), A369935(A059268(n)))` -/
def P11134489432190267505.Spec : Prop :=
  ∀ n, (P11134489432190267505.a n : ℤ) = A368474 (n + 1)

end A368474

/-! ## A368474.P8880715337830572545

`A072911(A197680(n+1)²)`
-/

namespace A368474.P8880715337830572545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072911 (A197680 (n + 1) ^ 2).toNat

end

end A368474.P8880715337830572545

namespace A368474

/-- `A072911(A197680(n+1)²)` -/
def P8880715337830572545.Spec : Prop :=
  ∀ n, P8880715337830572545.a n = A368474 (n + 1)

end A368474

/-! ## A368474.P17171240758613822280

`A365333(A197680(n+1)²)`
-/

namespace A368474.P17171240758613822280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365333 (A197680 (n + 1) ^ 2).toNat

end

end A368474.P17171240758613822280

namespace A368474

/-- `A365333(A197680(n+1)²)` -/
def P17171240758613822280.Spec : Prop :=
  ∀ n, P17171240758613822280.a n = A368474 (n + 1)

end A368474

/-! ## A368474.P8326070531292352042

`A385418(A197680(n+1)²)`
-/

namespace A368474.P8326070531292352042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385418 (A197680 (n + 1) ^ 2).toNat

end

end A368474.P8326070531292352042

namespace A368474

/-- `A385418(A197680(n+1)²)` -/
def P8326070531292352042.Spec : Prop :=
  ∀ n, P8326070531292352042.a n = A368474 (n + 1)

end A368474

/-! ## A368474.P17067117371204999271

`A370256(A197680(n+1)²)²`
-/

namespace A368474.P17067117371204999271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370256 (A197680 (n + 1) ^ 2).toNat ^ 2

end

end A368474.P17067117371204999271

namespace A368474

/-- `A370256(A197680(n+1)²)²` -/
def P17067117371204999271.Spec : Prop :=
  ∀ n, P17067117371204999271.a n = A368474 (n + 1)

end A368474

/-!
# A368475: Expansion of o.g.f. (1-x)^5/((1-x)^5 - x^4).

The programs for A368475, the canonical program `A368475.P8384433415462777700` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368475 has offset 0).

The definition of A368475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368475.P8384433415462777700

`5*a(n-1)-10*a(n-2)+10*a(n-3)-4*a(n-4)+a(n-5)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=5`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A368475

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-4*a(n-4)+a(n-5)` -/
def P8384433415462777700.Spec : Prop :=
  ∀ n, P8384433415462777700.a n = A368475 n

theorem P8384433415462777700.correct : P8384433415462777700.Spec := by
  intro n
  simp only [A368475]

end A368475

/-! ## A368475.P15444886591528093567

`A038503(n)-A064911(A127519(n+1))`
-/

namespace A368475.P15444886591528093567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n - A064911 (A127519 (n + 1)).toNat

end

end A368475.P15444886591528093567

namespace A368475

/-- `A038503(n)-A064911(A127519(n+1))` -/
def P15444886591528093567.Spec : Prop :=
  ∀ n, P15444886591528093567.a n = A368475 n

end A368475

/-! ## A368475.P14018196343681756405

`A089854(A243739(n+4))`
-/

namespace A368475.P14018196343681756405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089854 (A243739 (n + 4)).toNat

end

end A368475.P14018196343681756405

namespace A368475

/-- `A089854(A243739(n+4))` -/
def P14018196343681756405.Spec : Prop :=
  ∀ n, P14018196343681756405.a n = A368475 n

end A368475

/-! ## A368475.P15380619082944302849

`A318274(A048482(n))-n²`
-/

namespace A368475.P15380619082944302849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 (A048482 n).toNat - (n ^ 2 : ℤ)

end

end A368475.P15380619082944302849

namespace A368475

/-- `A318274(A048482(n))-n²` -/
def P15380619082944302849.Spec : Prop :=
  ∀ n, P15380619082944302849.a n = A368475 n

end A368475

/-! ## A368475.P3788584902855106198

`A038503(n)-A001221(4^n)`
-/

namespace A368475.P3788584902855106198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n - A001221 (4 ^ n)

end

end A368475.P3788584902855106198

namespace A368475

/-- `A038503(n)-A001221(4^n)` -/
def P3788584902855106198.Spec : Prop :=
  ∀ n, P3788584902855106198.a n = A368475 n

end A368475

/-!
# A368476: Decimal expansion of 109/65, being the highest possible win/loss points ratio in a completed 3-set tennis match, with 10-point final tie-break, which the player loses.

The programs for A368476, the canonical program `A368476.P7714039165775419952` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368476 has offset 1).

The definition of A368476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368476.P7714039165775419952

`9-a(n-3)` with `a(0)=1, a(1)=6, a(2)=7, a(3)=6, a(4)=9`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A368476

/-- `9-a(n-3)` -/
def P7714039165775419952.Spec : Prop :=
  ∀ n, P7714039165775419952.a n = A368476 (n + 1)

theorem P7714039165775419952.correct : P7714039165775419952.Spec := by
  intro n
  simp only [A368476, Nat.add_sub_cancel]

end A368476

/-!
# A368477: a(n) is the number of integer tuples (b_1, b_2, ..., b_(k+1)) where 0 <= b_i <= 9, such that |b_i - b_(i+1)| = d_i for all i, where (d_1, d_2, ..., d_k) is the decimal expansion of n.

The programs for A368477, there is no canonical definition to state claims against.
-/

/-! ## A368477.P1445922033973451202

`A284761(A271645(2*n+3))+A271641(n)`
-/

namespace A368477.P1445922033973451202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284761 (A271645 (2 * n + 3)).toNat + A271641 n

end

end A368477.P1445922033973451202

/-!
# A368479: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} 2^j * j^k.

The programs for A368479, there is no canonical definition to state claims against.
-/

/-! ## A368479.P14041136692946341880

`A209566(n+1)-A321312(A209566(n+2))`
-/

namespace A368479.P14041136692946341880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209566 (n + 1) - A321312 (A209566 (n + 2)).toNat

end

end A368479.P14041136692946341880

/-!
# A368482: The degree of polynomials related to Somos-6 sequences. Also for n > 4 the degree of the (n-5)-th involution in a family of involutions in the Cremona group of rank 5 defined by a Somos-6 sequence.

The programs for A368482, the canonical program `A368482.P6402120966291890` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368482 has offset 0).

The definition of A368482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368482.P6402120966291890

`A054925(n)-A249013(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A368482

/-- `A054925(n)-A249013(n+1)` -/
def P6402120966291890.Spec : Prop :=
  ∀ n, P6402120966291890.a n = A368482 n

theorem P6402120966291890.correct : P6402120966291890.Spec := by
  intro n
  simp only [A368482]

end A368482

/-! ## A368482.P11039460005048249540

`A008616(A001318(2*n+1))-n`
-/

namespace A368482.P11039460005048249540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A001318 (2 * n + 1)).toNat - (n : ℤ)

end

end A368482.P11039460005048249540

namespace A368482

/-- `A008616(A001318(2*n+1))-n` -/
def P11039460005048249540.Spec : Prop :=
  ∀ n, P11039460005048249540.a n = A368482 n

end A368482

/-! ## A368482.P16707578845583566365

`A008651(A186783(3*(n+1)))-n`
-/

namespace A368482.P16707578845583566365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A186783 (3 * (n + 1))).toNat - (n : ℤ)

end

end A368482.P16707578845583566365

namespace A368482

/-- `A008651(A186783(3*(n+1)))-n` -/
def P16707578845583566365.Spec : Prop :=
  ∀ n, P16707578845583566365.a n = A368482 n

end A368482

/-! ## A368482.P5644071151950571354

`A008651(A000217(3*n+2))-n`
-/

namespace A368482.P5644071151950571354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A000217 (3 * n + 2)).toNat - (n : ℤ)

end

end A368482.P5644071151950571354

namespace A368482

/-- `A008651(A000217(3*n+2))-n` -/
def P5644071151950571354.Spec : Prop :=
  ∀ n, P5644071151950571354.a n = A368482 n

end A368482

/-! ## A368482.P9832081007930810360

`A121900(3*A241688(n+1))`
-/

namespace A368482.P9832081007930810360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (3 * A241688 (n + 1)).toNat

end

end A368482.P9832081007930810360

namespace A368482

/-- `A121900(3*A241688(n+1))` -/
def P9832081007930810360.Spec : Prop :=
  ∀ n, P9832081007930810360.a n = A368482 n

end A368482

/-!
# A368483: The degree of polynomials related to Somos-7 sequences. Also for n > 6 the degree of the (n-6)-th involution in a family of involutions in the Cremona group of rank 6 defined by a Somos-7 sequence.

The programs for A368483, the canonical program `A368483.P3053337779951314801` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368483 has offset 0).

The definition of A368483 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368483.P3053337779951314801

`a(n-2)+a(n-3)-a(n-7)-a(n-8)+a(n-10)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=0, a(7)=2, a(8)=3, a(9)=4`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A368483

/-- `a(n-2)+a(n-3)-a(n-7)-a(n-8)+a(n-10)` -/
def P3053337779951314801.Spec : Prop :=
  ∀ n, P3053337779951314801.a n = A368483 n

theorem P3053337779951314801.correct : P3053337779951314801.Spec := by
  intro n
  simp only [A368483]

end A368483

/-! ## A368483.P17144166183688452339

`A001414(A078495(n))`
-/

namespace A368483.P17144166183688452339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A078495 n).toNat

end

end A368483.P17144166183688452339

namespace A368483

/-- `A001414(A078495(n))` -/
def P17144166183688452339.Spec : Prop :=
  ∀ n, P17144166183688452339.a n = A368483 n

end A368483

/-!
# A368484: Number of compositions (ordered partitions) of n into parts not greater than n/2.

The programs for A368484, the canonical program `A368484.P5685286157168044271` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368484 has offset 0).

The definition of A368484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368484.P5685286157168044271

`A349055(n)-Δ[A016116(n)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A368484

/-- `A349055(n)-Δ[A016116(n)]` -/
def P5685286157168044271.Spec : Prop :=
  ∀ n, P5685286157168044271.a n = A368484 n

theorem P5685286157168044271.correct : P5685286157168044271.Spec := by
  intro n
  simp only [A368484]

end A368484

/-! ## A368484.P3126133409046344858

`A011782(n)-A336102(n+1)`
-/

namespace A368484.P3126133409046344858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A336102 (n + 1)

end

end A368484.P3126133409046344858

namespace A368484

/-- `A011782(n)-A336102(n+1)` -/
def P3126133409046344858.Spec : Prop :=
  ∀ n, P3126133409046344858.a n = A368484 n

end A368484

/-! ## A368484.P4109446314599451312

`A336102(n)+A336103(n)-A336102(n+1)`
-/

namespace A368484.P4109446314599451312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336102 n + (A336103 n - A336102 (n + 1))

end

end A368484.P4109446314599451312

namespace A368484

/-- `A336102(n)+A336103(n)-A336102(n+1)` -/
def P4109446314599451312.Spec : Prop :=
  ∀ n, P4109446314599451312.a n = A368484 n

end A368484

/-! ## A368484.P12346232078765247543

`A336103(n+1)-A131577(n)`
-/

namespace A368484.P12346232078765247543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336103 (n + 1) - A131577 n

end

end A368484.P12346232078765247543

namespace A368484

/-- `A336103(n+1)-A131577(n)` -/
def P12346232078765247543.Spec : Prop :=
  ∀ n, P12346232078765247543.a n = A368484 n

end A368484

/-! ## A368484.P4242274134134042900

`and(A083329(n), A336103(n+1))`
-/

namespace A368484.P4242274134134042900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083329 n) (A336103 (n + 1))

end

end A368484.P4242274134134042900

namespace A368484

/-- `and(A083329(n), A336103(n+1))` -/
def P4242274134134042900.Spec : Prop :=
  ∀ n, P4242274134134042900.a n = A368484 n

end A368484

/-!
# A368485: Lexicographically earliest infinite sequence of positive integers such that for n > 1, a(n - a(n)) is distinct for all indices n with the same a(n) value.

The programs for A368485, there is no canonical definition to state claims against.
-/

/-! ## A368485.P8625443865736523354

`A186437(A036038(n+1)+2)`
-/

namespace A368485.P8625443865736523354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186437 (A036038 (n + 1) + 2).toNat

end

end A368485.P8625443865736523354

/-! ## A368485.P14824701784270331207

`A358136(A238344(n)+A009998(n))`
-/

namespace A368485.P14824701784270331207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358136 (A238344 n + A009998 n).toNat

end

end A368485.P14824701784270331207

/-! ## A368485.P15985650475400501911

`A242359(lt[A073364(n+1), A290890(n)])`
-/

namespace A368485.P15985650475400501911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242359 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A368485.P15985650475400501911

/-! ## A368485.P2341069397107005134

`A127322(A184856(n+1))`
-/

namespace A368485.P2341069397107005134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127322 (A184856 (n + 1)).toNat

end

end A368485.P2341069397107005134

/-! ## A368485.P5978091115912508613

`A378888(A048115(n+4))`
-/

namespace A368485.P5978091115912508613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378888 (A048115 (n + 4)).toNat

end

end A368485.P5978091115912508613

/-!
# A368486: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} k^j * j^k.

The programs for A368486, there is no canonical definition to state claims against.
-/

/-! ## A368486.P13633536310654981595

`A090181(n)*A334541(A143543(n+1))`
-/

namespace A368486.P13633536310654981595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090181 n * A334541 (A143543 (n + 1)).toNat

end

end A368486.P13633536310654981595

/-! ## A368486.P12498193270643738041

`A346415(n)+A036593(A036600(n))`
-/

namespace A368486.P12498193270643738041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346415 n + A036593 (A036600 n).toNat

end

end A368486.P12498193270643738041

/-!
# A368487: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..n} k^j * binomial(j+k-1,j).

The programs for A368487, there is no canonical definition to state claims against.
-/

/-! ## A368487.P14563585509339808572

`A367147(A117396(n))`
-/

namespace A368487.P14563585509339808572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367147 (A117396 n).toNat

end

end A368487.P14563585509339808572

/-! ## A368487.P14392626558323637996

`A334618(A185814(n))`
-/

namespace A368487.P14392626558323637996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334618 (A185814 n).toNat

end

end A368487.P14392626558323637996

/-! ## A368487.P10524720054439597459

`A032559(A125800(n))%A001175(n+3)`
-/

namespace A368487.P10524720054439597459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032559 (A125800 n).toNat) (A001175 (n + 3))

end

end A368487.P10524720054439597459

/-!
# A368488: a(n) = Sum_{k=0..n} n^k * binomial(k+n-1,k).

The programs for A368488, there is no canonical definition to state claims against.
-/

/-! ## A368488.P15049844219319002547

`A368487(∑[4*n])`
-/

namespace A368488.P15049844219319002547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368487 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A368488.P15049844219319002547

/-! ## A368488.P10975764878564175574

`record[A368487(gcd(n, A008482(n)))]`
-/

namespace A368488.P10975764878564175574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368487 (Int.gcd (n : ℤ) (A008482 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368488.P10975764878564175574

/-!
# A368496: Squarefree numbers k such that A368207(k^2) <> k+(sigma(k^2)-1)/2.

The programs for A368496, there is no canonical definition to state claims against.
-/

/-! ## A368496.P6065965057322111423

`record[A329607(A337934(n+1))]`
-/

namespace A368496.P6065965057322111423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329607 (A337934 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368496.P6065965057322111423

/-!
# A368498: a(n) is the smallest number that can be written in exactly n ways as the sum of positive integer powers of its distinct prime factors, or -1 if no such number exists.

The programs for A368498, there is no canonical definition to state claims against.
-/

/-! ## A368498.P1625342596905788483

`A000005(A067404(n))*A001147(n)`
-/

namespace A368498.P1625342596905788483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A067404 n).toNat * A001147 n

end

end A368498.P1625342596905788483

