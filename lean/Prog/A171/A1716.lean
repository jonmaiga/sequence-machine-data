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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A171600: Primes of the form floor(T/8) where T is a triangular number.

The programs for A171600, the canonical program `A171600.P2984509290535315603` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171600 has offset 1).

The definition of A171600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171600.P2984509290535315603

`p?[floor(∑[n/8])]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A171600

/-- `p?[floor(∑[n/8])]` -/
def P2984509290535315603.Spec : Prop :=
  ∀ n, P2984509290535315603.a n = A171600 (n + 1)

theorem P2984509290535315603.correct : P2984509290535315603.Spec := by
  intro n
  simp only [A171600, Nat.add_sub_cancel]

end A171600

/-! ## A171600.P4952407955425390419

`p?[A011869(n)]%A252352(n+1)`
-/

namespace A171600.P4952407955425390419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011869 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A252352 (n + 1))

end

end A171600.P4952407955425390419

namespace A171600

/-- `p?[A011869(n)]%A252352(n+1)` -/
def P4952407955425390419.Spec : Prop :=
  ∀ n, P4952407955425390419.a n = A171600 (n + 1)

end A171600

/-! ## A171600.P8536323749109979367

`p?[floor(A000217(n)/8)]%A016936(n)`
-/

namespace A171600.P8536323749109979367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 n : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016936 n)

end

end A171600.P8536323749109979367

namespace A171600

/-- `p?[floor(A000217(n)/8)]%A016936(n)` -/
def P8536323749109979367.Spec : Prop :=
  ∀ n, P8536323749109979367.a n = A171600 (n + 1)

end A171600

/-! ## A171600.P15687988173016232705

`A020985(n)²*p?[floor(A000217(n)/8)]`
-/

namespace A171600.P15687988173016232705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 n : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171600.P15687988173016232705

namespace A171600

/-- `A020985(n)²*p?[floor(A000217(n)/8)]` -/
def P15687988173016232705.Spec : Prop :=
  ∀ n, P15687988173016232705.a n = A171600 (n + 1)

end A171600

/-! ## A171600.P12734544811136711419

`A033999(n)²*p?[floor(A000217(n)/8)]`
-/

namespace A171600.P12734544811136711419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 n : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171600.P12734544811136711419

namespace A171600

/-- `A033999(n)²*p?[floor(A000217(n)/8)]` -/
def P12734544811136711419.Spec : Prop :=
  ∀ n, P12734544811136711419.a n = A171600 (n + 1)

end A171600

/-! ## A171600.P11298056184060116752

`A000035(2*n)+p?[floor(A000217(n)/8)]`
-/

namespace A171600.P11298056184060116752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 n : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171600.P11298056184060116752

namespace A171600

/-- `A000035(2*n)+p?[floor(A000217(n)/8)]` -/
def P11298056184060116752.Spec : Prop :=
  ∀ n, P11298056184060116752.a n = A171600 (n + 1)

end A171600

/-! ## A171600.P12621460293515376280

`A071936(n+1)²*p?[floor(A000217(n)/8)]`
-/

namespace A171600.P12621460293515376280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 n : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071936 (n + 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171600.P12621460293515376280

namespace A171600

/-- `A071936(n+1)²*p?[floor(A000217(n)/8)]` -/
def P12621460293515376280.Spec : Prop :=
  ∀ n, P12621460293515376280.a n = A171600 (n + 1)

end A171600

/-! ## A171600.P6495389144994058384

`(1-2*A000035(n))²*p?[floor(A000217(n)/8)]`
-/

namespace A171600.P6495389144994058384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 n : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) ^ 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171600.P6495389144994058384

namespace A171600

/-- `(1-2*A000035(n))²*p?[floor(A000217(n)/8)]` -/
def P6495389144994058384.Spec : Prop :=
  ∀ n, P6495389144994058384.a n = A171600 (n + 1)

end A171600

/-! ## A171600.P15910069355236121981

`A033677(p?[floor(A000217(n)/8)])`
-/

namespace A171600.P15910069355236121981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000217 n : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A171600.P15910069355236121981

namespace A171600

/-- `A033677(p?[floor(A000217(n)/8)])` -/
def P15910069355236121981.Spec : Prop :=
  ∀ n, P15910069355236121981.a n = A171600 (n + 1)

end A171600

/-!
# A171602: Lesser of two consecutive primes such that half-sums are semiprimes.

The programs for A171602, there is no canonical definition to state claims against.
-/

/-! ## A171602.P16490818105877586428

`A002374(A078443(n+1))`
-/

namespace A171602.P16490818105877586428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (A078443 (n + 1)).toNat

end

end A171602.P16490818105877586428

/-! ## A171602.P17048663302894029813

`A055377(A105936(n+1))`
-/

namespace A171602.P17048663302894029813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A105936 (n + 1)).toNat

end

end A171602.P17048663302894029813

/-! ## A171602.P1438863317530288263

`A136548(A078443(n+1)+1)`
-/

namespace A171602.P1438863317530288263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A078443 (n + 1) + 1).toNat

end

end A171602.P1438863317530288263

/-! ## A171602.P6357859123121552419

`A007917(A078443(n+1)-1)`
-/

namespace A171602.P6357859123121552419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A078443 (n + 1) - 1).toNat

end

end A171602.P6357859123121552419

/-! ## A171602.P13798015828495641313

`A055377(2*A078443(n+1))`
-/

namespace A171602.P13798015828495641313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (2 * A078443 (n + 1)).toNat

end

end A171602.P13798015828495641313

/-! ## A171602.P17440963693310176353

`A002374(A105936(n+1)/2)`
-/

namespace A171602.P17440963693310176353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 (SequenceMachineLib.roundAway ((A105936 (n + 1) : ℚ) / 2)).toNat

end

end A171602.P17440963693310176353

/-! ## A171602.P11487738057408447954

`A007917(A105936(n+1)/2)`
-/

namespace A171602.P11487738057408447954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (SequenceMachineLib.roundAway ((A105936 (n + 1) : ℚ) / 2)).toNat

end

end A171602.P11487738057408447954

/-! ## A171602.P10967001255975656665

`∪[A137125(n+1), A171603(n+1)]`
-/

namespace A171602.P10967001255975656665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171602.P10967001255975656665

/-! ## A171602.P960468008069463169

`∪[A171603(n+1), A257924(n+1)]`
-/

namespace A171602.P960468008069463169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171602.P960468008069463169

/-!
# A171603: Lesser of two consecutive primes such that half-sums are product of two distinct primes.

The programs for A171603, there is no canonical definition to state claims against.
-/

/-! ## A171603.P17317984473652896188

`A063934(eq[4, A000005(A063934(n+1))])`
-/

namespace A171603.P17317984473652896188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A063934 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063934 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171603.P17317984473652896188

/-! ## A171603.P14293821916970444651

`record[A254862(A105936(n+1)%A339775(n+1))]`
-/

namespace A171603.P14293821916970444651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254862 (Int.tmod (A105936 (n + 1)) (A339775 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171603.P14293821916970444651

/-! ## A171603.P5051565817694082715

`A171602(ceil(sqrt(∑[2*n]))+2)`
-/

namespace A171603.P5051565817694082715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171602 (⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ + 2).toNat

end

end A171603.P5051565817694082715

/-! ## A171603.P7371630357692414777

`record[A171602(ceil((n+3)/a(n-1)))]` with `a(0)=5, a(1)=2, a(2)=-1, a(3)=1, a(4)=2`
-/

namespace A171603.P7371630357692414777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 2, -1, 1, 2] fun n f1 =>
  A171602 ⌈(n + 3 : ℚ) / (f1 (n - 1) : ℚ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171603.P7371630357692414777

/-! ## A171603.P6506033394513485430

`record[A171602(A052938(n)+1)]`
-/

namespace A171603.P6506033394513485430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171602 (A052938 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171603.P6506033394513485430

/-! ## A171603.P13899144565028458981

`filter[A171602(n+1), A272664(#)]`
-/

namespace A171603.P13899144565028458981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171602 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A272664 (f1 j).toNat = 1) n)

end

end A171603.P13899144565028458981

/-! ## A171603.P3387839619486829318

`filter[A171602(n+2), A095792(#)]`
-/

namespace A171603.P3387839619486829318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095792 (f1 j).toNat = 1) n)

end

end A171603.P3387839619486829318

/-! ## A171603.P9422849337439700681

`filter[A171602(n+2), A109720(#)]`
-/

namespace A171603.P9422849337439700681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A171603.P9422849337439700681

/-! ## A171603.P5623864582672402418

`filter[A171602(n+2), A209198(#)]`
-/

namespace A171603.P5623864582672402418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209198 (f1 j).toNat = 1) n)

end

end A171603.P5623864582672402418

/-! ## A171603.P10133154185647719851

`filter[A171602(n+2), A288132(#)]`
-/

namespace A171603.P10133154185647719851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171602 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288132 (f1 j).toNat = 1) n)

end

end A171603.P10133154185647719851

/-!
# A171608: Triangle by columns, T(n,k); (..., n, (n+1)) preceded by (n-1) zeros, as an infinite lower triangular matrix.

The programs for A171608, the canonical program `A171608.P14025582836431070738` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171608 has offset 1).

The definition of A171608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171608.P4449849143767139222

`∑[char[C(2*n, 2)]]*Δ[floor(sqrt(2*n))]`
-/

namespace A171608.P4449849143767139222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

end

end A171608.P4449849143767139222

namespace A171608

/-- `∑[char[C(2*n, 2)]]*Δ[floor(sqrt(2*n))]` -/
def P4449849143767139222.Spec : Prop :=
  ∀ n, P4449849143767139222.a n = A171608 (n + 1)

end A171608

/-! ## A171608.P3554901936113607608

`(C(comp[∑[n]]-n, 2)-n)*Δ[floor(sqrt(2*n))]`
-/

namespace A171608.P3554901936113607608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

end

end A171608.P3554901936113607608

namespace A171608

/-- `(C(comp[∑[n]]-n, 2)-n)*Δ[floor(sqrt(2*n))]` -/
def P3554901936113607608.Spec : Prop :=
  ∀ n, P3554901936113607608.a n = A171608 (n + 1)

end A171608

/-! ## A171608.P10576715266784900357

`C(col(n)+1, row(n)-col(n))*C(row(n)-col(n)+1, col(n)+1)`
-/

namespace A171608.P10576715266784900357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n + 1) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat * Nat.choose ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat (SequenceMachineLib.triCol n + 1)

end

end A171608.P10576715266784900357

namespace A171608

/-- `C(col(n)+1, row(n)-col(n))*C(row(n)-col(n)+1, col(n)+1)` -/
def P10576715266784900357.Spec : Prop :=
  ∀ n, (P10576715266784900357.a n : ℤ) = A171608 (n + 1)

end A171608

/-! ## A171608.P14025582836431070738

`ceil((Δ[A278818(n)]+1)/4)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A171608

/-- `ceil((Δ[A278818(n)]+1)/4)` -/
def P14025582836431070738.Spec : Prop :=
  ∀ n, P14025582836431070738.a n = A171608 (n + 1)

theorem P14025582836431070738.correct : P14025582836431070738.Spec := by
  intro n
  simp only [A171608, Nat.add_sub_cancel]

end A171608

/-! ## A171608.P10348221106571596893

`abs(Δ[A027656(floor(sqrt(2*n)))])`
-/

namespace A171608.P10348221106571596893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (Nat.sqrt (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A171608.P10348221106571596893

namespace A171608

/-- `abs(Δ[A027656(floor(sqrt(2*n)))])` -/
def P10348221106571596893.Spec : Prop :=
  ∀ n, P10348221106571596893.a n = A171608 (n + 1)

end A171608

/-! ## A171608.P16974130230208098390

`Δ[A024206(floor(sqrt(2*n))+1)]`
-/

namespace A171608.P16974130230208098390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 (Nat.sqrt (2 * n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171608.P16974130230208098390

namespace A171608

/-- `Δ[A024206(floor(sqrt(2*n))+1)]` -/
def P16974130230208098390.Spec : Prop :=
  ∀ n, P16974130230208098390.a n = A171608 (n + 1)

end A171608

/-! ## A171608.P12619006275939454407

`Δ[A002620(floor(sqrt(2*n))+2)]`
-/

namespace A171608.P12619006275939454407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (Nat.sqrt (2 * n) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171608.P12619006275939454407

namespace A171608

/-- `Δ[A002620(floor(sqrt(2*n))+2)]` -/
def P12619006275939454407.Spec : Prop :=
  ∀ n, P12619006275939454407.a n = A171608 (n + 1)

end A171608

/-! ## A171608.P3756338066187916318

`Δ[A033638(floor(sqrt(2*n))+2)]`
-/

namespace A171608.P3756338066187916318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (Nat.sqrt (2 * n) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171608.P3756338066187916318

namespace A171608

/-- `Δ[A033638(floor(sqrt(2*n))+2)]` -/
def P3756338066187916318.Spec : Prop :=
  ∀ n, P3756338066187916318.a n = A171608 (n + 1)

end A171608

/-! ## A171608.P11723141054057881802

`Δ[A087811(ceil(sqrt(2*n+1)))]`
-/

namespace A171608.P11723141054057881802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 ⌈Real.sqrt (2 * n + 1 : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171608.P11723141054057881802

namespace A171608

/-- `Δ[A087811(ceil(sqrt(2*n+1)))]` -/
def P11723141054057881802.Spec : Prop :=
  ∀ n, P11723141054057881802.a n = A171608 (n + 1)

end A171608

/-! ## A171608.P4757073702380767617

`Δ[floor(sqrt(2*n))]*A004736(n+1)`
-/

namespace A171608.P4757073702380767617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A004736 (n + 1)

end

end A171608.P4757073702380767617

namespace A171608

/-- `Δ[floor(sqrt(2*n))]*A004736(n+1)` -/
def P4757073702380767617.Spec : Prop :=
  ∀ n, P4757073702380767617.a n = A171608 (n + 1)

end A171608

/-! ## A171608.P14957612675483471900

`Δ[floor(sqrt(2*n))]*A051125(n+1)`
-/

namespace A171608.P14957612675483471900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A051125 (n + 1)

end

end A171608.P14957612675483471900

namespace A171608

/-- `Δ[floor(sqrt(2*n))]*A051125(n+1)` -/
def P14957612675483471900.Spec : Prop :=
  ∀ n, P14957612675483471900.a n = A171608 (n + 1)

end A171608

/-! ## A171608.P9808543582061833828

`lcm(Δ[A122950(n)], A209599(n))`
-/

namespace A171608.P9808543582061833828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A209599 n)

end

end A171608.P9808543582061833828

namespace A171608

/-- `lcm(Δ[A122950(n)], A209599(n))` -/
def P9808543582061833828.Spec : Prop :=
  ∀ n, (P9808543582061833828.a n : ℤ) = A171608 (n + 1)

end A171608

/-! ## A171608.P5161724824603749329

`A004736(n+1)*A216230(n)`
-/

namespace A171608.P5161724824603749329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A216230 n

end

end A171608.P5161724824603749329

namespace A171608

/-- `A004736(n+1)*A216230(n)` -/
def P5161724824603749329.Spec : Prop :=
  ∀ n, P5161724824603749329.a n = A171608 (n + 1)

end A171608

/-! ## A171608.P5023691538433033858

`A030528(n+1)*A209599(n)`
-/

namespace A171608.P5023691538433033858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030528 (n + 1) * A209599 n

end

end A171608.P5023691538433033858

namespace A171608

/-- `A030528(n+1)*A209599(n)` -/
def P5023691538433033858.Spec : Prop :=
  ∀ n, P5023691538433033858.a n = A171608 (n + 1)

end A171608

/-! ## A171608.P7172873754976976378

`A051125(n+1)*A216230(n)`
-/

namespace A171608.P7172873754976976378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051125 (n + 1) * A216230 n

end

end A171608.P7172873754976976378

namespace A171608

/-- `A051125(n+1)*A216230(n)` -/
def P7172873754976976378.Spec : Prop :=
  ∀ n, P7172873754976976378.a n = A171608 (n + 1)

end A171608

/-! ## A171608.P14204765899812253608

`A089606(n+1)*A216230(n)`
-/

namespace A171608.P14204765899812253608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089606 (n + 1) * A216230 n

end

end A171608.P14204765899812253608

namespace A171608

/-- `A089606(n+1)*A216230(n)` -/
def P14204765899812253608.Spec : Prop :=
  ∀ n, P14204765899812253608.a n = A171608 (n + 1)

end A171608

/-! ## A171608.P11773871559910828033

`A092543(n+1)*A216230(n)`
-/

namespace A171608.P11773871559910828033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 1) * A216230 n

end

end A171608.P11773871559910828033

namespace A171608

/-- `A092543(n+1)*A216230(n)` -/
def P11773871559910828033.Spec : Prop :=
  ∀ n, P11773871559910828033.a n = A171608 (n + 1)

end A171608

/-! ## A171608.P15096215039376551341

`A141675(n+1)*A216230(n)`
-/

namespace A171608.P15096215039376551341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141675 (n + 1) * A216230 n

end

end A171608.P15096215039376551341

namespace A171608

/-- `A141675(n+1)*A216230(n)` -/
def P15096215039376551341.Spec : Prop :=
  ∀ n, P15096215039376551341.a n = A171608 (n + 1)

end A171608

/-! ## A171608.P5986787902344585247

`A204166(n+1)*A216230(n)`
-/

namespace A171608.P5986787902344585247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (n + 1) * A216230 n

end

end A171608.P5986787902344585247

namespace A171608

/-- `A204166(n+1)*A216230(n)` -/
def P5986787902344585247.Spec : Prop :=
  ∀ n, P5986787902344585247.a n = A171608 (n + 1)

end A171608

/-! ## A171608.P17881259708780520978

`A216230(n)*A285731(n+1)`
-/

namespace A171608.P17881259708780520978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216230 n * A285731 (n + 1)

end

end A171608.P17881259708780520978

namespace A171608

/-- `A216230(n)*A285731(n+1)` -/
def P17881259708780520978.Spec : Prop :=
  ∀ n, P17881259708780520978.a n = A171608 (n + 1)

end A171608

/-!
# A171609: a(2*n) = (n+1)*a(n), a(2*n+1) = (n+1)*a(n+1), with a(1) = 1.

The programs for A171609, the canonical program `A171609.P13636503890441644865` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171609 has offset 1).

The definition of A171609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171609.P13636503890441644865

`(ceil(n/2)+1)*a(floor(n/2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A171609

/-- `(ceil(n/2)+1)*a(floor(n/2))` -/
def P13636503890441644865.Spec : Prop :=
  ∀ n, P13636503890441644865.a n = A171609 (n + 1)

theorem P13636503890441644865.correct : P13636503890441644865.Spec := by
  intro n
  simp only [A171609, Nat.add_sub_cancel]

end A171609

/-! ## A171609.P16625295664508405644

`a(floor(n/2))*(∑[n%2]+1)` with `a(0)=1`
-/

namespace A171609.P16625295664508405644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A171609.P16625295664508405644

namespace A171609

/-- `a(floor(n/2))*(∑[n%2]+1)` -/
def P16625295664508405644.Spec : Prop :=
  ∀ n, (P16625295664508405644.a n : ℤ) = A171609 (n + 1)

end A171609

/-! ## A171609.P14450753863216601625

`a(floor(n/2))*(∑[and(1, n)]+1)` with `a(0)=1`
-/

namespace A171609.P14450753863216601625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A171609.P14450753863216601625

namespace A171609

/-- `a(floor(n/2))*(∑[and(1, n)]+1)` -/
def P14450753863216601625.Spec : Prop :=
  ∀ n, (P14450753863216601625.a n : ℤ) = A171609 (n + 1)

end A171609

/-! ## A171609.P5602268288365880280

`a(floor(n/2))*∑[and(1, n)^n]` with `a(0)=1`
-/

namespace A171609.P5602268288365880280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n ^ n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171609.P5602268288365880280

namespace A171609

/-- `a(floor(n/2))*∑[and(1, n)^n]` -/
def P5602268288365880280.Spec : Prop :=
  ∀ n, (P5602268288365880280.a n : ℤ) = A171609 (n + 1)

end A171609

/-! ## A171609.P8080701356499410104

`a(floor(n/2))*∑[∏{p}[n, #%2]]` with `a(0)=1`
-/

namespace A171609.P8080701356499410104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p % 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A171609.P8080701356499410104

namespace A171609

/-- `a(floor(n/2))*∑[∏{p}[n, #%2]]` -/
def P8080701356499410104.Spec : Prop :=
  ∀ n, (P8080701356499410104.a n : ℤ) = A171609 (n + 1)

end A171609

/-! ## A171609.P18315028059013700865

`a(floor(n/2))*A080513(n)` with `a(0)=1`
-/

namespace A171609.P18315028059013700865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A080513 n

end

end A171609.P18315028059013700865

namespace A171609

/-- `a(floor(n/2))*A080513(n)` -/
def P18315028059013700865.Spec : Prop :=
  ∀ n, P18315028059013700865.a n = A171609 (n + 1)

end A171609

/-! ## A171609.P14838881774853004662

`a(floor(n/2))*A008619(n+1)` with `a(0)=1`
-/

namespace A171609.P14838881774853004662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A008619 (n + 1)

end

end A171609.P14838881774853004662

namespace A171609

/-- `a(floor(n/2))*A008619(n+1)` -/
def P14838881774853004662.Spec : Prop :=
  ∀ n, P14838881774853004662.a n = A171609 (n + 1)

end A171609

/-! ## A171609.P8780397425200301216

`a(floor(n/2))*A000463(or(1, n+1))` with `a(0)=1`
-/

namespace A171609.P8780397425200301216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A000463 (Nat.lor 1 (n + 1))

end

end A171609.P8780397425200301216

namespace A171609

/-- `a(floor(n/2))*A000463(or(1, n+1))` -/
def P8780397425200301216.Spec : Prop :=
  ∀ n, P8780397425200301216.a n = A171609 (n + 1)

end A171609

/-! ## A171609.P5172539097246890467

`a(floor(n/2))*A004526(n+3)` with `a(0)=1`
-/

namespace A171609.P5172539097246890467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A004526 (n + 3)

end

end A171609.P5172539097246890467

namespace A171609

/-- `a(floor(n/2))*A004526(n+3)` -/
def P5172539097246890467.Spec : Prop :=
  ∀ n, P5172539097246890467.a n = A171609 (n + 1)

end A171609

/-!
# A171610: a(n) = 0+1+2+...+n in lunar arithmetic in base 7 written in base 7.

The programs for A171610, there is no canonical definition to state claims against.
-/

/-! ## A171610.P2209253319567115000

`A007093(A171597(n))`
-/

namespace A171610.P2209253319567115000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (A171597 n).toNat

end

end A171610.P2209253319567115000

/-! ## A171610.P7248680768414377789

`A222251(A087052(record[A222251(n)]))`
-/

namespace A171610.P7248680768414377789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A087052 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A171610.P7248680768414377789

/-!
# A171611: From Goldbach problem: number of decompositions of 2n into unordered sums of two primes > 3.

The programs for A171611, there is no canonical definition to state claims against.
-/

/-! ## A171611.P1507130521669857410

`A002375(n+1)+A007963(n+1)-A054860(n+1)`
-/

namespace A171611.P1507130521669857410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) + (A007963 (n + 1) - A054860 (n + 1))

end

end A171611.P1507130521669857410

/-! ## A171611.P17409659021448852249

`A002375(n+1)-A061358(2*n+1)`
-/

namespace A171611.P17409659021448852249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) - A061358 (2 * n + 1)

end

end A171611.P17409659021448852249

/-! ## A171611.P7560199281517433832

`A002375(n+1)-A117929(2*n+1)`
-/

namespace A171611.P7560199281517433832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) - A117929 (2 * n + 1)

end

end A171611.P7560199281517433832

/-! ## A171611.P3322817134996021397

`round(A002372(n+1)/2)-A061358(2*n+1)`
-/

namespace A171611.P3322817134996021397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002372 (n + 1) : ℚ) / 2) - A061358 (2 * n + 1)

end

end A171611.P3322817134996021397

/-! ## A171611.P16639474443142883048

`ceil(A002372(2*n+1-n)/2)-A061358(2*n+1)`
-/

namespace A171611.P16639474443142883048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002372 ((2 * n : ℤ) + (1 - (n : ℤ))).toNat : ℚ) / 2⌉ - A061358 (2 * n + 1)

end

end A171611.P16639474443142883048

/-! ## A171611.P7886985793096826569

`A061358(A316571(n+2))-A061358(2*n+1)`
-/

namespace A171611.P7886985793096826569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A316571 (n + 2)).toNat - A061358 (2 * n + 1)

end

end A171611.P7886985793096826569

/-! ## A171611.P15502201489079615679

`A002375(n+1)-A002372(A073610(2*n+1)+1)`
-/

namespace A171611.P15502201489079615679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1) - A002372 (A073610 (2 * n + 1) + 1).toNat

end

end A171611.P15502201489079615679

/-! ## A171611.P16447882418345699077

`A004526(A331622(2*(n+1))-A331622(2*n+1))`
-/

namespace A171611.P16447882418345699077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A331622 (2 * (n + 1)) - A331622 (2 * n + 1)).toNat

end

end A171611.P16447882418345699077

/-! ## A171611.P18262739241538976506

`A045917(n+1)%A045893(n+1)-A061358(2*n+1)`
-/

namespace A171611.P18262739241538976506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045917 (n + 1)) (A045893 (n + 1)) - A061358 (2 * n + 1)

end

end A171611.P18262739241538976506

/-!
# A171613: a(n) = n^2 + sum of the digits of n^2.

The programs for A171613, the canonical program `A171613.P13040255884319598005` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171613 has offset 0).

The definition of A171613 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171613.P13040255884319598005

`n²+∑{digits}[n², #]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A171613

/-- `n²+∑{digits}[n², #]` -/
def P13040255884319598005.Spec : Prop :=
  ∀ n, (P13040255884319598005.a n : ℤ) = A171613 n

theorem P13040255884319598005.correct : P13040255884319598005.Spec := by
  intro n
  simp only [A171613]

end A171613

/-! ## A171613.P2801336987921943339

`∑{digits}[n^2, #]+n^2`
-/

namespace A171613.P2801336987921943339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + n ^ 2

end

end A171613.P2801336987921943339

namespace A171613

/-- `∑{digits}[n^2, #]+n^2` -/
def P2801336987921943339.Spec : Prop :=
  ∀ n, (P2801336987921943339.a n : ℤ) = A171613 n

theorem P2801336987921943339.correct : P2801336987921943339.Spec := by
  intro n
  simp only [A171613, Nat.add_sub_cancel, A171613.P2801336987921943339.f1, A171613.P2801336987921943339.a, A171613.P13040255884319598005.f1, A171613.P13040255884319598005.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A171613

/-! ## A171613.P3020580104499582450

`log(∏{digits}[n², exp(#)])+n²`
-/

namespace A171613.P3020580104499582450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod + (n ^ 2 : ℝ)

end

end A171613.P3020580104499582450

namespace A171613

/-- `log(∏{digits}[n², exp(#)])+n²` -/
def P3020580104499582450.Spec : Prop :=
  ∀ n, P3020580104499582450.a n = (A171613 n : ℝ)

end A171613

/-! ## A171613.P9597113999338396866

`log2(∏{digits}[n², 2^#])+n²`
-/

namespace A171613.P9597113999338396866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ) + (n ^ 2 : ℝ)

end

end A171613.P9597113999338396866

namespace A171613

/-- `log2(∏{digits}[n², 2^#])+n²` -/
def P9597113999338396866.Spec : Prop :=
  ∀ n, P9597113999338396866.a n = (A171613 n : ℝ)

end A171613

/-! ## A171613.P6627664333375835239

`val(∏{digits}[n², 2^#], 2)+n²`
-/

namespace A171613.P6627664333375835239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod 2 + n ^ 2

end

end A171613.P6627664333375835239

namespace A171613

/-- `val(∏{digits}[n², 2^#], 2)+n²` -/
def P6627664333375835239.Spec : Prop :=
  ∀ n, (P6627664333375835239.a n : ℤ) = A171613 n

end A171613

/-! ## A171613.P13047018426951578747

`2*n²-(n²-∑{digits}[n², #])`
-/

namespace A171613.P13047018426951578747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - ((n ^ 2 : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))

end

end A171613.P13047018426951578747

namespace A171613

/-- `2*n²-(n²-∑{digits}[n², #])` -/
def P13047018426951578747.Spec : Prop :=
  ∀ n, P13047018426951578747.a n = A171613 n

theorem P13047018426951578747.correct : P13047018426951578747.Spec := by
  intro n
  simp only [A171613, Nat.add_sub_cancel, A171613.P13047018426951578747.f1, A171613.P13047018426951578747.a, A171613.P13040255884319598005.f1, A171613.P13040255884319598005.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A171613

/-! ## A171613.P821285896273621677

`A004159(n)+n²`
-/

namespace A171613.P821285896273621677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 n + (n ^ 2 : ℤ)

end

end A171613.P821285896273621677

namespace A171613

/-- `A004159(n)+n²` -/
def P821285896273621677.Spec : Prop :=
  ∀ n, P821285896273621677.a n = A171613 n

end A171613

/-! ## A171613.P5208378817925991742

`2*n²-A224977(n)`
-/

namespace A171613.P5208378817925991742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - A224977 n

end

end A171613.P5208378817925991742

namespace A171613

/-- `2*n²-A224977(n)` -/
def P5208378817925991742.Spec : Prop :=
  ∀ n, P5208378817925991742.a n = A171613 n

end A171613

/-! ## A171613.P17386534725313280618

`A000290(n)+A000290(n)-A224977(n)`
-/

namespace A171613.P17386534725313280618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + (A000290 n - A224977 n)

end

end A171613.P17386534725313280618

namespace A171613

/-- `A000290(n)+A000290(n)-A224977(n)` -/
def P17386534725313280618.Spec : Prop :=
  ∀ n, P17386534725313280618.a n = A171613 n

end A171613

/-! ## A171613.P14895799366353731105

`A062028(n²)`
-/

namespace A171613.P14895799366353731105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (n ^ 2)

end

end A171613.P14895799366353731105

namespace A171613

/-- `A062028(n²)` -/
def P14895799366353731105.Spec : Prop :=
  ∀ n, P14895799366353731105.a n = A171613 n

end A171613

/-! ## A171613.P17170111532468854252

`A007953(n²)+n²`
-/

namespace A171613.P17170111532468854252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n ^ 2) + (n ^ 2 : ℤ)

end

end A171613.P17170111532468854252

namespace A171613

/-- `A007953(n²)+n²` -/
def P17170111532468854252.Spec : Prop :=
  ∀ n, P17170111532468854252.a n = A171613 n

end A171613

/-!
# A171614: Numbers n with property that (n^2 + sum of the digits of n^2) is even.

The programs for A171614, the canonical program `A171614.P10728647847726673456` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171614 has offset 1).

The definition of A171614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5019 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171614.P3411828274787372553

`comp[A171615(n+1)]`
-/

namespace A171614.P3411828274787372553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171614.P3411828274787372553

namespace A171614

/-- `comp[A171615(n+1)]` -/
def P3411828274787372553.Spec : Prop :=
  ∀ n, (P3411828274787372553.a n : ℤ) = A171614 (n + 1)

end A171614

/-! ## A171614.P10728647847726673456

`eq[0, A224977(n)%2]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A171614

/-- `eq[0, A224977(n)%2]` -/
def P10728647847726673456.Spec : Prop :=
  ∀ n, (P10728647847726673456.a n : ℤ) = A171614 (n + 1)

theorem P10728647847726673456.correct : P10728647847726673456.Spec := by
  intro n
  simp only [A171614, Nat.add_sub_cancel]

end A171614

/-! ## A171614.P5329198070296236884

`lt[A171613(n)%2, 1]`
-/

namespace A171614.P5329198070296236884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171613 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171614.P5329198070296236884

namespace A171614

/-- `lt[A171613(n)%2, 1]` -/
def P5329198070296236884.Spec : Prop :=
  ∀ n, (P5329198070296236884.a n : ℤ) = A171614 (n + 1)

end A171614

/-! ## A171614.P6943735285885012287

`eq[0, (A004159(n)+n)%2]`
-/

namespace A171614.P6943735285885012287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004159 n + (n : ℤ)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171614.P6943735285885012287

namespace A171614

/-- `eq[0, (A004159(n)+n)%2]` -/
def P6943735285885012287.Spec : Prop :=
  ∀ n, (P6943735285885012287.a n : ℤ) = A171614 (n + 1)

end A171614

/-! ## A171614.P257166653214002556

`lt[A020639(∑{digits}[n²+3*char[2*n], #]+1), 4]`
-/

namespace A171614.P257166653214002556
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 3 * (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A171614.P257166653214002556

namespace A171614

/-- `lt[A020639(∑{digits}[n²+3*char[2*n], #]+1), 4]` -/
def P257166653214002556.Spec : Prop :=
  ∀ n, (P257166653214002556.a n : ℤ) = A171614 (n + 1)

end A171614

/-! ## A171614.P16111226038640313888

`eq[A000035(n), A000035(A004159(n))]`
-/

namespace A171614.P16111226038640313888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004159 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171614.P16111226038640313888

namespace A171614

/-- `eq[A000035(n), A000035(A004159(n))]` -/
def P16111226038640313888.Spec : Prop :=
  ∀ n, (P16111226038640313888.a n : ℤ) = A171614 (n + 1)

end A171614

/-! ## A171614.P8540962382150704263

`eq[0, A179081(A056865(n))]`
-/

namespace A171614.P8540962382150704263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A056865 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171614.P8540962382150704263

namespace A171614

/-- `eq[0, A179081(A056865(n))]` -/
def P8540962382150704263.Spec : Prop :=
  ∀ n, (P8540962382150704263.a n : ℤ) = A171614 (n + 1)

end A171614

/-! ## A171614.P5703220695529767171

`eq[2, A020639(A224977(n)+2)]`
-/

namespace A171614.P5703220695529767171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A224977 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171614.P5703220695529767171

namespace A171614

/-- `eq[2, A020639(A224977(n)+2)]` -/
def P5703220695529767171.Spec : Prop :=
  ∀ n, (P5703220695529767171.a n : ℤ) = A171614 (n + 1)

end A171614

/-! ## A171614.P11132047338824101659

`lt[A020639(A224977(n)+88), 5]`
-/

namespace A171614.P11132047338824101659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A224977 n + 88).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171614.P11132047338824101659

namespace A171614

/-- `lt[A020639(A224977(n)+88), 5]` -/
def P11132047338824101659.Spec : Prop :=
  ∀ n, (P11132047338824101659.a n : ℤ) = A171614 (n + 1)

end A171614

/-! ## A171614.P14302698724039505807

`eq[0, A010875(A224977(n))]`
-/

namespace A171614.P14302698724039505807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A224977 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171614.P14302698724039505807

namespace A171614

/-- `eq[0, A010875(A224977(n))]` -/
def P14302698724039505807.Spec : Prop :=
  ∀ n, (P14302698724039505807.a n : ℤ) = A171614 (n + 1)

end A171614

/-!
# A171615: Numbers n with property that (n^2 + sum of the digits of n^2) is odd.

The programs for A171615, the canonical program `A171615.P18201071314134150364` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171615 has offset 1).

The definition of A171615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171615.P18201071314134150364

`comp[A171614(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A171615

/-- `comp[A171614(n+1)]` -/
def P18201071314134150364.Spec : Prop :=
  ∀ n, (P18201071314134150364.a n : ℤ) = A171615 (n + 1)

theorem P18201071314134150364.correct : P18201071314134150364.Spec := by
  intro n
  simp only [A171615, Nat.add_sub_cancel]

end A171615

/-! ## A171615.P1332897430010355307

`lt[0, (A004159(n)+n)%2]`
-/

namespace A171615.P1332897430010355307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004159 n + (n : ℤ)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171615.P1332897430010355307

namespace A171615

/-- `lt[0, (A004159(n)+n)%2]` -/
def P1332897430010355307.Spec : Prop :=
  ∀ n, (P1332897430010355307.a n : ℤ) = A171615 (n + 1)

end A171615

/-! ## A171615.P2605958486585804261

`eq[0, ((A065796(n+1)+n)%2)%12]+1`
-/

namespace A171615.P2605958486585804261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A065796 (n + 1) + (n : ℤ)) 2) 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171615.P2605958486585804261

namespace A171615

/-- `eq[0, ((A065796(n+1)+n)%2)%12]+1` -/
def P2605958486585804261.Spec : Prop :=
  ∀ n, (P2605958486585804261.a n : ℤ) = A171615 (n + 1)

end A171615

/-! ## A171615.P4531743528487187173

`eq[2, A020639(xor(n+1, A004159(n)))]`
-/

namespace A171615.P4531743528487187173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.xor (n + 1 : ℤ) (A004159 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171615.P4531743528487187173

namespace A171615

/-- `eq[2, A020639(xor(n+1, A004159(n)))]` -/
def P4531743528487187173.Spec : Prop :=
  ∀ n, (P4531743528487187173.a n : ℤ) = A171615 (n + 1)

end A171615

/-! ## A171615.P6007765334990621516

`eq[2, A020639(A004159(n)+A020639(n+1))]`
-/

namespace A171615.P6007765334990621516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004159 n + A020639 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171615.P6007765334990621516

namespace A171615

/-- `eq[2, A020639(A004159(n)+A020639(n+1))]` -/
def P6007765334990621516.Spec : Prop :=
  ∀ n, (P6007765334990621516.a n : ℤ) = A171615 (n + 1)

end A171615

/-! ## A171615.P1054217211560469882

`lt[0, A224977(n)%2]`
-/

namespace A171615.P1054217211560469882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224977 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171615.P1054217211560469882

namespace A171615

/-- `lt[0, A224977(n)%2]` -/
def P1054217211560469882.Spec : Prop :=
  ∀ n, (P1054217211560469882.a n : ℤ) = A171615 (n + 1)

end A171615

/-! ## A171615.P7942208970599419643

`eq[1, A224977(n+1)%2]+1`
-/

namespace A171615.P7942208970599419643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224977 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A171615.P7942208970599419643

namespace A171615

/-- `eq[1, A224977(n+1)%2]+1` -/
def P7942208970599419643.Spec : Prop :=
  ∀ n, (P7942208970599419643.a n : ℤ) = A171615 (n + 1)

end A171615

/-! ## A171615.P6627074135087460628

`lt[0, A179081(A056865(n))]`
-/

namespace A171615.P6627074135087460628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (A056865 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171615.P6627074135087460628

namespace A171615

/-- `lt[0, A179081(A056865(n))]` -/
def P6627074135087460628.Spec : Prop :=
  ∀ n, (P6627074135087460628.a n : ℤ) = A171615 (n + 1)

end A171615

/-! ## A171615.P17901548195461468719

`eq[2, A020639(A224977(n)+1)]`
-/

namespace A171615.P17901548195461468719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A224977 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171615.P17901548195461468719

namespace A171615

/-- `eq[2, A020639(A224977(n)+1)]` -/
def P17901548195461468719.Spec : Prop :=
  ∀ n, (P17901548195461468719.a n : ℤ) = A171615 (n + 1)

end A171615

/-! ## A171615.P8222595199420322845

`lt[2, A020639(A224977(n)+2)]`
-/

namespace A171615.P8222595199420322845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A224977 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A171615.P8222595199420322845

namespace A171615

/-- `lt[2, A020639(A224977(n)+2)]` -/
def P8222595199420322845.Spec : Prop :=
  ∀ n, (P8222595199420322845.a n : ℤ) = A171615 (n + 1)

end A171615

/-!
# A171616: Triangle T : T(n,k)= binomial(n,k)*A000957(n+1-k).

The programs for A171616, the canonical program `A171616.P3352174179481135705` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171616 has offset 0).

The definition of A171616 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171616.P3352174179481135705

`C(row(n), col(n))*A000957(row(n)+1-col(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A171616

/-- `C(row(n), col(n))*A000957(row(n)+1-col(n))` -/
def P3352174179481135705.Spec : Prop :=
  ∀ n, P3352174179481135705.a n = A171616 n

theorem P3352174179481135705.correct : P3352174179481135705.Spec := by
  intro n
  simp only [A171616]

end A171616

/-! ## A171616.P16874540875004690517

`A000957(A004736(n+1))*A007318(n)`
-/

namespace A171616.P16874540875004690517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (A004736 (n + 1)).toNat * A007318 n

end

end A171616.P16874540875004690517

namespace A171616

/-- `A000957(A004736(n+1))*A007318(n)` -/
def P16874540875004690517.Spec : Prop :=
  ∀ n, P16874540875004690517.a n = A171616 n

end A171616

/-! ## A171616.P7827593609706896150

`A000957(A025581(n)+1)*A007318(n)`
-/

namespace A171616.P7827593609706896150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (A025581 n + 1).toNat * A007318 n

end

end A171616.P7827593609706896150

namespace A171616

/-- `A000957(A025581(n)+1)*A007318(n)` -/
def P7827593609706896150.Spec : Prop :=
  ∀ n, P7827593609706896150.a n = A171616 n

end A171616

/-! ## A171616.P13312467477962846724

`A064310(A004736(n+1))*A130595(n)`
-/

namespace A171616.P13312467477962846724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064310 (A004736 (n + 1)).toNat * A130595 n

end

end A171616.P13312467477962846724

namespace A171616

/-- `A064310(A004736(n+1))*A130595(n)` -/
def P13312467477962846724.Spec : Prop :=
  ∀ n, P13312467477962846724.a n = A171616 n

end A171616

/-! ## A171616.P7550470925842992491

`sqrt(A008459(n))*A000957(A004736(n+1))`
-/

namespace A171616.P7550470925842992491
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A000957 (A004736 (n + 1)).toNat : ℝ)

end

end A171616.P7550470925842992491

namespace A171616

/-- `sqrt(A008459(n))*A000957(A004736(n+1))` -/
def P7550470925842992491.Spec : Prop :=
  ∀ n, P7550470925842992491.a n = (A171616 n : ℝ)

end A171616

/-! ## A171616.P16662970060502156231

`A000957(A004736(n+1))/2*A028326(n)`
-/

namespace A171616.P16662970060502156231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000957 (A004736 (n + 1)).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A171616.P16662970060502156231

namespace A171616

/-- `A000957(A004736(n+1))/2*A028326(n)` -/
def P16662970060502156231.Spec : Prop :=
  ∀ n, P16662970060502156231.a n = (A171616 n : ℚ)

end A171616

/-! ## A171616.P14927193778953760691

`A000957(A004736(n+1))*A004525(A028326(n))`
-/

namespace A171616.P14927193778953760691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000957 (A004736 (n + 1)).toNat * A004525 (A028326 n).toNat

end

end A171616.P14927193778953760691

namespace A171616

/-- `A000957(A004736(n+1))*A004525(A028326(n))` -/
def P14927193778953760691.Spec : Prop :=
  ∀ n, P14927193778953760691.a n = A171616 n

end A171616

/-!
# A171619: Primes in A171490.

The programs for A171619, there is no canonical definition to state claims against.
-/

/-! ## A171619.P16414187272115941408

`p?[A171490(n+1)]`
-/

namespace A171619.P16414187272115941408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171619.P16414187272115941408

/-! ## A171619.P2873839401543780684

`record[A006530(A171490(n+2))]`
-/

namespace A171619.P2873839401543780684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A171490 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171619.P2873839401543780684

/-! ## A171619.P18352492930387346152

`filter[A171490(n+1), A010051(#)]`
-/

namespace A171619.P18352492930387346152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A171619.P18352492930387346152

/-! ## A171619.P3277464846869785296

`filter[A171490(n+1), A171387(#)]`
-/

namespace A171619.P3277464846869785296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A171619.P3277464846869785296

/-! ## A171619.P3216816144113382209

`filter[A171490(n+1), A174275(#)]`
-/

namespace A171619.P3216816144113382209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A171619.P3216816144113382209

/-!
# A171620: a(n) = A120627(n) + A120627(n+1).

The programs for A171620, there is no canonical definition to state claims against.
-/

/-! ## A171620.P17813186621139177367

`A120627(n+1)+A120627(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A171620.P17813186621139177367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120627 (n + 1) + A120627 (n + 2)

end

end A171620.P17813186621139177367

/-!
# A171621: Numerator of 1/4 - 1/n^2, each fourth term multiplied by 4.

The programs for A171621, the canonical program `A171621.P19222282852191136` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171621 has offset 2).

The definition of A171621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171621.P19222282852191136

`A061037(n+2)*A010121(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A171621

/-- `A061037(n+2)*A010121(n)` -/
def P19222282852191136.Spec : Prop :=
  ∀ n, P19222282852191136.a n = A171621 (n + 2)

theorem P19222282852191136.correct : P19222282852191136.Spec := by
  intro n
  simp only [A171621, Nat.add_sub_cancel]

end A171621

/-! ## A171621.P7082924432458689130

`lcm(4, 4-(n+2)²)/4`
-/

namespace A171621.P7082924432458689130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (4 - ((n + 2) ^ 2 : ℤ)) : ℚ) / 4

end

end A171621.P7082924432458689130

namespace A171621

/-- `lcm(4, 4-(n+2)²)/4` -/
def P7082924432458689130.Spec : Prop :=
  ∀ n, P7082924432458689130.a n = (A171621 (n + 2) : ℚ)

end A171621

/-! ## A171621.P10577247956351503377

`(n+4)*n/gcd(2, n)²`
-/

namespace A171621.P10577247956351503377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℚ) * ((n : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ))

end

end A171621.P10577247956351503377

namespace A171621

/-- `(n+4)*n/gcd(2, n)²` -/
def P10577247956351503377.Spec : Prop :=
  ∀ n, P10577247956351503377.a n = (A171621 (n + 2) : ℚ)

end A171621

/-! ## A171621.P12104903987957465783

`(n+4)*n/gcd(4, n%2)`
-/

namespace A171621.P12104903987957465783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℚ) * ((n : ℚ) / (Nat.gcd 4 (n % 2) : ℚ))

end

end A171621.P12104903987957465783

namespace A171621

/-- `(n+4)*n/gcd(4, n%2)` -/
def P12104903987957465783.Spec : Prop :=
  ∀ n, P12104903987957465783.a n = (A171621 (n + 2) : ℚ)

end A171621

/-! ## A171621.P16264633474398410431

`floor((2-∑[n+1])²/a(n-1))` with `a(0)=0, a(1)=5`
-/

namespace A171621.P16264633474398410431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n a =>
  ⌊((2 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ^ 2 : ℚ) / (a (n - 1) : ℚ)⌋

end

end A171621.P16264633474398410431

namespace A171621

/-- `floor((2-∑[n+1])²/a(n-1))` -/
def P16264633474398410431.Spec : Prop :=
  ∀ n, P16264633474398410431.a n = A171621 (n + 2)

end A171621

/-! ## A171621.P5442226789537167651

`sqrt(A171638(n+2))`
-/

namespace A171621.P5442226789537167651
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A171638 (n + 2) : ℝ)

end

end A171621.P5442226789537167651

namespace A171621

/-- `sqrt(A171638(n+2))` -/
def P5442226789537167651.Spec : Prop :=
  ∀ n, P5442226789537167651.a n = (A171621 (n + 2) : ℝ)

end A171621

/-! ## A171621.P14320252405703756503

`(n/2+2)*A064680(n)`
-/

namespace A171621.P14320252405703756503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 2) * (A064680 n : ℚ)

end

end A171621.P14320252405703756503

namespace A171621

/-- `(n/2+2)*A064680(n)` -/
def P14320252405703756503.Spec : Prop :=
  ∀ n, P14320252405703756503.a n = (A171621 (n + 2) : ℚ)

end A171621

/-! ## A171621.P3756577074072292687

`A028347(n+2)/gcd(2, n)²`
-/

namespace A171621.P3756577074072292687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028347 (n + 2) : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ)

end

end A171621.P3756577074072292687

namespace A171621

/-- `A028347(n+2)/gcd(2, n)²` -/
def P3756577074072292687.Spec : Prop :=
  ∀ n, P3756577074072292687.a n = (A171621 (n + 2) : ℚ)

end A171621

/-! ## A171621.P13049219983688979838

`A142705(n+1)+A064680(n)`
-/

namespace A171621.P13049219983688979838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142705 (n + 1) + A064680 n

end

end A171621.P13049219983688979838

namespace A171621

/-- `A142705(n+1)+A064680(n)` -/
def P13049219983688979838.Spec : Prop :=
  ∀ n, P13049219983688979838.a n = A171621 (n + 2)

end A171621

/-! ## A171621.P2975277110933166742

`A168077(n)+2*A064680(n)`
-/

namespace A171621.P2975277110933166742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 n + 2 * A064680 n

end

end A171621.P2975277110933166742

namespace A171621

/-- `A168077(n)+2*A064680(n)` -/
def P2975277110933166742.Spec : Prop :=
  ∀ n, P2975277110933166742.a n = A171621 (n + 2)

end A171621

/-! ## A171621.P1843536274180019403

`A370912(n)/A144433(n+1)`
-/

namespace A171621.P1843536274180019403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370912 n : ℚ) / (A144433 (n + 1) : ℚ)

end

end A171621.P1843536274180019403

namespace A171621

/-- `A370912(n)/A144433(n+1)` -/
def P1843536274180019403.Spec : Prop :=
  ∀ n, P1843536274180019403.a n = (A171621 (n + 2) : ℚ)

end A171621

/-! ## A171621.P14904901353666880341

`A028560(A026741(n))-2*n`
-/

namespace A171621.P14904901353666880341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028560 (A026741 n).toNat - (2 * n : ℤ)

end

end A171621.P14904901353666880341

namespace A171621

/-- `A028560(A026741(n))-2*n` -/
def P14904901353666880341.Spec : Prop :=
  ∀ n, P14904901353666880341.a n = A171621 (n + 2)

end A171621

/-! ## A171621.P2516313026188030370

`A028347(n+2)/A040005(n)`
-/

namespace A171621.P2516313026188030370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028347 (n + 2) : ℚ) / (A040005 n : ℚ)

end

end A171621.P2516313026188030370

namespace A171621

/-- `A028347(n+2)/A040005(n)` -/
def P2516313026188030370.Spec : Prop :=
  ∀ n, P2516313026188030370.a n = (A171621 (n + 2) : ℚ)

end A171621

/-! ## A171621.P9956636541343347119

`gcd(A028347(n+2), A188667(n))`
-/

namespace A171621.P9956636541343347119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028347 (n + 2)) (A188667 n)

end

end A171621.P9956636541343347119

namespace A171621

/-- `gcd(A028347(n+2), A188667(n))` -/
def P9956636541343347119.Spec : Prop :=
  ∀ n, (P9956636541343347119.a n : ℤ) = A171621 (n + 2)

end A171621

/-! ## A171621.P10738080786739802311

`A168077(n)+n*A010685(n)`
-/

namespace A171621.P10738080786739802311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 n + (n : ℤ) * A010685 n

end

end A171621.P10738080786739802311

namespace A171621

/-- `A168077(n)+n*A010685(n)` -/
def P10738080786739802311.Spec : Prop :=
  ∀ n, P10738080786739802311.a n = A171621 (n + 2)

end A171621

/-! ## A171621.P16898320511044353325

`A026741(n)²+2*A064680(n)`
-/

namespace A171621.P16898320511044353325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n ^ 2 + 2 * A064680 n

end

end A171621.P16898320511044353325

namespace A171621

/-- `A026741(n)²+2*A064680(n)` -/
def P16898320511044353325.Spec : Prop :=
  ∀ n, P16898320511044353325.a n = A171621 (n + 2)

end A171621

/-! ## A171621.P10957726933109155847

`A026741(n)²+n*A010685(n)`
-/

namespace A171621.P10957726933109155847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n ^ 2 + (n : ℤ) * A010685 n

end

end A171621.P10957726933109155847

namespace A171621

/-- `A026741(n)²+n*A010685(n)` -/
def P10957726933109155847.Spec : Prop :=
  ∀ n, P10957726933109155847.a n = A171621 (n + 2)

end A171621

/-! ## A171621.P16989222655185251966

`(A097362(n+1)+1)*A026741(n)`
-/

namespace A171621.P16989222655185251966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097362 (n + 1) + 1) * A026741 n

end

end A171621.P16989222655185251966

namespace A171621

/-- `(A097362(n+1)+1)*A026741(n)` -/
def P16989222655185251966.Spec : Prop :=
  ∀ n, P16989222655185251966.a n = A171621 (n + 2)

end A171621

/-! ## A171621.P14084646454889886829

`A028347(n+2)/A010121(2*n)`
-/

namespace A171621.P14084646454889886829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028347 (n + 2) : ℚ) / (A010121 (2 * n) : ℚ)

end

end A171621.P14084646454889886829

namespace A171621

/-- `A028347(n+2)/A010121(2*n)` -/
def P14084646454889886829.Spec : Prop :=
  ∀ n, P14084646454889886829.a n = (A171621 (n + 2) : ℚ)

end A171621

/-! ## A171621.P12663934961496710725

`A145051(n+1)²-A000034(n)²`
-/

namespace A171621.P12663934961496710725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145051 (n + 1) ^ 2 - A000034 n ^ 2

end

end A171621.P12663934961496710725

namespace A171621

/-- `A145051(n+1)²-A000034(n)²` -/
def P12663934961496710725.Spec : Prop :=
  ∀ n, P12663934961496710725.a n = A171621 (n + 2)

end A171621

/-!
# A171622: a(n) = floor(n-th noncomposite / n).

The programs for A171622, the canonical program `A171622.P9340769267017668227` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171622 has offset 1).

The definition of A171622 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171622.P9340769267017668227

`floor(A008578(n+1)/(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A171622

/-- `floor(A008578(n+1)/(n+1))` -/
def P9340769267017668227.Spec : Prop :=
  ∀ n, P9340769267017668227.a n = A171622 (n + 1)

theorem P9340769267017668227.correct : P9340769267017668227.Spec := by
  intro n
  simp only [A171622, Nat.add_sub_cancel]

end A171622

/-! ## A171622.P17196619168327508088

`floor(A068499(n+1)/(n+1))`
-/

namespace A171622.P17196619168327508088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A068499 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A171622.P17196619168327508088

namespace A171622

/-- `floor(A068499(n+1)/(n+1))` -/
def P17196619168327508088.Spec : Prop :=
  ∀ n, P17196619168327508088.a n = A171622 (n + 1)

end A171622

/-! ## A171622.P16736735257760715915

`floor((A028815(n)-1)/(n+1))`
-/

namespace A171622.P16736735257760715915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028815 n - 1 : ℚ) / (n + 1 : ℚ)⌋

end

end A171622.P16736735257760715915

namespace A171622

/-- `floor((A028815(n)-1)/(n+1))` -/
def P16736735257760715915.Spec : Prop :=
  ∀ n, P16736735257760715915.a n = A171622 (n + 1)

theorem P16736735257760715915.correct : P16736735257760715915.Spec := by
  intro n
  simp only [A171622, Nat.add_sub_cancel, A171622.P16736735257760715915.a, A171622.P9340769267017668227.a, A008578, A008578.P3639467937083264764.a, A028815, A028815.P810525423351225743.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A171622

/-! ## A171622.P13836348798327061363

`floor((A000040(n)+a(n-1))/(n+2))` with `a(0)=1`
-/

namespace A171622.P13836348798327061363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(A000040 n + a (n - 1) : ℚ) / (n + 2 : ℚ)⌋

end

end A171622.P13836348798327061363

namespace A171622

/-- `floor((A000040(n)+a(n-1))/(n+2))` -/
def P13836348798327061363.Spec : Prop :=
  ∀ n, P13836348798327061363.a n = A171622 (n + 1)

end A171622

/-! ## A171622.P5099861386513693692

`floor(record[A006530(n+1)]/(n+1))`
-/

namespace A171622.P5099861386513693692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌋

end

end A171622.P5099861386513693692

namespace A171622

/-- `floor(record[A006530(n+1)]/(n+1))` -/
def P5099861386513693692.Spec : Prop :=
  ∀ n, P5099861386513693692.a n = A171622 (n + 1)

end A171622

/-! ## A171622.P7761765037679255260

`floor(record[A020639(n+1)]/(n+1))`
-/

namespace A171622.P7761765037679255260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌋

end

end A171622.P7761765037679255260

namespace A171622

/-- `floor(record[A020639(n+1)]/(n+1))` -/
def P7761765037679255260.Spec : Prop :=
  ∀ n, P7761765037679255260.a n = A171622 (n + 1)

end A171622

/-! ## A171622.P4161846306581717284

`floor(record[A014963(n+1)]/(n+1))`
-/

namespace A171622.P4161846306581717284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌋

end

end A171622.P4161846306581717284

namespace A171622

/-- `floor(record[A014963(n+1)]/(n+1))` -/
def P4161846306581717284.Spec : Prop :=
  ∀ n, P4161846306581717284.a n = A171622 (n + 1)

end A171622

/-!
# A171623: a(n) = floor(n-th composite / n).

The programs for A171623, the canonical program `A171623.P4321114191881075899` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171623 has offset 1).

The definition of A171623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171623.P4321114191881075899

`floor(A002808(n+1)/(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A171623

/-- `floor(A002808(n+1)/(n+1))` -/
def P4321114191881075899.Spec : Prop :=
  ∀ n, P4321114191881075899.a n = A171623 (n + 1)

theorem P4321114191881075899.correct : P4321114191881075899.Spec := by
  intro n
  simp only [A171623, Nat.add_sub_cancel]

end A171623

/-!
# A171624: Floor(n-th nonprime / n).

The programs for A171624, the canonical program `A171624.P11495037630547784735` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171624 has offset 1).

The definition of A171624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171624.P11495037630547784735

`gcd(2, C(4, n)!)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A171624

/-- `gcd(2, C(4, n)!)` -/
def P11495037630547784735.Spec : Prop :=
  ∀ n, (P11495037630547784735.a n : ℤ) = A171624 (n + 1)

theorem P11495037630547784735.correct : P11495037630547784735.Spec := by
  intro n
  simp only [A171624, Nat.add_sub_cancel]

end A171624

/-!
# A171625: Number of compositions of n such that the number of parts is divisible by the smallest part.

The programs for A171625, there is no canonical definition to state claims against.
-/

/-! ## A171625.P8318540906535569024

`A001462(A332872(n))+A000065(n)`
-/

namespace A171625.P8318540906535569024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A332872 n).toNat + A000065 n

end

end A171625.P8318540906535569024

/-! ## A171625.P15543329521999860310

`A262689(A186114(n+1)+A122229(n))`
-/

namespace A171625.P15543329521999860310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A186114 (n + 1) + A122229 n).toNat

end

end A171625.P15543329521999860310

/-! ## A171625.P10766965716859586828

`A000006(A206720(2*(n+1))+A061706(n))`
-/

namespace A171625.P10766965716859586828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A206720 (2 * (n + 1)) + A061706 n).toNat

end

end A171625.P10766965716859586828

/-! ## A171625.P17272620666925091633

`A049958(n+1)-A287931(A000580(n+7))`
-/

namespace A171625.P17272620666925091633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049958 (n + 1) - A287931 (A000580 (n + 7)).toNat

end

end A171625.P17272620666925091633

/-!
# A171626: a(n) = ceiling(n-th noncomposite/n).

The programs for A171626, the canonical program `A171626.P12911912347420491639` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171626 has offset 1).

The definition of A171626 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171626.P12911912347420491639

`ceil(A008578(n+1)/(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A171626

/-- `ceil(A008578(n+1)/(n+1))` -/
def P12911912347420491639.Spec : Prop :=
  ∀ n, P12911912347420491639.a n = A171626 (n + 1)

theorem P12911912347420491639.correct : P12911912347420491639.Spec := by
  intro n
  simp only [A171626, Nat.add_sub_cancel]

end A171626

/-! ## A171626.P9795725472726920996

`floor(A167136(n+1)/(n+1))`
-/

namespace A171626.P9795725472726920996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167136 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A171626.P9795725472726920996

namespace A171626

/-- `floor(A167136(n+1)/(n+1))` -/
def P9795725472726920996.Spec : Prop :=
  ∀ n, P9795725472726920996.a n = A171626 (n + 1)

end A171626

/-! ## A171626.P14822959490916866395

`ceil(A171525(n+1)/(n+1))`
-/

namespace A171626.P14822959490916866395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A171525 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A171626.P14822959490916866395

namespace A171626

/-- `ceil(A171525(n+1)/(n+1))` -/
def P14822959490916866395.Spec : Prop :=
  ∀ n, P14822959490916866395.a n = A171626 (n + 1)

end A171626

/-! ## A171626.P13236641982512855727

`ceil(record[A006530(n+1)]/(n+1))`
-/

namespace A171626.P13236641982512855727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌉

end

end A171626.P13236641982512855727

namespace A171626

/-- `ceil(record[A006530(n+1)]/(n+1))` -/
def P13236641982512855727.Spec : Prop :=
  ∀ n, P13236641982512855727.a n = A171626 (n + 1)

end A171626

/-! ## A171626.P3210018924524873865

`ceil(record[A020639(n+1)]/(n+1))`
-/

namespace A171626.P3210018924524873865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)⌉

end

end A171626.P3210018924524873865

namespace A171626

/-- `ceil(record[A020639(n+1)]/(n+1))` -/
def P3210018924524873865.Spec : Prop :=
  ∀ n, P3210018924524873865.a n = A171626 (n + 1)

end A171626

/-! ## A171626.P13454471064514538613

`A038605(A160512(n+2))`
-/

namespace A171626.P13454471064514538613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (A160512 (n + 2)).toNat

end

end A171626.P13454471064514538613

namespace A171626

/-- `A038605(A160512(n+2))` -/
def P13454471064514538613.Spec : Prop :=
  ∀ n, P13454471064514538613.a n = A171626 (n + 1)

end A171626

/-!
# A171627: a(n) = ceiling(n-th composite/n).

The programs for A171627, the canonical program `A171627.P3720226198752426776` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171627 has offset 1).

The definition of A171627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171627.P3720226198752426776

`ceil(A002808(n+1)/A000027(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A171627

/-- `ceil(A002808(n+1)/A000027(n+1))` -/
def P3720226198752426776.Spec : Prop :=
  ∀ n, P3720226198752426776.a n = A171627 (n + 1)

theorem P3720226198752426776.correct : P3720226198752426776.Spec := by
  intro n
  simp only [A171627, Nat.add_sub_cancel]

end A171627

/-!
# A171630: a(n) = 10^n*(5+3*10^n)+3.

The programs for A171630, the canonical program `A171630.P11708059424130122121` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171630 has offset 0).

The definition of A171630 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n*(5+3*10^n)+3` (program `A171630.P11708059424130122121`, by `A171630.P11708059424130122121.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171630.P11708059424130122121

`10^n*(5+3*10^n)+3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A171630

/-- `10^n*(5+3*10^n)+3` -/
def P11708059424130122121.Spec : Prop :=
  ∀ n, (P11708059424130122121.a n : ℤ) = A171630 n

theorem P11708059424130122121.correct : P11708059424130122121.Spec := by
  intro n
  simp only [A171630]

end A171630

/-!
# A171631: Triangle read by rows: T(n,k) = n*(binomial(n-2, k-1) + n*binomial(n-2, k)), n > 0 and 0 <= k <= n - 1.

The programs for A171631, the canonical program `A171631.P14018756786574744483` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171631 has offset 1).

The definition of A171631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171631.P4366426328908498046

`(row(n)+1-col(n))*C(row(n), col(n))*(row(n)+1)`
-/

namespace A171631.P4366426328908498046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * (SequenceMachineLib.triRow n + 1 : ℤ)

end

end A171631.P4366426328908498046

namespace A171631

/-- `(row(n)+1-col(n))*C(row(n), col(n))*(row(n)+1)` -/
def P4366426328908498046.Spec : Prop :=
  ∀ n, P4366426328908498046.a n = A171631 (n + 1)

end A171631

/-! ## A171631.P17380393073318368953

`(C(comp[∑[n]]-n, 2)-n)²*C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))`
-/

namespace A171631.P17380393073318368953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) ^ 2 * (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f6 j) 2 : ℤ)).toNat : ℤ)

end

end A171631.P17380393073318368953

namespace A171631

/-- `(C(comp[∑[n]]-n, 2)-n)²*C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))` -/
def P17380393073318368953.Spec : Prop :=
  ∀ n, P17380393073318368953.a n = A171631 (n + 1)

end A171631

/-! ## A171631.P1587819412851751162

`∑[char[∑[n]]]*A093375(n+1)`
-/

namespace A171631.P1587819412851751162
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A093375 (n + 1)

end

end A171631.P1587819412851751162

namespace A171631

/-- `∑[char[∑[n]]]*A093375(n+1)` -/
def P1587819412851751162.Spec : Prop :=
  ∀ n, P1587819412851751162.a n = A171631 (n + 1)

end A171631

/-! ## A171631.P15540811602406026449

`(n-C(comp[∑[n]]-n, 2))²*A074909(n)`
-/

namespace A171631.P15540811602406026449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2 * A074909 n

end

end A171631.P15540811602406026449

namespace A171631

/-- `(n-C(comp[∑[n]]-n, 2))²*A074909(n)` -/
def P15540811602406026449.Spec : Prop :=
  ∀ n, P15540811602406026449.a n = A171631 (n + 1)

end A171631

/-! ## A171631.P5709643176487241823

`(C(comp[∑[n]]-n, 2)-n)*A003506(n+1)`
-/

namespace A171631.P5709643176487241823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A003506 (n + 1)

end

end A171631.P5709643176487241823

namespace A171631

/-- `(C(comp[∑[n]]-n, 2)-n)*A003506(n+1)` -/
def P5709643176487241823.Spec : Prop :=
  ∀ n, P5709643176487241823.a n = A171631 (n + 1)

end A171631

/-! ## A171631.P2299914719393445074

`(C(comp[∑[n]]-n, 2)-n)*A007318(n)*∑[char[∑[n]]]`
-/

namespace A171631.P2299914719393445074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * (A007318 n * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ))

end

end A171631.P2299914719393445074

namespace A171631

/-- `(C(comp[∑[n]]-n, 2)-n)*A007318(n)*∑[char[∑[n]]]` -/
def P2299914719393445074.Spec : Prop :=
  ∀ n, P2299914719393445074.a n = A171631 (n + 1)

end A171631

/-! ## A171631.P12071317944936925487

`A007318(n)*A095833(n+1)`
-/

namespace A171631.P12071317944936925487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A095833 (n + 1)

end

end A171631.P12071317944936925487

namespace A171631

/-- `A007318(n)*A095833(n+1)` -/
def P12071317944936925487.Spec : Prop :=
  ∀ n, P12071317944936925487.a n = A171631 (n + 1)

end A171631

/-! ## A171631.P14018756786574744483

`A055461(n+1)*A074909(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A171631

/-- `A055461(n+1)*A074909(n)` -/
def P14018756786574744483.Spec : Prop :=
  ∀ n, P14018756786574744483.a n = A171631 (n + 1)

theorem P14018756786574744483.correct : P14018756786574744483.Spec := by
  intro n
  simp only [A171631, Nat.add_sub_cancel]

end A171631

/-! ## A171631.P12931175876249903918

`A003991(n+1)*A135278(n)`
-/

namespace A171631.P12931175876249903918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A135278 n

end

end A171631.P12931175876249903918

namespace A171631

/-- `A003991(n+1)*A135278(n)` -/
def P12931175876249903918.Spec : Prop :=
  ∀ n, P12931175876249903918.a n = A171631 (n + 1)

theorem P12931175876249903918.correct : P12931175876249903918.Spec := by
  intro n
  simp only [A171631, Nat.add_sub_cancel, A171631.P12931175876249903918.a, A171631.P14018756786574744483.a, A003991, A003991.P6365127437582401781.a, A055461, A055461.P13333228572909301680.a, A074909, A074909.P6402560185863182536.a, A135278, A135278.P15294612270063548765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171631

/-! ## A171631.P14903099348836075561

`A004736(n+1)²*A074909(n)`
-/

namespace A171631.P14903099348836075561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 2 * A074909 n

end

end A171631.P14903099348836075561

namespace A171631

/-- `A004736(n+1)²*A074909(n)` -/
def P14903099348836075561.Spec : Prop :=
  ∀ n, P14903099348836075561.a n = A171631 (n + 1)

end A171631

/-! ## A171631.P17722448398482285622

`A003506(n+1)²/A074909(n)`
-/

namespace A171631.P17722448398482285622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003506 (n + 1) ^ 2 : ℚ) / (A074909 n : ℚ)

end

end A171631.P17722448398482285622

namespace A171631

/-- `A003506(n+1)²/A074909(n)` -/
def P17722448398482285622.Spec : Prop :=
  ∀ n, P17722448398482285622.a n = (A171631 (n + 1) : ℚ)

end A171631

/-! ## A171631.P178729250597741781

`A003506(n+1)*A004736(n+1)`
-/

namespace A171631.P178729250597741781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) * A004736 (n + 1)

end

end A171631.P178729250597741781

namespace A171631

/-- `A003506(n+1)*A004736(n+1)` -/
def P178729250597741781.Spec : Prop :=
  ∀ n, P178729250597741781.a n = A171631 (n + 1)

end A171631

/-! ## A171631.P12449084396324408436

`A004736(n+1)²*A007318(A007401(n+1))`
-/

namespace A171631.P12449084396324408436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 2 * A007318 (A007401 (n + 1)).toNat

end

end A171631.P12449084396324408436

namespace A171631

/-- `A004736(n+1)²*A007318(A007401(n+1))` -/
def P12449084396324408436.Spec : Prop :=
  ∀ n, P12449084396324408436.a n = A171631 (n + 1)

end A171631

/-! ## A171631.P9198437606671326887

`A093375(n+1)*A128228(n+1)/A128227(n)`
-/

namespace A171631.P9198437606671326887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093375 (n + 1) * A128228 (n + 1) : ℚ) / (A128227 n : ℚ)

end

end A171631.P9198437606671326887

namespace A171631

/-- `A093375(n+1)*A128228(n+1)/A128227(n)` -/
def P9198437606671326887.Spec : Prop :=
  ∀ n, P9198437606671326887.a n = (A171631 (n + 1) : ℚ)

end A171631

/-! ## A171631.P3581803506477014736

`(C(comp[∑[n]]-n, 2)-n)*A046205(2*(n+1))`
-/

namespace A171631.P3581803506477014736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A046205 (2 * (n + 1))

end

end A171631.P3581803506477014736

namespace A171631

/-- `(C(comp[∑[n]]-n, 2)-n)*A046205(2*(n+1))` -/
def P3581803506477014736.Spec : Prop :=
  ∀ n, P3581803506477014736.a n = A171631 (n + 1)

end A171631

/-! ## A171631.P36447701210633394

`A152883(n+2)/A098361(n)`
-/

namespace A171631.P36447701210633394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152883 (n + 2) : ℚ) / (A098361 n : ℚ)

end

end A171631.P36447701210633394

namespace A171631

/-- `A152883(n+2)/A098361(n)` -/
def P36447701210633394.Spec : Prop :=
  ∀ n, P36447701210633394.a n = (A171631 (n + 1) : ℚ)

end A171631

/-!
# A171632: Number of compositions of n such that the greatest part is divisible by the number of parts.

The programs for A171632, there is no canonical definition to state claims against.
-/

/-! ## A171632.P3155752177076960688

`2^n-A199885(n+1)`
-/

namespace A171632.P3155752177076960688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A199885 (n + 1)

end

end A171632.P3155752177076960688

/-! ## A171632.P1582198119779366529

`abs(A199885(n+1)-A000079(n))`
-/

namespace A171632.P1582198119779366529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199885 (n + 1) - A000079 n|

end

end A171632.P1582198119779366529

/-! ## A171632.P6862380210924714965

`A000051(n)-(A199885(n+1)+1)`
-/

namespace A171632.P6862380210924714965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A199885 (n + 1) + 1)

end

end A171632.P6862380210924714965

/-! ## A171632.P11567317820929897508

`abs(A011782(n+1)-A199885(n+1))`
-/

namespace A171632.P11567317820929897508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (n + 1) - A199885 (n + 1)|

end

end A171632.P11567317820929897508

/-! ## A171632.P572072666832630428

`A134667(2*n)-(A199885(n+1)-A000079(n))`
-/

namespace A171632.P572072666832630428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 (2 * n) - (A199885 (n + 1) - A000079 n)

end

end A171632.P572072666832630428

/-! ## A171632.P15378006218531904138

`A010051((n+1)²)-(A199885(n+1)-A000079(n))`
-/

namespace A171632.P15378006218531904138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 ((n + 1) ^ 2) - (A199885 (n + 1) - A000079 n)

end

end A171632.P15378006218531904138

/-! ## A171632.P7747483121582895517

`A171634(n+1)+A199884(n+1)-A199885(n+1)`
-/

namespace A171632.P7747483121582895517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171634 (n + 1) + (A199884 (n + 1) - A199885 (n + 1))

end

end A171632.P7747483121582895517

/-! ## A171632.P12049512838689830267

`A000079(n)+A008683(A006512(n+1))*A199885(n+1)`
-/

namespace A171632.P12049512838689830267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A008683 (A006512 (n + 1)).toNat * A199885 (n + 1)

end

end A171632.P12049512838689830267

/-! ## A171632.P8115024187095167861

`A347871(A347872(n+1))-(A199885(n+1)-A000079(n))`
-/

namespace A171632.P8115024187095167861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (A347872 (n + 1)).toNat - (A199885 (n + 1) - A000079 n)

end

end A171632.P8115024187095167861

/-! ## A171632.P2170662745861381745

`A000079(n)+A008683(A022005(n+1))*A199885(n+1)`
-/

namespace A171632.P2170662745861381745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A008683 (A022005 (n + 1)).toNat * A199885 (n + 1)

end

end A171632.P2170662745861381745

/-!
# A171634: Number of compositions of n such that the number of parts is divisible by the greatest part.

The programs for A171634, there is no canonical definition to state claims against.
-/

/-! ## A171634.P16063477818856888537

`2^n-A199884(n+1)`
-/

namespace A171634.P16063477818856888537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A199884 (n + 1)

end

end A171634.P16063477818856888537

/-! ## A171634.P4104709012671396468

`abs(A199884(n+1)-A000079(n))`
-/

namespace A171634.P4104709012671396468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199884 (n + 1) - A000079 n|

end

end A171634.P4104709012671396468

/-! ## A171634.P16917898899779291492

`abs(A199884(n+1)-Δ[A000051(n)])`
-/

namespace A171634.P16917898899779291492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A199884 (n + 1) - (f1 (n + 1) - f1 n)|

end

end A171634.P16917898899779291492

/-! ## A171634.P7088576516261802632

`abs(A011782(n+1)-A199884(n+1))`
-/

namespace A171634.P7088576516261802632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 (n + 1) - A199884 (n + 1)|

end

end A171634.P7088576516261802632

/-! ## A171634.P15389321993058418931

`A000225(n+1)-(A199884(n+1)+A000225(n))`
-/

namespace A171634.P15389321993058418931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - (A199884 (n + 1) + A000225 n)

end

end A171634.P15389321993058418931

/-! ## A171634.P17730837178943273623

`A000918(n+1)-(A199884(n+1)+A000918(n))`
-/

namespace A171634.P17730837178943273623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (n + 1) - (A199884 (n + 1) + A000918 n)

end

end A171634.P17730837178943273623

/-! ## A171634.P746941096369825059

`A171632(n+1)+A199885(n+1)-A199884(n+1)`
-/

namespace A171634.P746941096369825059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171632 (n + 1) + (A199885 (n + 1) - A199884 (n + 1))

end

end A171634.P746941096369825059

/-! ## A171634.P7701089270042071804

`A199886(n+1)+A199887(n+1)-A199884(n+1)`
-/

namespace A171634.P7701089270042071804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199886 (n + 1) + (A199887 (n + 1) - A199884 (n + 1))

end

end A171634.P7701089270042071804

/-! ## A171634.P7483989083938208617

`A000079(n)-A199884(n+1)*A287104(A287105(n+1)+1)`
-/

namespace A171634.P7483989083938208617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A199884 (n + 1) * A287104 (A287105 (n + 1) + 1).toNat

end

end A171634.P7483989083938208617

/-!
# A171635: Squares in lunar arithmetic in base 8 written in base 10.

The programs for A171635, there is no canonical definition to state claims against.
-/

/-! ## A171635.P15865463567898819746

`8*(n-A190597(n))+n`
-/

namespace A171635.P15865463567898819746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ((n : ℤ) - A190597 n) + (n : ℤ)

end

end A171635.P15865463567898819746

/-! ## A171635.P14701377775223494988

`eq[A190597(n), A346731(n)]`
-/

namespace A171635.P14701377775223494988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190597 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346731 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171635.P14701377775223494988

/-! ## A171635.P13806639432295404803

`n-A181983(8*(n-A190597(n)))`
-/

namespace A171635.P13806639432295404803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A181983 (8 * ((n : ℤ) - A190597 n)).toNat

end

end A171635.P13806639432295404803

/-! ## A171635.P7898408485129981476

`abs(8*(n-A190597(n))-A001489(n))`
-/

namespace A171635.P7898408485129981476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 * ((n : ℤ) - A190597 n) - A001489 n|

end

end A171635.P7898408485129981476

/-! ## A171635.P16204644214314728159

`A008619(2*n)-(1-8*(n-A190597(n)))`
-/

namespace A171635.P16204644214314728159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - (1 - 8 * ((n : ℤ) - A190597 n))

end

end A171635.P16204644214314728159

/-! ## A171635.P12329054773023351698

`n-8*(n-A190597(n))*A008683(A056206(n))`
-/

namespace A171635.P12329054773023351698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 8 * ((n : ℤ) - A190597 n) * A008683 (A056206 n).toNat

end

end A171635.P12329054773023351698

/-! ## A171635.P1242555336968317392

`n-1-(A309873(A016825(n))-8*(n-A190597(n)))`
-/

namespace A171635.P1242555336968317392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (A309873 (A016825 n).toNat - 8 * ((n : ℤ) - A190597 n))

end

end A171635.P1242555336968317392

/-! ## A171635.P3409418766118686744

`A028903(A171644(n))`
-/

namespace A171635.P3409418766118686744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A171644 n).toNat

end

end A171635.P3409418766118686744

/-!
# A171636: Table read by rows. Coefficients of Lommel polynomials L(n, m, z) = (Gamma(n + m) / (Gamma(n) * (z/2)^m)) * hypergeom([(1 - m)/2, -m/2], [n, -m, 1 - n - m], z^2) for n = m and descending powers.

The programs for A171636, there is no canonical definition to state claims against.
-/

/-! ## A171636.P15971313975449420991

`A181966(a(n-1)+n)` with `a(0)=2, a(1)=24, a(2)=0, a(3)=1`
-/

namespace A171636.P15971313975449420991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 24, 0, 1] fun n a =>
  A181966 (a (n - 1) + (n : ℤ)).toNat

end

end A171636.P15971313975449420991

/-!
# A171637: Triangle read by rows in which row n lists the distinct primes of the distinct decompositions of 2n into unordered sums of two primes.

The programs for A171637, there is no canonical definition to state claims against.
-/

/-! ## A171637.P11132459087314070356

`p?[A154726(n+1)]`
-/

namespace A171637.P11132459087314070356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171637.P11132459087314070356

/-! ## A171637.P10384226004099556386

`filter[A154726(n+1), A010051(#)]`
-/

namespace A171637.P10384226004099556386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A171637.P10384226004099556386

/-! ## A171637.P18394507369789930173

`filter[A154726(n+2), A080339(#)]`
-/

namespace A171637.P18394507369789930173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154726 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A171637.P18394507369789930173

/-! ## A171637.P16853336762526035360

`p?[A154724(n+1)]`
-/

namespace A171637.P16853336762526035360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171637.P16853336762526035360

/-! ## A171637.P3467071418923790045

`p?[A154720(A010052(n)+n)]`
-/

namespace A171637.P3467071418923790045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (A010052 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171637.P3467071418923790045

/-! ## A171637.P4170709558430710528

`p?[A154720(n+1)%A000267(n)]`
-/

namespace A171637.P4170709558430710528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154720 (n + 1)) (A000267 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171637.P4170709558430710528

/-! ## A171637.P5384885636791064268

`p?[A001222(A080883(n))²*A071797(n+1)]`
-/

namespace A171637.P5384885636791064268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A080883 n).toNat ^ 2 * A071797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171637.P5384885636791064268

/-! ## A171637.P16862158591845195788

`p?[A154720(n+1)+A154725(n+1)-A154721(n+1)]`
-/

namespace A171637.P16862158591845195788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154720 (n + 1) + (A154725 (n + 1) - A154721 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171637.P16862158591845195788

/-!
# A171638: Denominator of 1/(n-2)^2 - 1/(n+2)^2.

The programs for A171638, the canonical program `A171638.P8823395210099823483` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171638 has offset 2).

The definition of A171638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171638.P8823395210099823483

`A171621(n+2)²`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A171638

/-- `A171621(n+2)²` -/
def P8823395210099823483.Spec : Prop :=
  ∀ n, P8823395210099823483.a n = A171638 (n + 2)

theorem P8823395210099823483.correct : P8823395210099823483.Spec := by
  intro n
  simp only [A171638, Nat.add_sub_cancel]

end A171638

/-! ## A171638.P12651015590574450240

`(lcm(4, 4-(n+2)²)/4)²`
-/

namespace A171638.P12651015590574450240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.lcm 4 (4 - ((n + 2) ^ 2 : ℤ)) : ℚ) / 4) ^ 2

end

end A171638.P12651015590574450240

namespace A171638

/-- `(lcm(4, 4-(n+2)²)/4)²` -/
def P12651015590574450240.Spec : Prop :=
  ∀ n, P12651015590574450240.a n = (A171638 (n + 2) : ℚ)

end A171638

/-! ## A171638.P504375236211693529

`A010153(n)*A181763(n+2)`
-/

namespace A171638.P504375236211693529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 n * A181763 (n + 2)

end

end A171638.P504375236211693529

namespace A171638

/-- `A010153(n)*A181763(n+2)` -/
def P504375236211693529.Spec : Prop :=
  ∀ n, P504375236211693529.a n = A171638 (n + 2)

end A171638

/-! ## A171638.P1888497017937180760

`(A142705(n+1)+A064680(n))²`
-/

namespace A171638.P1888497017937180760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A142705 (n + 1) + A064680 n) ^ 2

end

end A171638.P1888497017937180760

namespace A171638

/-- `(A142705(n+1)+A064680(n))²` -/
def P1888497017937180760.Spec : Prop :=
  ∀ n, P1888497017937180760.a n = A171638 (n + 2)

end A171638

/-! ## A171638.P4446574469024388525

`(A010121(n)*A061037(n+2))²`
-/

namespace A171638.P4446574469024388525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010121 n * A061037 (n + 2)) ^ 2

end

end A171638.P4446574469024388525

namespace A171638

/-- `(A010121(n)*A061037(n+2))²` -/
def P4446574469024388525.Spec : Prop :=
  ∀ n, P4446574469024388525.a n = A171638 (n + 2)

theorem P4446574469024388525.correct : P4446574469024388525.Spec := by
  intro n
  simp only [A171638, Nat.add_sub_cancel, A171638.P4446574469024388525.a, A171638.P8823395210099823483.a, A010121, A010121.P12688679297124374582.a, A061037, A061037.P80081350164223039.a, A171621, A171621.P19222282852191136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A171638

/-! ## A171638.P6790271946285928673

`(A168077(n)+2*A064680(n))²`
-/

namespace A171638.P6790271946285928673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168077 n + 2 * A064680 n) ^ 2

end

end A171638.P6790271946285928673

namespace A171638

/-- `(A168077(n)+2*A064680(n))²` -/
def P6790271946285928673.Spec : Prop :=
  ∀ n, P6790271946285928673.a n = A171638 (n + 2)

end A171638

/-! ## A171638.P6711777390778536107

`(A370912(n)/A144433(n+1))²`
-/

namespace A171638.P6711777390778536107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A370912 n : ℚ) / (A144433 (n + 1) : ℚ)) ^ 2

end

end A171638.P6711777390778536107

namespace A171638

/-- `(A370912(n)/A144433(n+1))²` -/
def P6711777390778536107.Spec : Prop :=
  ∀ n, P6711777390778536107.a n = (A171638 (n + 2) : ℚ)

end A171638

/-! ## A171638.P16967815031247416169

`(A028560(A026741(n))-2*n)²`
-/

namespace A171638.P16967815031247416169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028560 (A026741 n).toNat - (2 * n : ℤ)) ^ 2

end

end A171638.P16967815031247416169

namespace A171638

/-- `(A028560(A026741(n))-2*n)²` -/
def P16967815031247416169.Spec : Prop :=
  ∀ n, P16967815031247416169.a n = A171638 (n + 2)

end A171638

/-! ## A171638.P11281972519202577827

`(A028347(n+2)/A040005(n))²`
-/

namespace A171638.P11281972519202577827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028347 (n + 2) : ℚ) / (A040005 n : ℚ)) ^ 2

end

end A171638.P11281972519202577827

namespace A171638

/-- `(A028347(n+2)/A040005(n))²` -/
def P11281972519202577827.Spec : Prop :=
  ∀ n, P11281972519202577827.a n = (A171638 (n + 2) : ℚ)

end A171638

/-! ## A171638.P8948008155646816256

`gcd(A028347(n+2), A188667(n))²`
-/

namespace A171638.P8948008155646816256
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028347 (n + 2)) (A188667 n) ^ 2

end

end A171638.P8948008155646816256

namespace A171638

/-- `gcd(A028347(n+2), A188667(n))²` -/
def P8948008155646816256.Spec : Prop :=
  ∀ n, (P8948008155646816256.a n : ℤ) = A171638 (n + 2)

end A171638

/-! ## A171638.P6950265226891102054

`(A168077(n)+n*A010685(n))²`
-/

namespace A171638.P6950265226891102054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168077 n + (n : ℤ) * A010685 n) ^ 2

end

end A171638.P6950265226891102054

namespace A171638

/-- `(A168077(n)+n*A010685(n))²` -/
def P6950265226891102054.Spec : Prop :=
  ∀ n, P6950265226891102054.a n = A171638 (n + 2)

end A171638

/-! ## A171638.P11843049924028737475

`((A097362(n+1)+1)*A026741(n))²`
-/

namespace A171638.P11843049924028737475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A097362 (n + 1) + 1) * A026741 n) ^ 2

end

end A171638.P11843049924028737475

namespace A171638

/-- `((A097362(n+1)+1)*A026741(n))²` -/
def P11843049924028737475.Spec : Prop :=
  ∀ n, P11843049924028737475.a n = A171638 (n + 2)

end A171638

/-! ## A171638.P17125889132146500423

`(A145051(n+1)²-A000034(n)²)²`
-/

namespace A171638.P17125889132146500423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A145051 (n + 1) ^ 2 - A000034 n ^ 2) ^ 2

end

end A171638.P17125889132146500423

namespace A171638

/-- `(A145051(n+1)²-A000034(n)²)²` -/
def P17125889132146500423.Spec : Prop :=
  ∀ n, P17125889132146500423.a n = A171638 (n + 2)

end A171638

/-! ## A171638.P17711950793568087553

`((A145051(n+1)+A000034(n))*A026741(n))²`
-/

namespace A171638.P17711950793568087553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((A145051 (n + 1) + A000034 n) * A026741 n) ^ 2

end

end A171638.P17711950793568087553

namespace A171638

/-- `((A145051(n+1)+A000034(n))*A026741(n))²` -/
def P17711950793568087553.Spec : Prop :=
  ∀ n, P17711950793568087553.a n = A171638 (n + 2)

end A171638

/-! ## A171638.P13801078079887934831

`A061037(n+2)*A171621(n+2)*A010121(n)`
-/

namespace A171638.P13801078079887934831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061037 (n + 2) * A171621 (n + 2) * A010121 n

end

end A171638.P13801078079887934831

namespace A171638

/-- `A061037(n+2)*A171621(n+2)*A010121(n)` -/
def P13801078079887934831.Spec : Prop :=
  ∀ n, P13801078079887934831.a n = A171638 (n + 2)

theorem P13801078079887934831.correct : P13801078079887934831.Spec := by
  intro n
  simp only [A171638, Nat.add_sub_cancel, A171638.P13801078079887934831.a, A171638.P8823395210099823483.a, A010121, A010121.P12688679297124374582.a, A061037, A061037.P80081350164223039.a, A171621, A171621.P19222282852191136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A171638

/-! ## A171638.P16179536223808780945

`(A026741(n+4)*A026741(n))²`
-/

namespace A171638.P16179536223808780945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 4) * A026741 n) ^ 2

end

end A171638.P16179536223808780945

namespace A171638

/-- `(A026741(n+4)*A026741(n))²` -/
def P16179536223808780945.Spec : Prop :=
  ∀ n, P16179536223808780945.a n = A171638 (n + 2)

end A171638

/-! ## A171638.P11835207003648649472

`A168077(n+4)*A168077(n)`
-/

namespace A171638.P11835207003648649472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (n + 4) * A168077 n

end

end A171638.P11835207003648649472

namespace A171638

/-- `A168077(n+4)*A168077(n)` -/
def P11835207003648649472.Spec : Prop :=
  ∀ n, P11835207003648649472.a n = A171638 (n + 2)

end A171638

/-! ## A171638.P11684067072448061702

`A175628(A022998(n+1))²`
-/

namespace A171638.P11684067072448061702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175628 (A022998 (n + 1)).toNat ^ 2

end

end A171638.P11684067072448061702

namespace A171638

/-- `A175628(A022998(n+1))²` -/
def P11684067072448061702.Spec : Prop :=
  ∀ n, P11684067072448061702.a n = A171638 (n + 2)

end A171638

/-! ## A171638.P7765753930948164032

`A175628(A059029(n)+1)²`
-/

namespace A171638.P7765753930948164032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175628 (A059029 n + 1).toNat ^ 2

end

end A171638.P7765753930948164032

namespace A171638

/-- `A175628(A059029(n)+1)²` -/
def P7765753930948164032.Spec : Prop :=
  ∀ n, P7765753930948164032.a n = A171638 (n + 2)

end A171638

/-! ## A171638.P11768154258103255871

`A175628(A257088(n+1))²`
-/

namespace A171638.P11768154258103255871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175628 (A257088 (n + 1)).toNat ^ 2

end

end A171638.P11768154258103255871

namespace A171638

/-- `A175628(A257088(n+1))²` -/
def P11768154258103255871.Spec : Prop :=
  ∀ n, P11768154258103255871.a n = A171638 (n + 2)

end A171638

/-!
# A171639: Sum of n-th nonprime number and n-th noncomposite number.

The programs for A171639, the canonical program `A171639.P4220126091121494472` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171639 has offset 1).

The definition of A171639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171639.P4220126091121494472

`A090178(n+1)+A073425(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A171639

/-- `A090178(n+1)+A073425(n)` -/
def P4220126091121494472.Spec : Prop :=
  ∀ n, P4220126091121494472.a n = A171639 (n + 1)

theorem P4220126091121494472.correct : P4220126091121494472.Spec := by
  intro n
  simp only [A171639, Nat.add_sub_cancel]

end A171639

/-! ## A171639.P17536281847716999016

`A022797(n+1)-A075526(n)`
-/

namespace A171639.P17536281847716999016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022797 (n + 1) - A075526 n

end

end A171639.P17536281847716999016

namespace A171639

/-- `A022797(n+1)-A075526(n)` -/
def P17536281847716999016.Spec : Prop :=
  ∀ n, P17536281847716999016.a n = A171639 (n + 1)

end A171639

/-! ## A171639.P15893703656836277089

`A008578(n+1)+Δ[A051349(n)]`
-/

namespace A171639.P15893703656836277089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (f1 (n + 1) - f1 n)

end

end A171639.P15893703656836277089

namespace A171639

/-- `A008578(n+1)+Δ[A051349(n)]` -/
def P15893703656836277089.Spec : Prop :=
  ∀ n, P15893703656836277089.a n = A171639 (n + 1)

theorem P15893703656836277089.correct : P15893703656836277089.Spec := by
  intro n
  simp only [A171639, Nat.add_sub_cancel, A171639.P15893703656836277089.f1, A171639.P15893703656836277089.a, A171639.P4220126091121494472.a, A008578, A008578.P3639467937083264764.a, A051349, A051349.P2414547720400107792.a, A073425, A073425.P859015994304671289.f1, A073425.P859015994304671289.a, A090178, A090178.P3922482968985292774.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A171639

/-! ## A171639.P6262455387421240731

`A028815(n)+comp[A006093(n+1)]`
-/

namespace A171639.P6262455387421240731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A171639.P6262455387421240731

namespace A171639

/-- `A028815(n)+comp[A006093(n+1)]` -/
def P6262455387421240731.Spec : Prop :=
  ∀ n, P6262455387421240731.a n = A171639 (n + 1)

end A171639

/-! ## A171639.P16321416682666699329

`A008578(n+1)+A018252(n+1)`
-/

namespace A171639.P16321416682666699329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + A018252 (n + 1)

end

end A171639.P16321416682666699329

namespace A171639

/-- `A008578(n+1)+A018252(n+1)` -/
def P16321416682666699329.Spec : Prop :=
  ∀ n, P16321416682666699329.a n = A171639 (n + 1)

end A171639

/-! ## A171639.P4029078698262020439

`A171504(n+1)+A162177(n+1)`
-/

namespace A171639.P4029078698262020439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171504 (n + 1) + A162177 (n + 1)

end

end A171639.P4029078698262020439

namespace A171639

/-- `A171504(n+1)+A162177(n+1)` -/
def P4029078698262020439.Spec : Prop :=
  ∀ n, P4029078698262020439.a n = A171639 (n + 1)

end A171639

/-! ## A171639.P9182330006974606568

`A299763(n+1)+A060462(n+1)`
-/

namespace A171639.P9182330006974606568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1) + A060462 (n + 1)

end

end A171639.P9182330006974606568

namespace A171639

/-- `A299763(n+1)+A060462(n+1)` -/
def P9182330006974606568.Spec : Prop :=
  ∀ n, P9182330006974606568.a n = A171639 (n + 1)

end A171639

/-! ## A171639.P6577742315129441008

`A018252(n+1)+A028815(n)-1`
-/

namespace A171639.P6577742315129441008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (A028815 n - 1)

end

end A171639.P6577742315129441008

namespace A171639

/-- `A018252(n+1)+A028815(n)-1` -/
def P6577742315129441008.Spec : Prop :=
  ∀ n, P6577742315129441008.a n = A171639 (n + 1)

end A171639

/-! ## A171639.P7033514394607473648

`A022798(n+1)-A065310(n+1)`
-/

namespace A171639.P7033514394607473648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022798 (n + 1) - A065310 (n + 1)

end

end A171639.P7033514394607473648

namespace A171639

/-- `A022798(n+1)-A065310(n+1)` -/
def P7033514394607473648.Spec : Prop :=
  ∀ n, P7033514394607473648.a n = A171639 (n + 1)

end A171639

/-! ## A171639.P15913429168784176075

`A141468(n+2)+A008578(n+1)`
-/

namespace A171639.P15913429168784176075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 2) + A008578 (n + 1)

end

end A171639.P15913429168784176075

namespace A171639

/-- `A141468(n+2)+A008578(n+1)` -/
def P15913429168784176075.Spec : Prop :=
  ∀ n, P15913429168784176075.a n = A171639 (n + 1)

end A171639

/-! ## A171639.P320287932827869078

`∪[A006935(n+1), A064799(n+1)]`
-/

namespace A171639.P320287932827869078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006935 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171639.P320287932827869078

namespace A171639

/-- `∪[A006935(n+1), A064799(n+1)]` -/
def P320287932827869078.Spec : Prop :=
  ∀ n, (P320287932827869078.a n : ℤ) = A171639 (n + 1)

end A171639

/-! ## A171639.P7103936517757728646

`∪[A007352(n+1), A064799(n+1)]`
-/

namespace A171639.P7103936517757728646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171639.P7103936517757728646

namespace A171639

/-- `∪[A007352(n+1), A064799(n+1)]` -/
def P7103936517757728646.Spec : Prop :=
  ∀ n, (P7103936517757728646.a n : ℤ) = A171639 (n + 1)

end A171639

/-! ## A171639.P8297438613303584318

`A018252(n+1)+sqrt(A280076(n+1))`
-/

namespace A171639.P8297438613303584318
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 1) : ℝ) + Real.sqrt (A280076 (n + 1) : ℝ)

end

end A171639.P8297438613303584318

namespace A171639

/-- `A018252(n+1)+sqrt(A280076(n+1))` -/
def P8297438613303584318.Spec : Prop :=
  ∀ n, P8297438613303584318.a n = (A171639 (n + 1) : ℝ)

end A171639

/-! ## A171639.P5360114381176961396

`A018252(n+1)+A001747(n+1)/2`
-/

namespace A171639.P5360114381176961396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 1) : ℚ) + (A001747 (n + 1) : ℚ) / 2

end

end A171639.P5360114381176961396

namespace A171639

/-- `A018252(n+1)+A001747(n+1)/2` -/
def P5360114381176961396.Spec : Prop :=
  ∀ n, P5360114381176961396.a n = (A171639 (n + 1) : ℚ)

end A171639

/-! ## A171639.P14206470067392191608

`A018252(n+1)+A000040(n%a(n-1))` with `a(0)=2`
-/

namespace A171639.P14206470067392191608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A018252 (n + 1) + A000040 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A171639.P14206470067392191608

namespace A171639

/-- `A018252(n+1)+A000040(n%a(n-1))` -/
def P14206470067392191608.Spec : Prop :=
  ∀ n, P14206470067392191608.a n = A171639 (n + 1)

end A171639

/-! ## A171639.P7074896440160667699

`A008578(n+1)+A051349(n+1)-A051349(n)`
-/

namespace A171639.P7074896440160667699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A051349 (n + 1) - A051349 n)

end

end A171639.P7074896440160667699

namespace A171639

/-- `A008578(n+1)+A051349(n+1)-A051349(n)` -/
def P7074896440160667699.Spec : Prop :=
  ∀ n, P7074896440160667699.a n = A171639 (n + 1)

theorem P7074896440160667699.correct : P7074896440160667699.Spec := by
  intro n
  simp only [A171639, Nat.add_sub_cancel, A171639.P7074896440160667699.a, A171639.P4220126091121494472.a, A008578, A008578.P3639467937083264764.a, A051349, A051349.P2414547720400107792.a, A073425, A073425.P859015994304671289.f1, A073425.P859015994304671289.a, A090178, A090178.P3922482968985292774.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A158611, A158611.P9275629407611603775.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A171639

/-! ## A171639.P16793018893312408870

`A014238(n+1)+A018252(n+1)+A018252(n+2)`
-/

namespace A171639.P16793018893312408870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014238 (n + 1) + (A018252 (n + 1) + A018252 (n + 2))

end

end A171639.P16793018893312408870

namespace A171639

/-- `A014238(n+1)+A018252(n+1)+A018252(n+2)` -/
def P16793018893312408870.Spec : Prop :=
  ∀ n, P16793018893312408870.a n = A171639 (n + 1)

end A171639

/-! ## A171639.P10684741065221214876

`A002808(n+1)+A008578(n+1)-A065310(n+1)`
-/

namespace A171639.P10684741065221214876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A008578 (n + 1) - A065310 (n + 1))

end

end A171639.P10684741065221214876

namespace A171639

/-- `A002808(n+1)+A008578(n+1)-A065310(n+1)` -/
def P10684741065221214876.Spec : Prop :=
  ∀ n, P10684741065221214876.a n = A171639 (n + 1)

end A171639

/-! ## A171639.P13345358546092163896

`A008578(n+1)+A163249(n+1)-A014689(n+1)`
-/

namespace A171639.P13345358546092163896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A163249 (n + 1) - A014689 (n + 1))

end

end A171639.P13345358546092163896

namespace A171639

/-- `A008578(n+1)+A163249(n+1)-A014689(n+1)` -/
def P13345358546092163896.Spec : Prop :=
  ∀ n, P13345358546092163896.a n = A171639 (n + 1)

end A171639

/-! ## A171639.P7898102484027468457

`A018252(n+1)+A036439(n+1)-A175965(n+1)`
-/

namespace A171639.P7898102484027468457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) + (A036439 (n + 1) - A175965 (n + 1))

end

end A171639.P7898102484027468457

namespace A171639

/-- `A018252(n+1)+A036439(n+1)-A175965(n+1)` -/
def P7898102484027468457.Spec : Prop :=
  ∀ n, P7898102484027468457.a n = A171639 (n + 1)

end A171639

/-!
# A171640: a(n) = 10*a(n-1)-a(n-2)-4 with a(1)=1 and a(2)=3.

The programs for A171640, the canonical program `A171640.P4488203020588999958` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171640 has offset 1).

The definition of A171640 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-a(n-2)-4` (program `A171640.P4488203020588999958`, by `A171640.P4488203020588999958.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171640.P4488203020588999958

`10*a(n-1)-a(n-2)-4` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A171640

/-- `10*a(n-1)-a(n-2)-4` -/
def P4488203020588999958.Spec : Prop :=
  ∀ n, P4488203020588999958.a n = A171640 (n + 1)

theorem P4488203020588999958.correct : P4488203020588999958.Spec := by
  intro n
  simp only [A171640, Nat.add_sub_cancel]

end A171640

/-! ## A171640.P2632404493351616094

`A132596(n)+1`
-/

namespace A171640.P2632404493351616094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132596 n + 1

end

end A171640.P2632404493351616094

namespace A171640

/-- `A132596(n)+1` -/
def P2632404493351616094.Spec : Prop :=
  ∀ n, P2632404493351616094.a n = A171640 (n + 1)

end A171640

/-! ## A171640.P3534213284789430463

`∑[ogf((1-8x+3x^2)/(1-10x+x^2))]`
-/

namespace A171640.P3534213284789430463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8, 3] [1, -10, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171640.P3534213284789430463

namespace A171640

/-- `∑[ogf((1-8x+3x^2)/(1-10x+x^2))]` -/
def P3534213284789430463.Spec : Prop :=
  ∀ n, P3534213284789430463.a n = A171640 (n + 1)

end A171640

/-! ## A171640.P3805573314495136794

`2*A098297(n)+1`
-/

namespace A171640.P3805573314495136794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A098297 n + 1

end

end A171640.P3805573314495136794

namespace A171640

/-- `2*A098297(n)+1` -/
def P3805573314495136794.Spec : Prop :=
  ∀ n, P3805573314495136794.a n = A171640 (n + 1)

end A171640

/-! ## A171640.P11150056780579821878

`or(1, A132596(sqrt(A000290(n))))`
-/

namespace A171640.P11150056780579821878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A132596 (SequenceMachineLib.roundAway (Real.sqrt (A000290 n : ℝ))).toNat)

end

end A171640.P11150056780579821878

namespace A171640

/-- `or(1, A132596(sqrt(A000290(n))))` -/
def P11150056780579821878.Spec : Prop :=
  ∀ n, P11150056780579821878.a n = A171640 (n + 1)

end A171640

/-! ## A171640.P8838281468922572515

`or(A033999(n)², A132596(n))`
-/

namespace A171640.P8838281468922572515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033999 n ^ 2) (A132596 n)

end

end A171640.P8838281468922572515

namespace A171640

/-- `or(A033999(n)², A132596(n))` -/
def P8838281468922572515.Spec : Prop :=
  ∀ n, P8838281468922572515.a n = A171640 (n + 1)

end A171640

/-! ## A171640.P16369490451917079357

`or(A178334(n)!, A132596(n))`
-/

namespace A171640.P16369490451917079357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (A178334 n).toNat : ℤ) (A132596 n)

end

end A171640.P16369490451917079357

namespace A171640

/-- `or(A178334(n)!, A132596(n))` -/
def P16369490451917079357.Spec : Prop :=
  ∀ n, P16369490451917079357.a n = A171640 (n + 1)

end A171640

/-! ## A171640.P4351021791535912751

`or(A007318(∑[n]), A132596(n))`
-/

namespace A171640.P4351021791535912751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A132596 n)

end

end A171640.P4351021791535912751

namespace A171640

/-- `or(A007318(∑[n]), A132596(n))` -/
def P4351021791535912751.Spec : Prop :=
  ∀ n, P4351021791535912751.a n = A171640 (n + 1)

end A171640

/-! ## A171640.P3200413228245670046

`xor(char[A061601(n)], A132596(n))`
-/

namespace A171640.P3200413228245670046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061601 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A132596 n)

end

end A171640.P3200413228245670046

namespace A171640

/-- `xor(char[A061601(n)], A132596(n))` -/
def P3200413228245670046.Spec : Prop :=
  ∀ n, P3200413228245670046.a n = A171640 (n + 1)

end A171640

/-! ## A171640.P16918000036977062531

`A181442(A004273(n))+A004189(n)`
-/

namespace A171640.P16918000036977062531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181442 (A004273 n).toNat + A004189 n

end

end A171640.P16918000036977062531

namespace A171640

/-- `A181442(A004273(n))+A004189(n)` -/
def P16918000036977062531.Spec : Prop :=
  ∀ n, P16918000036977062531.a n = A171640 (n + 1)

end A171640

/-! ## A171640.P2680857669760040211

`((sqrt(3)-sqrt(2))^n+(sqrt(3)+sqrt(2))^n)²/4`
-/

namespace A171640.P2680857669760040211
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (3 : ℝ) - Real.sqrt (2 : ℝ)) ^ n + (Real.sqrt (3 : ℝ) + Real.sqrt (2 : ℝ)) ^ n) ^ 2 / 4

end

end A171640.P2680857669760040211

namespace A171640

/-- `((sqrt(3)-sqrt(2))^n+(sqrt(3)+sqrt(2))^n)²/4` -/
def P2680857669760040211.Spec : Prop :=
  ∀ n, P2680857669760040211.a n = (A171640 (n + 1) : ℝ)

end A171640

/-! ## A171640.P9190596718596751135

`ceil(A001079(n)/2)`
-/

namespace A171640.P9190596718596751135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001079 n : ℚ) / 2⌉

end

end A171640.P9190596718596751135

namespace A171640

/-- `ceil(A001079(n)/2)` -/
def P9190596718596751135.Spec : Prop :=
  ∀ n, P9190596718596751135.a n = A171640 (n + 1)

end A171640

/-! ## A171640.P6521532991352638241

`round(A087799(n)/4)`
-/

namespace A171640.P6521532991352638241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A087799 n : ℚ) / 4)

end

end A171640.P6521532991352638241

namespace A171640

/-- `round(A087799(n)/4)` -/
def P6521532991352638241.Spec : Prop :=
  ∀ n, P6521532991352638241.a n = A171640 (n + 1)

end A171640

/-! ## A171640.P17277051948540410704

`ceil(A080872(2*n)/2)`
-/

namespace A171640.P17277051948540410704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080872 (2 * n) : ℚ) / 2⌉

end

end A171640.P17277051948540410704

namespace A171640

/-- `ceil(A080872(2*n)/2)` -/
def P17277051948540410704.Spec : Prop :=
  ∀ n, P17277051948540410704.a n = A171640 (n + 1)

end A171640

/-! ## A171640.P552792024367159120

`A001079(n)-A132596(n)`
-/

namespace A171640.P552792024367159120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n - A132596 n

end

end A171640.P552792024367159120

namespace A171640

/-- `A001079(n)-A132596(n)` -/
def P552792024367159120.Spec : Prop :=
  ∀ n, P552792024367159120.a n = A171640 (n + 1)

end A171640

/-! ## A171640.P9335745910463578324

`A001079(n)-2*A098297(n)`
-/

namespace A171640.P9335745910463578324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n - 2 * A098297 n

end

end A171640.P9335745910463578324

namespace A171640

/-- `A001079(n)-2*A098297(n)` -/
def P9335745910463578324.Spec : Prop :=
  ∀ n, P9335745910463578324.a n = A171640 (n + 1)

end A171640

/-! ## A171640.P1961749020844060973

`A054320(n)-A077291(2*n)`
-/

namespace A171640.P1961749020844060973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n - A077291 (2 * n)

end

end A171640.P1961749020844060973

namespace A171640

/-- `A054320(n)-A077291(2*n)` -/
def P1961749020844060973.Spec : Prop :=
  ∀ n, P1961749020844060973.a n = A171640 (n + 1)

end A171640

/-! ## A171640.P4435190430229548778

`A181442(2*n)-A004189(n)`
-/

namespace A171640.P4435190430229548778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181442 (2 * n) - A004189 n

end

end A171640.P4435190430229548778

namespace A171640

/-- `A181442(2*n)-A004189(n)` -/
def P4435190430229548778.Spec : Prop :=
  ∀ n, P4435190430229548778.a n = A171640 (n + 1)

end A171640

/-! ## A171640.P9496342099224287244

`A080872(2*n)-A132596(n)`
-/

namespace A171640.P9496342099224287244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (2 * n) - A132596 n

end

end A171640.P9496342099224287244

namespace A171640

/-- `A080872(2*n)-A132596(n)` -/
def P9496342099224287244.Spec : Prop :=
  ∀ n, P9496342099224287244.a n = A171640 (n + 1)

end A171640

/-! ## A171640.P17172087674379552938

`A087799(n)/2-A132596(n)`
-/

namespace A171640.P17172087674379552938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087799 n : ℚ) / 2 - (A132596 n : ℚ)

end

end A171640.P17172087674379552938

namespace A171640

/-- `A087799(n)/2-A132596(n)` -/
def P17172087674379552938.Spec : Prop :=
  ∀ n, P17172087674379552938.a n = (A171640 (n + 1) : ℚ)

end A171640

/-!
# A171641: Non-deficient numbers with even sigma which are not Zumkeller.

The programs for A171641, there is no canonical definition to state claims against.
-/

/-! ## A171641.P12447979524371580065

`∩[A083211(n+1), A204825(n+1)]`
-/

namespace A171641.P12447979524371580065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171641.P12447979524371580065

/-! ## A171641.P10832718207558288621

`∩[A083211(n+1), A139703(n+1)]`
-/

namespace A171641.P10832718207558288621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171641.P10832718207558288621

/-!
# A171642: Non-deficient numbers with odd sigma such that the sum of the even divisors is twice the sum of the odd divisors.

The programs for A171642, there is no canonical definition to state claims against.
-/

/-! ## A171642.P7123381920432262659

`∩[A156903(n+1), A077591(n)]`
-/

namespace A171642.P7123381920432262659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171642.P7123381920432262659

/-! ## A171642.P15031722003145332291

`∩[A156903(n+1), A195605(n)]`
-/

namespace A171642.P15031722003145332291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171642.P15031722003145332291

/-! ## A171642.P9521040043395221486

`or(2, ∩[A156903(n+1), A008527(n)-8*n])`
-/

namespace A171642.P9521040043395221486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n - (8 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A171642.P9521040043395221486

/-! ## A171642.P15941605698562054675

`∩[(1-2*n)²*A020639(A000010(n+2)), A156903(n+1)]`
-/

namespace A171642.P15941605698562054675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) ^ 2 * A020639 (A000010 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171642.P15941605698562054675

/-! ## A171642.P3129551608430722465

`∩[A129895(n+1), A156903(n+1)]`
-/

namespace A171642.P3129551608430722465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156903 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171642.P3129551608430722465

/-! ## A171642.P2697714623521325967

`∩[A156903(n+1), A396925(n+1)]`
-/

namespace A171642.P2697714623521325967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171642.P2697714623521325967

/-! ## A171642.P6740670661942353154

`∩[A156903(n+1), A389145(n+1)]`
-/

namespace A171642.P6740670661942353154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156903 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171642.P6740670661942353154

/-! ## A171642.P5699699350069284471

`∩[A083211(n+1), A077591(n)]`
-/

namespace A171642.P5699699350069284471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171642.P5699699350069284471

/-! ## A171642.P9241470655720921565

`∩[A083211(n+1), A195605(n)]`
-/

namespace A171642.P9241470655720921565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195605 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171642.P9241470655720921565

/-! ## A171642.P9126965041517052747

`∩[A083211(n+1), A129895(n+1)]`
-/

namespace A171642.P9126965041517052747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171642.P9126965041517052747

/-! ## A171642.P15183710403319177879

`∩[A083211(n+1), A389145(n+1)]`
-/

namespace A171642.P15183710403319177879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083211 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171642.P15183710403319177879

/-!
# A171643: Primes p such that the nearest integer to p*LN2 is prime, LN2=natural logarithm of 2, LN2~0.693147180..

The programs for A171643, there is no canonical definition to state claims against.
-/

/-! ## A171643.P90402521292518878

`p?[A331913(A139316(n+1)+1)]`
-/

namespace A171643.P90402521292518878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331913 (A139316 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171643.P90402521292518878

/-! ## A171643.P3666052769424300495

`record[p?[A002262(A294060(3*n+1))]]`
-/

namespace A171643.P3666052769424300495
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A294060 (3 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171643.P3666052769424300495

/-! ## A171643.P8413360245325363050

`p?[(A110882(n)+2)*A001222(n+2)]`
-/

namespace A171643.P8413360245325363050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A110882 n + 2) * A001222 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171643.P8413360245325363050

/-! ## A171643.P11263921111486115218

`p?[A032895(2*n+1)-(A316896(n+1)+A339225(n+1)%A056624(n+1))]`
-/

namespace A171643.P11263921111486115218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032895 (2 * n + 1) - (A316896 (n + 1) + Int.tmod (A339225 (n + 1)) (A056624 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A171643.P11263921111486115218

/-!
# A171644: Squares in lunar arithmetic in base 8 written in base 8.

The programs for A171644, there is no canonical definition to state claims against.
-/

/-! ## A171644.P14792597387867340381

`A087019(A007094(n))`
-/

namespace A171644.P14792597387867340381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (A007094 n).toNat

end

end A171644.P14792597387867340381

/-! ## A171644.P4782618505908574615

`A007094(A171635(n))`
-/

namespace A171644.P4782618505908574615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A171635 n).toNat

end

end A171644.P4782618505908574615

/-! ## A171644.P3460723900207593109

`A087019(A272576(n))`
-/

namespace A171644.P3460723900207593109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (A272576 n).toNat

end

end A171644.P3460723900207593109

/-! ## A171644.P6995835944375176940

`A087019(A039155(n+1))`
-/

namespace A171644.P6995835944375176940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (A039155 (n + 1)).toNat

end

end A171644.P6995835944375176940

/-! ## A171644.P11328140159815745949

`A087019(eq[0, A102681(n)])`
-/

namespace A171644.P11328140159815745949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171644.P11328140159815745949

/-! ## A171644.P14705180047477129292

`record[A087019(n)-2*A102679(n)]`
-/

namespace A171644.P14705180047477129292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 n - 2 * A102679 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171644.P14705180047477129292

/-! ## A171644.P12121341379423465380

`record[A087019(n)-and(8, A010879(n))]`
-/

namespace A171644.P12121341379423465380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 n - Int.land 8 (A010879 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171644.P12121341379423465380

/-! ## A171644.P1665013769964522735

`A087019(eq[A048379(n)+1, A048379(n+1)])`
-/

namespace A171644.P1665013769964522735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087019 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A171644.P1665013769964522735

/-! ## A171644.P10639070325662976613

`A171717(A037477(n))`
-/

namespace A171644.P10639070325662976613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171717 (A037477 n).toNat

end

end A171644.P10639070325662976613

/-! ## A171644.P10352060260182393920

`A171717(A248375(n))`
-/

namespace A171644.P10352060260182393920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171717 (A248375 n).toNat

end

end A171644.P10352060260182393920

/-!
# A171645: Partial products of Product_{n=1..inf.} (p(n)/p(n-1)*p(n)/p(n-1)), = 2*2*2*(3/2)*(3/2)*(5/3)*(5/3)*(7/5)*(7/5)*(11/7)*(11/7)*...; p = primes, A000040, a(1) = 2.

The programs for A171645, there is no canonical definition to state claims against.
-/

/-! ## A171645.P10154010676933746551

`2*A268674(A033476(n))`
-/

namespace A171645.P10154010676933746551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A268674 (A033476 n).toNat

end

end A171645.P10154010676933746551

/-! ## A171645.P3498638344877110168

`2*A252462(A057602(n+1))`
-/

namespace A171645.P3498638344877110168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A252462 (A057602 (n + 1)).toNat

end

end A171645.P3498638344877110168

/-! ## A171645.P7178750361533588198

`2*A064989(A057602(n+2))`
-/

namespace A171645.P7178750361533588198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064989 (A057602 (n + 2)).toNat

end

end A171645.P7178750361533588198

/-! ## A171645.P4174219565634949900

`A064989(3*A033476(n))`
-/

namespace A171645.P4174219565634949900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (3 * A033476 n).toNat

end

end A171645.P4174219565634949900

/-!
# A171646: a(1) = 1, then partial products of Product_{n>=1} (p(n)/p(n-1)*p(n)/p(n-1)) = 1*1*1*(2)*(2)*(3/2)*(3/2)*(5/3)*(5/3)*(7/5)*(7/5)*...*; p = partition numbers, A000041 starting (1, 2, 3, 5, ...).

The programs for A171646, there is no canonical definition to state claims against.
-/

/-! ## A171646.P17967472097047209939

`A299200(A171645(n+1))`
-/

namespace A171646.P17967472097047209939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A171645 (n + 1)).toNat

end

end A171646.P17967472097047209939

/-! ## A171646.P4342381044340823926

`A119620(n+1)*A119620(n)`
-/

namespace A171646.P4342381044340823926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (n + 1) * A119620 n

end

end A171646.P4342381044340823926

/-! ## A171646.P275893190879921064

`A000041(ceil(n/2))*A119620(n)`
-/

namespace A171646.P275893190879921064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌈(n : ℚ) / 2⌉.toNat * A119620 n

end

end A171646.P275893190879921064

/-! ## A171646.P939936248064897613

`A100824(Δ[floor(n²/2)])*A119620(n)`
-/

namespace A171646.P939936248064897613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (f1 (n + 1) - f1 n).toNat * A119620 n

end

end A171646.P939936248064897613

/-! ## A171646.P10760761500993978333

`A000041(floor(n/2))*A000041(ceil(n/2))`
-/

namespace A171646.P10760761500993978333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ⌊(n : ℚ) / 2⌋.toNat * A000041 ⌈(n : ℚ) / 2⌉.toNat

end

end A171646.P10760761500993978333

/-!
# A171647: a(1) = 1; for n > 1, a(n) = 2*a(n-1) if n is even, a(n) = ((n+1)/(n-1))*a(n-1) if n is odd.

The programs for A171647, the canonical program `A171647.P6323104523762788519` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171647 has offset 1).

The definition of A171647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171647.P2935850290062387453

`(2*(n+1)-(-1)^(n+1)+1)*2^((2*(n+1)+(-1)^(n+1)-9)/4)`
-/

namespace A171647.P2935850290062387453
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - (-1) ^ (n + 1) + 1 : ℝ) * (2 : ℝ) ^ (((2 * (n + 1) : ℤ) + (-1) ^ (n + 1) - 9 : ℚ) / 4 : ℝ)

end

end A171647.P2935850290062387453

namespace A171647

/-- `(2*(n+1)-(-1)^(n+1)+1)*2^((2*(n+1)+(-1)^(n+1)-9)/4)` -/
def P2935850290062387453.Spec : Prop :=
  ∀ n, P2935850290062387453.a n = (A171647 (n + 1) : ℝ)

end A171647

/-! ## A171647.P6323104523762788519

`4*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A171647

/-- `4*a(n-2)-4*a(n-4)` -/
def P6323104523762788519.Spec : Prop :=
  ∀ n, P6323104523762788519.a n = A171647 (n + 1)

theorem P6323104523762788519.correct : P6323104523762788519.Spec := by
  intro n
  simp only [A171647, Nat.add_sub_cancel]

end A171647

/-! ## A171647.P3304663704285591491

`a(n-1)+a(n-1)/gcd(n, floor(n/2))` with `a(0)=1`
-/

namespace A171647.P3304663704285591491
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (n - 1) / (Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋ : ℚ)

end

end A171647.P3304663704285591491

namespace A171647

/-- `a(n-1)+a(n-1)/gcd(n, floor(n/2))` -/
def P3304663704285591491.Spec : Prop :=
  ∀ n, P3304663704285591491.a n = (A171647 (n + 1) : ℚ)

end A171647

/-! ## A171647.P17385445461292356688

`∏[((n-1)%2+1)!]+abs(n*A117575(n))`
-/

namespace A171647.P17385445461292356688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod ((n : ℤ) - 1) 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + |(n : ℤ) * A117575 n|

end

end A171647.P17385445461292356688

namespace A171647

/-- `∏[((n-1)%2+1)!]+abs(n*A117575(n))` -/
def P17385445461292356688.Spec : Prop :=
  ∀ n, P17385445461292356688.a n = A171647 (n + 1)

end A171647

/-! ## A171647.P14522539570385881012

`A093968(n)+A016116(n)`
-/

namespace A171647.P14522539570385881012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093968 n + A016116 n

end

end A171647.P14522539570385881012

namespace A171647

/-- `A093968(n)+A016116(n)` -/
def P14522539570385881012.Spec : Prop :=
  ∀ n, P14522539570385881012.a n = A171647 (n + 1)

end A171647

/-! ## A171647.P13388875092670638295

`∑[A016116(n)*A152271(n)]`
-/

namespace A171647.P13388875092670638295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171647.P13388875092670638295

namespace A171647

/-- `∑[A016116(n)*A152271(n)]` -/
def P13388875092670638295.Spec : Prop :=
  ∀ n, P13388875092670638295.a n = A171647 (n + 1)

end A171647

/-! ## A171647.P3891473611923189905

`A158780(n+2)+A093968(n)`
-/

namespace A171647.P3891473611923189905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (n + 2) + A093968 n

end

end A171647.P3891473611923189905

namespace A171647

/-- `A158780(n+2)+A093968(n)` -/
def P3891473611923189905.Spec : Prop :=
  ∀ n, P3891473611923189905.a n = A171647 (n + 1)

end A171647

/-! ## A171647.P4206803372368206673

`abs(Δ[A027383(n)]*A008619(n))`
-/

namespace A171647.P4206803372368206673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A008619 n|

end

end A171647.P4206803372368206673

namespace A171647

/-- `abs(Δ[A027383(n)]*A008619(n))` -/
def P4206803372368206673.Spec : Prop :=
  ∀ n, P4206803372368206673.a n = A171647 (n + 1)

end A171647

/-! ## A171647.P1906619957416361257

`abs(A001057(n+1)*A060546(n))`
-/

namespace A171647.P1906619957416361257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001057 (n + 1) * A060546 n|

end

end A171647.P1906619957416361257

namespace A171647

/-- `abs(A001057(n+1)*A060546(n))` -/
def P1906619957416361257.Spec : Prop :=
  ∀ n, P1906619957416361257.a n = A171647 (n + 1)

end A171647

/-! ## A171647.P2640120541678672221

`A052551(n)+A000337(ceil(n/2))`
-/

namespace A171647.P2640120541678672221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 n + A000337 ⌈(n : ℚ) / 2⌉.toNat

end

end A171647.P2640120541678672221

namespace A171647

/-- `A052551(n)+A000337(ceil(n/2))` -/
def P2640120541678672221.Spec : Prop :=
  ∀ n, P2640120541678672221.a n = A171647 (n + 1)

end A171647

/-! ## A171647.P3514268938953158003

`∑[A016116(n)*A057979(n+2)]`
-/

namespace A171647.P3514268938953158003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A057979 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171647.P3514268938953158003

namespace A171647

/-- `∑[A016116(n)*A057979(n+2)]` -/
def P3514268938953158003.Spec : Prop :=
  ∀ n, P3514268938953158003.a n = A171647 (n + 1)

end A171647

/-! ## A171647.P13369326716089977967

`∑[A016116(n)/2*A133265(n)]`
-/

namespace A171647.P13369326716089977967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 n : ℚ) / 2 * (A133265 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171647.P13369326716089977967

namespace A171647

/-- `∑[A016116(n)/2*A133265(n)]` -/
def P13369326716089977967.Spec : Prop :=
  ∀ n, P13369326716089977967.a n = (A171647 (n + 1) : ℚ)

end A171647

/-! ## A171647.P15409286397964159781

`record[A008611(n)*A173862(n+2)]`
-/

namespace A171647.P15409286397964159781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n * A173862 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171647.P15409286397964159781

namespace A171647

/-- `record[A008611(n)*A173862(n+2)]` -/
def P15409286397964159781.Spec : Prop :=
  ∀ n, P15409286397964159781.a n = A171647 (n + 1)

end A171647

/-! ## A171647.P7651337591023373270

`abs((A002265(2*n)+1)*A117575(n+2))`
-/

namespace A171647.P7651337591023373270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A002265 (2 * n) + 1) * A117575 (n + 2)|

end

end A171647.P7651337591023373270

namespace A171647

/-- `abs((A002265(2*n)+1)*A117575(n+2))` -/
def P7651337591023373270.Spec : Prop :=
  ∀ n, P7651337591023373270.a n = A171647 (n + 1)

end A171647

/-! ## A171647.P5676811600326476052

`A016116(n)+A016116(n)*A026741(n)`
-/

namespace A171647.P5676811600326476052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n + A016116 n * A026741 n

end

end A171647.P5676811600326476052

namespace A171647

/-- `A016116(n)+A016116(n)*A026741(n)` -/
def P5676811600326476052.Spec : Prop :=
  ∀ n, P5676811600326476052.a n = A171647 (n + 1)

end A171647

/-! ## A171647.P560425400704808946

`A239632(n+1)+A016116(n)-A016116(n+1)`
-/

namespace A171647.P560425400704808946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239632 (n + 1) + (A016116 n - A016116 (n + 1))

end

end A171647.P560425400704808946

namespace A171647

/-- `A239632(n+1)+A016116(n)-A016116(n+1)` -/
def P560425400704808946.Spec : Prop :=
  ∀ n, P560425400704808946.a n = A171647 (n + 1)

end A171647

/-! ## A171647.P14632385222953057340

`A077957(n+1)+A016116(n+1)*A028242(n)`
-/

namespace A171647.P14632385222953057340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (n + 1) + A016116 (n + 1) * A028242 n

end

end A171647.P14632385222953057340

namespace A171647

/-- `A077957(n+1)+A016116(n+1)*A028242(n)` -/
def P14632385222953057340.Spec : Prop :=
  ∀ n, P14632385222953057340.a n = A171647 (n + 1)

end A171647

/-! ## A171647.P7192592285497966664

`A016116(n+1)+A016116(n+1)*A140106(n+2)`
-/

namespace A171647.P7192592285497966664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (n + 1) + A016116 (n + 1) * A140106 (n + 2)

end

end A171647.P7192592285497966664

namespace A171647

/-- `A016116(n+1)+A016116(n+1)*A140106(n+2)` -/
def P7192592285497966664.Spec : Prop :=
  ∀ n, P7192592285497966664.a n = A171647 (n + 1)

end A171647

/-! ## A171647.P15453103603036642341

`∪[2*A001787(n+1), A001787(n+1)]`
-/

namespace A171647.P15453103603036642341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171647.P15453103603036642341

namespace A171647

/-- `∪[2*A001787(n+1), A001787(n+1)]` -/
def P15453103603036642341.Spec : Prop :=
  ∀ n, (P15453103603036642341.a n : ℤ) = A171647 (n + 1)

end A171647

/-! ## A171647.P7573504495935203991

`ogf((1+2x)/(1-4x^2+4x^4))`
-/

namespace A171647.P7573504495935203991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -4, 0, 4] n

end

end A171647.P7573504495935203991

namespace A171647

/-- `ogf((1+2x)/(1-4x^2+4x^4))` -/
def P7573504495935203991.Spec : Prop :=
  ∀ n, P7573504495935203991.a n = A171647 (n + 1)

end A171647

/-!
# A171648: a(1) = 1, a(n) = 2*a(n-1) if n is even; a(n) = a(n-1)*Fibonacci((n+1)/2)/Fibonacci((n-1)/2) if n is odd.

The programs for A171648, the canonical program `A171648.P6878134349275744200` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171648 has offset 1).

The definition of A171648 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171648.P6878134349275744200

`2*a(n-2)+4*a(n-4)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A171648

/-- `2*a(n-2)+4*a(n-4)` -/
def P6878134349275744200.Spec : Prop :=
  ∀ n, (P6878134349275744200.a n : ℤ) = A171648 (n + 1)

theorem P6878134349275744200.correct : P6878134349275744200.Spec := by
  intro n
  simp only [A171648, Nat.add_sub_cancel]

end A171648

/-! ## A171648.P12313854358144565990

`ogf((1+2x)/(1-2x^2-4x^4))`
-/

namespace A171648.P12313854358144565990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -2, 0, -4] n

end

end A171648.P12313854358144565990

namespace A171648

/-- `ogf((1+2x)/(1-2x^2-4x^4))` -/
def P12313854358144565990.Spec : Prop :=
  ∀ n, P12313854358144565990.a n = A171648 (n + 1)

end A171648

/-! ## A171648.P7578547709763034895

`A060546(n)*A103609(n+2)`
-/

namespace A171648.P7578547709763034895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 n * A103609 (n + 2)

end

end A171648.P7578547709763034895

namespace A171648

/-- `A060546(n)*A103609(n+2)` -/
def P7578547709763034895.Spec : Prop :=
  ∀ n, P7578547709763034895.a n = A171648 (n + 1)

end A171648

/-! ## A171648.P2890823956630867305

`A000045(∑[and(1, n+1)])*A016116(n+1)`
-/

namespace A171648.P2890823956630867305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ j ∈ Finset.range (n + 1), f1 j) * A016116 (n + 1)

end

end A171648.P2890823956630867305

namespace A171648

/-- `A000045(∑[and(1, n+1)])*A016116(n+1)` -/
def P2890823956630867305.Spec : Prop :=
  ∀ n, P2890823956630867305.a n = A171648 (n + 1)

end A171648

/-! ## A171648.P17289357402926422796

`A000045(floor(n/2)+1)*Δ[A163978(n+1)]`
-/

namespace A171648.P17289357402926422796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (⌊(n : ℚ) / 2⌋ + 1).toNat * (f1 (n + 1) - f1 n)

end

end A171648.P17289357402926422796

namespace A171648

/-- `A000045(floor(n/2)+1)*Δ[A163978(n+1)]` -/
def P17289357402926422796.Spec : Prop :=
  ∀ n, P17289357402926422796.a n = A171648 (n + 1)

end A171648

/-! ## A171648.P4913125162269279515

`A000045(A008619(n))*A060546(n)`
-/

namespace A171648.P4913125162269279515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008619 n).toNat * A060546 n

end

end A171648.P4913125162269279515

namespace A171648

/-- `A000045(A008619(n))*A060546(n)` -/
def P4913125162269279515.Spec : Prop :=
  ∀ n, P4913125162269279515.a n = A171648 (n + 1)

end A171648

/-! ## A171648.P2905411798339242237

`A000045(A008619(n))*A016116(n+1)`
-/

namespace A171648.P2905411798339242237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008619 n).toNat * A016116 (n + 1)

end

end A171648.P2905411798339242237

namespace A171648

/-- `A000045(A008619(n))*A016116(n+1)` -/
def P2905411798339242237.Spec : Prop :=
  ∀ n, P2905411798339242237.a n = A171648 (n + 1)

end A171648

/-! ## A171648.P14158638701723137590

`A000045(A004526(n)+1)*A016116(n+1)`
-/

namespace A171648.P14158638701723137590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004526 n + 1).toNat * A016116 (n + 1)

end

end A171648.P14158638701723137590

namespace A171648

/-- `A000045(A004526(n)+1)*A016116(n+1)` -/
def P14158638701723137590.Spec : Prop :=
  ∀ n, P14158638701723137590.a n = A171648 (n + 1)

end A171648

/-! ## A171648.P10364744815310069870

`2^A110654(n)*A000045(A110654(n+1))`
-/

namespace A171648.P10364744815310069870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A110654 n : ℤ) * (A000045 (A110654 (n + 1)).toNat : ℚ)

end

end A171648.P10364744815310069870

namespace A171648

/-- `2^A110654(n)*A000045(A110654(n+1))` -/
def P10364744815310069870.Spec : Prop :=
  ∀ n, P10364744815310069870.a n = (A171648 (n + 1) : ℚ)

end A171648

/-! ## A171648.P14418709045050759408

`A279245(n+1)-A279312(n)`
-/

namespace A171648.P14418709045050759408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279245 (n + 1) - A279312 n

end

end A171648.P14418709045050759408

namespace A171648

/-- `A279245(n+1)-A279312(n)` -/
def P14418709045050759408.Spec : Prop :=
  ∀ n, P14418709045050759408.a n = A171648 (n + 1)

end A171648

/-!
# A171649: a(n) = 0+1+2+...+n in lunar arithmetic in base 8 written in base 10.

The programs for A171649, there is no canonical definition to state claims against.
-/

/-! ## A171649.P3520593940730381087

`or(n, xor(n+1, A115308(n+1)))`
-/

namespace A171649.P3520593940730381087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (Int.xor (n + 1 : ℤ) (A115308 (n + 1)))

end

end A171649.P3520593940730381087

/-! ## A171649.P14496134399523514899

`or(n, A008834(a(n-1)+1)-1)` with `a(0)=0`
-/

namespace A171649.P14496134399523514899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (n : ℤ) (A008834 (a (n - 1) + 1).toNat - 1)

end

end A171649.P14496134399523514899

/-! ## A171649.P6205509383035650699

`A028903(A171678(n))`
-/

namespace A171649.P6205509383035650699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A171678 n).toNat

end

end A171649.P6205509383035650699

/-! ## A171649.P76297932825642213

`or(n, gcd(A055957(n+1), A055957(n)))`
-/

namespace A171649.P76297932825642213
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (Int.gcd (A055957 (n + 1)) (A055957 n))

end

end A171649.P76297932825642213

/-! ## A171649.P16460804368049210349

`A165804(comp[A165804(n+1)+n+1]-n+1)`
-/

namespace A171649.P16460804368049210349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165804 (n + 1) + (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165804 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1).toNat

end

end A171649.P16460804368049210349

/-! ## A171649.P7114729544638656972

`or(n, A003817(A262679(A003817(n))))`
-/

namespace A171649.P7114729544638656972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A003817 (A262679 (A003817 n).toNat).toNat)

end

end A171649.P7114729544638656972

/-!
# A171650: Triangle T, read by rows : T(n,k) = A007318(n,k)*A026641(n-k).

The programs for A171650, the canonical program `A171650.P15428970908307897054` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171650 has offset 0).

The definition of A171650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5151 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171650.P15428970908307897054

`A007318(n)*A026641(A025581(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A171650

/-- `A007318(n)*A026641(A025581(n))` -/
def P15428970908307897054.Spec : Prop :=
  ∀ n, P15428970908307897054.a n = A171650 n

theorem P15428970908307897054.correct : P15428970908307897054.Spec := by
  intro n
  simp only [A171650]

end A171650

/-!
# A171651: Triangle T, read by rows : T(n,k) = A007318(n,k)*A005773(n+1-k).

The programs for A171651, the canonical program `A171651.P1398147796533981043` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171651 has offset 0).

The definition of A171651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171651.P16864804397162272280

`A097692(n+1)/2`
-/

namespace A171651.P16864804397162272280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097692 (n + 1) : ℚ) / 2

end

end A171651.P16864804397162272280

namespace A171651

/-- `A097692(n+1)/2` -/
def P16864804397162272280.Spec : Prop :=
  ∀ n, P16864804397162272280.a n = (A171651 n : ℚ)

end A171651

/-! ## A171651.P9739882022832647406

`∑[ceil(Δ[A097692(n)/2])]`
-/

namespace A171651.P9739882022832647406
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097692 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171651.P9739882022832647406

namespace A171651

/-- `∑[ceil(Δ[A097692(n)/2])]` -/
def P9739882022832647406.Spec : Prop :=
  ∀ n, P9739882022832647406.a n = A171651 n

end A171651

/-! ## A171651.P1398147796533981043

`2*A171128(n)-A091867(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A171651

/-- `2*A171128(n)-A091867(n)` -/
def P1398147796533981043.Spec : Prop :=
  ∀ n, P1398147796533981043.a n = A171651 n

theorem P1398147796533981043.correct : P1398147796533981043.Spec := by
  intro n
  simp only [A171651]

end A171651

/-! ## A171651.P7925219361875512679

`A005773(A004736(n+1))*A007318(n)`
-/

namespace A171651.P7925219361875512679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (A004736 (n + 1)).toNat * A007318 n

end

end A171651.P7925219361875512679

namespace A171651

/-- `A005773(A004736(n+1))*A007318(n)` -/
def P7925219361875512679.Spec : Prop :=
  ∀ n, P7925219361875512679.a n = A171651 n

end A171651

/-! ## A171651.P12493993772544093023

`A007318(n)*A005773(A025581(n)+1)`
-/

namespace A171651.P12493993772544093023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A005773 (A025581 n + 1).toNat

end

end A171651.P12493993772544093023

namespace A171651

/-- `A007318(n)*A005773(A025581(n)+1)` -/
def P12493993772544093023.Spec : Prop :=
  ∀ n, P12493993772544093023.a n = A171651 n

end A171651

/-! ## A171651.P5111804111048217627

`A007318(n)*A307789(A004736(n+1)+1)`
-/

namespace A171651.P5111804111048217627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A307789 (A004736 (n + 1) + 1).toNat

end

end A171651.P5111804111048217627

namespace A171651

/-- `A007318(n)*A307789(A004736(n+1)+1)` -/
def P5111804111048217627.Spec : Prop :=
  ∀ n, P5111804111048217627.a n = A171651 n

end A171651

/-! ## A171651.P12756531760004178987

`Δ[∑[A097692(n)]/2]`
-/

namespace A171651.P12756531760004178987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097692 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171651.P12756531760004178987

namespace A171651

/-- `Δ[∑[A097692(n)]/2]` -/
def P12756531760004178987.Spec : Prop :=
  ∀ n, P12756531760004178987.a n = (A171651 n : ℚ)

end A171651

/-! ## A171651.P10473876044340060012

`A014682(A097692(n+1))`
-/

namespace A171651.P10473876044340060012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A097692 (n + 1)).toNat

end

end A171651.P10473876044340060012

namespace A171651

/-- `A014682(A097692(n+1))` -/
def P10473876044340060012.Spec : Prop :=
  ∀ n, P10473876044340060012.a n = A171651 n

end A171651

/-!
# A171652: The initial decimal digits of 2^a(n) are the decimal digits of n followed by n.

The programs for A171652, there is no canonical definition to state claims against.
-/

/-! ## A171652.P6310236072126539198

`A018856(A020338(n+1))`
-/

namespace A171652.P6310236072126539198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018856 (A020338 (n + 1)).toNat

end

end A171652.P6310236072126539198

/-! ## A171652.P10086915266438626225

`A180726(A020338(abs(n+1-Δ[n²])+1))`
-/

namespace A171652.P10086915266438626225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180726 (A020338 (|(n + 1 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))| + 1).toNat).toNat

end

end A171652.P10086915266438626225

/-! ## A171652.P5352142206635005035

`A180726(or(A000007(n), A020338(n+1)))`
-/

namespace A171652.P5352142206635005035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180726 (Int.lor (A000007 n) (A020338 (n + 1))).toNat

end

end A171652.P5352142206635005035

/-! ## A171652.P5818451059894151897

`A180726(A020338(n+1)+A000007(n+3))`
-/

namespace A171652.P5818451059894151897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180726 (A020338 (n + 1) + A000007 (n + 3)).toNat

end

end A171652.P5818451059894151897

/-! ## A171652.P10226877575129333623

`A180726(A020338(n+1)*A178334(n+1))`
-/

namespace A171652.P10226877575129333623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180726 (A020338 (n + 1) * A178334 (n + 1)).toNat

end

end A171652.P10226877575129333623

/-!
# A171654: Period 10: repeat [0, 1, 6, 7, 2, 3, 8, 9, 4, 5].

The programs for A171654, the canonical program `A171654.P14385929116533760868` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171654 has offset 0).

The definition of A171654 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171654.P14385929116533760868

`A171507(n+1)%10`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A171654

/-- `A171507(n+1)%10` -/
def P14385929116533760868.Spec : Prop :=
  ∀ n, P14385929116533760868.a n = A171654 n

theorem P14385929116533760868.correct : P14385929116533760868.Spec := by
  intro n
  simp only [A171654]

end A171654

/-!
# A171656: a(n) = 10^n*(7+3*10^n)+3.

The programs for A171656, the canonical program `A171656.P9225583924852819724` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171656 has offset 0).

The definition of A171656 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n*(7+3*10^n)+3` (program `A171656.P9225583924852819724`, by `A171656.P9225583924852819724.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171656.P9225583924852819724

`10^n*(7+3*10^n)+3`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A171656

/-- `10^n*(7+3*10^n)+3` -/
def P9225583924852819724.Spec : Prop :=
  ∀ n, (P9225583924852819724.a n : ℤ) = A171656 n

theorem P9225583924852819724.correct : P9225583924852819724.Spec := by
  intro n
  simp only [A171656]

end A171656

/-! ## A171656.P2094509630099897882

`abs(A011557(n)-A171718(n))`
-/

namespace A171656.P2094509630099897882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011557 n - A171718 n|

end

end A171656.P2094509630099897882

namespace A171656

/-- `abs(A011557(n)-A171718(n))` -/
def P2094509630099897882.Spec : Prop :=
  ∀ n, P2094509630099897882.a n = A171656 n

end A171656

/-!
# A171660: Triangle T(n,m) of the expansion coefficients of JacobiCN(x,y) + JacobiDN(x,y) = Sum_{n>=0} Sum_{k=0..n} (-1)^n*T(n,m)*x^(2*n)*y^(2*m)/(2*n)!.

The programs for A171660, there is no canonical definition to state claims against.
-/

/-! ## A171660.P13256184110896216876

`A131064(and(A109128(n), A173818(n+1)))`
-/

namespace A171660.P13256184110896216876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131064 (Int.land (A109128 n) (A173818 (n + 1))).toNat

end

end A171660.P13256184110896216876

/-! ## A171660.P9744119409096573512

`A123285(and(A010101(n+1), A178867(n+1)))`
-/

namespace A171660.P9744119409096573512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123285 ((Int.land (A010101 (n + 1)) (A178867 (n + 1))).toNat + 21)

end

end A171660.P9744119409096573512

/-! ## A171660.P4218421973512097374

`A106182(and(A073330(n+1)², A111117(n+1)))`
-/

namespace A171660.P4218421973512097374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106182 (Int.land (A073330 (n + 1) ^ 2) (A111117 (n + 1))).toNat

end

end A171660.P4218421973512097374

/-! ## A171660.P11798699218131858180

`A060765((A112316(n)+A074060(n+3))%A177686(n+1))`
-/

namespace A171660.P11798699218131858180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060765 (Int.tmod (A112316 n + A074060 (n + 3)) (A177686 (n + 1))).toNat

end

end A171660.P11798699218131858180

/-!
# A171661: Triangle T(n,k) (n >= 0, 0 <= k <= n) read by rows: T(n,0) = T(n,1) = A000984(n); for n >= 2 and k >= 2, T(n,k) = T(n,k-1) - T(n-1,k-2).

The programs for A171661, there is no canonical definition to state claims against.
-/

/-! ## A171661.P6871461172667384553

`A274292(A038722(n+1)-A010054(n))`
-/

namespace A171661.P6871461172667384553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274292 (A038722 (n + 1) - A010054 n).toNat

end

end A171661.P6871461172667384553

/-! ## A171661.P14753487728071648510

`A274292(A038722(n+1)-A073424(n))`
-/

namespace A171661.P14753487728071648510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274292 (A038722 (n + 1) - A073424 n).toNat

end

end A171661.P14753487728071648510

/-! ## A171661.P17275158972610236258

`A274292(A038722(n+1)-A197870(n)²)`
-/

namespace A171661.P17275158972610236258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274292 (A038722 (n + 1) - A197870 n ^ 2).toNat

end

end A171661.P17275158972610236258

/-! ## A171661.P1816766332040472333

`A274292(A061579(n)+char[A014132(n+1)])`
-/

namespace A171661.P1816766332040472333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274292 (A061579 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A171661.P1816766332040472333

/-! ## A171661.P10881420805442591584

`A274292(A038722(n+1)-char[A057944(n)])`
-/

namespace A171661.P10881420805442591584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274292 (A038722 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A171661.P10881420805442591584

/-! ## A171661.P10249758995884874692

`A274292(A038722(n+1)-and(1, A274292(n)))`
-/

namespace A171661.P10249758995884874692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274292 (A038722 (n + 1) - Int.land 1 (A274292 n)).toNat

end

end A171661.P10249758995884874692

/-!
# A171662: a(n) = floor((2*n^2 + n)/6).

The programs for A171662, the canonical program `A171662.P1607297241235406260` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171662 has offset 0).

The definition of A171662 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((2*n²+n)/6)` (program `A171662.P1607297241235406260`, by `A171662.P1607297241235406260.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171662.P1607297241235406260

`floor((2*n²+n)/6)`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A171662

/-- `floor((2*n²+n)/6)` -/
def P1607297241235406260.Spec : Prop :=
  ∀ n, P1607297241235406260.a n = A171662 n

theorem P1607297241235406260.correct : P1607297241235406260.Spec := by
  intro n
  simp only [A171662]

end A171662

/-! ## A171662.P104893656795626967

`2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3, a(4)=6, a(5)=9, a(6)=13, a(7)=17`
-/

namespace A171662.P104893656795626967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 3, 6, 9, 13, 17] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 6) - 2 * a (n - 7) + a (n - 8)

end

end A171662.P104893656795626967

namespace A171662

/-- `2*a(n-1)-a(n-2)+a(n-6)-2*a(n-7)+a(n-8)` -/
def P104893656795626967.Spec : Prop :=
  ∀ n, P104893656795626967.a n = A171662 n

end A171662

/-! ## A171662.P1425513826356778158

`∑[round(comp[or(2, n)]/3)]`
-/

namespace A171662.P1425513826356778158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171662.P1425513826356778158

namespace A171662

/-- `∑[round(comp[or(2, n)]/3)]` -/
def P1425513826356778158.Spec : Prop :=
  ∀ n, P1425513826356778158.a n = A171662 n

end A171662

/-! ## A171662.P8800815861493658820

`∑[∑[char[∑[gcd(2, ∑[n])]]]]`
-/

namespace A171662.P8800815861493658820
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f5 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171662.P8800815861493658820

namespace A171662

/-- `∑[∑[char[∑[gcd(2, ∑[n])]]]]` -/
def P8800815861493658820.Spec : Prop :=
  ∀ n, (P8800815861493658820.a n : ℤ) = A171662 n

end A171662

/-! ## A171662.P12168986756572086284

`∑[floor(or(3, 6*n)/9)]`
-/

namespace A171662.P12168986756572086284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 3 (6 * n) : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171662.P12168986756572086284

namespace A171662

/-- `∑[floor(or(3, 6*n)/9)]` -/
def P12168986756572086284.Spec : Prop :=
  ∀ n, P12168986756572086284.a n = A171662 n

end A171662

/-! ## A171662.P13849522081078950911

`∑[∑[7%gcd(6, n)]-1]`
-/

namespace A171662.P13849522081078950911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 % Nat.gcd 6 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171662.P13849522081078950911

namespace A171662

/-- `∑[∑[7%gcd(6, n)]-1]` -/
def P13849522081078950911.Spec : Prop :=
  ∀ n, P13849522081078950911.a n = A171662 n

end A171662

/-! ## A171662.P9132139006505688992

`∑[floor((or(1, n)+n)/3)]`
-/

namespace A171662.P9132139006505688992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 n + n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171662.P9132139006505688992

namespace A171662

/-- `∑[floor((or(1, n)+n)/3)]` -/
def P9132139006505688992.Spec : Prop :=
  ∀ n, P9132139006505688992.a n = A171662 n

end A171662

/-! ## A171662.P2001306210971906113

`ceil(n/tan(6/(2*n+1)))`
-/

namespace A171662.P2001306210971906113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.tan (6 / (2 * n + 1 : ℚ) : ℝ)⌉

end

end A171662.P2001306210971906113

namespace A171662

/-- `ceil(n/tan(6/(2*n+1)))` -/
def P2001306210971906113.Spec : Prop :=
  ∀ n, P2001306210971906113.a n = A171662 n

end A171662

/-! ## A171662.P12381128229058209323

`round(n/sinh(6/(2*n+1)))`
-/

namespace A171662.P12381128229058209323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.sinh (6 / (2 * n + 1 : ℚ) : ℝ))

end

end A171662.P12381128229058209323

namespace A171662

/-- `round(n/sinh(6/(2*n+1)))` -/
def P12381128229058209323.Spec : Prop :=
  ∀ n, P12381128229058209323.a n = A171662 n

end A171662

/-! ## A171662.P1472644694621928584

`ceil(n*cot(6/(2*n+1)))`
-/

namespace A171662.P1472644694621928584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.cot (6 / (2 * n + 1 : ℚ) : ℝ)⌉

end

end A171662.P1472644694621928584

namespace A171662

/-- `ceil(n*cot(6/(2*n+1)))` -/
def P1472644694621928584.Spec : Prop :=
  ∀ n, P1472644694621928584.a n = A171662 n

end A171662

/-! ## A171662.P5314098898111616776

`ceil((∑[comp[or(2, n)]]+1)/3)-1`
-/

namespace A171662.P5314098898111616776
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 3⌉ - 1

end

end A171662.P5314098898111616776

namespace A171662

/-- `ceil((∑[comp[or(2, n)]]+1)/3)-1` -/
def P5314098898111616776.Spec : Prop :=
  ∀ n, P5314098898111616776.a n = A171662 n

end A171662

/-! ## A171662.P18165573878672106199

`∑[floor(∑[4-a(n-1)]/3)]` with `a(0)=1, a(1)=1`
-/

namespace A171662.P18165573878672106199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171662.P18165573878672106199

namespace A171662

/-- `∑[floor(∑[4-a(n-1)]/3)]` -/
def P18165573878672106199.Spec : Prop :=
  ∀ n, P18165573878672106199.a n = A171662 n

end A171662

/-! ## A171662.P3334151494538394533

`∑[A096386(n)]`
-/

namespace A171662.P3334151494538394533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096386 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171662.P3334151494538394533

namespace A171662

/-- `∑[A096386(n)]` -/
def P3334151494538394533.Spec : Prop :=
  ∀ n, P3334151494538394533.a n = A171662 n

end A171662

/-! ## A171662.P1231845118799376115

`∑[n-∑[A354354(n)]]`
-/

namespace A171662.P1231845118799376115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354354 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171662.P1231845118799376115

namespace A171662

/-- `∑[n-∑[A354354(n)]]` -/
def P1231845118799376115.Spec : Prop :=
  ∀ n, P1231845118799376115.a n = A171662 n

end A171662

/-! ## A171662.P12536691520868512693

`∑[∑[1-A163811(n)²]]`
-/

namespace A171662.P12536691520868512693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A163811 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171662.P12536691520868512693

namespace A171662

/-- `∑[∑[1-A163811(n)²]]` -/
def P12536691520868512693.Spec : Prop :=
  ∀ n, P12536691520868512693.a n = A171662 n

end A171662

/-! ## A171662.P15993619481498119390

`∑[∑[1-A163817(n)²]]`
-/

namespace A171662.P15993619481498119390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A163817 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A171662.P15993619481498119390

namespace A171662

/-- `∑[∑[1-A163817(n)²]]` -/
def P15993619481498119390.Spec : Prop :=
  ∀ n, P15993619481498119390.a n = A171662 n

end A171662

/-! ## A171662.P6506959268529633448

`A078617(n+1)-(n+1)`
-/

namespace A171662.P6506959268529633448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078617 (n + 1) - (n + 1 : ℤ)

end

end A171662.P6506959268529633448

namespace A171662

/-- `A078617(n+1)-(n+1)` -/
def P6506959268529633448.Spec : Prop :=
  ∀ n, P6506959268529633448.a n = A171662 n

end A171662

/-! ## A171662.P1117423441491952795

`A032765(n)-A300076(n)`
-/

namespace A171662.P1117423441491952795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 n - A300076 n

end

end A171662.P1117423441491952795

namespace A171662

/-- `A032765(n)-A300076(n)` -/
def P1117423441491952795.Spec : Prop :=
  ∀ n, P1117423441491952795.a n = A171662 n

end A171662

/-! ## A171662.P6133111498298744216

`A393679(n)-A000124(n)`
-/

namespace A171662.P6133111498298744216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393679 n - A000124 n

end

end A171662.P6133111498298744216

namespace A171662

/-- `A393679(n)-A000124(n)` -/
def P6133111498298744216.Spec : Prop :=
  ∀ n, P6133111498298744216.a n = A171662 n

end A171662

/-! ## A171662.P2424277150543668223

`A236771(n)-A047428(n+1)`
-/

namespace A171662.P2424277150543668223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236771 n - A047428 (n + 1)

end

end A171662.P2424277150543668223

namespace A171662

/-- `A236771(n)-A047428(n+1)` -/
def P2424277150543668223.Spec : Prop :=
  ∀ n, P2424277150543668223.a n = A171662 n

end A171662

/-!
# A171663: Expansion of (1 + 4*x - 6*x^2 - 16*x^3 + 20*x^4)/((1-x)*(1-2*x)*(1+2*x)*(1-2*x^2)).

The programs for A171663, the canonical program `A171663.P12407058862568402738` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171663 has offset 0).

The definition of A171663 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x-6x^2-16x^3+20x^4)/(1-x-6x^2+6x^3+8x^4-8x^5))` (program `A171663.P12407058862568402738`, by `A171663.P12407058862568402738.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171663.P12407058862568402738

`ogf((1+4x-6x^2-16x^3+20x^4)/(1-x-6x^2+6x^3+8x^4-8x^5))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A171663

/-- `ogf((1+4x-6x^2-16x^3+20x^4)/(1-x-6x^2+6x^3+8x^4-8x^5))` -/
def P12407058862568402738.Spec : Prop :=
  ∀ n, P12407058862568402738.a n = A171663 n

theorem P12407058862568402738.correct : P12407058862568402738.Spec := by
  intro n
  simp only [A171663]

end A171663

/-! ## A171663.P13749067931036958393

`4*A137173(n)+1`
-/

namespace A171663.P13749067931036958393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A137173 n + 1

end

end A171663.P13749067931036958393

namespace A171663

/-- `4*A137173(n)+1` -/
def P13749067931036958393.Spec : Prop :=
  ∀ n, P13749067931036958393.a n = A171663 n

end A171663

/-! ## A171663.P6897320350399436380

`ceil(A086341(n)²/2)`
-/

namespace A171663.P6897320350399436380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A086341 n ^ 2 : ℚ) / 2⌉

end

end A171663.P6897320350399436380

namespace A171663

/-- `ceil(A086341(n)²/2)` -/
def P6897320350399436380.Spec : Prop :=
  ∀ n, P6897320350399436380.a n = A171663 n

end A171663

/-! ## A171663.P14666534101489876773

`4*C(A228693(n+1), 2)+1`
-/

namespace A171663.P14666534101489876773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (A228693 (n + 1)).toNat 2 + 1

end

end A171663.P14666534101489876773

namespace A171663

/-- `4*C(A228693(n+1), 2)+1` -/
def P14666534101489876773.Spec : Prop :=
  ∀ n, (P14666534101489876773.a n : ℤ) = A171663 n

end A171663

/-! ## A171663.P7343659579380278177

`xor(A086341(n)+A000225(n), A080924(n))`
-/

namespace A171663.P7343659579380278177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086341 n + A000225 n) (A080924 n)

end

end A171663.P7343659579380278177

namespace A171663

/-- `xor(A086341(n)+A000225(n), A080924(n))` -/
def P7343659579380278177.Spec : Prop :=
  ∀ n, P7343659579380278177.a n = A171663 n

end A171663

/-! ## A171663.P6206004369774324058

`Δ[A290234(n)]-A056453(A266303(n))`
-/

namespace A171663.P6206004369774324058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290234 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A056453 (A266303 n).toNat

end

end A171663.P6206004369774324058

namespace A171663

/-- `Δ[A290234(n)]-A056453(A266303(n))` -/
def P6206004369774324058.Spec : Prop :=
  ∀ n, P6206004369774324058.a n = A171663 n

end A171663

/-!
# A171665: Numbers n such that n and n+1 have same number of divisors, and that number of divisors is larger than 4.

The programs for A171665, the canonical program `A171665.P4832445183620559262` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171665 has offset 1).

The definition of A171665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2065 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171665.P4832445183620559262

`∩[A005237(n+1), A357077(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A171665

/-- `∩[A005237(n+1), A357077(n+1)]` -/
def P4832445183620559262.Spec : Prop :=
  ∀ n, (P4832445183620559262.a n : ℤ) = A171665 (n + 1)

theorem P4832445183620559262.correct : P4832445183620559262.Spec := by
  intro n
  simp only [A171665, Nat.add_sub_cancel]

end A171665

/-! ## A171665.P12252589496431036697

`∩[A083795(n+1)-1, A357077(n+1)]`
-/

namespace A171665.P12252589496431036697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171665.P12252589496431036697

namespace A171665

/-- `∩[A083795(n+1)-1, A357077(n+1)]` -/
def P12252589496431036697.Spec : Prop :=
  ∀ n, (P12252589496431036697.a n : ℤ) = A171665 (n + 1)

end A171665

/-! ## A171665.P7277954658574588888

`∩[A005237(n+1), A007624(n+1)]`
-/

namespace A171665.P7277954658574588888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171665.P7277954658574588888

namespace A171665

/-- `∩[A005237(n+1), A007624(n+1)]` -/
def P7277954658574588888.Spec : Prop :=
  ∀ n, (P7277954658574588888.a n : ℤ) = A171665 (n + 1)

end A171665

/-! ## A171665.P7760435952604204860

`∩[A007624(n+1), A083795(n+1)-1]`
-/

namespace A171665.P7760435952604204860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171665.P7760435952604204860

namespace A171665

/-- `∩[A007624(n+1), A083795(n+1)-1]` -/
def P7760435952604204860.Spec : Prop :=
  ∀ n, (P7760435952604204860.a n : ℤ) = A171665 (n + 1)

end A171665

/-! ## A171665.P17822152671650948841

`∩[A005237(n+1), A058080(n+1)]`
-/

namespace A171665.P17822152671650948841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171665.P17822152671650948841

namespace A171665

/-- `∩[A005237(n+1), A058080(n+1)]` -/
def P17822152671650948841.Spec : Prop :=
  ∀ n, (P17822152671650948841.a n : ℤ) = A171665 (n + 1)

end A171665

/-! ## A171665.P15961753508056691253

`∩[A005237(n+1), A033942(n+1)]`
-/

namespace A171665.P15961753508056691253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171665.P15961753508056691253

namespace A171665

/-- `∩[A005237(n+1), A033942(n+1)]` -/
def P15961753508056691253.Spec : Prop :=
  ∀ n, (P15961753508056691253.a n : ℤ) = A171665 (n + 1)

end A171665

/-! ## A171665.P11503665292323556033

`∩[A005237(n+1), A111087(n+1)]`
-/

namespace A171665.P11503665292323556033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171665.P11503665292323556033

namespace A171665

/-- `∩[A005237(n+1), A111087(n+1)]` -/
def P11503665292323556033.Spec : Prop :=
  ∀ n, (P11503665292323556033.a n : ℤ) = A171665 (n + 1)

end A171665

/-! ## A171665.P13538074314614304201

`∩[A005237(n+1), A066423(n+1)]`
-/

namespace A171665.P13538074314614304201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171665.P13538074314614304201

namespace A171665

/-- `∩[A005237(n+1), A066423(n+1)]` -/
def P13538074314614304201.Spec : Prop :=
  ∀ n, (P13538074314614304201.a n : ℤ) = A171665 (n + 1)

end A171665

/-! ## A171665.P12531062233306596269

`∩[A005237(n+1), A289553(n+1)]`
-/

namespace A171665.P12531062233306596269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171665.P12531062233306596269

namespace A171665

/-- `∩[A005237(n+1), A289553(n+1)]` -/
def P12531062233306596269.Spec : Prop :=
  ∀ n, (P12531062233306596269.a n : ℤ) = A171665 (n + 1)

end A171665

/-! ## A171665.P1686062391232640542

`filter[A007624(n+1), A130638(#)]`
-/

namespace A171665.P1686062391232640542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007624 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130638 (f1 j).toNat = 1) n)

end

end A171665.P1686062391232640542

namespace A171665

/-- `filter[A007624(n+1), A130638(#)]` -/
def P1686062391232640542.Spec : Prop :=
  ∀ n, P1686062391232640542.a n = A171665 (n + 1)

end A171665

/-! ## A171665.P18321327955039270636

`filter[A357077(n+1), A130638(#)]`
-/

namespace A171665.P18321327955039270636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A130638 (f1 j).toNat = 1) n)

end

end A171665.P18321327955039270636

namespace A171665

/-- `filter[A357077(n+1), A130638(#)]` -/
def P18321327955039270636.Spec : Prop :=
  ∀ n, P18321327955039270636.a n = A171665 (n + 1)

end A171665

/-! ## A171665.P12476785056975710972

`∩[A023443(A083795(n+1)), A357077(n+1)]`
-/

namespace A171665.P12476785056975710972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A083795 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171665.P12476785056975710972

namespace A171665

/-- `∩[A023443(A083795(n+1)), A357077(n+1)]` -/
def P12476785056975710972.Spec : Prop :=
  ∀ n, (P12476785056975710972.a n : ℤ) = A171665 (n + 1)

end A171665

/-!
# A171666: Numbers n such that n, n+1 and n+2 have the same number of divisors, and that number of divisors is larger than 4.

The programs for A171666, the canonical program `A171666.P5620257782220050246` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171666 has offset 1).

The definition of A171666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171666.P4179613867292802061

`∩[A005238(n+1), A171665(n+1)]`
-/

namespace A171666.P4179613867292802061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171666.P4179613867292802061

namespace A171666

/-- `∩[A005238(n+1), A171665(n+1)]` -/
def P4179613867292802061.Spec : Prop :=
  ∀ n, (P4179613867292802061.a n : ℤ) = A171666 (n + 1)

end A171666

/-! ## A171666.P5620257782220050246

`∩[A171665(n+2)-1, A171665(n+2)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A171666

/-- `∩[A171665(n+2)-1, A171665(n+2)]` -/
def P5620257782220050246.Spec : Prop :=
  ∀ n, (P5620257782220050246.a n : ℤ) = A171666 (n + 1)

theorem P5620257782220050246.correct : P5620257782220050246.Spec := by
  intro n
  simp only [A171666, Nat.add_sub_cancel]

end A171666

/-! ## A171666.P16744668867862950758

`∩[A062832(n+1), A171665(n+1)]`
-/

namespace A171666.P16744668867862950758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171666.P16744668867862950758

namespace A171666

/-- `∩[A062832(n+1), A171665(n+1)]` -/
def P16744668867862950758.Spec : Prop :=
  ∀ n, (P16744668867862950758.a n : ℤ) = A171666 (n + 1)

end A171666

/-! ## A171666.P14170142251420457822

`∩[A005238(n+1), A344843(n+1)]`
-/

namespace A171666.P14170142251420457822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171666.P14170142251420457822

namespace A171666

/-- `∩[A005238(n+1), A344843(n+1)]` -/
def P14170142251420457822.Spec : Prop :=
  ∀ n, (P14170142251420457822.a n : ℤ) = A171666 (n + 1)

end A171666

/-! ## A171666.P2475560428262385225

`∩[A005238(n+1), A357077(n+1)]`
-/

namespace A171666.P2475560428262385225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171666.P2475560428262385225

namespace A171666

/-- `∩[A005238(n+1), A357077(n+1)]` -/
def P2475560428262385225.Spec : Prop :=
  ∀ n, (P2475560428262385225.a n : ℤ) = A171666 (n + 1)

end A171666

/-! ## A171666.P9973771413791986093

`A171665(eq[0, A051950(A171665(n+1))])`
-/

namespace A171666.P9973771413791986093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (A171665 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171665 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A171666.P9973771413791986093

namespace A171666

/-- `A171665(eq[0, A051950(A171665(n+1))])` -/
def P9973771413791986093.Spec : Prop :=
  ∀ n, P9973771413791986093.a n = A171666 (n + 1)

end A171666

/-! ## A171666.P16655210776685856328

`∩[A171665(n+1), A175149(n+1)]`
-/

namespace A171666.P16655210776685856328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171666.P16655210776685856328

namespace A171666

/-- `∩[A171665(n+1), A175149(n+1)]` -/
def P16655210776685856328.Spec : Prop :=
  ∀ n, (P16655210776685856328.a n : ℤ) = A171666 (n + 1)

end A171666

/-!
# A171668: Fibonacci numbers sandwiched between two numbers having same number of divisors.

The programs for A171668, there is no canonical definition to state claims against.
-/

/-! ## A171668.P13381992728770274044

`A000045(lt[A346123(n+3), A264992(n)])`
-/

namespace A171668.P13381992728770274044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346123 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264992 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A171668.P13381992728770274044

/-!
# A171669: Pell numbers sandwiched between two numbers having same number of divisors.

The programs for A171669, there is no canonical definition to state claims against.
-/

/-! ## A171669.P27746493822516772

`A000129(record[Δ[A323674(4*(n+1))]])`
-/

namespace A171669.P27746493822516772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323674 (4 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171669.P27746493822516772

/-!
# A171670: Triangle T read by rows : T(n,k)= A007318(n,k)*A005773(n-k).

The programs for A171670, the canonical program `A171670.P17266629762442056093` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171670 has offset 0).

The definition of A171670 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171670.P17266629762442056093

`A007318(n)*A005773(A025581(n))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A171670

/-- `A007318(n)*A005773(A025581(n))` -/
def P17266629762442056093.Spec : Prop :=
  ∀ n, P17266629762442056093.a n = A171670 n

theorem P17266629762442056093.correct : P17266629762442056093.Spec := by
  intro n
  simp only [A171670]

end A171670

/-! ## A171670.P13138653516262984970

`abs(A005773(A025581(n))*A108086(n))`
-/

namespace A171670.P13138653516262984970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005773 (A025581 n).toNat * A108086 n|

end

end A171670.P13138653516262984970

namespace A171670

/-- `abs(A005773(A025581(n))*A108086(n))` -/
def P13138653516262984970.Spec : Prop :=
  ∀ n, P13138653516262984970.a n = A171670 n

end A171670

/-! ## A171670.P14626995898045557650

`abs(A005773(A025581(n))*A130595(n))`
-/

namespace A171670.P14626995898045557650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005773 (A025581 n).toNat * A130595 n|

end

end A171670.P14626995898045557650

namespace A171670

/-- `abs(A005773(A025581(n))*A130595(n))` -/
def P14626995898045557650.Spec : Prop :=
  ∀ n, P14626995898045557650.a n = A171670 n

end A171670

/-! ## A171670.P5897701181958113050

`sqrt(A008459(n))*A005773(A025581(n))`
-/

namespace A171670.P5897701181958113050
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A005773 (A025581 n).toNat : ℝ)

end

end A171670.P5897701181958113050

namespace A171670

/-- `sqrt(A008459(n))*A005773(A025581(n))` -/
def P5897701181958113050.Spec : Prop :=
  ∀ n, P5897701181958113050.a n = (A171670 n : ℝ)

end A171670

/-! ## A171670.P7168891462673658845

`Δ[A102363(n)]*A005773(A025581(n))`
-/

namespace A171670.P7168891462673658845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A005773 (A025581 n).toNat

end

end A171670.P7168891462673658845

namespace A171670

/-- `Δ[A102363(n)]*A005773(A025581(n))` -/
def P7168891462673658845.Spec : Prop :=
  ∀ n, P7168891462673658845.a n = A171670 n

end A171670

/-! ## A171670.P18012273891312834962

`A007318(n)*A307789(A004736(n+1))`
-/

namespace A171670.P18012273891312834962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A307789 (A004736 (n + 1)).toNat

end

end A171670.P18012273891312834962

namespace A171670

/-- `A007318(n)*A307789(A004736(n+1))` -/
def P18012273891312834962.Spec : Prop :=
  ∀ n, P18012273891312834962.a n = A171670 n

end A171670

/-! ## A171670.P18086526566616205387

`A005773(A025581(n))/2*A028326(n)`
-/

namespace A171670.P18086526566616205387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005773 (A025581 n).toNat : ℚ) / 2 * (A028326 n : ℚ)

end

end A171670.P18086526566616205387

namespace A171670

/-- `A005773(A025581(n))/2*A028326(n)` -/
def P18086526566616205387.Spec : Prop :=
  ∀ n, P18086526566616205387.a n = (A171670 n : ℚ)

theorem P18086526566616205387.correct : P18086526566616205387.Spec := by
  intro n
  simp only [A171670, Nat.add_sub_cancel, A171670.P18086526566616205387.a, A171670.P17266629762442056093.a, A005773, A005773.P2300326801340372225.a, A007318, A007318.P11755526479805562006.a, A025581, A025581.P16112744757063613497.a, A028326, A028326.P7676793339942299677.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171670

/-!
# A171671: Square numbers not of form m + sum of digits of m.

The programs for A171671, there is no canonical definition to state claims against.
-/

/-! ## A171671.P4131604518900187656

`A171672(n+1)²`
-/

namespace A171671.P4131604518900187656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171672 (n + 1) ^ 2

end

end A171671.P4131604518900187656

/-! ## A171671.P124532796779420797

`record[A171672(A328396(n))²]`
-/

namespace A171671.P124532796779420797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171672 (A328396 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171671.P124532796779420797

/-! ## A171671.P16865459762914162680

`A171672(A000027(n+1))^2`
-/

namespace A171671.P16865459762914162680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171672 (A000027 (n + 1)).toNat ^ 2

end

end A171671.P16865459762914162680

/-! ## A171671.P5196429937899409742

`record[A171672(A133310(n))²]`
-/

namespace A171671.P5196429937899409742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171672 (A133310 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171671.P5196429937899409742

/-! ## A171671.P7976656522424984237

`A002620(2*A171672(n+1))`
-/

namespace A171671.P7976656522424984237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A171672 (n + 1)).toNat

end

end A171671.P7976656522424984237

/-!
# A171672: Numbers m with property that m^2 is not of form (k + sum of digits of k).

The programs for A171672, there is no canonical definition to state claims against.
-/

/-! ## A171672.P12282268887593460352

`sqrt(A171671(n+1))`
-/

namespace A171672.P12282268887593460352
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A171671 (n + 1) : ℝ)

end

end A171672.P12282268887593460352

/-! ## A171672.P818604802464397647

`root(A171671(n+1), 2)*A353490(A125830(n+1))`
-/

namespace A171672.P818604802464397647
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A171671 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A353490 (A125830 (n + 1)).toNat : ℝ)

end

end A171672.P818604802464397647

/-! ## A171672.P12201926869289569057

`A329888(A001285(3*n)*A171671(n+1))`
-/

namespace A171672.P12201926869289569057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A001285 (3 * n) * A171671 (n + 1)).toNat

end

end A171672.P12201926869289569057

/-! ## A171672.P9122032020342795405

`A329888(A171671(n+1)*A174353(3*n))`
-/

namespace A171672.P9122032020342795405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A171671 (n + 1) * A174353 (3 * n)).toNat

end

end A171672.P9122032020342795405

/-!
# A171673: Numbers n with property that both n and n^2 are self numbers (A003052).

The programs for A171673, there is no canonical definition to state claims against.
-/

/-! ## A171673.P12915846131213994693

`∩[A003052(n+1), A171672(n+1)]`
-/

namespace A171673.P12915846131213994693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171673.P12915846131213994693

/-! ## A171673.P7007871480831432127

`∩[A163128(n+1)+1+n, A171672(n+1)]`
-/

namespace A171673.P7007871480831432127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163128 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171673.P7007871480831432127

/-! ## A171673.P3540953036803910157

`∩[A171672(n+1), a(n-1)+A163139(n)+1]` with `a(0)=1`
-/

namespace A171673.P3540953036803910157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171672 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + (A163139 n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A171673.P3540953036803910157

/-! ## A171673.P10013595249169740604

`∩[record[A036233(n+1)], A171672(n+1)]`
-/

namespace A171673.P10013595249169740604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036233 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A171673.P10013595249169740604

/-!
# A171674: Numbers n with property that n is divisible by (at least one) sum of two its positive digits.

The programs for A171674, there is no canonical definition to state claims against.
-/

/-! ## A171674.P12965218628987859895

`xor(A192016(A171694(n)), A247624(n+1))`
-/

namespace A171674.P12965218628987859895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A192016 (A171694 n).toNat) (A247624 (n + 1))

end

end A171674.P12965218628987859895

/-!
# A171675: Square numbers n divisible by (at least one) sum of two positive digits of n.

The programs for A171675, there is no canonical definition to state claims against.
-/

/-! ## A171675.P16876343707056614328

`∑[A093716(n+1)%7]²`
-/

namespace A171675.P16876343707056614328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093716 (n + 1)) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A171675.P16876343707056614328

/-! ## A171675.P937064618848536924

`record[Δ[A100787(2*(n+1))]²]`
-/

namespace A171675.P937064618848536924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100787 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171675.P937064618848536924

/-! ## A171675.P17148234898610520181

`eq[(n+1)/∏{p}[n+1, #], A326786(3*(n+1))]²`
-/

namespace A171675.P17148234898610520181
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326786 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℚ)) n ^ 2

end

end A171675.P17148234898610520181

/-!
# A171676: Ordered list in binary of the subwords (with leading zeros omitted) appearing in the infinite Fibonacci word.

The programs for A171676, there is no canonical definition to state claims against.
-/

/-! ## A171676.P3743759722676273634

`A007088(A178992(n+1))`
-/

namespace A171676.P3743759722676273634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A178992 (n + 1)).toNat

end

end A171676.P3743759722676273634

/-! ## A171676.P10865854544998715591

`A007088(record[A179969(n+1)])`
-/

namespace A171676.P10865854544998715591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171676.P10865854544998715591

/-! ## A171676.P7189985930801623360

`A185544(2*A178992(n+1))`
-/

namespace A171676.P7189985930801623360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A178992 (n + 1)).toNat

end

end A171676.P7189985930801623360

/-! ## A171676.P8870397205007480593

`A185544(record[2*A179969(n+1)])`
-/

namespace A171676.P8870397205007480593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179969 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A171676.P8870397205007480593

/-! ## A171676.P2562826871468788059

`A185544(A178992(n+1)+A178992(n+1))`
-/

namespace A171676.P2562826871468788059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A178992 (n + 1) + A178992 (n + 1)).toNat

end

end A171676.P2562826871468788059

/-!
# A171677: Period 9: repeat [7, 5, 7, 4, 2, 4, 1, 8, 1].

The programs for A171677, the canonical program `A171677.P12048600310512363751` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171677 has offset 0).

The definition of A171677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A171677.P12048600310512363751

`A165563(n+1)%9`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A171677

/-- `A165563(n+1)%9` -/
def P12048600310512363751.Spec : Prop :=
  ∀ n, P12048600310512363751.a n = A171677 n

theorem P12048600310512363751.correct : P12048600310512363751.Spec := by
  intro n
  simp only [A171677]

end A171677

/-!
# A171678: a(n) = 0+1+2+...+n in lunar arithmetic in base 8 written in base 8.

The programs for A171678, there is no canonical definition to state claims against.
-/

/-! ## A171678.P17785581925651822736

`A007094(A171649(n))`
-/

namespace A171678.P17785581925651822736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007094 (A171649 n).toNat

end

end A171678.P17785581925651822736

/-! ## A171678.P1262721448455479040

`A171723(comp[9*n])-1`
-/

namespace A171678.P1262721448455479040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171723 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A171678.P1262721448455479040

/-! ## A171678.P11149418885943633986

`A023443(A171723(comp[9*n]))`
-/

namespace A171678.P11149418885943633986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A171723 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A171678.P11149418885943633986

/-!
# A171679: Squares in lunar arithmetic in base 9 written in base 10.

The programs for A171679, there is no canonical definition to state claims against.
-/

/-! ## A171679.P17655235344948978490

`10*n-9*A190598(n)`
-/

namespace A171679.P17655235344948978490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) - 9 * A190598 n

end

end A171679.P17655235344948978490

/-! ## A171679.P1936062007530433882

`eq[A190598(n), A346732(n)]`
-/

namespace A171679.P1936062007530433882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190598 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346732 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171679.P1936062007530433882

/-! ## A171679.P941413132381756823

`A028904(A171717(n))`
-/

namespace A171679.P941413132381756823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A171717 n).toNat

end

end A171679.P941413132381756823

/-! ## A171679.P8996998487542467907

`eq[A007095(n), A171717(A076314(n))]`
-/

namespace A171679.P8996998487542467907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171717 (A076314 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171679.P8996998487542467907

/-!
# A171681: a(n) = F(2n+1)^3 - F(3n)^2 - F(6n-2), where the F(i) are Fibonacci numbers.

The programs for A171681, the canonical program `A171681.P1362218982562328644` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171681 has offset 1).

The definition of A171681 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(2*(n+1)+1)^3-A000045(3*(n+1))²-A000045(6*(n+1)-2)` (program `A171681.P1362218982562328644`, by `A171681.P1362218982562328644.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A171681.P12867400295183011007

`1/5*(3*A000045(2*(n+1)+1)+A000045(6*(n+1)-5)+2*(-1)^(n+1))`
-/

namespace A171681.P12867400295183011007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 5 * (3 * A000045 (2 * (n + 1) + 1) + A000045 (6 * (n + 1) - 5) + 2 * (-1) ^ (n + 1) : ℚ)

end

end A171681.P12867400295183011007

namespace A171681

/-- `1/5*(3*A000045(2*(n+1)+1)+A000045(6*(n+1)-5)+2*(-1)^(n+1))` -/
def P12867400295183011007.Spec : Prop :=
  ∀ n, P12867400295183011007.a n = (A171681 (n + 1) : ℚ)

end A171681

/-! ## A171681.P1362218982562328644

`A000045(2*(n+1)+1)^3-A000045(3*(n+1))²-A000045(6*(n+1)-2)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A171681

/-- `A000045(2*(n+1)+1)^3-A000045(3*(n+1))²-A000045(6*(n+1)-2)` -/
def P1362218982562328644.Spec : Prop :=
  ∀ n, P1362218982562328644.a n = A171681 (n + 1)

theorem P1362218982562328644.correct : P1362218982562328644.Spec := by
  intro n
  simp only [A171681, Nat.add_sub_cancel]

end A171681

/-! ## A171681.P14150444691152170002

`A066258(2*n)+A007598(n+2)`
-/

namespace A171681.P14150444691152170002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066258 (2 * n) + A007598 (n + 2)

end

end A171681.P14150444691152170002

namespace A171681

/-- `A066258(2*n)+A007598(n+2)` -/
def P14150444691152170002.Spec : Prop :=
  ∀ n, P14150444691152170002.a n = A171681 (n + 1)

end A171681

/-! ## A171681.P17048522855258224205

`A066258(2*n)+A000045(n+2)²`
-/

namespace A171681.P17048522855258224205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066258 (2 * n) + A000045 (n + 2) ^ 2

end

end A171681.P17048522855258224205

namespace A171681

/-- `A066258(2*n)+A000045(n+2)²` -/
def P17048522855258224205.Spec : Prop :=
  ∀ n, P17048522855258224205.a n = A171681 (n + 1)

end A171681

/-! ## A171681.P9971245389427884800

`A066258(2*n)+sqrt(A056571(n+2))`
-/

namespace A171681.P9971245389427884800
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A066258 (2 * n) : ℝ) + Real.sqrt (A056571 (n + 2) : ℝ)

end

end A171681.P9971245389427884800

namespace A171681

/-- `A066258(2*n)+sqrt(A056571(n+2))` -/
def P9971245389427884800.Spec : Prop :=
  ∀ n, P9971245389427884800.a n = (A171681 (n + 1) : ℝ)

end A171681

/-! ## A171681.P391469995558416914

`A066258(2*n)+A096748(2*n)²`
-/

namespace A171681.P391469995558416914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066258 (2 * n) + A096748 (2 * n) ^ 2

end

end A171681.P391469995558416914

namespace A171681

/-- `A066258(2*n)+A096748(2*n)²` -/
def P391469995558416914.Spec : Prop :=
  ∀ n, P391469995558416914.a n = A171681 (n + 1)

end A171681

/-! ## A171681.P14099275118677950533

`A195971(2*n+1)+A066258(2*n)`
-/

namespace A171681.P14099275118677950533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195971 (2 * n + 1) + A066258 (2 * n)

end

end A171681.P14099275118677950533

namespace A171681

/-- `A195971(2*n+1)+A066258(2*n)` -/
def P14099275118677950533.Spec : Prop :=
  ∀ n, P14099275118677950533.a n = A171681 (n + 1)

end A171681

/-!
# A171682: Number of compositions of n with the smallest part in the first position.

The programs for A171682, there is no canonical definition to state claims against.
-/

/-! ## A171682.P10953459559310762215

`(A238859(n)+A008930(n))/A054977(n)`
-/

namespace A171682.P10953459559310762215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238859 n + A008930 n : ℚ) / (A054977 n : ℚ)

end

end A171682.P10953459559310762215

/-! ## A171682.P525310211713437788

`A000007(n)+Δ[A097939(A028310(n))]`
-/

namespace A171682.P525310211713437788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097939 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A171682.P525310211713437788

/-! ## A171682.P13072544050268688931

`A008930(n)+A238859(n)%A000079(n)`
-/

namespace A171682.P13072544050268688931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008930 n + Int.tmod (A238859 n) (A000079 n)

end

end A171682.P13072544050268688931

/-! ## A171682.P13050038008190386305

`A238859(n)+A008930(n)%A008930(n+2)`
-/

namespace A171682.P13050038008190386305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238859 n + Int.tmod (A008930 n) (A008930 (n + 2))

end

end A171682.P13050038008190386305

/-! ## A171682.P11628807896790750626

`A097939(n+1)+A000007(n)-A097939(A028310(n))`
-/

namespace A171682.P11628807896790750626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097939 (n + 1) + (A000007 n - A097939 (A028310 n).toNat)

end

end A171682.P11628807896790750626

/-! ## A171682.P17869516003946741144

`A224960(n+2)-2^n`
-/

namespace A171682.P17869516003946741144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224960 (n + 2) - (2 ^ n : ℤ)

end

end A171682.P17869516003946741144

/-!
# A171687: 

The programs for A171687, there is no canonical definition to state claims against.
-/

/-! ## A171687.P11006662943264319175

`(10^n)^4+(10^n+1)^4`
-/

namespace A171687.P11006662943264319175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (10 ^ n) ^ 4 + (10 ^ n + 1) ^ 4

end

end A171687.P11006662943264319175

/-!
# A171688: Twin primes > 3.

The programs for A171688, the canonical program `A171688.P7072917769576396976` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171688 has offset 1).

The definition of A171688 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001097, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A171688.P7072917769576396976

`A001097(n+2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A171688

/-- `A001097(n+2)` -/
def P7072917769576396976.Spec : Prop :=
  ∀ n, P7072917769576396976.a n = A171688 (n + 1)

theorem P7072917769576396976.correct : P7072917769576396976.Spec := by
  intro n
  simp only [A171688, Nat.add_sub_cancel]

end A171688

/-! ## A171688.P16622886317845242366

`A280968(n+1)-a(n-1)` with `a(0)=5`
-/

namespace A171688.P16622886317845242366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A280968 (n + 1) - a (n - 1)

end

end A171688.P16622886317845242366

namespace A171688

/-- `A280968(n+1)-a(n-1)` -/
def P16622886317845242366.Spec : Prop :=
  ∀ n, P16622886317845242366.a n = A171688 (n + 1)

end A171688

/-! ## A171688.P3690338636210949543

`∪[A006512(n+1), A001359(n+2)]`
-/

namespace A171688.P3690338636210949543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171688.P3690338636210949543

namespace A171688

/-- `∪[A006512(n+1), A001359(n+2)]` -/
def P3690338636210949543.Spec : Prop :=
  ∀ n, (P3690338636210949543.a n : ℤ) = A171688 (n + 1)

end A171688

/-! ## A171688.P13656395197453555529

`∪[A001359(n+1)+2, A001359(n+3)]`
-/

namespace A171688.P13656395197453555529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171688.P13656395197453555529

namespace A171688

/-- `∪[A001359(n+1)+2, A001359(n+3)]` -/
def P13656395197453555529.Spec : Prop :=
  ∀ n, (P13656395197453555529.a n : ℤ) = A171688 (n + 1)

end A171688

/-! ## A171688.P12646221051514826283

`∪[A006512(n+2)-2, A006512(n+2)]`
-/

namespace A171688.P12646221051514826283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171688.P12646221051514826283

namespace A171688

/-- `∪[A006512(n+2)-2, A006512(n+2)]` -/
def P12646221051514826283.Spec : Prop :=
  ∀ n, (P12646221051514826283.a n : ℤ) = A171688 (n + 1)

end A171688

/-! ## A171688.P5088832660527050768

`A280968(n+1)-(A161220(n+1)+2*(n+1))`
-/

namespace A171688.P5088832660527050768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280968 (n + 1) - (A161220 (n + 1) + (2 * (n + 1) : ℤ))

end

end A171688.P5088832660527050768

namespace A171688

/-- `A280968(n+1)-(A161220(n+1)+2*(n+1))` -/
def P5088832660527050768.Spec : Prop :=
  ∀ n, P5088832660527050768.a n = A171688 (n + 1)

theorem P5088832660527050768.correct : P5088832660527050768.Spec := by
  intro n
  simp only [A171688, Nat.add_sub_cancel, A171688.P5088832660527050768.a, A171688.P7072917769576396976.a, A001097, A001097.P13187098143555915233.a, A161220, A161220.P17651123597370390187.a, A280968, A280968.P17537738799820153043.a, A005843, A005843.P3167286115683555970.a, A171821, A171821.P6124203405807324285.a, A077800, A077800.P16009445446139691322.a, A130706, A130706.P15856520674389082666.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171688

/-! ## A171688.P15644840864295655353

`A280968(n+1)-(A265760(n+1)+A130706(n))`
-/

namespace A171688.P15644840864295655353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280968 (n + 1) - (A265760 (n + 1) + A130706 n)

end

end A171688.P15644840864295655353

namespace A171688

/-- `A280968(n+1)-(A265760(n+1)+A130706(n))` -/
def P15644840864295655353.Spec : Prop :=
  ∀ n, P15644840864295655353.a n = A171688 (n + 1)

theorem P15644840864295655353.correct : P15644840864295655353.Spec := by
  intro n
  simp only [A171688, Nat.add_sub_cancel, A171688.P15644840864295655353.a, A171688.P7072917769576396976.a, A001097, A001097.P13187098143555915233.a, A130706, A130706.P15856520674389082666.a, A265760, A265760.P11653394699473330662.a, A280968, A280968.P17537738799820153043.a, A171821, A171821.P6124203405807324285.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171688

/-! ## A171688.P2817286520469821519

`A280968(n+1)-(A161165(n+1)-(A167397(n+1)+1+n))`
-/

namespace A171688.P2817286520469821519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280968 (n + 1) - (A161165 (n + 1) - (A167397 (n + 1) + 1 + (n : ℤ)))

end

end A171688.P2817286520469821519

namespace A171688

/-- `A280968(n+1)-(A161165(n+1)-(A167397(n+1)+1+n))` -/
def P2817286520469821519.Spec : Prop :=
  ∀ n, P2817286520469821519.a n = A171688 (n + 1)

theorem P2817286520469821519.correct : P2817286520469821519.Spec := by
  intro n
  simp only [A171688, Nat.add_sub_cancel, A171688.P2817286520469821519.a, A171688.P7072917769576396976.a, A001097, A001097.P13187098143555915233.a, A161165, A161165.P7740314374936360020.a, A167397, A167397.P6695962093421447498.a, A280968, A280968.P17537738799820153043.a, A007510, A007510.P12699692636498883418.a, A171821, A171821.P6124203405807324285.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A077800, A077800.P16009445446139691322.a, A130706, A130706.P15856520674389082666.a, A176656, A176656.P6862990091630044346.f1, A176656.P6862990091630044346.a, A096281, A096281.P9870488552655544131.a, A334142, A334142.P15450815124474884519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171688

/-! ## A171688.P17214398259162399192

`Δ[A048598(n+1)]`
-/

namespace A171688.P17214398259162399192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A171688.P17214398259162399192

namespace A171688

/-- `Δ[A048598(n+1)]` -/
def P17214398259162399192.Spec : Prop :=
  ∀ n, P17214398259162399192.a n = A171688 (n + 1)

end A171688

/-! ## A171688.P17242620754520394998

`A278972(n+2)/2`
-/

namespace A171688.P17242620754520394998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278972 (n + 2) : ℚ) / 2

end

end A171688.P17242620754520394998

namespace A171688

/-- `A278972(n+2)/2` -/
def P17242620754520394998.Spec : Prop :=
  ∀ n, P17242620754520394998.a n = (A171688 (n + 1) : ℚ)

theorem P17242620754520394998.correct : P17242620754520394998.Spec := by
  intro n
  simp only [A171688, Nat.add_sub_cancel, A171688.P17242620754520394998.a, A171688.P7072917769576396976.a, A001097, A001097.P13187098143555915233.a, A278972, A278972.P17854840441802126541.a, A171821, A171821.P6124203405807324285.a, A077800, A077800.P16009445446139691322.a, A130706, A130706.P15856520674389082666.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171688

/-! ## A171688.P4061544023532151673

`abs(Δ[A376890(n+1)])`
-/

namespace A171688.P4061544023532151673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A171688.P4061544023532151673

namespace A171688

/-- `abs(Δ[A376890(n+1)])` -/
def P4061544023532151673.Spec : Prop :=
  ∀ n, P4061544023532151673.a n = A171688 (n + 1)

end A171688

/-! ## A171688.P9570363616173012588

`A265760(n+2)+A130706(n+1)`
-/

namespace A171688.P9570363616173012588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265760 (n + 2) + A130706 (n + 1)

end

end A171688.P9570363616173012588

namespace A171688

/-- `A265760(n+2)+A130706(n+1)` -/
def P9570363616173012588.Spec : Prop :=
  ∀ n, P9570363616173012588.a n = A171688 (n + 1)

theorem P9570363616173012588.correct : P9570363616173012588.Spec := by
  intro n
  simp only [A171688, Nat.add_sub_cancel, A171688.P9570363616173012588.a, A171688.P7072917769576396976.a, A001097, A001097.P13187098143555915233.a, A130706, A130706.P15856520674389082666.a, A265760, A265760.P11653394699473330662.a, A171821, A171821.P6124203405807324285.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171688

/-! ## A171688.P16201257564147143451

`A048598(n+2)-A048598(n+1)`
-/

namespace A171688.P16201257564147143451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048598 (n + 2) - A048598 (n + 1)

end

end A171688.P16201257564147143451

namespace A171688

/-- `A048598(n+2)-A048598(n+1)` -/
def P16201257564147143451.Spec : Prop :=
  ∀ n, P16201257564147143451.a n = A171688 (n + 1)

end A171688

/-! ## A171688.P14899975236768824202

`A161220(n+2)+A005843(n+2)`
-/

namespace A171688.P14899975236768824202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161220 (n + 2) + A005843 (n + 2)

end

end A171688.P14899975236768824202

namespace A171688

/-- `A161220(n+2)+A005843(n+2)` -/
def P14899975236768824202.Spec : Prop :=
  ∀ n, P14899975236768824202.a n = A171688 (n + 1)

theorem P14899975236768824202.correct : P14899975236768824202.Spec := by
  intro n
  simp only [A171688, Nat.add_sub_cancel, A171688.P14899975236768824202.a, A171688.P7072917769576396976.a, A001097, A001097.P13187098143555915233.a, A005843, A005843.P3167286115683555970.a, A161220, A161220.P17651123597370390187.a, A171821, A171821.P6124203405807324285.a, A077800, A077800.P16009445446139691322.a, A130706, A130706.P15856520674389082666.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171688

/-! ## A171688.P3513057777230107603

`A161165(n+2)-A134797(n+1)`
-/

namespace A171688.P3513057777230107603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161165 (n + 2) - A134797 (n + 1)

end

end A171688.P3513057777230107603

namespace A171688

/-- `A161165(n+2)-A134797(n+1)` -/
def P3513057777230107603.Spec : Prop :=
  ∀ n, P3513057777230107603.a n = A171688 (n + 1)

theorem P3513057777230107603.correct : P3513057777230107603.Spec := by
  intro n
  simp only [A171688, Nat.add_sub_cancel, A171688.P3513057777230107603.a, A171688.P7072917769576396976.a, A001097, A001097.P13187098143555915233.a, A134797, A134797.P10926386183801791278.a, A161165, A161165.P7740314374936360020.a, A007510, A007510.P12699692636498883418.a, A171821, A171821.P6124203405807324285.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A077800, A077800.P16009445446139691322.a, A130706, A130706.P15856520674389082666.a, A176656, A176656.P6862990091630044346.f1, A176656.P6862990091630044346.a, A096281, A096281.P9870488552655544131.a, A334142, A334142.P15450815124474884519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171688

/-! ## A171688.P717698218288950988

`A161165(n+2)-A007510(n+2)`
-/

namespace A171688.P717698218288950988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161165 (n + 2) - A007510 (n + 2)

end

end A171688.P717698218288950988

namespace A171688

/-- `A161165(n+2)-A007510(n+2)` -/
def P717698218288950988.Spec : Prop :=
  ∀ n, P717698218288950988.a n = A171688 (n + 1)

theorem P717698218288950988.correct : P717698218288950988.Spec := by
  intro n
  simp only [A171688, Nat.add_sub_cancel, A171688.P717698218288950988.a, A171688.P7072917769576396976.a, A001097, A001097.P13187098143555915233.a, A007510, A007510.P12699692636498883418.a, A161165, A161165.P7740314374936360020.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A171821, A171821.P6124203405807324285.a, A176656, A176656.P6862990091630044346.f1, A176656.P6862990091630044346.a, A077800, A077800.P16009445446139691322.a, A130706, A130706.P15856520674389082666.a, A334142, A334142.P15450815124474884519.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A096281, A096281.P9870488552655544131.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171688

/-! ## A171688.P339719625998684441

`A077800(n+3)`
-/

namespace A171688.P339719625998684441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (n + 3)

end

end A171688.P339719625998684441

namespace A171688

/-- `A077800(n+3)` -/
def P339719625998684441.Spec : Prop :=
  ∀ n, P339719625998684441.a n = A171688 (n + 1)

end A171688

/-! ## A171688.P318296980741047117

`A171821(n+3)`
-/

namespace A171688.P318296980741047117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 3)

end

end A171688.P318296980741047117

namespace A171688

/-- `A171821(n+3)` -/
def P318296980741047117.Spec : Prop :=
  ∀ n, P318296980741047117.a n = A171688 (n + 1)

theorem P318296980741047117.correct : P318296980741047117.Spec := by
  intro n
  simp only [A171688, Nat.add_sub_cancel, A171688.P318296980741047117.a, A171688.P7072917769576396976.a, A001097, A001097.P13187098143555915233.a, A171821, A171821.P6124203405807324285.a, A077800, A077800.P16009445446139691322.a, A130706, A130706.P15856520674389082666.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A171688

/-! ## A171688.P12688136675086091298

`A099609(n+5)`
-/

namespace A171688.P12688136675086091298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099609 (n + 5)

end

end A171688.P12688136675086091298

namespace A171688

/-- `A099609(n+5)` -/
def P12688136675086091298.Spec : Prop :=
  ∀ n, P12688136675086091298.a n = A171688 (n + 1)

end A171688

/-! ## A171688.P13034629251416859722

`A000040(A334142(n+2))`
-/

namespace A171688.P13034629251416859722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A334142 (n + 2)).toNat

end

end A171688.P13034629251416859722

namespace A171688

/-- `A000040(A334142(n+2))` -/
def P13034629251416859722.Spec : Prop :=
  ∀ n, P13034629251416859722.a n = A171688 (n + 1)

end A171688

/-!
# A171689: Nonprimes n such that either n+-1 is prime.

The programs for A171689, there is no canonical definition to state claims against.
-/

/-! ## A171689.P1472117372400469273

`record[abs(Δ[n*A292438(n)])]`
-/

namespace A171689.P1472117372400469273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A292438 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171689.P1472117372400469273

/-! ## A171689.P17288572363192998975

`xor(1, A100317(n+3))-1`
-/

namespace A171689.P17288572363192998975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A100317 (n + 3)) - 1

end

end A171689.P17288572363192998975

/-! ## A171689.P4257875300706836532

`A100317(3%comp[∑[n]]+n)`
-/

namespace A171689.P4257875300706836532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n)

end

end A171689.P4257875300706836532

/-! ## A171689.P2589290601275601494

`A100317(ceil(n*exp(acot(n)))+1)`
-/

namespace A171689.P2589290601275601494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (⌈(n : ℝ) * Real.exp (SequenceMachineLib.acot (n : ℝ))⌉ + 1).toNat

end

end A171689.P2589290601275601494

/-! ## A171689.P2603961620420345781

`A100317(n+1+2%(n+2))`
-/

namespace A171689.P2603961620420345781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (n + 1 + 2 % (n + 2))

end

end A171689.P2603961620420345781

/-! ## A171689.P24761858762036111

`(C(n, C(n, n²))+1)*A174047(n+1)`
-/

namespace A171689.P24761858762036111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (Nat.choose n (n ^ 2)) + 1 : ℤ) * A174047 (n + 1)

end

end A171689.P24761858762036111

/-! ## A171689.P5136154195051362296

`A018252(A176235(n+1))`
-/

namespace A171689.P5136154195051362296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A176235 (n + 1)).toNat

end

end A171689.P5136154195051362296

/-! ## A171689.P13695195612473932470

`A057543(A174047(n+1))`
-/

namespace A171689.P13695195612473932470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057543 (A174047 (n + 1)).toNat

end

end A171689.P13695195612473932470

/-! ## A171689.P8566392200440860697

`A100317(A171463(n+1))`
-/

namespace A171689.P8566392200440860697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100317 (A171463 (n + 1)).toNat

end

end A171689.P8566392200440860697

/-! ## A171689.P12356580055810612058

`filter[A045718(n), A292438(#)]`
-/

namespace A171689.P12356580055810612058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A171689.P12356580055810612058

/-!
# A171691: Number of unordered partitions {k1, k2} of n such that k1 and k2 are nonnegative nonprimes A141468.

The programs for A171691, there is no canonical definition to state claims against.
-/

/-! ## A171691.P6852326580406888419

`A062610(n+1)+A005171(n+1)`
-/

namespace A171691.P6852326580406888419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (n + 1) + A005171 (n + 1)

end

end A171691.P6852326580406888419

/-! ## A171691.P9087047520729521920

`A062298(n+1)-A295630(n+1)`
-/

namespace A171691.P9087047520729521920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - A295630 (n + 1)

end

end A171691.P9087047520729521920

/-! ## A171691.P18160253043501380772

`A347788(n+1)-A302479(n+1)`
-/

namespace A171691.P18160253043501380772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347788 (n + 1) - A302479 (n + 1)

end

end A171691.P18160253043501380772

/-! ## A171691.P17216178017348622582

`A062610(n+1)+1-A010051(n+1)`
-/

namespace A171691.P17216178017348622582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (n + 1) + (1 - A010051 (n + 1))

end

end A171691.P17216178017348622582

/-! ## A171691.P12935642879504628849

`A014684(n+1)+A062610(n+1)-n`
-/

namespace A171691.P12935642879504628849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) + (A062610 (n + 1) - (n : ℤ))

end

end A171691.P12935642879504628849

/-! ## A171691.P7509689130845318723

`A062610(n+1)+char[A018252(n+1)-1]`
-/

namespace A171691.P7509689130845318723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A171691.P7509689130845318723

/-! ## A171691.P11045959814465862329

`A062610(n+1)+and(1, A014092(A000005(n+1)))`
-/

namespace A171691.P11045959814465862329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (n + 1) + Int.land 1 (A014092 (A000005 (n + 1)).toNat)

end

end A171691.P11045959814465862329

/-! ## A171691.P18258912405482310323

`A341461(A033676(n+1)%A014963(n+1))+A062610(n+1)`
-/

namespace A171691.P18258912405482310323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341461 ((Int.tmod (A033676 (n + 1)) (A014963 (n + 1))).toNat + 11) + A062610 (n + 1)

end

end A171691.P18258912405482310323

/-! ## A171691.P3278241916882616363

`A062610(n+1)+A062610(n+2)-A224708(n+2)`
-/

namespace A171691.P3278241916882616363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062610 (n + 1) + (A062610 (n + 2) - A224708 (n + 2))

end

end A171691.P3278241916882616363

/-! ## A171691.P4087149750268862716

`A005171(n+1)+A347788(n+1)-A358638(n+1)`
-/

namespace A171691.P4087149750268862716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 1) + (A347788 (n + 1) - A358638 (n + 1))

end

end A171691.P4087149750268862716

/-!
# A171692: Triangle read by rows: absolute values of odd-numbered rows of A159041.

The programs for A171692, there is no canonical definition to state claims against.
-/

/-! ## A171692.P1387762666061127396

`abs(A159041(A161983(n)))`
-/

namespace A171692.P1387762666061127396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159041 (A161983 n).toNat|

end

end A171692.P1387762666061127396

/-! ## A171692.P3099562949732206984

`abs(A159041(A116942(2*n)))`
-/

namespace A171692.P3099562949732206984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159041 (A116942 (2 * n)).toNat|

end

end A171692.P3099562949732206984

/-! ## A171692.P11586640545982197791

`gcd(A000122(n), A159041(A161983(n)))`
-/

namespace A171692.P11586640545982197791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 n) (A159041 (A161983 n).toNat)

end

end A171692.P11586640545982197791

/-! ## A171692.P6414850194089580230

`lcm(A010121(2*n+1), A159041(A116942(2*n)))`
-/

namespace A171692.P6414850194089580230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010121 (2 * n + 1)) (A159041 (A116942 (2 * n)).toNat)

end

end A171692.P6414850194089580230

/-! ## A171692.P15393040552814762344

`abs(A159041(A316670(n+1)))`
-/

namespace A171692.P15393040552814762344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159041 (A316670 (n + 1)).toNat|

end

end A171692.P15393040552814762344

/-! ## A171692.P3775767380830317559

`abs(A159041(A316965(n)+1))`
-/

namespace A171692.P3775767380830317559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A159041 (A316965 n + 1).toNat|

end

end A171692.P3775767380830317559

/-! ## A171692.P15127895744678469442

`gcd(A000038(n), A159041(A316670(n+1)))`
-/

namespace A171692.P15127895744678469442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A159041 (A316670 (n + 1)).toNat)

end

end A171692.P15127895744678469442

/-! ## A171692.P16761794853439305602

`gcd(A103223(n+1)%2, A159041(A316965(n)+1))`
-/

namespace A171692.P16761794853439305602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A103223 (n + 1)) 2) (A159041 (A316965 n + 1).toNat)

end

end A171692.P16761794853439305602

/-!
# A171696: Nonnegative numbers k such that neither of 6*k +- 1 is prime.

The programs for A171696, the canonical program `A171696.P13576368370877495331` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A171696 has offset 1).

The definition of A171696 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A171696.P13576368370877495331

`comp[A377540(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A171696

/-- `comp[A377540(n+1)]` -/
def P13576368370877495331.Spec : Prop :=
  ∀ n, (P13576368370877495331.a n : ℤ) = A171696 (n + 1)

theorem P13576368370877495331.correct : P13576368370877495331.Spec := by
  intro n
  simp only [A171696, Nat.add_sub_cancel]

end A171696

/-! ## A171696.P3339625928983878698

`∪[A060461(n+1), A004935(n)]`
-/

namespace A171696.P3339625928983878698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004935 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171696.P3339625928983878698

namespace A171696

/-- `∪[A060461(n+1), A004935(n)]` -/
def P3339625928983878698.Spec : Prop :=
  ∀ n, (P3339625928983878698.a n : ℤ) = A171696 (n + 1)

end A171696

/-! ## A171696.P1764581353001898490

`∪[A060461(n+1), A004955(n)]`
-/

namespace A171696.P1764581353001898490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004955 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171696.P1764581353001898490

namespace A171696

/-- `∪[A060461(n+1), A004955(n)]` -/
def P1764581353001898490.Spec : Prop :=
  ∀ n, (P1764581353001898490.a n : ℤ) = A171696 (n + 1)

end A171696

/-! ## A171696.P17879303541361304368

`∪[A060461(n+1), A016748(n)]`
-/

namespace A171696.P17879303541361304368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016748 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171696.P17879303541361304368

namespace A171696

/-- `∪[A060461(n+1), A016748(n)]` -/
def P17879303541361304368.Spec : Prop :=
  ∀ n, (P17879303541361304368.a n : ℤ) = A171696 (n + 1)

end A171696

/-! ## A171696.P17462590852964966486

`∪[A016804(n), A060461(n+1)]`
-/

namespace A171696.P17462590852964966486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016804 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171696.P17462590852964966486

namespace A171696

/-- `∪[A016804(n), A060461(n+1)]` -/
def P17462590852964966486.Spec : Prop :=
  ∀ n, (P17462590852964966486.a n : ℤ) = A171696 (n + 1)

end A171696

/-! ## A171696.P16282918670203520525

`∪[A060461(n+1), A016913(n)]`
-/

namespace A171696.P16282918670203520525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016913 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171696.P16282918670203520525

namespace A171696

/-- `∪[A060461(n+1), A016913(n)]` -/
def P16282918670203520525.Spec : Prop :=
  ∀ n, (P16282918670203520525.a n : ℤ) = A171696 (n + 1)

end A171696

/-! ## A171696.P2144581154226544420

`∪[A016912(n), A060461(n+1)]`
-/

namespace A171696.P2144581154226544420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016912 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171696.P2144581154226544420

namespace A171696

/-- `∪[A016912(n), A060461(n+1)]` -/
def P2144581154226544420.Spec : Prop :=
  ∀ n, (P2144581154226544420.a n : ℤ) = A171696 (n + 1)

end A171696

/-! ## A171696.P4405475902175438142

`∪[A060461(n+1), A090394(n)]`
-/

namespace A171696.P4405475902175438142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090394 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171696.P4405475902175438142

namespace A171696

/-- `∪[A060461(n+1), A090394(n)]` -/
def P4405475902175438142.Spec : Prop :=
  ∀ n, (P4405475902175438142.a n : ℤ) = A171696 (n + 1)

end A171696

/-! ## A171696.P605722757296022487

`∪[A060461(n+1), A115828(n)]`
-/

namespace A171696.P605722757296022487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115828 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A171696.P605722757296022487

namespace A171696

/-- `∪[A060461(n+1), A115828(n)]` -/
def P605722757296022487.Spec : Prop :=
  ∀ n, (P605722757296022487.a n : ℤ) = A171696 (n + 1)

end A171696

/-! ## A171696.P12218731892754888506

`comp[A024699(n+1)]`
-/

namespace A171696.P12218731892754888506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024699 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A171696.P12218731892754888506

namespace A171696

/-- `comp[A024699(n+1)]` -/
def P12218731892754888506.Spec : Prop :=
  ∀ n, (P12218731892754888506.a n : ℤ) = A171696 (n + 1)

end A171696

/-! ## A171696.P4713127634582484200

`record[A175676(A104278(n+1))]`
-/

namespace A171696.P4713127634582484200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (A104278 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A171696.P4713127634582484200

namespace A171696

/-- `record[A175676(A104278(n+1))]` -/
def P4713127634582484200.Spec : Prop :=
  ∀ n, P4713127634582484200.a n = A171696 (n + 1)

end A171696

/-! ## A171696.P12012770316975424687

`eq[0, A002126(6*n+1)]`
-/

namespace A171696.P12012770316975424687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002126 (6 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171696.P12012770316975424687

namespace A171696

/-- `eq[0, A002126(6*n+1)]` -/
def P12012770316975424687.Spec : Prop :=
  ∀ n, (P12012770316975424687.a n : ℤ) = A171696 (n + 1)

end A171696

/-! ## A171696.P13811137520704433108

`eq[2, A000005(A051699(6*n))]`
-/

namespace A171696.P13811137520704433108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A051699 (6 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171696.P13811137520704433108

namespace A171696

/-- `eq[2, A000005(A051699(6*n))]` -/
def P13811137520704433108.Spec : Prop :=
  ∀ n, (P13811137520704433108.a n : ℤ) = A171696 (n + 1)

end A171696

/-! ## A171696.P15355505289997207944

`eq[1, -A008683(A051700(6*n))]`
-/

namespace A171696.P15355505289997207944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A008683 (A051700 (6 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A171696.P15355505289997207944

namespace A171696

/-- `eq[1, -A008683(A051700(6*n))]` -/
def P15355505289997207944.Spec : Prop :=
  ∀ n, (P15355505289997207944.a n : ℤ) = A171696 (n + 1)

end A171696

/-! ## A171696.P12781753772532186256

`lt[A093074(A004277(3*n)), 2*(n+2)]`
-/

namespace A171696.P12781753772532186256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A004277 (3 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A171696.P12781753772532186256

namespace A171696

/-- `lt[A093074(A004277(3*n)), 2*(n+2)]` -/
def P12781753772532186256.Spec : Prop :=
  ∀ n, (P12781753772532186256.a n : ℤ) = A171696 (n + 1)

end A171696

/-!
# A171697: 1 together with pairs of composites of the form (6n-1, 6n+1).

The programs for A171697, there is no canonical definition to state claims against.
-/

/-! ## A171697.P8753119602741205176

`eq[A040805(A051699(n)), A040808(n)]`
-/

namespace A171697.P8753119602741205176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040805 (A051699 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040808 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171697.P8753119602741205176

/-! ## A171697.P9933815642125116221

`eq[A040495(n), A051699(A051699(n))]`
-/

namespace A171697.P9933815642125116221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040495 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A051699 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171697.P9933815642125116221

/-! ## A171697.P901908801470693982

`eq[A051699(A051699(n)), A087204(n)]`
-/

namespace A171697.P901908801470693982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A051699 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087204 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171697.P901908801470693982

/-! ## A171697.P10472340763736832585

`eq[A051699(A051699(n)), A100051(n)]`
-/

namespace A171697.P10472340763736832585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A051699 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171697.P10472340763736832585

/-! ## A171697.P16535843547553824076

`eq[A040201(n)², A051699(A051699(n))]`
-/

namespace A171697.P16535843547553824076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040201 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A051699 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171697.P16535843547553824076

/-! ## A171697.P2258059331316058857

`eq[A051699(A051699(n))+1, A010191(n)]`
-/

namespace A171697.P2258059331316058857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A051699 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010191 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171697.P2258059331316058857

/-! ## A171697.P5265490746682158204

`eq[A051699(A051699(n))+1, A040397(n)]`
-/

namespace A171697.P5265490746682158204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A051699 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040397 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171697.P5265490746682158204

/-! ## A171697.P16719049898718650138

`eq[A051699(A051699(n))+1, A040837(n)]`
-/

namespace A171697.P16719049898718650138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 (A051699 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040837 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171697.P16719049898718650138

/-! ## A171697.P7030147999696084943

`eq[2*A051699(A051699(n)), A040527(n)]`
-/

namespace A171697.P7030147999696084943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051699 (A051699 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A171697.P7030147999696084943

/-!
# A171699: Square array of number of distinct m X n (0,1) matrices after iterated double sorting, read by antidiagonals.

The programs for A171699, there is no canonical definition to state claims against.
-/

/-! ## A171699.P13305085615231277960

`A206551(A028657(n))`
-/

namespace A171699.P13305085615231277960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206551 (A028657 n).toNat

end

end A171699.P13305085615231277960

/-! ## A171699.P18014395642773680515

`A055570(A327913(n))`
-/

namespace A171699.P18014395642773680515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A327913 n).toNat

end

end A171699.P18014395642773680515

/-! ## A171699.P8024309725451703114

`A331125(A173075(n))`
-/

namespace A171699.P8024309725451703114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331125 (A173075 n).toNat

end

end A171699.P8024309725451703114

/-! ## A171699.P7227420015545601400

`A055571(A028657(n)+1)`
-/

namespace A171699.P7227420015545601400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (A028657 n + 1).toNat

end

end A171699.P7227420015545601400

/-! ## A171699.P13909921214748770443

`A055571(A327913(n)+1)`
-/

namespace A171699.P13909921214748770443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (A327913 n + 1).toNat

end

end A171699.P13909921214748770443

