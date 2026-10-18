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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
# A174500: Continued fraction expansion for exp( Sum_{n>=1} 1/(n*A003500(n)) ), where A003500(n) = (2+sqrt(3))^n + (2-sqrt(3))^n.

The programs for A174500, the canonical program `A174500.P1295292663938239080` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174500 has offset 1).

The definition of A174500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174500.P1295292663938239080

`5*a(n-2)-5*a(n-4)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=1, a(3)=12, a(4)=1, a(5)=50`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174500

/-- `5*a(n-2)-5*a(n-4)+a(n-6)` -/
def P1295292663938239080.Spec : Prop :=
  ∀ n, P1295292663938239080.a n = A174500 (n + 1)

theorem P1295292663938239080.correct : P1295292663938239080.Spec := by
  intro n
  simp only [A174500, Nat.add_sub_cancel]

end A174500

/-! ## A174500.P795031229929357581

`∑[A162959(n+1)]^(n%2)`
-/

namespace A174500.P795031229929357581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n % 2)

end

end A174500.P795031229929357581

namespace A174500

/-- `∑[A162959(n+1)]^(n%2)` -/
def P795031229929357581.Spec : Prop :=
  ∀ n, P795031229929357581.a n = A174500 (n + 1)

end A174500

/-! ## A174500.P5624133936270889452

`xor(a(n-1), A016064(ceil(n/2)))` with `a(0)=1`
-/

namespace A174500.P5624133936270889452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (a (n - 1)) (A016064 ⌈(n : ℚ) / 2⌉.toNat)

end

end A174500.P5624133936270889452

namespace A174500

/-- `xor(a(n-1), A016064(ceil(n/2)))` -/
def P5624133936270889452.Spec : Prop :=
  ∀ n, P5624133936270889452.a n = A174500 (n + 1)

end A174500

/-! ## A174500.P14693601306122435078

`gcd(∑[A162959(n+1)], A056594(n))`
-/

namespace A174500.P14693601306122435078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A056594 n)

end

end A174500.P14693601306122435078

namespace A174500

/-- `gcd(∑[A162959(n+1)], A056594(n))` -/
def P14693601306122435078.Spec : Prop :=
  ∀ n, (P14693601306122435078.a n : ℤ) = A174500 (n + 1)

end A174500

/-! ## A174500.P12797100523922788203

`∑[A162959(n+1)]^Δ[A004526(n)]`
-/

namespace A174500.P12797100523922788203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

end

end A174500.P12797100523922788203

namespace A174500

/-- `∑[A162959(n+1)]^Δ[A004526(n)]` -/
def P12797100523922788203.Spec : Prop :=
  ∀ n, P12797100523922788203.a n = (A174500 (n + 1) : ℚ)

end A174500

/-! ## A174500.P11220797447175140205

`A000034(n)*A092184(A152271(n))`
-/

namespace A174500.P11220797447175140205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A092184 (A152271 n).toNat

end

end A174500.P11220797447175140205

namespace A174500

/-- `A000034(n)*A092184(A152271(n))` -/
def P11220797447175140205.Spec : Prop :=
  ∀ n, P11220797447175140205.a n = A174500 (n + 1)

end A174500

/-! ## A174500.P13633574359995471168

`Δ[A001834(A004526(n))-A028242(n)]`
-/

namespace A174500.P13633574359995471168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001834 (A004526 n).toNat - A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174500.P13633574359995471168

namespace A174500

/-- `Δ[A001834(A004526(n))-A028242(n)]` -/
def P13633574359995471168.Spec : Prop :=
  ∀ n, P13633574359995471168.a n = A174500 (n + 1)

end A174500

/-! ## A174500.P3983870951155715317

`Δ[A002531(A109613(n))-A028242(n)]`
-/

namespace A174500.P3983870951155715317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002531 (A109613 n).toNat - A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174500.P3983870951155715317

namespace A174500

/-- `Δ[A002531(A109613(n))-A028242(n)]` -/
def P3983870951155715317.Spec : Prop :=
  ∀ n, P3983870951155715317.a n = A174500 (n + 1)

end A174500

/-! ## A174500.P11138792486560124290

`Δ[A032766(n)]*A092184(A152271(n))`
-/

namespace A174500.P11138792486560124290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A092184 (A152271 n).toNat

end

end A174500.P11138792486560124290

namespace A174500

/-- `Δ[A032766(n)]*A092184(A152271(n))` -/
def P11138792486560124290.Spec : Prop :=
  ∀ n, P11138792486560124290.a n = A174500 (n + 1)

end A174500

/-!
# A174501: Continued fraction expansion for exp( Sum_{n>=1} 1/(n*A003499(n)) ), where A003499(n) = (3+sqrt(8))^n + (3-sqrt(8))^n.

The programs for A174501, the canonical program `A174501.P12762152963542118310` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174501 has offset 1).

The definition of A174501 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174501.P12762152963542118310

`7*a(n-2)-7*a(n-4)+a(n-6)` with `a(0)=1, a(1)=4, a(2)=1, a(3)=32, a(4)=1, a(5)=196`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174501

/-- `7*a(n-2)-7*a(n-4)+a(n-6)` -/
def P12762152963542118310.Spec : Prop :=
  ∀ n, P12762152963542118310.a n = A174501 (n + 1)

theorem P12762152963542118310.correct : P12762152963542118310.Spec := by
  intro n
  simp only [A174501, Nat.add_sub_cancel]

end A174501

/-! ## A174501.P10884386637119145088

`A129744(n+1)^(n%2)`
-/

namespace A174501.P10884386637119145088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129744 (n + 1) ^ (n % 2)

end

end A174501.P10884386637119145088

namespace A174501

/-- `A129744(n+1)^(n%2)` -/
def P10884386637119145088.Spec : Prop :=
  ∀ n, P10884386637119145088.a n = A174501 (n + 1)

end A174501

/-! ## A174501.P13983970283419357151

`gcd(A056594(n), A129744(n+1))`
-/

namespace A174501.P13983970283419357151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056594 n) (A129744 (n + 1))

end

end A174501.P13983970283419357151

namespace A174501

/-- `gcd(A056594(n), A129744(n+1))` -/
def P13983970283419357151.Spec : Prop :=
  ∀ n, (P13983970283419357151.a n : ℤ) = A174501 (n + 1)

end A174501

/-! ## A174501.P17366435366988818829

`A221073(A124625(n)+A093178(n))`
-/

namespace A174501.P17366435366988818829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221073 (A124625 n + A093178 n).toNat

end

end A174501.P17366435366988818829

namespace A174501

/-- `A221073(A124625(n)+A093178(n))` -/
def P17366435366988818829.Spec : Prop :=
  ∀ n, P17366435366988818829.a n = A174501 (n + 1)

end A174501

/-! ## A174501.P5542433839204049577

`A221073(A124625(n)+A109613(n))`
-/

namespace A174501.P5542433839204049577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221073 (A124625 n + A109613 n).toNat

end

end A174501.P5542433839204049577

namespace A174501

/-- `A221073(A124625(n)+A109613(n))` -/
def P5542433839204049577.Spec : Prop :=
  ∀ n, P5542433839204049577.a n = A174501 (n + 1)

end A174501

/-! ## A174501.P12252023075624901002

`(A099425(n+1)-2)^A082519(A082519(n+3)+2)`
-/

namespace A174501.P12252023075624901002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099425 (n + 1) - 2 : ℚ) ^ (A082519 (A082519 (n + 3) + 2).toNat : ℤ)

end

end A174501.P12252023075624901002

namespace A174501

/-- `(A099425(n+1)-2)^A082519(A082519(n+3)+2)` -/
def P12252023075624901002.Spec : Prop :=
  ∀ n, P12252023075624901002.a n = (A174501 (n + 1) : ℚ)

end A174501

/-! ## A174501.P15768477470701236313

`A221073(2*A028242(n)+n)`
-/

namespace A174501.P15768477470701236313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221073 (2 * A028242 n + (n : ℤ)).toNat

end

end A174501.P15768477470701236313

namespace A174501

/-- `A221073(2*A028242(n)+n)` -/
def P15768477470701236313.Spec : Prop :=
  ∀ n, P15768477470701236313.a n = A174501 (n + 1)

end A174501

/-! ## A174501.P7912350092950306200

`A221073(A028242(n)+A028242(n)+n)`
-/

namespace A174501.P7912350092950306200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221073 (A028242 n + (A028242 n + (n : ℤ))).toNat

end

end A174501.P7912350092950306200

namespace A174501

/-- `A221073(A028242(n)+A028242(n)+n)` -/
def P7912350092950306200.Spec : Prop :=
  ∀ n, P7912350092950306200.a n = A174501 (n + 1)

end A174501

/-! ## A174501.P11413643870349447059

`A221073(lcm(2, 1-n)+n)`
-/

namespace A174501.P11413643870349447059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221073 (Int.lcm 2 (1 - (n : ℤ)) + n)

end

end A174501.P11413643870349447059

namespace A174501

/-- `A221073(lcm(2, 1-n)+n)` -/
def P11413643870349447059.Spec : Prop :=
  ∀ n, P11413643870349447059.a n = A174501 (n + 1)

end A174501

/-! ## A174501.P4152245889925838351

`(A002203(n+1)-2)^A035363(A035363(A087242(n+1)))`
-/

namespace A174501.P4152245889925838351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 (n + 1) - 2 : ℚ) ^ (A035363 (A035363 (A087242 (n + 1)).toNat).toNat : ℤ)

end

end A174501.P4152245889925838351

namespace A174501

/-- `(A002203(n+1)-2)^A035363(A035363(A087242(n+1)))` -/
def P4152245889925838351.Spec : Prop :=
  ∀ n, P4152245889925838351.a n = (A174501 (n + 1) : ℚ)

end A174501

/-! ## A174501.P8400540095919148695

`(A002203(n+1)-2)^A035363(A087242(n+2))`
-/

namespace A174501.P8400540095919148695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002203 (n + 1) - 2 : ℚ) ^ (A035363 (A087242 (n + 2)).toNat : ℤ)

end

end A174501.P8400540095919148695

namespace A174501

/-- `(A002203(n+1)-2)^A035363(A087242(n+2))` -/
def P8400540095919148695.Spec : Prop :=
  ∀ n, P8400540095919148695.a n = (A174501 (n + 1) : ℚ)

end A174501

/-!
# A174502: Continued fraction expansion for exp( Sum_{n>=1} 1/(n*A086903(n)) ), where A086903(n) = (4+sqrt(15))^n + (4-sqrt(15))^n.

The programs for A174502, the canonical program `A174502.P15741957104404457730` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174502 has offset 0).

The definition of A174502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174502.P15741957104404457730

`9*a(n-2)-9*a(n-4)+a(n-6)` with `a(0)=1, a(1)=6, a(2)=1, a(3)=60, a(4)=1, a(5)=486`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174502

/-- `9*a(n-2)-9*a(n-4)+a(n-6)` -/
def P15741957104404457730.Spec : Prop :=
  ∀ n, P15741957104404457730.a n = A174502 n

theorem P15741957104404457730.correct : P15741957104404457730.Spec := by
  intro n
  simp only [A174502]

end A174502

/-! ## A174502.P1085513457976533485

`Δ[A057080(A004526(n))-A028242(n)]`
-/

namespace A174502.P1085513457976533485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057080 (A004526 n).toNat - A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174502.P1085513457976533485

namespace A174502

/-- `Δ[A057080(A004526(n))-A028242(n)]` -/
def P1085513457976533485.Spec : Prop :=
  ∀ n, P1085513457976533485.a n = A174502 n

end A174502

/-! ## A174502.P6332528507407649627

`A070997(n)%A041022(n)*A000034(n)`
-/

namespace A174502.P6332528507407649627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070997 n) (A041022 n) * A000034 n

end

end A174502.P6332528507407649627

namespace A174502

/-- `A070997(n)%A041022(n)*A000034(n)` -/
def P6332528507407649627.Spec : Prop :=
  ∀ n, P6332528507407649627.a n = A174502 n

end A174502

/-! ## A174502.P16788730274581881827

`A305438(∑[A199338(n+1)])`
-/

namespace A174502.P16788730274581881827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305438 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A174502.P16788730274581881827

namespace A174502

/-- `A305438(∑[A199338(n+1)])` -/
def P16788730274581881827.Spec : Prop :=
  ∀ n, P16788730274581881827.a n = A174502 n

end A174502

/-!
# A174503: Continued fraction expansion for exp( Sum_{n>=1} 1/(n*A087799(n)) ), where A087799(n) = (5+sqrt(24))^n + (5-sqrt(24))^n.

The programs for A174503, the canonical program `A174503.P4096718648432343968` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174503 has offset 0).

The definition of A174503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174503.P4096718648432343968

`11*a(n-2)-11*a(n-4)+a(n-6)` with `a(0)=1, a(1)=8, a(2)=1, a(3)=96, a(4)=1, a(5)=968`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174503

/-- `11*a(n-2)-11*a(n-4)+a(n-6)` -/
def P4096718648432343968.Spec : Prop :=
  ∀ n, P4096718648432343968.a n = A174503 n

theorem P4096718648432343968.correct : P4096718648432343968.Spec := by
  intro n
  simp only [A174503]

end A174503

/-! ## A174503.P14918021630803358038

`record[A221074(n)]^(n%2)`
-/

namespace A174503.P14918021630803358038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221074 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ (n % 2)

end

end A174503.P14918021630803358038

namespace A174503

/-- `record[A221074(n)]^(n%2)` -/
def P14918021630803358038.Spec : Prop :=
  ∀ n, P14918021630803358038.a n = A174503 n

end A174503

/-! ## A174503.P6984028131546390523

`gcd(∑[A216073(n+1)], A056594(n))`
-/

namespace A174503.P6984028131546390523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216073 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A056594 n)

end

end A174503.P6984028131546390523

namespace A174503

/-- `gcd(∑[A216073(n+1)], A056594(n))` -/
def P6984028131546390523.Spec : Prop :=
  ∀ n, (P6984028131546390523.a n : ℤ) = A174503 n

end A174503

/-! ## A174503.P991234565421397600

`and(∑[A216073(n+1)], A033999(n))`
-/

namespace A174503.P991234565421397600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A033999 n)

end

end A174503.P991234565421397600

namespace A174503

/-- `and(∑[A216073(n+1)], A033999(n))` -/
def P991234565421397600.Spec : Prop :=
  ∀ n, P991234565421397600.a n = A174503 n

end A174503

/-! ## A174503.P7101021950907977475

`∑[A216073(n+1)]^∑[A062157(n)]`
-/

namespace A174503.P7101021950907977475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ)

end

end A174503.P7101021950907977475

namespace A174503

/-- `∑[A216073(n+1)]^∑[A062157(n)]` -/
def P7101021950907977475.Spec : Prop :=
  ∀ n, P7101021950907977475.a n = (A174503 n : ℚ)

end A174503

/-! ## A174503.P9925304832635298001

`∑[A216073(n+1)]^A215036(n+1)`
-/

namespace A174503.P9925304832635298001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216073 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A215036 (n + 1) : ℤ)

end

end A174503.P9925304832635298001

namespace A174503

/-- `∑[A216073(n+1)]^A215036(n+1)` -/
def P9925304832635298001.Spec : Prop :=
  ∀ n, P9925304832635298001.a n = (A174503 n : ℚ)

end A174503

/-! ## A174503.P3982597731952081423

`and(∑[A216073(n+1)], A009001(2*n))`
-/

namespace A174503.P3982597731952081423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A009001 (2 * n))

end

end A174503.P3982597731952081423

namespace A174503

/-- `and(∑[A216073(n+1)], A009001(2*n))` -/
def P3982597731952081423.Spec : Prop :=
  ∀ n, P3982597731952081423.a n = A174503 n

end A174503

/-! ## A174503.P17809762133650875594

`A221074(xor(2, A014601(n)))`
-/

namespace A174503.P17809762133650875594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221074 (Int.xor 2 (A014601 n)).toNat

end

end A174503.P17809762133650875594

namespace A174503

/-- `A221074(xor(2, A014601(n)))` -/
def P17809762133650875594.Spec : Prop :=
  ∀ n, P17809762133650875594.a n = A174503 n

end A174503

/-! ## A174503.P15461384665349457447

`A221074(2*A028242(n)+n)`
-/

namespace A174503.P15461384665349457447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221074 (2 * A028242 n + (n : ℤ)).toNat

end

end A174503.P15461384665349457447

namespace A174503

/-- `A221074(2*A028242(n)+n)` -/
def P15461384665349457447.Spec : Prop :=
  ∀ n, P15461384665349457447.a n = A174503 n

end A174503

/-! ## A174503.P16360618316867893756

`A221074(A028242(n)+A028242(n)+n)`
-/

namespace A174503.P16360618316867893756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221074 (A028242 n + (A028242 n + (n : ℤ))).toNat

end

end A174503.P16360618316867893756

namespace A174503

/-- `A221074(A028242(n)+A028242(n)+n)` -/
def P16360618316867893756.Spec : Prop :=
  ∀ n, P16360618316867893756.a n = A174503 n

end A174503

/-!
# A174504: Continued fraction expansion for exp( Sum_{n>=1} 1/(n*A002203(n)) ), where A002203(n) = (1+sqrt(2))^n + (1-sqrt(2))^n.

The programs for A174504, the canonical program `A174504.P98403034331570939` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174504 has offset 0).

The definition of A174504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174504.P98403034331570939

`7*a(n-3)-7*a(n-6)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=1, a(4)=13, a(5)=33, a(6)=1, a(7)=81, a(8)=197`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174504

/-- `7*a(n-3)-7*a(n-6)+a(n-9)` -/
def P98403034331570939.Spec : Prop :=
  ∀ n, P98403034331570939.a n = A174504 n

theorem P98403034331570939.correct : P98403034331570939.Spec := by
  intro n
  simp only [A174504]

end A174504

/-! ## A174504.P15773400015149561588

`A100227(A152271(A006369(n)))`
-/

namespace A174504.P15773400015149561588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 (A152271 (A006369 n).toNat).toNat

end

end A174504.P15773400015149561588

namespace A174504

/-- `A100227(A152271(A006369(n)))` -/
def P15773400015149561588.Spec : Prop :=
  ∀ n, P15773400015149561588.a n = A174504 n

end A174504

/-! ## A174504.P14631840643023382534

`A100227(Δ[A000217(A004523(n))])`
-/

namespace A174504.P14631840643023382534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 (f1 (n + 1) - f1 n).toNat

end

end A174504.P14631840643023382534

namespace A174504

/-- `A100227(Δ[A000217(A004523(n))])` -/
def P14631840643023382534.Spec : Prop :=
  ∀ n, P14631840643023382534.a n = A174504 n

end A174504

/-! ## A174504.P11399288811519963531

`A100227(A006369(n)-A004523(n))`
-/

namespace A174504.P11399288811519963531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 (A006369 n - A004523 n).toNat

end

end A174504.P11399288811519963531

namespace A174504

/-- `A100227(A006369(n)-A004523(n))` -/
def P11399288811519963531.Spec : Prop :=
  ∀ n, P11399288811519963531.a n = A174504 n

end A174504

/-! ## A174504.P6578779148808113739

`A100227(Δ[A004396(n+1)]*A004396(n+1))`
-/

namespace A174504.P6578779148808113739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 ((f1 (n + 1) - f1 n) * A004396 (n + 1)).toNat

end

end A174504.P6578779148808113739

namespace A174504

/-- `A100227(Δ[A004396(n+1)]*A004396(n+1))` -/
def P6578779148808113739.Spec : Prop :=
  ∀ n, P6578779148808113739.a n = A174504 n

end A174504

/-! ## A174504.P11793191374870718926

`A100227(gcd(A008620(2*n), A008620(A008620(12*n))))`
-/

namespace A174504.P11793191374870718926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100227 (Int.gcd (A008620 (2 * n)) (A008620 (A008620 (12 * n)).toNat))

end

end A174504.P11793191374870718926

namespace A174504

/-- `A100227(gcd(A008620(2*n), A008620(A008620(12*n))))` -/
def P11793191374870718926.Spec : Prop :=
  ∀ n, P11793191374870718926.a n = A174504 n

end A174504

/-!
# A174505: Continued fraction expansion for exp( Sum_{n>=1} 1/(n*Lucas(n)) ), where Lucas(n) = A000032(n) = ((1+sqrt(5))/2)^n + ((1-sqrt(5))/2)^n.

The programs for A174505, the canonical program `A174505.P16395804017395574250` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174505 has offset 0).

The definition of A174505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174505.P16395804017395574250

`4*a(n-3)-4*a(n-6)+a(n-9)` with `a(0)=3, a(1)=1, a(2)=3, a(3)=6, a(4)=1, a(5)=10, a(6)=17, a(7)=1, a(8)=28, a(9)=46`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174505

/-- `4*a(n-3)-4*a(n-6)+a(n-9)` -/
def P16395804017395574250.Spec : Prop :=
  ∀ n, P16395804017395574250.a n = A174505 n

theorem P16395804017395574250.correct : P16395804017395574250.Spec := by
  intro n
  simp only [A174505]

end A174505

/-! ## A174505.P5966652953532882567

`A057428(n)+A000032(A117909(n+1))`
-/

namespace A174505.P5966652953532882567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A000032 (A117909 (n + 1)).toNat

end

end A174505.P5966652953532882567

namespace A174505

/-- `A057428(n)+A000032(A117909(n+1))` -/
def P5966652953532882567.Spec : Prop :=
  ∀ n, P5966652953532882567.a n = A174505 n

end A174505

/-! ## A174505.P13014566573569629299

`A000032(A117909(n+1))-A057427(n)`
-/

namespace A174505.P13014566573569629299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A117909 (n + 1)).toNat - A057427 n

end

end A174505.P13014566573569629299

namespace A174505

/-- `A000032(A117909(n+1))-A057427(n)` -/
def P13014566573569629299.Spec : Prop :=
  ∀ n, P13014566573569629299.a n = A174505 n

end A174505

/-! ## A174505.P9835877601324782763

`A000032(A117909(n+1))-char[A052938(n)]`
-/

namespace A174505.P9835877601324782763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A117909 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A174505.P9835877601324782763

namespace A174505

/-- `A000032(A117909(n+1))-char[A052938(n)]` -/
def P9835877601324782763.Spec : Prop :=
  ∀ n, P9835877601324782763.a n = A174505 n

end A174505

/-!
# A174506: Continued fraction expansion for exp( Sum_{n>=1} 1/(n*A014448(n)) ), where A014448(n) = (2+sqrt(5))^n + (2-sqrt(5))^n.

The programs for A174506, the canonical program `A174506.P1103548392494020403` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174506 has offset 0).

The definition of A174506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174506.P1103548392494020403

`A138123(A347838(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A174506

/-- `A138123(A347838(n+1))` -/
def P1103548392494020403.Spec : Prop :=
  ∀ n, P1103548392494020403.a n = A174506 n

theorem P1103548392494020403.correct : P1103548392494020403.Spec := by
  intro n
  simp only [A174506]

end A174506

/-! ## A174506.P7839599024648545347

`A100233(1-A087507(n)+n)`
-/

namespace A174506.P7839599024648545347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100233 (1 - A087507 n + (n : ℤ)).toNat

end

end A174506.P7839599024648545347

namespace A174506

/-- `A100233(1-A087507(n)+n)` -/
def P7839599024648545347.Spec : Prop :=
  ∀ n, P7839599024648545347.a n = A174506 n

end A174506

/-! ## A174506.P11893534893695549516

`A100233(1-(A087507(n)-n))`
-/

namespace A174506.P11893534893695549516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100233 (1 - (A087507 n - (n : ℤ))).toNat

end

end A174506.P11893534893695549516

namespace A174506

/-- `A100233(1-(A087507(n)-n))` -/
def P11893534893695549516.Spec : Prop :=
  ∀ n, P11893534893695549516.a n = A174506 n

end A174506

/-! ## A174506.P10851503371104465520

`A100233(Δ[A000124(A004523(n))])`
-/

namespace A174506.P10851503371104465520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A004523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100233 (f1 (n + 1) - f1 n).toNat

end

end A174506.P10851503371104465520

namespace A174506

/-- `A100233(Δ[A000124(A004523(n))])` -/
def P10851503371104465520.Spec : Prop :=
  ∀ n, P10851503371104465520.a n = A174506 n

end A174506

/-! ## A174506.P18049854962775806620

`A100233(Δ[A000217(A004523(n))])`
-/

namespace A174506.P18049854962775806620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100233 (f1 (n + 1) - f1 n).toNat

end

end A174506.P18049854962775806620

namespace A174506

/-- `A100233(Δ[A000217(A004523(n))])` -/
def P18049854962775806620.Spec : Prop :=
  ∀ n, P18049854962775806620.a n = A174506 n

end A174506

/-! ## A174506.P17632612108635026291

`A100233(A006369(n)-A004523(n))`
-/

namespace A174506.P17632612108635026291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100233 (A006369 n - A004523 n).toNat

end

end A174506.P17632612108635026291

namespace A174506

/-- `A100233(A006369(n)-A004523(n))` -/
def P17632612108635026291.Spec : Prop :=
  ∀ n, P17632612108635026291.a n = A174506 n

end A174506

/-! ## A174506.P1726404340064150402

`A100233(A051176(n)-A002264(n))`
-/

namespace A174506.P1726404340064150402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100233 (A051176 n - A002264 n).toNat

end

end A174506.P1726404340064150402

namespace A174506

/-- `A100233(A051176(n)-A002264(n))` -/
def P1726404340064150402.Spec : Prop :=
  ∀ n, P1726404340064150402.a n = A174506 n

end A174506

/-!
# A174507: Continued fraction expansion for exp( Sum_{n>=1} 1/(n*A085447(n)) ), where A085447(n) = (3+sqrt(10))^n + (3-sqrt(10))^n.

The programs for A174507, there is no canonical definition to state claims against.
-/

/-! ## A174507.P9735433890173321330

`A211676(A307716(n+1))`
-/

namespace A174507.P9735433890173321330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211676 (A307716 (n + 1)).toNat

end

end A174507.P9735433890173321330

/-!
# A174508: Continued fraction expansion for exp( Sum_{n>=1} 1/(n*A086594(n)) ), where A086594(n) = (4+sqrt(17))^n + (4-sqrt(17))^n.

The programs for A174508, there is no canonical definition to state claims against.
-/

/-! ## A174508.P9492193252219926291

`A033149(A036886(n+1))-A018001(n)`
-/

namespace A174508.P9492193252219926291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033149 (A036886 (n + 1)).toNat - A018001 n

end

end A174508.P9492193252219926291

/-!
# A174509: Continued fraction expansion for exp( Sum_{n>=1} 1/(n*A086927(n)) ), where A086927(n) = (5+sqrt(26))^n + (5-sqrt(26))^n.

The programs for A174509, there is no canonical definition to state claims against.
-/

/-! ## A174509.P11970212056125818704

`A007092(A174507(n)+1)-1`
-/

namespace A174509.P11970212056125818704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A174507 n + 1).toNat - 1

end

end A174509.P11970212056125818704

/-!
# A174510: Continued fraction expansion for exp( Sum_{n>=1} 1/(n*A080040(n)) ), where A080040(n) = (1+sqrt(3))^n + (1-sqrt(3))^n.

The programs for A174510, the canonical program `A174510.P13026545790460382958` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174510 has offset 0).

The definition of A174510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174510.P13026545790460382958

`5*a(n-3)-5*a(n-6)+a(n-9)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=1, a(4)=9, a(5)=13, a(6)=1, a(7)=37, a(8)=51`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174510

/-- `5*a(n-3)-5*a(n-6)+a(n-9)` -/
def P13026545790460382958.Spec : Prop :=
  ∀ n, P13026545790460382958.a n = A174510 n

theorem P13026545790460382958.correct : P13026545790460382958.Spec := by
  intro n
  simp only [A174510]

end A174510

/-!
# A174511: The number of isomorphism classes of subgroups of the symmetric group S_n.

The programs for A174511, there is no canonical definition to state claims against.
-/

/-! ## A174511.P4576237389346936285

`∑[A212319(n+1)]`
-/

namespace A174511.P4576237389346936285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174511.P4576237389346936285

/-! ## A174511.P16124690696048897275

`A073189(A154654(n))+A004275(A065955(n+1))`
-/

namespace A174511.P16124690696048897275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 (A154654 n).toNat + A004275 (A065955 (n + 1)).toNat

end

end A174511.P16124690696048897275

/-!
# A174512: G.f. satisfies: A(x) = A(x^2)^2 + x*A(x^2)^3.

The programs for A174512, there is no canonical definition to state claims against.
-/

/-! ## A174512.P13424179362353997375

`A144064(lt[A144064(n+3), A096926(n+1)%4])`
-/

namespace A174512.P13424179362353997375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096926 (n + 1)) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A174512.P13424179362353997375

/-!
# A174514: Partial sums of A048995.

The programs for A174514, there is no canonical definition to state claims against.
-/

/-! ## A174514.P9709917014772414398

`∑[A048995(n+1)]`
-/

namespace A174514.P9709917014772414398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048995 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174514.P9709917014772414398

/-! ## A174514.P2018899711660485147

`∑[A005114(n+1)-1]`
-/

namespace A174514.P2018899711660485147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174514.P2018899711660485147

/-! ## A174514.P1924912648192486178

`∑[record[A048995(A065648(n))]]`
-/

namespace A174514.P1924912648192486178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048995 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174514.P1924912648192486178

/-! ## A174514.P9225178131675885743

`∑[record[A048995(A117910(n))]]`
-/

namespace A174514.P9225178131675885743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048995 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174514.P9225178131675885743

/-! ## A174514.P7033582289895726904

`∑[record[A048995(A133310(n))]]`
-/

namespace A174514.P7033582289895726904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048995 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174514.P7033582289895726904

/-! ## A174514.P11848670460373776698

`∑[record[A048995(A263111(n))]]`
-/

namespace A174514.P11848670460373776698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048995 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174514.P11848670460373776698

/-! ## A174514.P16902944075970010489

`A001478(n+1)+∑[A005114(n+1)]`
-/

namespace A174514.P16902944075970010489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174514.P16902944075970010489

/-! ## A174514.P10377939457342399459

`A001489(n+1)+∑[A005114(n+1)]`
-/

namespace A174514.P10377939457342399459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174514.P10377939457342399459

/-! ## A174514.P15136495159375747183

`a(n-1)+A008683(2*A000040(n+1))*A048995(n+1)` with `a(0)=1`
-/

namespace A174514.P15136495159375747183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A008683 (2 * A000040 (n + 1)).toNat * A048995 (n + 1)

end

end A174514.P15136495159375747183

/-! ## A174514.P1397823938928479610

`∑[A320485(A115853(n+1))+A005114(n+1)]`
-/

namespace A174514.P1397823938928479610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 (A115853 (n + 1)).toNat + A005114 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174514.P1397823938928479610

/-!
# A174515: Expansion of g.f. exp( Sum_{n>=1} (2^n+3^n)^2*x^n/n ).

The programs for A174515, the canonical program `A174515.P5868489995045131620` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174515 has offset 0).

The definition of A174515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174515.P5868489995045131620

`A019443(n)+6*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A174515

/-- `A019443(n)+6*a(n-1)` -/
def P5868489995045131620.Spec : Prop :=
  ∀ n, P5868489995045131620.a n = A174515 n

theorem P5868489995045131620.correct : P5868489995045131620.Spec := by
  intro n
  simp only [A174515]

end A174515

/-!
# A174516: Partial sums of A002896.

The programs for A174516, there is no canonical definition to state claims against.
-/

/-! ## A174516.P5714017425918283606

`∑[A002896(n)]`
-/

namespace A174516.P5714017425918283606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174516.P5714017425918283606

/-! ## A174516.P5487882339640637371

`∑[C(2*n, n)*A002893(n)]`
-/

namespace A174516.P5487882339640637371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A002893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174516.P5487882339640637371

/-! ## A174516.P16228349204853510517

`∑[A000984(n)*A002893(n)]`
-/

namespace A174516.P16228349204853510517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A002893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174516.P16228349204853510517

/-! ## A174516.P2962460755113826172

`∑[sqrt(A002894(n))*A002893(n)]`
-/

namespace A174516.P2962460755113826172
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002894 n : ℝ) * (A002893 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174516.P2962460755113826172

/-! ## A174516.P5404715370354958516

`∑[record[A081668(n)]*A002893(n)]`
-/

namespace A174516.P5404715370354958516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) * A002893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174516.P5404715370354958516

/-! ## A174516.P14345571494094577325

`∑[A002893(n)*A081668(2*n)]`
-/

namespace A174516.P14345571494094577325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n * A081668 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174516.P14345571494094577325

/-! ## A174516.P13172347358981775922

`∑[A002893(n)*A007318(A046092(n))]`
-/

namespace A174516.P13172347358981775922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n * A007318 (A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174516.P13172347358981775922

/-! ## A174516.P14244354842185129895

`a(n-1)+A001405(A005843(n))*A002893(n)` with `a(0)=1`
-/

namespace A174516.P14244354842185129895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001405 (A005843 n).toNat * A002893 n

end

end A174516.P14244354842185129895

/-!
# A174517: Partial sums of A077482.

The programs for A174517, there is no canonical definition to state claims against.
-/

/-! ## A174517.P13338549528088573988

`∑[A077482(n+7)]`
-/

namespace A174517.P13338549528088573988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077482 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174517.P13338549528088573988

/-! ## A174517.P1279908227541697647

`A077482(n+7)+a(A023443(n))` with `a(0)=1`
-/

namespace A174517.P1279908227541697647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A077482 (n + 7) + a (A023443 n).toNat

end

end A174517.P1279908227541697647

/-! ## A174517.P1343838547541379567

`a(n-1)+A077482(n+7)+A034567(n+1)` with `a(0)=1`
-/

namespace A174517.P1343838547541379567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A077482 (n + 7) + A034567 (n + 1))

end

end A174517.P1343838547541379567

/-! ## A174517.P6806269828289446407

`a(n-1)+A332447(A168625(n))+A077482(n+7)` with `a(0)=1`
-/

namespace A174517.P6806269828289446407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A332447 (A168625 n).toNat + A077482 (n + 7))

end

end A174517.P6806269828289446407

/-!
# A174518: Sums of two consecutive primes and composite numbers in-between.

The programs for A174518, there is no canonical definition to state claims against.
-/

/-! ## A174518.P7557133266017401610

`A286901(p?[Δ[n²]])`
-/

namespace A174518.P7557133266017401610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286901 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A174518.P7557133266017401610

/-! ## A174518.P9021594602050365878

`A138383(n+1)+p?[xor(1, n)+1]`
-/

namespace A174518.P9021594602050365878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138383 (n + 1) + (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A174518.P9021594602050365878

/-! ## A174518.P1400025543835604575

`p?[2*n+1]+Δ[A008837(n+1)]`
-/

namespace A174518.P1400025543835604575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + (f2 (n + 1) - f2 n)

end

end A174518.P1400025543835604575

/-! ## A174518.P3260427186486066106

`A286900(Δ[A007504(n)])`
-/

namespace A174518.P3260427186486066106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286900 (f1 (n + 1) - f1 n).toNat

end

end A174518.P3260427186486066106

/-! ## A174518.P6297563046772871574

`A286900(A000040(n+1))`
-/

namespace A174518.P6297563046772871574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286900 (A000040 (n + 1)).toNat

end

end A174518.P6297563046772871574

/-! ## A174518.P491477266006200748

`A286901(A065091(n+1))`
-/

namespace A174518.P491477266006200748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286901 (A065091 (n + 1)).toNat

end

end A174518.P491477266006200748

/-! ## A174518.P15992509366356307280

`A286900(A095320(n+1))`
-/

namespace A174518.P15992509366356307280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286900 (A095320 (n + 1)).toNat

end

end A174518.P15992509366356307280

/-! ## A174518.P13409662948681896099

`A286900(A216883(n+1))`
-/

namespace A174518.P13409662948681896099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286900 (A216883 (n + 1)).toNat

end

end A174518.P13409662948681896099

/-! ## A174518.P4862623038466637652

`A286900(A216884(n+1))`
-/

namespace A174518.P4862623038466637652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286900 (A216884 (n + 1)).toNat

end

end A174518.P4862623038466637652

/-! ## A174518.P13055088985960665262

`A286900(A216885(n+1))`
-/

namespace A174518.P13055088985960665262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286900 (A216885 (n + 1)).toNat

end

end A174518.P13055088985960665262

/-!
# A174519: Sum of 3 consecutive primes and of all composite numbers in-between.

The programs for A174519, there is no canonical definition to state claims against.
-/

/-! ## A174519.P17689017918496280557

`A174520(n+1)+A034961(n+1)`
-/

namespace A174519.P17689017918496280557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174520 (n + 1) + A034961 (n + 1)

end

end A174519.P17689017918496280557

/-! ## A174519.P6984435960686808807

`A174518(n+1)+A138383(n+2)`
-/

namespace A174519.P6984435960686808807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174518 (n + 1) + A138383 (n + 2)

end

end A174519.P6984435960686808807

/-! ## A174519.P13374079834236988215

`A144519(n+2)-A008837(n+1)`
-/

namespace A174519.P13374079834236988215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144519 (n + 2) - A008837 (n + 1)

end

end A174519.P13374079834236988215

/-! ## A174519.P1989125108887723013

`A034953(n+3)-A008837(n+1)`
-/

namespace A174519.P1989125108887723013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 3) - A008837 (n + 1)

end

end A174519.P1989125108887723013

/-! ## A174519.P12795291621741249922

`A147846(2*n+5)-A008837(n+1)`
-/

namespace A174519.P12795291621741249922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147846 (2 * n + 5) - A008837 (n + 1)

end

end A174519.P12795291621741249922

/-!
# A174520: Sum of all composite numbers in-between prime numbers p(n) and p(n+2).

The programs for A174520, the canonical program `A174520.P16860900759774181259` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174520 has offset 1).

The definition of A174520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174520.P10398440927845805142

`A054265(n+1)+A054265(n+2)`
-/

namespace A174520.P10398440927845805142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 1) + A054265 (n + 2)

end

end A174520.P10398440927845805142

namespace A174520

/-- `A054265(n+1)+A054265(n+2)` -/
def P10398440927845805142.Spec : Prop :=
  ∀ n, P10398440927845805142.a n = A174520 (n + 1)

end A174520

/-! ## A174520.P3617316099527648996

`A371201(n+2)+A060325(n+2)`
-/

namespace A174520.P3617316099527648996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371201 (n + 2) + A060325 (n + 2)

end

end A174520.P3617316099527648996

namespace A174520

/-- `A371201(n+2)+A060325(n+2)` -/
def P3617316099527648996.Spec : Prop :=
  ∀ n, P3617316099527648996.a n = A174520 (n + 1)

end A174520

/-! ## A174520.P16860900759774181259

`A045717(n+3)-A045717(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A174520

/-- `A045717(n+3)-A045717(n+1)` -/
def P16860900759774181259.Spec : Prop :=
  ∀ n, P16860900759774181259.a n = A174520 (n + 1)

theorem P16860900759774181259.correct : P16860900759774181259.Spec := by
  intro n
  simp only [A174520, Nat.add_sub_cancel]

end A174520

/-! ## A174520.P2234054945605495138

`A079725(n+3)-A079725(n+1)`
-/

namespace A174520.P2234054945605495138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079725 (n + 3) - A079725 (n + 1)

end

end A174520.P2234054945605495138

namespace A174520

/-- `A079725(n+3)-A079725(n+1)` -/
def P2234054945605495138.Spec : Prop :=
  ∀ n, P2234054945605495138.a n = A174520 (n + 1)

end A174520

/-! ## A174520.P5075522424089246890

`A162153(n+1)+Δ[A034953(n+1)]`
-/

namespace A174520.P5075522424089246890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162153 (n + 1) + (f1 (n + 1) - f1 n)

end

end A174520.P5075522424089246890

namespace A174520

/-- `A162153(n+1)+Δ[A034953(n+1)]` -/
def P5075522424089246890.Spec : Prop :=
  ∀ n, P5075522424089246890.a n = A174520 (n + 1)

end A174520

/-! ## A174520.P9791409355651297151

`Δ[A045717(n+1)+A045717(n+2)]`
-/

namespace A174520.P9791409355651297151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045717 (n + 1) + A045717 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174520.P9791409355651297151

namespace A174520

/-- `Δ[A045717(n+1)+A045717(n+2)]` -/
def P9791409355651297151.Spec : Prop :=
  ∀ n, P9791409355651297151.a n = A174520 (n + 1)

theorem P9791409355651297151.correct : P9791409355651297151.Spec := by
  intro n
  simp only [A174520, Nat.add_sub_cancel, A174520.P9791409355651297151.f1, A174520.P9791409355651297151.a, A174520.P16860900759774181259.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A174520

/-! ## A174520.P12230381979049176282

`A060325(n+2)+Δ[A008837(n+2)]`
-/

namespace A174520.P12230381979049176282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060325 (n + 2) + (f1 (n + 1) - f1 n)

end

end A174520.P12230381979049176282

namespace A174520

/-- `A060325(n+2)+Δ[A008837(n+2)]` -/
def P12230381979049176282.Spec : Prop :=
  ∀ n, P12230381979049176282.a n = A174520 (n + 1)

end A174520

/-! ## A174520.P11818185770910118273

`A162153(n+1)+Δ[A000124(A000040(n+1))]`
-/

namespace A174520.P11818185770910118273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162153 (n + 1) + (f1 (n + 1) - f1 n)

end

end A174520.P11818185770910118273

namespace A174520

/-- `A162153(n+1)+Δ[A000124(A000040(n+1))]` -/
def P11818185770910118273.Spec : Prop :=
  ∀ n, P11818185770910118273.a n = A174520 (n + 1)

end A174520

/-! ## A174520.P3366072919950480509

`A008837(n+3)-A001043(n+1)-A008837(n+1)`
-/

namespace A174520.P3366072919950480509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 3) - A001043 (n + 1) - A008837 (n + 1)

end

end A174520.P3366072919950480509

namespace A174520

/-- `A008837(n+3)-A001043(n+1)-A008837(n+1)` -/
def P3366072919950480509.Spec : Prop :=
  ∀ n, P3366072919950480509.a n = A174520 (n + 1)

end A174520

/-! ## A174520.P6557719283522002740

`Δ[∑{p}[A006094(n+1), A101203(#)]]`
-/

namespace A174520.P6557719283522002740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A101203 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174520.P6557719283522002740

namespace A174520

/-- `Δ[∑{p}[A006094(n+1), A101203(#)]]` -/
def P6557719283522002740.Spec : Prop :=
  ∀ n, P6557719283522002740.a n = A174520 (n + 1)

end A174520

/-!
# A174521: Primes that are the sum of all composite numbers in-between prime numbers p(n) and p(n+2).

The programs for A174521, the canonical program `A174521.P15415351291785473139` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174521 has offset 1).

The definition of A174521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174521.P17418938577459693552

`p?[A054265(n+2)+A054265(n+1)]`
-/

namespace A174521.P17418938577459693552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054265 (n + 2) + A054265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174521.P17418938577459693552

namespace A174521

/-- `p?[A054265(n+2)+A054265(n+1)]` -/
def P17418938577459693552.Spec : Prop :=
  ∀ n, P17418938577459693552.a n = A174521 (n + 1)

end A174521

/-! ## A174521.P15415351291785473139

`p?[A045717(n+3)-A045717(n+1)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A174521

/-- `p?[A045717(n+3)-A045717(n+1)]` -/
def P15415351291785473139.Spec : Prop :=
  ∀ n, P15415351291785473139.a n = A174521 (n + 1)

theorem P15415351291785473139.correct : P15415351291785473139.Spec := by
  intro n
  simp only [A174521, Nat.add_sub_cancel]

end A174521

/-! ## A174521.P12767714739960740257

`p?[A008837(n+3)-A001043(n+1)-A008837(n+1)]`
-/

namespace A174521.P12767714739960740257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 3) - A001043 (n + 1) - A008837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174521.P12767714739960740257

namespace A174521

/-- `p?[A008837(n+3)-A001043(n+1)-A008837(n+1)]` -/
def P12767714739960740257.Spec : Prop :=
  ∀ n, P12767714739960740257.a n = A174521 (n + 1)

end A174521

/-! ## A174521.P13777857534545930022

`p?[A034953(n+3)-A008837(n+1)-A034961(n+1)]`
-/

namespace A174521.P13777857534545930022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 3) - A008837 (n + 1) - A034961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174521.P13777857534545930022

namespace A174521

/-- `p?[A034953(n+3)-A008837(n+1)-A034961(n+1)]` -/
def P13777857534545930022.Spec : Prop :=
  ∀ n, P13777857534545930022.a n = A174521 (n + 1)

end A174521

/-! ## A174521.P14975775206618790800

`p?[A008837(n+3)-(A034953(n+1)+A008578(n+3))]`
-/

namespace A174521.P14975775206618790800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008837 (n + 3) - (A034953 (n + 1) + A008578 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174521.P14975775206618790800

namespace A174521

/-- `p?[A008837(n+3)-(A034953(n+1)+A008578(n+3))]` -/
def P14975775206618790800.Spec : Prop :=
  ∀ n, P14975775206618790800.a n = A174521 (n + 1)

end A174521

/-! ## A174521.P11263870811041219081

`p?[A174520(n+1)]`
-/

namespace A174521.P11263870811041219081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A174521.P11263870811041219081

namespace A174521

/-- `p?[A174520(n+1)]` -/
def P11263870811041219081.Spec : Prop :=
  ∀ n, P11263870811041219081.a n = A174521 (n + 1)

end A174521

/-!
# A174522: Expansion of 1/(1 - x - x^4 + x^6).

The programs for A174522, the canonical program `A174522.P10684410669137190289` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174522 has offset 0).

The definition of A174522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174522.P10684410669137190289

`∑[a(n-4)+a(n-5)]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174522

/-- `∑[a(n-4)+a(n-5)]` -/
def P10684410669137190289.Spec : Prop :=
  ∀ n, (P10684410669137190289.a n : ℤ) = A174522 n

theorem P10684410669137190289.correct : P10684410669137190289.Spec := by
  intro n
  simp only [A174522]

end A174522

/-! ## A174522.P606888985135619822

`a(n-4)+a(n-5)+1` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2`
-/

namespace A174522.P606888985135619822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2] fun n a =>
  a (n - 4) + (a (n - 5) + 1)

end

end A174522.P606888985135619822

namespace A174522

/-- `a(n-4)+a(n-5)+1` -/
def P606888985135619822.Spec : Prop :=
  ∀ n, (P606888985135619822.a n : ℤ) = A174522 n

end A174522

/-! ## A174522.P14420148733816296937

`∑[A017827(n)]`
-/

namespace A174522.P14420148733816296937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017827 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174522.P14420148733816296937

namespace A174522

/-- `∑[A017827(n)]` -/
def P14420148733816296937.Spec : Prop :=
  ∀ n, P14420148733816296937.a n = A174522 n

end A174522

/-! ## A174522.P14049351681059861829

`∑[A127839(n+6)]`
-/

namespace A174522.P14049351681059861829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127839 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174522.P14049351681059861829

namespace A174522

/-- `∑[A127839(n+6)]` -/
def P14049351681059861829.Spec : Prop :=
  ∀ n, P14049351681059861829.a n = A174522 n

end A174522

/-! ## A174522.P95077242715938273

`A103372(n+6)-1`
-/

namespace A174522.P95077242715938273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (n + 6) - 1

end

end A174522.P95077242715938273

namespace A174522

/-- `A103372(n+6)-1` -/
def P95077242715938273.Spec : Prop :=
  ∀ n, P95077242715938273.a n = A174522 n

end A174522

/-! ## A174522.P10210383490072882597

`∑[abs(Δ[A103372(n+5)])]`
-/

namespace A174522.P10210383490072882597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174522.P10210383490072882597

namespace A174522

/-- `∑[abs(Δ[A103372(n+5)])]` -/
def P10210383490072882597.Spec : Prop :=
  ∀ n, P10210383490072882597.a n = A174522 n

end A174522

/-!
# A174523: Triangle T(n,1) = A117989(n+1) in the first column and recursively T(n,k) = 2*T(n-1,k-1).

The programs for A174523, there is no canonical definition to state claims against.
-/

/-! ## A174523.P10775584071895427833

`A059268(n)*A218572(A025581(n))`
-/

namespace A174523.P10775584071895427833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A218572 ((A025581 n).toNat + 11)

end

end A174523.P10775584071895427833

/-! ## A174523.P17188101562336574106

`A000079(A002262(n))*A218572(A025581(n))`
-/

namespace A174523.P17188101562336574106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A218572 ((A025581 n).toNat + 11)

end

end A174523.P17188101562336574106

/-! ## A174523.P11100802836058803330

`2^(n-C(∑[char[∑[n]]], 2))*A194917(3^(C(comp[∑[n]]-n, 2)-(n+1)))`
-/

namespace A174523.P11100802836058803330
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A194917 (SequenceMachineLib.roundAway ((3 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ))).toNat : ℚ)

end

end A174523.P11100802836058803330

/-!
# A174524: The total number of factors in unordered factorizations of A025487(n).

The programs for A174524, there is no canonical definition to state claims against.
-/

/-! ## A174524.P10383382180072083942

`A066637(A025487(n+1))`
-/

namespace A174524.P10383382180072083942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066637 (A025487 (n + 1)).toNat

end

end A174524.P10383382180072083942

/-! ## A174524.P2676464380259907714

`A066637(record[A329899(n+1)])`
-/

namespace A174524.P2676464380259907714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066637 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A174524.P2676464380259907714

/-! ## A174524.P12685155496594476971

`A066637(record[A051466(n+2)])`
-/

namespace A174524.P12685155496594476971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066637 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A174524.P12685155496594476971

/-! ## A174524.P7519613482708528763

`A066637(A247451(n+1)*A307107(n+1))`
-/

namespace A174524.P7519613482708528763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066637 (A247451 (n + 1) * A307107 (n + 1)).toNat

end

end A174524.P7519613482708528763

/-! ## A174524.P2590116249158564990

`A066637(A181817(n+1)/A181816(n+1))`
-/

namespace A174524.P2590116249158564990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066637 (SequenceMachineLib.roundAway ((A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ))).toNat

end

end A174524.P2590116249158564990

/-! ## A174524.P1670663762504455865

`A066637(record[A046523(n+1)])`
-/

namespace A174524.P1670663762504455865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066637 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A174524.P1670663762504455865

/-!
# A174525: Bases N in which ab and ba are different squares, for some a and b.

The programs for A174525, there is no canonical definition to state claims against.
-/

/-! ## A174525.P9874748398826712841

`A356842(∑[A185037(3*n+1)+1])`
-/

namespace A174525.P9874748398826712841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 (3 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356842 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A174525.P9874748398826712841

/-! ## A174525.P10293546451188075069

`A356842(A185037(3*n+1)+n+1)`
-/

namespace A174525.P10293546451188075069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356842 (A185037 (3 * n + 1) + (n + 1 : ℤ)).toNat

end

end A174525.P10293546451188075069

/-! ## A174525.P6106896497848689641

`A055096(n+3)-A267635(A000389(2*n+1))`
-/

namespace A174525.P6106896497848689641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055096 (n + 3) - A267635 (A000389 (2 * n + 1)).toNat

end

end A174525.P6106896497848689641

/-!
# A174526: Triangle t(n,m) = 2*A022166(n,m)-binomial(n,m), read by rows, 0<=m<=n.

The programs for A174526, there is no canonical definition to state claims against.
-/

/-! ## A174526.P3903936680407996452

`A022166(n)+A176420(n)-1`
-/

namespace A174526.P3903936680407996452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022166 n + (A176420 n - 1)

end

end A174526.P3903936680407996452

/-! ## A174526.P7485552326043979706

`2*A022166(n)-A007318(n)`
-/

namespace A174526.P7485552326043979706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022166 n - A007318 n

end

end A174526.P7485552326043979706

/-! ## A174526.P12152162034853624084

`2*A022166(n)-abs(A117440(n))`
-/

namespace A174526.P12152162034853624084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022166 n - |A117440 n|

end

end A174526.P12152162034853624084

/-! ## A174526.P17649194019689883477

`2*A022166(n)-abs(A130595(n))`
-/

namespace A174526.P17649194019689883477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022166 n - |A130595 n|

end

end A174526.P17649194019689883477

/-! ## A174526.P1006665914030635358

`2*A022166(n)-sqrt(A008459(n))`
-/

namespace A174526.P1006665914030635358
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A022166 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A174526.P1006665914030635358

/-! ## A174526.P15389776662727383176

`2*A022166(n)-Δ[A102363(n)]`
-/

namespace A174526.P15389776662727383176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022166 n - (f1 (n + 1) - f1 n)

end

end A174526.P15389776662727383176

/-! ## A174526.P7815959218725285036

`A007318(n)-2*(1-A176420(n))`
-/

namespace A174526.P7815959218725285036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - 2 * (1 - A176420 n)

end

end A174526.P7815959218725285036

/-! ## A174526.P5094155139885325856

`2*A022166(n)-A008480(A036561(n))`
-/

namespace A174526.P5094155139885325856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022166 n - A008480 (A036561 n).toNat

end

end A174526.P5094155139885325856

/-! ## A174526.P12915378622563493918

`2*A022166(n)-A008619(A109128(n))`
-/

namespace A174526.P12915378622563493918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022166 n - A008619 (A109128 n).toNat

end

end A174526.P12915378622563493918

/-! ## A174526.P5497888595390607781

`lcm(2, A022166(n))-A007318(A028310(n))`
-/

namespace A174526.P5497888595390607781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A022166 n) : ℤ) - A007318 (A028310 n).toNat

end

end A174526.P5497888595390607781

/-!
# A174527: Triangle T(n,m) = 2*A022167(n,m) - binomial(n, m), 0 <= m <= n, read by rows.

The programs for A174527, there is no canonical definition to state claims against.
-/

/-! ## A174527.P12653886323773693845

`A022167(n)+A176421(n)-1`
-/

namespace A174527.P12653886323773693845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022167 n + (A176421 n - 1)

end

end A174527.P12653886323773693845

/-! ## A174527.P13172940157930059710

`2*A022167(n)-A007318(n)`
-/

namespace A174527.P13172940157930059710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022167 n - A007318 n

end

end A174527.P13172940157930059710

/-! ## A174527.P8605596911149405162

`2*A022167(n)-abs(A130595(n))`
-/

namespace A174527.P8605596911149405162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022167 n - |A130595 n|

end

end A174527.P8605596911149405162

/-! ## A174527.P9782097901222822275

`2*A022167(n)-sqrt(A008459(n))`
-/

namespace A174527.P9782097901222822275
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A022167 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A174527.P9782097901222822275

/-! ## A174527.P13938993897663792744

`A176428(n)+2*A290448(n)`
-/

namespace A174527.P13938993897663792744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176428 n + 2 * A290448 n

end

end A174527.P13938993897663792744

/-!
# A174528: Triangle T(n,m) = 2*A022168(n,m) - binomial(n, m), 0 <= m <= n, read by rows.

The programs for A174528, there is no canonical definition to state claims against.
-/

/-! ## A174528.P16772058501362173284

`A022168(n)+A176422(n)-1`
-/

namespace A174528.P16772058501362173284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 n + (A176422 n - 1)

end

end A174528.P16772058501362173284

/-! ## A174528.P16483912330028342782

`2*A022168(n)-A007318(n)`
-/

namespace A174528.P16483912330028342782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022168 n - A007318 n

end

end A174528.P16483912330028342782

/-! ## A174528.P12314381655579380097

`2*A022168(n)-abs(A108086(n))`
-/

namespace A174528.P12314381655579380097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022168 n - |A108086 n|

end

end A174528.P12314381655579380097

/-! ## A174528.P7403388569646374833

`2*A022168(n)-sqrt(A008459(n))`
-/

namespace A174528.P7403388569646374833
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * A022168 n : ℝ) - Real.sqrt (A008459 n : ℝ)

end

end A174528.P7403388569646374833

/-! ## A174528.P11903623902794557633

`2*A022168(n)-Δ[A102363(n)]`
-/

namespace A174528.P11903623902794557633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A022168 n - (f1 (n + 1) - f1 n)

end

end A174528.P11903623902794557633

/-!
# A174529: a(3n) = a(3n-1)+a(3n-2), a(3n+1) = a(3n)*a(3n-1), a(3n+2) = a(3n+1)/a(3n).

The programs for A174529, the canonical program `A174529.P7917916598914796450` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174529 has offset 1).

The definition of A174529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174529.P7917916598914796450

`6*a(n-3)-5*a(n-6)` with `a(0)=3, a(1)=5, a(2)=8, a(3)=40, a(4)=5, a(5)=45`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174529

/-- `6*a(n-3)-5*a(n-6)` -/
def P7917916598914796450.Spec : Prop :=
  ∀ n, P7917916598914796450.a n = A174529 (n + 1)

theorem P7917916598914796450.correct : P7917916598914796450.Spec := by
  intro n
  simp only [A174529, Nat.add_sub_cancel]

end A174529

/-!
# A174530: Numerators of the second row of the Akiyama-Tanigawa table for the sequence 1/n!.

The programs for A174530, there is no canonical definition to state claims against.
-/

/-! ## A174530.P242324465912820654

`A165795(A347553(n+3))*A257088(A014973(n+1))`
-/

namespace A174530.P242324465912820654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165795 (A347553 (n + 3)).toNat * A257088 (A014973 (n + 1)).toNat

end

end A174530.P242324465912820654

/-! ## A174530.P11820479382161101748

`A014973(n+1)+A002448(A203175(n+1))`
-/

namespace A174530.P11820479382161101748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (n + 1) + A002448 (A203175 (n + 1)).toNat

end

end A174530.P11820479382161101748

/-! ## A174530.P2950778625632247156

`A082564(A282259(n))+A014973(n+1)`
-/

namespace A174530.P2950778625632247156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082564 (A282259 n).toNat + A014973 (n + 1)

end

end A174530.P2950778625632247156

/-!
# A174532: Expansion of x^5/((1-x)*(1+x-x^5)).

The programs for A174532, the canonical program `A174532.P3100525530574714487` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174532 has offset 0).

The definition of A174532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1338 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174532.P3100525530574714487

`a(n-5)+1-a(n-1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174532

/-- `a(n-5)+1-a(n-1)` -/
def P3100525530574714487.Spec : Prop :=
  ∀ n, P3100525530574714487.a n = A174532 n

theorem P3100525530574714487.correct : P3100525530574714487.Spec := by
  intro n
  simp only [A174532]

end A174532

/-! ## A174532.P121684582237483875

`1-(a(n-1)-a(n-5))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A174532.P121684582237483875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 0] fun n a =>
  1 - (a (n - 1) - a (n - 5))

end

end A174532.P121684582237483875

namespace A174532

/-- `1-(a(n-1)-a(n-5))` -/
def P121684582237483875.Spec : Prop :=
  ∀ n, P121684582237483875.a n = A174532 n

end A174532

/-! ## A174532.P3771376374279497387

`A365658(n+1)-A051731(A035342(n+1))`
-/

namespace A174532.P3771376374279497387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365658 (n + 1) - A051731 (A035342 (n + 1)).toNat

end

end A174532.P3771376374279497387

namespace A174532

/-- `A365658(n+1)-A051731(A035342(n+1))` -/
def P3771376374279497387.Spec : Prop :=
  ∀ n, P3771376374279497387.a n = A174532 n

end A174532

/-!
# A174533: Almost practical numbers.

The programs for A174533, there is no canonical definition to state claims against.
-/

/-! ## A174533.P18377901936897372494

`∪[A174534(n+1), A174535(n+1)]`
-/

namespace A174533.P18377901936897372494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A174533.P18377901936897372494

/-!
# A174534: Even almost practical numbers.

The programs for A174534, there is no canonical definition to state claims against.
-/

/-! ## A174534.P15688734109459477827

`filter[A174533(n+1), A217586(#)]`
-/

namespace A174534.P15688734109459477827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A217586 (f1 j).toNat = 1) n)

end

end A174534.P15688734109459477827

/-! ## A174534.P13504158532016614724

`∩[A174533(n+1), A237719(n+1)]`
-/

namespace A174534.P13504158532016614724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174534.P13504158532016614724

/-! ## A174534.P17355113790463418725

`record[A106610(A174533(n+1))]`
-/

namespace A174534.P17355113790463418725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A174533 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174534.P17355113790463418725

/-! ## A174534.P10782599338715172794

`filter[A174533(n+1), A011655(#)]`
-/

namespace A174534.P10782599338715172794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A174534.P10782599338715172794

/-! ## A174534.P3211080239694612106

`filter[A174533(n+1), A059841(#)]`
-/

namespace A174534.P3211080239694612106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A174534.P3211080239694612106

/-!
# A174535: Odd almost practical numbers.

The programs for A174535, there is no canonical definition to state claims against.
-/

/-! ## A174535.P7135558368928555259

`∩[A005231(n+1), A174533(n+1)]`
-/

namespace A174535.P7135558368928555259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174535.P7135558368928555259

/-! ## A174535.P17768663513350596684

`∩[A174533(n+1), A174830(n+1)]`
-/

namespace A174535.P17768663513350596684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174535.P17768663513350596684

/-! ## A174535.P3556191833901171778

`∩[A174533(n+1), A294576(n+1)]`
-/

namespace A174535.P3556191833901171778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174535.P3556191833901171778

/-! ## A174535.P4488786057045514621

`∩[A036798(n+1), A174533(n+1)]`
-/

namespace A174535.P4488786057045514621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174535.P4488786057045514621

/-! ## A174535.P3556021659861299088

`∩[A174533(n+1), A392653(n+1)]`
-/

namespace A174535.P3556021659861299088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174535.P3556021659861299088

/-! ## A174535.P13367366885053881137

`∩[A068355(n+1), A174533(n+1)]`
-/

namespace A174535.P13367366885053881137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174533 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174535.P13367366885053881137

/-! ## A174535.P1047843152830627431

`∩[A174533(n+1), A378885(n+1)]`
-/

namespace A174535.P1047843152830627431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174533 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174535.P1047843152830627431

/-! ## A174535.P483576682381800900

`∩[A072703(2*n+1)+A072703(2*(n+1)), A174533(n+2)]`
-/

namespace A174535.P483576682381800900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072703 (2 * n + 1) + A072703 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174533 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A174535.P483576682381800900

/-! ## A174535.P5980661923368355452

`filter[A174533(n+1), A035263(#)]`
-/

namespace A174535.P5980661923368355452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A174535.P5980661923368355452

/-!
# A174536: Partial sums of A040082.

The programs for A174536, there is no canonical definition to state claims against.
-/

/-! ## A174536.P5641446811551115453

`∑[A040082(n+1)]`
-/

namespace A174536.P5641446811551115453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174536.P5641446811551115453

/-! ## A174536.P3078036453318006864

`A040082(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A174536.P3078036453318006864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A040082 (n + 1) + a (A023443 n).toNat

end

end A174536.P3078036453318006864

/-! ## A174536.P147935065269553228

`A040082(n+1)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A174536.P147935065269553228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A040082 (n + 1) + a (A028310 n - 1).toNat

end

end A174536.P147935065269553228

/-! ## A174536.P6877717280208081828

`A040082(A171526(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A174536.P6877717280208081828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A040082 (A171526 (n + 1)).toNat + a (n - 1)

end

end A174536.P6877717280208081828

/-! ## A174536.P7009563737977099362

`A040082(n+1)+a(A171828(n+3)-3)` with `a(0)=1`
-/

namespace A174536.P7009563737977099362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A040082 (n + 1) + a (A171828 (n + 3) - 3).toNat

end

end A174536.P7009563737977099362

/-!
# A174537: Partial sums of A000372.

The programs for A174537, there is no canonical definition to state claims against.
-/

/-! ## A174537.P9391494598065939903

`∑[A000372(n)]`
-/

namespace A174537.P9391494598065939903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174537.P9391494598065939903

/-! ## A174537.P6589953562552213516

`∑[A014466(n)+1]`
-/

namespace A174537.P6589953562552213516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014466 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174537.P6589953562552213516

/-! ## A174537.P6772727529698656779

`∑[A007153(n)+2]`
-/

namespace A174537.P6772727529698656779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007153 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174537.P6772727529698656779

/-! ## A174537.P4797247354979561818

`∑[abs(A014466(n)-A321800(n))]`
-/

namespace A174537.P4797247354979561818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014466 n - A321800 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174537.P4797247354979561818

/-! ## A174537.P4721550782941068216

`∑[A001146(n)-A268080(n)]`
-/

namespace A174537.P4721550782941068216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001146 n - A268080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174537.P4721550782941068216

/-!
# A174538: The smallest k such that the number of steps in the n Collatz sequences starting at k+i, i=0..n-1, is always prime.

The programs for A174538, there is no canonical definition to state claims against.
-/

/-! ## A174538.P14623355766267771872

`3*A237595((n+2)!)`
-/

namespace A174538.P14623355766267771872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A237595 (Nat.factorial (n + 2))

end

end A174538.P14623355766267771872

/-!
# A174539: Starting numbers n such that the number of halving and tripling steps to reach 1 under the Collatz 3x+1 map is a perfect square.

The programs for A174539, there is no canonical definition to state claims against.
-/

/-! ## A174539.P3633971743407310361

`lt[A327860(A193231(3*n+4)), A196006(n+1)]`
-/

namespace A174539.P3633971743407310361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327860 (A193231 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196006 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A174539.P3633971743407310361

/-!
# A174540: Partial sums of A036983.

The programs for A174540, there is no canonical definition to state claims against.
-/

/-! ## A174540.P7287486019291953851

`∑[A036983(n+2)]`
-/

namespace A174540.P7287486019291953851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036983 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174540.P7287486019291953851

/-! ## A174540.P8716046237709535420

`∑[A126668(n+2)-A036984(n+2)]`
-/

namespace A174540.P8716046237709535420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126668 (n + 2) - A036984 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174540.P8716046237709535420

/-!
# A174541: Baron Münchhausen's Sequence.

The programs for A174541, there is no canonical definition to state claims against.
-/

/-! ## A174541.P13364843065473718201

`A000032(C(2, n+2))-A073424(A088617(n+1))`
-/

namespace A174541.P13364843065473718201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) - A073424 (A088617 (n + 1)).toNat

end

end A174541.P13364843065473718201

/-! ## A174541.P15841178799510191148

`A156259(A278984(n+1))-A057428(n)`
-/

namespace A174541.P15841178799510191148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156259 (A278984 (n + 1)).toNat - A057428 n

end

end A174541.P15841178799510191148

/-! ## A174541.P7817209726002677264

`A353745(A154715(n))`
-/

namespace A174541.P7817209726002677264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353745 (A154715 n).toNat

end

end A174541.P7817209726002677264

/-!
# A174542: Partial sums of odd Fibonacci numbers (A014437).

The programs for A174542, the canonical program `A174542.P7912428898660191701` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174542 has offset 1).

The definition of A174542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174542.P7912428898660191701

`a(n-1)+4*a(n-2)-4*a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10, a(4)=23`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174542

/-- `a(n-1)+4*a(n-2)-4*a(n-3)+a(n-4)-a(n-5)` -/
def P7912428898660191701.Spec : Prop :=
  ∀ n, P7912428898660191701.a n = A174542 (n + 1)

theorem P7912428898660191701.correct : P7912428898660191701.Spec := by
  intro n
  simp only [A174542, Nat.add_sub_cancel]

end A174542

/-! ## A174542.P15092475804354834747

`∑[a(n-4)+4*a(n-2)]` with `a(0)=1, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A174542.P15092475804354834747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 5] fun n f1 =>
  f1 (n - 4) + 4 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174542.P15092475804354834747

namespace A174542

/-- `∑[a(n-4)+4*a(n-2)]` -/
def P15092475804354834747.Spec : Prop :=
  ∀ n, (P15092475804354834747.a n : ℤ) = A174542 (n + 1)

end A174542

/-! ## A174542.P12450543106661196455

`∑[A014437(n)]`
-/

namespace A174542.P12450543106661196455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014437 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174542.P12450543106661196455

namespace A174542

/-- `∑[A014437(n)]` -/
def P12450543106661196455.Spec : Prop :=
  ∀ n, P12450543106661196455.a n = A174542 (n + 1)

end A174542

/-! ## A174542.P7631659094649001024

`∑[record[A167808(n)]]+1`
-/

namespace A174542.P7631659094649001024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A174542.P7631659094649001024

namespace A174542

/-- `∑[record[A167808(n)]]+1` -/
def P7631659094649001024.Spec : Prop :=
  ∀ n, P7631659094649001024.a n = A174542 (n + 1)

end A174542

/-! ## A174542.P6460106149868561941

`∑[A000045(comp[3*n])]`
-/

namespace A174542.P6460106149868561941
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174542.P6460106149868561941

namespace A174542

/-- `∑[A000045(comp[3*n])]` -/
def P6460106149868561941.Spec : Prop :=
  ∀ n, P6460106149868561941.a n = A174542 (n + 1)

end A174542

/-! ## A174542.P9509063056299929193

`∑[A167808(comp[3*n])]`
-/

namespace A174542.P9509063056299929193
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174542.P9509063056299929193

namespace A174542

/-- `∑[A167808(comp[3*n])]` -/
def P9509063056299929193.Spec : Prop :=
  ∀ n, P9509063056299929193.a n = A174542 (n + 1)

end A174542

/-! ## A174542.P14872466704397192844

`∑[A212804(∑[gcd(2, n)])]`
-/

namespace A174542.P14872466704397192844
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174542.P14872466704397192844

namespace A174542

/-- `∑[A212804(∑[gcd(2, n)])]` -/
def P14872466704397192844.Spec : Prop :=
  ∀ n, P14872466704397192844.a n = A174542 (n + 1)

end A174542

/-! ## A174542.P5534070044660208729

`∑[A103609(3*n+2)]`
-/

namespace A174542.P5534070044660208729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174542.P5534070044660208729

namespace A174542

/-- `∑[A103609(3*n+2)]` -/
def P5534070044660208729.Spec : Prop :=
  ∀ n, P5534070044660208729.a n = A174542 (n + 1)

end A174542

/-! ## A174542.P17340915467502068166

`∑[A001611(comp[3*n])-1]`
-/

namespace A174542.P17340915467502068166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174542.P17340915467502068166

namespace A174542

/-- `∑[A001611(comp[3*n])-1]` -/
def P17340915467502068166.Spec : Prop :=
  ∀ n, P17340915467502068166.a n = A174542 (n + 1)

end A174542

/-! ## A174542.P11956489933407972729

`∑[A212804(comp[3*n-1]+2)]`
-/

namespace A174542.P11956489933407972729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174542.P11956489933407972729

namespace A174542

/-- `∑[A212804(comp[3*n-1]+2)]` -/
def P11956489933407972729.Spec : Prop :=
  ∀ n, P11956489933407972729.a n = A174542 (n + 1)

end A174542

/-! ## A174542.P7846403722651067500

`∑[A141325(A001651(n+1))]`
-/

namespace A174542.P7846403722651067500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141325 (A001651 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174542.P7846403722651067500

namespace A174542

/-- `∑[A141325(A001651(n+1))]` -/
def P7846403722651067500.Spec : Prop :=
  ∀ n, P7846403722651067500.a n = A174542 (n + 1)

end A174542

/-! ## A174542.P15452915327080428898

`∑[A303427(A014601(n+1)+n)]`
-/

namespace A174542.P15452915327080428898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303427 (A014601 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174542.P15452915327080428898

namespace A174542

/-- `∑[A303427(A014601(n+1)+n)]` -/
def P15452915327080428898.Spec : Prop :=
  ∀ n, P15452915327080428898.a n = A174542 (n + 1)

end A174542

/-! ## A174542.P367078903793211423

`A000045(A002265(2*n)+1+n)+a(n-1)` with `a(0)=1`
-/

namespace A174542.P367078903793211423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (A002265 (2 * n) + 1 + (n : ℤ)).toNat + a (n - 1)

end

end A174542.P367078903793211423

namespace A174542

/-- `A000045(A002265(2*n)+1+n)+a(n-1)` -/
def P367078903793211423.Spec : Prop :=
  ∀ n, P367078903793211423.a n = A174542 (n + 1)

end A174542

/-! ## A174542.P11126715256589353856

`A339572(3*(n+1))/2`
-/

namespace A174542.P11126715256589353856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339572 (3 * (n + 1)) : ℚ) / 2

end

end A174542.P11126715256589353856

namespace A174542

/-- `A339572(3*(n+1))/2` -/
def P11126715256589353856.Spec : Prop :=
  ∀ n, P11126715256589353856.a n = (A174542 (n + 1) : ℚ)

end A174542

/-! ## A174542.P17308945760772489214

`∑[sqrt(A014728(n))]`
-/

namespace A174542.P17308945760772489214
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014728 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174542.P17308945760772489214

namespace A174542

/-- `∑[sqrt(A014728(n))]` -/
def P17308945760772489214.Spec : Prop :=
  ∀ n, P17308945760772489214.a n = (A174542 (n + 1) : ℝ)

end A174542

/-!
# A174544: A mirrored symmetrical triangle of the Stirling numbers of the second kind.

The programs for A174544, there is no canonical definition to state claims against.
-/

/-! ## A174544.P12188797864813359000

`A174545(n)/A144464(n)`
-/

namespace A174544.P12188797864813359000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174545 n : ℚ) / (A144464 n : ℚ)

end

end A174544.P12188797864813359000

/-! ## A174544.P2676854365890594646

`A174545(n)/A000079(A004197(n))`
-/

namespace A174544.P2676854365890594646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174545 n : ℚ) / (A000079 (A004197 n).toNat : ℚ)

end

end A174544.P2676854365890594646

/-! ## A174544.P18157927770131136917

`A174546(n)/A152714(n)`
-/

namespace A174544.P18157927770131136917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174546 n : ℚ) / (A152714 n : ℚ)

end

end A174544.P18157927770131136917

/-! ## A174544.P16526704025355489000

`gcd(A174545(n), A174546(n))`
-/

namespace A174544.P16526704025355489000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A174545 n) (A174546 n)

end

end A174544.P16526704025355489000

/-! ## A174544.P1001600856312677546

`A174546(n)/A294370(A144464(n))`
-/

namespace A174544.P1001600856312677546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174546 n : ℚ) / (A294370 (A144464 n).toNat : ℚ)

end

end A174544.P1001600856312677546

/-! ## A174544.P15940197238046736794

`A174545(n)/A062050(A131816(n))`
-/

namespace A174544.P15940197238046736794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174545 n : ℚ) / (A062050 (A131816 n).toNat : ℚ)

end

end A174544.P15940197238046736794

/-!
# A174545: Triangle read by rows: T(n,0) = T(n,n) = 1, T(n,k) = Stirling2(n,m) * 2^m where m = min(k,n-k).

The programs for A174545, there is no canonical definition to state claims against.
-/

/-! ## A174545.P9384658504277378876

`A144464(n)*A174544(n)`
-/

namespace A174545.P9384658504277378876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 n * A174544 n

end

end A174545.P9384658504277378876

/-! ## A174545.P13358663891656146428

`sqrt(A152716(n))*A174544(n)`
-/

namespace A174545.P13358663891656146428
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A152716 n : ℝ) * (A174544 n : ℝ)

end

end A174545.P13358663891656146428

/-! ## A174545.P7376471733178457678

`2^A004197(n)*A174544(n)`
-/

namespace A174545.P7376471733178457678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004197 n : ℤ) * (A174544 n : ℚ)

end

end A174545.P7376471733178457678

/-! ## A174545.P16771324145907884694

`A000079(A004197(n))*A174544(n)`
-/

namespace A174545.P16771324145907884694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004197 n).toNat * A174544 n

end

end A174545.P16771324145907884694

/-! ## A174545.P16511752135054440462

`A011782(A003983(n+1))*A174544(n)`
-/

namespace A174545.P16511752135054440462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A003983 (n + 1)).toNat * A174544 n

end

end A174545.P16511752135054440462

/-! ## A174545.P4412857682219867509

`A174544(n)*A238745(A152714(n))`
-/

namespace A174545.P4412857682219867509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174544 n * A238745 (A152714 n).toNat

end

end A174545.P4412857682219867509

/-!
# A174546: Triangle read by rows: T(n,0) = T(n,n) = 1, T(n,k) = Stirling2(n,m) * 3^m where m = min(k,n-k).

The programs for A174546, there is no canonical definition to state claims against.
-/

/-! ## A174546.P3595142171821931854

`A152714(n)*A174544(n)`
-/

namespace A174546.P3595142171821931854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152714 n * A174544 n

end

end A174546.P3595142171821931854

/-! ## A174546.P16513996949334447775

`3^A004197(n)*A174544(n)`
-/

namespace A174546.P16513996949334447775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A004197 n : ℤ) * (A174544 n : ℚ)

end

end A174546.P16513996949334447775

/-! ## A174546.P464639521156513270

`A152714(n)/A144464(n)*A174545(n)`
-/

namespace A174546.P464639521156513270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152714 n : ℚ) / (A144464 n : ℚ) * (A174545 n : ℚ)

end

end A174546.P464639521156513270

/-! ## A174546.P2454708900204957359

`3^A004197(n)/A174544(n)^(A198954(n)-1)`
-/

namespace A174546.P2454708900204957359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A004197 n : ℤ) / (A174544 n : ℚ) ^ (A198954 n - 1 : ℤ)

end

end A174546.P2454708900204957359

/-! ## A174546.P8592078032671490752

`A152714(n)/A174544(n)^A307428(A006530(n+2))`
-/

namespace A174546.P8592078032671490752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152714 n : ℚ) / (A174544 n : ℚ) ^ (A307428 (A006530 (n + 2)).toNat : ℤ)

end

end A174546.P8592078032671490752

/-! ## A174546.P6090605699284641367

`A174544(n)*A294370(A144464(n))`
-/

namespace A174546.P6090605699284641367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174544 n * A294370 (A144464 n).toNat

end

end A174546.P6090605699284641367

/-!
# A174549: a(n) = (2*n-1)! + (2*n)!.

The programs for A174549, the canonical program `A174549.P4684324771407201370` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174549 has offset 1).

The definition of A174549 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)-1)!+(2*(n+1))!` (program `A174549.P4684324771407201370`, by `A174549.P4684324771407201370.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A174549.P4684324771407201370

`(2*(n+1)-1)!+(2*(n+1))!`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174549

/-- `(2*(n+1)-1)!+(2*(n+1))!` -/
def P4684324771407201370.Spec : Prop :=
  ∀ n, (P4684324771407201370.a n : ℤ) = A174549 (n + 1)

theorem P4684324771407201370.correct : P4684324771407201370.Spec := by
  intro n
  simp only [A174549, Nat.add_sub_cancel]

end A174549

/-! ## A174549.P12259376774062940450

`3*A165457(n)`
-/

namespace A174549.P12259376774062940450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A165457 n

end

end A174549.P12259376774062940450

namespace A174549

/-- `3*A165457(n)` -/
def P12259376774062940450.Spec : Prop :=
  ∀ n, P12259376774062940450.a n = A174549 (n + 1)

end A174549

/-! ## A174549.P4406036091892952121

`A001048(2*(n+1))`
-/

namespace A174549.P4406036091892952121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001048 (2 * (n + 1))

end

end A174549.P4406036091892952121

namespace A174549

/-- `A001048(2*(n+1))` -/
def P4406036091892952121.Spec : Prop :=
  ∀ n, P4406036091892952121.a n = A174549 (n + 1)

end A174549

/-! ## A174549.P2031940071015264346

`record[Δ[∏[-(n+1)]]]`
-/

namespace A174549.P2031940071015264346
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174549.P2031940071015264346

namespace A174549

/-- `record[Δ[∏[-(n+1)]]]` -/
def P2031940071015264346.Spec : Prop :=
  ∀ n, P2031940071015264346.a n = A174549 (n + 1)

end A174549

/-! ## A174549.P6127332892690102866

`(2*n+3)*Δ[n²]!`
-/

namespace A174549.P6127332892690102866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) * Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A174549.P6127332892690102866

namespace A174549

/-- `(2*n+3)*Δ[n²]!` -/
def P6127332892690102866.Spec : Prop :=
  ∀ n, (P6127332892690102866.a n : ℤ) = A174549 (n + 1)

end A174549

/-!
# A174551: Triangular array T(n,k): functions f:{1,2,...,n}-> {1,2,...,n} such that each of k fixed (but arbitrary) elements are in the image of f.

The programs for A174551, there is no canonical definition to state claims against.
-/

/-! ## A174551.P18344921600237065917

`A281485(n+1)/A002260(n+1)`
-/

namespace A174551.P18344921600237065917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281485 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A174551.P18344921600237065917

/-! ## A174551.P4642743859319619220

`A281485(n+1)/(A002262(n)+1)`
-/

namespace A174551.P4642743859319619220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281485 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A174551.P4642743859319619220

/-! ## A174551.P3441882861643529368

`abs(A281485(n+1)/A140756(n+1))`
-/

namespace A174551.P3441882861643529368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A281485 (n + 1) : ℚ) / (A140756 (n + 1) : ℚ)|

end

end A174551.P3441882861643529368

/-! ## A174551.P9716410832581507703

`A281485(n+1)/sqrt(A133819(n+1))`
-/

namespace A174551.P9716410832581507703
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A281485 (n + 1) : ℝ) / Real.sqrt (A133819 (n + 1) : ℝ)

end

end A174551.P9716410832581507703

/-! ## A174551.P1687301941141264602

`A281485(n+1)/A000005(A059268(n))`
-/

namespace A174551.P1687301941141264602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A281485 (n + 1) : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A174551.P1687301941141264602

/-!
# A174552: Triangular array T(n,k): The differences in the columns of A174551.

The programs for A174552, there is no canonical definition to state claims against.
-/

/-! ## A174552.P10490497861141300329

`A174551(n)-A174551(n+1)%A281485(n+2)`
-/

namespace A174552.P10490497861141300329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 n - Int.tmod (A174551 (n + 1)) (A281485 (n + 2))

end

end A174552.P10490497861141300329

/-!
# A174554: Smallest k > 2 such that 2|k, 3|k+1, 4|k+2,..., n|k+n-2.

The programs for A174554, the canonical program `A174554.P964044573545116008` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174554 has offset 2).

The definition of A174554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174554.P964044573545116008

`A003418(n+2)+2`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A174554

/-- `A003418(n+2)+2` -/
def P964044573545116008.Spec : Prop :=
  ∀ n, P964044573545116008.a n = A174554 (n + 2)

theorem P964044573545116008.correct : P964044573545116008.Spec := by
  intro n
  simp only [A174554, Nat.add_sub_cancel]

end A174554

/-! ## A174554.P6664870187860933841

`lcm(n+2, 2-a(n-1))+2` with `a(0)=4`
-/

namespace A174554.P6664870187860933841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Int.lcm (n + 2 : ℤ) (2 - (a (n - 1) : ℤ)) + 2

end

end A174554.P6664870187860933841

namespace A174554

/-- `lcm(n+2, 2-a(n-1))+2` -/
def P6664870187860933841.Spec : Prop :=
  ∀ n, (P6664870187860933841.a n : ℤ) = A174554 (n + 2)

end A174554

/-! ## A174554.P16033700426392322631

`A075059(n+2)+1`
-/

namespace A174554.P16033700426392322631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075059 (n + 2) + 1

end

end A174554.P16033700426392322631

namespace A174554

/-- `A075059(n+2)+1` -/
def P16033700426392322631.Spec : Prop :=
  ∀ n, P16033700426392322631.a n = A174554 (n + 2)

end A174554

/-! ## A174554.P6672070223674901528

`A070198(n+1)+3`
-/

namespace A174554.P6672070223674901528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070198 (n + 1) + 3

end

end A174554.P6672070223674901528

namespace A174554

/-- `A070198(n+1)+3` -/
def P6672070223674901528.Spec : Prop :=
  ∀ n, P6672070223674901528.a n = A174554 (n + 2)

end A174554

/-! ## A174554.P5691783033392866423

`A121934(n+2)+3`
-/

namespace A174554.P5691783033392866423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121934 (n + 2) + 3

end

end A174554.P5691783033392866423

namespace A174554

/-- `A121934(n+2)+3` -/
def P5691783033392866423.Spec : Prop :=
  ∀ n, P5691783033392866423.a n = A174554 (n + 2)

end A174554

/-! ## A174554.P9363181040388934952

`A060401(n+2)-n`
-/

namespace A174554.P9363181040388934952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060401 (n + 2) - (n : ℤ)

end

end A174554.P9363181040388934952

namespace A174554

/-- `A060401(n+2)-n` -/
def P9363181040388934952.Spec : Prop :=
  ∀ n, P9363181040388934952.a n = A174554 (n + 2)

end A174554

/-! ## A174554.P14578330418069138378

`∑[A119944(n+1)]+3`
-/

namespace A174554.P14578330418069138378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A174554.P14578330418069138378

namespace A174554

/-- `∑[A119944(n+1)]+3` -/
def P14578330418069138378.Spec : Prop :=
  ∀ n, P14578330418069138378.a n = A174554 (n + 2)

end A174554

/-! ## A174554.P11702022707644929649

`Δ[A173185(n+1)]+2`
-/

namespace A174554.P11702022707644929649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A174554.P11702022707644929649

namespace A174554

/-- `Δ[A173185(n+1)]+2` -/
def P11702022707644929649.Spec : Prop :=
  ∀ n, P11702022707644929649.a n = A174554 (n + 2)

end A174554

/-! ## A174554.P10623529809918372259

`Δ[A236856(n+1)]+2`
-/

namespace A174554.P10623529809918372259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A174554.P10623529809918372259

namespace A174554

/-- `Δ[A236856(n+1)]+2` -/
def P10623529809918372259.Spec : Prop :=
  ∀ n, P10623529809918372259.a n = A174554 (n + 2)

end A174554

/-! ## A174554.P8642670349518982782

`∏[A014963(n+2)]+2`
-/

namespace A174554.P8642670349518982782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2

end

end A174554.P8642670349518982782

namespace A174554

/-- `∏[A014963(n+2)]+2` -/
def P8642670349518982782.Spec : Prop :=
  ∀ n, P8642670349518982782.a n = A174554 (n + 2)

end A174554

/-! ## A174554.P2722360632776314429

`∏[A020500(n+2)]+2`
-/

namespace A174554.P2722360632776314429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 2

end

end A174554.P2722360632776314429

namespace A174554

/-- `∏[A020500(n+2)]+2` -/
def P2722360632776314429.Spec : Prop :=
  ∀ n, P2722360632776314429.a n = A174554 (n + 2)

end A174554

/-! ## A174554.P1232104085886802242

`2*(A025555(n+1)+1)`
-/

namespace A174554.P1232104085886802242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A025555 (n + 1) + 1)

end

end A174554.P1232104085886802242

namespace A174554

/-- `2*(A025555(n+1)+1)` -/
def P1232104085886802242.Spec : Prop :=
  ∀ n, P1232104085886802242.a n = A174554 (n + 2)

end A174554

/-! ## A174554.P15713096462464716239

`A065500(n+2)-(n-1)`
-/

namespace A174554.P15713096462464716239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065500 (n + 2) - ((n : ℤ) - 1)

end

end A174554.P15713096462464716239

namespace A174554

/-- `A065500(n+2)-(n-1)` -/
def P15713096462464716239.Spec : Prop :=
  ∀ n, P15713096462464716239.a n = A174554 (n + 2)

end A174554

/-! ## A174554.P17267696635326925765

`A195507(n+3)-(n+1)`
-/

namespace A174554.P17267696635326925765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195507 (n + 3) - (n + 1 : ℤ)

end

end A174554.P17267696635326925765

namespace A174554

/-- `A195507(n+3)-(n+1)` -/
def P17267696635326925765.Spec : Prop :=
  ∀ n, P17267696635326925765.a n = A174554 (n + 2)

end A174554

/-! ## A174554.P7950169697721971230

`A051451(A065515(n+2))+2`
-/

namespace A174554.P7950169697721971230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (A065515 (n + 2)).toNat + 2

end

end A174554.P7950169697721971230

namespace A174554

/-- `A051451(A065515(n+2))+2` -/
def P7950169697721971230.Spec : Prop :=
  ∀ n, P7950169697721971230.a n = A174554 (n + 2)

end A174554

/-! ## A174554.P7119320812350644965

`A075061(∑[n+1]+2)`
-/

namespace A174554.P7119320812350644965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075061 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A174554.P7119320812350644965

namespace A174554

/-- `A075061(∑[n+1]+2)` -/
def P7119320812350644965.Spec : Prop :=
  ∀ n, P7119320812350644965.a n = A174554 (n + 2)

end A174554

/-! ## A174554.P3714678793521654572

`A139547(∑[n+1])+2`
-/

namespace A174554.P3714678793521654572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139547 (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A174554.P3714678793521654572

namespace A174554

/-- `A139547(∑[n+1])+2` -/
def P3714678793521654572.Spec : Prop :=
  ∀ n, P3714678793521654572.a n = A174554 (n + 2)

end A174554

/-! ## A174554.P5098093067222370232

`A120108(∑[n+1])+2`
-/

namespace A174554.P5098093067222370232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120108 (∑ j ∈ Finset.range (n + 1), f1 j) + 2

end

end A174554.P5098093067222370232

namespace A174554

/-- `A120108(∑[n+1])+2` -/
def P5098093067222370232.Spec : Prop :=
  ∀ n, P5098093067222370232.a n = A174554 (n + 2)

end A174554

/-!
# A174557: Triangle T(n, k) = -floor(n/k) with T(n, n) = 1, read by rows.

The programs for A174557, the canonical program `A174557.P5505119269089589923` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174557 has offset 1).

The definition of A174557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174557.P5505119269089589923

`A013942(2*(n+1))*A154990(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A174557

/-- `A013942(2*(n+1))*A154990(n+1)` -/
def P5505119269089589923.Spec : Prop :=
  ∀ n, P5505119269089589923.a n = A174557 (n + 1)

theorem P5505119269089589923.correct : P5505119269089589923.Spec := by
  intro n
  simp only [A174557, Nat.add_sub_cancel]

end A174557

/-! ## A174557.P12049134622052702547

`A010766(n+1)*A153881(A169659(n+1))`
-/

namespace A174557.P12049134622052702547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A153881 (A169659 (n + 1)).toNat

end

end A174557.P12049134622052702547

namespace A174557

/-- `A010766(n+1)*A153881(A169659(n+1))` -/
def P12049134622052702547.Spec : Prop :=
  ∀ n, P12049134622052702547.a n = A174557 (n + 1)

end A174557

/-! ## A174557.P12089553858399510959

`A010766(A000027(n+1))/A153881(A169659(n+1))`
-/

namespace A174557.P12089553858399510959
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010766 (A000027 (n + 1)).toNat : ℚ) / (A153881 (A169659 (n + 1)).toNat : ℚ)

end

end A174557.P12089553858399510959

namespace A174557

/-- `A010766(A000027(n+1))/A153881(A169659(n+1))` -/
def P12089553858399510959.Spec : Prop :=
  ∀ n, P12089553858399510959.a n = (A174557 (n + 1) : ℚ)

end A174557

/-! ## A174557.P7949259709454950979

`A174820(n+1)+A154990(n+2)*A176808(n+1)`
-/

namespace A174557.P7949259709454950979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174820 (n + 1) + A154990 (n + 2) * A176808 (n + 1)

end

end A174557.P7949259709454950979

namespace A174557

/-- `A174820(n+1)+A154990(n+2)*A176808(n+1)` -/
def P7949259709454950979.Spec : Prop :=
  ∀ n, P7949259709454950979.a n = A174557 (n + 1)

end A174557

/-!
# A174559: Triangle T(n,k)of the coefficients [x^(n-k)] of the polynomials q(0,x)=-1, q(1,x)=3*x, q(n,x)=x*q(n-1,x)-q(n-2,x) in row n,column k. A companion to A193002(n).

The programs for A174559, there is no canonical definition to state claims against.
-/

/-! ## A174559.P5100783500030186388

`A053119(n)+2*A192174(n)`
-/

namespace A174559.P5100783500030186388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 n + 2 * A192174 n

end

end A174559.P5100783500030186388

/-! ## A174559.P8808909559385797942

`A193002(n)+2*A053119(n)`
-/

namespace A174559.P8808909559385797942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193002 n + 2 * A053119 n

end

end A174559.P8808909559385797942

/-! ## A174559.P14596041088466658745

`2*A192011(n)-A192174(n)`
-/

namespace A174559.P14596041088466658745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A192011 n - A192174 n

end

end A174559.P14596041088466658745

/-! ## A174559.P17183774650235986772

`3*A192011(n)-A195673(n)`
-/

namespace A174559.P17183774650235986772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A192011 n - A195673 n

end

end A174559.P17183774650235986772

/-! ## A174559.P12766618022447282343

`4*A192174(n)-A193002(n)`
-/

namespace A174559.P12766618022447282343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A192174 n - A193002 n

end

end A174559.P12766618022447282343

/-! ## A174559.P17634768059472271437

`A195662(n)+A127672(A061579(n))`
-/

namespace A174559.P17634768059472271437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195662 n + A127672 (A061579 n).toNat

end

end A174559.P17634768059472271437

/-! ## A174559.P8928629218556474353

`A049310(A061579(n))+2*A192174(n)`
-/

namespace A174559.P8928629218556474353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A061579 n).toNat + 2 * A192174 n

end

end A174559.P8928629218556474353

/-! ## A174559.P14061290283310357978

`A192011(n)+A192575(n)-A053119(n)`
-/

namespace A174559.P14061290283310357978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192011 n + (A192575 n - A053119 n)

end

end A174559.P14061290283310357978

/-! ## A174559.P12618321118033159964

`A259875(A004202(n+1))+2*A192174(n)`
-/

namespace A174559.P12618321118033159964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259875 (A004202 (n + 1)).toNat + 2 * A192174 n

end

end A174559.P12618321118033159964

/-!
# A174562: a(1)=2, a(2)=3, then a(n)=a(n-1)+a(n-2) if n odd, a(n)=a(n-1)-a(n-2) if n even.

The programs for A174562, the canonical program `A174562.P13324836692451272266` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174562 has offset 1).

The definition of A174562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174562.P13324836692451272266

`a(n-2)+a(n-4)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174562

/-- `a(n-2)+a(n-4)` -/
def P13324836692451272266.Spec : Prop :=
  ∀ n, (P13324836692451272266.a n : ℤ) = A174562 (n + 1)

theorem P13324836692451272266.correct : P13324836692451272266.Spec := by
  intro n
  simp only [A174562, Nat.add_sub_cancel]

end A174562

/-! ## A174562.P1483229334585347477

`A013655(∑[1-a(n-1)]-1)` with `a(0)=2`
-/

namespace A174562.P1483229334585347477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A174562.P1483229334585347477

namespace A174562

/-- `A013655(∑[1-a(n-1)]-1)` -/
def P1483229334585347477.Spec : Prop :=
  ∀ n, P1483229334585347477.a n = A174562 (n + 1)

end A174562

/-! ## A174562.P14249631734636374517

`A013655(A028242(n))`
-/

namespace A174562.P14249631734636374517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (A028242 n).toNat

end

end A174562.P14249631734636374517

namespace A174562

/-- `A013655(A028242(n))` -/
def P14249631734636374517.Spec : Prop :=
  ∀ n, P14249631734636374517.a n = A174562 (n + 1)

end A174562

/-! ## A174562.P14387811936553247329

`A013655(∑[A280193(n)])`
-/

namespace A174562.P14387811936553247329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A174562.P14387811936553247329

namespace A174562

/-- `A013655(∑[A280193(n)])` -/
def P14387811936553247329.Spec : Prop :=
  ∀ n, P14387811936553247329.a n = A174562 (n + 1)

end A174562

/-! ## A174562.P6309637094315351541

`A013655(Δ[A004652(n)])`
-/

namespace A174562.P6309637094315351541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (f1 (n + 1) - f1 n).toNat

end

end A174562.P6309637094315351541

namespace A174562

/-- `A013655(Δ[A004652(n)])` -/
def P6309637094315351541.Spec : Prop :=
  ∀ n, P6309637094315351541.a n = A174562 (n + 1)

end A174562

/-! ## A174562.P12738993626119543894

`A013655(A052938(n+1)-2)`
-/

namespace A174562.P12738993626119543894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (A052938 (n + 1) - 2).toNat

end

end A174562.P12738993626119543894

namespace A174562

/-- `A013655(A052938(n+1)-2)` -/
def P12738993626119543894.Spec : Prop :=
  ∀ n, P12738993626119543894.a n = A174562 (n + 1)

end A174562

/-! ## A174562.P6769636247313324542

`A013655(2-(A052938(n)-n))`
-/

namespace A174562.P6769636247313324542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (2 - (A052938 n - (n : ℤ))).toNat

end

end A174562.P6769636247313324542

namespace A174562

/-- `A013655(2-(A052938(n)-n))` -/
def P6769636247313324542.Spec : Prop :=
  ∀ n, P6769636247313324542.a n = A174562 (n + 1)

end A174562

/-! ## A174562.P1984678583695485731

`A053602(n+1)+A000032(A028242(n))`
-/

namespace A174562.P1984678583695485731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (n + 1) + A000032 (A028242 n).toNat

end

end A174562.P1984678583695485731

namespace A174562

/-- `A053602(n+1)+A000032(A028242(n))` -/
def P1984678583695485731.Spec : Prop :=
  ∀ n, P1984678583695485731.a n = A174562 (n + 1)

end A174562

/-! ## A174562.P16024295717366857797

`A013655(A004652(n+1)-A004652(n))`
-/

namespace A174562.P16024295717366857797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (A004652 (n + 1) - A004652 n).toNat

end

end A174562.P16024295717366857797

namespace A174562

/-- `A013655(A004652(n+1)-A004652(n))` -/
def P16024295717366857797.Spec : Prop :=
  ∀ n, P16024295717366857797.a n = A174562 (n + 1)

end A174562

/-! ## A174562.P13984173615143132466

`A013655(∑[A000035(n+1)]-A000035(n))`
-/

namespace A174562.P13984173615143132466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (∑ j ∈ Finset.range (n + 1), f1 j - A000035 n).toNat

end

end A174562.P13984173615143132466

namespace A174562

/-- `A013655(∑[A000035(n+1)]-A000035(n))` -/
def P13984173615143132466.Spec : Prop :=
  ∀ n, P13984173615143132466.a n = A174562 (n + 1)

end A174562

/-! ## A174562.P13863624496997600729

`A013655(log2(A135530(n)))`
-/

namespace A174562.P13863624496997600729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013655 (SequenceMachineLib.roundAway (Real.logb 2 (A135530 n : ℝ))).toNat

end

end A174562.P13863624496997600729

namespace A174562

/-- `A013655(log2(A135530(n)))` -/
def P13863624496997600729.Spec : Prop :=
  ∀ n, P13863624496997600729.a n = A174562 (n + 1)

end A174562

/-!
# A174565: Expansion of g.f. (1+3*x)/((1-x)*(1+3*x+4*x^2)).

The programs for A174565, the canonical program `A174565.P1379073765936799486` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174565 has offset 0).

The definition of A174565 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087168, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A174565.P1379073765936799486

`(1-A087168(n+1))/2`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A174565

/-- `(1-A087168(n+1))/2` -/
def P1379073765936799486.Spec : Prop :=
  ∀ n, P1379073765936799486.a n = (A174565 n : ℚ)

end A174565

/-! ## A174565.P5768177231325158470

`4*(1-a(n-2))-3*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A174565.P5768177231325158470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * (1 - a (n - 2)) - 3 * a (n - 1)

end

end A174565.P5768177231325158470

namespace A174565

/-- `4*(1-a(n-2))-3*a(n-1)` -/
def P5768177231325158470.Spec : Prop :=
  ∀ n, P5768177231325158470.a n = A174565 n

end A174565

/-! ## A174565.P8250902955556609709

`A077876(2*n)`
-/

namespace A174565.P8250902955556609709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077876 (2 * n)

end

end A174565.P8250902955556609709

namespace A174565

/-- `A077876(2*n)` -/
def P8250902955556609709.Spec : Prop :=
  ∀ n, P8250902955556609709.a n = A174565 n

end A174565

/-! ## A174565.P11765744593150590123

`A107443(2*n)`
-/

namespace A174565.P11765744593150590123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107443 (2 * n)

end

end A174565.P11765744593150590123

namespace A174565

/-- `A107443(2*n)` -/
def P11765744593150590123.Spec : Prop :=
  ∀ n, P11765744593150590123.a n = A174565 n

end A174565

/-! ## A174565.P15420810746142976472

`∑[A078050(2*n)]`
-/

namespace A174565.P15420810746142976472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078050 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174565.P15420810746142976472

namespace A174565

/-- `∑[A078050(2*n)]` -/
def P15420810746142976472.Spec : Prop :=
  ∀ n, P15420810746142976472.a n = A174565 n

end A174565

/-! ## A174565.P10394643162939663347

`-A078033(2*n+1)`
-/

namespace A174565.P10394643162939663347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A078033 (2 * n + 1)

end

end A174565.P10394643162939663347

namespace A174565

/-- `-A078033(2*n+1)` -/
def P10394643162939663347.Spec : Prop :=
  ∀ n, P10394643162939663347.a n = A174565 n

end A174565

/-! ## A174565.P8356401219184336761

`1-A105578(2*(n+1))`
-/

namespace A174565.P8356401219184336761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A105578 (2 * (n + 1))

end

end A174565.P8356401219184336761

namespace A174565

/-- `1-A105578(2*(n+1))` -/
def P8356401219184336761.Spec : Prop :=
  ∀ n, P8356401219184336761.a n = A174565 n

end A174565

/-! ## A174565.P12561121540193413482

`Δ[n-∑[A105578(2*n)]]`
-/

namespace A174565.P12561121540193413482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174565.P12561121540193413482

namespace A174565

/-- `Δ[n-∑[A105578(2*n)]]` -/
def P12561121540193413482.Spec : Prop :=
  ∀ n, P12561121540193413482.a n = A174565 n

end A174565

/-! ## A174565.P10285905902790788872

`(A169998(2*n+1)+1)/2`
-/

namespace A174565.P10285905902790788872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169998 (2 * n + 1) + 1 : ℚ) / 2

end

end A174565.P10285905902790788872

namespace A174565

/-- `(A169998(2*n+1)+1)/2` -/
def P10285905902790788872.Spec : Prop :=
  ∀ n, P10285905902790788872.a n = (A174565 n : ℚ)

end A174565

/-! ## A174565.P6553499982851314081

`A078050(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A174565.P6553499982851314081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A078050 (n + n) + a (n - 1)

end

end A174565.P6553499982851314081

namespace A174565

/-- `A078050(n+n)+a(n-1)` -/
def P6553499982851314081.Spec : Prop :=
  ∀ n, P6553499982851314081.a n = A174565 n

end A174565

/-! ## A174565.P8090815878982779908

`A105578(2*n)-A001607(2*n)`
-/

namespace A174565.P8090815878982779908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 (2 * n) - A001607 (2 * n)

end

end A174565.P8090815878982779908

namespace A174565

/-- `A105578(2*n)-A001607(2*n)` -/
def P8090815878982779908.Spec : Prop :=
  ∀ n, P8090815878982779908.a n = A174565 n

end A174565

/-! ## A174565.P13596936386766211145

`Δ[A077887(2*n)-A077912(2*n)]`
-/

namespace A174565.P13596936386766211145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077887 (2 * n) - A077912 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A174565.P13596936386766211145

namespace A174565

/-- `Δ[A077887(2*n)-A077912(2*n)]` -/
def P13596936386766211145.Spec : Prop :=
  ∀ n, P13596936386766211145.a n = A174565 n

end A174565

/-! ## A174565.P11383887578583571505

`A077912(2*n+1)+A077912(2*n)`
-/

namespace A174565.P11383887578583571505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077912 (2 * n + 1) + A077912 (2 * n)

end

end A174565.P11383887578583571505

namespace A174565

/-- `A077912(2*n+1)+A077912(2*n)` -/
def P11383887578583571505.Spec : Prop :=
  ∀ n, P11383887578583571505.a n = A174565 n

end A174565

/-! ## A174565.P11998782355412841495

`A110512(2*n+1)+A078033(2*n)`
-/

namespace A174565.P11998782355412841495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110512 (2 * n + 1) + A078033 (2 * n)

end

end A174565.P11998782355412841495

namespace A174565

/-- `A110512(2*n+1)+A078033(2*n)` -/
def P11998782355412841495.Spec : Prop :=
  ∀ n, P11998782355412841495.a n = A174565 n

end A174565

/-! ## A174565.P4822472700781670663

`A077963(2*n)-A077963(2*n+1)`
-/

namespace A174565.P4822472700781670663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077963 (2 * n) - A077963 (2 * n + 1)

end

end A174565.P4822472700781670663

namespace A174565

/-- `A077963(2*n)-A077963(2*n+1)` -/
def P4822472700781670663.Spec : Prop :=
  ∀ n, P4822472700781670663.a n = A174565 n

end A174565

/-! ## A174565.P15826537136749555414

`A078033(2*n)-A078020(2*n+1)`
-/

namespace A174565.P15826537136749555414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078033 (2 * n) - A078020 (2 * n + 1)

end

end A174565.P15826537136749555414

namespace A174565

/-- `A078033(2*n)-A078020(2*n+1)` -/
def P15826537136749555414.Spec : Prop :=
  ∀ n, P15826537136749555414.a n = A174565 n

end A174565

/-! ## A174565.P7527371380168097260

`A078020(2*n)+1-A105225(2*n)`
-/

namespace A174565.P7527371380168097260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 (2 * n) + (1 - A105225 (2 * n))

end

end A174565.P7527371380168097260

namespace A174565

/-- `A078020(2*n)+1-A105225(2*n)` -/
def P7527371380168097260.Spec : Prop :=
  ∀ n, P7527371380168097260.a n = A174565 n

end A174565

/-!
# A174566: Partial sums of A003214.

The programs for A174566, there is no canonical definition to state claims against.
-/

/-! ## A174566.P9177691149014430226

`∑[A003214(n)]`
-/

namespace A174566.P9177691149014430226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174566.P9177691149014430226

/-! ## A174566.P18030313457020827612

`A003214(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A174566.P18030313457020827612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003214 n + a (A023443 n).toNat

end

end A174566.P18030313457020827612

/-! ## A174566.P8914825464433552042

`a(n-1)+A003214(n)+A000007(n)` with `a(0)=1`
-/

namespace A174566.P8914825464433552042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A003214 n + A000007 n)

end

end A174566.P8914825464433552042

/-! ## A174566.P5775715711504707732

`A003214(n)+a(A123108(A004275(n)))` with `a(0)=1`
-/

namespace A174566.P5775715711504707732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A003214 n + a (A123108 (A004275 n).toNat).toNat

end

end A174566.P5775715711504707732

/-! ## A174566.P15723930164735331815

`a(n-1)+A003214(n)%A250119(A167614(n+1))` with `a(0)=1`
-/

namespace A174566.P15723930164735331815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A003214 n) (A250119 (A167614 (n + 1)).toNat)

end

end A174566.P15723930164735331815

/-!
# A174567: Numbers n such that sum of squares of digits of n is a power of 2.

The programs for A174567, there is no canonical definition to state claims against.
-/

/-! ## A174567.P10561209277920869305

`eq[1, A000120(A003132(n))]`
-/

namespace A174567.P10561209277920869305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174567.P10561209277920869305

/-! ## A174567.P10939653314040759715

`eq[1, A000120(A376270(n))]`
-/

namespace A174567.P10939653314040759715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A376270 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174567.P10939653314040759715

/-! ## A174567.P12203884850747543322

`eq[2, A001316(A055013(n))]`
-/

namespace A174567.P12203884850747543322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A055013 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A174567.P12203884850747543322

/-! ## A174567.P931107494561995718

`A000027(eq[1, A002487(A003132(n))])`
-/

namespace A174567.P931107494561995718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A003132 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A174567.P931107494561995718

/-! ## A174567.P16056341926474627099

`eq[A002487(A003132(n)), A236313(2*n+5)]`
-/

namespace A174567.P16056341926474627099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A003132 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236313 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174567.P16056341926474627099

/-!
# A174568: Numbers n such that phi(n) + sigma(n) = sigma(n + phi(n)).

The programs for A174568, there is no canonical definition to state claims against.
-/

/-! ## A174568.P8254953647236360724

`record[A137589(A137288(n+1))]`
-/

namespace A174568.P8254953647236360724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137589 (A137288 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174568.P8254953647236360724

/-!
# A174571: a(4n)=n, a(4n+1)=4, a(4n+2)=1, a(4n+3)=4.

The programs for A174571, the canonical program `A174571.P3761075605204520371` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174571 has offset 0).

The definition of A174571 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174571.P3761075605204520371

`2*a(n-4)-a(n-8)` with `a(0)=0, a(1)=4, a(2)=1, a(3)=4, a(4)=1, a(5)=4, a(6)=1, a(7)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174571

/-- `2*a(n-4)-a(n-8)` -/
def P3761075605204520371.Spec : Prop :=
  ∀ n, P3761075605204520371.a n = A174571 n

theorem P3761075605204520371.correct : P3761075605204520371.Spec := by
  intro n
  simp only [A174571]

end A174571

/-! ## A174571.P18282354400535970663

`A188134(gcd(n², ∑[and(4, n²)]))`
-/

namespace A174571.P18282354400535970663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 4 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (Nat.gcd (n ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A174571.P18282354400535970663

namespace A174571

/-- `A188134(gcd(n², ∑[and(4, n²)]))` -/
def P18282354400535970663.Spec : Prop :=
  ∀ n, P18282354400535970663.a n = A174571 n

end A174571

/-! ## A174571.P1695436228042758059

`A006370(gcd(n, A004524(n)))`
-/

namespace A174571.P1695436228042758059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (Int.gcd (n : ℤ) (A004524 n))

end

end A174571.P1695436228042758059

namespace A174571

/-- `A006370(gcd(n, A004524(n)))` -/
def P1695436228042758059.Spec : Prop :=
  ∀ n, P1695436228042758059.a n = A174571 n

end A174571

/-! ## A174571.P7617119647064451819

`gcd(n+1-A097362(A097362(n+1)), and(n, n+1))`
-/

namespace A174571.P7617119647064451819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1 : ℤ) - A097362 (A097362 (n + 1)).toNat) (Nat.land n (n + 1) : ℤ)

end

end A174571.P7617119647064451819

namespace A174571

/-- `gcd(n+1-A097362(A097362(n+1)), and(n, n+1))` -/
def P7617119647064451819.Spec : Prop :=
  ∀ n, (P7617119647064451819.a n : ℤ) = A174571 n

end A174571

/-! ## A174571.P17930128002071443238

`A057979(A057979(n+1)+A000034(n)^3)`
-/

namespace A174571.P17930128002071443238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A057979 (n + 1) + A000034 n ^ 3).toNat

end

end A174571.P17930128002071443238

namespace A174571

/-- `A057979(A057979(n+1)+A000034(n)^3)` -/
def P17930128002071443238.Spec : Prop :=
  ∀ n, P17930128002071443238.a n = A174571 n

end A174571

/-! ## A174571.P5180634908996707509

`A174239(n+3)-A029579(A026741(n))`
-/

namespace A174571.P5180634908996707509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174239 (n + 3) - A029579 (A026741 n).toNat

end

end A174571.P5180634908996707509

namespace A174571

/-- `A174239(n+3)-A029579(A026741(n))` -/
def P5180634908996707509.Spec : Prop :=
  ∀ n, P5180634908996707509.a n = A174571 n

end A174571

/-!
# A174572: Highly abundant odd numbers: odd n such that sigma(n) is a record.

The programs for A174572, there is no canonical definition to state claims against.
-/

/-! ## A174572.P16207246614583054154

`record[A171435(or(2, A128689(n+1)))]`
-/

namespace A174572.P16207246614583054154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (Int.lor 2 (A128689 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174572.P16207246614583054154

/-! ## A174572.P5141629277575305274

`record[A302044(A128689(n+2))]`
-/

namespace A174572.P5141629277575305274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (A128689 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174572.P5141629277575305274

/-! ## A174572.P10127042809658555536

`record[A246277(A128689(n+3))]`
-/

namespace A174572.P10127042809658555536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A128689 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174572.P10127042809658555536

/-! ## A174572.P12701756520062464315

`record[A032742(or(2, A128689(n+1)))]`
-/

namespace A174572.P12701756520062464315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (Int.lor 2 (A128689 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174572.P12701756520062464315

/-! ## A174572.P15754320414960873724

`record[A004525(A128689(A037037(n+1)))]`
-/

namespace A174572.P15754320414960873724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A128689 (A037037 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174572.P15754320414960873724

/-!
# A174573: Partial sums of A049369.

The programs for A174573, there is no canonical definition to state claims against.
-/

/-! ## A174573.P8480711208251245350

`∑[A049369(n+1)]`
-/

namespace A174573.P8480711208251245350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049369 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174573.P8480711208251245350

/-! ## A174573.P3118616460034895966

`Δ[A173310(n)]-1`
-/

namespace A174573.P3118616460034895966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A174573.P3118616460034895966

/-! ## A174573.P5182954622128928376

`∑[abs(Δ[A005470(n)])]`
-/

namespace A174573.P5182954622128928376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005470 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174573.P5182954622128928376

/-! ## A174573.P6618003705046607487

`A005470(n+1)-1`
-/

namespace A174573.P6618003705046607487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005470 (n + 1) - 1

end

end A174573.P6618003705046607487

/-! ## A174573.P14808032645336869068

`record[Δ[A005470(∑[n+1]%(n+2))]]`
-/

namespace A174573.P14808032645336869068
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005470 ((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A174573.P14808032645336869068

/-!
# A174574: Partial sums of A065363.

The programs for A174574, the canonical program `A174574.P9281296430949688215` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174574 has offset 0).

The definition of A174574 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174574.P9281296430949688215

`a(n-1)+A065363(n)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A174574

/-- `a(n-1)+A065363(n)` -/
def P9281296430949688215.Spec : Prop :=
  ∀ n, P9281296430949688215.a n = A174574 n

theorem P9281296430949688215.correct : P9281296430949688215.Spec := by
  intro n
  simp only [A174574]

end A174574

/-! ## A174574.P18026544445324690183

`∑[A065363(n)]`
-/

namespace A174574.P18026544445324690183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174574.P18026544445324690183

namespace A174574

/-- `∑[A065363(n)]` -/
def P18026544445324690183.Spec : Prop :=
  ∀ n, P18026544445324690183.a n = A174574 n

end A174574

/-! ## A174574.P12352813379120958912

`n-A343754(n)`
-/

namespace A174574.P12352813379120958912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A343754 n

end

end A174574.P12352813379120958912

namespace A174574

/-- `n-A343754(n)` -/
def P12352813379120958912.Spec : Prop :=
  ∀ n, P12352813379120958912.a n = A174574 n

end A174574

/-! ## A174574.P3720208602658383460

`∑[A350229(n)-n]`
-/

namespace A174574.P3720208602658383460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350229 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174574.P3720208602658383460

namespace A174574

/-- `∑[A350229(n)-n]` -/
def P3720208602658383460.Spec : Prop :=
  ∀ n, P3720208602658383460.a n = A174574 n

end A174574

/-! ## A174574.P2237008311656709060

`∑[n-∑[2*A253786(n)]]`
-/

namespace A174574.P2237008311656709060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253786 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174574.P2237008311656709060

namespace A174574

/-- `∑[n-∑[2*A253786(n)]]` -/
def P2237008311656709060.Spec : Prop :=
  ∀ n, P2237008311656709060.a n = A174574 n

end A174574

/-! ## A174574.P15579966597273903056

`∑[A134024(n)-A134022(n)]`
-/

namespace A174574.P15579966597273903056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 n - A134022 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174574.P15579966597273903056

namespace A174574

/-- `∑[A134024(n)-A134022(n)]` -/
def P15579966597273903056.Spec : Prop :=
  ∀ n, P15579966597273903056.a n = A174574 n

end A174574

/-! ## A174574.P12310457548157031434

`∑[2*A134024(n)-A005812(n)]`
-/

namespace A174574.P12310457548157031434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A134024 n - A005812 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174574.P12310457548157031434

namespace A174574

/-- `∑[2*A134024(n)-A005812(n)]` -/
def P12310457548157031434.Spec : Prop :=
  ∀ n, P12310457548157031434.a n = A174574 n

end A174574

/-! ## A174574.P9314929747756357297

`∑[A065359(A006288(n))]`
-/

namespace A174574.P9314929747756357297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A006288 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174574.P9314929747756357297

namespace A174574

/-- `∑[A065359(A006288(n))]` -/
def P9314929747756357297.Spec : Prop :=
  ∀ n, P9314929747756357297.a n = A174574 n

end A174574

/-! ## A174574.P525861145344168360

`∑[A053735(2*n)-A053735(n)]`
-/

namespace A174574.P525861145344168360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (2 * n) - A053735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174574.P525861145344168360

namespace A174574

/-- `∑[A053735(2*n)-A053735(n)]` -/
def P525861145344168360.Spec : Prop :=
  ∀ n, P525861145344168360.a n = A174574 n

end A174574

/-! ## A174574.P18036440517998928874

`∑[A096288(2*n)-A096288(n)]`
-/

namespace A174574.P18036440517998928874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096288 (2 * n) - A096288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174574.P18036440517998928874

namespace A174574

/-- `∑[A096288(2*n)-A096288(n)]` -/
def P18036440517998928874.Spec : Prop :=
  ∀ n, P18036440517998928874.a n = A174574 n

end A174574

/-! ## A174574.P9395412216233681311

`∑[A180017(2*n)-A180017(n)]`
-/

namespace A174574.P9395412216233681311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180017 (2 * n) - A180017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174574.P9395412216233681311

namespace A174574

/-- `∑[A180017(2*n)-A180017(n)]` -/
def P9395412216233681311.Spec : Prop :=
  ∀ n, P9395412216233681311.a n = A174574 n

end A174574

/-! ## A174574.P15214169010401287802

`n-val(A131889(n), 3)`
-/

namespace A174574.P15214169010401287802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (A131889 n).toNat 3 : ℤ)

end

end A174574.P15214169010401287802

namespace A174574

/-- `n-val(A131889(n), 3)` -/
def P15214169010401287802.Spec : Prop :=
  ∀ n, P15214169010401287802.a n = A174574 n

end A174574

/-!
# A174575: a(n) = floor( (alpha^n-beta^n)/(alpha-beta) ), where alpha=(1 + 3^(1/4))/2 and beta = (1 - 3^(1/4))/2.

The programs for A174575, there is no canonical definition to state claims against.
-/

/-! ## A174575.P6064778198647880378

`A003056(A103221(∑[A072493(n+1)]))`
-/

namespace A174575.P6064778198647880378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A103221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A174575.P6064778198647880378

/-! ## A174575.P8805421637427774371

`ceil(A001109(n)/A096267(n+1))`
-/

namespace A174575.P8805421637427774371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001109 n : ℚ) / (A096267 (n + 1) : ℚ)⌉

end

end A174575.P8805421637427774371

/-! ## A174575.P9916581828559474108

`A008621(A000700(2*(n+1)))%A120924(2*(n+1))`
-/

namespace A174575.P9916581828559474108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008621 (A000700 (2 * (n + 1))).toNat) (A120924 (2 * (n + 1)))

end

end A174575.P9916581828559474108

/-! ## A174575.P5945547146830379536

`A048766(floor(sqrt(A084081(n))))`
-/

namespace A174575.P5945547146830379536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.sqrt (A084081 n)).toNat

end

end A174575.P5945547146830379536

/-! ## A174575.P11844975635890495126

`A048766(round(sqrt(A084081(n))))`
-/

namespace A174575.P11844975635890495126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway (Real.sqrt (A084081 n : ℝ))).toNat

end

end A174575.P11844975635890495126

/-!
# A174576: a(n) = Floor[(alpha^n-beta^n)(alpha-beta)], with alpha = (1 + Sqrt(a0))/2; beta = (1 - Sqrt(a0))/2; a0=(1 + Sqrt(5))/2.

The programs for A174576, there is no canonical definition to state claims against.
-/

/-! ## A174576.P15747184485739921711

`A048766(round(A001634(n)/3))`
-/

namespace A174576.P15747184485739921711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (SequenceMachineLib.roundAway ((A001634 n : ℚ) / 3)).toNat

end

end A174576.P15747184485739921711

/-! ## A174576.P1387301590578171167

`A048766(Δ[A216656(n+3)])`
-/

namespace A174576.P1387301590578171167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216656 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (f1 (n + 1) - f1 n).toNat

end

end A174576.P1387301590578171167

/-! ## A174576.P11509614023255608777

`A048766(A216656(n+1))%(n+1)`
-/

namespace A174576.P11509614023255608777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048766 (A216656 (n + 1)).toNat) (n + 1 : ℤ)

end

end A174576.P11509614023255608777

/-! ## A174576.P996767027296141494

`A048766(A216656(n+1)%A154638(n))`
-/

namespace A174576.P996767027296141494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.tmod (A216656 (n + 1)) (A154638 n)).toNat

end

end A174576.P996767027296141494

/-! ## A174576.P1252161988607092552

`A048766(char[A007318(n)]*A216656(n+1))`
-/

namespace A174576.P1252161988607092552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A216656 (n + 1)).toNat

end

end A174576.P1252161988607092552

/-!
# A174577: Expansion of 1/(1-x^2-x^3+x^7-x^8+x^10).

The programs for A174577, the canonical program `A174577.P13621693957498328285` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174577 has offset 0).

The definition of A174577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1027 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A174577.P13621693957498328285

`A245369(n)+a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A174577

/-- `A245369(n)+a(n-2)` -/
def P13621693957498328285.Spec : Prop :=
  ∀ n, P13621693957498328285.a n = A174577 n

theorem P13621693957498328285.correct : P13621693957498328285.Spec := by
  intro n
  simp only [A174577]

end A174577

/-! ## A174577.P5313597147106783072

`∑[A245369(n)-a(n-A000038(n)-1)]` with `a(0)=1`
-/

namespace A174577.P5313597147106783072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A245369 n - f1 ((n : ℤ) - A000038 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174577.P5313597147106783072

namespace A174577

/-- `∑[A245369(n)-a(n-A000038(n)-1)]` -/
def P5313597147106783072.Spec : Prop :=
  ∀ n, P5313597147106783072.a n = A174577 n

end A174577

/-!
# A174578: Expansion of g.f.: -1/(-1 + x + x^4 - x^10 + x^13 + x^14).

The programs for A174578, there is no canonical definition to state claims against.
-/

/-! ## A174578.P1108506779251424799

`A356944(A160333(n))`
-/

namespace A174578.P1108506779251424799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356944 (A160333 n).toNat

end

end A174578.P1108506779251424799

/-! ## A174578.P16750403954898492892

`A357875(A160333(n)%A022127(n))`
-/

namespace A174578.P16750403954898492892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357875 (Int.tmod (A160333 n) (A022127 n)).toNat

end

end A174578.P16750403954898492892

/-! ## A174578.P13690611394558145850

`A357875(A160333(n))%A060410(n+1)`
-/

namespace A174578.P13690611394558145850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357875 (A160333 n).toNat) (A060410 (n + 1))

end

end A174578.P13690611394558145850

/-! ## A174578.P478187245120612329

`A001222(A124114(n+1))*A357875(A160333(n))`
-/

namespace A174578.P478187245120612329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A124114 (n + 1)).toNat * A357875 (A160333 n).toNat

end

end A174578.P478187245120612329

/-!
# A174579: Number of spanning trees in the n-triangular grid graph.

The programs for A174579, there is no canonical definition to state claims against.
-/

/-! ## A174579.P16126030834822419409

`A000244(n)*A351888(n+1)`
-/

namespace A174579.P16126030834822419409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n * A351888 (n + 1)

end

end A174579.P16126030834822419409

/-! ## A174579.P7403594146759113294

`∑[A025192(n)]*A351888(n+1)`
-/

namespace A174579.P7403594146759113294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A351888 (n + 1)

end

end A174579.P7403594146759113294

/-! ## A174579.P10265583067987502510

`Δ[A003462(n)]*A351888(n+1)`
-/

namespace A174579.P10265583067987502510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A351888 (n + 1)

end

end A174579.P10265583067987502510

/-! ## A174579.P4852325224705931489

`record[A175840(n)]*A351888(n+1)`
-/

namespace A174579.P4852325224705931489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A351888 (n + 1)

end

end A174579.P4852325224705931489

/-! ## A174579.P6114634504634942145

`A175840(A000217(n))*A351888(n+1)`
-/

namespace A174579.P6114634504634942145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 (A000217 n).toNat * A351888 (n + 1)

end

end A174579.P6114634504634942145

/-!
# A174583: a(k) is the least n such that the concatenation (n - k)"n is a prime number, for k >= 0.

The programs for A174583, there is no canonical definition to state claims against.
-/

/-! ## A174583.P14278502491886038450

`A032662(n)+n`
-/

namespace A174583.P14278502491886038450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032662 n + (n : ℤ)

end

end A174583.P14278502491886038450

/-! ## A174583.P11203430290291652195

`A011776(A032663(n+1)-n)+n`
-/

namespace A174583.P11203430290291652195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011776 (A032663 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A174583.P11203430290291652195

/-! ## A174583.P2733615986318318144

`A051119(A032663(n+1)-n)+n`
-/

namespace A174583.P2733615986318318144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A032663 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A174583.P2733615986318318144

/-! ## A174583.P14544651445526507311

`A052128(A032663(n+1)-n)+n`
-/

namespace A174583.P14544651445526507311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052128 (A032663 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A174583.P14544651445526507311

/-!
# A174586: Number of n X n (0,1) matrices with two 1's in each row having positive permanent.

The programs for A174586, there is no canonical definition to state claims against.
-/

/-! ## A174586.P9146437015898282968

`A051493(A047993(n+1)+A001720(n+4))`
-/

namespace A174586.P9146437015898282968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051493 (A047993 (n + 1) + A001720 (n + 4)).toNat

end

end A174586.P9146437015898282968

/-!
# A174587: Triangle read by rows: T(n,k) = S(n,k) - S(n,0) + 1 where S(n,k) = Sum_{j=0..n} (-1)^j * (k-j)^n * Eulerian1(n+1, j) with S(0,k)=1.

The programs for A174587, there is no canonical definition to state claims against.
-/

/-! ## A174587.P2043270477825412859

`and(A015143(n), A047369(A001572(n)))`
-/

namespace A174587.P2043270477825412859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A015143 n) (A047369 (A001572 n).toNat)

end

end A174587.P2043270477825412859

/-! ## A174587.P1158299685214772371

`A364722(A086617(n)^(A086617(n)-1))`
-/

namespace A174587.P1158299685214772371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364722 (SequenceMachineLib.roundAway ((A086617 n : ℚ) ^ (A086617 n - 1 : ℤ))).toNat

end

end A174587.P1158299685214772371

/-! ## A174587.P2737740987417544243

`A246674(A341531(n)²)`
-/

namespace A174587.P2737740987417544243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246674 (A341531 n ^ 2).toNat

end

end A174587.P2737740987417544243

/-! ## A174587.P1879521565317874390

`A248601(A279787(n+1))`
-/

namespace A174587.P1879521565317874390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248601 (A279787 (n + 1)).toNat

end

end A174587.P1879521565317874390

/-! ## A174587.P1810334774401594110

`A124389(n*A291317(n+1))`
-/

namespace A174587.P1810334774401594110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124389 ((n : ℤ) * A291317 (n + 1)).toNat

end

end A174587.P1810334774401594110

/-!
# A174588: Triangle read by rows: T(n,k) = S(n,k) - S(n,0) + 1 where S(n,k) = Sum_{j=0..n} (-1)^j * (k-j)^n * binomial(n, j)* Eulerian1(n+1, j) with S(0,k)=1.

The programs for A174588, there is no canonical definition to state claims against.
-/

/-! ## A174588.P1388279821508177636

`A008621(A158303(n)!)`
-/

namespace A174588.P1388279821508177636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Nat.factorial (A158303 n).toNat)

end

end A174588.P1388279821508177636

/-! ## A174588.P3120324794069435654

`A008621(A027144(n+1)!)`
-/

namespace A174588.P3120324794069435654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Nat.factorial (A027144 (n + 1)).toNat)

end

end A174588.P3120324794069435654

/-! ## A174588.P14325129410069863448

`A241985(A134409(floor(n/ϕ)!))`
-/

namespace A174588.P14325129410069863448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241985 (A134409 (Nat.factorial ⌊(n : ℝ) / Real.goldenRatio⌋.toNat)).toNat

end

end A174588.P14325129410069863448

/-! ## A174588.P7338171069710225095

`A038502(A102877(n*A173920(n)))`
-/

namespace A174588.P7338171069710225095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A102877 ((n : ℤ) * A173920 n).toNat).toNat

end

end A174588.P7338171069710225095

/-! ## A174588.P17721506845446054959

`A038502(A102877(n)^A173920(n))`
-/

namespace A174588.P17721506845446054959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (SequenceMachineLib.roundAway ((A102877 n : ℚ) ^ (A173920 n : ℤ))).toNat

end

end A174588.P17721506845446054959

/-!
# A174589: Number of directed Hamiltonian cycles in the n X n X n triangular grid.

The programs for A174589, there is no canonical definition to state claims against.
-/

/-! ## A174589.P11642488301008579167

`(ceil(sin(n)²)+1)*A112676(n+1)`
-/

namespace A174589.P11642488301008579167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌈Real.sin (n : ℝ) ^ 2⌉ + 1) * A112676 (n + 1)

end

end A174589.P11642488301008579167

/-! ## A174589.P1439588309964359640

`A036452(n+1)*A112676(n+1)`
-/

namespace A174589.P1439588309964359640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036452 (n + 1) * A112676 (n + 1)

end

end A174589.P1439588309964359640

/-! ## A174589.P9543431005527521096

`A014963(A001316(n))*A112676(n+1)`
-/

namespace A174589.P9543431005527521096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001316 n).toNat * A112676 (n + 1)

end

end A174589.P9543431005527521096

/-! ## A174589.P4776564401394154813

`A001221(2*A000040(n+1))*A112676(n+1)`
-/

namespace A174589.P4776564401394154813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * A000040 (n + 1)).toNat * A112676 (n + 1)

end

end A174589.P4776564401394154813

/-! ## A174589.P10819020957201735411

`A014963(A000079(n))*A112676(n+1)`
-/

namespace A174589.P10819020957201735411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000079 n).toNat * A112676 (n + 1)

end

end A174589.P10819020957201735411

/-!
# A174590: a(n) = (k-1)/lambda(k), the index of the n-th Carmichael number k.

The programs for A174590, there is no canonical definition to state claims against.
-/

/-! ## A174590.P1743614818386122051

`(A002997(n+1)-1)/A306414(n+1)`
-/

namespace A174590.P1743614818386122051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002997 (n + 1) - 1 : ℚ) / (A306414 (n + 1) : ℚ)

end

end A174590.P1743614818386122051

/-! ## A174590.P9036450374692172429

`floor(A002997(n+1)/A306414(n+1))`
-/

namespace A174590.P9036450374692172429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002997 (n + 1) : ℚ) / (A306414 (n + 1) : ℚ)⌋

end

end A174590.P9036450374692172429

/-! ## A174590.P11312824858842726487

`round(A002997(A000027(n+1))/A306414(n+1))`
-/

namespace A174590.P11312824858842726487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A002997 (A000027 (n + 1)).toNat : ℚ) / (A306414 (n + 1) : ℚ))

end

end A174590.P11312824858842726487

/-! ## A174590.P16789099077435797537

`floor(A081703(n+1)*A141710(n+1)/A306414(n+1))`
-/

namespace A174590.P16789099077435797537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A081703 (n + 1) * A141710 (n + 1) : ℚ) / (A306414 (n + 1) : ℚ)⌋

end

end A174590.P16789099077435797537

/-! ## A174590.P8023298920156383912

`(∪[A087788(n+1), A141711(n+1)]-1)/A306414(n+1)`
-/

namespace A174590.P8023298920156383912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141711 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1 : ℚ) / (A306414 (n + 1) : ℚ)

end

end A174590.P8023298920156383912

/-! ## A174590.P16430375783977004120

`A028310(round(A002997(n+1)/A306414(n+1)))`
-/

namespace A174590.P16430375783977004120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A002997 (n + 1) : ℚ) / (A306414 (n + 1) : ℚ))).toNat

end

end A174590.P16430375783977004120

/-!
# A174592: Numbers n such that n^2 + 2*(n+2)^2 is a square.

The programs for A174592, the canonical program `A174592.P9457635710116252661` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174592 has offset 1).

The definition of A174592 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174592.P9457635710116252661

`15*a(n-1)-15*a(n-2)+a(n-3)` with `a(0)=2, a(1)=46, a(2)=658`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174592

/-- `15*a(n-1)-15*a(n-2)+a(n-3)` -/
def P9457635710116252661.Spec : Prop :=
  ∀ n, P9457635710116252661.a n = A174592 (n + 1)

theorem P9457635710116252661.correct : P9457635710116252661.Spec := by
  intro n
  simp only [A174592, Nat.add_sub_cancel]

end A174592

/-! ## A174592.P691616585342767941

`A239450(n+2)-1`
-/

namespace A174592.P691616585342767941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239450 (n + 2) - 1

end

end A174592.P691616585342767941

namespace A174592

/-- `A239450(n+2)-1` -/
def P691616585342767941.Spec : Prop :=
  ∀ n, P691616585342767941.a n = A174592 (n + 1)

end A174592

/-! ## A174592.P7673592467983843243

`2*A217233(Δ[n²])`
-/

namespace A174592.P7673592467983843243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217233 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A174592.P7673592467983843243

namespace A174592

/-- `2*A217233(Δ[n²])` -/
def P7673592467983843243.Spec : Prop :=
  ∀ n, P7673592467983843243.a n = A174592 (n + 1)

end A174592

/-! ## A174592.P11816893951208644465

`2*(A081065(n+1)-1)`
-/

namespace A174592.P11816893951208644465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081065 (n + 1) - 1)

end

end A174592.P11816893951208644465

namespace A174592

/-- `2*(A081065(n+1)-1)` -/
def P11816893951208644465.Spec : Prop :=
  ∀ n, P11816893951208644465.a n = A174592 (n + 1)

end A174592

/-! ## A174592.P1935978493558219746

`∑[2*A003699(2*n+1)]`
-/

namespace A174592.P1935978493558219746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003699 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A174592.P1935978493558219746

namespace A174592

/-- `∑[2*A003699(2*n+1)]` -/
def P1935978493558219746.Spec : Prop :=
  ∀ n, P1935978493558219746.a n = A174592 (n + 1)

end A174592

/-! ## A174592.P14020261170378022872

`2*(2*A046174(n+1)-1)`
-/

namespace A174592.P14020261170378022872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A046174 (n + 1) - 1)

end

end A174592.P14020261170378022872

namespace A174592

/-- `2*(2*A046174(n+1)-1)` -/
def P14020261170378022872.Spec : Prop :=
  ∀ n, P14020261170378022872.a n = A174592 (n + 1)

end A174592

/-! ## A174592.P7465755486501048630

`2*(A028231(n)+A001353(n)²)`
-/

namespace A174592.P7465755486501048630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028231 n + A001353 n ^ 2)

end

end A174592.P7465755486501048630

namespace A174592

/-- `2*(A028231(n)+A001353(n)²)` -/
def P7465755486501048630.Spec : Prop :=
  ∀ n, P7465755486501048630.a n = A174592 (n + 1)

end A174592

/-! ## A174592.P2753618156566882296

`A011916(n+1)+A011916(n)-1`
-/

namespace A174592.P2753618156566882296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011916 (n + 1) + (A011916 n - 1)

end

end A174592.P2753618156566882296

namespace A174592

/-- `A011916(n+1)+A011916(n)-1` -/
def P2753618156566882296.Spec : Prop :=
  ∀ n, P2753618156566882296.a n = A174592 (n + 1)

end A174592

/-! ## A174592.P15020673165844566076

`2*(A045899(n+1)+A028230(n+1))`
-/

namespace A174592.P15020673165844566076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A045899 (n + 1) + A028230 (n + 1))

end

end A174592.P15020673165844566076

namespace A174592

/-- `2*(A045899(n+1)+A028230(n+1))` -/
def P15020673165844566076.Spec : Prop :=
  ∀ n, P15020673165844566076.a n = A174592 (n + 1)

end A174592

/-!
# A174595: a(n) = 5*n^2/8 - n + 1/2 + (-1)^n*(-3*n^2/8 + n - 1/2).

The programs for A174595, the canonical program `A174595.P557388260933148411` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A174595 has offset 0).

The definition of A174595 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A174595.P557388260933148411

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=4, a(4)=4, a(5)=16`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A174595

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P557388260933148411.Spec : Prop :=
  ∀ n, P557388260933148411.a n = A174595 n

theorem P557388260933148411.correct : P557388260933148411.Spec := by
  intro n
  simp only [A174595]

end A174595

/-! ## A174595.P13964054834183259847

`A029578(n)²`
-/

namespace A174595.P13964054834183259847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 n ^ 2

end

end A174595.P13964054834183259847

namespace A174595

/-- `A029578(n)²` -/
def P13964054834183259847.Spec : Prop :=
  ∀ n, P13964054834183259847.a n = A174595 n

end A174595

/-! ## A174595.P4305274625406673699

`floor((1-n)/gcd(2, n))²`
-/

namespace A174595.P4305274625406673699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - (n : ℤ) : ℚ) / (Nat.gcd 2 n : ℚ)⌋ ^ 2

end

end A174595.P4305274625406673699

namespace A174595

/-- `floor((1-n)/gcd(2, n))²` -/
def P4305274625406673699.Spec : Prop :=
  ∀ n, P4305274625406673699.a n = A174595 n

end A174595

/-! ## A174595.P3042437176453494001

`floor((n-1)/or(n, -2))²`
-/

namespace A174595.P3042437176453494001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℚ) / (Int.lor (n : ℤ) (-2) : ℚ)⌋ ^ 2

end

end A174595.P3042437176453494001

namespace A174595

/-- `floor((n-1)/or(n, -2))²` -/
def P3042437176453494001.Spec : Prop :=
  ∀ n, P3042437176453494001.a n = A174595 n

end A174595

/-! ## A174595.P7487350608156067336

`(1-lcm(2, xor(n, -2))/2)²`
-/

namespace A174595.P7487350608156067336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (Int.lcm 2 (Int.xor (n : ℤ) (-2)) : ℚ) / 2) ^ 2

end

end A174595.P7487350608156067336

namespace A174595

/-- `(1-lcm(2, xor(n, -2))/2)²` -/
def P7487350608156067336.Spec : Prop :=
  ∀ n, P7487350608156067336.a n = (A174595 n : ℚ)

end A174595

/-! ## A174595.P16865227810355439188

`floor((n-1)/(and(1, n)-2))²`
-/

namespace A174595.P16865227810355439188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℚ) / ((Nat.land 1 n : ℤ) - 2 : ℚ)⌋ ^ 2

end

end A174595.P16865227810355439188

namespace A174595

/-- `floor((n-1)/(and(1, n)-2))²` -/
def P16865227810355439188.Spec : Prop :=
  ∀ n, P16865227810355439188.a n = A174595 n

end A174595

/-! ## A174595.P7166240132972169678

`floor(n/2)²*4^(n%2)`
-/

namespace A174595.P7166240132972169678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ ^ 2 * (4 ^ (n % 2) : ℤ)

end

end A174595.P7166240132972169678

namespace A174595

/-- `floor(n/2)²*4^(n%2)` -/
def P7166240132972169678.Spec : Prop :=
  ∀ n, P7166240132972169678.a n = A174595 n

end A174595

/-! ## A174595.P13884160916922178797

`((n/2)^∑[(-1)^n]-n)²`
-/

namespace A174595.P13884160916922178797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℚ) / 2) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ) - (n : ℚ)) ^ 2

end

end A174595.P13884160916922178797

namespace A174595

/-- `((n/2)^∑[(-1)^n]-n)²` -/
def P13884160916922178797.Spec : Prop :=
  ∀ n, P13884160916922178797.a n = (A174595 n : ℚ)

end A174595

/-! ## A174595.P12779235290672007701

`A008794(n)*A010685(n)`
-/

namespace A174595.P12779235290672007701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n * A010685 n

end

end A174595.P12779235290672007701

namespace A174595

/-- `A008794(n)*A010685(n)` -/
def P12779235290672007701.Spec : Prop :=
  ∀ n, P12779235290672007701.a n = A174595 n

end A174595

/-! ## A174595.P16000933113032192556

`A000034(n)²*A008794(n)`
-/

namespace A174595.P16000933113032192556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A008794 n

end

end A174595.P16000933113032192556

namespace A174595

/-- `A000034(n)²*A008794(n)` -/
def P16000933113032192556.Spec : Prop :=
  ∀ n, P16000933113032192556.a n = A174595 n

end A174595

/-! ## A174595.P768020950479730477

`A004526(n)²*A010685(n)`
-/

namespace A174595.P768020950479730477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2 * A010685 n

end

end A174595.P768020950479730477

namespace A174595

/-- `A004526(n)²*A010685(n)` -/
def P768020950479730477.Spec : Prop :=
  ∀ n, P768020950479730477.a n = A174595 n

end A174595

/-! ## A174595.P6288331842096163365

`(A010674(n)+1)*A004526(n)²`
-/

namespace A174595.P6288331842096163365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010674 n + 1) * A004526 n ^ 2

end

end A174595.P6288331842096163365

namespace A174595

/-- `(A010674(n)+1)*A004526(n)²` -/
def P6288331842096163365.Spec : Prop :=
  ∀ n, P6288331842096163365.a n = A174595 n

end A174595

/-! ## A174595.P15671793680162179852

`(A029578(n+1)-A097140(n))*A029578(n)`
-/

namespace A174595.P15671793680162179852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A029578 (n + 1) - A097140 n) * A029578 n

end

end A174595.P15671793680162179852

namespace A174595

/-- `(A029578(n+1)-A097140(n))*A029578(n)` -/
def P15671793680162179852.Spec : Prop :=
  ∀ n, P15671793680162179852.a n = A174595 n

end A174595

/-! ## A174595.P7481726719741409378

`A000290(n-A057979(n+1))`
-/

namespace A174595.P7481726719741409378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((n : ℤ) - A057979 (n + 1)).toNat

end

end A174595.P7481726719741409378

namespace A174595

/-- `A000290(n-A057979(n+1))` -/
def P7481726719741409378.Spec : Prop :=
  ∀ n, P7481726719741409378.a n = A174595 n

end A174595

/-! ## A174595.P16358899758722166471

`Δ[A211538(n+1)]*A029578(n)`
-/

namespace A174595.P16358899758722166471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A029578 n

end

end A174595.P16358899758722166471

namespace A174595

/-- `Δ[A211538(n+1)]*A029578(n)` -/
def P16358899758722166471.Spec : Prop :=
  ∀ n, P16358899758722166471.a n = A174595 n

end A174595

/-! ## A174595.P16458965920438729867

`(A211538(n+2)-A211538(n+1))*A029578(n)`
-/

namespace A174595.P16458965920438729867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A211538 (n + 2) - A211538 (n + 1)) * A029578 n

end

end A174595.P16458965920438729867

namespace A174595

/-- `(A211538(n+2)-A211538(n+1))*A029578(n)` -/
def P16458965920438729867.Spec : Prop :=
  ∀ n, P16458965920438729867.a n = A174595 n

end A174595

/-! ## A174595.P16421005775702377014

`A000290(n-A174571(2*n))`
-/

namespace A174595.P16421005775702377014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 ((n : ℤ) - A174571 (2 * n)).toNat

end

end A174595.P16421005775702377014

namespace A174595

/-- `A000290(n-A174571(2*n))` -/
def P16421005775702377014.Spec : Prop :=
  ∀ n, P16421005775702377014.a n = A174595 n

end A174595

/-! ## A174595.P5335253452853263923

`A004652(2*A029578(n))`
-/

namespace A174595.P5335253452853263923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A029578 n).toNat

end

end A174595.P5335253452853263923

namespace A174595

/-- `A004652(2*A029578(n))` -/
def P5335253452853263923.Spec : Prop :=
  ∀ n, P5335253452853263923.a n = A174595 n

end A174595

/-! ## A174595.P4568234172796765849

`A008794(2*A029578(n))`
-/

namespace A174595.P4568234172796765849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 (2 * A029578 n).toNat

end

end A174595.P4568234172796765849

namespace A174595

/-- `A008794(2*A029578(n))` -/
def P4568234172796765849.Spec : Prop :=
  ∀ n, P4568234172796765849.a n = A174595 n

end A174595

/-! ## A174595.P311669606721889550

`A004652(A029578(n)+A029578(n))`
-/

namespace A174595.P311669606721889550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (A029578 n + A029578 n).toNat

end

end A174595.P311669606721889550

namespace A174595

/-- `A004652(A029578(n)+A029578(n))` -/
def P311669606721889550.Spec : Prop :=
  ∀ n, P311669606721889550.a n = A174595 n

end A174595

/-!
# A174598: Numbers n with the property that their digital sum is equal to the number of letters in n when spelled out in Spanish.

The programs for A174598, there is no canonical definition to state claims against.
-/

/-! ## A174598.P11492255170786102187

`eq[A007953(n), A011762(n)]`
-/

namespace A174598.P11492255170786102187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174598.P11492255170786102187

/-! ## A174598.P18304414829385211490

`eq[A011762(n)², A118881(n)]`
-/

namespace A174598.P18304414829385211490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174598.P18304414829385211490

/-! ## A174598.P8797232789247864771

`eq[2*A011762(n), A169805(n)]`
-/

namespace A174598.P8797232789247864771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011762 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174598.P8797232789247864771

/-! ## A174598.P15205089462314167754

`eq[A004525(A169805(n)), A011762(n)]`
-/

namespace A174598.P15205089462314167754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A169805 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174598.P15205089462314167754

/-! ## A174598.P2573889389442489077

`eq[A001222(A329562(n)), A011762(n)]`
-/

namespace A174598.P2573889389442489077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A329562 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011762 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A174598.P2573889389442489077

/-!
# A174599: Triangle T(n, k) = A154646(n,k) - A154646(n,0) + 1, 0 <= k <= n.

The programs for A174599, there is no canonical definition to state claims against.
-/

/-! ## A174599.P14823216202927534643

`A225117(A061579(n))+A225117(n)-A137688(n)`
-/

namespace A174599.P14823216202927534643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225117 (A061579 n).toNat + (A225117 n - A137688 n)

end

end A174599.P14823216202927534643

/-! ## A174599.P9987303379180928260

`A225117(n)+A225117(A114327(n)+n)-A137688(n)`
-/

namespace A174599.P9987303379180928260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225117 n + A225117 (A114327 n + (n : ℤ)).toNat - A137688 n

end

end A174599.P9987303379180928260

/-! ## A174599.P16657205799183500454

`A154646(n)-∏[char[∑[n+1]]+1]`
-/

namespace A174599.P16657205799183500454
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154646 n - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A174599.P16657205799183500454

/-! ## A174599.P10526793191339145993

`abs(A137688(n)-A154646(n))`
-/

namespace A174599.P10526793191339145993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137688 n - A154646 n|

end

end A174599.P10526793191339145993

/-! ## A174599.P9627052081654602013

`A028310(A154646(n)-A137688(n))`
-/

namespace A174599.P9627052081654602013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A154646 n - A137688 n).toNat

end

end A174599.P9627052081654602013

