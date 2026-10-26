import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A049800: Triangular array T, read by rows: T(n,k) = (n+1) mod floor((k+1)/2), k = 1..n and n >= 1.

The programs for A049800, the canonical program `A049800.P310842311189614315` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049800 has offset 1).

The definition of A049800 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+2)%floor((col(n)+2)/2)` (program `A049800.P310842311189614315`, by `A049800.P310842311189614315.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A049800.P310842311189614315

`(row(n)+2)%floor((col(n)+2)/2)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049800

/-- `(row(n)+2)%floor((col(n)+2)/2)` -/
def P310842311189614315.Spec : Prop :=
  ∀ n, P310842311189614315.a n = A049800 (n + 1)

theorem P310842311189614315.correct : P310842311189614315.Spec := by
  intro n
  simp only [A049800, Nat.add_sub_cancel]

end A049800

/-! ## A049800.P1434441059719979744

`(A123578(n)+1)%A008619(A002262(n))`
-/

namespace A049800.P1434441059719979744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A123578 n + 1) (A008619 (A002262 n).toNat)

end

end A049800.P1434441059719979744

namespace A049800

/-- `(A123578(n)+1)%A008619(A002262(n))` -/
def P1434441059719979744.Spec : Prop :=
  ∀ n, P1434441059719979744.a n = A049800 (n + 1)

end A049800

/-! ## A049800.P18074426978579297374

`A003057(n+2)%A008619(A002262(n))`
-/

namespace A049800.P18074426978579297374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003057 (n + 2)) (A008619 (A002262 n).toNat)

end

end A049800.P18074426978579297374

namespace A049800

/-- `A003057(n+2)%A008619(A002262(n))` -/
def P18074426978579297374.Spec : Prop :=
  ∀ n, P18074426978579297374.a n = A049800 (n + 1)

end A049800

/-! ## A049800.P6240682980056599923

`(A014132(n+1)-n)%A008619(A002262(n))`
-/

namespace A049800.P6240682980056599923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014132 (n + 1) - (n : ℤ)) (A008619 (A002262 n).toNat)

end

end A049800.P6240682980056599923

namespace A049800

/-- `(A014132(n+1)-n)%A008619(A002262(n))` -/
def P6240682980056599923.Spec : Prop :=
  ∀ n, P6240682980056599923.a n = A049800 (n + 1)

end A049800

/-! ## A049800.P13299431378241369880

`A008619(A128076(n+1))%A001057(A002260(n+1))`
-/

namespace A049800.P13299431378241369880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A128076 (n + 1)).toNat) (A001057 (A002260 (n + 1)).toNat)

end

end A049800.P13299431378241369880

namespace A049800

/-- `A008619(A128076(n+1))%A001057(A002260(n+1))` -/
def P13299431378241369880.Spec : Prop :=
  ∀ n, P13299431378241369880.a n = A049800 (n + 1)

end A049800

/-! ## A049800.P6428162972109805662

`A000027(A003057(n+2))%A065033(A002260(n+1))`
-/

namespace A049800.P6428162972109805662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (A003057 (n + 2)).toNat) (A065033 (A002260 (n + 1)).toNat)

end

end A049800.P6428162972109805662

namespace A049800

/-- `A000027(A003057(n+2))%A065033(A002260(n+1))` -/
def P6428162972109805662.Spec : Prop :=
  ∀ n, P6428162972109805662.a n = A049800 (n + 1)

end A049800

/-! ## A049800.P12824609624024819615

`A002024(A080036(n))%A001057(A002260(n+1))`
-/

namespace A049800.P12824609624024819615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (A080036 n).toNat) (A001057 (A002260 (n + 1)).toNat)

end

end A049800.P12824609624024819615

namespace A049800

/-- `A002024(A080036(n))%A001057(A002260(n+1))` -/
def P12824609624024819615.Spec : Prop :=
  ∀ n, P12824609624024819615.a n = A049800 (n + 1)

end A049800

/-! ## A049800.P3861854563016307370

`A002024(A014132(n+1))%A110654(A002260(n+1))`
-/

namespace A049800.P3861854563016307370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (A014132 (n + 1)).toNat) (A110654 (A002260 (n + 1)).toNat)

end

end A049800.P3861854563016307370

namespace A049800

/-- `A002024(A014132(n+1))%A110654(A002260(n+1))` -/
def P3861854563016307370.Spec : Prop :=
  ∀ n, P3861854563016307370.a n = A049800 (n + 1)

end A049800

/-! ## A049800.P3387381817658726841

`A000005(A140513(n))%A008619(A002262(n))`
-/

namespace A049800.P3387381817658726841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A140513 n).toNat) (A008619 (A002262 n).toNat)

end

end A049800.P3387381817658726841

namespace A049800

/-- `A000005(A140513(n))%A008619(A002262(n))` -/
def P3387381817658726841.Spec : Prop :=
  ∀ n, P3387381817658726841.a n = A049800 (n + 1)

end A049800

/-!
# A049801: Triangular array T, read by rows: T(n,k) = n mod floor(k/3), k = 3..n and n >= 3.

The programs for A049801, the canonical program `A049801.P17998493784673270206` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049801 has offset 3).

The definition of A049801 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049801.P17998493784673270206

`A052938(A131507(n))%A008620(A002262(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049801

/-- `A052938(A131507(n))%A008620(A002262(n))` -/
def P17998493784673270206.Spec : Prop :=
  ∀ n, P17998493784673270206.a n = A049801 (n + 3)

theorem P17998493784673270206.correct : P17998493784673270206.Spec := by
  intro n
  simp only [A049801, Nat.add_sub_cancel]

end A049801

/-! ## A049801.P3358840677257801100

`A003057(A014132(n+1))%A008620(A002262(n))`
-/

namespace A049801.P3358840677257801100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003057 (A014132 (n + 1)).toNat) (A008620 (A002262 n).toNat)

end

end A049801.P3358840677257801100

namespace A049801

/-- `A003057(A014132(n+1))%A008620(A002262(n))` -/
def P3358840677257801100.Spec : Prop :=
  ∀ n, P3358840677257801100.a n = A049801 (n + 3)

end A049801

/-! ## A049801.P15671625553137774685

`A219463(round(A330341(n+1)/3))`
-/

namespace A049801.P15671625553137774685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219463 (SequenceMachineLib.roundAway ((A330341 (n + 1) : ℚ) / 3)).toNat

end

end A049801.P15671625553137774685

namespace A049801

/-- `A219463(round(A330341(n+1)/3))` -/
def P15671625553137774685.Spec : Prop :=
  ∀ n, P15671625553137774685.a n = A049801 (n + 3)

end A049801

/-! ## A049801.P17418640639955405643

`and(A355531(2*(n+2))%A239550(n), A325459(3*n))`
-/

namespace A049801.P17418640639955405643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (A355531 (2 * (n + 2))) (A239550 n)) (A325459 (3 * n))

end

end A049801.P17418640639955405643

namespace A049801

/-- `and(A355531(2*(n+2))%A239550(n), A325459(3*n))` -/
def P17418640639955405643.Spec : Prop :=
  ∀ n, P17418640639955405643.a n = A049801 (n + 3)

end A049801

/-! ## A049801.P792276677597158356

`A163352(A238884(n+1))%A346426(A002262(n))`
-/

namespace A049801.P792276677597158356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163352 (A238884 (n + 1)).toNat) (A346426 (A002262 n).toNat)

end

end A049801.P792276677597158356

namespace A049801

/-- `A163352(A238884(n+1))%A346426(A002262(n))` -/
def P792276677597158356.Spec : Prop :=
  ∀ n, P792276677597158356.a n = A049801 (n + 3)

end A049801

/-!
# A049802: a(n) = n mod 2 + n mod 4 + ... + n mod 2^k, where 2^k <= n < 2^(k+1).

The programs for A049802, the canonical program `A049802.P9042781882939997618` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049802 has offset 1).

The definition of A049802 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049802.P9042781882939997618

`∑[2*and(n, n+1)]%(n+1)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049802

/-- `∑[2*and(n, n+1)]%(n+1)` -/
def P9042781882939997618.Spec : Prop :=
  ∀ n, (P9042781882939997618.a n : ℤ) = A049802 (n + 1)

theorem P9042781882939997618.correct : P9042781882939997618.Spec := by
  intro n
  simp only [A049802, Nat.add_sub_cancel]

end A049802

/-! ## A049802.P13233046468142517147

`∑[76-xor(n, n+1)]%(n+1)`
-/

namespace A049802.P13233046468142517147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  76 - (Nat.xor n (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A049802.P13233046468142517147

namespace A049802

/-- `∑[76-xor(n, n+1)]%(n+1)` -/
def P13233046468142517147.Spec : Prop :=
  ∀ n, P13233046468142517147.a n = A049802 (n + 1)

end A049802

/-! ## A049802.P1227231823098698111

`(n*∑[xor(n, n+1)])%(n+1)`
-/

namespace A049802.P1227231823098698111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A049802.P1227231823098698111

namespace A049802

/-- `(n*∑[xor(n, n+1)])%(n+1)` -/
def P1227231823098698111.Spec : Prop :=
  ∀ n, (P1227231823098698111.a n : ℤ) = A049802 (n + 1)

end A049802

/-! ## A049802.P14226154056389437638

`∑[16-A038712(n+1)]%(n+1)`
-/

namespace A049802.P14226154056389437638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 - A038712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A049802.P14226154056389437638

namespace A049802

/-- `∑[16-A038712(n+1)]%(n+1)` -/
def P14226154056389437638.Spec : Prop :=
  ∀ n, P14226154056389437638.a n = A049802 (n + 1)

end A049802

/-! ## A049802.P11475317323533760986

`∑[A022998(and(n, n+1))]%(n+1)`
-/

namespace A049802.P11475317323533760986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A049802.P11475317323533760986

namespace A049802

/-- `∑[A022998(and(n, n+1))]%(n+1)` -/
def P11475317323533760986.Spec : Prop :=
  ∀ n, P11475317323533760986.a n = A049802 (n + 1)

end A049802

/-! ## A049802.P5914576829321830947

`∑{d}[A000010(2^ceil(log2(n+1))), (n+1)%#]`
-/

namespace A049802.P5914576829321830947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1) % d

end

end A049802.P5914576829321830947

namespace A049802

/-- `∑{d}[A000010(2^ceil(log2(n+1))), (n+1)%#]` -/
def P5914576829321830947.Spec : Prop :=
  ∀ n, (P5914576829321830947.a n : ℤ) = A049802 (n + 1)

end A049802

/-!
# A049803: a(n) = n mod 3 + n mod 9 + ... + n mod 3^k, where 3^k <= n < 3^(k+1).

The programs for A049803, the canonical program `A049803.P12540868050358314249` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049803 has offset 1).

The definition of A049803 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049803.P10513774567217563112

`(n*A080333(n+1))%(n+1)`
-/

namespace A049803.P10513774567217563112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A080333 (n + 1)) (n + 1 : ℤ)

end

end A049803.P10513774567217563112

namespace A049803

/-- `(n*A080333(n+1))%(n+1)` -/
def P10513774567217563112.Spec : Prop :=
  ∀ n, P10513774567217563112.a n = A049803 (n + 1)

end A049803

/-! ## A049803.P2316268022398464723

`(A212759(n)-A080333(n+1))%(n+1)`
-/

namespace A049803.P2316268022398464723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212759 n - A080333 (n + 1)) (n + 1 : ℤ)

end

end A049803.P2316268022398464723

namespace A049803

/-- `(A212759(n)-A080333(n+1))%(n+1)` -/
def P2316268022398464723.Spec : Prop :=
  ∀ n, P2316268022398464723.a n = A049803 (n + 1)

end A049803

/-! ## A049803.P12540868050358314249

`(n*∑[A032766(A038500(n+1))])%(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049803

/-- `(n*∑[A032766(A038500(n+1))])%(n+1)` -/
def P12540868050358314249.Spec : Prop :=
  ∀ n, P12540868050358314249.a n = A049803 (n + 1)

theorem P12540868050358314249.correct : P12540868050358314249.Spec := by
  intro n
  simp only [A049803, Nat.add_sub_cancel]

end A049803

/-! ## A049803.P5178708759822036550

`(n*∑[A003973(A318666(n+1))])%(n+1)`
-/

namespace A049803.P5178708759822036550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (A318666 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) (n + 1 : ℤ)

end

end A049803.P5178708759822036550

namespace A049803

/-- `(n*∑[A003973(A318666(n+1))])%(n+1)` -/
def P5178708759822036550.Spec : Prop :=
  ∀ n, P5178708759822036550.a n = A049803 (n + 1)

end A049803

/-! ## A049803.P12657085220729506936

`(A000010((n+1)²)-A080333(n+1))%(n+1)`
-/

namespace A049803.P12657085220729506936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 ((n + 1) ^ 2) - A080333 (n + 1)) (n + 1 : ℤ)

end

end A049803.P12657085220729506936

namespace A049803

/-- `(A000010((n+1)²)-A080333(n+1))%(n+1)` -/
def P12657085220729506936.Spec : Prop :=
  ∀ n, P12657085220729506936.a n = A049803 (n + 1)

end A049803

/-!
# A049804: a(n) = n mod 4 + n mod 16 + ... + n mod 4^k, where 4^k <= n < 4^(k+1).

The programs for A049804, there is no canonical definition to state claims against.
-/

/-! ## A049804.P10317577387230142473

`∑{d}[A011782(n), (n+1)%#²]%(n+1)`
-/

namespace A049804.P10317577387230142473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1) % d ^ 2) % (n + 1)

end

end A049804.P10317577387230142473

/-!
# A049805: Triangular array T read by rows: T(n,k) is the number of Farey fractions of order n that are <= 1/k for k=1..n, for n>=1.

The programs for A049805, there is no canonical definition to state claims against.
-/

/-! ## A049805.P13858143297406206634

`A078898(A087112(n+1))%A177201(3*n+5)`
-/

namespace A049805.P13858143297406206634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078898 (A087112 (n + 1)).toNat) (A177201 (3 * n + 5))

end

end A049805.P13858143297406206634

/-! ## A049805.P4618412928737650601

`A078898(A087112(n+1))+A000038(A122412(n+1))`
-/

namespace A049805.P4618412928737650601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A087112 (n + 1)).toNat + A000038 (A122412 (n + 1)).toNat

end

end A049805.P4618412928737650601

/-! ## A049805.P16366463811117192479

`A078898(A087112(n+1))+A000038(A122413(n+1))`
-/

namespace A049805.P16366463811117192479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A087112 (n + 1)).toNat + A000038 (A122413 (n + 1)).toNat

end

end A049805.P16366463811117192479

/-! ## A049805.P16630607231935125205

`A078898(A087112(n+1))+A000007(A011379(n+1)+1)`
-/

namespace A049805.P16630607231935125205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A087112 (n + 1)).toNat + A000007 (A011379 (n + 1) + 1).toNat

end

end A049805.P16630607231935125205

/-! ## A049805.P17090397762133303806

`A078898(A087112(n+1))+A016141(A011379(n+1)+1)`
-/

namespace A049805.P17090397762133303806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A087112 (n + 1)).toNat + A016141 (A011379 (n + 1) + 1).toNat

end

end A049805.P17090397762133303806

/-!
# A049806: Number of Farey fractions of order n that are <=1/2; cf. A049805.

The programs for A049806, the canonical program `A049806.P8436587211597941545` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049806 has offset 1).

The definition of A049806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049806.P5855430831240624369

`ceil(A005728(n+1)/2)`
-/

namespace A049806.P5855430831240624369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005728 (n + 1) : ℚ) / 2⌉

end

end A049806.P5855430831240624369

namespace A049806

/-- `ceil(A005728(n+1)/2)` -/
def P5855430831240624369.Spec : Prop :=
  ∀ n, P5855430831240624369.a n = A049806 (n + 1)

end A049806

/-! ## A049806.P4837268282592202180

`∑[round(Δ[A002088(n)/2])]`
-/

namespace A049806.P4837268282592202180
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049806.P4837268282592202180

namespace A049806

/-- `∑[round(Δ[A002088(n)/2])]` -/
def P4837268282592202180.Spec : Prop :=
  ∀ n, P4837268282592202180.a n = A049806 (n + 1)

end A049806

/-! ## A049806.P1226054267837890793

`∑[floor(A039649(n+1)/2)]`
-/

namespace A049806.P1226054267837890793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A039649 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049806.P1226054267837890793

namespace A049806

/-- `∑[floor(A039649(n+1)/2)]` -/
def P1226054267837890793.Spec : Prop :=
  ∀ n, P1226054267837890793.a n = A049806 (n + 1)

end A049806

/-! ## A049806.P17049338508147977535

`∑[ceil(A000010(n+1)/2)]`
-/

namespace A049806.P17049338508147977535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049806.P17049338508147977535

namespace A049806

/-- `∑[ceil(A000010(n+1)/2)]` -/
def P17049338508147977535.Spec : Prop :=
  ∀ n, P17049338508147977535.a n = A049806 (n + 1)

end A049806

/-! ## A049806.P12773434758443001372

`∑[A023022(ceil(sqrt(n²+4)))]`
-/

namespace A049806.P12773434758443001372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 ⌈Real.sqrt (n ^ 2 + 4 : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049806.P12773434758443001372

namespace A049806

/-- `∑[A023022(ceil(sqrt(n²+4)))]` -/
def P12773434758443001372.Spec : Prop :=
  ∀ n, P12773434758443001372.a n = A049806 (n + 1)

end A049806

/-! ## A049806.P17383886032026988690

`floor(A002088(n+1)/2)+1`
-/

namespace A049806.P17383886032026988690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002088 (n + 1) : ℚ) / 2⌋ + 1

end

end A049806.P17383886032026988690

namespace A049806

/-- `floor(A002088(n+1)/2)+1` -/
def P17383886032026988690.Spec : Prop :=
  ∀ n, P17383886032026988690.a n = A049806 (n + 1)

end A049806

/-! ## A049806.P3872533707052151064

`round(A015614(n+1)/2)+1`
-/

namespace A049806.P3872533707052151064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A015614 (n + 1) : ℚ) / 2) + 1

end

end A049806.P3872533707052151064

namespace A049806

/-- `round(A015614(n+1)/2)+1` -/
def P3872533707052151064.Spec : Prop :=
  ∀ n, P3872533707052151064.a n = A049806 (n + 1)

end A049806

/-! ## A049806.P14899909541082353179

`A023022(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A049806.P14899909541082353179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023022 (n + 1) + a (n - 1)

end

end A049806.P14899909541082353179

namespace A049806

/-- `A023022(n+1)+a(n-1)` -/
def P14899909541082353179.Spec : Prop :=
  ∀ n, P14899909541082353179.a n = A049806 (n + 1)

end A049806

/-! ## A049806.P18220314873786120509

`∑[ceil((A109606(n+1)+1)/2)]`
-/

namespace A049806.P18220314873786120509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109606 (n + 1) + 1 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049806.P18220314873786120509

namespace A049806

/-- `∑[ceil((A109606(n+1)+1)/2)]` -/
def P18220314873786120509.Spec : Prop :=
  ∀ n, P18220314873786120509.a n = A049806 (n + 1)

end A049806

/-! ## A049806.P5470612678733331157

`∑[round(A000010(C(n+1, n))/2)]`
-/

namespace A049806.P5470612678733331157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000010 (Nat.choose (n + 1) n) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049806.P5470612678733331157

namespace A049806

/-- `∑[round(A000010(C(n+1, n))/2)]` -/
def P5470612678733331157.Spec : Prop :=
  ∀ n, P5470612678733331157.a n = A049806 (n + 1)

end A049806

/-! ## A049806.P5953547442752316059

`(∑[A000010(char[1]+1+n)]+1)/2`
-/

namespace A049806.P5953547442752316059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((if ∃ j, f2 j = n then 1 else 0) + 1 + n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A049806.P5953547442752316059

namespace A049806

/-- `(∑[A000010(char[1]+1+n)]+1)/2` -/
def P5953547442752316059.Spec : Prop :=
  ∀ n, P5953547442752316059.a n = (A049806 (n + 1) : ℚ)

end A049806

/-! ## A049806.P10561772017710321802

`∑[A000010(C(2, n+1)+n+1)/2]`
-/

namespace A049806.P10561772017710321802
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (Nat.choose 2 (n + 1) + (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049806.P10561772017710321802

namespace A049806

/-- `∑[A000010(C(2, n+1)+n+1)/2]` -/
def P10561772017710321802.Spec : Prop :=
  ∀ n, P10561772017710321802.a n = (A049806 (n + 1) : ℚ)

end A049806

/-! ## A049806.P16381149366232807293

`∑[lcm(2, A000010(2*n+1-n))/2]`
-/

namespace A049806.P16381149366232807293
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A000010 (2 * n + 1 - n)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049806.P16381149366232807293

namespace A049806

/-- `∑[lcm(2, A000010(2*n+1-n))/2]` -/
def P16381149366232807293.Spec : Prop :=
  ∀ n, P16381149366232807293.a n = (A049806 (n + 1) : ℚ)

end A049806

/-! ## A049806.P6426325703895470664

`∑[A004525(A000010(n+1))]`
-/

namespace A049806.P6426325703895470664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049806.P6426325703895470664

namespace A049806

/-- `∑[A004525(A000010(n+1))]` -/
def P6426325703895470664.Spec : Prop :=
  ∀ n, P6426325703895470664.a n = A049806 (n + 1)

end A049806

/-! ## A049806.P8436587211597941545

`∑[A055034(A026741(n+1))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A049806

/-- `∑[A055034(A026741(n+1))]` -/
def P8436587211597941545.Spec : Prop :=
  ∀ n, P8436587211597941545.a n = A049806 (n + 1)

theorem P8436587211597941545.correct : P8436587211597941545.Spec := by
  intro n
  simp only [A049806, Nat.add_sub_cancel]

end A049806

/-! ## A049806.P2623693108141490428

`∑[A004526(A000010(n+1)+1)]`
-/

namespace A049806.P2623693108141490428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049806.P2623693108141490428

namespace A049806

/-- `∑[A004526(A000010(n+1)+1)]` -/
def P2623693108141490428.Spec : Prop :=
  ∀ n, P2623693108141490428.a n = A049806 (n + 1)

end A049806

/-! ## A049806.P16987394888741225918

`∑[A057979(A000010(n+1)+1)]`
-/

namespace A049806.P16987394888741225918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049806.P16987394888741225918

namespace A049806

/-- `∑[A057979(A000010(n+1)+1)]` -/
def P16987394888741225918.Spec : Prop :=
  ∀ n, P16987394888741225918.a n = A049806 (n + 1)

end A049806

/-! ## A049806.P11040393074345327123

`∑[A101279(A000010(n+1)+1)]`
-/

namespace A049806.P11040393074345327123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101279 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049806.P11040393074345327123

namespace A049806

/-- `∑[A101279(A000010(n+1)+1)]` -/
def P11040393074345327123.Spec : Prop :=
  ∀ n, P11040393074345327123.a n = A049806 (n + 1)

end A049806

/-! ## A049806.P5724516291756219850

`∑[A123108(A000010(n+1)+1)]`
-/

namespace A049806.P5724516291756219850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049806.P5724516291756219850

namespace A049806

/-- `∑[A123108(A000010(n+1)+1)]` -/
def P5724516291756219850.Spec : Prop :=
  ∀ n, P5724516291756219850.a n = A049806 (n + 1)

end A049806

/-! ## A049806.P544815357017583146

`∑[A008619(A000010(n+1)-1)]`
-/

namespace A049806.P544815357017583146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000010 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049806.P544815357017583146

namespace A049806

/-- `∑[A008619(A000010(n+1)-1)]` -/
def P544815357017583146.Spec : Prop :=
  ∀ n, P544815357017583146.a n = A049806 (n + 1)

end A049806

/-!
# A049807: a(n)=number of Farey fractions of order n that are <=1/3; cf. A049805.

The programs for A049807, the canonical program `A049807.P8313610108641097684` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049807 has offset 1).

The definition of A049807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 974 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049807.P8895024483405570782

`∑[A133755(char[2]+1+n)]+1`
-/

namespace A049807.P8895024483405570782
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133755 ((if ∃ j, f2 j = n then 1 else 0) + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A049807.P8895024483405570782

namespace A049807

/-- `∑[A133755(char[2]+1+n)]+1` -/
def P8895024483405570782.Spec : Prop :=
  ∀ n, P8895024483405570782.a n = A049807 (n + 1)

end A049807

/-! ## A049807.P8313610108641097684

`∑[A133755(n+1)+A084091(C(2, n))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A049807

/-- `∑[A133755(n+1)+A084091(C(2, n))]` -/
def P8313610108641097684.Spec : Prop :=
  ∀ n, P8313610108641097684.a n = A049807 (n + 1)

theorem P8313610108641097684.correct : P8313610108641097684.Spec := by
  intro n
  simp only [A049807, Nat.add_sub_cancel]

end A049807

/-! ## A049807.P9893470645285844508

`A000034(A019426(n))+∑[A133755(n+1)]`
-/

namespace A049807.P9893470645285844508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A019426 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049807.P9893470645285844508

namespace A049807

/-- `A000034(A019426(n))+∑[A133755(n+1)]` -/
def P9893470645285844508.Spec : Prop :=
  ∀ n, P9893470645285844508.a n = A049807 (n + 1)

end A049807

/-! ## A049807.P1424816345821152294

`A000034(A019428(n))+∑[A133755(n+1)]`
-/

namespace A049807.P1424816345821152294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A019428 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049807.P1424816345821152294

namespace A049807

/-- `A000034(A019428(n))+∑[A133755(n+1)]` -/
def P1424816345821152294.Spec : Prop :=
  ∀ n, P1424816345821152294.a n = A049807 (n + 1)

end A049807

/-! ## A049807.P11039728183498368040

`A036453(A008619(n))+∑[A133755(n+1)]`
-/

namespace A049807.P11039728183498368040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A008619 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049807.P11039728183498368040

namespace A049807

/-- `A036453(A008619(n))+∑[A133755(n+1)]` -/
def P11039728183498368040.Spec : Prop :=
  ∀ n, P11039728183498368040.a n = A049807 (n + 1)

end A049807

/-! ## A049807.P16459805769580108559

`A036453(A001400(n))+∑[A133755(n+1)]`
-/

namespace A049807.P16459805769580108559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A001400 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049807.P16459805769580108559

namespace A049807

/-- `A036453(A001400(n))+∑[A133755(n+1)]` -/
def P16459805769580108559.Spec : Prop :=
  ∀ n, P16459805769580108559.a n = A049807 (n + 1)

end A049807

/-! ## A049807.P126834238650140078

`A036453(A214626(n))+∑[A133755(n+1)]`
-/

namespace A049807.P126834238650140078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133755 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A214626 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049807.P126834238650140078

namespace A049807

/-- `A036453(A214626(n))+∑[A133755(n+1)]` -/
def P126834238650140078.Spec : Prop :=
  ∀ n, P126834238650140078.a n = A049807 (n + 1)

end A049807

/-!
# A049808: a(n)=number of Farey fractions of order n that are <=1/4; cf. A049805.

The programs for A049808, there is no canonical definition to state claims against.
-/

/-! ## A049808.P8899774119132239201

`A120835(A342497(n))`
-/

namespace A049808.P8899774119132239201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120835 (A342497 n).toNat

end

end A049808.P8899774119132239201

/-! ## A049808.P7919324848429517275

`A008624(A002088(n+1)%A260814(n+1))`
-/

namespace A049808.P7919324848429517275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.tmod (A002088 (n + 1)) (A260814 (n + 1))).toNat

end

end A049808.P7919324848429517275

/-! ## A049808.P7071127547609052956

`A008624(A092249(n+1)%A260814(n+1))`
-/

namespace A049808.P7071127547609052956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.tmod (A092249 (n + 1)) (A260814 (n + 1))).toNat

end

end A049808.P7071127547609052956

/-!
# A049809: a(n)=number of Farey fractions of order n that are <=1/5; cf. A049805.

The programs for A049809, there is no canonical definition to state claims against.
-/

/-! ## A049809.P9160663073377896913

`A120835(A008616(∑[A000040(n+1)]))`
-/

namespace A049809.P9160663073377896913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120835 (A008616 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A049809.P9160663073377896913

/-! ## A049809.P1657993944884469766

`A190278(n+1)-A178798(A026812(n))`
-/

namespace A049809.P1657993944884469766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190278 (n + 1) - A178798 (A026812 n).toNat

end

end A049809.P1657993944884469766

/-! ## A049809.P1223554878942930879

`A190278(n+1)-A185284(2*n+1)`
-/

namespace A049809.P1223554878942930879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190278 (n + 1) - A185284 (2 * n + 1)

end

end A049809.P1223554878942930879

/-!
# A049812: a(n)=number of Farey fractions of order n that are <=1/8; cf. A049805.

The programs for A049812, there is no canonical definition to state claims against.
-/

/-! ## A049812.P12310317521426978533

`A033110(n+10)^A067453(A152714(n))`
-/

namespace A049812.P12310317521426978533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033110 (n + 10) : ℚ) ^ (A067453 (A152714 n).toNat : ℤ)

end

end A049812.P12310317521426978533

/-! ## A049812.P13496877362885849875

`or(A004530(A000045(n+1)), A033110(n+10))`
-/

namespace A049812.P13496877362885849875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004530 (A000045 (n + 1)).toNat) (A033110 (n + 10))

end

end A049812.P13496877362885849875

/-!
# A049815: a(n) = Sum_{k=1..n} T(n,k), array T as in A049805.

The programs for A049815, the canonical program `A049815.P7841907269452352483` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049815 has offset 1).

The definition of A049815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 981 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049815.P15063170980038474336

`∑[A116477(n+1)+1]`
-/

namespace A049815.P15063170980038474336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116477 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049815.P15063170980038474336

namespace A049815

/-- `∑[A116477(n+1)+1]` -/
def P15063170980038474336.Spec : Prop :=
  ∀ n, P15063170980038474336.a n = A049815 (n + 1)

end A049815

/-! ## A049815.P7841907269452352483

`∑[∑{d}[n+1, A332684(#)]+1]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A049815

/-- `∑[∑{d}[n+1, A332684(#)]+1]` -/
def P7841907269452352483.Spec : Prop :=
  ∀ n, P7841907269452352483.a n = A049815 (n + 1)

theorem P7841907269452352483.correct : P7841907269452352483.Spec := by
  intro n
  simp only [A049815, Nat.add_sub_cancel]

end A049815

/-! ## A049815.P16420401060601905607

`∑[A020725(A116477(n+1))]`
-/

namespace A049815.P16420401060601905607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A116477 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049815.P16420401060601905607

namespace A049815

/-- `∑[A020725(A116477(n+1))]` -/
def P16420401060601905607.Spec : Prop :=
  ∀ n, P16420401060601905607.a n = A049815 (n + 1)

end A049815

/-! ## A049815.P9885847947627222483

`∑[A332683(n+1)+1-A109606(n+1)]`
-/

namespace A049815.P9885847947627222483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332683 (n + 1) + (1 - A109606 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049815.P9885847947627222483

namespace A049815

/-- `∑[A332683(n+1)+1-A109606(n+1)]` -/
def P9885847947627222483.Spec : Prop :=
  ∀ n, P9885847947627222483.a n = A049815 (n + 1)

end A049815

/-! ## A049815.P5218512593092254407

`∑[A332683(n+1)+2-A000010(n+1)]`
-/

namespace A049815.P5218512593092254407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332683 (n + 1) + (2 - A000010 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049815.P5218512593092254407

namespace A049815

/-- `∑[A332683(n+1)+2-A000010(n+1)]` -/
def P5218512593092254407.Spec : Prop :=
  ∀ n, P5218512593092254407.a n = A049815 (n + 1)

end A049815

/-! ## A049815.P8950851267164188933

`a(n-1)+A116477(n+1)+A088388(A006530(n+1))` with `a(0)=2`
-/

namespace A049815.P8950851267164188933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A116477 (n + 1) + A088388 (A006530 (n + 1)).toNat)

end

end A049815.P8950851267164188933

namespace A049815

/-- `a(n-1)+A116477(n+1)+A088388(A006530(n+1))` -/
def P8950851267164188933.Spec : Prop :=
  ∀ n, P8950851267164188933.a n = A049815 (n + 1)

end A049815

/-! ## A049815.P10356486535886356009

`a(n-1)+A116477(n+1)+A000034(A014486(n))` with `a(0)=2`
-/

namespace A049815.P10356486535886356009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A116477 (n + 1) + A000034 (A014486 n).toNat)

end

end A049815.P10356486535886356009

namespace A049815

/-- `a(n-1)+A116477(n+1)+A000034(A014486(n))` -/
def P10356486535886356009.Spec : Prop :=
  ∀ n, P10356486535886356009.a n = A049815 (n + 1)

end A049815

/-!
# A049816: Triangular array T read by rows: T(n,k) = number of nonzero remainders when Euclidean algorithm acts on n and k, for k=1..n, n>=1.

The programs for A049816, there is no canonical definition to state claims against.
-/

/-! ## A049816.P13217227068250470800

`A107435(n+1)-1`
-/

namespace A049816.P13217227068250470800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (n + 1) - 1

end

end A049816.P13217227068250470800

/-! ## A049816.P13848573099009711276

`∑[Δ[A107435(A028310(n))]%15]`
-/

namespace A049816.P13848573099009711276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049816.P13848573099009711276

/-! ## A049816.P10512995837393056706

`A127229(n+5)%A107435(n+1)`
-/

namespace A049816.P10512995837393056706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A107435 (n + 1))

end

end A049816.P10512995837393056706

/-! ## A049816.P678756788109106179

`A001478(n+1)+A107435(n+1)+n`
-/

namespace A049816.P678756788109106179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A107435 (n + 1) + (n : ℤ))

end

end A049816.P678756788109106179

/-! ## A049816.P10029636649212368054

`(A168392(n+1)+A107435(n+1))%A168269(n+1)`
-/

namespace A049816.P10029636649212368054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168392 (n + 1) + A107435 (n + 1)) (A168269 (n + 1))

end

end A049816.P10029636649212368054

/-! ## A049816.P10152347448910559231

`A051010(n+2)-A023532(n)`
-/

namespace A049816.P10152347448910559231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051010 (n + 2) - A023532 n

end

end A049816.P10152347448910559231

/-! ## A049816.P4954220920856944587

`A057428(A025581(n))+A051010(n+2)`
-/

namespace A049816.P4954220920856944587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A025581 n).toNat + A051010 (n + 2)

end

end A049816.P4954220920856944587

/-! ## A049816.P1997024477389907723

`A316441(A007520(n+1))+A107435(n+1)`
-/

namespace A049816.P1997024477389907723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A007520 (n + 1)).toNat + A107435 (n + 1)

end

end A049816.P1997024477389907723

/-! ## A049816.P10157887538472174836

`A083800(n+1)%A107435(n+1)`
-/

namespace A049816.P10157887538472174836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A107435 (n + 1))

end

end A049816.P10157887538472174836

/-! ## A049816.P1381650760868417561

`A070198(n)%A107435(n+1)`
-/

namespace A049816.P1381650760868417561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A107435 (n + 1))

end

end A049816.P1381650760868417561

/-! ## A049816.P11380689785083590003

`A079782(n+1)%A107435(n+1)`
-/

namespace A049816.P11380689785083590003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A107435 (n + 1))

end

end A049816.P11380689785083590003

/-! ## A049816.P4563098044659361566

`A083685(n+1)%A107435(n+1)`
-/

namespace A049816.P4563098044659361566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A107435 (n + 1))

end

end A049816.P4563098044659361566

/-! ## A049816.P2431240966727942566

`A121934(n+1)%A107435(n+1)`
-/

namespace A049816.P2431240966727942566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A107435 (n + 1))

end

end A049816.P2431240966727942566

/-! ## A049816.P10214091027536870907

`A147597(n+1)%A107435(n+1)`
-/

namespace A049816.P10214091027536870907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147597 (n + 1)) (A107435 (n + 1))

end

end A049816.P10214091027536870907

/-! ## A049816.P5523540731421311238

`A030494(n+1)%A107435(n+1)`
-/

namespace A049816.P5523540731421311238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A107435 (n + 1))

end

end A049816.P5523540731421311238

/-! ## A049816.P11248458853992456672

`A072828(n+1)%A107435(n+1)`
-/

namespace A049816.P11248458853992456672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A107435 (n + 1))

end

end A049816.P11248458853992456672

/-! ## A049816.P9511422308336458766

`A004151(A005385(n+1))%A107435(n+1)`
-/

namespace A049816.P9511422308336458766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004151 (A005385 (n + 1)).toNat) (A107435 (n + 1))

end

end A049816.P9511422308336458766

/-! ## A049816.P13804834117697631348

`A086827(n+1)%A107435(n+1)`
-/

namespace A049816.P13804834117697631348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086827 (n + 1)) (A107435 (n + 1))

end

end A049816.P13804834117697631348

/-! ## A049816.P12851081820976069211

`A005385(A033752(n))%A107435(n+1)`
-/

namespace A049816.P12851081820976069211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005385 (A033752 n).toNat) (A107435 (n + 1))

end

end A049816.P12851081820976069211

/-!
# A049817: a(n) = Sum_{k=1..n} T(n,k), array T as in A049816.

The programs for A049817, there is no canonical definition to state claims against.
-/

/-! ## A049817.P12345975891231193094

`A049826(n+1)-n`
-/

namespace A049817.P12345975891231193094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049826 (n + 1) - (n : ℤ)

end

end A049817.P12345975891231193094

/-! ## A049817.P16100155337579399772

`Δ[A049818(A028310(n))]`
-/

namespace A049817.P16100155337579399772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049818 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049817.P16100155337579399772

/-! ## A049817.P1420356361038227517

`A049818(n+1)-A049818(A028310(n))`
-/

namespace A049817.P1420356361038227517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049818 (n + 1) - A049818 (A028310 n).toNat

end

end A049817.P1420356361038227517

/-! ## A049817.P16037303707353562694

`A049818(n+1)-A049818(A000007(n)+n)`
-/

namespace A049817.P16037303707353562694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049818 (n + 1) - A049818 (A000007 n + (n : ℤ)).toNat

end

end A049817.P16037303707353562694

/-! ## A049817.P13839852097719878574

`A049827(n+2)-Δ[n²]`
-/

namespace A049817.P13839852097719878574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049827 (n + 2) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A049817.P13839852097719878574

/-! ## A049817.P15288938905437779111

`Δ[A049818(A000007(n)+n)]`
-/

namespace A049817.P15288938905437779111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049818 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049817.P15288938905437779111

/-! ## A049817.P12442479385124885879

`A000217(2*n)+A049827(n+2)-A000217(2*n+1)`
-/

namespace A049817.P12442479385124885879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n) + (A049827 (n + 2) - A000217 (2 * n + 1))

end

end A049817.P12442479385124885879

/-! ## A049817.P7852183737581203750

`A023443(A049827(n+2)-2*n)`
-/

namespace A049817.P7852183737581203750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A049827 (n + 2) - (2 * n : ℤ)).toNat

end

end A049817.P7852183737581203750

/-! ## A049817.P3612853723281363303

`A049818(n+1)-A049818(A233583(n+1))`
-/

namespace A049817.P3612853723281363303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049818 (n + 1) - A049818 (A233583 (n + 1)).toNat

end

end A049817.P3612853723281363303

/-! ## A049817.P14742287179157864496

`Δ[A049818(A233583(n+1))]`
-/

namespace A049817.P14742287179157864496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049818 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049817.P14742287179157864496

/-!
# A049818: a(n) = Sum_{k=1..n, m=1..n} T(m,k), array T as in A049816.

The programs for A049818, there is no canonical definition to state claims against.
-/

/-! ## A049818.P2771714795255105865

`∑[A049817(n+1)]`
-/

namespace A049818.P2771714795255105865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049817 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049818.P2771714795255105865

/-! ## A049818.P14255602485438469656

`∑[A049826(n+1)-n]`
-/

namespace A049818.P14255602485438469656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049826 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049818.P14255602485438469656

/-! ## A049818.P12103358606280256929

`A367892(n+1)-∑[n+1]`
-/

namespace A049818.P12103358606280256929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367892 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A049818.P12103358606280256929

/-! ## A049818.P6645788032690042716

`∑[A049826(n+1)]+∑[A001489(n)]`
-/

namespace A049818.P6645788032690042716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A049818.P6645788032690042716

/-! ## A049818.P17490536968805143930

`∑[A049827(n+2)]-(n+1)²`
-/

namespace A049818.P17490536968805143930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049827 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A049818.P17490536968805143930

/-! ## A049818.P9393579703351889756

`∑[A049827(n+2)-A000027(2*n+1)]`
-/

namespace A049818.P9393579703351889756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049827 (n + 2) - A000027 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049818.P9393579703351889756

/-! ## A049818.P3781076526551453379

`∑[A049827(n+2)-n-A000027(n+1)]`
-/

namespace A049818.P3781076526551453379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049827 (n + 2) - (n : ℤ) - A000027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049818.P3781076526551453379

/-! ## A049818.P3081949882606490708

`∑[A049827(n+2)-n]-A000217(n+1)`
-/

namespace A049818.P3081949882606490708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049827 (n + 2) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000217 (n + 1)

end

end A049818.P3081949882606490708

/-!
# A049819: a(n) = Max_{k=1..n} T(n,k), array T as in A049816.

The programs for A049819, there is no canonical definition to state claims against.
-/

/-! ## A049819.P11668824209633702369

`A071647(n+1)-1`
-/

namespace A049819.P11668824209633702369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071647 (n + 1) - 1

end

end A049819.P11668824209633702369

/-! ## A049819.P10211305093930296900

`A028310(A034883(n+1))-1`
-/

namespace A049819.P10211305093930296900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A034883 (n + 1)).toNat - 1

end

end A049819.P10211305093930296900

/-! ## A049819.P13257846150231306319

`A057428(n)+A034883(n+1)`
-/

namespace A049819.P13257846150231306319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A034883 (n + 1)

end

end A049819.P13257846150231306319

/-! ## A049819.P7575364475745991808

`A034883(n+1)-A057427(n)`
-/

namespace A049819.P7575364475745991808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (n + 1) - A057427 n

end

end A049819.P7575364475745991808

/-! ## A049819.P12875530230782622023

`A254667(A034883(n+1)+1)-2`
-/

namespace A049819.P12875530230782622023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A034883 (n + 1) + 1).toNat - 2

end

end A049819.P12875530230782622023

/-! ## A049819.P3136815927379626982

`A140106(2*A034883(n+1)+1)`
-/

namespace A049819.P3136815927379626982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A034883 (n + 1) + 1).toNat

end

end A049819.P3136815927379626982

/-! ## A049819.P16145918778649727919

`A233583(A034883(n+1)+2)-2`
-/

namespace A049819.P16145918778649727919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A034883 (n + 1) + 2).toNat - 2

end

end A049819.P16145918778649727919

/-! ## A049819.P7207452992800365174

`A034883(n+1)+A000007(n)-1`
-/

namespace A049819.P7207452992800365174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (n + 1) + (A000007 n - 1)

end

end A049819.P7207452992800365174

/-! ## A049819.P5400445836702708862

`A034883(n+1)-A001221(A000015(n+1))`
-/

namespace A049819.P5400445836702708862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (n + 1) - A001221 (A000015 (n + 1)).toNat

end

end A049819.P5400445836702708862

/-! ## A049819.P15342403553291685713

`A034883(A254667(n+1))-1`
-/

namespace A049819.P15342403553291685713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (A254667 (n + 1)).toNat - 1

end

end A049819.P15342403553291685713

/-! ## A049819.P13511665743499856364

`A134824(n+2)+A071647(n+1)`
-/

namespace A049819.P13511665743499856364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A071647 (n + 1)

end

end A049819.P13511665743499856364

/-! ## A049819.P7119418159413955008

`A034883(n+1)-A008683(2*A002313(n+1))`
-/

namespace A049819.P7119418159413955008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (n + 1) - A008683 (2 * A002313 (n + 1)).toNat

end

end A049819.P7119418159413955008

/-! ## A049819.P1382904807979910127

`A200748(n)%A071647(n+1)`
-/

namespace A049819.P1382904807979910127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A071647 (n + 1))

end

end A049819.P1382904807979910127

/-! ## A049819.P6823941771142437462

`gcd(A002182(n+1), A034883(n+1))-1`
-/

namespace A049819.P6823941771142437462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A002182 (n + 1)) (A034883 (n + 1)) : ℤ) - 1

end

end A049819.P6823941771142437462

/-! ## A049819.P10287792408954809846

`A034883(n+1)-A001222(record[A014963(n+1)])`
-/

namespace A049819.P10287792408954809846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (n + 1) - A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049819.P10287792408954809846

/-! ## A049819.P10434166369439973594

`A034883(n+1)-A000035(A000040(n+1))`
-/

namespace A049819.P10434166369439973594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (n + 1) - A000035 (A000040 (n + 1)).toNat

end

end A049819.P10434166369439973594

/-! ## A049819.P2709803234293387614

`A034883(A233583(n+2))-1`
-/

namespace A049819.P2709803234293387614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034883 (A233583 (n + 2)).toNat - 1

end

end A049819.P2709803234293387614

/-! ## A049819.P701282666129876619

`gcd(A034883(n+1), A056835(n))-1`
-/

namespace A049819.P701282666129876619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A034883 (n + 1)) (A056835 n) : ℤ) - 1

end

end A049819.P701282666129876619

/-! ## A049819.P9612009327866804206

`A083800(n+1)%A071647(n+1)`
-/

namespace A049819.P9612009327866804206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A071647 (n + 1))

end

end A049819.P9612009327866804206

/-! ## A049819.P754692444105861456

`A070198(n)%A071647(n+1)`
-/

namespace A049819.P754692444105861456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A071647 (n + 1))

end

end A049819.P754692444105861456

/-!
# A049820: a(n) = n - d(n), where d(n) is the number of divisors of n (A000005).

The programs for A049820, the canonical program `A049820.P9428372222244335888` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049820 has offset 1).

The definition of A049820 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049820.P9428372222244335888

`n+1-A000005(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A049820

/-- `n+1-A000005(n+1)` -/
def P9428372222244335888.Spec : Prop :=
  ∀ n, P9428372222244335888.a n = A049820 (n + 1)

theorem P9428372222244335888.correct : P9428372222244335888.Spec := by
  intro n
  simp only [A049820, Nat.add_sub_cancel]

end A049820

/-! ## A049820.P2986483253876350081

`A006590(n+1)-A006218(n+1)`
-/

namespace A049820.P2986483253876350081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1) - A006218 (n + 1)

end

end A049820.P2986483253876350081

namespace A049820

/-- `A006590(n+1)-A006218(n+1)` -/
def P2986483253876350081.Spec : Prop :=
  ∀ n, P2986483253876350081.a n = A049820 (n + 1)

end A049820

/-! ## A049820.P16592162141590330811

`A076627(n+1)/A000005(n+1)`
-/

namespace A049820.P16592162141590330811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076627 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A049820.P16592162141590330811

namespace A049820

/-- `A076627(n+1)/A000005(n+1)` -/
def P16592162141590330811.Spec : Prop :=
  ∀ n, P16592162141590330811.a n = (A049820 (n + 1) : ℚ)

end A049820

/-! ## A049820.P7584563500618707264

`n-∑{d}[n+1, n²%#]`
-/

namespace A049820.P7584563500618707264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d : ℕ) : ℤ)

end

end A049820.P7584563500618707264

namespace A049820

/-- `n-∑{d}[n+1, n²%#]` -/
def P7584563500618707264.Spec : Prop :=
  ∀ n, P7584563500618707264.a n = A049820 (n + 1)

end A049820

/-! ## A049820.P16515149820575115537

`n+1-∏{e}[n+1, #+1]`
-/

namespace A049820.P16515149820575115537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A049820.P16515149820575115537

namespace A049820

/-- `n+1-∏{e}[n+1, #+1]` -/
def P16515149820575115537.Spec : Prop :=
  ∀ n, P16515149820575115537.a n = A049820 (n + 1)

theorem P16515149820575115537.correct : P16515149820575115537.Spec := by
  intro n
  simp only [A049820, Nat.add_sub_cancel, A049820.P16515149820575115537.f1, A049820.P16515149820575115537.a, A049820.P9428372222244335888.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049820

/-! ## A049820.P8593204265412285414

`n+1-∑{d}[n+1, gcd(n, #)]`
-/

namespace A049820.P8593204265412285414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℤ)

end

end A049820.P8593204265412285414

namespace A049820

/-- `n+1-∑{d}[n+1, gcd(n, #)]` -/
def P8593204265412285414.Spec : Prop :=
  ∀ n, P8593204265412285414.a n = A049820 (n + 1)

end A049820

/-! ## A049820.P4829678674341459732

`∑{d}[n+1, or(#, -1)]+n+1`
-/

namespace A049820.P4829678674341459732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.lor (d : ℤ) (-1) + (n + 1 : ℤ)

end

end A049820.P4829678674341459732

namespace A049820

/-- `∑{d}[n+1, or(#, -1)]+n+1` -/
def P4829678674341459732.Spec : Prop :=
  ∀ n, P4829678674341459732.a n = A049820 (n + 1)

end A049820

/-! ## A049820.P17228919395842204482

`n+1-∑{d}[n+1, ceil(1/#)]`
-/

namespace A049820.P17228919395842204482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A049820.P17228919395842204482

namespace A049820

/-- `n+1-∑{d}[n+1, ceil(1/#)]` -/
def P17228919395842204482.Spec : Prop :=
  ∀ n, P17228919395842204482.a n = A049820 (n + 1)

end A049820

/-! ## A049820.P9282154751649990720

`A062968(n+1)-1`
-/

namespace A049820.P9282154751649990720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) - 1

end

end A049820.P9282154751649990720

namespace A049820

/-- `A062968(n+1)-1` -/
def P9282154751649990720.Spec : Prop :=
  ∀ n, P9282154751649990720.a n = A049820 (n + 1)

theorem P9282154751649990720.correct : P9282154751649990720.Spec := by
  intro n
  simp only [A049820, Nat.add_sub_cancel, A049820.P9282154751649990720.a, A049820.P9428372222244335888.a, A000005, A000005.P16091521709108585461.a, A062968, A062968.P12745258028289340812.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049820

/-! ## A049820.P6648891818689448030

`A059292(n+1)-2`
-/

namespace A049820.P6648891818689448030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059292 (n + 1) - 2

end

end A049820.P6648891818689448030

namespace A049820

/-- `A059292(n+1)-2` -/
def P6648891818689448030.Spec : Prop :=
  ∀ n, P6648891818689448030.a n = A049820 (n + 1)

theorem P6648891818689448030.correct : P6648891818689448030.Spec := by
  intro n
  simp only [A049820, Nat.add_sub_cancel, A049820.P6648891818689448030.a, A049820.P9428372222244335888.a, A000005, A000005.P16091521709108585461.a, A059292, A059292.P13391037705740320393.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049820

/-! ## A049820.P2942608554370115741

`n-A032741(n+1)`
-/

namespace A049820.P2942608554370115741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A032741 (n + 1)

end

end A049820.P2942608554370115741

namespace A049820

/-- `n-A032741(n+1)` -/
def P2942608554370115741.Spec : Prop :=
  ∀ n, P2942608554370115741.a n = A049820 (n + 1)

theorem P2942608554370115741.correct : P2942608554370115741.Spec := by
  intro n
  simp only [A049820, Nat.add_sub_cancel, A049820.P2942608554370115741.a, A049820.P9428372222244335888.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049820

/-! ## A049820.P732574468865697637

`∑{d}[n+1, A109606(#)]`
-/

namespace A049820.P732574468865697637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A109606 d

end

end A049820.P732574468865697637

namespace A049820

/-- `∑{d}[n+1, A109606(#)]` -/
def P732574468865697637.Spec : Prop :=
  ∀ n, P732574468865697637.a n = A049820 (n + 1)

end A049820

/-! ## A049820.P4360091113202265351

`∑[1-A341062(n+1)]`
-/

namespace A049820.P4360091113202265351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A341062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049820.P4360091113202265351

namespace A049820

/-- `∑[1-A341062(n+1)]` -/
def P4360091113202265351.Spec : Prop :=
  ∀ n, P4360091113202265351.a n = A049820 (n + 1)

end A049820

/-! ## A049820.P7107530671646680698

`n-log2(A100577(n+1))`
-/

namespace A049820.P7107530671646680698
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - Real.logb 2 (A100577 (n + 1) : ℝ)

end

end A049820.P7107530671646680698

namespace A049820

/-- `n-log2(A100577(n+1))` -/
def P7107530671646680698.Spec : Prop :=
  ∀ n, P7107530671646680698.a n = (A049820 (n + 1) : ℝ)

end A049820

/-! ## A049820.P3172672550008030953

`1-Δ[A006218(n)]+n`
-/

namespace A049820.P3172672550008030953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A049820.P3172672550008030953

namespace A049820

/-- `1-Δ[A006218(n)]+n` -/
def P3172672550008030953.Spec : Prop :=
  ∀ n, P3172672550008030953.a n = A049820 (n + 1)

end A049820

/-! ## A049820.P11997414236783415183

`1-Δ[A054519(n)]+n`
-/

namespace A049820.P11997414236783415183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A049820.P11997414236783415183

namespace A049820

/-- `1-Δ[A054519(n)]+n` -/
def P11997414236783415183.Spec : Prop :=
  ∀ n, P11997414236783415183.a n = A049820 (n + 1)

end A049820

/-! ## A049820.P13808377488896166164

`A286002(n+1)-(n+1)`
-/

namespace A049820.P13808377488896166164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286002 (n + 1) - (n + 1 : ℤ)

end

end A049820.P13808377488896166164

namespace A049820

/-- `A286002(n+1)-(n+1)` -/
def P13808377488896166164.Spec : Prop :=
  ∀ n, P13808377488896166164.a n = A049820 (n + 1)

theorem P13808377488896166164.correct : P13808377488896166164.Spec := by
  intro n
  simp only [A049820, Nat.add_sub_cancel, A049820.P13808377488896166164.a, A049820.P9428372222244335888.a, A000005, A000005.P16091521709108585461.a, A286002, A286002.P1824755549209206382.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049820

/-! ## A049820.P17144367058373428603

`A378216(n+1)-1+n`
-/

namespace A049820.P17144367058373428603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (n + 1) - 1 + (n : ℤ)

end

end A049820.P17144367058373428603

namespace A049820

/-- `A378216(n+1)-1+n` -/
def P17144367058373428603.Spec : Prop :=
  ∀ n, P17144367058373428603.a n = A049820 (n + 1)

theorem P17144367058373428603.correct : P17144367058373428603.Spec := by
  intro n
  simp only [A049820, Nat.add_sub_cancel, A049820.P17144367058373428603.a, A049820.P9428372222244335888.a, A000005, A000005.P16091521709108585461.a, A378216, A378216.P4619166357507459087.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049820

/-! ## A049820.P7337999549385546839

`2-A334954(n+1)+n`
-/

namespace A049820.P7337999549385546839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A334954 (n + 1) + (n : ℤ)

end

end A049820.P7337999549385546839

namespace A049820

/-- `2-A334954(n+1)+n` -/
def P7337999549385546839.Spec : Prop :=
  ∀ n, P7337999549385546839.a n = A049820 (n + 1)

end A049820

/-! ## A049820.P13165047675905175365

`n-A338117(2*(n+1))`
-/

namespace A049820.P13165047675905175365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A338117 (2 * (n + 1))

end

end A049820.P13165047675905175365

namespace A049820

/-- `n-A338117(2*(n+1))` -/
def P13165047675905175365.Spec : Prop :=
  ∀ n, P13165047675905175365.a n = A049820 (n + 1)

end A049820

/-!
# A049821: a(n) = j + k, where u(n) = u(j) + u(k) is the unique sum of Ulam numbers described in A002859 (with 1 <= j < k < n).

The programs for A049821, there is no canonical definition to state claims against.
-/

/-! ## A049821.P4879842052186271709

`A049878(n+3)+A049877(n+3)`
-/

namespace A049821.P4879842052186271709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049878 (n + 3) + A049877 (n + 3)

end

end A049821.P4879842052186271709

/-! ## A049821.P1740510996615497031

`A049879(n+3)+2*A049878(n+3)`
-/

namespace A049821.P1740510996615497031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049879 (n + 3) + 2 * A049878 (n + 3)

end

end A049821.P1740510996615497031

/-! ## A049821.P17217241760132079110

`2*A049877(n+3)-A049879(n+3)`
-/

namespace A049821.P17217241760132079110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049877 (n + 3) - A049879 (n + 3)

end

end A049821.P17217241760132079110

/-! ## A049821.P5815542301956037779

`A049879(n+3)+A005843(A049878(n+3))`
-/

namespace A049821.P5815542301956037779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049879 (n + 3) + A005843 (A049878 (n + 3)).toNat

end

end A049821.P5815542301956037779

/-! ## A049821.P216465879126361475

`A005843(A049877(n+3))-A049879(n+3)`
-/

namespace A049821.P216465879126361475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A049877 (n + 3)).toNat - A049879 (n + 3)

end

end A049821.P216465879126361475

/-!
# A049822: a(n) = 1 - tau(n) + Sum_{d|n} tau(d-1).

The programs for A049822, the canonical program `A049822.P4603734740658635360` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049822 has offset 1).

The definition of A049822 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049822.P4603734740658635360

`∑{d}[n+1, A032741(#-1)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049822

/-- `∑{d}[n+1, A032741(#-1)]` -/
def P4603734740658635360.Spec : Prop :=
  ∀ n, P4603734740658635360.a n = A049822 (n + 1)

theorem P4603734740658635360.correct : P4603734740658635360.Spec := by
  intro n
  simp only [A049822, Nat.add_sub_cancel]

end A049822

/-! ## A049822.P10196314173609362186

`A086898(n+1)-A032741(n+1)`
-/

namespace A049822.P10196314173609362186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086898 (n + 1) - A032741 (n + 1)

end

end A049822.P10196314173609362186

namespace A049822

/-- `A086898(n+1)-A032741(n+1)` -/
def P10196314173609362186.Spec : Prop :=
  ∀ n, P10196314173609362186.a n = A049822 (n + 1)

theorem P10196314173609362186.correct : P10196314173609362186.Spec := by
  intro n
  simp only [A049822, Nat.add_sub_cancel, A049822.P10196314173609362186.a, A049822.P4603734740658635360.f1, A049822.P4603734740658635360.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A086898, A086898.P9450987372198348200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049822

/-! ## A049822.P6496687944206087276

`A086898(n+1)+1-A000005(n+1)`
-/

namespace A049822.P6496687944206087276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086898 (n + 1) + (1 - A000005 (n + 1))

end

end A049822.P6496687944206087276

namespace A049822

/-- `A086898(n+1)+1-A000005(n+1)` -/
def P6496687944206087276.Spec : Prop :=
  ∀ n, P6496687944206087276.a n = A049822 (n + 1)

theorem P6496687944206087276.correct : P6496687944206087276.Spec := by
  intro n
  simp only [A049822, Nat.add_sub_cancel, A049822.P6496687944206087276.a, A049822.P4603734740658635360.f1, A049822.P4603734740658635360.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A086898, A086898.P9450987372198348200.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049822

/-! ## A049822.P9203771631997070768

`A086898(n+1)-A023443(A000005(n+1))`
-/

namespace A049822.P9203771631997070768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086898 (n + 1) - A023443 (A000005 (n + 1)).toNat

end

end A049822.P9203771631997070768

namespace A049822

/-- `A086898(n+1)-A023443(A000005(n+1))` -/
def P9203771631997070768.Spec : Prop :=
  ∀ n, P9203771631997070768.a n = A049822 (n + 1)

end A049822

/-! ## A049822.P5646545832469664255

`∑[A008615(n)]-A343396(n+1)`
-/

namespace A049822.P5646545832469664255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A343396 (n + 1)

end

end A049822.P5646545832469664255

namespace A049822

/-- `∑[A008615(n)]-A343396(n+1)` -/
def P5646545832469664255.Spec : Prop :=
  ∀ n, P5646545832469664255.a n = A049822 (n + 1)

theorem P5646545832469664255.correct : P5646545832469664255.Spec := by
  intro n
  simp only [A049822, Nat.add_sub_cancel, A049822.P5646545832469664255.f1, A049822.P5646545832469664255.a, A049822.P4603734740658635360.f1, A049822.P4603734740658635360.a, A008615, A008615.P10410393553474300613.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A343396, A343396.P11070715344476014144.f1, A343396.P11070715344476014144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049822

/-! ## A049822.P11528371277853127226

`A069905(n+1)-A343396(n+1)`
-/

namespace A049822.P11528371277853127226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 (n + 1) - A343396 (n + 1)

end

end A049822.P11528371277853127226

namespace A049822

/-- `A069905(n+1)-A343396(n+1)` -/
def P11528371277853127226.Spec : Prop :=
  ∀ n, P11528371277853127226.a n = A049822 (n + 1)

end A049822

/-! ## A049822.P3679483541856975800

`A301764(n+2)-A000005(n+1)`
-/

namespace A049822.P3679483541856975800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301764 (n + 2) - A000005 (n + 1)

end

end A049822.P3679483541856975800

namespace A049822

/-- `A301764(n+2)-A000005(n+1)` -/
def P3679483541856975800.Spec : Prop :=
  ∀ n, P3679483541856975800.a n = A049822 (n + 1)

end A049822

/-! ## A049822.P9243946376490100649

`A122934(A152950(n+1))%A063445(n+1)`
-/

namespace A049822.P9243946376490100649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122934 (A152950 (n + 1)).toNat) (A063445 (n + 1))

end

end A049822.P9243946376490100649

namespace A049822

/-- `A122934(A152950(n+1))%A063445(n+1)` -/
def P9243946376490100649.Spec : Prop :=
  ∀ n, P9243946376490100649.a n = A049822 (n + 1)

end A049822

/-! ## A049822.P1540944373255426162

`A343247(n+1)+A343248(n+1)-A343396(n+1)`
-/

namespace A049822.P1540944373255426162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343247 (n + 1) + (A343248 (n + 1) - A343396 (n + 1))

end

end A049822.P1540944373255426162

namespace A049822

/-- `A343247(n+1)+A343248(n+1)-A343396(n+1)` -/
def P1540944373255426162.Spec : Prop :=
  ∀ n, P1540944373255426162.a n = A049822 (n + 1)

end A049822

/-!
# A049823: a(n)=number of 2's in n-th row of array T given by A049816.

The programs for A049823, there is no canonical definition to state claims against.
-/

/-! ## A049823.P16983490985003917414

`ceil(n/2)+1-∏{e}[n+1, #+1]-A307597(A207201(n+1)+5)`
-/

namespace A049823.P16983490985003917414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + 1 - ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A307597 (A207201 (n + 1) + 5).toNat

end

end A049823.P16983490985003917414

/-! ## A049823.P15219489274801592453

`A016389(A022166(n))+A003165(n+1)`
-/

namespace A049823.P15219489274801592453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A022166 n).toNat + A003165 (n + 1)

end

end A049823.P15219489274801592453

/-! ## A049823.P13656201561512149675

`A016389(A027336(n))+A003165(n+1)`
-/

namespace A049823.P13656201561512149675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A027336 n).toNat + A003165 (n + 1)

end

end A049823.P13656201561512149675

/-! ## A049823.P6956162749488028198

`A003165(n+1)-A014707(A022171(n))`
-/

namespace A049823.P6956162749488028198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003165 (n + 1) - A014707 (A022171 n).toNat

end

end A049823.P6956162749488028198

/-! ## A049823.P17257613135551928677

`A003165(n+1)-A007814(A157156(n))`
-/

namespace A049823.P17257613135551928677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003165 (n + 1) - A007814 (A157156 n).toNat

end

end A049823.P17257613135551928677

/-!
# A049824: a(n) = number of 3's in n-th row of array T given by A049816.

The programs for A049824, there is no canonical definition to state claims against.
-/

/-! ## A049824.P12810303070626745127

`A282355(A039859(n+2))`
-/

namespace A049824.P12810303070626745127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282355 (A039859 (n + 2)).toNat

end

end A049824.P12810303070626745127

/-! ## A049824.P9212929125346538824

`and(A000120(A210713(n)), A052975(n))`
-/

namespace A049824.P9212929125346538824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 (A210713 n).toNat) (A052975 n)

end

end A049824.P9212929125346538824

/-! ## A049824.P14803360982220362494

`A273513(floor(A079472(n+1)/A357632(2*n+3)))`
-/

namespace A049824.P14803360982220362494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273513 ⌊(A079472 (n + 1) : ℚ) / (A357632 (2 * n + 3) : ℚ)⌋.toNat

end

end A049824.P14803360982220362494

/-!
# A049825: a(n)=number of 4's in n-th row of array T given by A049816.

The programs for A049825, there is no canonical definition to state claims against.
-/

/-! ## A049825.P7500192730267037418

`A324179(xor(5, A096572(n+1)))`
-/

namespace A049825.P7500192730267037418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324179 (Int.xor 5 (A096572 (n + 1))).toNat

end

end A049825.P7500192730267037418

/-! ## A049825.P7754862228654604077

`A004247(A341793(A008864(n+1)-A086161(n)))`
-/

namespace A049825.P7754862228654604077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (A341793 ((A008864 (n + 1) - A086161 n).toNat + 10)).toNat

end

end A049825.P7754862228654604077

/-!
# A049826: a(n) = T(n,n) + T(n+1,n) + ... + T(2n-1,n) = sum over a period of n-th column of array T given by A049816.

The programs for A049826, there is no canonical definition to state claims against.
-/

/-! ## A049826.P3244971323397865211

`A049817(n+1)+n`
-/

namespace A049826.P3244971323397865211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049817 (n + 1) + (n : ℤ)

end

end A049826.P3244971323397865211

/-! ## A049826.P3154846381771295488

`Δ[A049818(A028310(n))]+n`
-/

namespace A049826.P3154846381771295488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049818 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A049826.P3154846381771295488

/-! ## A049826.P10238759448278983606

`(n+1)*A051011(n+1)/A051012(n+1)`
-/

namespace A049826.P10238759448278983606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A051011 (n + 1) : ℚ) / (A051012 (n + 1) : ℚ)

end

end A049826.P10238759448278983606

/-! ## A049826.P8208072317401919116

`A049818(n+1)+n-A049818(A028310(n))`
-/

namespace A049826.P8208072317401919116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049818 (n + 1) + ((n : ℤ) - A049818 (A028310 n).toNat)

end

end A049826.P8208072317401919116

/-! ## A049826.P5792136238063243357

`A049818(n+1)-A049818(A000007(n)+n)+n`
-/

namespace A049826.P5792136238063243357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049818 (n + 1) - A049818 (A000007 n + (n : ℤ)).toNat + (n : ℤ)

end

end A049826.P5792136238063243357

/-! ## A049826.P17489624532286060304

`A049827(n+2)-(n+1)`
-/

namespace A049826.P17489624532286060304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049827 (n + 2) - (n + 1 : ℤ)

end

end A049826.P17489624532286060304

/-! ## A049826.P9438069168149294670

`Δ[A049818(A000007(n)+n)]+n`
-/

namespace A049826.P9438069168149294670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049818 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A049826.P9438069168149294670

/-! ## A049826.P9818473670933000258

`A023443(A049827(n+2)-n)`
-/

namespace A049826.P9818473670933000258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A049827 (n + 2) - (n : ℤ)).toNat

end

end A049826.P9818473670933000258

/-! ## A049826.P17935834977173400665

`A049818(n+1)-A049818(A233583(n+1))+n`
-/

namespace A049826.P17935834977173400665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049818 (n + 1) - A049818 (A233583 (n + 1)).toNat + (n : ℤ)

end

end A049826.P17935834977173400665

/-! ## A049826.P3563198860837504482

`Δ[A049818(A233583(n+1))]+n`
-/

namespace A049826.P3563198860837504482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049818 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A049826.P3563198860837504482

/-!
# A049827: a(n) = T(2n-1,n)+T(2n,n+1)+...+T(3n-3,2n-2) = sum over a period of n-th diagonal of array T given by A049816.

The programs for A049827, there is no canonical definition to state claims against.
-/

/-! ## A049827.P13079409772647157040

`A049826(A028310(n))+n`
-/

namespace A049827.P13079409772647157040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049826 (A028310 n).toNat + (n : ℤ)

end

end A049827.P13079409772647157040

/-! ## A049827.P6120396335681683409

`A049826(A000007(n)+n)+n`
-/

namespace A049827.P6120396335681683409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049826 (A000007 n + (n : ℤ)).toNat + (n : ℤ)

end

end A049827.P6120396335681683409

/-! ## A049827.P9320727077422489533

`A049817(A028310(n))+A004273(n)`
-/

namespace A049827.P9320727077422489533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049817 (A028310 n).toNat + A004273 n

end

end A049827.P9320727077422489533

/-! ## A049827.P14053665394139082426

`A005843(n)-(n-A049826(A028310(n)))`
-/

namespace A049827.P14053665394139082426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A049826 (A028310 n).toNat)

end

end A049827.P14053665394139082426

/-! ## A049827.P9994691525155236635

`A049817(A028310(n))+A008586(n)%(2*n+1)`
-/

namespace A049827.P9994691525155236635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049817 (A028310 n).toNat + Int.tmod (A008586 n) (2 * n + 1 : ℤ)

end

end A049827.P9994691525155236635

/-! ## A049827.P6069139995506591077

`A049817(A028310(n))+record[A026741(n)]`
-/

namespace A049827.P6069139995506591077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049817 (A028310 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049827.P6069139995506591077

/-! ## A049827.P6512066228979645311

`A049817(A028310(n))+record[2*n-A003817(n)]`
-/

namespace A049827.P6512066228979645311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A003817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049817 (A028310 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049827.P6512066228979645311

/-! ## A049827.P15308210834943757997

`A065033(4*n)+A049817(A028310(n))-1`
-/

namespace A049827.P15308210834943757997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (4 * n) + (A049817 (A028310 n).toNat - 1)

end

end A049827.P15308210834943757997

/-!
# A049828: Triangular array T given by rows: T(n,k)=sum of remainders when Euclidean algorithm acts on n,k; for k=1,2,...,n; n >= 1.

The programs for A049828, there is no canonical definition to state claims against.
-/

/-! ## A049828.P12722066399958406515

`A049840(n+1)-A199408(n+1)`
-/

namespace A049828.P12722066399958406515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049840 (n + 1) - A199408 (n + 1)

end

end A049828.P12722066399958406515

/-! ## A049828.P12115032672534922845

`A049840(A000027(n+1))%A199408(n+1)`
-/

namespace A049828.P12115032672534922845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049840 (A000027 (n + 1)).toNat) (A199408 (n + 1))

end

end A049828.P12115032672534922845

/-! ## A049828.P8564398242351436503

`(A049840(n+1)+A000007(n))%A199408(n+1)`
-/

namespace A049828.P8564398242351436503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049840 (n + 1) + A000007 n) (A199408 (n + 1))

end

end A049828.P8564398242351436503

/-! ## A049828.P6502043381986652853

`(A049840(n+1)%A199408(n+1))%A028310(n)`
-/

namespace A049828.P6502043381986652853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A049840 (n + 1)) (A199408 (n + 1))) (A028310 n)

end

end A049828.P6502043381986652853

/-! ## A049828.P2169962326624417363

`A049840(n+1)-(A002262(n+1-A050873(n+1))+A002024(n+1))`
-/

namespace A049828.P2169962326624417363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049840 (n + 1) - (A002262 ((n + 1 : ℤ) - A050873 (n + 1)).toNat + A002024 (n + 1))

end

end A049828.P2169962326624417363

/-! ## A049828.P3005739353007713993

`A049840(n+1)-A051162(2-A050873(n+1)+n)`
-/

namespace A049828.P3005739353007713993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049840 (n + 1) - A051162 (2 - A050873 (n + 1) + (n : ℤ)).toNat

end

end A049828.P3005739353007713993

/-! ## A049828.P18384767489340786095

`A049840(A027656(2*n))%A199408(n+1)`
-/

namespace A049828.P18384767489340786095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049840 (A027656 (2 * n)).toNat) (A199408 (n + 1))

end

end A049828.P18384767489340786095

/-!
# A049829: a(n) = Sum_{k=1..n} T(n,k), array T as in A049828.

The programs for A049829, there is no canonical definition to state claims against.
-/

/-! ## A049829.P5663805130076579378

`A049832(n+1)-∑[n]`
-/

namespace A049829.P5663805130076579378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049832 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A049829.P5663805130076579378

/-! ## A049829.P11091729074379121370

`Δ[A049830(A028310(n))]`
-/

namespace A049829.P11091729074379121370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049830 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049829.P11091729074379121370

/-! ## A049829.P2898148005176532669

`abs(A049832(n+1)-A000217(n))`
-/

namespace A049829.P2898148005176532669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049832 (n + 1) - A000217 n|

end

end A049829.P2898148005176532669

/-! ## A049829.P2761850805276866985

`A049841(n+1)-A382069(n+1)`
-/

namespace A049829.P2761850805276866985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049841 (n + 1) - A382069 (n + 1)

end

end A049829.P2761850805276866985

/-! ## A049829.P8525705337743785267

`A049832(n+1)%A179865(n+1)`
-/

namespace A049829.P8525705337743785267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049832 (n + 1)) (A179865 (n + 1))

end

end A049829.P8525705337743785267

/-! ## A049829.P13890181591231268084

`A049830(n+1)-A049830(C(2, n+2)+n)`
-/

namespace A049829.P13890181591231268084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049830 (n + 1) - A049830 (Nat.choose 2 (n + 2) + n)

end

end A049829.P13890181591231268084

/-! ## A049829.P11878543712524879760

`(A049832(n+1)+A005843(n+1))%∑[n+2]`
-/

namespace A049829.P11878543712524879760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049832 (n + 1) + A005843 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A049829.P11878543712524879760

/-! ## A049829.P13546634760532105692

`A049830(n+1)-A049830(A028310(n))`
-/

namespace A049829.P13546634760532105692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049830 (n + 1) - A049830 (A028310 n).toNat

end

end A049829.P13546634760532105692

/-! ## A049829.P2339802507849889075

`A049832(n+1)%A000217(A028310(n))`
-/

namespace A049829.P2339802507849889075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049832 (n + 1)) (A000217 (A028310 n).toNat)

end

end A049829.P2339802507849889075

/-! ## A049829.P14738987409097319562

`A049830(n+1)-A049830(A233583(n+1))`
-/

namespace A049829.P14738987409097319562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049830 (n + 1) - A049830 (A233583 (n + 1)).toNat

end

end A049829.P14738987409097319562

/-! ## A049829.P6022380984753663705

`Δ[A049830(A233583(n+1))]`
-/

namespace A049829.P6022380984753663705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049830 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049829.P6022380984753663705

/-!
# A049830: a(n) = Sum_{k=1..n, m=1..k} T(m,k); array T as in A049828.

The programs for A049830, there is no canonical definition to state claims against.
-/

/-! ## A049830.P10777314854163890441

`∑[A049829(n+1)]`
-/

namespace A049830.P10777314854163890441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049830.P10777314854163890441

/-! ## A049830.P10984993180959506312

`∑[A049832(n+1)-∑[n]]`
-/

namespace A049830.P10984993180959506312
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049832 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049830.P10984993180959506312

/-! ## A049830.P1105410871162899438

`∑[A049832(n+1)%A179865(n+1)]`
-/

namespace A049830.P1105410871162899438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049832 (n + 1)) (A179865 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049830.P1105410871162899438

/-! ## A049830.P10063597001234582266

`∑[(A049832(n+1)+A005843(n+1))%∑[n+2]]`
-/

namespace A049830.P10063597001234582266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049832 (n + 1) + A005843 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049830.P10063597001234582266

/-! ## A049830.P6368602982461792538

`∑[A049832(n+1)%A000217(A028310(n))]`
-/

namespace A049830.P6368602982461792538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049832 (n + 1)) (A000217 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049830.P6368602982461792538

/-!
# A049831: a(n) = Max_{k=1..n} T(n,k), array T as in A049828.

The programs for A049831, there is no canonical definition to state claims against.
-/

/-! ## A049831.P2524011432442420331

`A049828(A261133(n+1)+∑[n])`
-/

namespace A049831.P2524011432442420331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049828 (A261133 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A049831.P2524011432442420331

/-! ## A049831.P4171693932871072988

`A014081(A000079(n)-A226080(n+1))`
-/

namespace A049831.P4171693932871072988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A000079 n - A226080 (n + 1)).toNat

end

end A049831.P4171693932871072988

/-! ## A049831.P4614514592677315252

`A297167(lcm(A035612(n+1), A100773(n+1)))`
-/

namespace A049831.P4614514592677315252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (Int.lcm (A035612 (n + 1)) (A100773 (n + 1)))

end

end A049831.P4614514592677315252

/-! ## A049831.P8211923439879314276

`n-A352825(lt[A130091(n+4), A039951(n+1)]+1)`
-/

namespace A049831.P8211923439879314276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130091 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A352825 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A049831.P8211923439879314276

/-! ## A049831.P10424674476570561526

`n-A352825(lt[A354928(n+5), A039951(n+1)]+1)`
-/

namespace A049831.P10424674476570561526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354928 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A352825 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A049831.P10424674476570561526

/-!
# A049832: a(n) = T(n,n) + T(n + 1,n) + ... + T(2n-1,n) = sum over a period of n-th column of array T given by A049828.

The programs for A049832, there is no canonical definition to state claims against.
-/

/-! ## A049832.P1563958572260198229

`A049829(n+1)+∑[n]`
-/

namespace A049832.P1563958572260198229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049829 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A049832.P1563958572260198229

/-! ## A049832.P2900818495807777497

`A049829(n+1)+A000096(n)-n`
-/

namespace A049832.P2900818495807777497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049829 (n + 1) + A000096 n - (n : ℤ)

end

end A049832.P2900818495807777497

/-! ## A049832.P6607255477974340783

`A145018(n+1)+A049829(n+1)-4`
-/

namespace A049832.P6607255477974340783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145018 (n + 1) + (A049829 (n + 1) - 4)

end

end A049832.P6607255477974340783

/-! ## A049832.P17762712146435650524

`A049829(n+1)+A046691(n)-(2*n-1)`
-/

namespace A049832.P17762712146435650524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049829 (n + 1) + A046691 n - ((2 * n : ℤ) - 1)

end

end A049832.P17762712146435650524

/-! ## A049832.P7306505008751650883

`A049833(n+2)-(n+1)²`
-/

namespace A049832.P7306505008751650883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049833 (n + 2) - ((n + 1) ^ 2 : ℤ)

end

end A049832.P7306505008751650883

/-! ## A049832.P6580413760978581264

`A049830(n+1)+A000217(n)-A049830(A233583(n+1))`
-/

namespace A049832.P6580413760978581264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049830 (n + 1) + (A000217 n - A049830 (A233583 (n + 1)).toNat)

end

end A049832.P6580413760978581264

/-! ## A049832.P15237431515488082455

`Δ[A049830(A233583(n+1))]+∑[n]`
-/

namespace A049832.P15237431515488082455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049830 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A049832.P15237431515488082455

/-! ## A049832.P13039589520159753323

`A000217(n)+Δ[A049830(A233583(n+1))]`
-/

namespace A049832.P13039589520159753323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049830 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (f1 (n + 1) - f1 n)

end

end A049832.P13039589520159753323

/-! ## A049832.P13281057484914015778

`A061579(A000096(n))+A049829(n+1)`
-/

namespace A049832.P13281057484914015778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A000096 n).toNat + A049829 (n + 1)

end

end A049832.P13281057484914015778

/-!
# A049833: a(n) = T(2n-1,n) + T(2n,n+1) + ... + T(3n-3,2n-2) = sum over a period of n-th diagonal of array T given by A049828.

The programs for A049833, there is no canonical definition to state claims against.
-/

/-! ## A049833.P11877308198865267313

`A049832(A028310(n))+n²`
-/

namespace A049833.P11877308198865267313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049832 (A028310 n).toNat + (n ^ 2 : ℤ)

end

end A049833.P11877308198865267313

/-! ## A049833.P10768244360550325000

`A049832(A000007(n)+n)+n²`
-/

namespace A049833.P10768244360550325000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049832 (A000007 n + (n : ℤ)).toNat + (n ^ 2 : ℤ)

end

end A049833.P10768244360550325000

/-! ## A049833.P15173548391039797104

`A049829(A028310(n))+A000326(n)`
-/

namespace A049833.P15173548391039797104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049829 (A028310 n).toNat + A000326 n

end

end A049833.P15173548391039797104

/-! ## A049833.P647899099361177002

`A049832(A065033(2*n))+n²`
-/

namespace A049833.P647899099361177002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049832 (A065033 (2 * n)).toNat + (n ^ 2 : ℤ)

end

end A049833.P647899099361177002

/-! ## A049833.P5031522429643560184

`A049829(A233583(n+1))+A000326(n)`
-/

namespace A049833.P5031522429643560184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049829 (A233583 (n + 1)).toNat + A000326 n

end

end A049833.P5031522429643560184

/-!
# A049834: Triangular array T given by rows: T(n,k)=sum of quotients when Euclidean algorithm acts on n and k; for k=1,2,...,n; n=1,2,3,...; also number of subtraction steps when computing gcd(n,k) using subtractions rather than divisions.

The programs for A049834, there is no canonical definition to state claims against.
-/

/-! ## A049834.P9920809761537556623

`A110570(comp[∑[n-1]]+2)`
-/

namespace A049834.P9920809761537556623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110570 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A049834.P9920809761537556623

/-! ## A049834.P12613891432958551868

`A267177(A063656(n)+1)`
-/

namespace A049834.P12613891432958551868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A063656 n + 1).toNat

end

end A049834.P12613891432958551868

/-! ## A049834.P3715743786658142829

`A267177(A004201(n+2))`
-/

namespace A049834.P3715743786658142829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A004201 (n + 2)).toNat

end

end A049834.P3715743786658142829

/-! ## A049834.P5265675847481045304

`A267177(A061885(n+1)+1)`
-/

namespace A049834.P5265675847481045304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 (A061885 (n + 1) + 1).toNat

end

end A049834.P5265675847481045304

/-! ## A049834.P1219533413359116141

`A072030(A245300(n)+1)`
-/

namespace A049834.P1219533413359116141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072030 (A245300 n + 1).toNat

end

end A049834.P1219533413359116141

/-! ## A049834.P232476502495942788

`A070941(A355090(n))`
-/

namespace A049834.P232476502495942788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070941 (A355090 n).toNat

end

end A049834.P232476502495942788

/-!
# A049835: a(n) = Sum_{k=1..n} T(n,k), array T as in A049834.

The programs for A049835, there is no canonical definition to state claims against.
-/

/-! ## A049835.P882831513334191234

`∑{d}[n+1, A360264(#)]`
-/

namespace A049835.P882831513334191234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A360264 d

end

end A049835.P882831513334191234

/-! ## A049835.P14947259519877303022

`A005408(n)+2*A274108(n+1)`
-/

namespace A049835.P14947259519877303022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + 2 * A274108 (n + 1)

end

end A049835.P14947259519877303022

/-! ## A049835.P7595093325786080120

`A110571(n+1)-1`
-/

namespace A049835.P7595093325786080120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110571 (n + 1) - 1

end

end A049835.P7595093325786080120

/-! ## A049835.P11541489842726226844

`Δ[∑[A110571(n)]-n]`
-/

namespace A049835.P11541489842726226844
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110571 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049835.P11541489842726226844

/-! ## A049835.P12669063866589714860

`A005843(A274108(n+1))+A005843(n)+1`
-/

namespace A049835.P12669063866589714860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A274108 (n + 1)).toNat + (A005843 n + 1)

end

end A049835.P12669063866589714860

/-! ## A049835.P13856011808821201472

`A004273(A110571(n+1)/2)`
-/

namespace A049835.P13856011808821201472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A110571 (n + 1) : ℚ) / 2)).toNat

end

end A049835.P13856011808821201472

/-! ## A049835.P7281328775389004143

`A005408(A274108(n+1)+n)`
-/

namespace A049835.P7281328775389004143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A274108 (n + 1) + (n : ℤ)).toNat

end

end A049835.P7281328775389004143

/-! ## A049835.P10661014216163008905

`A005843(A274108(n+1)+n)+1`
-/

namespace A049835.P10661014216163008905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A274108 (n + 1) + (n : ℤ)).toNat + 1

end

end A049835.P10661014216163008905

/-! ## A049835.P16698401124811990771

`A014681(A110571(n+1))`
-/

namespace A049835.P16698401124811990771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A110571 (n + 1)).toNat

end

end A049835.P16698401124811990771

/-! ## A049835.P9464362571017431941

`A065423(2*A110571(n+1))`
-/

namespace A049835.P9464362571017431941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A110571 (n + 1)).toNat

end

end A049835.P9464362571017431941

/-! ## A049835.P15478449830382199550

`A065423(A110571(n+1)+A110571(n+1))`
-/

namespace A049835.P15478449830382199550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (A110571 (n + 1) + A110571 (n + 1)).toNat

end

end A049835.P15478449830382199550

/-!
# A049836: a(n) = Sum_{m=1..n, k=1..m} T(m,k), array T as in A049834.

The programs for A049836, there is no canonical definition to state claims against.
-/

/-! ## A049836.P7417306417029122956

`∑[A049835(n+1)]`
-/

namespace A049836.P7417306417029122956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049836.P7417306417029122956

/-! ## A049836.P14362157229331139214

`∑[A110571(n+1)-1]`
-/

namespace A049836.P14362157229331139214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110571 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049836.P14362157229331139214

/-! ## A049836.P8923235658230750256

`A001478(n+1)+∑[A110571(n+1)]`
-/

namespace A049836.P8923235658230750256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049836.P8923235658230750256

/-! ## A049836.P7625764075094388963

`∑[A005843(A274108(n+1))+2*n+1]`
-/

namespace A049836.P7625764075094388963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A274108 (n + 1)).toNat + (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049836.P7625764075094388963

/-! ## A049836.P13808277486537387615

`∑[A004273(A110571(n+1)/2)]`
-/

namespace A049836.P13808277486537387615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A110571 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049836.P13808277486537387615

/-! ## A049836.P11713354436215061235

`∑[A014681(A110571(n+1))]`
-/

namespace A049836.P11713354436215061235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A110571 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049836.P11713354436215061235

/-! ## A049836.P6458007818851179044

`A000027(a(n-1))+A110571(n+1)-1` with `a(0)=1`
-/

namespace A049836.P6458007818851179044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (a (n - 1)).toNat + (A110571 (n + 1) - 1)

end

end A049836.P6458007818851179044

/-!
# A049837: Triangular array T read by rows: T(n,k)=number of distinct numbers that appear when Euclidean algorithm acts on n,k, for k=1,2,...,n; n=1,2,3,...

The programs for A049837, there is no canonical definition to state claims against.
-/

/-! ## A049837.P15058035834305324679

`A268057(n+1)+A055642(A246647(3*n+5))`
-/

namespace A049837.P15058035834305324679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268057 (n + 1) + A055642 (A246647 (3 * n + 5)).toNat

end

end A049837.P15058035834305324679

/-! ## A049837.P14814701885712165069

`A001221(A173890(n)+8*n)+2`
-/

namespace A049837.P14814701885712165069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A173890 n + (8 * n : ℤ)).toNat + 2

end

end A049837.P14814701885712165069

/-! ## A049837.P534403025278900070

`A001221(A121032(n+1)*A330381(n))`
-/

namespace A049837.P534403025278900070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A121032 (n + 1) * A330381 n).toNat

end

end A049837.P534403025278900070

/-! ## A049837.P6249924993751109637

`A107435(n+1)+A020639(A156616(n))`
-/

namespace A049837.P6249924993751109637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (n + 1) + A020639 (A156616 n).toNat

end

end A049837.P6249924993751109637

/-!
# A049838: a(n) = Sum_{k=1..n} T(n,k), array T as in A049837.

The programs for A049838, there is no canonical definition to state claims against.
-/

/-! ## A049838.P16137498010075377804

`∑[A269982(∑[A269984(2*n+11)])]`
-/

namespace A049838.P16137498010075377804
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269984 (2 * n + 11)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269982 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049838.P16137498010075377804

/-! ## A049838.P15013991772316103503

`A311512(n)+A000164(A235026(n+1))`
-/

namespace A049838.P15013991772316103503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311512 n + A000164 (A235026 (n + 1)).toNat

end

end A049838.P15013991772316103503

/-! ## A049838.P17554879851163248716

`A072608(A000041(3*(n+1)))+A060863(3*n+1)`
-/

namespace A049838.P17554879851163248716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072608 (A000041 (3 * (n + 1))).toNat + A060863 (3 * n + 1)

end

end A049838.P17554879851163248716

/-! ## A049838.P14057831431514686597

`A314938(n)+A008683(A036730(n))`
-/

namespace A049838.P14057831431514686597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314938 n + A008683 (A036730 n).toNat

end

end A049838.P14057831431514686597

/-! ## A049838.P13530751461681138478

`A133430(2*(n+1))+A118088(A133423(n+1))`
-/

namespace A049838.P13530751461681138478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133430 (2 * (n + 1)) + A118088 (A133423 (n + 1)).toNat

end

end A049838.P13530751461681138478

/-!
# A049839: a(n) = Max_{k=1..n} T(n,k), array T as in A049837.

The programs for A049839, there is no canonical definition to state claims against.
-/

/-! ## A049839.P12540419355688380341

`round(log(A102450(2*n+3)²))`
-/

namespace A049839.P12540419355688380341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A102450 (2 * n + 3) ^ 2 : ℝ))

end

end A049839.P12540419355688380341

/-! ## A049839.P12185481241029288855

`A316829(A252493(2*n+1))+A072649(n+1)`
-/

namespace A049839.P12185481241029288855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316829 (A252493 (2 * n + 1)).toNat + A072649 (n + 1)

end

end A049839.P12185481241029288855

/-! ## A049839.P3755472616927437294

`A073202(A073202(3*n))+A072649(n+1)`
-/

namespace A049839.P3755472616927437294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073202 (A073202 (3 * n)).toNat + A072649 (n + 1)

end

end A049839.P3755472616927437294

/-! ## A049839.P12082197964226943737

`A128998(A062837(n+2))`
-/

namespace A049839.P12082197964226943737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128998 (A062837 (n + 2)).toNat

end

end A049839.P12082197964226943737

/-! ## A049839.P5088834730306773834

`A113473(A351596(2*(n+1))+A141809(n+1))`
-/

namespace A049839.P5088834730306773834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113473 (A351596 (2 * (n + 1)) + A141809 (n + 1)).toNat

end

end A049839.P5088834730306773834

/-!
# A049840: Triangular array T read by rows: T(n,k) = sum of numbers c in the form c = bq + r when Euclidean algorithm acts on n, k, for 1 <= k <= n, n >= 1.

The programs for A049840, there is no canonical definition to state claims against.
-/

/-! ## A049840.P15816875700973397726

`A199408(n+1)+A049828(n+1)`
-/

namespace A049840.P15816875700973397726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199408 (n + 1) + A049828 (n + 1)

end

end A049840.P15816875700973397726

/-! ## A049840.P206775878985069236

`A049828(n+1)+A108872(n+1)-A050873(n+1)`
-/

namespace A049840.P206775878985069236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049828 (n + 1) + (A108872 (n + 1) - A050873 (n + 1))

end

end A049840.P206775878985069236

/-! ## A049840.P2584256088506277175

`A049828(n+1)+A050873(n+1)*A059026(n+1)`
-/

namespace A049840.P2584256088506277175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049828 (n + 1) + A050873 (n + 1) * A059026 (n + 1)

end

end A049840.P2584256088506277175

/-! ## A049840.P13156863028217947291

`A094727(2-A050873(n+1)+n)+A049828(n+1)`
-/

namespace A049840.P13156863028217947291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (2 - A050873 (n + 1) + (n : ℤ)).toNat + A049828 (n + 1)

end

end A049840.P13156863028217947291

/-! ## A049840.P13080103342778073704

`A051162(2-A050873(n+1)+n)+A049828(n+1)`
-/

namespace A049840.P13080103342778073704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (2 - A050873 (n + 1) + (n : ℤ)).toNat + A049828 (n + 1)

end

end A049840.P13080103342778073704

/-! ## A049840.P8897102923770660373

`A074712(A245300(n)+1)+A049828(n+1)`
-/

namespace A049840.P8897102923770660373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074712 (A245300 n + 1).toNat + A049828 (n + 1)

end

end A049840.P8897102923770660373

/-! ## A049840.P15553454706854569217

`A094727(1-A093057(n+1)+n)+A049828(n+1)`
-/

namespace A049840.P15553454706854569217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (1 - A093057 (n + 1) + (n : ℤ)).toNat + A049828 (n + 1)

end

end A049840.P15553454706854569217

/-!
# A049841: a(n) = Sum_{k=1..n} T(n,k), array T as in A049840.

The programs for A049841, there is no canonical definition to state claims against.
-/

/-! ## A049841.P8145905847136742569

`A382069(n+1)+A049829(n+1)`
-/

namespace A049841.P8145905847136742569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382069 (n + 1) + A049829 (n + 1)

end

end A049841.P8145905847136742569

/-! ## A049841.P5669048457995087482

`A382069(n+1)+A049832(n+1)-∑[n]`
-/

namespace A049841.P5669048457995087482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382069 (n + 1) + (A049832 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A049841.P5669048457995087482

/-! ## A049841.P13710855256260478566

`A382069(n+1)+Δ[A049830(A028310(n))]`
-/

namespace A049841.P13710855256260478566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049830 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382069 (n + 1) + (f1 (n + 1) - f1 n)

end

end A049841.P13710855256260478566

/-! ## A049841.P3432906161432095723

`A382069(n+1)+A049832(n+1)%A179865(n+1)`
-/

namespace A049841.P3432906161432095723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382069 (n + 1) + Int.tmod (A049832 (n + 1)) (A179865 (n + 1))

end

end A049841.P3432906161432095723

/-! ## A049841.P5100113478459149937

`A382069(n+1)+A049830(n+1)-A049830(C(2, n+2)+n)`
-/

namespace A049841.P5100113478459149937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382069 (n + 1) + (A049830 (n + 1) - A049830 (Nat.choose 2 (n + 2) + n))

end

end A049841.P5100113478459149937

/-! ## A049841.P6701962992060343716

`A382069(n+1)+(A049832(n+1)+A005843(n+1))%∑[n+2]`
-/

namespace A049841.P6701962992060343716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382069 (n + 1) + Int.tmod (A049832 (n + 1) + A005843 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A049841.P6701962992060343716

/-! ## A049841.P4200713165806440936

`A049833(n+2)-A006579(n+1)`
-/

namespace A049841.P4200713165806440936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049833 (n + 2) - A006579 (n + 1)

end

end A049841.P4200713165806440936

/-! ## A049841.P4397274331666895613

`A382069(n+1)+Δ[A049830(A233583(n+1))]`
-/

namespace A049841.P4397274331666895613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049830 (A233583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382069 (n + 1) + (f1 (n + 1) - f1 n)

end

end A049841.P4397274331666895613

/-!
# A049843: Triangular array T read by rows: T(n,k)=number of nonzero remainders when Euclidean algorithm acts on primes prime(n) and prime(k), k=1,2,...,n-1; n=2,3,4,...

The programs for A049843, there is no canonical definition to state claims against.
-/

/-! ## A049843.P14188646007544483311

`gcd(A286335(n), A338101(A005920(n)))`
-/

namespace A049843.P14188646007544483311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A286335 n) (A338101 (A005920 n).toNat)

end

end A049843.P14188646007544483311

/-! ## A049843.P12515198685827037884

`A335037(A275367(A328463(n+1)²))`
-/

namespace A049843.P12515198685827037884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335037 (A275367 (A328463 (n + 1) ^ 2).toNat).toNat

end

end A049843.P12515198685827037884

/-! ## A049843.P9805571777609577559

`A299090(A325860(n)+A018772(n+2))`
-/

namespace A049843.P9805571777609577559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (A325860 n + A018772 (n + 2)).toNat

end

end A049843.P9805571777609577559

/-! ## A049843.P1220553424385814978

`A014963(gcd(A059657(n+1), A174077(n)))`
-/

namespace A049843.P1220553424385814978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.gcd (A059657 (n + 1)) (A174077 n))

end

end A049843.P1220553424385814978

/-! ## A049843.P334474582727835253

`A193101(A105446(2*n+5)^A049600(n))`
-/

namespace A049843.P334474582727835253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193101 (SequenceMachineLib.roundAway ((A105446 (2 * n + 5) : ℚ) ^ (A049600 n : ℤ))).toNat

end

end A049843.P334474582727835253

/-!
# A049845: a(n) = Sum_{m=2..n, k=1..m-1} T(m,k), array T as in A049843.

The programs for A049845, there is no canonical definition to state claims against.
-/

/-! ## A049845.P11509592780479145215

`∑[A049844(n+2)]`
-/

namespace A049845.P11509592780479145215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049844 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049845.P11509592780479145215

/-! ## A049845.P7775985187032778412

`A049844(A020725(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A049845.P7775985187032778412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049844 (A020725 (n + 1)).toNat + a (n - 1)

end

end A049845.P7775985187032778412

/-! ## A049845.P12309041390958770926

`A049844(A028310(n)+2)+a(n-1)` with `a(0)=1`
-/

namespace A049845.P12309041390958770926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A049844 (A028310 n + 2).toNat + a (n - 1)

end

end A049845.P12309041390958770926

/-! ## A049845.P10196518919751970261

`A000027(a(n-1))+A049844(n+2)` with `a(0)=1`
-/

namespace A049845.P10196518919751970261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (a (n - 1)).toNat + A049844 (n + 2)

end

end A049845.P10196518919751970261

/-! ## A049845.P15833881786401894302

`A344650(n)+A063541(n+3)`
-/

namespace A049845.P15833881786401894302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344650 n + A063541 (n + 3)

end

end A049845.P15833881786401894302

/-!
# A049847: a(n) = (2*n + 1 - prevprime(2*n+1))/2.

The programs for A049847, the canonical program `A049847.P10550477487782794055` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049847 has offset 2).

The definition of A049847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049847.P10550477487782794055

`floor(A049613(n+3)/2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A049847

/-- `floor(A049613(n+3)/2)` -/
def P10550477487782794055.Spec : Prop :=
  ∀ n, P10550477487782794055.a n = A049847 (n + 2)

theorem P10550477487782794055.correct : P10550477487782794055.Spec := by
  intro n
  simp only [A049847, Nat.add_sub_cancel]

end A049847

/-! ## A049847.P12018461672296265288

`ceil(A049653(n+2)/2)`
-/

namespace A049847.P12018461672296265288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049653 (n + 2) : ℚ) / 2⌉

end

end A049847.P12018461672296265288

namespace A049847

/-- `ceil(A049653(n+2)/2)` -/
def P12018461672296265288.Spec : Prop :=
  ∀ n, P12018461672296265288.a n = A049847 (n + 2)

end A049847

/-! ## A049847.P6843060963997257652

`A175851(2*(n+2))/2`
-/

namespace A049847.P6843060963997257652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175851 (2 * (n + 2)) : ℚ) / 2

end

end A049847.P6843060963997257652

namespace A049847

/-- `A175851(2*(n+2))/2` -/
def P6843060963997257652.Spec : Prop :=
  ∀ n, P6843060963997257652.a n = (A049847 (n + 2) : ℚ)

end A049847

/-! ## A049847.P3195877482050259596

`(n+3-A088631(n+2))/2`
-/

namespace A049847.P3195877482050259596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - A088631 (n + 2) : ℚ) / 2

end

end A049847.P3195877482050259596

namespace A049847

/-- `(n+3-A088631(n+2))/2` -/
def P3195877482050259596.Spec : Prop :=
  ∀ n, P3195877482050259596.a n = (A049847 (n + 2) : ℚ)

end A049847

/-! ## A049847.P1147926194117670931

`A000463(A049653(n+2))`
-/

namespace A049847.P1147926194117670931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A049653 (n + 2)).toNat

end

end A049847.P1147926194117670931

namespace A049847

/-- `A000463(A049653(n+2))` -/
def P1147926194117670931.Spec : Prop :=
  ∀ n, P1147926194117670931.a n = A049847 (n + 2)

end A049847

/-! ## A049847.P5593836257516882718

`A304529(A175851(2*(n+2)))`
-/

namespace A049847.P5593836257516882718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304529 (A175851 (2 * (n + 2))).toNat

end

end A049847.P5593836257516882718

namespace A049847

/-- `A304529(A175851(2*(n+2)))` -/
def P5593836257516882718.Spec : Prop :=
  ∀ n, P5593836257516882718.a n = A049847 (n + 2)

end A049847

/-! ## A049847.P18362033857214713274

`A002265(2*(A049653(n+2)+1))`
-/

namespace A049847.P18362033857214713274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A049653 (n + 2) + 1)).toNat

end

end A049847.P18362033857214713274

namespace A049847

/-- `A002265(2*(A049653(n+2)+1))` -/
def P18362033857214713274.Spec : Prop :=
  ∀ n, P18362033857214713274.a n = A049847 (n + 2)

end A049847

/-! ## A049847.P4070855448230579453

`A168273(A049653(n+2)+1)/4`
-/

namespace A049847.P4070855448230579453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168273 (A049653 (n + 2) + 1).toNat : ℚ) / 4

end

end A049847.P4070855448230579453

namespace A049847

/-- `A168273(A049653(n+2)+1)/4` -/
def P4070855448230579453.Spec : Prop :=
  ∀ n, P4070855448230579453.a n = (A049847 (n + 2) : ℚ)

end A049847

/-! ## A049847.P13482676564135467059

`A049716(n+2)/2`
-/

namespace A049847.P13482676564135467059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049716 (n + 2) : ℚ) / 2

end

end A049847.P13482676564135467059

namespace A049847

/-- `A049716(n+2)/2` -/
def P13482676564135467059.Spec : Prop :=
  ∀ n, P13482676564135467059.a n = (A049847 (n + 2) : ℚ)

end A049847

/-! ## A049847.P16950683230356023611

`(A238737(n+1)+1)/2`
-/

namespace A049847.P16950683230356023611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238737 (n + 1) + 1 : ℚ) / 2

end

end A049847.P16950683230356023611

namespace A049847

/-- `(A238737(n+1)+1)/2` -/
def P16950683230356023611.Spec : Prop :=
  ∀ n, P16950683230356023611.a n = (A049847 (n + 2) : ℚ)

end A049847

/-! ## A049847.P9333747964182830682

`A001281(A049716(n+2))`
-/

namespace A049847.P9333747964182830682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A049716 (n + 2)).toNat

end

end A049847.P9333747964182830682

namespace A049847

/-- `A001281(A049716(n+2))` -/
def P9333747964182830682.Spec : Prop :=
  ∀ n, P9333747964182830682.a n = A049847 (n + 2)

end A049847

/-! ## A049847.P4871727539602730025

`(A144396(n+2)-A060308(n+2))/2`
-/

namespace A049847.P4871727539602730025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144396 (n + 2) - A060308 (n + 2) : ℚ) / 2

end

end A049847.P4871727539602730025

namespace A049847

/-- `(A144396(n+2)-A060308(n+2))/2` -/
def P4871727539602730025.Spec : Prop :=
  ∀ n, P4871727539602730025.a n = (A049847 (n + 2) : ℚ)

end A049847

/-! ## A049847.P3479018292360900304

`A051700(lt[0, n-A051697(n)])`
-/

namespace A049847.P3479018292360900304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A051697 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A049847.P3479018292360900304

namespace A049847

/-- `A051700(lt[0, n-A051697(n)])` -/
def P3479018292360900304.Spec : Prop :=
  ∀ n, P3479018292360900304.a n = A049847 (n + 2)

end A049847

/-! ## A049847.P7943190117211500363

`A051700(lt[1, n/A051697(n)])`
-/

namespace A049847.P7943190117211500363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A051697 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A049847.P7943190117211500363

namespace A049847

/-- `A051700(lt[1, n/A051697(n)])` -/
def P7943190117211500363.Spec : Prop :=
  ∀ n, P7943190117211500363.a n = A049847 (n + 2)

end A049847

/-! ## A049847.P8641930104092796290

`2-A028242(A060265(n+2))+n`
-/

namespace A049847.P8641930104092796290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A028242 (A060265 (n + 2)).toNat + (n : ℤ)

end

end A049847.P8641930104092796290

namespace A049847

/-- `2-A028242(A060265(n+2))+n` -/
def P8641930104092796290.Spec : Prop :=
  ∀ n, P8641930104092796290.a n = A049847 (n + 2)

end A049847

/-! ## A049847.P14499684129866719334

`A308050(2*n+5)/2`
-/

namespace A049847.P14499684129866719334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308050 (2 * n + 5) : ℚ) / 2

end

end A049847.P14499684129866719334

namespace A049847

/-- `A308050(2*n+5)/2` -/
def P14499684129866719334.Spec : Prop :=
  ∀ n, P14499684129866719334.a n = (A049847 (n + 2) : ℚ)

end A049847

/-! ## A049847.P10122817332396356529

`round(A049711(2*(n+2))/2)`
-/

namespace A049847.P10122817332396356529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049711 (2 * (n + 2)) : ℚ) / 2)

end

end A049847.P10122817332396356529

namespace A049847

/-- `round(A049711(2*(n+2))/2)` -/
def P10122817332396356529.Spec : Prop :=
  ∀ n, P10122817332396356529.a n = A049847 (n + 2)

end A049847

/-! ## A049847.P6892037802998473770

`(4*n+9-A013635(2*(n+2)))/2`
-/

namespace A049847.P6892037802998473770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n + 9 : ℤ) - A013635 (2 * (n + 2)) : ℚ) / 2

end

end A049847.P6892037802998473770

namespace A049847

/-- `(4*n+9-A013635(2*(n+2)))/2` -/
def P6892037802998473770.Spec : Prop :=
  ∀ n, P6892037802998473770.a n = (A049847 (n + 2) : ℚ)

end A049847

/-! ## A049847.P4646333645048686790

`A003977(A065151(2*n+3))/2`
-/

namespace A049847.P4646333645048686790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003977 (A065151 (2 * n + 3)).toNat : ℚ) / 2

end

end A049847.P4646333645048686790

namespace A049847

/-- `A003977(A065151(2*n+3))/2` -/
def P4646333645048686790.Spec : Prop :=
  ∀ n, P4646333645048686790.a n = (A049847 (n + 2) : ℚ)

end A049847

/-!
# A049848: a(n) is the number of primes q less than n-th prime p for which the Euclidean algorithm for p,q has exactly 2 nonzero remainders.

The programs for A049848, there is no canonical definition to state claims against.
-/

/-! ## A049848.P9602530769999095722

`A244966(A218568(n+7))+A001221(A218570(n+9))`
-/

namespace A049848.P9602530769999095722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244966 (A218568 (n + 7)).toNat + A001221 (A218570 (n + 9)).toNat

end

end A049848.P9602530769999095722

/-!
# A049853: a(n) = a(n-1) + Sum_{k=0..n-3} a(k) for n >= 2, a(0)=1, a(1)=2.

The programs for A049853, the canonical program `A049853.P1243500716164849431` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049853 has offset 0).

The definition of A049853 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049853.P1243500716164849431

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049853

/-- `a(n-1)+a(n-2)+a(n-4)` -/
def P1243500716164849431.Spec : Prop :=
  ∀ n, (P1243500716164849431.a n : ℤ) = A049853 n

theorem P1243500716164849431.correct : P1243500716164849431.Spec := by
  intro n
  simp only [A049853]

end A049853

/-! ## A049853.P10979031875735322296

`ogf((1-x^2)/(1-2x+x^2-x^3))`
-/

namespace A049853.P10979031875735322296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -2, 1, -1] n

end

end A049853.P10979031875735322296

namespace A049853

/-- `ogf((1-x^2)/(1-2x+x^2-x^3))` -/
def P10979031875735322296.Spec : Prop :=
  ∀ n, P10979031875735322296.a n = A049853 n

end A049853

/-! ## A049853.P9103296718236988645

`3*a(n-2)-(a(n-3)-2*a(n-4))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A049853.P9103296718236988645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 3] fun n a =>
  3 * a (n - 2) - (a (n - 3) - 2 * a (n - 4))

end

end A049853.P9103296718236988645

namespace A049853

/-- `3*a(n-2)-(a(n-3)-2*a(n-4))` -/
def P9103296718236988645.Spec : Prop :=
  ∀ n, P9103296718236988645.a n = A049853 n

end A049853

/-! ## A049853.P4306625766923044604

`a(n-1)-(a(n-2)-a(n-1)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A049853.P4306625766923044604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 3))

end

end A049853.P4306625766923044604

namespace A049853

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-3))` -/
def P4306625766923044604.Spec : Prop :=
  ∀ n, P4306625766923044604.a n = A049853 n

end A049853

/-! ## A049853.P11546194277387496438

`abs(A109266(2*n+1))`
-/

namespace A049853.P11546194277387496438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109266 (2 * n + 1)|

end

end A049853.P11546194277387496438

namespace A049853

/-- `abs(A109266(2*n+1))` -/
def P11546194277387496438.Spec : Prop :=
  ∀ n, P11546194277387496438.a n = A049853 n

end A049853

/-! ## A049853.P16576083227539536381

`A084338(A300576(n+1))`
-/

namespace A049853.P16576083227539536381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084338 (A300576 (n + 1)).toNat

end

end A049853.P16576083227539536381

namespace A049853

/-- `A084338(A300576(n+1))` -/
def P16576083227539536381.Spec : Prop :=
  ∀ n, P16576083227539536381.a n = A049853 n

end A049853

/-! ## A049853.P1329105591189874529

`A307677(n)+A181532(n)`
-/

namespace A049853.P1329105591189874529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307677 n + A181532 n

end

end A049853.P1329105591189874529

namespace A049853

/-- `A307677(n)+A181532(n)` -/
def P1329105591189874529.Spec : Prop :=
  ∀ n, P1329105591189874529.a n = A049853 n

end A049853

/-! ## A049853.P10297543566050577357

`A005251(n+1)+A005251(n)`
-/

namespace A049853.P10297543566050577357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 1) + A005251 n

end

end A049853.P10297543566050577357

namespace A049853

/-- `A005251(n+1)+A005251(n)` -/
def P10297543566050577357.Spec : Prop :=
  ∀ n, P10297543566050577357.a n = A049853 n

end A049853

/-! ## A049853.P14053565390889450358

`A000007(n+1)-A109266(2*n+1)`
-/

namespace A049853.P14053565390889450358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A109266 (2 * n + 1)

end

end A049853.P14053565390889450358

namespace A049853

/-- `A000007(n+1)-A109266(2*n+1)` -/
def P14053565390889450358.Spec : Prop :=
  ∀ n, P14053565390889450358.a n = A049853 n

end A049853

/-! ## A049853.P8974032228501797260

`A182097(2*n)+A000931(2*n+1)`
-/

namespace A049853.P8974032228501797260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * n) + A000931 (2 * n + 1)

end

end A049853.P8974032228501797260

namespace A049853

/-- `A182097(2*n)+A000931(2*n+1)` -/
def P8974032228501797260.Spec : Prop :=
  ∀ n, P8974032228501797260.a n = A049853 n

end A049853

/-! ## A049853.P13718581736630288691

`A182097(2*n+1)+A078027(2*n)`
-/

namespace A049853.P13718581736630288691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * n + 1) + A078027 (2 * n)

end

end A049853.P13718581736630288691

namespace A049853

/-- `A182097(2*n+1)+A078027(2*n)` -/
def P13718581736630288691.Spec : Prop :=
  ∀ n, P13718581736630288691.a n = A049853 n

end A049853

/-! ## A049853.P2364173373916547627

`A291289(2*n+1)+A000931(2*n)`
-/

namespace A049853.P2364173373916547627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291289 (2 * n + 1) + A000931 (2 * n)

end

end A049853.P2364173373916547627

namespace A049853

/-- `A291289(2*n+1)+A000931(2*n)` -/
def P2364173373916547627.Spec : Prop :=
  ∀ n, P2364173373916547627.a n = A049853 n

end A049853

/-! ## A049853.P10736138899490179616

`A182097(2*n+1)+A124745(2*n)`
-/

namespace A049853.P10736138899490179616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * n + 1) + A124745 (2 * n)

end

end A049853.P10736138899490179616

namespace A049853

/-- `A182097(2*n+1)+A124745(2*n)` -/
def P10736138899490179616.Spec : Prop :=
  ∀ n, P10736138899490179616.a n = A049853 n

end A049853

/-! ## A049853.P3506715460873802830

`A000931(2*n+1)+∑[A000931(2*n)]`
-/

namespace A049853.P3506715460873802830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049853.P3506715460873802830

namespace A049853

/-- `A000931(2*n+1)+∑[A000931(2*n)]` -/
def P3506715460873802830.Spec : Prop :=
  ∀ n, P3506715460873802830.a n = A049853 n

end A049853

/-! ## A049853.P7003041849455496775

`A182097(2*n+1)+A133034(2*(n+1))`
-/

namespace A049853.P7003041849455496775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * n + 1) + A133034 (2 * (n + 1))

end

end A049853.P7003041849455496775

namespace A049853

/-- `A182097(2*n+1)+A133034(2*(n+1))` -/
def P7003041849455496775.Spec : Prop :=
  ∀ n, P7003041849455496775.a n = A049853 n

end A049853

/-! ## A049853.P11585734831603585062

`A000931(2*n+1)+A052954(2*n)-1`
-/

namespace A049853.P11585734831603585062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n + 1) + (A052954 (2 * n) - 1)

end

end A049853.P11585734831603585062

namespace A049853

/-- `A000931(2*n+1)+A052954(2*n)-1` -/
def P11585734831603585062.Spec : Prop :=
  ∀ n, P11585734831603585062.a n = A049853 n

end A049853

/-! ## A049853.P13716380512660917298

`A052954(2*n+1)+A078027(2*n)-1`
-/

namespace A049853.P13716380512660917298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (2 * n + 1) + (A078027 (2 * n) - 1)

end

end A049853.P13716380512660917298

namespace A049853

/-- `A052954(2*n+1)+A078027(2*n)-1` -/
def P13716380512660917298.Spec : Prop :=
  ∀ n, P13716380512660917298.a n = A049853 n

end A049853

/-! ## A049853.P15453994597855112367

`A134816(2*n+1)-A133034(2*n+1)`
-/

namespace A049853.P15453994597855112367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * n + 1) - A133034 (2 * n + 1)

end

end A049853.P15453994597855112367

namespace A049853

/-- `A134816(2*n+1)-A133034(2*n+1)` -/
def P15453994597855112367.Spec : Prop :=
  ∀ n, P15453994597855112367.a n = A049853 n

end A049853

/-! ## A049853.P1718219709626126731

`A000931(2*n+1)+A000931(2*n+3)`
-/

namespace A049853.P1718219709626126731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n + 1) + A000931 (2 * n + 3)

end

end A049853.P1718219709626126731

namespace A049853

/-- `A000931(2*n+1)+A000931(2*n+3)` -/
def P1718219709626126731.Spec : Prop :=
  ∀ n, P1718219709626126731.a n = A049853 n

end A049853

/-! ## A049853.P14907419289168801397

`A182097(2*n)+A182097(A004271(n+1))`
-/

namespace A049853.P14907419289168801397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * n) + A182097 (A004271 (n + 1)).toNat

end

end A049853.P14907419289168801397

namespace A049853

/-- `A182097(2*n)+A182097(A004271(n+1))` -/
def P14907419289168801397.Spec : Prop :=
  ∀ n, P14907419289168801397.a n = A049853 n

end A049853

/-!
# A049854: a(n)=Sum{a(k): k=0,1,2,...,n-3,n-1}; a(n-2) is not a summand; 2 initial terms required.

The programs for A049854, the canonical program `A049854.P15676002867090542095` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049854 has offset 0).

The definition of A049854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049854.P15676002867090542095

`2*a(n-1)-a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049854

/-- `2*a(n-1)-a(n-2)+a(n-3)` -/
def P15676002867090542095.Spec : Prop :=
  ∀ n, P15676002867090542095.a n = A049854 n

theorem P15676002867090542095.correct : P15676002867090542095.Spec := by
  intro n
  simp only [A049854]

end A049854

/-! ## A049854.P6120395460713759520

`ogf((1+x-2x^2)/(1-2x+x^2-x^3))`
-/

namespace A049854.P6120395460713759520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2] [1, -2, 1, -1] n

end

end A049854.P6120395460713759520

namespace A049854

/-- `ogf((1+x-2x^2)/(1-2x+x^2-x^3))` -/
def P6120395460713759520.Spec : Prop :=
  ∀ n, P6120395460713759520.a n = A049854 n

end A049854

/-! ## A049854.P4580907418776825362

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=4`
-/

namespace A049854.P4580907418776825362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 4] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 4))

end

end A049854.P4580907418776825362

namespace A049854

/-- `a(n-1)+a(n-2)+a(n-4)` -/
def P4580907418776825362.Spec : Prop :=
  ∀ n, (P4580907418776825362.a n : ℤ) = A049854 n

end A049854

/-! ## A049854.P7468902269307769274

`2*a(n-1)-(a(n-2)-a(n-3))` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A049854.P7468902269307769274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  2 * a (n - 1) - (a (n - 2) - a (n - 3))

end

end A049854.P7468902269307769274

namespace A049854

/-- `2*a(n-1)-(a(n-2)-a(n-3))` -/
def P7468902269307769274.Spec : Prop :=
  ∀ n, P7468902269307769274.a n = A049854 n

theorem P7468902269307769274.correct : P7468902269307769274.Spec := by
  intro n
  simp only [A049854, Nat.add_sub_cancel, A049854.P7468902269307769274.a, A049854.P15676002867090542095.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A049854

/-! ## A049854.P13792862798025960013

`a(n-1)-(a(n-2)-a(n-1)-a(n-3))` with `a(0)=1, a(1)=3, a(2)=3`
-/

namespace A049854.P13792862798025960013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 3] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 3))

end

end A049854.P13792862798025960013

namespace A049854

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-3))` -/
def P13792862798025960013.Spec : Prop :=
  ∀ n, P13792862798025960013.a n = A049854 n

theorem P13792862798025960013.correct : P13792862798025960013.Spec := by
  intro n
  simp only [A049854, Nat.add_sub_cancel, A049854.P13792862798025960013.a, A049854.P15676002867090542095.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A049854

/-! ## A049854.P6775100152227766653

`A276276(2*(n+1))`
-/

namespace A049854.P6775100152227766653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276276 (2 * (n + 1))

end

end A049854.P6775100152227766653

namespace A049854

/-- `A276276(2*(n+1))` -/
def P6775100152227766653.Spec : Prop :=
  ∀ n, P6775100152227766653.a n = A049854 n

end A049854

/-! ## A049854.P10064076863324414584

`A049853(n)+A005251(n)`
-/

namespace A049854.P10064076863324414584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n + A005251 n

end

end A049854.P10064076863324414584

namespace A049854

/-- `A049853(n)+A005251(n)` -/
def P10064076863324414584.Spec : Prop :=
  ∀ n, P10064076863324414584.a n = A049854 n

end A049854

/-! ## A049854.P17612313608049550992

`A049853(n)+A000931(Δ[n²])`
-/

namespace A049854.P17612313608049550992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n + A000931 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A049854.P17612313608049550992

namespace A049854

/-- `A049853(n)+A000931(Δ[n²])` -/
def P17612313608049550992.Spec : Prop :=
  ∀ n, P17612313608049550992.a n = A049854 n

end A049854

/-! ## A049854.P17664050696651525436

`Δ[A005314(n)]+2*A005251(n)`
-/

namespace A049854.P17664050696651525436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A005251 n

end

end A049854.P17664050696651525436

namespace A049854

/-- `Δ[A005314(n)]+2*A005251(n)` -/
def P17664050696651525436.Spec : Prop :=
  ∀ n, P17664050696651525436.a n = A049854 n

end A049854

/-! ## A049854.P4614510253715799772

`A005251(n+1)+2*A005251(n)`
-/

namespace A049854.P4614510253715799772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 1) + 2 * A005251 n

end

end A049854.P4614510253715799772

namespace A049854

/-- `A005251(n+1)+2*A005251(n)` -/
def P4614510253715799772.Spec : Prop :=
  ∀ n, P4614510253715799772.a n = A049854 n

end A049854

/-! ## A049854.P13779666799179667383

`A005314(n)-A109248(2*n+1)`
-/

namespace A049854.P13779666799179667383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 n - A109248 (2 * n + 1)

end

end A049854.P13779666799179667383

namespace A049854

/-- `A005314(n)-A109248(2*n+1)` -/
def P13779666799179667383.Spec : Prop :=
  ∀ n, P13779666799179667383.a n = A049854 n

end A049854

/-! ## A049854.P13693519444012887978

`A078027(2*n)+A007307(2*n)`
-/

namespace A049854.P13693519444012887978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (2 * n) + A007307 (2 * n)

end

end A049854.P13693519444012887978

namespace A049854

/-- `A078027(2*n)+A007307(2*n)` -/
def P13693519444012887978.Spec : Prop :=
  ∀ n, P13693519444012887978.a n = A049854 n

end A049854

/-! ## A049854.P3320934141086142001

`A124745(2*n)+A007307(2*n)`
-/

namespace A049854.P3320934141086142001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 (2 * n) + A007307 (2 * n)

end

end A049854.P3320934141086142001

namespace A049854

/-- `A124745(2*n)+A007307(2*n)` -/
def P3320934141086142001.Spec : Prop :=
  ∀ n, P3320934141086142001.a n = A049854 n

end A049854

/-! ## A049854.P11241995215552841655

`A078027(2*(n+1)+1)+A049853(n)`
-/

namespace A049854.P11241995215552841655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (2 * (n + 1) + 1) + A049853 n

end

end A049854.P11241995215552841655

namespace A049854

/-- `A078027(2*(n+1)+1)+A049853(n)` -/
def P11241995215552841655.Spec : Prop :=
  ∀ n, P11241995215552841655.a n = A049854 n

end A049854

/-! ## A049854.P172176593037095833

`A291289(2*n+1)+A182097(2*n)`
-/

namespace A049854.P172176593037095833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291289 (2 * n + 1) + A182097 (2 * n)

end

end A049854.P172176593037095833

namespace A049854

/-- `A291289(2*n+1)+A182097(2*n)` -/
def P172176593037095833.Spec : Prop :=
  ∀ n, P172176593037095833.a n = A049854 n

end A049854

/-! ## A049854.P14595984479566090172

`A133034(2*n)+2*A182097(2*n)`
-/

namespace A049854.P14595984479566090172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (2 * n) + 2 * A182097 (2 * n)

end

end A049854.P14595984479566090172

namespace A049854

/-- `A133034(2*n)+2*A182097(2*n)` -/
def P14595984479566090172.Spec : Prop :=
  ∀ n, P14595984479566090172.a n = A049854 n

end A049854

/-! ## A049854.P1375057662450654567

`A141038(2*n+1)-A000931(2*(n+1))`
-/

namespace A049854.P1375057662450654567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141038 (2 * n + 1) - A000931 (2 * (n + 1))

end

end A049854.P1375057662450654567

namespace A049854

/-- `A141038(2*n+1)-A000931(2*(n+1))` -/
def P1375057662450654567.Spec : Prop :=
  ∀ n, P1375057662450654567.a n = A049854 n

end A049854

/-! ## A049854.P13098918499986776325

`A134816(2*(n+1))-A133034(2*n+1)`
-/

namespace A049854.P13098918499986776325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * (n + 1)) - A133034 (2 * n + 1)

end

end A049854.P13098918499986776325

namespace A049854

/-- `A134816(2*(n+1))-A133034(2*n+1)` -/
def P13098918499986776325.Spec : Prop :=
  ∀ n, P13098918499986776325.a n = A049854 n

end A049854

/-! ## A049854.P17457149957806824362

`A182097(2*n)+2*A000931(2*n+1)`
-/

namespace A049854.P17457149957806824362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * n) + 2 * A000931 (2 * n + 1)

end

end A049854.P17457149957806824362

namespace A049854

/-- `A182097(2*n)+2*A000931(2*n+1)` -/
def P17457149957806824362.Spec : Prop :=
  ∀ n, P17457149957806824362.a n = A049854 n

end A049854

/-! ## A049854.P6116873005745682250

`A133034(2*(n+5))-A133034(2*n+1)`
-/

namespace A049854.P6116873005745682250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (2 * (n + 5)) - A133034 (2 * n + 1)

end

end A049854.P6116873005745682250

namespace A049854

/-- `A133034(2*(n+5))-A133034(2*n+1)` -/
def P6116873005745682250.Spec : Prop :=
  ∀ n, P6116873005745682250.a n = A049854 n

end A049854

/-!
# A049855: a(n) = Sum{a(k): k=0,1,2,...,n-3,n-1}; a(n-2) is not a summand; 2 initial terms required.

The programs for A049855, the canonical program `A049855.P6537957576747159550` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049855 has offset 0).

The definition of A049855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049855.P6537957576747159550

`2*a(n-1)-a(n-2)+a(n-3)` with `a(0)=2, a(1)=3, a(2)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049855

/-- `2*a(n-1)-a(n-2)+a(n-3)` -/
def P6537957576747159550.Spec : Prop :=
  ∀ n, P6537957576747159550.a n = A049855 n

theorem P6537957576747159550.correct : P6537957576747159550.Spec := by
  intro n
  simp only [A049855]

end A049855

/-! ## A049855.P16516961939217830797

`ogf((-2+x+x^2)/(-1+2x-x^2+x^3))`
-/

namespace A049855.P16516961939217830797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -1] [1, -2, 1, -1] n

end

end A049855.P16516961939217830797

namespace A049855

/-- `ogf((-2+x+x^2)/(-1+2x-x^2+x^3))` -/
def P16516961939217830797.Spec : Prop :=
  ∀ n, P16516961939217830797.a n = A049855 n

end A049855

/-! ## A049855.P10702559122971747173

`a(n-1)+a(n-2)+a(n-4)` with `a(0)=2, a(1)=3, a(2)=3, a(3)=5`
-/

namespace A049855.P10702559122971747173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 3, 5] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 4))

end

end A049855.P10702559122971747173

namespace A049855

/-- `a(n-1)+a(n-2)+a(n-4)` -/
def P10702559122971747173.Spec : Prop :=
  ∀ n, (P10702559122971747173.a n : ℤ) = A049855 n

end A049855

/-! ## A049855.P6484871439013506063

`2*a(n-1)-(a(n-2)-a(n-3))` with `a(0)=2, a(1)=3, a(2)=3`
-/

namespace A049855.P6484871439013506063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 3] fun n a =>
  2 * a (n - 1) - (a (n - 2) - a (n - 3))

end

end A049855.P6484871439013506063

namespace A049855

/-- `2*a(n-1)-(a(n-2)-a(n-3))` -/
def P6484871439013506063.Spec : Prop :=
  ∀ n, P6484871439013506063.a n = A049855 n

theorem P6484871439013506063.correct : P6484871439013506063.Spec := by
  intro n
  simp only [A049855, Nat.add_sub_cancel, A049855.P6484871439013506063.a, A049855.P6537957576747159550.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A049855

/-! ## A049855.P13161588043706272753

`a(n-1)-(a(n-2)-a(n-1)-a(n-3))` with `a(0)=2, a(1)=3, a(2)=3`
-/

namespace A049855.P13161588043706272753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 3] fun n a =>
  a (n - 1) - (a (n - 2) - a (n - 1) - a (n - 3))

end

end A049855.P13161588043706272753

namespace A049855

/-- `a(n-1)-(a(n-2)-a(n-1)-a(n-3))` -/
def P13161588043706272753.Spec : Prop :=
  ∀ n, P13161588043706272753.a n = A049855 n

theorem P13161588043706272753.correct : P13161588043706272753.Spec := by
  intro n
  simp only [A049855, Nat.add_sub_cancel, A049855.P13161588043706272753.a, A049855.P6537957576747159550.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A049855

/-! ## A049855.P5333958232379794746

`A049853(n)+A005251(n+1)`
-/

namespace A049855.P5333958232379794746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n + A005251 (n + 1)

end

end A049855.P5333958232379794746

namespace A049855

/-- `A049853(n)+A005251(n+1)` -/
def P5333958232379794746.Spec : Prop :=
  ∀ n, P5333958232379794746.a n = A049855 n

end A049855

/-! ## A049855.P7251820257341517488

`A182097(2*n)+A049853(n)`
-/

namespace A049855.P7251820257341517488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * n) + A049853 n

end

end A049855.P7251820257341517488

namespace A049855

/-- `A182097(2*n)+A049853(n)` -/
def P7251820257341517488.Spec : Prop :=
  ∀ n, P7251820257341517488.a n = A049855 n

end A049855

/-! ## A049855.P161991125439258640

`A049853(n)+∑[A000931(2*n)]`
-/

namespace A049855.P161991125439258640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049855.P161991125439258640

namespace A049855

/-- `A049853(n)+∑[A000931(2*n)]` -/
def P161991125439258640.Spec : Prop :=
  ∀ n, P161991125439258640.a n = A049855 n

end A049855

/-! ## A049855.P6308312733847235261

`A124745(2*n)+record[A124745(n)]`
-/

namespace A049855.P6308312733847235261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124745 (2 * n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049855.P6308312733847235261

namespace A049855

/-- `A124745(2*n)+record[A124745(n)]` -/
def P6308312733847235261.Spec : Prop :=
  ∀ n, P6308312733847235261.a n = A049855 n

end A049855

/-! ## A049855.P4668072600050144211

`A049853(n)+Δ[A182097(Δ[n²])]`
-/

namespace A049855.P4668072600050144211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n + (f1 (n + 1) - f1 n)

end

end A049855.P4668072600050144211

namespace A049855

/-- `A049853(n)+Δ[A182097(Δ[n²])]` -/
def P4668072600050144211.Spec : Prop :=
  ∀ n, P4668072600050144211.a n = A049855 n

end A049855

/-! ## A049855.P1819909532634017091

`A049853(n)+A000931(2*n+3)`
-/

namespace A049855.P1819909532634017091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049853 n + A000931 (2 * n + 3)

end

end A049855.P1819909532634017091

namespace A049855

/-- `A049853(n)+A000931(2*n+3)` -/
def P1819909532634017091.Spec : Prop :=
  ∀ n, P1819909532634017091.a n = A049855 n

end A049855

/-! ## A049855.P15962502329726144883

`A133034(2*n)+A001608(2*n)`
-/

namespace A049855.P15962502329726144883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (2 * n) + A001608 (2 * n)

end

end A049855.P15962502329726144883

namespace A049855

/-- `A133034(2*n)+A001608(2*n)` -/
def P15962502329726144883.Spec : Prop :=
  ∀ n, P15962502329726144883.a n = A049855 n

end A049855

/-! ## A049855.P16987478813514198495

`A078027(2*n)+record[A000931(2*n)]`
-/

namespace A049855.P16987478813514198495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (2 * n) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049855.P16987478813514198495

namespace A049855

/-- `A078027(2*n)+record[A000931(2*n)]` -/
def P16987478813514198495.Spec : Prop :=
  ∀ n, P16987478813514198495.a n = A049855 n

end A049855

/-! ## A049855.P14658463751335690002

`A005251(n+2)-A109248(2*n+1)`
-/

namespace A049855.P14658463751335690002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 2) - A109248 (2 * n + 1)

end

end A049855.P14658463751335690002

namespace A049855

/-- `A005251(n+2)-A109248(2*n+1)` -/
def P14658463751335690002.Spec : Prop :=
  ∀ n, P14658463751335690002.a n = A049855 n

end A049855

/-! ## A049855.P11730797307276276025

`A134816(2*(n+1))+A078027(2*n)`
-/

namespace A049855.P11730797307276276025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * (n + 1)) + A078027 (2 * n)

end

end A049855.P11730797307276276025

namespace A049855

/-- `A134816(2*(n+1))+A078027(2*n)` -/
def P11730797307276276025.Spec : Prop :=
  ∀ n, P11730797307276276025.a n = A049855 n

end A049855

/-! ## A049855.P3550859223167740540

`A134816(2*(n+1))+A124745(2*n)`
-/

namespace A049855.P3550859223167740540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * (n + 1)) + A124745 (2 * n)

end

end A049855.P3550859223167740540

namespace A049855

/-- `A134816(2*(n+1))+A124745(2*n)` -/
def P3550859223167740540.Spec : Prop :=
  ∀ n, P3550859223167740540.a n = A049855 n

end A049855

/-! ## A049855.P13195708482264409399

`A276276(2*(n+1))+A000931(2*n)`
-/

namespace A049855.P13195708482264409399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276276 (2 * (n + 1)) + A000931 (2 * n)

end

end A049855.P13195708482264409399

namespace A049855

/-- `A276276(2*(n+1))+A000931(2*n)` -/
def P13195708482264409399.Spec : Prop :=
  ∀ n, P13195708482264409399.a n = A049855 n

end A049855

/-! ## A049855.P9723076141145422668

`A182097(2*n+3)+A078027(2*n)`
-/

namespace A049855.P9723076141145422668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * n + 3) + A078027 (2 * n)

end

end A049855.P9723076141145422668

namespace A049855

/-- `A182097(2*n+3)+A078027(2*n)` -/
def P9723076141145422668.Spec : Prop :=
  ∀ n, P9723076141145422668.a n = A049855 n

end A049855

/-! ## A049855.P16648793455699641530

`A182097(2*n+3)+A124745(2*n)`
-/

namespace A049855.P16648793455699641530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * n + 3) + A124745 (2 * n)

end

end A049855.P16648793455699641530

namespace A049855

/-- `A182097(2*n+3)+A124745(2*n)` -/
def P16648793455699641530.Spec : Prop :=
  ∀ n, P16648793455699641530.a n = A049855 n

end A049855

/-! ## A049855.P3462019062761376152

`A005314(n+1)+Δ[Δ[A000931(2*n)]]`
-/

namespace A049855.P3462019062761376152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (n + 1) + (f1 (n + 1) - f1 n)

end

end A049855.P3462019062761376152

namespace A049855

/-- `A005314(n+1)+Δ[Δ[A000931(2*n)]]` -/
def P3462019062761376152.Spec : Prop :=
  ∀ n, P3462019062761376152.a n = A049855 n

end A049855

/-!
# A049856: a(n) = (Sum{k=0..n-1} a(k)) - a(n-3), with a(0)=0, a(1)=0, a(2)=1.

The programs for A049856, the canonical program `A049856.P1431488528190504158` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049856 has offset 0).

The definition of A049856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049856.P1431488528190504158

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049856

/-- `2*a(n-1)-a(n-3)+a(n-4)` -/
def P1431488528190504158.Spec : Prop :=
  ∀ n, P1431488528190504158.a n = A049856 n

theorem P1431488528190504158.correct : P1431488528190504158.Spec := by
  intro n
  simp only [A049856]

end A049856

/-! ## A049856.P7403432270558465077

`ogf((x^2-x^3)/(1-2x+x^3-x^4))`
-/

namespace A049856.P7403432270558465077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1] [1, -2, 0, 1, -1] n

end

end A049856.P7403432270558465077

namespace A049856

/-- `ogf((x^2-x^3)/(1-2x+x^3-x^4))` -/
def P7403432270558465077.Spec : Prop :=
  ∀ n, P7403432270558465077.a n = A049856 n

end A049856

/-! ## A049856.P15301811621879851385

`a(n-1)+a(n-1)+a(n-4)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A049856.P15301811621879851385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 4) - a (n - 3)))

end

end A049856.P15301811621879851385

namespace A049856

/-- `a(n-1)+a(n-1)+a(n-4)-a(n-3)` -/
def P15301811621879851385.Spec : Prop :=
  ∀ n, P15301811621879851385.a n = A049856 n

end A049856

/-! ## A049856.P12567533473581709731

`a(n-1)-(a(n-3)-a(n-1)-a(n-4))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A049856.P12567533473581709731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 4))

end

end A049856.P12567533473581709731

namespace A049856

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-4))` -/
def P12567533473581709731.Spec : Prop :=
  ∀ n, P12567533473581709731.a n = A049856 n

theorem P12567533473581709731.correct : P12567533473581709731.Spec := by
  intro n
  simp only [A049856, Nat.add_sub_cancel, A049856.P12567533473581709731.a, A049856.P1431488528190504158.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A049856

/-! ## A049856.P4200770867404521681

`A049858(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A049856.P4200770867404521681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A049858 (n - 1) - a (n - 1)

end

end A049856.P4200770867404521681

namespace A049856

/-- `A049858(n-1)-a(n-1)` -/
def P4200770867404521681.Spec : Prop :=
  ∀ n, P4200770867404521681.a n = A049856 n

end A049856

/-! ## A049856.P9861008072433998683

`A049859(n)-A049858(n)`
-/

namespace A049856.P9861008072433998683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 n - A049858 n

end

end A049856.P9861008072433998683

namespace A049856

/-- `A049859(n)-A049858(n)` -/
def P9861008072433998683.Spec : Prop :=
  ∀ n, P9861008072433998683.a n = A049856 n

end A049856

/-! ## A049856.P14190712748925565065

`A049860(n)-A049859(n)`
-/

namespace A049856.P14190712748925565065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049860 n - A049859 n

end

end A049856.P14190712748925565065

namespace A049856

/-- `A049860(n)-A049859(n)` -/
def P14190712748925565065.Spec : Prop :=
  ∀ n, P14190712748925565065.a n = A049856 n

end A049856

/-! ## A049856.P3511849827831089615

`A049867(n)-A049866(n)`
-/

namespace A049856.P3511849827831089615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049867 n - A049866 n

end

end A049856.P3511849827831089615

namespace A049856

/-- `A049867(n)-A049866(n)` -/
def P3511849827831089615.Spec : Prop :=
  ∀ n, P3511849827831089615.a n = A049856 n

end A049856

/-! ## A049856.P3750365628750936871

`A049858(n+1)-A049868(n)`
-/

namespace A049856.P3750365628750936871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 (n + 1) - A049868 n

end

end A049856.P3750365628750936871

namespace A049856

/-- `A049858(n+1)-A049868(n)` -/
def P3750365628750936871.Spec : Prop :=
  ∀ n, P3750365628750936871.a n = A049856 n

end A049856

/-! ## A049856.P408831997422086789

`A049870(n)-A049858(n+1)`
-/

namespace A049856.P408831997422086789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049870 n - A049858 (n + 1)

end

end A049856.P408831997422086789

namespace A049856

/-- `A049870(n)-A049858(n+1)` -/
def P408831997422086789.Spec : Prop :=
  ∀ n, P408831997422086789.a n = A049856 n

end A049856

/-! ## A049856.P8520561050442716439

`2*A049858(n)-A049861(n)`
-/

namespace A049856.P8520561050442716439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049858 n - A049861 n

end

end A049856.P8520561050442716439

namespace A049856

/-- `2*A049858(n)-A049861(n)` -/
def P8520561050442716439.Spec : Prop :=
  ∀ n, P8520561050442716439.a n = A049856 n

end A049856

/-! ## A049856.P17855125041326316365

`A049873(n)-2*A049864(n)`
-/

namespace A049856.P17855125041326316365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049873 n - 2 * A049864 n

end

end A049856.P17855125041326316365

namespace A049856

/-- `A049873(n)-2*A049864(n)` -/
def P17855125041326316365.Spec : Prop :=
  ∀ n, P17855125041326316365.a n = A049856 n

end A049856

/-! ## A049856.P11421807294122177366

`(A049860(n)-A049858(n))/2`
-/

namespace A049856.P11421807294122177366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049860 n - A049858 n : ℚ) / 2

end

end A049856.P11421807294122177366

namespace A049856

/-- `(A049860(n)-A049858(n))/2` -/
def P11421807294122177366.Spec : Prop :=
  ∀ n, P11421807294122177366.a n = (A049856 n : ℚ)

end A049856

/-! ## A049856.P4776081392677636802

`A049858(n)-(A049868(n)-Δ[A049858(n)])`
-/

namespace A049856.P4776081392677636802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 n - (A049868 n - (f1 (n + 1) - f1 n))

end

end A049856.P4776081392677636802

namespace A049856

/-- `A049858(n)-(A049868(n)-Δ[A049858(n)])` -/
def P4776081392677636802.Spec : Prop :=
  ∀ n, P4776081392677636802.a n = A049856 n

end A049856

/-! ## A049856.P15514302401180929055

`A049876(n)-A049875(n)`
-/

namespace A049856.P15514302401180929055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049876 n - A049875 n

end

end A049856.P15514302401180929055

namespace A049856

/-- `A049876(n)-A049875(n)` -/
def P15514302401180929055.Spec : Prop :=
  ∀ n, P15514302401180929055.a n = A049856 n

end A049856

/-! ## A049856.P4453801626714683050

`Δ[A049866(n+1)-A049859(n+1)]`
-/

namespace A049856.P4453801626714683050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049866 (n + 1) - A049859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049856.P4453801626714683050

namespace A049856

/-- `Δ[A049866(n+1)-A049859(n+1)]` -/
def P4453801626714683050.Spec : Prop :=
  ∀ n, P4453801626714683050.a n = A049856 n

end A049856

/-! ## A049856.P16126976034725224841

`A059633(n+3)-Δ[A059633(n+3)]`
-/

namespace A049856.P16126976034725224841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059633 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059633 (n + 3) - (f1 (n + 1) - f1 n)

end

end A049856.P16126976034725224841

namespace A049856

/-- `A059633(n+3)-Δ[A059633(n+3)]` -/
def P16126976034725224841.Spec : Prop :=
  ∀ n, P16126976034725224841.a n = A049856 n

end A049856

/-! ## A049856.P892184470227145855

`A059633(n+4)%Δ[A059633(n+3)]`
-/

namespace A049856.P892184470227145855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059633 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059633 (n + 4)) (f1 (n + 1) - f1 n)

end

end A049856.P892184470227145855

namespace A049856

/-- `A059633(n+4)%Δ[A059633(n+3)]` -/
def P892184470227145855.Spec : Prop :=
  ∀ n, P892184470227145855.a n = A049856 n

end A049856

/-! ## A049856.P5897446890043026960

`A179647(∑[n]-3%(n+1)+1)`
-/

namespace A049856.P5897446890043026960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179647 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((3 % (n + 1) : ℕ) : ℤ) + 1).toNat

end

end A049856.P5897446890043026960

namespace A049856

/-- `A179647(∑[n]-3%(n+1)+1)` -/
def P5897446890043026960.Spec : Prop :=
  ∀ n, P5897446890043026960.a n = A049856 n

end A049856

/-!
# A049858: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 0,1,2.

The programs for A049858, the canonical program `A049858.P15947996885291988385` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049858 has offset 0).

The definition of A049858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049858.P15947996885291988385

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049858

/-- `2*a(n-1)-a(n-3)+a(n-4)` -/
def P15947996885291988385.Spec : Prop :=
  ∀ n, P15947996885291988385.a n = A049858 n

theorem P15947996885291988385.correct : P15947996885291988385.Spec := by
  intro n
  simp only [A049858]

end A049858

/-! ## A049858.P413774845689483085

`ogf((x-x^3)/(1-2x+x^3-x^4))`
-/

namespace A049858.P413774845689483085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -1] [1, -2, 0, 1, -1] n

end

end A049858.P413774845689483085

namespace A049858

/-- `ogf((x-x^3)/(1-2x+x^3-x^4))` -/
def P413774845689483085.Spec : Prop :=
  ∀ n, P413774845689483085.a n = A049858 n

end A049858

/-! ## A049858.P10145112219415986202

`a(n-1)+a(n-1)+a(n-4)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A049858.P10145112219415986202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 4) - a (n - 3)))

end

end A049858.P10145112219415986202

namespace A049858

/-- `a(n-1)+a(n-1)+a(n-4)-a(n-3)` -/
def P10145112219415986202.Spec : Prop :=
  ∀ n, P10145112219415986202.a n = A049858 n

end A049858

/-! ## A049858.P7870506362302821485

`a(n-1)-(a(n-3)-a(n-1)-a(n-4))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A049858.P7870506362302821485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 4))

end

end A049858.P7870506362302821485

namespace A049858

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-4))` -/
def P7870506362302821485.Spec : Prop :=
  ∀ n, P7870506362302821485.a n = A049858 n

theorem P7870506362302821485.correct : P7870506362302821485.Spec := by
  intro n
  simp only [A049858, Nat.add_sub_cancel, A049858.P7870506362302821485.a, A049858.P15947996885291988385.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A049858

/-! ## A049858.P1096911782653476830

`A049856(n+1)+A049856(n)`
-/

namespace A049858.P1096911782653476830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 1) + A049856 n

end

end A049858.P1096911782653476830

namespace A049858

/-- `A049856(n+1)+A049856(n)` -/
def P1096911782653476830.Spec : Prop :=
  ∀ n, P1096911782653476830.a n = A049858 n

end A049858

/-! ## A049858.P8792106282397682546

`A049859(n)-A049856(n)`
-/

namespace A049858.P8792106282397682546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 n - A049856 n

end

end A049858.P8792106282397682546

namespace A049858

/-- `A049859(n)-A049856(n)` -/
def P8792106282397682546.Spec : Prop :=
  ∀ n, P8792106282397682546.a n = A049858 n

end A049858

/-! ## A049858.P5791077866210164336

`∑[A049864(n)]-A049864(n)`
-/

namespace A049858.P5791077866210164336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049864 n

end

end A049858.P5791077866210164336

namespace A049858

/-- `∑[A049864(n)]-A049864(n)` -/
def P5791077866210164336.Spec : Prop :=
  ∀ n, P5791077866210164336.a n = A049858 n

end A049858

/-! ## A049858.P3172762535101435120

`A049860(n)-2*A049856(n)`
-/

namespace A049858.P3172762535101435120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049860 n - 2 * A049856 n

end

end A049858.P3172762535101435120

namespace A049858

/-- `A049860(n)-2*A049856(n)` -/
def P3172762535101435120.Spec : Prop :=
  ∀ n, P3172762535101435120.a n = A049858 n

end A049858

/-! ## A049858.P14542648896225324429

`A049859(n)+A049859(n)-A049860(n)`
-/

namespace A049858.P14542648896225324429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 n + (A049859 n - A049860 n)

end

end A049858.P14542648896225324429

namespace A049858

/-- `A049859(n)+A049859(n)-A049860(n)` -/
def P14542648896225324429.Spec : Prop :=
  ∀ n, P14542648896225324429.a n = A049858 n

end A049858

/-! ## A049858.P17824880370778698782

`2*A049859(n)-A049860(n)`
-/

namespace A049858.P17824880370778698782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049859 n - A049860 n

end

end A049858.P17824880370778698782

namespace A049858

/-- `2*A049859(n)-A049860(n)` -/
def P17824880370778698782.Spec : Prop :=
  ∀ n, P17824880370778698782.a n = A049858 n

end A049858

/-! ## A049858.P14880769868563924570

`A049861(n)-Δ[Δ[A049864(n)]]`
-/

namespace A049858.P14880769868563924570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049861 n - (f1 (n + 1) - f1 n)

end

end A049858.P14880769868563924570

namespace A049858

/-- `A049861(n)-Δ[Δ[A049864(n)]]` -/
def P14880769868563924570.Spec : Prop :=
  ∀ n, P14880769868563924570.a n = A049858 n

end A049858

/-! ## A049858.P3568653424876673204

`A059633(n+3)-A049864(n+1)`
-/

namespace A049858.P3568653424876673204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059633 (n + 3) - A049864 (n + 1)

end

end A049858.P3568653424876673204

namespace A049858

/-- `A059633(n+3)-A049864(n+1)` -/
def P3568653424876673204.Spec : Prop :=
  ∀ n, P3568653424876673204.a n = A049858 n

end A049858

/-!
# A049859: a(n) = Sum_{k=0,1,2,...,n-4,n-2,n-1} a(k); a(n-3) is not a summand, with a(0)=0, a(1)=1, a(2)=3.

The programs for A049859, the canonical program `A049859.P6115394580720691285` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049859 has offset 0).

The definition of A049859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049859.P6115394580720691285

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049859

/-- `2*a(n-1)-a(n-3)+a(n-4)` -/
def P6115394580720691285.Spec : Prop :=
  ∀ n, P6115394580720691285.a n = A049859 n

theorem P6115394580720691285.correct : P6115394580720691285.Spec := by
  intro n
  simp only [A049859]

end A049859

/-! ## A049859.P7678180700292050426

`ogf((x+x^2-2x^3)/(1-2x+x^3-x^4))`
-/

namespace A049859.P7678180700292050426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, -2] [1, -2, 0, 1, -1] n

end

end A049859.P7678180700292050426

namespace A049859

/-- `ogf((x+x^2-2x^3)/(1-2x+x^3-x^4))` -/
def P7678180700292050426.Spec : Prop :=
  ∀ n, P7678180700292050426.a n = A049859 n

end A049859

/-! ## A049859.P7374034298748381947

`a(n-1)+a(n-1)+a(n-4)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A049859.P7374034298748381947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 4) - a (n - 3)))

end

end A049859.P7374034298748381947

namespace A049859

/-- `a(n-1)+a(n-1)+a(n-4)-a(n-3)` -/
def P7374034298748381947.Spec : Prop :=
  ∀ n, P7374034298748381947.a n = A049859 n

end A049859

/-! ## A049859.P47179730934893090

`a(n-1)-(a(n-3)-a(n-1)-a(n-4))` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A049859.P47179730934893090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 4] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 4))

end

end A049859.P47179730934893090

namespace A049859

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-4))` -/
def P47179730934893090.Spec : Prop :=
  ∀ n, P47179730934893090.a n = A049859 n

theorem P47179730934893090.correct : P47179730934893090.Spec := by
  intro n
  simp only [A049859, Nat.add_sub_cancel, A049859.P47179730934893090.a, A049859.P6115394580720691285.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A049859

/-! ## A049859.P14748115787168848259

`A049858(n)+A049856(n)`
-/

namespace A049859.P14748115787168848259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 n + A049856 n

end

end A049859.P14748115787168848259

namespace A049859

/-- `A049858(n)+A049856(n)` -/
def P14748115787168848259.Spec : Prop :=
  ∀ n, P14748115787168848259.a n = A049859 n

end A049859

/-! ## A049859.P16772180622716937663

`A049860(n)-A049856(n)`
-/

namespace A049859.P16772180622716937663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049860 n - A049856 n

end

end A049859.P16772180622716937663

namespace A049859

/-- `A049860(n)-A049856(n)` -/
def P16772180622716937663.Spec : Prop :=
  ∀ n, P16772180622716937663.a n = A049859 n

end A049859

/-! ## A049859.P16135814339215118879

`A049870(n)-A049864(n)`
-/

namespace A049859.P16135814339215118879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049870 n - A049864 n

end

end A049859.P16135814339215118879

namespace A049859

/-- `A049870(n)-A049864(n)` -/
def P16135814339215118879.Spec : Prop :=
  ∀ n, P16135814339215118879.a n = A049859 n

end A049859

/-! ## A049859.P16663713781136811449

`A049856(n+1)+2*A049856(n)`
-/

namespace A049859.P16663713781136811449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 1) + 2 * A049856 n

end

end A049859.P16663713781136811449

namespace A049859

/-- `A049856(n+1)+2*A049856(n)` -/
def P16663713781136811449.Spec : Prop :=
  ∀ n, P16663713781136811449.a n = A049859 n

end A049859

/-! ## A049859.P14572236128777960379

`A049856(n)+∑[A049864(n)]-A049864(n)`
-/

namespace A049859.P14572236128777960379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 n + (∑ j ∈ Finset.range (n + 1), f1 j - A049864 n)

end

end A049859.P14572236128777960379

namespace A049859

/-- `A049856(n)+∑[A049864(n)]-A049864(n)` -/
def P14572236128777960379.Spec : Prop :=
  ∀ n, P14572236128777960379.a n = A049859 n

end A049859

/-! ## A049859.P17056468459126195939

`(A049860(n)+A049858(n))/2`
-/

namespace A049859.P17056468459126195939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049860 n + A049858 n : ℚ) / 2

end

end A049859.P17056468459126195939

namespace A049859

/-- `(A049860(n)+A049858(n))/2` -/
def P17056468459126195939.Spec : Prop :=
  ∀ n, P17056468459126195939.a n = (A049859 n : ℚ)

end A049859

/-!
# A049860: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 0,1,4.

The programs for A049860, the canonical program `A049860.P14092894737804850765` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049860 has offset 0).

The definition of A049860 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049860.P14092894737804850765

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049860

/-- `2*a(n-1)-a(n-3)+a(n-4)` -/
def P14092894737804850765.Spec : Prop :=
  ∀ n, P14092894737804850765.a n = A049860 n

theorem P14092894737804850765.correct : P14092894737804850765.Spec := by
  intro n
  simp only [A049860]

end A049860

/-! ## A049860.P16942100553291689093

`ogf((x+2x^2-3x^3)/(1-2x+x^3-x^4))`
-/

namespace A049860.P16942100553291689093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, -3] [1, -2, 0, 1, -1] n

end

end A049860.P16942100553291689093

namespace A049860

/-- `ogf((x+2x^2-3x^3)/(1-2x+x^3-x^4))` -/
def P16942100553291689093.Spec : Prop :=
  ∀ n, P16942100553291689093.a n = A049860 n

end A049860

/-! ## A049860.P17439524266600082167

`a(n-1)+a(n-1)+a(n-4)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5`
-/

namespace A049860.P17439524266600082167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 4) - a (n - 3)))

end

end A049860.P17439524266600082167

namespace A049860

/-- `a(n-1)+a(n-1)+a(n-4)-a(n-3)` -/
def P17439524266600082167.Spec : Prop :=
  ∀ n, P17439524266600082167.a n = A049860 n

end A049860

/-! ## A049860.P11586438071834432979

`a(n-1)-(a(n-3)-a(n-1)-a(n-4))` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5`
-/

namespace A049860.P11586438071834432979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 5] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 4))

end

end A049860.P11586438071834432979

namespace A049860

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-4))` -/
def P11586438071834432979.Spec : Prop :=
  ∀ n, P11586438071834432979.a n = A049860 n

theorem P11586438071834432979.correct : P11586438071834432979.Spec := by
  intro n
  simp only [A049860, Nat.add_sub_cancel, A049860.P11586438071834432979.a, A049860.P14092894737804850765.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A049860

/-! ## A049860.P3039032359146252611

`A049859(n)+A049856(n)`
-/

namespace A049860.P3039032359146252611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 n + A049856 n

end

end A049860.P3039032359146252611

namespace A049860

/-- `A049859(n)+A049856(n)` -/
def P3039032359146252611.Spec : Prop :=
  ∀ n, P3039032359146252611.a n = A049860 n

end A049860

/-! ## A049860.P8243020260019723939

`A049858(n)+2*A049856(n)`
-/

namespace A049860.P8243020260019723939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 n + 2 * A049856 n

end

end A049860.P8243020260019723939

namespace A049860

/-- `A049858(n)+2*A049856(n)` -/
def P8243020260019723939.Spec : Prop :=
  ∀ n, P8243020260019723939.a n = A049860 n

end A049860

/-! ## A049860.P2310433360028621484

`A049856(n+1)+3*A049856(n)`
-/

namespace A049860.P2310433360028621484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 1) + 3 * A049856 n

end

end A049860.P2310433360028621484

namespace A049860

/-- `A049856(n+1)+3*A049856(n)` -/
def P2310433360028621484.Spec : Prop :=
  ∀ n, P2310433360028621484.a n = A049860 n

end A049860

/-! ## A049860.P2056714014691293083

`A049859(n)+A049859(n)-A049858(n)`
-/

namespace A049860.P2056714014691293083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 n + (A049859 n - A049858 n)

end

end A049860.P2056714014691293083

namespace A049860

/-- `A049859(n)+A049859(n)-A049858(n)` -/
def P2056714014691293083.Spec : Prop :=
  ∀ n, P2056714014691293083.a n = A049860 n

end A049860

/-! ## A049860.P2669514670407648567

`2*A049859(n)-A049858(n)`
-/

namespace A049860.P2669514670407648567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049859 n - A049858 n

end

end A049860.P2669514670407648567

namespace A049860

/-- `2*A049859(n)-A049858(n)` -/
def P2669514670407648567.Spec : Prop :=
  ∀ n, P2669514670407648567.a n = A049860 n

end A049860

/-!
# A049861: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 0,2,3.

The programs for A049861, the canonical program `A049861.P2293957598706732903` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049861 has offset 0).

The definition of A049861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049861.P2293957598706732903

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049861

/-- `2*a(n-1)-a(n-3)+a(n-4)` -/
def P2293957598706732903.Spec : Prop :=
  ∀ n, P2293957598706732903.a n = A049861 n

theorem P2293957598706732903.correct : P2293957598706732903.Spec := by
  intro n
  simp only [A049861]

end A049861

/-! ## A049861.P7755520216048859896

`ogf((-2x+x^2+x^3)/(-1+2x-x^3+x^4))`
-/

namespace A049861.P7755520216048859896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1, -1] [1, -2, 0, 1, -1] n

end

end A049861.P7755520216048859896

namespace A049861

/-- `ogf((-2x+x^2+x^3)/(-1+2x-x^3+x^4))` -/
def P7755520216048859896.Spec : Prop :=
  ∀ n, P7755520216048859896.a n = A049861 n

end A049861

/-! ## A049861.P2561135650259654724

`a(n-1)+a(n-1)+a(n-4)-a(n-3)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A049861.P2561135650259654724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 4) - a (n - 3)))

end

end A049861.P2561135650259654724

namespace A049861

/-- `a(n-1)+a(n-1)+a(n-4)-a(n-3)` -/
def P2561135650259654724.Spec : Prop :=
  ∀ n, P2561135650259654724.a n = A049861 n

end A049861

/-! ## A049861.P11966003567785371757

`a(n-1)-(a(n-3)-a(n-1)-a(n-4))` with `a(0)=0, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A049861.P11966003567785371757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3, 5] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 4))

end

end A049861.P11966003567785371757

namespace A049861

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-4))` -/
def P11966003567785371757.Spec : Prop :=
  ∀ n, P11966003567785371757.a n = A049861 n

theorem P11966003567785371757.correct : P11966003567785371757.Spec := by
  intro n
  simp only [A049861, Nat.add_sub_cancel, A049861.P11966003567785371757.a, A049861.P2293957598706732903.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A049861

/-! ## A049861.P5614336157712769974

`A049859(n)+Δ[A049856(n)]`
-/

namespace A049861.P5614336157712769974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 n + (f1 (n + 1) - f1 n)

end

end A049861.P5614336157712769974

namespace A049861

/-- `A049859(n)+Δ[A049856(n)]` -/
def P5614336157712769974.Spec : Prop :=
  ∀ n, P5614336157712769974.a n = A049861 n

end A049861

/-! ## A049861.P8454476459454220311

`A049858(n)+A049856(n+1)`
-/

namespace A049861.P8454476459454220311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 n + A049856 (n + 1)

end

end A049861.P8454476459454220311

namespace A049861

/-- `A049858(n)+A049856(n+1)` -/
def P8454476459454220311.Spec : Prop :=
  ∀ n, P8454476459454220311.a n = A049861 n

end A049861

/-! ## A049861.P3754648909273687453

`2*A049858(n)-A049856(n)`
-/

namespace A049861.P3754648909273687453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049858 n - A049856 n

end

end A049861.P3754648909273687453

namespace A049861

/-- `2*A049858(n)-A049856(n)` -/
def P3754648909273687453.Spec : Prop :=
  ∀ n, P3754648909273687453.a n = A049861 n

end A049861

/-! ## A049861.P8192218622574689827

`A049870(n)-Δ[A049856(n+1)]`
-/

namespace A049861.P8192218622574689827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049870 n - (f1 (n + 1) - f1 n)

end

end A049861.P8192218622574689827

namespace A049861

/-- `A049870(n)-Δ[A049856(n+1)]` -/
def P8192218622574689827.Spec : Prop :=
  ∀ n, P8192218622574689827.a n = A049861 n

end A049861

/-! ## A049861.P13356854211912756782

`A049858(n)+A049868(n)-Δ[A049858(n)]`
-/

namespace A049861.P13356854211912756782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 n + (A049868 n - (f1 (n + 1) - f1 n))

end

end A049861.P13356854211912756782

namespace A049861

/-- `A049858(n)+A049868(n)-Δ[A049858(n)]` -/
def P13356854211912756782.Spec : Prop :=
  ∀ n, P13356854211912756782.a n = A049861 n

end A049861

/-! ## A049861.P4223102642479682300

`A049856(n+1)+A049856(n+1)+A049856(n)`
-/

namespace A049861.P4223102642479682300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 1) + (A049856 (n + 1) + A049856 n)

end

end A049861.P4223102642479682300

namespace A049861

/-- `A049856(n+1)+A049856(n+1)+A049856(n)` -/
def P4223102642479682300.Spec : Prop :=
  ∀ n, P4223102642479682300.a n = A049861 n

end A049861

/-! ## A049861.P16436857077677924130

`A049859(n+1)-A049864(n)`
-/

namespace A049861.P16436857077677924130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 (n + 1) - A049864 n

end

end A049861.P16436857077677924130

namespace A049861

/-- `A049859(n+1)-A049864(n)` -/
def P16436857077677924130.Spec : Prop :=
  ∀ n, P16436857077677924130.a n = A049861 n

end A049861

/-! ## A049861.P4106520321395690822

`A049863(n)-A049856(n+1)`
-/

namespace A049861.P4106520321395690822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049863 n - A049856 (n + 1)

end

end A049861.P4106520321395690822

namespace A049861

/-- `A049863(n)-A049856(n+1)` -/
def P4106520321395690822.Spec : Prop :=
  ∀ n, P4106520321395690822.a n = A049861 n

end A049861

/-! ## A049861.P2821849080840058574

`A049859(n+1)-Δ[A049858(n)]`
-/

namespace A049861.P2821849080840058574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 (n + 1) - (f1 (n + 1) - f1 n)

end

end A049861.P2821849080840058574

namespace A049861

/-- `A049859(n+1)-Δ[A049858(n)]` -/
def P2821849080840058574.Spec : Prop :=
  ∀ n, P2821849080840058574.a n = A049861 n

end A049861

/-! ## A049861.P3072263819610406587

`A049859(n)-Δ[A049858(n)-A049859(n)]`
-/

namespace A049861.P3072263819610406587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 n - A049859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 n - (f1 (n + 1) - f1 n)

end

end A049861.P3072263819610406587

namespace A049861

/-- `A049859(n)-Δ[A049858(n)-A049859(n)]` -/
def P3072263819610406587.Spec : Prop :=
  ∀ n, P3072263819610406587.a n = A049861 n

end A049861

/-! ## A049861.P14211253004889380424

`A059633(n+4)-2*A049864(n+1)`
-/

namespace A049861.P14211253004889380424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059633 (n + 4) - 2 * A049864 (n + 1)

end

end A049861.P14211253004889380424

namespace A049861

/-- `A059633(n+4)-2*A049864(n+1)` -/
def P14211253004889380424.Spec : Prop :=
  ∀ n, P14211253004889380424.a n = A049861 n

end A049861

/-! ## A049861.P8001712560124290518

`Δ[Δ[A049876(n+1)]-A049859(n+1)]`
-/

namespace A049861.P8001712560124290518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049876 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A049859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049861.P8001712560124290518

namespace A049861

/-- `Δ[Δ[A049876(n+1)]-A049859(n+1)]` -/
def P8001712560124290518.Spec : Prop :=
  ∀ n, P8001712560124290518.a n = A049861 n

end A049861

/-!
# A049862: Products of two Fibonacci numbers with distinct indices.

The programs for A049862, there is no canonical definition to state claims against.
-/

/-! ## A049862.P7343702011882307683

`round(A050120(n+1)/sqrt(5))`
-/

namespace A049862.P7343702011882307683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A050120 (n + 1) : ℝ) / Real.sqrt (5 : ℝ))

end

end A049862.P7343702011882307683

/-! ## A049862.P13147101478455138847

`∑[A049874(A028310(n))]-1`
-/

namespace A049862.P13147101478455138847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049874 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049862.P13147101478455138847

/-! ## A049862.P6373583988643183298

`∑[A049874(n+1)]-A049874(n+1)`
-/

namespace A049862.P6373583988643183298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049874 (n + 1)

end

end A049862.P6373583988643183298

/-! ## A049862.P1296850600390456015

`∑[A049874(A028310(n))*A057427(n)]`
-/

namespace A049862.P1296850600390456015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049874 (A028310 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049862.P1296850600390456015

/-! ## A049862.P14203169991808648654

`∑[A049874(A028310(n))%A000041(n+1)]`
-/

namespace A049862.P14203169991808648654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049874 (A028310 n).toNat) (A000041 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049862.P14203169991808648654

/-! ## A049862.P7675606891609625109

`∩[A160009(n+1), A049997(n)]`
-/

namespace A049862.P7675606891609625109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049997 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049862.P7675606891609625109

/-! ## A049862.P7533227693120365221

`∑[A049874(A028310(n))%A332869(n)]`
-/

namespace A049862.P7533227693120365221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049874 (A028310 n).toNat) (A332869 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049862.P7533227693120365221

/-!
# A049863: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 0,3,4.

The programs for A049863, the canonical program `A049863.P9876617433013980383` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049863 has offset 0).

The definition of A049863 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049863.P9876617433013980383

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=0, a(1)=3, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049863

/-- `2*a(n-1)-a(n-3)+a(n-4)` -/
def P9876617433013980383.Spec : Prop :=
  ∀ n, P9876617433013980383.a n = A049863 n

theorem P9876617433013980383.correct : P9876617433013980383.Spec := by
  intro n
  simp only [A049863]

end A049863

/-! ## A049863.P1895354249538341424

`ogf((-3x+2x^2+x^3)/(-1+2x-x^3+x^4))`
-/

namespace A049863.P1895354249538341424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, -2, -1] [1, -2, 0, 1, -1] n

end

end A049863.P1895354249538341424

namespace A049863

/-- `ogf((-3x+2x^2+x^3)/(-1+2x-x^3+x^4))` -/
def P1895354249538341424.Spec : Prop :=
  ∀ n, P1895354249538341424.a n = A049863 n

end A049863

/-! ## A049863.P14001077600564533907

`A049861(n)+A049856(n+1)`
-/

namespace A049863.P14001077600564533907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049861 n + A049856 (n + 1)

end

end A049863.P14001077600564533907

namespace A049863

/-- `A049861(n)+A049856(n+1)` -/
def P14001077600564533907.Spec : Prop :=
  ∀ n, P14001077600564533907.a n = A049863 n

end A049863

/-! ## A049863.P1478811013693412364

`A049860(n+1)-A049864(n)`
-/

namespace A049863.P1478811013693412364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049860 (n + 1) - A049864 n

end

end A049863.P1478811013693412364

namespace A049863

/-- `A049860(n+1)-A049864(n)` -/
def P1478811013693412364.Spec : Prop :=
  ∀ n, P1478811013693412364.a n = A049863 n

end A049863

/-! ## A049863.P17184846016015703173

`2*A049861(n)-A049858(n)`
-/

namespace A049863.P17184846016015703173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049861 n - A049858 n

end

end A049863.P17184846016015703173

namespace A049863

/-- `2*A049861(n)-A049858(n)` -/
def P17184846016015703173.Spec : Prop :=
  ∀ n, P17184846016015703173.a n = A049863 n

end A049863

/-! ## A049863.P9122106489433076650

`4*A049858(n)-A049860(n)`
-/

namespace A049863.P9122106489433076650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A049858 n - A049860 n

end

end A049863.P9122106489433076650

namespace A049863

/-- `4*A049858(n)-A049860(n)` -/
def P9122106489433076650.Spec : Prop :=
  ∀ n, P9122106489433076650.a n = A049863 n

end A049863

/-! ## A049863.P7511482238408570067

`A049861(n)+Δ[Δ[A049864(n)]]`
-/

namespace A049863.P7511482238408570067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049861 n + (f1 (n + 1) - f1 n)

end

end A049863.P7511482238408570067

namespace A049863

/-- `A049861(n)+Δ[Δ[A049864(n)]]` -/
def P7511482238408570067.Spec : Prop :=
  ∀ n, P7511482238408570067.a n = A049863 n

end A049863

/-! ## A049863.P14203950196082160195

`A049856(n+1)+A049858(n)+A049856(n+1)`
-/

namespace A049863.P14203950196082160195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 1) + (A049858 n + A049856 (n + 1))

end

end A049863.P14203950196082160195

namespace A049863

/-- `A049856(n+1)+A049858(n)+A049856(n+1)` -/
def P14203950196082160195.Spec : Prop :=
  ∀ n, P14203950196082160195.a n = A049863 n

end A049863

/-!
# A049864: a(n) = Sum_{k=0,1,2,...,n-4,n-2,n-1} a(k); a(n-3) is not a summand, with a(0)=a(1)=a(2)=1.

The programs for A049864, the canonical program `A049864.P15758822881774029464` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049864 has offset 0).

The definition of A049864 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049864.P15758822881774029464

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049864

/-- `2*a(n-1)-a(n-3)+a(n-4)` -/
def P15758822881774029464.Spec : Prop :=
  ∀ n, P15758822881774029464.a n = A049864 n

theorem P15758822881774029464.correct : P15758822881774029464.Spec := by
  intro n
  simp only [A049864]

end A049864

/-! ## A049864.P404696315722855837

`ogf((1-x-x^2+x^3)/(1-2x+x^3-x^4))`
-/

namespace A049864.P404696315722855837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1, 1] [1, -2, 0, 1, -1] n

end

end A049864.P404696315722855837

namespace A049864

/-- `ogf((1-x-x^2+x^3)/(1-2x+x^3-x^4))` -/
def P404696315722855837.Spec : Prop :=
  ∀ n, P404696315722855837.a n = A049864 n

end A049864

/-! ## A049864.P2990727526242385638

`a(n-1)+a(n-1)+a(n-4)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A049864.P2990727526242385638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 4) - a (n - 3)))

end

end A049864.P2990727526242385638

namespace A049864

/-- `a(n-1)+a(n-1)+a(n-4)-a(n-3)` -/
def P2990727526242385638.Spec : Prop :=
  ∀ n, P2990727526242385638.a n = A049864 n

end A049864

/-! ## A049864.P3518369887919197389

`a(n-1)-(a(n-3)-a(n-1)-a(n-4))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A049864.P3518369887919197389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 4))

end

end A049864.P3518369887919197389

namespace A049864

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-4))` -/
def P3518369887919197389.Spec : Prop :=
  ∀ n, P3518369887919197389.a n = A049864 n

theorem P3518369887919197389.correct : P3518369887919197389.Spec := by
  intro n
  simp only [A049864, Nat.add_sub_cancel, A049864.P3518369887919197389.a, A049864.P15758822881774029464.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A049864

/-! ## A049864.P16633440684856959741

`A059633(n)+a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A049864.P16633440684856959741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A059633 n + a (n - 1)

end

end A049864.P16633440684856959741

namespace A049864

/-- `A059633(n)+a(n-1)` -/
def P16633440684856959741.Spec : Prop :=
  ∀ n, P16633440684856959741.a n = A049864 n

end A049864

/-! ## A049864.P11493141239879643962

`A049858(n)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A049864.P11493141239879643962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A049858 n - a (n - 3)

end

end A049864.P11493141239879643962

namespace A049864

/-- `A049858(n)-a(n-3)` -/
def P11493141239879643962.Spec : Prop :=
  ∀ n, P11493141239879643962.a n = A049864 n

end A049864

/-! ## A049864.P6764627265871064905

`A049856(n+2)-A049856(n)`
-/

namespace A049864.P6764627265871064905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 2) - A049856 n

end

end A049864.P6764627265871064905

namespace A049864

/-- `A049856(n+2)-A049856(n)` -/
def P6764627265871064905.Spec : Prop :=
  ∀ n, P6764627265871064905.a n = A049864 n

end A049864

/-! ## A049864.P11006317887871656740

`Δ[A049858(n)]`
-/

namespace A049864.P11006317887871656740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049864.P11006317887871656740

namespace A049864

/-- `Δ[A049858(n)]` -/
def P11006317887871656740.Spec : Prop :=
  ∀ n, P11006317887871656740.a n = A049864 n

end A049864

/-! ## A049864.P1795679174932539750

`A049870(n)-A049859(n)`
-/

namespace A049864.P1795679174932539750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049870 n - A049859 n

end

end A049864.P1795679174932539750

namespace A049864

/-- `A049870(n)-A049859(n)` -/
def P1795679174932539750.Spec : Prop :=
  ∀ n, P1795679174932539750.a n = A049864 n

end A049864

/-! ## A049864.P12179806959464974044

`A049858(n+1)-A049858(n)`
-/

namespace A049864.P12179806959464974044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 (n + 1) - A049858 n

end

end A049864.P12179806959464974044

namespace A049864

/-- `A049858(n+1)-A049858(n)` -/
def P12179806959464974044.Spec : Prop :=
  ∀ n, P12179806959464974044.a n = A049864 n

end A049864

/-! ## A049864.P9974878850026340536

`A049866(n)-2*A049856(n)`
-/

namespace A049864.P9974878850026340536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049866 n - 2 * A049856 n

end

end A049864.P9974878850026340536

namespace A049864

/-- `A049866(n)-2*A049856(n)` -/
def P9974878850026340536.Spec : Prop :=
  ∀ n, P9974878850026340536.a n = A049864 n

end A049864

/-! ## A049864.P13777016223285139070

`(A049873(n)-A049856(n))/2`
-/

namespace A049864.P13777016223285139070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049873 n - A049856 n : ℚ) / 2

end

end A049864.P13777016223285139070

namespace A049864

/-- `(A049873(n)-A049856(n))/2` -/
def P13777016223285139070.Spec : Prop :=
  ∀ n, P13777016223285139070.a n = (A049864 n : ℚ)

end A049864

/-! ## A049864.P15076853178081246430

`Δ[A049856(n+1)+A049856(n)]`
-/

namespace A049864.P15076853178081246430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 1) + A049856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049864.P15076853178081246430

namespace A049864

/-- `Δ[A049856(n+1)+A049856(n)]` -/
def P15076853178081246430.Spec : Prop :=
  ∀ n, P15076853178081246430.a n = A049864 n

end A049864

/-! ## A049864.P11698114700646129076

`A049868(n)+A049868(n)-A049871(n)`
-/

namespace A049864.P11698114700646129076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049868 n + (A049868 n - A049871 n)

end

end A049864.P11698114700646129076

namespace A049864

/-- `A049868(n)+A049868(n)-A049871(n)` -/
def P11698114700646129076.Spec : Prop :=
  ∀ n, P11698114700646129076.a n = A049864 n

end A049864

/-! ## A049864.P2814595561380761546

`A049875(n)-A049868(n)`
-/

namespace A049864.P2814595561380761546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049875 n - A049868 n

end

end A049864.P2814595561380761546

namespace A049864

/-- `A049875(n)-A049868(n)` -/
def P2814595561380761546.Spec : Prop :=
  ∀ n, P2814595561380761546.a n = A049864 n

end A049864

/-! ## A049864.P8208330208938310128

`Δ[A049859(n)-A049856(n)]`
-/

namespace A049864.P8208330208938310128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 n - A049856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049864.P8208330208938310128

namespace A049864

/-- `Δ[A049859(n)-A049856(n)]` -/
def P8208330208938310128.Spec : Prop :=
  ∀ n, P8208330208938310128.a n = A049864 n

end A049864

/-! ## A049864.P5949100025350578472

`2*A049868(n)-A049871(n)`
-/

namespace A049864.P5949100025350578472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049868 n - A049871 n

end

end A049864.P5949100025350578472

namespace A049864

/-- `2*A049868(n)-A049871(n)` -/
def P5949100025350578472.Spec : Prop :=
  ∀ n, P5949100025350578472.a n = A049864 n

end A049864

/-!
# A049865: Number of iterations of unitary totient function (A047994) required to reach 1 from n.

The programs for A049865, the canonical program `A049865.P13992076794767324350` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049865 has offset 1).

The definition of A049865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049865.P13992076794767324350

`a(A047994(n+1)-1)+1` with `a(0)=0`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A049865

/-- `a(A047994(n+1)-1)+1` -/
def P13992076794767324350.Spec : Prop :=
  ∀ n, (P13992076794767324350.a n : ℤ) = A049865 (n + 1)

theorem P13992076794767324350.correct : P13992076794767324350.Spec := by
  intro n
  simp only [A049865, Nat.add_sub_cancel]

end A049865

/-! ## A049865.P10516688663833149723

`1+a(n-A323410(n+1))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A049865.P10516688663833149723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  1 + a ((n : ℤ) - A323410 (n + 1)).toNat

end

end A049865.P10516688663833149723

namespace A049865

/-- `1+a(n-A323410(n+1))` -/
def P10516688663833149723.Spec : Prop :=
  ∀ n, (P10516688663833149723.a n : ℤ) = A049865 (n + 1)

end A049865

/-! ## A049865.P1883778470664912857

`A348553(a(n-A323410(n+1)))` with `a(0)=0`
-/

namespace A049865.P1883778470664912857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A348553 (a ((n : ℤ) - A323410 (n + 1)).toNat).toNat

end

end A049865.P1883778470664912857

namespace A049865

/-- `A348553(a(n-A323410(n+1)))` -/
def P1883778470664912857.Spec : Prop :=
  ∀ n, P1883778470664912857.a n = A049865 (n + 1)

end A049865

/-! ## A049865.P15809245542042496743

`a(A344875(A026741(n+1))-1)+1` with `a(0)=0`
-/

namespace A049865.P15809245542042496743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A344875 (A026741 (n + 1)).toNat - 1).toNat + 1

end

end A049865.P15809245542042496743

namespace A049865

/-- `a(A344875(A026741(n+1))-1)+1` -/
def P15809245542042496743.Spec : Prop :=
  ∀ n, (P15809245542042496743.a n : ℤ) = A049865 (n + 1)

end A049865

/-! ## A049865.P6478864596486932365

`a(A028310(n)-A323410(n+1))+1` with `a(0)=0`
-/

namespace A049865.P6478864596486932365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A028310 n - A323410 (n + 1)).toNat + 1

end

end A049865.P6478864596486932365

namespace A049865

/-- `a(A028310(n)-A323410(n+1))+1` -/
def P6478864596486932365.Spec : Prop :=
  ∀ n, (P6478864596486932365.a n : ℤ) = A049865 (n + 1)

end A049865

/-!
# A049866: a(n) = Sum_{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 1,1,3.

The programs for A049866, the canonical program `A049866.P8218628782342424440` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049866 has offset 0).

The definition of A049866 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049866.P8218628782342424440

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049866

/-- `2*a(n-1)-a(n-3)+a(n-4)` -/
def P8218628782342424440.Spec : Prop :=
  ∀ n, P8218628782342424440.a n = A049866 n

theorem P8218628782342424440.correct : P8218628782342424440.Spec := by
  intro n
  simp only [A049866]

end A049866

/-! ## A049866.P4297345972976889070

`ogf((1-x+x^2-x^3)/(1-2x+x^3-x^4))`
-/

namespace A049866.P4297345972976889070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, -1] [1, -2, 0, 1, -1] n

end

end A049866.P4297345972976889070

namespace A049866

/-- `ogf((1-x+x^2-x^3)/(1-2x+x^3-x^4))` -/
def P4297345972976889070.Spec : Prop :=
  ∀ n, P4297345972976889070.a n = A049866 n

end A049866

/-! ## A049866.P8373345090344780807

`a(n-1)+a(n-1)+a(n-4)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A049866.P8373345090344780807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 4) - a (n - 3)))

end

end A049866.P8373345090344780807

namespace A049866

/-- `a(n-1)+a(n-1)+a(n-4)-a(n-3)` -/
def P8373345090344780807.Spec : Prop :=
  ∀ n, P8373345090344780807.a n = A049866 n

end A049866

/-! ## A049866.P2505789979792187420

`a(n-1)-(a(n-3)-a(n-1)-a(n-4))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=4`
-/

namespace A049866.P2505789979792187420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 4] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 4))

end

end A049866.P2505789979792187420

namespace A049866

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-4))` -/
def P2505789979792187420.Spec : Prop :=
  ∀ n, P2505789979792187420.a n = A049866 n

theorem P2505789979792187420.correct : P2505789979792187420.Spec := by
  intro n
  simp only [A049866, Nat.add_sub_cancel, A049866.P2505789979792187420.a, A049866.P8218628782342424440.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A049866

/-! ## A049866.P16322491711079262367

`A049867(n)-A049856(n)`
-/

namespace A049866.P16322491711079262367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049867 n - A049856 n

end

end A049866.P16322491711079262367

namespace A049866

/-- `A049867(n)-A049856(n)` -/
def P16322491711079262367.Spec : Prop :=
  ∀ n, P16322491711079262367.a n = A049866 n

end A049866

/-! ## A049866.P14398903072344229213

`A049856(n+2)+A049856(n)`
-/

namespace A049866.P14398903072344229213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 2) + A049856 n

end

end A049866.P14398903072344229213

namespace A049866

/-- `A049856(n+2)+A049856(n)` -/
def P14398903072344229213.Spec : Prop :=
  ∀ n, P14398903072344229213.a n = A049866 n

end A049866

/-! ## A049866.P6178475594078265410

`A049870(n)-A049856(n)-Δ[A049856(n)]`
-/

namespace A049866.P6178475594078265410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049870 n - A049856 n - (f1 (n + 1) - f1 n)

end

end A049866.P6178475594078265410

namespace A049866

/-- `A049870(n)-A049856(n)-Δ[A049856(n)]` -/
def P6178475594078265410.Spec : Prop :=
  ∀ n, P6178475594078265410.a n = A049866 n

end A049866

/-! ## A049866.P1802917873494186352

`A049876(n)-Δ[A049859(n)]`
-/

namespace A049866.P1802917873494186352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049876 n - (f1 (n + 1) - f1 n)

end

end A049866.P1802917873494186352

namespace A049866

/-- `A049876(n)-Δ[A049859(n)]` -/
def P1802917873494186352.Spec : Prop :=
  ∀ n, P1802917873494186352.a n = A049866 n

end A049866

/-! ## A049866.P14910870765196916181

`Δ[Δ[A049873(n)]]`
-/

namespace A049866.P14910870765196916181
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049873 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049866.P14910870765196916181

namespace A049866

/-- `Δ[Δ[A049873(n)]]` -/
def P14910870765196916181.Spec : Prop :=
  ∀ n, P14910870765196916181.a n = A049866 n

end A049866

/-!
# A049867: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 1,1,4.

The programs for A049867, the canonical program `A049867.P2352347353806998356` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049867 has offset 0).

The definition of A049867 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049867.P2352347353806998356

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049867

/-- `2*a(n-1)-a(n-3)+a(n-4)` -/
def P2352347353806998356.Spec : Prop :=
  ∀ n, P2352347353806998356.a n = A049867 n

theorem P2352347353806998356.correct : P2352347353806998356.Spec := by
  intro n
  simp only [A049867]

end A049867

/-! ## A049867.P16174798835332963047

`ogf((1-x+2x^2-2x^3)/(1-2x+x^3-x^4))`
-/

namespace A049867.P16174798835332963047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2, -2] [1, -2, 0, 1, -1] n

end

end A049867.P16174798835332963047

namespace A049867

/-- `ogf((1-x+2x^2-2x^3)/(1-2x+x^3-x^4))` -/
def P16174798835332963047.Spec : Prop :=
  ∀ n, P16174798835332963047.a n = A049867 n

end A049867

/-! ## A049867.P12919719918677151618

`a(n-1)+a(n-1)+a(n-4)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5`
-/

namespace A049867.P12919719918677151618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 4) - a (n - 3)))

end

end A049867.P12919719918677151618

namespace A049867

/-- `a(n-1)+a(n-1)+a(n-4)-a(n-3)` -/
def P12919719918677151618.Spec : Prop :=
  ∀ n, P12919719918677151618.a n = A049867 n

end A049867

/-! ## A049867.P13395865551720180273

`a(n-1)-(a(n-3)-a(n-1)-a(n-4))` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5`
-/

namespace A049867.P13395865551720180273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4, 5] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 4))

end

end A049867.P13395865551720180273

namespace A049867

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-4))` -/
def P13395865551720180273.Spec : Prop :=
  ∀ n, P13395865551720180273.a n = A049867 n

theorem P13395865551720180273.correct : P13395865551720180273.Spec := by
  intro n
  simp only [A049867, Nat.add_sub_cancel, A049867.P13395865551720180273.a, A049867.P2352347353806998356.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A049867

/-! ## A049867.P7625169097597425974

`A049866(n)+A049856(n)`
-/

namespace A049867.P7625169097597425974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049866 n + A049856 n

end

end A049867.P7625169097597425974

namespace A049867

/-- `A049866(n)+A049856(n)` -/
def P7625169097597425974.Spec : Prop :=
  ∀ n, P7625169097597425974.a n = A049867 n

end A049867

/-! ## A049867.P5150918673832296749

`A049870(n)-Δ[A049856(n)]`
-/

namespace A049867.P5150918673832296749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049870 n - (f1 (n + 1) - f1 n)

end

end A049867.P5150918673832296749

namespace A049867

/-- `A049870(n)-Δ[A049856(n)]` -/
def P5150918673832296749.Spec : Prop :=
  ∀ n, P5150918673832296749.a n = A049867 n

end A049867

/-! ## A049867.P14108522855739705498

`A049864(n)+3*A049856(n)`
-/

namespace A049867.P14108522855739705498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n + 3 * A049856 n

end

end A049867.P14108522855739705498

namespace A049867

/-- `A049864(n)+3*A049856(n)` -/
def P14108522855739705498.Spec : Prop :=
  ∀ n, P14108522855739705498.a n = A049867 n

end A049867

/-! ## A049867.P571603740327155943

`A049859(n)+Δ[A049856(n+1)]`
-/

namespace A049867.P571603740327155943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 n + (f1 (n + 1) - f1 n)

end

end A049867.P571603740327155943

namespace A049867

/-- `A049859(n)+Δ[A049856(n+1)]` -/
def P571603740327155943.Spec : Prop :=
  ∀ n, P571603740327155943.a n = A049867 n

end A049867

/-! ## A049867.P4613475910735321686

`A049863(n+1)-A049875(n)`
-/

namespace A049867.P4613475910735321686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049863 (n + 1) - A049875 n

end

end A049867.P4613475910735321686

namespace A049867

/-- `A049863(n+1)-A049875(n)` -/
def P4613475910735321686.Spec : Prop :=
  ∀ n, P4613475910735321686.a n = A049867 n

end A049867

/-! ## A049867.P16967834073303413046

`A049856(n)+Δ[Δ[A049873(n)]]`
-/

namespace A049867.P16967834073303413046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049873 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 n + (f1 (n + 1) - f1 n)

end

end A049867.P16967834073303413046

namespace A049867

/-- `A049856(n)+Δ[Δ[A049873(n)]]` -/
def P16967834073303413046.Spec : Prop :=
  ∀ n, P16967834073303413046.a n = A049867 n

end A049867

/-!
# A049868: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 1,2,2.

The programs for A049868, the canonical program `A049868.P4907461806141010413` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049868 has offset 0).

The definition of A049868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049868.P4907461806141010413

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049868

/-- `2*a(n-1)-a(n-3)+a(n-4)` -/
def P4907461806141010413.Spec : Prop :=
  ∀ n, P4907461806141010413.a n = A049868 n

theorem P4907461806141010413.correct : P4907461806141010413.Spec := by
  intro n
  simp only [A049868]

end A049868

/-! ## A049868.P16741609931591085774

`ogf((1-2x^2+x^3)/(1-2x+x^3-x^4))`
-/

namespace A049868.P16741609931591085774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2, 1] [1, -2, 0, 1, -1] n

end

end A049868.P16741609931591085774

namespace A049868

/-- `ogf((1-2x^2+x^3)/(1-2x+x^3-x^4))` -/
def P16741609931591085774.Spec : Prop :=
  ∀ n, P16741609931591085774.a n = A049868 n

end A049868

/-! ## A049868.P11619469413561978077

`a(n-1)+a(n-1)+a(n-4)-a(n-3)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A049868.P11619469413561978077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 4] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 4) - a (n - 3)))

end

end A049868.P11619469413561978077

namespace A049868

/-- `a(n-1)+a(n-1)+a(n-4)-a(n-3)` -/
def P11619469413561978077.Spec : Prop :=
  ∀ n, P11619469413561978077.a n = A049868 n

end A049868

/-! ## A049868.P11371764945393433452

`a(n-1)-(a(n-3)-a(n-1)-a(n-4))` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`
-/

namespace A049868.P11371764945393433452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 4] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 4))

end

end A049868.P11371764945393433452

namespace A049868

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-4))` -/
def P11371764945393433452.Spec : Prop :=
  ∀ n, P11371764945393433452.a n = A049868 n

theorem P11371764945393433452.correct : P11371764945393433452.Spec := by
  intro n
  simp only [A049868, Nat.add_sub_cancel, A049868.P11371764945393433452.a, A049868.P4907461806141010413.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A049868

/-! ## A049868.P8764449139141111189

`∑[A049864(n)]-A049856(n)`
-/

namespace A049868.P8764449139141111189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049856 n

end

end A049868.P8764449139141111189

namespace A049868

/-- `∑[A049864(n)]-A049856(n)` -/
def P8764449139141111189.Spec : Prop :=
  ∀ n, P8764449139141111189.a n = A049868 n

end A049868

/-! ## A049868.P11139777588727431459

`A049864(n)+A049856(n+1)`
-/

namespace A049868.P11139777588727431459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n + A049856 (n + 1)

end

end A049868.P11139777588727431459

namespace A049868

/-- `A049864(n)+A049856(n+1)` -/
def P11139777588727431459.Spec : Prop :=
  ∀ n, P11139777588727431459.a n = A049868 n

end A049868

/-! ## A049868.P2095578080857192158

`A049858(n+1)-A049856(n)`
-/

namespace A049868.P2095578080857192158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 (n + 1) - A049856 n

end

end A049868.P2095578080857192158

namespace A049868

/-- `A049858(n+1)-A049856(n)` -/
def P2095578080857192158.Spec : Prop :=
  ∀ n, P2095578080857192158.a n = A049868 n

end A049868

/-! ## A049868.P15414448942581297814

`A049870(n)-2*A049856(n)`
-/

namespace A049868.P15414448942581297814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049870 n - 2 * A049856 n

end

end A049868.P15414448942581297814

namespace A049868

/-- `A049870(n)-2*A049856(n)` -/
def P15414448942581297814.Spec : Prop :=
  ∀ n, P15414448942581297814.a n = A049868 n

end A049868

/-! ## A049868.P14850859364891801227

`A049873(n)-Δ[A049856(n+1)]`
-/

namespace A049868.P14850859364891801227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049873 n - (f1 (n + 1) - f1 n)

end

end A049868.P14850859364891801227

namespace A049868

/-- `A049873(n)-Δ[A049856(n+1)]` -/
def P14850859364891801227.Spec : Prop :=
  ∀ n, P14850859364891801227.a n = A049868 n

end A049868

/-! ## A049868.P13382808061639308803

`A049858(n)-(A049856(n)-A049864(n))`
-/

namespace A049868.P13382808061639308803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 n - (A049856 n - A049864 n)

end

end A049868.P13382808061639308803

namespace A049868

/-- `A049858(n)-(A049856(n)-A049864(n))` -/
def P13382808061639308803.Spec : Prop :=
  ∀ n, P13382808061639308803.a n = A049868 n

end A049868

/-! ## A049868.P4413004081469564479

`A049875(n)-A049864(n)`
-/

namespace A049868.P4413004081469564479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049875 n - A049864 n

end

end A049868.P4413004081469564479

namespace A049868

/-- `A049875(n)-A049864(n)` -/
def P4413004081469564479.Spec : Prop :=
  ∀ n, P4413004081469564479.a n = A049868 n

end A049868

/-! ## A049868.P1003746796386525305

`A049856(n)+Δ[A049859(n)]`
-/

namespace A049868.P1003746796386525305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 n + (f1 (n + 1) - f1 n)

end

end A049868.P1003746796386525305

namespace A049868

/-- `A049856(n)+Δ[A049859(n)]` -/
def P1003746796386525305.Spec : Prop :=
  ∀ n, P1003746796386525305.a n = A049868 n

end A049868

/-! ## A049868.P14520212761667615913

`A049859(n+1)-A049858(n)`
-/

namespace A049868.P14520212761667615913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 (n + 1) - A049858 n

end

end A049868.P14520212761667615913

namespace A049868

/-- `A049859(n+1)-A049858(n)` -/
def P14520212761667615913.Spec : Prop :=
  ∀ n, P14520212761667615913.a n = A049868 n

end A049868

/-! ## A049868.P10377267971461849001

`A049876(n)-A049856(n+2)`
-/

namespace A049868.P10377267971461849001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049876 n - A049856 (n + 2)

end

end A049868.P10377267971461849001

namespace A049868

/-- `A049876(n)-A049856(n+2)` -/
def P10377267971461849001.Spec : Prop :=
  ∀ n, P10377267971461849001.a n = A049868 n

end A049868

/-!
# A049870: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 1,2,4.

The programs for A049870, the canonical program `A049870.P16730175012883322099` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049870 has offset 0).

The definition of A049870 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049870.P16730175012883322099

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049870

/-- `2*a(n-1)-a(n-3)+a(n-4)` -/
def P16730175012883322099.Spec : Prop :=
  ∀ n, P16730175012883322099.a n = A049870 n

theorem P16730175012883322099.correct : P16730175012883322099.Spec := by
  intro n
  simp only [A049870]

end A049870

/-! ## A049870.P5798177077704777355

`ogf((1-x^3)/(1-2x+x^3-x^4))`
-/

namespace A049870.P5798177077704777355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -1] [1, -2, 0, 1, -1] n

end

end A049870.P5798177077704777355

namespace A049870

/-- `ogf((1-x^3)/(1-2x+x^3-x^4))` -/
def P5798177077704777355.Spec : Prop :=
  ∀ n, P5798177077704777355.a n = A049870 n

end A049870

/-! ## A049870.P7817371432690665876

`A049864(n)+A049859(n)`
-/

namespace A049870.P7817371432690665876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n + A049859 n

end

end A049870.P7817371432690665876

namespace A049870

/-- `A049864(n)+A049859(n)` -/
def P7817371432690665876.Spec : Prop :=
  ∀ n, P7817371432690665876.a n = A049870 n

end A049870

/-! ## A049870.P9470045121795150125

`A049856(n)+∑[A049864(n)]`
-/

namespace A049870.P9470045121795150125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049870.P9470045121795150125

namespace A049870

/-- `A049856(n)+∑[A049864(n)]` -/
def P9470045121795150125.Spec : Prop :=
  ∀ n, P9470045121795150125.a n = A049870 n

end A049870

/-! ## A049870.P17283289279182072785

`A049859(n)+Δ[A049858(n)]`
-/

namespace A049870.P17283289279182072785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 n + (f1 (n + 1) - f1 n)

end

end A049870.P17283289279182072785

namespace A049870

/-- `A049859(n)+Δ[A049858(n)]` -/
def P17283289279182072785.Spec : Prop :=
  ∀ n, P17283289279182072785.a n = A049870 n

end A049870

/-! ## A049870.P12972498825613673087

`A049858(n+1)+A049856(n)`
-/

namespace A049870.P12972498825613673087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 (n + 1) + A049856 n

end

end A049870.P12972498825613673087

namespace A049870

/-- `A049858(n+1)+A049856(n)` -/
def P12972498825613673087.Spec : Prop :=
  ∀ n, P12972498825613673087.a n = A049870 n

end A049870

/-! ## A049870.P6597243807578154556

`A049866(n)+A049856(n+1)`
-/

namespace A049870.P6597243807578154556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049866 n + A049856 (n + 1)

end

end A049870.P6597243807578154556

namespace A049870

/-- `A049866(n)+A049856(n+1)` -/
def P6597243807578154556.Spec : Prop :=
  ∀ n, P6597243807578154556.a n = A049870 n

end A049870

/-! ## A049870.P6103337286027251841

`A049868(n)+2*A049856(n)`
-/

namespace A049870.P6103337286027251841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049868 n + 2 * A049856 n

end

end A049870.P6103337286027251841

namespace A049870

/-- `A049868(n)+2*A049856(n)` -/
def P6103337286027251841.Spec : Prop :=
  ∀ n, P6103337286027251841.a n = A049870 n

end A049870

/-! ## A049870.P13787237932795212334

`A049861(n+1)-A049864(n)`
-/

namespace A049870.P13787237932795212334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049861 (n + 1) - A049864 n

end

end A049870.P13787237932795212334

namespace A049870

/-- `A049861(n+1)-A049864(n)` -/
def P13787237932795212334.Spec : Prop :=
  ∀ n, P13787237932795212334.a n = A049870 n

end A049870

/-! ## A049870.P2579869961921478718

`A049859(n+1)-Δ[A049856(n)]`
-/

namespace A049870.P2579869961921478718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 (n + 1) - (f1 (n + 1) - f1 n)

end

end A049870.P2579869961921478718

namespace A049870

/-- `A049859(n+1)-Δ[A049856(n)]` -/
def P2579869961921478718.Spec : Prop :=
  ∀ n, P2579869961921478718.a n = A049870 n

end A049870

/-! ## A049870.P10224184715122573245

`A049859(n)-Δ[A049856(n)-A049859(n)]`
-/

namespace A049870.P10224184715122573245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 n - A049859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 n - (f1 (n + 1) - f1 n)

end

end A049870.P10224184715122573245

namespace A049870

/-- `A049859(n)-Δ[A049856(n)-A049859(n)]` -/
def P10224184715122573245.Spec : Prop :=
  ∀ n, P10224184715122573245.a n = A049870 n

end A049870

/-! ## A049870.P13462102669120556097

`A049861(n)-(A049864(n)-Δ[A049861(n)])`
-/

namespace A049870.P13462102669120556097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049861 n - (A049864 n - (f1 (n + 1) - f1 n))

end

end A049870.P13462102669120556097

namespace A049870

/-- `A049861(n)-(A049864(n)-Δ[A049861(n)])` -/
def P13462102669120556097.Spec : Prop :=
  ∀ n, P13462102669120556097.a n = A049870 n

end A049870

/-!
# A049871: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 1,3,3.

The programs for A049871, the canonical program `A049871.P5113550198266757381` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049871 has offset 0).

The definition of A049871 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049871.P5113550198266757381

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049871

/-- `2*a(n-1)-a(n-3)+a(n-4)` -/
def P5113550198266757381.Spec : Prop :=
  ∀ n, P5113550198266757381.a n = A049871 n

theorem P5113550198266757381.correct : P5113550198266757381.Spec := by
  intro n
  simp only [A049871]

end A049871

/-! ## A049871.P14075205038442320314

`ogf((1+x-3x^2+x^3)/(1-2x+x^3-x^4))`
-/

namespace A049871.P14075205038442320314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -3, 1] [1, -2, 0, 1, -1] n

end

end A049871.P14075205038442320314

namespace A049871

/-- `ogf((1+x-3x^2+x^3)/(1-2x+x^3-x^4))` -/
def P14075205038442320314.Spec : Prop :=
  ∀ n, P14075205038442320314.a n = A049871 n

end A049871

/-! ## A049871.P14716837839369982271

`A049868(n)+A049856(n+1)`
-/

namespace A049871.P14716837839369982271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049868 n + A049856 (n + 1)

end

end A049871.P14716837839369982271

namespace A049871

/-- `A049868(n)+A049856(n+1)` -/
def P14716837839369982271.Spec : Prop :=
  ∀ n, P14716837839369982271.a n = A049871 n

end A049871

/-! ## A049871.P3831218476800635726

`A049868(n)+A049868(n)-A049864(n)`
-/

namespace A049871.P3831218476800635726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049868 n + (A049868 n - A049864 n)

end

end A049871.P3831218476800635726

namespace A049871

/-- `A049868(n)+A049868(n)-A049864(n)` -/
def P3831218476800635726.Spec : Prop :=
  ∀ n, P3831218476800635726.a n = A049871 n

end A049871

/-! ## A049871.P11189984492593557166

`Δ[A049856(n)]+A049870(n)-A049856(n)`
-/

namespace A049871.P11189984492593557166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A049870 n - A049856 n)

end

end A049871.P11189984492593557166

namespace A049871

/-- `Δ[A049856(n)]+A049870(n)-A049856(n)` -/
def P11189984492593557166.Spec : Prop :=
  ∀ n, P11189984492593557166.a n = A049871 n

end A049871

/-! ## A049871.P4044792959805864579

`A049868(n)+A049868(n)-Δ[A049858(n)]`
-/

namespace A049871.P4044792959805864579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049868 n + (A049868 n - (f1 (n + 1) - f1 n))

end

end A049871.P4044792959805864579

namespace A049871

/-- `A049868(n)+A049868(n)-Δ[A049858(n)]` -/
def P4044792959805864579.Spec : Prop :=
  ∀ n, P4044792959805864579.a n = A049871 n

end A049871

/-! ## A049871.P17666517387894212861

`A049856(n+1)+A049864(n)+A049856(n+1)`
-/

namespace A049871.P17666517387894212861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 1) + (A049864 n + A049856 (n + 1))

end

end A049871.P17666517387894212861

namespace A049871

/-- `A049856(n+1)+A049864(n)+A049856(n+1)` -/
def P17666517387894212861.Spec : Prop :=
  ∀ n, P17666517387894212861.a n = A049871 n

end A049871

/-! ## A049871.P18119431826010526275

`A049856(n+1)+A049858(n+1)-A049856(n)`
-/

namespace A049871.P18119431826010526275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 1) + (A049858 (n + 1) - A049856 n)

end

end A049871.P18119431826010526275

namespace A049871

/-- `A049856(n+1)+A049858(n+1)-A049856(n)` -/
def P18119431826010526275.Spec : Prop :=
  ∀ n, P18119431826010526275.a n = A049871 n

end A049871

/-! ## A049871.P8400877085803067549

`A049858(n)+Δ[A049859(n)]`
-/

namespace A049871.P8400877085803067549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 n + (f1 (n + 1) - f1 n)

end

end A049871.P8400877085803067549

namespace A049871

/-- `A049858(n)+Δ[A049859(n)]` -/
def P8400877085803067549.Spec : Prop :=
  ∀ n, P8400877085803067549.a n = A049871 n

end A049871

/-! ## A049871.P3860238630407461521

`A049859(n+1)-A049856(n)`
-/

namespace A049871.P3860238630407461521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 (n + 1) - A049856 n

end

end A049871.P3860238630407461521

namespace A049871

/-- `A049859(n+1)-A049856(n)` -/
def P3860238630407461521.Spec : Prop :=
  ∀ n, P3860238630407461521.a n = A049871 n

end A049871

/-! ## A049871.P12174963219217419869

`A049860(n+1)-A049858(n)`
-/

namespace A049871.P12174963219217419869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049860 (n + 1) - A049858 n

end

end A049871.P12174963219217419869

namespace A049871

/-- `A049860(n+1)-A049858(n)` -/
def P12174963219217419869.Spec : Prop :=
  ∀ n, P12174963219217419869.a n = A049871 n

end A049871

/-! ## A049871.P11333077957941394889

`2*A049868(n)-A049864(n)`
-/

namespace A049871.P11333077957941394889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049868 n - A049864 n

end

end A049871.P11333077957941394889

namespace A049871

/-- `2*A049868(n)-A049864(n)` -/
def P11333077957941394889.Spec : Prop :=
  ∀ n, P11333077957941394889.a n = A049871 n

end A049871

/-! ## A049871.P2554604465640963480

`2*A049868(n)-Δ[A049858(n)]`
-/

namespace A049871.P2554604465640963480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049868 n - (f1 (n + 1) - f1 n)

end

end A049871.P2554604465640963480

namespace A049871

/-- `2*A049868(n)-Δ[A049858(n)]` -/
def P2554604465640963480.Spec : Prop :=
  ∀ n, P2554604465640963480.a n = A049871 n

end A049871

/-!
# A049872: Integers in base 12, written using 2 decimal digits (00, 01, 02, ...,09, 10, 11) to represent base-12 "digits".

The programs for A049872, the canonical program `A049872.P16581062057459751702` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049872 has offset 0).

The definition of A049872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049872.P12097725893380861443

`eq[A028903(n), A081599(A081599(n))]`
-/

namespace A049872.P12097725893380861443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081599 (A081599 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049872.P12097725893380861443

namespace A049872

/-- `eq[A028903(n), A081599(A081599(n))]` -/
def P12097725893380861443.Spec : Prop :=
  ∀ n, (P12097725893380861443.a n : ℤ) = A049872 n

end A049872

/-! ## A049872.P16581062057459751702

`∪[A289207(A051022(n)+2)+2, A051022(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A049872

/-- `∪[A289207(A051022(n)+2)+2, A051022(n)]` -/
def P16581062057459751702.Spec : Prop :=
  ∀ n, (P16581062057459751702.a n : ℤ) = A049872 n

theorem P16581062057459751702.correct : P16581062057459751702.Spec := by
  intro n
  simp only [A049872]

end A049872

/-! ## A049872.P12962978655085438144

`∩[A392051(n+1), A055645(n)]`
-/

namespace A049872.P12962978655085438144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055645 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049872.P12962978655085438144

namespace A049872

/-- `∩[A392051(n+1), A055645(n)]` -/
def P12962978655085438144.Spec : Prop :=
  ∀ n, (P12962978655085438144.a n : ℤ) = A049872 n

end A049872

/-! ## A049872.P10898017635449974166

`∩[A392051(n+1), A055646(n)]`
-/

namespace A049872.P10898017635449974166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055646 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049872.P10898017635449974166

namespace A049872

/-- `∩[A392051(n+1), A055646(n)]` -/
def P10898017635449974166.Spec : Prop :=
  ∀ n, (P10898017635449974166.a n : ℤ) = A049872 n

end A049872

/-!
# A049873: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 2,2,3.

The programs for A049873, the canonical program `A049873.P14338736943268440780` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049873 has offset 0).

The definition of A049873 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049873.P14338736943268440780

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=2, a(1)=2, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049873

/-- `2*a(n-1)-a(n-3)+a(n-4)` -/
def P14338736943268440780.Spec : Prop :=
  ∀ n, P14338736943268440780.a n = A049873 n

theorem P14338736943268440780.correct : P14338736943268440780.Spec := by
  intro n
  simp only [A049873]

end A049873

/-! ## A049873.P9692943854368195791

`ogf((2-2x-x^2+x^3)/(1-2x+x^3-x^4))`
-/

namespace A049873.P9692943854368195791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -2, -1, 1] [1, -2, 0, 1, -1] n

end

end A049873.P9692943854368195791

namespace A049873

/-- `ogf((2-2x-x^2+x^3)/(1-2x+x^3-x^4))` -/
def P9692943854368195791.Spec : Prop :=
  ∀ n, P9692943854368195791.a n = A049873 n

end A049873

/-! ## A049873.P7663584923540903681

`a(n-1)+a(n-1)+a(n-4)-a(n-3)` with `a(0)=2, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A049873.P7663584923540903681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3, 5] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 4) - a (n - 3)))

end

end A049873.P7663584923540903681

namespace A049873

/-- `a(n-1)+a(n-1)+a(n-4)-a(n-3)` -/
def P7663584923540903681.Spec : Prop :=
  ∀ n, P7663584923540903681.a n = A049873 n

end A049873

/-! ## A049873.P11754019621627323254

`a(n-1)-(a(n-3)-a(n-1)-a(n-4))` with `a(0)=2, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A049873.P11754019621627323254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3, 5] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 4))

end

end A049873.P11754019621627323254

namespace A049873

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-4))` -/
def P11754019621627323254.Spec : Prop :=
  ∀ n, P11754019621627323254.a n = A049873 n

theorem P11754019621627323254.correct : P11754019621627323254.Spec := by
  intro n
  simp only [A049873, Nat.add_sub_cancel, A049873.P11754019621627323254.a, A049873.P14338736943268440780.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A049873

/-! ## A049873.P13835979912390443843

`A049864(n)+A049856(n+2)`
-/

namespace A049873.P13835979912390443843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n + A049856 (n + 2)

end

end A049873.P13835979912390443843

namespace A049873

/-- `A049864(n)+A049856(n+2)` -/
def P13835979912390443843.Spec : Prop :=
  ∀ n, P13835979912390443843.a n = A049873 n

end A049873

/-! ## A049873.P11750286537588676915

`A049875(n)-Δ[A049856(n)]`
-/

namespace A049873.P11750286537588676915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049875 n - (f1 (n + 1) - f1 n)

end

end A049873.P11750286537588676915

namespace A049873

/-- `A049875(n)-Δ[A049856(n)]` -/
def P11750286537588676915.Spec : Prop :=
  ∀ n, P11750286537588676915.a n = A049873 n

end A049873

/-! ## A049873.P17770242089626631051

`A049861(n+1)-A049858(n)`
-/

namespace A049873.P17770242089626631051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049861 (n + 1) - A049858 n

end

end A049873.P17770242089626631051

namespace A049873

/-- `A049861(n+1)-A049858(n)` -/
def P17770242089626631051.Spec : Prop :=
  ∀ n, P17770242089626631051.a n = A049873 n

end A049873

/-! ## A049873.P11874158393333435110

`A049876(n)-A049856(n+1)`
-/

namespace A049873.P11874158393333435110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049876 n - A049856 (n + 1)

end

end A049873.P11874158393333435110

namespace A049873

/-- `A049876(n)-A049856(n+1)` -/
def P11874158393333435110.Spec : Prop :=
  ∀ n, P11874158393333435110.a n = A049873 n

end A049873

/-! ## A049873.P9981645741998028106

`Δ[A049861(n)+Δ[A049864(n)]]`
-/

namespace A049873.P9981645741998028106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049861 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049873.P9981645741998028106

namespace A049873

/-- `Δ[A049861(n)+Δ[A049864(n)]]` -/
def P9981645741998028106.Spec : Prop :=
  ∀ n, P9981645741998028106.a n = A049873 n

end A049873

/-!
# A049874: a(n)=b(n)-b(n-1), where b=A049862 (differences of products of Fibonacci numbers.)

The programs for A049874, there is no canonical definition to state claims against.
-/

/-! ## A049874.P12338424316487264106

`A000045(A049996(n+1))`
-/

namespace A049874.P12338424316487264106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A049996 (n + 1)).toNat

end

end A049874.P12338424316487264106

/-! ## A049874.P7370115911251997144

`A212804(A049996(n+1)+1)`
-/

namespace A049874.P7370115911251997144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A049996 (n + 1) + 1).toNat

end

end A049874.P7370115911251997144

/-! ## A049874.P1971820928562411744

`A324969(A049996(n+1)+1)`
-/

namespace A049874.P1971820928562411744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (A049996 (n + 1) + 1).toNat

end

end A049874.P1971820928562411744

/-! ## A049874.P3131350820537485335

`Δ[A049862(n+1)]`
-/

namespace A049874.P3131350820537485335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A049874.P3131350820537485335

/-! ## A049874.P8899895217387825696

`A049862(n+2)-A049862(n+1)`
-/

namespace A049874.P8899895217387825696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049862 (n + 2) - A049862 (n + 1)

end

end A049874.P8899895217387825696

/-! ## A049874.P106137213414171848

`Δ[∩[A160009(n+1), A049997(n)]]`
-/

namespace A049874.P106137213414171848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160009 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049997 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A049874.P106137213414171848

/-! ## A049874.P4893210331770017159

`A037943(A050121(n+2))`
-/

namespace A049874.P4893210331770017159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037943 (A050121 (n + 2)).toNat

end

end A049874.P4893210331770017159

/-!
# A049875: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 2,3,3.

The programs for A049875, the canonical program `A049875.P15605293180016549153` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049875 has offset 0).

The definition of A049875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049875.P15605293180016549153

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=2, a(1)=3, a(2)=3, a(3)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049875

/-- `2*a(n-1)-a(n-3)+a(n-4)` -/
def P15605293180016549153.Spec : Prop :=
  ∀ n, P15605293180016549153.a n = A049875 n

theorem P15605293180016549153.correct : P15605293180016549153.Spec := by
  intro n
  simp only [A049875]

end A049875

/-! ## A049875.P5652788241151528404

`ogf((2-x-3x^2+2x^3)/(1-2x+x^3-x^4))`
-/

namespace A049875.P5652788241151528404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -3, 2] [1, -2, 0, 1, -1] n

end

end A049875.P5652788241151528404

namespace A049875

/-- `ogf((2-x-3x^2+2x^3)/(1-2x+x^3-x^4))` -/
def P5652788241151528404.Spec : Prop :=
  ∀ n, P5652788241151528404.a n = A049875 n

end A049875

/-! ## A049875.P2129892280954294526

`A049868(n)+A049864(n)`
-/

namespace A049875.P2129892280954294526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049868 n + A049864 n

end

end A049875.P2129892280954294526

namespace A049875

/-- `A049868(n)+A049864(n)` -/
def P2129892280954294526.Spec : Prop :=
  ∀ n, P2129892280954294526.a n = A049875 n

end A049875

/-! ## A049875.P11242102060205248214

`A049876(n)-A049856(n)`
-/

namespace A049875.P11242102060205248214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049876 n - A049856 n

end

end A049875.P11242102060205248214

namespace A049875

/-- `A049876(n)-A049856(n)` -/
def P11242102060205248214.Spec : Prop :=
  ∀ n, P11242102060205248214.a n = A049875 n

end A049875

/-! ## A049875.P2523123024012920196

`A049868(n)+Δ[A049858(n)]`
-/

namespace A049875.P2523123024012920196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049868 n + (f1 (n + 1) - f1 n)

end

end A049875.P2523123024012920196

namespace A049875

/-- `A049868(n)+Δ[A049858(n)]` -/
def P2523123024012920196.Spec : Prop :=
  ∀ n, P2523123024012920196.a n = A049875 n

end A049875

/-! ## A049875.P10215595512892576383

`A049873(n)+Δ[A049856(n)]`
-/

namespace A049875.P10215595512892576383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049873 n + (f1 (n + 1) - f1 n)

end

end A049875.P10215595512892576383

namespace A049875

/-- `A049873(n)+Δ[A049856(n)]` -/
def P10215595512892576383.Spec : Prop :=
  ∀ n, P10215595512892576383.a n = A049875 n

end A049875

/-! ## A049875.P16067255281585709246

`A049856(n+1)+2*A049864(n)`
-/

namespace A049875.P16067255281585709246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049856 (n + 1) + 2 * A049864 n

end

end A049875.P16067255281585709246

namespace A049875

/-- `A049856(n+1)+2*A049864(n)` -/
def P16067255281585709246.Spec : Prop :=
  ∀ n, P16067255281585709246.a n = A049875 n

end A049875

/-! ## A049875.P14271441587263280306

`A049864(n)+∑[A049864(n)]-A049856(n)`
-/

namespace A049875.P14271441587263280306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n + (∑ j ∈ Finset.range (n + 1), f1 j - A049856 n)

end

end A049875.P14271441587263280306

namespace A049875

/-- `A049864(n)+∑[A049864(n)]-A049856(n)` -/
def P14271441587263280306.Spec : Prop :=
  ∀ n, P14271441587263280306.a n = A049875 n

end A049875

/-! ## A049875.P1418810661088620343

`A049858(n+1)+A049864(n)-A049856(n)`
-/

namespace A049875.P1418810661088620343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 (n + 1) + (A049864 n - A049856 n)

end

end A049875.P1418810661088620343

namespace A049875

/-- `A049858(n+1)+A049864(n)-A049856(n)` -/
def P1418810661088620343.Spec : Prop :=
  ∀ n, P1418810661088620343.a n = A049875 n

end A049875

/-! ## A049875.P15344060039073745015

`3*A049868(n)-A049871(n)`
-/

namespace A049875.P15344060039073745015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A049868 n - A049871 n

end

end A049875.P15344060039073745015

namespace A049875

/-- `3*A049868(n)-A049871(n)` -/
def P15344060039073745015.Spec : Prop :=
  ∀ n, P15344060039073745015.a n = A049875 n

end A049875

/-!
# A049876: a(n) = Sum{a(k): k=0,1,2,...,n-4,n-2,n-1}; a(n-3) is not a summand; initial terms are 2,3,4.

The programs for A049876, the canonical program `A049876.P11257561887962219168` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049876 has offset 0).

The definition of A049876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049876.P11257561887962219168

`2*a(n-1)-a(n-3)+a(n-4)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049876

/-- `2*a(n-1)-a(n-3)+a(n-4)` -/
def P11257561887962219168.Spec : Prop :=
  ∀ n, P11257561887962219168.a n = A049876 n

theorem P11257561887962219168.correct : P11257561887962219168.Spec := by
  intro n
  simp only [A049876]

end A049876

/-! ## A049876.P2155275902059522983

`ogf((2-x-2x^2+x^3)/(1-2x+x^3-x^4))`
-/

namespace A049876.P2155275902059522983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -2, 1] [1, -2, 0, 1, -1] n

end

end A049876.P2155275902059522983

namespace A049876

/-- `ogf((2-x-2x^2+x^3)/(1-2x+x^3-x^4))` -/
def P2155275902059522983.Spec : Prop :=
  ∀ n, P2155275902059522983.a n = A049876 n

end A049876

/-! ## A049876.P4147010494315754558

`A049875(n)+A049856(n)`
-/

namespace A049876.P4147010494315754558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049875 n + A049856 n

end

end A049876.P4147010494315754558

namespace A049876

/-- `A049875(n)+A049856(n)` -/
def P4147010494315754558.Spec : Prop :=
  ∀ n, P4147010494315754558.a n = A049876 n

end A049876

/-! ## A049876.P14726232257058161682

`A049864(n)+∑[A049864(n)]`
-/

namespace A049876.P14726232257058161682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049876.P14726232257058161682

namespace A049876

/-- `A049864(n)+∑[A049864(n)]` -/
def P14726232257058161682.Spec : Prop :=
  ∀ n, P14726232257058161682.a n = A049876 n

end A049876

/-! ## A049876.P2124488249931475071

`A049866(n)+Δ[A049859(n)]`
-/

namespace A049876.P2124488249931475071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049866 n + (f1 (n + 1) - f1 n)

end

end A049876.P2124488249931475071

namespace A049876

/-- `A049866(n)+Δ[A049859(n)]` -/
def P2124488249931475071.Spec : Prop :=
  ∀ n, P2124488249931475071.a n = A049876 n

end A049876

/-! ## A049876.P18106271538255571819

`A049864(n)+A049858(n+1)`
-/

namespace A049876.P18106271538255571819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049864 n + A049858 (n + 1)

end

end A049876.P18106271538255571819

namespace A049876

/-- `A049864(n)+A049858(n+1)` -/
def P18106271538255571819.Spec : Prop :=
  ∀ n, P18106271538255571819.a n = A049876 n

end A049876

/-! ## A049876.P11980084338467836075

`A049873(n)+A049856(n+1)`
-/

namespace A049876.P11980084338467836075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049873 n + A049856 (n + 1)

end

end A049876.P11980084338467836075

namespace A049876

/-- `A049873(n)+A049856(n+1)` -/
def P11980084338467836075.Spec : Prop :=
  ∀ n, P11980084338467836075.a n = A049876 n

end A049876

/-! ## A049876.P7967380162114565414

`A049861(n+1)-A049856(n)`
-/

namespace A049876.P7967380162114565414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049861 (n + 1) - A049856 n

end

end A049876.P7967380162114565414

namespace A049876

/-- `A049861(n+1)-A049856(n)` -/
def P7967380162114565414.Spec : Prop :=
  ∀ n, P7967380162114565414.a n = A049876 n

end A049876

/-! ## A049876.P7393475765214021441

`A049868(n)+A049856(n+2)`
-/

namespace A049876.P7393475765214021441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049868 n + A049856 (n + 2)

end

end A049876.P7393475765214021441

namespace A049876

/-- `A049868(n)+A049856(n+2)` -/
def P7393475765214021441.Spec : Prop :=
  ∀ n, P7393475765214021441.a n = A049876 n

end A049876

/-! ## A049876.P6757350859101152137

`A049858(n+1)+Δ[A049858(n)]`
-/

namespace A049876.P6757350859101152137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049858 (n + 1) + (f1 (n + 1) - f1 n)

end

end A049876.P6757350859101152137

namespace A049876

/-- `A049858(n+1)+Δ[A049858(n)]` -/
def P6757350859101152137.Spec : Prop :=
  ∀ n, P6757350859101152137.a n = A049876 n

end A049876

/-! ## A049876.P12370761953461640358

`A049870(n)+A049870(n)-A049860(n)`
-/

namespace A049876.P12370761953461640358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049870 n + (A049870 n - A049860 n)

end

end A049876.P12370761953461640358

namespace A049876

/-- `A049870(n)+A049870(n)-A049860(n)` -/
def P12370761953461640358.Spec : Prop :=
  ∀ n, P12370761953461640358.a n = A049876 n

end A049876

/-! ## A049876.P11121750862913413242

`2*A049870(n)-A049860(n)`
-/

namespace A049876.P11121750862913413242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049870 n - A049860 n

end

end A049876.P11121750862913413242

namespace A049876

/-- `2*A049870(n)-A049860(n)` -/
def P11121750862913413242.Spec : Prop :=
  ∀ n, P11121750862913413242.a n = A049876 n

end A049876

/-!
# A049877: a(n) = max(j,k), where u(n) = u(j) + u(k) is the unique sum of Ulam numbers described in A002859 (with 1 <= j < k < n).

The programs for A049877, there is no canonical definition to state claims against.
-/

/-! ## A049877.P2248893966759587998

`A049879(n+3)+A049878(n+3)`
-/

namespace A049877.P2248893966759587998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049879 (n + 3) + A049878 (n + 3)

end

end A049877.P2248893966759587998

/-! ## A049877.P5961025126095323452

`A049821(n+3)-A049878(n+3)`
-/

namespace A049877.P5961025126095323452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049821 (n + 3) - A049878 (n + 3)

end

end A049877.P5961025126095323452

/-! ## A049877.P17871206022864733356

`(A049879(n+3)+A049821(n+3))/2`
-/

namespace A049877.P17871206022864733356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049879 (n + 3) + A049821 (n + 3) : ℚ) / 2

end

end A049877.P17871206022864733356

/-! ## A049877.P16670410154263062465

`A049879(n+3)+A004525(A049821(n+3)-A049879(n+3))`
-/

namespace A049877.P16670410154263062465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049879 (n + 3) + A004525 (A049821 (n + 3) - A049879 (n + 3)).toNat

end

end A049877.P16670410154263062465

/-! ## A049877.P14737467478994781888

`A049879(n+3)+A004526(A049821(n+3)-A049879(n+3))`
-/

namespace A049877.P14737467478994781888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049879 (n + 3) + A004526 (A049821 (n + 3) - A049879 (n + 3)).toNat

end

end A049877.P14737467478994781888

/-! ## A049877.P3210766806121422467

`A049879(n+3)+A026741(A049821(n+3)-A049879(n+3))`
-/

namespace A049877.P3210766806121422467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049879 (n + 3) + A026741 (A049821 (n + 3) - A049879 (n + 3)).toNat

end

end A049877.P3210766806121422467

/-! ## A049877.P15735477469911269979

`A004525(A049879(n+3)+A049821(n+3))`
-/

namespace A049877.P15735477469911269979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A049879 (n + 3) + A049821 (n + 3)).toNat

end

end A049877.P15735477469911269979

/-! ## A049877.P12342087787205609382

`A026741(A049879(n+3)+A049821(n+3))`
-/

namespace A049877.P12342087787205609382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A049879 (n + 3) + A049821 (n + 3)).toNat

end

end A049877.P12342087787205609382

/-! ## A049877.P16000527408993087079

`A110654(A049879(n+3)+A049821(n+3))`
-/

namespace A049877.P16000527408993087079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A049879 (n + 3) + A049821 (n + 3)).toNat

end

end A049877.P16000527408993087079

/-! ## A049877.P16051994956579612925

`A001281(A049879(n+3)+A049821(n+3))`
-/

namespace A049877.P16051994956579612925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A049879 (n + 3) + A049821 (n + 3)).toNat

end

end A049877.P16051994956579612925

/-! ## A049877.P16547476965417956752

`A004526(A049879(n+3)+A049821(n+3))`
-/

namespace A049877.P16547476965417956752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049879 (n + 3) + A049821 (n + 3)).toNat

end

end A049877.P16547476965417956752

/-!
# A049878: a(n) = min(j,k), where u(n) = u(j) + u(k) is the unique sum of Ulam numbers described in A002859 (with 1 <= j < k < n).

The programs for A049878, there is no canonical definition to state claims against.
-/

/-! ## A049878.P12063464075266060898

`A049821(n+3)-A049877(n+3)`
-/

namespace A049878.P12063464075266060898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049821 (n + 3) - A049877 (n + 3)

end

end A049878.P12063464075266060898

/-! ## A049878.P15519283698922460755

`A049877(n+3)-A049879(n+3)`
-/

namespace A049878.P15519283698922460755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049877 (n + 3) - A049879 (n + 3)

end

end A049878.P15519283698922460755

/-! ## A049878.P5365034640246713405

`(A049821(n+3)-A049879(n+3))/2`
-/

namespace A049878.P5365034640246713405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049821 (n + 3) - A049879 (n + 3) : ℚ) / 2

end

end A049878.P5365034640246713405

/-! ## A049878.P17345191812989487849

`A001281(A049821(n+3)-A049879(n+3))`
-/

namespace A049878.P17345191812989487849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A049821 (n + 3) - A049879 (n + 3)).toNat

end

end A049878.P17345191812989487849

/-! ## A049878.P17612232374702491969

`A004525(A049821(n+3)-A049879(n+3))`
-/

namespace A049878.P17612232374702491969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A049821 (n + 3) - A049879 (n + 3)).toNat

end

end A049878.P17612232374702491969

/-! ## A049878.P6849353249334617440

`A004526(A049821(n+3)-A049879(n+3))`
-/

namespace A049878.P6849353249334617440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A049821 (n + 3) - A049879 (n + 3)).toNat

end

end A049878.P6849353249334617440

/-! ## A049878.P3013003057364545912

`A026741(A049821(n+3)-A049879(n+3))`
-/

namespace A049878.P3013003057364545912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A049821 (n + 3) - A049879 (n + 3)).toNat

end

end A049878.P3013003057364545912

/-! ## A049878.P17430753992708979499

`A110654(A049821(n+3)-A049879(n+3))`
-/

namespace A049878.P17430753992708979499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A049821 (n + 3) - A049879 (n + 3)).toNat

end

end A049878.P17430753992708979499

/-!
# A049879: a(n) = |j - k|, where u(n) = u(j) + u(k) is the unique sum of Ulam numbers described in A002859 (with 1 <= j < k < n).

The programs for A049879, there is no canonical definition to state claims against.
-/

/-! ## A049879.P13671950924731188927

`A049877(n+3)-A049878(n+3)`
-/

namespace A049879.P13671950924731188927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049877 (n + 3) - A049878 (n + 3)

end

end A049879.P13671950924731188927

/-! ## A049879.P16448642755420107345

`2*A049877(n+3)-A049821(n+3)`
-/

namespace A049879.P16448642755420107345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049877 (n + 3) - A049821 (n + 3)

end

end A049879.P16448642755420107345

/-! ## A049879.P8975820716397820408

`A049821(n+3)-2*A049878(n+3)`
-/

namespace A049879.P8975820716397820408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049821 (n + 3) - 2 * A049878 (n + 3)

end

end A049879.P8975820716397820408

/-! ## A049879.P4503969214829163510

`A049821(n+3)-A005843(A049878(n+3))`
-/

namespace A049879.P4503969214829163510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049821 (n + 3) - A005843 (A049878 (n + 3)).toNat

end

end A049879.P4503969214829163510

/-! ## A049879.P3527707842447961078

`A005843(A049877(n+3))-A049821(n+3)`
-/

namespace A049879.P3527707842447961078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A049877 (n + 3)).toNat - A049821 (n + 3)

end

end A049879.P3527707842447961078

/-!
# A049880: a(n) is the number of distinct sums of 2 different primes chosen from the first n primes.

The programs for A049880, there is no canonical definition to state claims against.
-/

/-! ## A049880.P5445882190631355185

`A253250(n)+a(n-1)` with `a(0)=1`
-/

namespace A049880.P5445882190631355185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253250 n + a (n - 1)

end

end A049880.P5445882190631355185

/-! ## A049880.P8302721149761522556

`∑[A253250(A028310(n))]-1`
-/

namespace A049880.P8302721149761522556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253250 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A049880.P8302721149761522556

/-! ## A049880.P6419450518826088263

`∑[A253250(n+1)]+1-A253250(n+1)`
-/

namespace A049880.P6419450518826088263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253250 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A253250 (n + 1))

end

end A049880.P6419450518826088263

/-! ## A049880.P13071086339104297197

`∑[A253250(A028310(n))/A054977(n)]`
-/

namespace A049880.P13071086339104297197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253250 (A028310 n).toNat : ℚ) / (A054977 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049880.P13071086339104297197

/-! ## A049880.P1967169755116433720

`∑[A083060(n+2)+1]`
-/

namespace A049880.P1967169755116433720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083060 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049880.P1967169755116433720

/-! ## A049880.P13884638480552253980

`A362882(n+1)+1+n`
-/

namespace A049880.P13884638480552253980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362882 (n + 1) + 1 + (n : ℤ)

end

end A049880.P13884638480552253980

/-!
# A049881: a(n) is the number of distinct sums of 3 different primes chosen from the first n primes.

The programs for A049881, there is no canonical definition to state claims against.
-/

/-! ## A049881.P3156325062600919445

`A109401(A109443(n+1))+floor(3/acot(n))`
-/

namespace A049881.P3156325062600919445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109401 (A109443 (n + 1)).toNat + ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A049881.P3156325062600919445

/-! ## A049881.P16516289975477541834

`A000523(n^4+1)+∑[n+1]`
-/

namespace A049881.P16516289975477541834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n ^ 4 + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A049881.P16516289975477541834

/-! ## A049881.P10622533449549530711

`A070939(A002523(n))+A000096(n)`
-/

namespace A049881.P10622533449549530711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A002523 n).toNat + A000096 n

end

end A049881.P10622533449549530711

/-! ## A049881.P3672192301049679598

`A070939(A059826(n))+A000096(n)`
-/

namespace A049881.P3672192301049679598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A059826 n).toNat + A000096 n

end

end A049881.P3672192301049679598

/-! ## A049881.P3906342794096211519

`A070939(A071253(n))+A000096(n)`
-/

namespace A049881.P3906342794096211519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A071253 n).toNat + A000096 n

end

end A049881.P3906342794096211519

/-!
# A049882: a(n) is the number of distinct sums of 4 different primes chosen from the first n primes.

The programs for A049882, there is no canonical definition to state claims against.
-/

/-! ## A049882.P4740540690918355692

`A024327(A000201(n+4)*A005897(n))`
-/

namespace A049882.P4740540690918355692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024327 (A000201 (n + 4) * A005897 n).toNat

end

end A049882.P4740540690918355692

/-!
# A049883: Primes in the Jacobsthal sequence (A001045).

The programs for A049883, there is no canonical definition to state claims against.
-/

/-! ## A049883.P2772051704475074496

`record[A286567(n+3)]`
-/

namespace A049883.P2772051704475074496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286567 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049883.P2772051704475074496

/-! ## A049883.P6643595180788606472

`A001045(A107036(n+1))`
-/

namespace A049883.P6643595180788606472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (A107036 (n + 1)).toNat

end

end A049883.P6643595180788606472

/-! ## A049883.P16878390410179627026

`A133684(2*A107036(n+1))`
-/

namespace A049883.P16878390410179627026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (2 * A107036 (n + 1)).toNat

end

end A049883.P16878390410179627026

/-! ## A049883.P9158045422100768864

`∏{d}[A107036(n+1), A152046(#)]`
-/

namespace A049883.P9158045422100768864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A152046 d

end

end A049883.P9158045422100768864

/-! ## A049883.P1393768479524686757

`A271314(A107036(2*n+1-n))`
-/

namespace A049883.P1393768479524686757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271314 (A107036 (2 * n + 1 - n)).toNat

end

end A049883.P1393768479524686757

/-!
# A049884: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 3, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n-1 <= 2^(p+1), with a(1) = a(2) = 1.

The programs for A049884, there is no canonical definition to state claims against.
-/

/-! ## A049884.P16125000639289770357

`A049888(n+1)+A049888(n+1)-A049892(n+1)`
-/

namespace A049884.P16125000639289770357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049888 (n + 1) + (A049888 (n + 1) - A049892 (n + 1))

end

end A049884.P16125000639289770357

/-! ## A049884.P12383574014159558049

`A049888(n+1)+A049900(n+1)-A049904(n+1)`
-/

namespace A049884.P12383574014159558049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049888 (n + 1) + (A049900 (n + 1) - A049904 (n + 1))

end

end A049884.P12383574014159558049

/-! ## A049884.P13551835627377924289

`A049900(n+1)+A049900(n+1)-A049916(n+1)`
-/

namespace A049884.P13551835627377924289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049900 (n + 1) + (A049900 (n + 1) - A049916 (n + 1))

end

end A049884.P13551835627377924289

/-! ## A049884.P5183883567948532839

`2*A049888(n+1)-A049892(n+1)`
-/

namespace A049884.P5183883567948532839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049888 (n + 1) - A049892 (n + 1)

end

end A049884.P5183883567948532839

/-! ## A049884.P12362241238897940385

`2*A049900(n+1)-A049916(n+1)`
-/

namespace A049884.P12362241238897940385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049900 (n + 1) - A049916 (n + 1)

end

end A049884.P12362241238897940385

/-! ## A049884.P11846263361214052071

`2*A049904(n+1)-A049924(n+1)`
-/

namespace A049884.P11846263361214052071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049904 (n + 1) - A049924 (n + 1)

end

end A049884.P11846263361214052071

/-!
# A049885: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = a(3) = 1.

The programs for A049885, there is no canonical definition to state claims against.
-/

/-! ## A049885.P3418225991229654199

`A049889(n+1)+A049901(n+1)-A049905(n+1)`
-/

namespace A049885.P3418225991229654199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049889 (n + 1) + (A049901 (n + 1) - A049905 (n + 1))

end

end A049885.P3418225991229654199

/-! ## A049885.P81080819729189825

`A049901(n+1)+A049901(n+1)-A049917(n+1)`
-/

namespace A049885.P81080819729189825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049901 (n + 1) + (A049901 (n + 1) - A049917 (n + 1))

end

end A049885.P81080819729189825

/-! ## A049885.P4528741728499061843

`2*A049889(n+1)-A049893(n+1)`
-/

namespace A049885.P4528741728499061843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049889 (n + 1) - A049893 (n + 1)

end

end A049885.P4528741728499061843

/-! ## A049885.P232231819852216684

`2*A049901(n+1)-A049917(n+1)`
-/

namespace A049885.P232231819852216684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049901 (n + 1) - A049917 (n + 1)

end

end A049885.P232231819852216684

/-! ## A049885.P1240989710254549976

`2*A049905(n+1)-A049925(n+1)`
-/

namespace A049885.P1240989710254549976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049905 (n + 1) - A049925 (n + 1)

end

end A049885.P1240989710254549976

/-! ## A049885.P17875937129341528597

`A049889(n+1)+A049893(n+1)-A049897(n+1)`
-/

namespace A049885.P17875937129341528597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049889 (n + 1) + (A049893 (n + 1) - A049897 (n + 1))

end

end A049885.P17875937129341528597

/-! ## A049885.P15746640669320959586

`A049893(n+1)+A049901(n+1)-A049909(n+1)`
-/

namespace A049885.P15746640669320959586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049893 (n + 1) + (A049901 (n + 1) - A049909 (n + 1))

end

end A049885.P15746640669320959586

/-! ## A049885.P11320958139313565030

`A049897(n+1)+A049901(n+1)-A049913(n+1)`
-/

namespace A049885.P11320958139313565030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049897 (n + 1) + (A049901 (n + 1) - A049913 (n + 1))

end

end A049885.P11320958139313565030

/-!
# A049886: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = a(3) = 1.

The programs for A049886, there is no canonical definition to state claims against.
-/

/-! ## A049886.P14984214965337670492

`A049890(n+1)+A049890(n+1)-A049894(n+1)`
-/

namespace A049886.P14984214965337670492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049890 (n + 1) + (A049890 (n + 1) - A049894 (n + 1))

end

end A049886.P14984214965337670492

/-! ## A049886.P3841801450977336991

`A049890(n+1)+A049902(n+1)-A049906(n+1)`
-/

namespace A049886.P3841801450977336991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049890 (n + 1) + (A049902 (n + 1) - A049906 (n + 1))

end

end A049886.P3841801450977336991

/-! ## A049886.P9048868204352252675

`A049890(n+1)+A049906(n+1)-A049910(n+1)`
-/

namespace A049886.P9048868204352252675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049890 (n + 1) + (A049906 (n + 1) - A049910 (n + 1))

end

end A049886.P9048868204352252675

/-! ## A049886.P10385320046153673387

`A049894(n+1)+A049902(n+1)-A049910(n+1)`
-/

namespace A049886.P10385320046153673387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049894 (n + 1) + (A049902 (n + 1) - A049910 (n + 1))

end

end A049886.P10385320046153673387

/-! ## A049886.P12312185604423345800

`A049902(n+1)+A049902(n+1)-A049918(n+1)`
-/

namespace A049886.P12312185604423345800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049902 (n + 1) + (A049902 (n + 1) - A049918 (n + 1))

end

end A049886.P12312185604423345800

/-! ## A049886.P12596229257706207734

`2*A049890(n+1)-A049894(n+1)`
-/

namespace A049886.P12596229257706207734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049890 (n + 1) - A049894 (n + 1)

end

end A049886.P12596229257706207734

/-! ## A049886.P13038727848278442549

`2*A049902(n+1)-A049918(n+1)`
-/

namespace A049886.P13038727848278442549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049902 (n + 1) - A049918 (n + 1)

end

end A049886.P13038727848278442549

/-!
# A049887: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = a(3) = 1.

The programs for A049887, there is no canonical definition to state claims against.
-/

/-! ## A049887.P7076663577982100375

`2*A049891(n+1)-A049895(n+1)`
-/

namespace A049887.P7076663577982100375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049891 (n + 1) - A049895 (n + 1)

end

end A049887.P7076663577982100375

/-! ## A049887.P2371945793903280747

`floor(A049911(n+1)/A014963(A001316(n)))`
-/

namespace A049887.P2371945793903280747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049911 (n + 1) : ℚ) / (A014963 (A001316 n).toNat : ℚ)⌋

end

end A049887.P2371945793903280747

/-! ## A049887.P3001545214728300123

`floor(A049911(n+1)/A020639(A008574(n)))`
-/

namespace A049887.P3001545214728300123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A049911 (n + 1) : ℚ) / (A020639 (A008574 n).toNat : ℚ)⌋

end

end A049887.P3001545214728300123

/-! ## A049887.P3159312968369905574

`A049911(1-char[2]+n)/A020639(A008574(n))`
-/

namespace A049887.P3159312968369905574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049911 (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (n : ℤ)).toNat : ℚ) / (A020639 (A008574 n).toNat : ℚ)

end

end A049887.P3159312968369905574

/-! ## A049887.P12548183828877144187

`A049891(n+1)+A049903(n+1)-A049907(n+1)`
-/

namespace A049887.P12548183828877144187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049891 (n + 1) + (A049903 (n + 1) - A049907 (n + 1))

end

end A049887.P12548183828877144187

/-! ## A049887.P12293682836763275264

`A049911(n+1)/A049959(n+1)*A049935(n+1)`
-/

namespace A049887.P12293682836763275264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049911 (n + 1) : ℚ) / (A049959 (n + 1) : ℚ) * (A049935 (n + 1) : ℚ)

end

end A049887.P12293682836763275264

/-! ## A049887.P2828291868861034335

`A049911(n+1)/A049911(A049959(n+1)/A049935(n+1))`
-/

namespace A049887.P2828291868861034335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049911 (n + 1) : ℚ) / (A049911 (SequenceMachineLib.roundAway ((A049959 (n + 1) : ℚ) / (A049935 (n + 1) : ℚ))).toNat : ℚ)

end

end A049887.P2828291868861034335

/-!
# A049888: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 2.

The programs for A049888, there is no canonical definition to state claims against.
-/

/-! ## A049888.P5163700349613225630

`A049884(n+1)+A049896(n+1)-A049892(n+1)`
-/

namespace A049888.P5163700349613225630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049884 (n + 1) + (A049896 (n + 1) - A049892 (n + 1))

end

end A049888.P5163700349613225630

/-! ## A049888.P2730405439701472681

`A049904(n+1)+A049904(n+1)-A049920(n+1)`
-/

namespace A049888.P2730405439701472681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049904 (n + 1) + (A049904 (n + 1) - A049920 (n + 1))

end

end A049888.P2730405439701472681

/-! ## A049888.P2531265206986515542

`(A049892(n+1)+A049884(n+1))/2`
-/

namespace A049888.P2531265206986515542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049892 (n + 1) + A049884 (n + 1) : ℚ) / 2

end

end A049888.P2531265206986515542

/-! ## A049888.P15507347038239212533

`2*A049892(n+1)-A049896(n+1)`
-/

namespace A049888.P15507347038239212533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049892 (n + 1) - A049896 (n + 1)

end

end A049888.P15507347038239212533

/-! ## A049888.P17559467889895059154

`2*A049904(n+1)-A049920(n+1)`
-/

namespace A049888.P17559467889895059154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049904 (n + 1) - A049920 (n + 1)

end

end A049888.P17559467889895059154

/-! ## A049888.P16809834218623624887

`2*A049908(n+1)-A049928(n+1)`
-/

namespace A049888.P16809834218623624887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049908 (n + 1) - A049928 (n + 1)

end

end A049888.P16809834218623624887

/-!
# A049889: a(n) = a(1) + a(2) + ... + a(n-1) - a(m), where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 2.

The programs for A049889, there is no canonical definition to state claims against.
-/

/-! ## A049889.P9271899906706103132

`(A049893(n+1)+A049885(n+1))/2`
-/

namespace A049889.P9271899906706103132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049893 (n + 1) + A049885 (n + 1) : ℚ) / 2

end

end A049889.P9271899906706103132

/-! ## A049889.P16248132019836698350

`2*A049905(n+1)-A049921(n+1)`
-/

namespace A049889.P16248132019836698350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049905 (n + 1) - A049921 (n + 1)

end

end A049889.P16248132019836698350

/-! ## A049889.P11762382578256337501

`A049885(n+1)+A049897(n+1)-A049893(n+1)`
-/

namespace A049889.P11762382578256337501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049885 (n + 1) + (A049897 (n + 1) - A049893 (n + 1))

end

end A049889.P11762382578256337501

/-! ## A049889.P442074277176324578

`A049897(n+1)+A049901(n+1)-A049909(n+1)`
-/

namespace A049889.P442074277176324578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049897 (n + 1) + (A049901 (n + 1) - A049909 (n + 1))

end

end A049889.P442074277176324578

/-! ## A049889.P2457313806359360303

`A049885(n+1)+A049921(n+1)-A049917(n+1)`
-/

namespace A049889.P2457313806359360303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049885 (n + 1) + (A049921 (n + 1) - A049917 (n + 1))

end

end A049889.P2457313806359360303

/-! ## A049889.P12364922444778645640

`A049893(n+1)+A049917(n+1)-A049921(n+1)`
-/

namespace A049889.P12364922444778645640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049893 (n + 1) + (A049917 (n + 1) - A049921 (n + 1))

end

end A049889.P12364922444778645640

/-! ## A049889.P10476349696566330700

`A049909(n+1)+A049909(n+1)-A049929(n+1)`
-/

namespace A049889.P10476349696566330700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049909 (n + 1) + (A049909 (n + 1) - A049929 (n + 1))

end

end A049889.P10476349696566330700

/-! ## A049889.P16806639638933969382

`2*A049893(n+1)-A049897(n+1)`
-/

namespace A049889.P16806639638933969382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049893 (n + 1) - A049897 (n + 1)

end

end A049889.P16806639638933969382

/-! ## A049889.P15002964830498422913

`2*A049909(n+1)-A049929(n+1)`
-/

namespace A049889.P15002964830498422913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049909 (n + 1) - A049929 (n + 1)

end

end A049889.P15002964830498422913

/-!
# A049890: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 2.

The programs for A049890, there is no canonical definition to state claims against.
-/

/-! ## A049890.P5136627767805929850

`A049886(n+1)+A049906(n+1)-A049902(n+1)`
-/

namespace A049890.P5136627767805929850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049886 (n + 1) + (A049906 (n + 1) - A049902 (n + 1))

end

end A049890.P5136627767805929850

/-! ## A049890.P8499504343964967262

`A049886(n+1)+A049910(n+1)-A049906(n+1)`
-/

namespace A049890.P8499504343964967262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049886 (n + 1) + (A049910 (n + 1) - A049906 (n + 1))

end

end A049890.P8499504343964967262

/-! ## A049890.P1085879259837162116

`A049894(n+1)+A049902(n+1)-A049906(n+1)`
-/

namespace A049890.P1085879259837162116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049894 (n + 1) + (A049902 (n + 1) - A049906 (n + 1))

end

end A049890.P1085879259837162116

/-! ## A049890.P8924921937068647977

`A049906(n+1)+A049906(n+1)-A049922(n+1)`
-/

namespace A049890.P8924921937068647977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049906 (n + 1) + (A049906 (n + 1) - A049922 (n + 1))

end

end A049890.P8924921937068647977

/-! ## A049890.P6455491204362028870

`(A049894(n+1)+A049886(n+1))/2`
-/

namespace A049890.P6455491204362028870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049894 (n + 1) + A049886 (n + 1) : ℚ) / 2

end

end A049890.P6455491204362028870

/-! ## A049890.P11714889372650306614

`2*A049906(n+1)-A049922(n+1)`
-/

namespace A049890.P11714889372650306614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049906 (n + 1) - A049922 (n + 1)

end

end A049890.P11714889372650306614

/-!
# A049891: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 2.

The programs for A049891, there is no canonical definition to state claims against.
-/

/-! ## A049891.P6214683657059958714

`(A049895(n+1)+A049887(n+1))/2`
-/

namespace A049891.P6214683657059958714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049895 (n + 1) + A049887 (n + 1) : ℚ) / 2

end

end A049891.P6214683657059958714

/-! ## A049891.P7312926454706231824

`A049887(n+1)+A049899(n+1)-A049895(n+1)`
-/

namespace A049891.P7312926454706231824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049887 (n + 1) + (A049899 (n + 1) - A049895 (n + 1))

end

end A049891.P7312926454706231824

/-! ## A049891.P12893879670344774350

`A049887(n+1)+A049907(n+1)-A049903(n+1)`
-/

namespace A049891.P12893879670344774350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049887 (n + 1) + (A049907 (n + 1) - A049903 (n + 1))

end

end A049891.P12893879670344774350

/-! ## A049891.P16295082350010745928

`A049895(n+1)+A049903(n+1)-A049907(n+1)`
-/

namespace A049891.P16295082350010745928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049895 (n + 1) + (A049903 (n + 1) - A049907 (n + 1))

end

end A049891.P16295082350010745928

/-! ## A049891.P1960441922178584068

`A049907(n+1)+A049907(n+1)-A049923(n+1)`
-/

namespace A049891.P1960441922178584068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049907 (n + 1) + (A049907 (n + 1) - A049923 (n + 1))

end

end A049891.P1960441922178584068

/-! ## A049891.P12768965921932714080

`2*A049895(n+1)-A049899(n+1)`
-/

namespace A049891.P12768965921932714080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049895 (n + 1) - A049899 (n + 1)

end

end A049891.P12768965921932714080

/-! ## A049891.P17991539880774233757

`2*A049907(n+1)-A049923(n+1)`
-/

namespace A049891.P17991539880774233757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049907 (n + 1) - A049923 (n + 1)

end

end A049891.P17991539880774233757

/-!
# A049892: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 3.

The programs for A049892, there is no canonical definition to state claims against.
-/

/-! ## A049892.P16383710309170329742

`A049884(n+1)+A049896(n+1)-A049888(n+1)`
-/

namespace A049892.P16383710309170329742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049884 (n + 1) + (A049896 (n + 1) - A049888 (n + 1))

end

end A049892.P16383710309170329742

/-! ## A049892.P3377048764156011075

`A049888(n+1)+A049904(n+1)-A049900(n+1)`
-/

namespace A049892.P3377048764156011075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049888 (n + 1) + (A049904 (n + 1) - A049900 (n + 1))

end

end A049892.P3377048764156011075

/-! ## A049892.P6755951898708512319

`A049904(n+1)+A049904(n+1)-A049916(n+1)`
-/

namespace A049892.P6755951898708512319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049904 (n + 1) + (A049904 (n + 1) - A049916 (n + 1))

end

end A049892.P6755951898708512319

/-! ## A049892.P14678329010778224296

`2*A049888(n+1)-A049884(n+1)`
-/

namespace A049892.P14678329010778224296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049888 (n + 1) - A049884 (n + 1)

end

end A049892.P14678329010778224296

/-! ## A049892.P4778233141693364666

`(A049896(n+1)+A049888(n+1))/2`
-/

namespace A049892.P4778233141693364666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049896 (n + 1) + A049888 (n + 1) : ℚ) / 2

end

end A049892.P4778233141693364666

/-! ## A049892.P17220432704455516696

`2*A049904(n+1)-A049916(n+1)`
-/

namespace A049892.P17220432704455516696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049904 (n + 1) - A049916 (n + 1)

end

end A049892.P17220432704455516696

/-! ## A049892.P9720930369709815723

`2*A049908(n+1)-A049924(n+1)`
-/

namespace A049892.P9720930369709815723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049908 (n + 1) - A049924 (n + 1)

end

end A049892.P9720930369709815723

/-!
# A049893: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 3.

The programs for A049893, there is no canonical definition to state claims against.
-/

/-! ## A049893.P4242378057977554747

`2*A049889(n+1)-A049885(n+1)`
-/

namespace A049893.P4242378057977554747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049889 (n + 1) - A049885 (n + 1)

end

end A049893.P4242378057977554747

/-! ## A049893.P11415852645925779723

`2*A049905(n+1)-A049917(n+1)`
-/

namespace A049893.P11415852645925779723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049905 (n + 1) - A049917 (n + 1)

end

end A049893.P11415852645925779723

/-! ## A049893.P13892639431922553185

`A049885(n+1)+A049897(n+1)-A049889(n+1)`
-/

namespace A049893.P13892639431922553185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049885 (n + 1) + (A049897 (n + 1) - A049889 (n + 1))

end

end A049893.P13892639431922553185

/-! ## A049893.P13943442939237209937

`A049885(n+1)+A049909(n+1)-A049901(n+1)`
-/

namespace A049893.P13943442939237209937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049885 (n + 1) + (A049909 (n + 1) - A049901 (n + 1))

end

end A049893.P13943442939237209937

/-! ## A049893.P7471461500273567988

`A049889(n+1)+A049905(n+1)-A049901(n+1)`
-/

namespace A049893.P7471461500273567988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049889 (n + 1) + (A049905 (n + 1) - A049901 (n + 1))

end

end A049893.P7471461500273567988

/-! ## A049893.P10742456240643685923

`A049897(n+1)+A049917(n+1)-A049921(n+1)`
-/

namespace A049893.P10742456240643685923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049897 (n + 1) + (A049917 (n + 1) - A049921 (n + 1))

end

end A049893.P10742456240643685923

/-! ## A049893.P15346414520139213447

`A049901(n+1)+A049913(n+1)-A049921(n+1)`
-/

namespace A049893.P15346414520139213447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049901 (n + 1) + (A049913 (n + 1) - A049921 (n + 1))

end

end A049893.P15346414520139213447

/-! ## A049893.P583292154642788970

`A049909(n+1)+A049909(n+1)-A049925(n+1)`
-/

namespace A049893.P583292154642788970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049909 (n + 1) + (A049909 (n + 1) - A049925 (n + 1))

end

end A049893.P583292154642788970

/-! ## A049893.P1871208686709453986

`(A049897(n+1)+A049889(n+1))/2`
-/

namespace A049893.P1871208686709453986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049897 (n + 1) + A049889 (n + 1) : ℚ) / 2

end

end A049893.P1871208686709453986

/-! ## A049893.P7093445482272355130

`2*A049909(n+1)-A049925(n+1)`
-/

namespace A049893.P7093445482272355130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049909 (n + 1) - A049925 (n + 1)

end

end A049893.P7093445482272355130

/-!
# A049894: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 3.

The programs for A049894, there is no canonical definition to state claims against.
-/

/-! ## A049894.P17901114151674904642

`A049890(n+1)+A049890(n+1)-A049886(n+1)`
-/

namespace A049894.P17901114151674904642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049890 (n + 1) + (A049890 (n + 1) - A049886 (n + 1))

end

end A049894.P17901114151674904642

/-! ## A049894.P6465236832754311914

`A049886(n+1)+A049910(n+1)-A049902(n+1)`
-/

namespace A049894.P6465236832754311914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049886 (n + 1) + (A049910 (n + 1) - A049902 (n + 1))

end

end A049894.P6465236832754311914

/-! ## A049894.P7496796103774855433

`A049890(n+1)+A049906(n+1)-A049902(n+1)`
-/

namespace A049894.P7496796103774855433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049890 (n + 1) + (A049906 (n + 1) - A049902 (n + 1))

end

end A049894.P7496796103774855433

/-! ## A049894.P1247796466260431952

`A049890(n+1)+A049910(n+1)-A049906(n+1)`
-/

namespace A049894.P1247796466260431952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049890 (n + 1) + (A049910 (n + 1) - A049906 (n + 1))

end

end A049894.P1247796466260431952

/-! ## A049894.P8815118129966588704

`A049906(n+1)+A049906(n+1)-A049918(n+1)`
-/

namespace A049894.P8815118129966588704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049906 (n + 1) + (A049906 (n + 1) - A049918 (n + 1))

end

end A049894.P8815118129966588704

/-! ## A049894.P18251230973494040836

`2*A049890(n+1)-A049886(n+1)`
-/

namespace A049894.P18251230973494040836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049890 (n + 1) - A049886 (n + 1)

end

end A049894.P18251230973494040836

/-! ## A049894.P13933654671482426831

`2*A049906(n+1)-A049918(n+1)`
-/

namespace A049894.P13933654671482426831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049906 (n + 1) - A049918 (n + 1)

end

end A049894.P13933654671482426831

/-!
# A049895: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 3.

The programs for A049895, there is no canonical definition to state claims against.
-/

/-! ## A049895.P3686857621272387052

`2*A049891(n+1)-A049887(n+1)`
-/

namespace A049895.P3686857621272387052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049891 (n + 1) - A049887 (n + 1)

end

end A049895.P3686857621272387052

/-! ## A049895.P14544229635514993220

`A049887(n+1)+A049899(n+1)-A049891(n+1)`
-/

namespace A049895.P14544229635514993220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049887 (n + 1) + (A049899 (n + 1) - A049891 (n + 1))

end

end A049895.P14544229635514993220

/-! ## A049895.P9032140519055317122

`A049891(n+1)+A049907(n+1)-A049903(n+1)`
-/

namespace A049895.P9032140519055317122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049891 (n + 1) + (A049907 (n + 1) - A049903 (n + 1))

end

end A049895.P9032140519055317122

/-! ## A049895.P7261240633846194150

`A049907(n+1)+A049907(n+1)-A049919(n+1)`
-/

namespace A049895.P7261240633846194150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049907 (n + 1) + (A049907 (n + 1) - A049919 (n + 1))

end

end A049895.P7261240633846194150

/-! ## A049895.P6282238010439146957

`A049911(n+1)+A049911(n+1)-A049927(n+1)`
-/

namespace A049895.P6282238010439146957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049911 (n + 1) + (A049911 (n + 1) - A049927 (n + 1))

end

end A049895.P6282238010439146957

/-! ## A049895.P8936776588784162246

`(A049899(n+1)+A049891(n+1))/2`
-/

namespace A049895.P8936776588784162246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049899 (n + 1) + A049891 (n + 1) : ℚ) / 2

end

end A049895.P8936776588784162246

/-! ## A049895.P7227284285962324688

`2*A049907(n+1)-A049919(n+1)`
-/

namespace A049895.P7227284285962324688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049907 (n + 1) - A049919 (n + 1)

end

end A049895.P7227284285962324688

/-! ## A049895.P11290867320936530654

`2*A049911(n+1)-A049927(n+1)`
-/

namespace A049895.P11290867320936530654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049911 (n + 1) - A049927 (n + 1)

end

end A049895.P11290867320936530654

/-!
# A049896: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 3 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 4.

The programs for A049896, there is no canonical definition to state claims against.
-/

/-! ## A049896.P4215699752075452556

`A049888(n+1)+A049892(n+1)-A049884(n+1)`
-/

namespace A049896.P4215699752075452556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049888 (n + 1) + (A049892 (n + 1) - A049884 (n + 1))

end

end A049896.P4215699752075452556

/-! ## A049896.P17977706022337419870

`A049884(n+1)+A049912(n+1)-A049900(n+1)`
-/

namespace A049896.P17977706022337419870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049884 (n + 1) + (A049912 (n + 1) - A049900 (n + 1))

end

end A049896.P17977706022337419870

/-! ## A049896.P8558585421746877703

`A049908(n+1)+A049908(n+1)-A049920(n+1)`
-/

namespace A049896.P8558585421746877703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049908 (n + 1) + (A049908 (n + 1) - A049920 (n + 1))

end

end A049896.P8558585421746877703

/-! ## A049896.P10486064056347055588

`2*A049892(n+1)-A049888(n+1)`
-/

namespace A049896.P10486064056347055588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049892 (n + 1) - A049888 (n + 1)

end

end A049896.P10486064056347055588

/-! ## A049896.P5897127230887457451

`2*A049908(n+1)-A049920(n+1)`
-/

namespace A049896.P5897127230887457451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049908 (n + 1) - A049920 (n + 1)

end

end A049896.P5897127230887457451

/-! ## A049896.P1153562819769510268

`2*A049912(n+1)-A049928(n+1)`
-/

namespace A049896.P1153562819769510268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049912 (n + 1) - A049928 (n + 1)

end

end A049896.P1153562819769510268

/-!
# A049897: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2^(p+1) + 2 - n and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 4.

The programs for A049897, there is no canonical definition to state claims against.
-/

/-! ## A049897.P7670944536990491050

`A049889(n+1)+A049893(n+1)-A049885(n+1)`
-/

namespace A049897.P7670944536990491050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049889 (n + 1) + (A049893 (n + 1) - A049885 (n + 1))

end

end A049897.P7670944536990491050

/-! ## A049897.P3675679858527174997

`A049885(n+1)+A049913(n+1)-A049901(n+1)`
-/

namespace A049897.P3675679858527174997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049885 (n + 1) + (A049913 (n + 1) - A049901 (n + 1))

end

end A049897.P3675679858527174997

/-! ## A049897.P17560773718427311192

`A049893(n+1)+A049921(n+1)-A049917(n+1)`
-/

namespace A049897.P17560773718427311192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049893 (n + 1) + (A049921 (n + 1) - A049917 (n + 1))

end

end A049897.P17560773718427311192

/-! ## A049897.P9119636766326543604

`A049901(n+1)+A049913(n+1)-A049917(n+1)`
-/

namespace A049897.P9119636766326543604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049901 (n + 1) + (A049913 (n + 1) - A049917 (n + 1))

end

end A049897.P9119636766326543604

/-! ## A049897.P983812478242451300

`A049909(n+1)+A049909(n+1)-A049921(n+1)`
-/

namespace A049897.P983812478242451300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049909 (n + 1) + (A049909 (n + 1) - A049921 (n + 1))

end

end A049897.P983812478242451300

/-! ## A049897.P2736420746575524280

`A049913(n+1)+A049913(n+1)-A049929(n+1)`
-/

namespace A049897.P2736420746575524280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049913 (n + 1) + (A049913 (n + 1) - A049929 (n + 1))

end

end A049897.P2736420746575524280

/-! ## A049897.P14118274962193851709

`2*A049893(n+1)-A049889(n+1)`
-/

namespace A049897.P14118274962193851709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049893 (n + 1) - A049889 (n + 1)

end

end A049897.P14118274962193851709

/-! ## A049897.P10142911803116335461

`2*A049909(n+1)-A049921(n+1)`
-/

namespace A049897.P10142911803116335461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049909 (n + 1) - A049921 (n + 1)

end

end A049897.P10142911803116335461

/-! ## A049897.P2801952060751945243

`2*A049913(n+1)-A049929(n+1)`
-/

namespace A049897.P2801952060751945243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049913 (n + 1) - A049929 (n + 1)

end

end A049897.P2801952060751945243

/-!
# A049898: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = n - 1 - 2^p and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 4.

The programs for A049898, there is no canonical definition to state claims against.
-/

/-! ## A049898.P10006182385128172548

`2*A049894(n+1)-A049890(n+1)`
-/

namespace A049898.P10006182385128172548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049894 (n + 1) - A049890 (n + 1)

end

end A049898.P10006182385128172548

/-! ## A049898.P17761515354354962221

`2*A049910(n+1)-A049922(n+1)`
-/

namespace A049898.P17761515354354962221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049910 (n + 1) - A049922 (n + 1)

end

end A049898.P17761515354354962221

/-! ## A049898.P4922888239642068430

`A049890(n+1)+A049894(n+1)-A049886(n+1)`
-/

namespace A049898.P4922888239642068430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049890 (n + 1) + (A049894 (n + 1) - A049886 (n + 1))

end

end A049898.P4922888239642068430

/-! ## A049898.P11784192442341188820

`A049886(n+1)+A049914(n+1)-A049902(n+1)`
-/

namespace A049898.P11784192442341188820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049886 (n + 1) + (A049914 (n + 1) - A049902 (n + 1))

end

end A049898.P11784192442341188820

/-! ## A049898.P16284898325558954756

`A049890(n+1)+A049910(n+1)-A049902(n+1)`
-/

namespace A049898.P16284898325558954756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049890 (n + 1) + (A049910 (n + 1) - A049902 (n + 1))

end

end A049898.P16284898325558954756

/-! ## A049898.P14653000969209958881

`A049894(n+1)+A049906(n+1)-A049902(n+1)`
-/

namespace A049898.P14653000969209958881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049894 (n + 1) + (A049906 (n + 1) - A049902 (n + 1))

end

end A049898.P14653000969209958881

/-! ## A049898.P7379929230820969350

`A049914(n+1)+A049914(n+1)-A049930(n+1)`
-/

namespace A049898.P7379929230820969350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049914 (n + 1) + (A049914 (n + 1) - A049930 (n + 1))

end

end A049898.P7379929230820969350

/-! ## A049898.P15882560291352415359

`2*A049914(n+1)-A049930(n+1)`
-/

namespace A049898.P15882560291352415359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049914 (n + 1) - A049930 (n + 1)

end

end A049898.P15882560291352415359

/-!
# A049899: a(n) = a(1) + a(2) + ... + a(n-1) - a(m) for n >= 4, where m = 2*n - 2 - 2^(p+1) and p is the unique integer such that 2^p < n - 1 <= 2^(p+1), starting with a(1) = a(2) = 1 and a(3) = 4.

The programs for A049899, there is no canonical definition to state claims against.
-/

/-! ## A049899.P8489492852812409332

`A049891(n+1)+A049895(n+1)-A049887(n+1)`
-/

namespace A049899.P8489492852812409332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049891 (n + 1) + (A049895 (n + 1) - A049887 (n + 1))

end

end A049899.P8489492852812409332

/-! ## A049899.P593016239198521079

`A049891(n+1)+A049911(n+1)-A049903(n+1)`
-/

namespace A049899.P593016239198521079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049891 (n + 1) + (A049911 (n + 1) - A049903 (n + 1))

end

end A049899.P593016239198521079

/-! ## A049899.P1947938328434427321

`A049895(n+1)+A049907(n+1)-A049903(n+1)`
-/

namespace A049899.P1947938328434427321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049895 (n + 1) + (A049907 (n + 1) - A049903 (n + 1))

end

end A049899.P1947938328434427321

/-! ## A049899.P8682597855932786861

`A049911(n+1)+A049911(n+1)-A049923(n+1)`
-/

namespace A049899.P8682597855932786861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049911 (n + 1) + (A049911 (n + 1) - A049923 (n + 1))

end

end A049899.P8682597855932786861

/-! ## A049899.P7963878827680549371

`2*A049895(n+1)-A049891(n+1)`
-/

namespace A049899.P7963878827680549371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049895 (n + 1) - A049891 (n + 1)

end

end A049899.P7963878827680549371

/-! ## A049899.P8937767281912915899

`2*A049911(n+1)-A049923(n+1)`
-/

namespace A049899.P8937767281912915899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049911 (n + 1) - A049923 (n + 1)

end

end A049899.P8937767281912915899

