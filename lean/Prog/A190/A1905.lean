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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B002.C005
import Seq.B002.C006
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A190500: Positions of 3 in A190496.

The programs for A190500, the canonical program `A190500.P16667843591126288485` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190500 has offset 1).

The definition of A190500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2762 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190500.P4975121684263764801

`A080755(record[A184618(n+1)%A087057(n+1)])`
-/

namespace A190500.P4975121684263764801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184618 (n + 1)) (A087057 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190500.P4975121684263764801

namespace A190500

/-- `A080755(record[A184618(n+1)%A087057(n+1)])` -/
def P4975121684263764801.Spec : Prop :=
  ∀ n, P4975121684263764801.a n = A190500 (n + 1)

end A190500

/-! ## A190500.P16667843591126288485

`lt[2, A190496(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190500

/-- `lt[2, A190496(n+1)]+1` -/
def P16667843591126288485.Spec : Prop :=
  ∀ n, (P16667843591126288485.a n : ℤ) = A190500 (n + 1)

theorem P16667843591126288485.correct : P16667843591126288485.Spec := by
  intro n
  simp only [A190500, Nat.add_sub_cancel]

end A190500

/-! ## A190500.P13192240026063244058

`eq[3, A190496(n%(n+1)+1)]+1`
-/

namespace A190500.P13192240026063244058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190496 (n % (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190500.P13192240026063244058

namespace A190500

/-- `eq[3, A190496(n%(n+1)+1)]+1` -/
def P13192240026063244058.Spec : Prop :=
  ∀ n, (P13192240026063244058.a n : ℤ) = A190500 (n + 1)

end A190500

/-! ## A190500.P11917255949796742689

`eq[3, A190496(A000007(n)+n)]`
-/

namespace A190500.P11917255949796742689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190496 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190500.P11917255949796742689

namespace A190500

/-- `eq[3, A190496(A000007(n)+n)]` -/
def P11917255949796742689.Spec : Prop :=
  ∀ n, (P11917255949796742689.a n : ℤ) = A190500 (n + 1)

end A190500

/-! ## A190500.P5645505918217362812

`A049472(A190776(n+1))`
-/

namespace A190500.P5645505918217362812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A190776 (n + 1)).toNat

end

end A190500.P5645505918217362812

namespace A190500

/-- `A049472(A190776(n+1))` -/
def P5645505918217362812.Spec : Prop :=
  ∀ n, P5645505918217362812.a n = A190500 (n + 1)

end A190500

/-! ## A190500.P3231937767094573403

`eq[3, A190496(A065033(2*n))]`
-/

namespace A190500.P3231937767094573403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190496 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190500.P3231937767094573403

namespace A190500

/-- `eq[3, A190496(A065033(2*n))]` -/
def P3231937767094573403.Spec : Prop :=
  ∀ n, (P3231937767094573403.a n : ℤ) = A190500 (n + 1)

end A190500

/-! ## A190500.P17879815921832547922

`eq[A020639(A160121(n+1)), A190496(n+1)]+1`
-/

namespace A190500.P17879815921832547922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A160121 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190496 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190500.P17879815921832547922

namespace A190500

/-- `eq[A020639(A160121(n+1)), A190496(n+1)]+1` -/
def P17879815921832547922.Spec : Prop :=
  ∀ n, (P17879815921832547922.a n : ℤ) = A190500 (n + 1)

end A190500

/-! ## A190500.P2701340761339820323

`eq[1, A190491(A285075(n+1))]`
-/

namespace A190500.P2701340761339820323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190491 (A285075 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190500.P2701340761339820323

namespace A190500

/-- `eq[1, A190491(A285075(n+1))]` -/
def P2701340761339820323.Spec : Prop :=
  ∀ n, (P2701340761339820323.a n : ℤ) = A190500 (n + 1)

end A190500

/-! ## A190500.P12223403225476247436

`eq[A059648(n), A190491(A086377(n+1))]`
-/

namespace A190500.P12223403225476247436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059648 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190491 (A086377 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190500.P12223403225476247436

namespace A190500

/-- `eq[A059648(n), A190491(A086377(n+1))]` -/
def P12223403225476247436.Spec : Prop :=
  ∀ n, (P12223403225476247436.a n : ℤ) = A190500 (n + 1)

end A190500

/-! ## A190500.P3296453203765649711

`eq[A059648(n), A190491(A285078(n+1))]`
-/

namespace A190500.P3296453203765649711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059648 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190491 (A285078 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190500.P3296453203765649711

namespace A190500

/-- `eq[A059648(n), A190491(A285078(n+1))]` -/
def P3296453203765649711.Spec : Prop :=
  ∀ n, (P3296453203765649711.a n : ℤ) = A190500 (n + 1)

end A190500

/-! ## A190500.P3170567612990556271

`eq[A188037(n+1), A190491(A086377(n+1))]`
-/

namespace A190500.P3170567612990556271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190491 (A086377 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190500.P3170567612990556271

namespace A190500

/-- `eq[A188037(n+1), A190491(A086377(n+1))]` -/
def P3170567612990556271.Spec : Prop :=
  ∀ n, (P3170567612990556271.a n : ℤ) = A190500 (n + 1)

end A190500

/-! ## A190500.P6577939929500365549

`eq[A188037(n+1), A190491(A285078(n+1))]`
-/

namespace A190500.P6577939929500365549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190491 (A285078 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190500.P6577939929500365549

namespace A190500

/-- `eq[A188037(n+1), A190491(A285078(n+1))]` -/
def P6577939929500365549.Spec : Prop :=
  ∀ n, (P6577939929500365549.a n : ℤ) = A190500 (n + 1)

end A190500

/-! ## A190500.P2880979714183828025

`eq[2, A024544(A289037(n+1))]`
-/

namespace A190500.P2880979714183828025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024544 (A289037 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190500.P2880979714183828025

namespace A190500

/-- `eq[2, A024544(A289037(n+1))]` -/
def P2880979714183828025.Spec : Prop :=
  ∀ n, (P2880979714183828025.a n : ℤ) = A190500 (n + 1)

end A190500

/-! ## A190500.P2199074767257728449

`eq[A190245(A289037(n+1)), A214848(n)]`
-/

namespace A190500.P2199074767257728449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190245 (A289037 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190500.P2199074767257728449

namespace A190500

/-- `eq[A190245(A289037(n+1)), A214848(n)]` -/
def P2199074767257728449.Spec : Prop :=
  ∀ n, (P2199074767257728449.a n : ℤ) = A190500 (n + 1)

end A190500

/-! ## A190500.P9663042641353407530

`lt[A288997(A289037(3*n+1)), A289035(2*(n+1))]`
-/

namespace A190500.P9663042641353407530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288997 (A289037 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289035 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190500.P9663042641353407530

namespace A190500

/-- `lt[A288997(A289037(3*n+1)), A289035(2*(n+1))]` -/
def P9663042641353407530.Spec : Prop :=
  ∀ n, (P9663042641353407530.a n : ℤ) = A190500 (n + 1)

end A190500

/-!
# A190501: Number of Ramanujan primes R_k such that 2^(n-1) < R_k <= 2^n.

The programs for A190501, there is no canonical definition to state claims against.
-/

/-! ## A190501.P15414663629758130318

`Δ[A190502(A259361(n²))]`
-/

namespace A190501.P15414663629758130318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190502 (A259361 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190501.P15414663629758130318

/-! ## A190501.P3773442424068514178

`Δ[A190502(log2(A011782(n)))]`
-/

namespace A190501.P3773442424068514178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190502 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190501.P3773442424068514178

/-! ## A190501.P13872776899888127129

`Δ[A190502(A289207(n+1))]`
-/

namespace A190501.P13872776899888127129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190502 (A289207 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190501.P13872776899888127129

/-! ## A190501.P2236850252516212599

`Δ[A190502(A028310(n)-1)]`
-/

namespace A190501.P2236850252516212599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190502 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190501.P2236850252516212599

/-! ## A190501.P17866175440877113645

`Δ[A190502(A004273(n)-n)]`
-/

namespace A190501.P17866175440877113645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190502 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190501.P17866175440877113645

/-! ## A190501.P5228852921896467857

`Δ[A190502(n-A057427(n))]`
-/

namespace A190501.P5228852921896467857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190502 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190501.P5228852921896467857

/-! ## A190501.P10324275815443649439

`Δ[A190502(A289207(2*n)/2)]`
-/

namespace A190501.P10324275815443649439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190502 (SequenceMachineLib.roundAway ((A289207 (2 * n) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190501.P10324275815443649439

/-! ## A190501.P10489263370888613107

`Δ[A190502(A000007(n)-1+n)]`
-/

namespace A190501.P10489263370888613107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190502 (A000007 n - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190501.P10489263370888613107

/-! ## A190501.P16797066831107197589

`Δ[A190502(A004524(A004273(n)))]`
-/

namespace A190501.P16797066831107197589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190502 (A004524 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190501.P16797066831107197589

/-! ## A190501.P8025603780671061680

`Δ[A190502(A014473(A000124(n)))]`
-/

namespace A190501.P8025603780671061680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190502 (A014473 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190501.P8025603780671061680

/-!
# A190502: Number of Ramanujan primes <= 2^n.

The programs for A190502, there is no canonical definition to state claims against.
-/

/-! ## A190502.P13746512808387027442

`∑[A190501(n)]`
-/

namespace A190502.P13746512808387027442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190501 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190502.P13746512808387027442

/-! ## A190502.P12396932737256835899

`A261102(A261102(a(n-1)))+A190501(n)` with `a(0)=0`
-/

namespace A190502.P12396932737256835899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A261102 (A261102 (a (n - 1)).toNat).toNat + A190501 n

end

end A190502.P12396932737256835899

/-! ## A190502.P15928501472921162712

`A056171(2^n)-n%2*char[eq[2, ∑{e}[n+1, #]]]`
-/

namespace A190502.P15928501472921162712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 ^ n) - ((n % 2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A190502.P15928501472921162712

/-! ## A190502.P16653171733669109215

`A107347(A007053(n)+1)`
-/

namespace A190502.P16653171733669109215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107347 (A007053 n + 1).toNat

end

end A190502.P16653171733669109215

/-! ## A190502.P8721323838080304329

`A056171(A014210(n)-1)`
-/

namespace A190502.P8721323838080304329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (A014210 n - 1).toNat

end

end A190502.P8721323838080304329

/-!
# A190503: Numbers k such that sigma(phi(k)) divides sigma(k).

The programs for A190503, the canonical program `A190503.P4853042845525181551` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190503 has offset 1).

The definition of A190503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 681 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190503.P4853042845525181551

`eq[1, A000203(n+1)%A000203(A000010(n+1))+1]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A190503

/-- `eq[1, A000203(n+1)%A000203(A000010(n+1))+1]+1` -/
def P4853042845525181551.Spec : Prop :=
  ∀ n, (P4853042845525181551.a n : ℤ) = A190503 (n + 1)

theorem P4853042845525181551.correct : P4853042845525181551.Spec := by
  intro n
  simp only [A190503, Nat.add_sub_cancel]

end A190503

/-! ## A190503.P18302026540024219808

`A036453(A001333(n))*A226384(n+1)`
-/

namespace A190503.P18302026540024219808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A001333 n).toNat * A226384 (n + 1)

end

end A190503.P18302026540024219808

namespace A190503

/-- `A036453(A001333(n))*A226384(n+1)` -/
def P18302026540024219808.Spec : Prop :=
  ∀ n, P18302026540024219808.a n = A190503 (n + 1)

end A190503

/-! ## A190503.P9135590395803153130

`A036453(A037223(n))*A226384(n+1)`
-/

namespace A190503.P9135590395803153130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A037223 n).toNat * A226384 (n + 1)

end

end A190503.P9135590395803153130

namespace A190503

/-- `A036453(A037223(n))*A226384(n+1)` -/
def P9135590395803153130.Spec : Prop :=
  ∀ n, P9135590395803153130.a n = A190503 (n + 1)

end A190503

/-! ## A190503.P5171576362840615609

`A226384(n+1)*A249739(A007283(n))`
-/

namespace A190503.P5171576362840615609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226384 (n + 1) * A249739 (A007283 n).toNat

end

end A190503.P5171576362840615609

namespace A190503

/-- `A226384(n+1)*A249739(A007283(n))` -/
def P5171576362840615609.Spec : Prop :=
  ∀ n, P5171576362840615609.a n = A190503 (n + 1)

end A190503

/-! ## A190503.P8687399595787672965

`A193680(A059480(n))*A226384(n+1)`
-/

namespace A190503.P8687399595787672965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193680 (A059480 n).toNat * A226384 (n + 1)

end

end A190503.P8687399595787672965

namespace A190503

/-- `A193680(A059480(n))*A226384(n+1)` -/
def P8687399595787672965.Spec : Prop :=
  ∀ n, P8687399595787672965.a n = A190503 (n + 1)

end A190503

/-!
# A190504: a(n) = n+[n*s/r]+[n*t/r]+[n*u/r]; r=golden ratio, s=r+1, t=r+2, u=r+3.

The programs for A190504, the canonical program `A190504.P10591363179372633885` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190504 has offset 1).

The definition of A190504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190504.P10591363179372633885

`A001950(2*(n+1))+A005206(3*n+2)+A005206(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A190504

/-- `A001950(2*(n+1))+A005206(3*n+2)+A005206(n)` -/
def P10591363179372633885.Spec : Prop :=
  ∀ n, P10591363179372633885.a n = A190504 (n + 1)

theorem P10591363179372633885.correct : P10591363179372633885.Spec := by
  intro n
  simp only [A190504, Nat.add_sub_cancel]

end A190504

/-! ## A190504.P14321417471074058223

`A287770(A022839(n+1))+A066096(3*(n+1))`
-/

namespace A190504.P14321417471074058223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287770 (A022839 (n + 1)).toNat + A066096 (3 * (n + 1))

end

end A190504.P14321417471074058223

namespace A190504

/-- `A287770(A022839(n+1))+A066096(3*(n+1))` -/
def P14321417471074058223.Spec : Prop :=
  ∀ n, P14321417471074058223.a n = A190504 (n + 1)

end A190504

/-! ## A190504.P3013258443120323474

`A287727(A190511(n+1))+A004956(3*(n+1))`
-/

namespace A190504.P3013258443120323474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287727 (A190511 (n + 1)).toNat + A004956 (3 * (n + 1))

end

end A190504.P3013258443120323474

namespace A190504

/-- `A287727(A190511(n+1))+A004956(3*(n+1))` -/
def P3013258443120323474.Spec : Prop :=
  ∀ n, P3013258443120323474.a n = A190504 (n + 1)

end A190504

/-! ## A190504.P689525833378026054

`A005206(2*n+1)+A000201(3*(n+1))+A000201(n+1)`
-/

namespace A190504.P689525833378026054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (2 * n + 1) + (A000201 (3 * (n + 1)) + A000201 (n + 1))

end

end A190504.P689525833378026054

namespace A190504

/-- `A005206(2*n+1)+A000201(3*(n+1))+A000201(n+1)` -/
def P689525833378026054.Spec : Prop :=
  ∀ n, P689525833378026054.a n = A190504 (n + 1)

end A190504

/-! ## A190504.P3826555416802209219

`A019446(A003622(2*(n+1)))+A019446(3*(n+1))+A003622(n+1)`
-/

namespace A190504.P3826555416802209219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A003622 (2 * (n + 1))).toNat + (A019446 (3 * (n + 1)) + A003622 (n + 1))

end

end A190504.P3826555416802209219

namespace A190504

/-- `A019446(A003622(2*(n+1)))+A019446(3*(n+1))+A003622(n+1)` -/
def P3826555416802209219.Spec : Prop :=
  ∀ n, P3826555416802209219.a n = A190504 (n + 1)

end A190504

/-!
# A190505: n+[nr/s]+[nt/s]+[nu/s]; r=golden ratio, s=r+1, t=r+2, u=r+3.

The programs for A190505, the canonical program `A190505.P8242071480314916679` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190505 has offset 1).

The definition of A190505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190505.P4728837263280972582

`ceil(2*((n+1)*(3-ϕ)+n))`
-/

namespace A190505.P4728837263280972582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n + 1 : ℝ) * (3 - Real.goldenRatio) + (n : ℝ))⌉

end

end A190505.P4728837263280972582

namespace A190505

/-- `ceil(2*((n+1)*(3-ϕ)+n))` -/
def P4728837263280972582.Spec : Prop :=
  ∀ n, P4728837263280972582.a n = A190505 (n + 1)

end A190505

/-! ## A190505.P18137540232345898713

`a(n-1)+5-Δ[floor(n/ϕ^3)]` with `a(0)=3`
-/

namespace A190505.P18137540232345898713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio ^ 3⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 5 - (f1 (n + 1) - f1 n)

end

end A190505.P18137540232345898713

namespace A190505

/-- `a(n-1)+5-Δ[floor(n/ϕ^3)]` -/
def P18137540232345898713.Spec : Prop :=
  ∀ n, P18137540232345898713.a n = A190505 (n + 1)

end A190505

/-! ## A190505.P8242071480314916679

`A187341(n+1)+Δ[n²]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190505

/-- `A187341(n+1)+Δ[n²]` -/
def P8242071480314916679.Spec : Prop :=
  ∀ n, P8242071480314916679.a n = A190505 (n + 1)

theorem P8242071480314916679.correct : P8242071480314916679.Spec := by
  intro n
  simp only [A190505, Nat.add_sub_cancel]

end A190505

/-! ## A190505.P7443666428740771689

`6*n+4-A001961(n+1)`
-/

namespace A190505.P7443666428740771689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 4 : ℤ) - A001961 (n + 1)

end

end A190505.P7443666428740771689

namespace A190505

/-- `6*n+4-A001961(n+1)` -/
def P7443666428740771689.Spec : Prop :=
  ∀ n, P7443666428740771689.a n = A190505 (n + 1)

end A190505

/-! ## A190505.P4275993939867520829

`A016969(n)-1-floor(2*(n+1)/ϕ)`
-/

namespace A190505.P4275993939867520829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - 1 - ⌊(2 * (n + 1) : ℝ) / Real.goldenRatio⌋

end

end A190505.P4275993939867520829

namespace A190505

/-- `A016969(n)-1-floor(2*(n+1)/ϕ)` -/
def P4275993939867520829.Spec : Prop :=
  ∀ n, P4275993939867520829.a n = A190505 (n + 1)

end A190505

/-! ## A190505.P17052948066000718113

`∑[A006530(Δ[floor(2*ϕ*n)])]+2*n`
-/

namespace A190505.P17052948066000718113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * (Real.goldenRatio * (n : ℝ))⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A190505.P17052948066000718113

namespace A190505

/-- `∑[A006530(Δ[floor(2*ϕ*n)])]+2*n` -/
def P17052948066000718113.Spec : Prop :=
  ∀ n, P17052948066000718113.a n = A190505 (n + 1)

end A190505

/-! ## A190505.P17442335444777696220

`4*(2*n+1)-(A022839(n+1)+n-1)`
-/

namespace A190505.P17442335444777696220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (2 * n + 1) : ℤ) - (A022839 (n + 1) + ((n : ℤ) - 1))

end

end A190505.P17442335444777696220

namespace A190505

/-- `4*(2*n+1)-(A022839(n+1)+n-1)` -/
def P17442335444777696220.Spec : Prop :=
  ∀ n, P17442335444777696220.a n = A190505 (n + 1)

end A190505

/-! ## A190505.P10461896326674075165

`A017365(n)-A001962(n+1)`
-/

namespace A190505.P10461896326674075165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n - A001962 (n + 1)

end

end A190505.P10461896326674075165

namespace A190505

/-- `A017365(n)-A001962(n+1)` -/
def P10461896326674075165.Spec : Prop :=
  ∀ n, P10461896326674075165.a n = A190505 (n + 1)

end A190505

/-! ## A190505.P4565959901704184069

`A017041(n)-A022839(n+1)`
-/

namespace A190505.P4565959901704184069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017041 n - A022839 (n + 1)

end

end A190505.P4565959901704184069

namespace A190505

/-- `A017041(n)-A022839(n+1)` -/
def P4565959901704184069.Spec : Prop :=
  ∀ n, P4565959901704184069.a n = A190505 (n + 1)

end A190505

/-! ## A190505.P3662787981999319132

`A017029(n)-A190511(n+1)`
-/

namespace A190505.P3662787981999319132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n - A190511 (n + 1)

end

end A190505.P3662787981999319132

namespace A190505

/-- `A017029(n)-A190511(n+1)` -/
def P3662787981999319132.Spec : Prop :=
  ∀ n, P3662787981999319132.a n = A190505 (n + 1)

end A190505

/-! ## A190505.P10615058730181173429

`A005206(A005206(2*n))+A004767(n)`
-/

namespace A190505.P10615058730181173429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A005206 (2 * n)).toNat + A004767 n

end

end A190505.P10615058730181173429

namespace A190505

/-- `A005206(A005206(2*n))+A004767(n)` -/
def P10615058730181173429.Spec : Prop :=
  ∀ n, P10615058730181173429.a n = A190505 (n + 1)

end A190505

/-! ## A190505.P4477677423884722314

`A008574(n+1)+A195172(n+1)-2`
-/

namespace A190505.P4477677423884722314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (n + 1) + (A195172 (n + 1) - 2)

end

end A190505.P4477677423884722314

namespace A190505

/-- `A008574(n+1)+A195172(n+1)-2` -/
def P4477677423884722314.Spec : Prop :=
  ∀ n, P4477677423884722314.a n = A190505 (n + 1)

end A190505

/-! ## A190505.P8397505506942810366

`A008586(n+1)+A195172(n+1)-2`
-/

namespace A190505.P8397505506942810366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (n + 1) + (A195172 (n + 1) - 2)

end

end A190505.P8397505506942810366

namespace A190505

/-- `A008586(n+1)+A195172(n+1)-2` -/
def P8397505506942810366.Spec : Prop :=
  ∀ n, P8397505506942810366.a n = A190505 (n + 1)

end A190505

/-! ## A190505.P6603871747065222982

`A008585(n+1)+A187329(n+1)+n`
-/

namespace A190505.P6603871747065222982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (n + 1) + (A187329 (n + 1) + (n : ℤ))

end

end A190505.P6603871747065222982

namespace A190505

/-- `A008585(n+1)+A187329(n+1)+n` -/
def P6603871747065222982.Spec : Prop :=
  ∀ n, P6603871747065222982.a n = A190505 (n + 1)

end A190505

/-! ## A190505.P12297771959751659398

`A184517(n+1)-A060144(A184516(n+1))`
-/

namespace A190505.P12297771959751659398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184517 (n + 1) - A060144 (A184516 (n + 1)).toNat

end

end A190505.P12297771959751659398

namespace A190505

/-- `A184517(n+1)-A060144(A184516(n+1))` -/
def P12297771959751659398.Spec : Prop :=
  ∀ n, P12297771959751659398.a n = A190505 (n + 1)

end A190505

/-! ## A190505.P1910239797636698885

`A016789(2*n)+2-A005206(2*n+1)`
-/

namespace A190505.P1910239797636698885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (2 * n) + (2 - A005206 (2 * n + 1))

end

end A190505.P1910239797636698885

namespace A190505

/-- `A016789(2*n)+2-A005206(2*n+1)` -/
def P1910239797636698885.Spec : Prop :=
  ∀ n, P1910239797636698885.a n = A190505 (n + 1)

end A190505

/-! ## A190505.P5691709265125876744

`A182761(2*(n+1))-1`
-/

namespace A190505.P5691709265125876744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182761 (2 * (n + 1)) - 1

end

end A190505.P5691709265125876744

namespace A190505

/-- `A182761(2*(n+1))-1` -/
def P5691709265125876744.Spec : Prop :=
  ∀ n, P5691709265125876744.a n = A190505 (n + 1)

end A190505

/-! ## A190505.P13965993657999376318

`A195170(2*(n+1))-2`
-/

namespace A190505.P13965993657999376318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195170 (2 * (n + 1)) - 2

end

end A190505.P13965993657999376318

namespace A190505

/-- `A195170(2*(n+1))-2` -/
def P13965993657999376318.Spec : Prop :=
  ∀ n, P13965993657999376318.a n = A190505 (n + 1)

end A190505

/-! ## A190505.P4140737094986674359

`A195121(2*(n+1))+2*n`
-/

namespace A190505.P4140737094986674359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195121 (2 * (n + 1)) + (2 * n : ℤ)

end

end A190505.P4140737094986674359

namespace A190505

/-- `A195121(2*(n+1))+2*n` -/
def P4140737094986674359.Spec : Prop :=
  ∀ n, P4140737094986674359.a n = A190505 (n + 1)

end A190505

/-!
# A190506: n+[nr/t]+[ns/t]+[nu/t]; r=golden ratio, s=r+1, t=r+2, u=r+3.

The programs for A190506, the canonical program `A190506.P3732830199605946551` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190506 has offset 1).

The definition of A190506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190506.P3732830199605946551

`comp[floor(2*ϕ*n)]+Δ[n²]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190506

/-- `comp[floor(2*ϕ*n)]+Δ[n²]` -/
def P3732830199605946551.Spec : Prop :=
  ∀ n, P3732830199605946551.a n = A190506 (n + 1)

theorem P3732830199605946551.correct : P3732830199605946551.Spec := by
  intro n
  simp only [A190506, Nat.add_sub_cancel]

end A190506

/-! ## A190506.P16946389517102818383

`round(A330185(n+1)/3+2*n+1)`
-/

namespace A190506.P16946389517102818383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A330185 (n + 1) : ℚ) / 3 + (2 * n + 1 : ℚ))

end

end A190506.P16946389517102818383

namespace A190506

/-- `round(A330185(n+1)/3+2*n+1)` -/
def P16946389517102818383.Spec : Prop :=
  ∀ n, P16946389517102818383.a n = A190506 (n + 1)

end A190506

/-! ## A190506.P4365755721695267033

`(A184903(n+1)+comp[floor(n*(ϕ+3))])%floor((ϕ+2)*(n+1))`
-/

namespace A190506.P4365755721695267033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.goldenRatio + 3)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184903 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)) ⌊(Real.goldenRatio + 2) * (n + 1 : ℝ)⌋

end

end A190506.P4365755721695267033

namespace A190506

/-- `(A184903(n+1)+comp[floor(n*(ϕ+3))])%floor((ϕ+2)*(n+1))` -/
def P4365755721695267033.Spec : Prop :=
  ∀ n, P4365755721695267033.a n = A190506 (n + 1)

end A190506

/-! ## A190506.P15295603602819008571

`abs(1-A182760(2*(n+1)))`
-/

namespace A190506.P15295603602819008571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A182760 (2 * (n + 1))|

end

end A190506.P15295603602819008571

namespace A190506

/-- `abs(1-A182760(2*(n+1)))` -/
def P15295603602819008571.Spec : Prop :=
  ∀ n, P15295603602819008571.a n = A190506 (n + 1)

end A190506

/-! ## A190506.P2589409833271231168

`A000027(A182760(2*(n+1))-1)`
-/

namespace A190506.P2589409833271231168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A182760 (2 * (n + 1)) - 1).toNat

end

end A190506.P2589409833271231168

namespace A190506

/-- `A000027(A182760(2*(n+1))-1)` -/
def P2589409833271231168.Spec : Prop :=
  ∀ n, P2589409833271231168.a n = A190506 (n + 1)

end A190506

/-!
# A190507: n+[nr/u]+[ns/u]+[nt/u]; r=golden ratio, s=r+1, t=r+2, u=r+3.

The programs for A190507, there is no canonical definition to state claims against.
-/

/-! ## A190507.P16624887397755922728

`A047529(n+1)+A000035(A077407(n+1))`
-/

namespace A190507.P16624887397755922728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 1) + A000035 (A077407 (n + 1)).toNat

end

end A190507.P16624887397755922728

/-!
# A190508: a(n) = n+[n*s/r]+[n*t/r]+[n*u/r]; r=golden ratio, s=r^2, t=r^3, u=r^4.

The programs for A190508, the canonical program `A190508.P2114487042302130325` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190508 has offset 1).

The definition of A190508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190508.P303446385297309410

`comp[floor(2*n/ϕ)]+floor(ϕ*floor((n+1)*ϕ²))`
-/

namespace A190508.P303446385297309410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n : ℝ) / Real.goldenRatio)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌊Real.goldenRatio * (⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋ : ℝ)⌋

end

end A190508.P303446385297309410

namespace A190508

/-- `comp[floor(2*n/ϕ)]+floor(ϕ*floor((n+1)*ϕ²))` -/
def P303446385297309410.Spec : Prop :=
  ∀ n, P303446385297309410.a n = A190508 (n + 1)

end A190508

/-! ## A190508.P2114487042302130325

`A000027(A189378(n+1)+A001950(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A190508

/-- `A000027(A189378(n+1)+A001950(n+1))` -/
def P2114487042302130325.Spec : Prop :=
  ∀ n, P2114487042302130325.a n = A190508 (n + 1)

theorem P2114487042302130325.correct : P2114487042302130325.Spec := by
  intro n
  simp only [A190508, Nat.add_sub_cancel]

end A190508

/-! ## A190508.P9364432567623384293

`A007067(A184657(A001950(n+1))-(n+1))`
-/

namespace A190508.P9364432567623384293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A184657 (A001950 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A190508.P9364432567623384293

namespace A190508

/-- `A007067(A184657(A001950(n+1))-(n+1))` -/
def P9364432567623384293.Spec : Prop :=
  ∀ n, P9364432567623384293.a n = A190508 (n + 1)

end A190508

/-! ## A190508.P6140989083993653759

`A007067(A194151(2*(n+1))+A003231(n+1))`
-/

namespace A190508.P6140989083993653759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A194151 (2 * (n + 1)) + A003231 (n + 1)).toNat

end

end A190508.P6140989083993653759

namespace A190508

/-- `A007067(A194151(2*(n+1))+A003231(n+1))` -/
def P6140989083993653759.Spec : Prop :=
  ∀ n, P6140989083993653759.a n = A190508 (n + 1)

end A190508

/-! ## A190508.P2064405363793601499

`A022342(A026356(n+2)+A022342(2*(n+1)))`
-/

namespace A190508.P2064405363793601499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (A026356 (n + 2) + A022342 (2 * (n + 1))).toNat

end

end A190508.P2064405363793601499

namespace A190508

/-- `A022342(A026356(n+2)+A022342(2*(n+1)))` -/
def P2064405363793601499.Spec : Prop :=
  ∀ n, P2064405363793601499.a n = A190508 (n + 1)

end A190508

/-! ## A190508.P13645904662183934087

`A007067(A003231(n+1)+∑[A276863(n+1)-1])`
-/

namespace A190508.P13645904662183934087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276863 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A003231 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A190508.P13645904662183934087

namespace A190508

/-- `A007067(A003231(n+1)+∑[A276863(n+1)-1])` -/
def P13645904662183934087.Spec : Prop :=
  ∀ n, P13645904662183934087.a n = A190508 (n + 1)

end A190508

/-! ## A190508.P9095817037030993654

`A007067(A003231(n+1)+∑[A276866(n+1)-2])`
-/

namespace A190508.P9095817037030993654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276866 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (A003231 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A190508.P9095817037030993654

namespace A190508

/-- `A007067(A003231(n+1)+∑[A276866(n+1)-2])` -/
def P9095817037030993654.Spec : Prop :=
  ∀ n, P9095817037030993654.a n = A190508 (n + 1)

end A190508

/-! ## A190508.P8748026388856499122

`A063732(A339950(n+2))`
-/

namespace A190508.P8748026388856499122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063732 (A339950 (n + 2)).toNat

end

end A190508.P8748026388856499122

namespace A190508

/-- `A063732(A339950(n+2))` -/
def P8748026388856499122.Spec : Prop :=
  ∀ n, P8748026388856499122.a n = A190508 (n + 1)

end A190508

/-!
# A190509: a(n) = n + [nr/s] + [nt/s] + [nu/s] where r=golden ratio, s=r^2, t=r^3, u=r^4, and [] represents the floor function.

The programs for A190509, the canonical program `A190509.P7971340745216951110` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190509 has offset 1).

The definition of A190509 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190509.P7971340745216951110

`3*floor((n+1)*(sqrt(5)+1)/2)+n+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190509

/-- `3*floor((n+1)*(sqrt(5)+1)/2)+n+1` -/
def P7971340745216951110.Spec : Prop :=
  ∀ n, P7971340745216951110.a n = A190509 (n + 1)

theorem P7971340745216951110.correct : P7971340745216951110.Spec := by
  intro n
  simp only [A190509, Nat.add_sub_cancel]

end A190509

/-! ## A190509.P9135083964536020339

`∑[xor(5, Δ[floor(ϕ*n)])]`
-/

namespace A190509.P9135083964536020339
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190509.P9135083964536020339

namespace A190509

/-- `∑[xor(5, Δ[floor(ϕ*n)])]` -/
def P9135083964536020339.Spec : Prop :=
  ∀ n, P9135083964536020339.a n = A190509 (n + 1)

end A190509

/-! ## A190509.P10688613556039590337

`∑[A001468(n)²+3]`
-/

namespace A190509.P10688613556039590337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 n ^ 2 + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190509.P10688613556039590337

namespace A190509

/-- `∑[A001468(n)²+3]` -/
def P10688613556039590337.Spec : Prop :=
  ∀ n, P10688613556039590337.a n = A190509 (n + 1)

end A190509

/-! ## A190509.P16794413001788379646

`abs(A035337(n)+1-n)`
-/

namespace A190509.P16794413001788379646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A035337 n + (1 - (n : ℤ))|

end

end A190509.P16794413001788379646

namespace A190509

/-- `abs(A035337(n)+1-n)` -/
def P16794413001788379646.Spec : Prop :=
  ∀ n, P16794413001788379646.a n = A190509 (n + 1)

end A190509

/-! ## A190509.P2966105929413784753

`abs(A134860(n+1)-n)`
-/

namespace A190509.P2966105929413784753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134860 (n + 1) - (n : ℤ)|

end

end A190509.P2966105929413784753

namespace A190509

/-- `abs(A134860(n+1)-n)` -/
def P2966105929413784753.Spec : Prop :=
  ∀ n, P2966105929413784753.a n = A190509 (n + 1)

end A190509

/-! ## A190509.P15209042810300584746

`∑[A287111(Δ[floor(ϕ*n)])]`
-/

namespace A190509.P15209042810300584746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287111 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190509.P15209042810300584746

namespace A190509

/-- `∑[A287111(Δ[floor(ϕ*n)])]` -/
def P15209042810300584746.Spec : Prop :=
  ∀ n, P15209042810300584746.a n = A190509 (n + 1)

end A190509

/-! ## A190509.P4753865300265916988

`xor(-A342089(n+1), -1)`
-/

namespace A190509.P4753865300265916988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A342089 (n + 1)) (-1)

end

end A190509.P4753865300265916988

namespace A190509

/-- `xor(-A342089(n+1), -1)` -/
def P4753865300265916988.Spec : Prop :=
  ∀ n, P4753865300265916988.a n = A190509 (n + 1)

end A190509

/-! ## A190509.P2992335147396250641

`∑[A081313(Δ[floor(ϕ*n)]²)]`
-/

namespace A190509.P2992335147396250641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081313 ((f2 (n + 1) - f2 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190509.P2992335147396250641

namespace A190509

/-- `∑[A081313(Δ[floor(ϕ*n)]²)]` -/
def P2992335147396250641.Spec : Prop :=
  ∀ n, P2992335147396250641.a n = A190509 (n + 1)

end A190509

/-! ## A190509.P855307079555892482

`∑[A214328(Δ[floor(n*ϕ²)])]`
-/

namespace A190509.P855307079555892482
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214328 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190509.P855307079555892482

namespace A190509

/-- `∑[A214328(Δ[floor(n*ϕ²)])]` -/
def P855307079555892482.Spec : Prop :=
  ∀ n, P855307079555892482.a n = A190509 (n + 1)

end A190509

/-! ## A190509.P15376055185125178335

`∑[A000032(Δ[floor(ϕ*n)]+2)]`
-/

namespace A190509.P15376055185125178335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190509.P15376055185125178335

namespace A190509

/-- `∑[A000032(Δ[floor(ϕ*n)]+2)]` -/
def P15376055185125178335.Spec : Prop :=
  ∀ n, P15376055185125178335.a n = A190509 (n + 1)

end A190509

/-! ## A190509.P7787582781137829475

`∑[A000203(Δ[floor(ϕ*n)]+2)]`
-/

namespace A190509.P7787582781137829475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f2 (n + 1) - f2 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190509.P7787582781137829475

namespace A190509

/-- `∑[A000203(Δ[floor(ϕ*n)]+2)]` -/
def P7787582781137829475.Spec : Prop :=
  ∀ n, P7787582781137829475.a n = A190509 (n + 1)

end A190509

/-! ## A190509.P14255302500780281371

`∑[A190442(Δ[A026351(n)])]`
-/

namespace A190509.P14255302500780281371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190442 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190509.P14255302500780281371

namespace A190509

/-- `∑[A190442(Δ[A026351(n)])]` -/
def P14255302500780281371.Spec : Prop :=
  ∀ n, P14255302500780281371.a n = A190509 (n + 1)

end A190509

/-! ## A190509.P8963653265443036796

`∑[A026351(A026351(Δ[A026351(n)]))]`
-/

namespace A190509.P8963653265443036796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (A026351 (f2 (n + 1) - f2 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190509.P8963653265443036796

namespace A190509

/-- `∑[A026351(A026351(Δ[A026351(n)]))]` -/
def P8963653265443036796.Spec : Prop :=
  ∀ n, P8963653265443036796.a n = A190509 (n + 1)

end A190509

/-! ## A190509.P1087253992902320092

`A003250(A003247(n+1))`
-/

namespace A190509.P1087253992902320092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003250 (A003247 (n + 1)).toNat

end

end A190509.P1087253992902320092

namespace A190509

/-- `A003250(A003247(n+1))` -/
def P1087253992902320092.Spec : Prop :=
  ∀ n, P1087253992902320092.a n = A190509 (n + 1)

end A190509

/-! ## A190509.P10963645679839583395

`record[A050411(n+1)+2*n]`
-/

namespace A190509.P10963645679839583395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050411 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190509.P10963645679839583395

namespace A190509

/-- `record[A050411(n+1)+2*n]` -/
def P10963645679839583395.Spec : Prop :=
  ∀ n, P10963645679839583395.a n = A190509 (n + 1)

end A190509

/-! ## A190509.P16495100800572558668

`∑[Δ[A188217(2*n+1)]-1]`
-/

namespace A190509.P16495100800572558668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188217 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190509.P16495100800572558668

namespace A190509

/-- `∑[Δ[A188217(2*n+1)]-1]` -/
def P16495100800572558668.Spec : Prop :=
  ∀ n, P16495100800572558668.a n = A190509 (n + 1)

end A190509

/-! ## A190509.P10966954616533136377

`A190723(A284625(n+1))`
-/

namespace A190509.P10966954616533136377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190723 (A284625 (n + 1)).toNat

end

end A190509.P10966954616533136377

namespace A190509

/-- `A190723(A284625(n+1))` -/
def P10966954616533136377.Spec : Prop :=
  ∀ n, P10966954616533136377.a n = A190509 (n + 1)

end A190509

/-! ## A190509.P2379751422370976264

`A050140(∑[A282162(n)])`
-/

namespace A190509.P2379751422370976264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A190509.P2379751422370976264

namespace A190509

/-- `A050140(∑[A282162(n)])` -/
def P2379751422370976264.Spec : Prop :=
  ∀ n, P2379751422370976264.a n = A190509 (n + 1)

end A190509

/-! ## A190509.P11781555076048934514

`A022839(A001950(n+1))`
-/

namespace A190509.P11781555076048934514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022839 (A001950 (n + 1)).toNat

end

end A190509.P11781555076048934514

namespace A190509

/-- `A022839(A001950(n+1))` -/
def P11781555076048934514.Spec : Prop :=
  ∀ n, P11781555076048934514.a n = A190509 (n + 1)

end A190509

/-! ## A190509.P1721156344038537851

`A050140(A283234(n+1)/2)`
-/

namespace A190509.P1721156344038537851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050140 (SequenceMachineLib.roundAway ((A283234 (n + 1) : ℚ) / 2)).toNat

end

end A190509.P1721156344038537851

namespace A190509

/-- `A050140(A283234(n+1)/2)` -/
def P1721156344038537851.Spec : Prop :=
  ∀ n, P1721156344038537851.a n = A190509 (n + 1)

end A190509

/-!
# A190510: a(n) = 8*a(n-1) + 4*a(n-2), with a(0)=0, a(1)=1.

The programs for A190510, the canonical program `A190510.P6955398564149913316` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190510 has offset 0).

The definition of A190510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+4*a(n-2)` (program `A190510.P6955398564149913316`, by `A190510.P6955398564149913316.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190510.P6955398564149913316

`8*a(n-1)+4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190510

/-- `8*a(n-1)+4*a(n-2)` -/
def P6955398564149913316.Spec : Prop :=
  ∀ n, (P6955398564149913316.a n : ℤ) = A190510 n

theorem P6955398564149913316.correct : P6955398564149913316.Spec := by
  intro n
  simp only [A190510]

end A190510

/-! ## A190510.P11077127437671261061

`ogf(x/(1-8x-4x^2))`
-/

namespace A190510.P11077127437671261061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -8, -4] n

end

end A190510.P11077127437671261061

namespace A190510

/-- `ogf(x/(1-8x-4x^2))` -/
def P11077127437671261061.Spec : Prop :=
  ∀ n, P11077127437671261061.a n = A190510 n

end A190510

/-! ## A190510.P15120408306210318980

`4*(3*a(n-1)-(a(n-1)-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A190510.P15120408306210318980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * (3 * a (n - 1) - (a (n - 1) - a (n - 2)))

end

end A190510.P15120408306210318980

namespace A190510

/-- `4*(3*a(n-1)-(a(n-1)-a(n-2)))` -/
def P15120408306210318980.Spec : Prop :=
  ∀ n, P15120408306210318980.a n = A190510 n

end A190510

/-! ## A190510.P13751602768874106419

`2^(n-1)*A001076(n)`
-/

namespace A190510.P13751602768874106419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001076 n : ℚ)

end

end A190510.P13751602768874106419

namespace A190510

/-- `2^(n-1)*A001076(n)` -/
def P13751602768874106419.Spec : Prop :=
  ∀ n, P13751602768874106419.a n = (A190510 n : ℚ)

end A190510

/-! ## A190510.P3367601501205105453

`2^(n-2)*A014445(n)`
-/

namespace A190510.P3367601501205105453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A014445 n : ℚ)

end

end A190510.P3367601501205105453

namespace A190510

/-- `2^(n-2)*A014445(n)` -/
def P3367601501205105453.Spec : Prop :=
  ∀ n, P3367601501205105453.a n = (A190510 n : ℚ)

end A190510

/-! ## A190510.P10461976501306061135

`2^(n-2)*A000045(3*n)`
-/

namespace A190510.P10461976501306061135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A000045 (3 * n) : ℚ)

end

end A190510.P10461976501306061135

namespace A190510

/-- `2^(n-2)*A000045(3*n)` -/
def P10461976501306061135.Spec : Prop :=
  ∀ n, P10461976501306061135.a n = (A190510 n : ℚ)

end A190510

/-! ## A190510.P18014518886581877551

`A001076(n)*A011782(n)`
-/

namespace A190510.P18014518886581877551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n * A011782 n

end

end A190510.P18014518886581877551

namespace A190510

/-- `A001076(n)*A011782(n)` -/
def P18014518886581877551.Spec : Prop :=
  ∀ n, P18014518886581877551.a n = A190510 n

end A190510

/-! ## A190510.P14345194421342258416

`A001076(n)*A131577(n)`
-/

namespace A190510.P14345194421342258416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n * A131577 n

end

end A190510.P14345194421342258416

namespace A190510

/-- `A001076(n)*A131577(n)` -/
def P14345194421342258416.Spec : Prop :=
  ∀ n, P14345194421342258416.a n = A190510 n

end A190510

/-! ## A190510.P18422556176306640161

`Δ[A000225(n)]*A001076(n)/2`
-/

namespace A190510.P18422556176306640161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) - f1 n) * A001076 n : ℚ) / 2

end

end A190510.P18422556176306640161

namespace A190510

/-- `Δ[A000225(n)]*A001076(n)/2` -/
def P18422556176306640161.Spec : Prop :=
  ∀ n, P18422556176306640161.a n = (A190510 n : ℚ)

end A190510

/-! ## A190510.P4104207196406817425

`A001076(n)/A002878(n+1)*A162771(n)`
-/

namespace A190510.P4104207196406817425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001076 n : ℚ) / (A002878 (n + 1) : ℚ) * (A162771 n : ℚ)

end

end A190510.P4104207196406817425

namespace A190510

/-- `A001076(n)/A002878(n+1)*A162771(n)` -/
def P4104207196406817425.Spec : Prop :=
  ∀ n, P4104207196406817425.a n = (A190510 n : ℚ)

end A190510

/-! ## A190510.P3341974978802932330

`1/20*sqrt(5)*((4+2*sqrt(5))^n-(4-2*sqrt(5))^n)`
-/

namespace A190510.P3341974978802932330
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 20 : ℝ) * Real.sqrt (5 : ℝ) * ((4 + 2 * Real.sqrt (5 : ℝ)) ^ n - (4 - 2 * Real.sqrt (5 : ℝ)) ^ n)

end

end A190510.P3341974978802932330

namespace A190510

/-- `1/20*sqrt(5)*((4+2*sqrt(5))^n-(4-2*sqrt(5))^n)` -/
def P3341974978802932330.Spec : Prop :=
  ∀ n, P3341974978802932330.a n = (A190510 n : ℝ)

end A190510

/-!
# A190511: n+[nr/u]+[ns/u]+[nt/u]; r=golden ratio, s=r^2, t=r^3, u=r^4.

The programs for A190511, the canonical program `A190511.P10122857199414912232` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190511 has offset 1).

The definition of A190511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190511.P10122857199414912232

`A022839(n+1)-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190511

/-- `A022839(n+1)-1` -/
def P10122857199414912232.Spec : Prop :=
  ∀ n, P10122857199414912232.a n = A190511 (n + 1)

theorem P10122857199414912232.correct : P10122857199414912232.Spec := by
  intro n
  simp only [A190511, Nat.add_sub_cancel]

end A190511

/-! ## A190511.P17767232582950634268

`floor((n+1)*sqrt(5))-1`
-/

namespace A190511.P17767232582950634268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (5 : ℝ)⌋ - 1

end

end A190511.P17767232582950634268

namespace A190511

/-- `floor((n+1)*sqrt(5))-1` -/
def P17767232582950634268.Spec : Prop :=
  ∀ n, P17767232582950634268.a n = A190511 (n + 1)

end A190511

/-! ## A190511.P992355055900743935

`floor(Δ[lcm(n, n+1)/ϕ]+n)`
-/

namespace A190511.P992355055900743935
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.lcm n (n + 1) : ℝ) / Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n + (n : ℝ)⌋

end

end A190511.P992355055900743935

namespace A190511

/-- `floor(Δ[lcm(n, n+1)/ϕ]+n)` -/
def P992355055900743935.Spec : Prop :=
  ∀ n, P992355055900743935.a n = A190511 (n + 1)

end A190511

/-! ## A190511.P5029790307146657933

`floor(sqrt((A001961(n+1)+n)²+1))`
-/

namespace A190511.P5029790307146657933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((A001961 (n + 1) + (n : ℤ)) ^ 2 + 1)

end

end A190511.P5029790307146657933

namespace A190511

/-- `floor(sqrt((A001961(n+1)+n)²+1))` -/
def P5029790307146657933.Spec : Prop :=
  ∀ n, P5029790307146657933.a n = A190511 (n + 1)

end A190511

/-! ## A190511.P17110957522978097253

`A000027(∑[A081147(n)]-1)`
-/

namespace A190511.P17110957522978097253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A190511.P17110957522978097253

namespace A190511

/-- `A000027(∑[A081147(n)]-1)` -/
def P17110957522978097253.Spec : Prop :=
  ∀ n, P17110957522978097253.a n = A190511 (n + 1)

end A190511

/-! ## A190511.P11315017016792478720

`A000027(A001961(n+1)+n)`
-/

namespace A190511.P11315017016792478720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A001961 (n + 1) + (n : ℤ)).toNat

end

end A190511.P11315017016792478720

namespace A190511

/-- `A000027(A001961(n+1)+n)` -/
def P11315017016792478720.Spec : Prop :=
  ∀ n, P11315017016792478720.a n = A190511 (n + 1)

end A190511

/-! ## A190511.P9316326519971969760

`A016885(n)%A187341(n+1)`
-/

namespace A190511.P9316326519971969760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016885 n) (A187341 (n + 1))

end

end A190511.P9316326519971969760

namespace A190511

/-- `A016885(n)%A187341(n+1)` -/
def P9316326519971969760.Spec : Prop :=
  ∀ n, P9316326519971969760.a n = A190511 (n + 1)

end A190511

/-! ## A190511.P7796680399146225615

`A017029(n)%A190505(n+1)`
-/

namespace A190511.P7796680399146225615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017029 n) (A190505 (n + 1))

end

end A190511.P7796680399146225615

namespace A190511

/-- `A017029(n)%A190505(n+1)` -/
def P7796680399146225615.Spec : Prop :=
  ∀ n, P7796680399146225615.a n = A190511 (n + 1)

end A190511

/-! ## A190511.P15598047673714396572

`A189370(n+1)%A080754(n+1)`
-/

namespace A190511.P15598047673714396572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189370 (n + 1)) (A080754 (n + 1))

end

end A190511.P15598047673714396572

namespace A190511

/-- `A189370(n+1)%A080754(n+1)` -/
def P15598047673714396572.Spec : Prop :=
  ∀ n, P15598047673714396572.a n = A190511 (n + 1)

end A190511

/-! ## A190511.P1612082107817962900

`A108598(A001961(n+1))`
-/

namespace A190511.P1612082107817962900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (A001961 (n + 1)).toNat

end

end A190511.P1612082107817962900

namespace A190511

/-- `A108598(A001961(n+1))` -/
def P1612082107817962900.Spec : Prop :=
  ∀ n, P1612082107817962900.a n = A190511 (n + 1)

end A190511

/-! ## A190511.P541673053721480130

`A108598(comp[A004976(n)+n])`
-/

namespace A190511.P541673053721480130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004976 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A190511.P541673053721480130

namespace A190511

/-- `A108598(comp[A004976(n)+n])` -/
def P541673053721480130.Spec : Prop :=
  ∀ n, P541673053721480130.a n = A190511 (n + 1)

end A190511

/-! ## A190511.P14367104375630325328

`A063732(A007067(n+1))`
-/

namespace A190511.P14367104375630325328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063732 (A007067 (n + 1)).toNat

end

end A190511.P14367104375630325328

namespace A190511

/-- `A063732(A007067(n+1))` -/
def P14367104375630325328.Spec : Prop :=
  ∀ n, P14367104375630325328.a n = A190511 (n + 1)

end A190511

/-! ## A190511.P17990382059138073137

`record[A026262(n+1)-1]`
-/

namespace A190511.P17990382059138073137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026262 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190511.P17990382059138073137

namespace A190511

/-- `record[A026262(n+1)-1]` -/
def P17990382059138073137.Spec : Prop :=
  ∀ n, P17990382059138073137.a n = A190511 (n + 1)

end A190511

/-! ## A190511.P11301938587473691173

`A005206(A066096(A001961(n+1)+n))`
-/

namespace A190511.P11301938587473691173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A066096 (A001961 (n + 1) + (n : ℤ)).toNat).toNat

end

end A190511.P11301938587473691173

namespace A190511

/-- `A005206(A066096(A001961(n+1)+n))` -/
def P11301938587473691173.Spec : Prop :=
  ∀ n, P11301938587473691173.a n = A190511 (n + 1)

end A190511

/-! ## A190511.P1352900182834201261

`A023443(A022839(n+1))`
-/

namespace A190511.P1352900182834201261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A022839 (n + 1)).toNat

end

end A190511.P1352900182834201261

namespace A190511

/-- `A023443(A022839(n+1))` -/
def P1352900182834201261.Spec : Prop :=
  ∀ n, P1352900182834201261.a n = A190511 (n + 1)

end A190511

/-! ## A190511.P16722141679863470440

`eq[A285685(n+1), A329684(n)]`
-/

namespace A190511.P16722141679863470440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190511.P16722141679863470440

namespace A190511

/-- `eq[A285685(n+1), A329684(n)]` -/
def P16722141679863470440.Spec : Prop :=
  ∀ n, (P16722141679863470440.a n : ℤ) = A190511 (n + 1)

end A190511

/-! ## A190511.P16971085709491200962

`A023444(A198082(n+1))`
-/

namespace A190511.P16971085709491200962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A198082 (n + 1)).toNat

end

end A190511.P16971085709491200962

namespace A190511

/-- `A023444(A198082(n+1))` -/
def P16971085709491200962.Spec : Prop :=
  ∀ n, P16971085709491200962.a n = A190511 (n + 1)

end A190511

/-! ## A190511.P12015217290655331361

`eq[0, A383422(2*n+1)]`
-/

namespace A190511.P12015217290655331361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383422 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190511.P12015217290655331361

namespace A190511

/-- `eq[0, A383422(2*n+1)]` -/
def P12015217290655331361.Spec : Prop :=
  ∀ n, (P12015217290655331361.a n : ℤ) = A190511 (n + 1)

end A190511

/-! ## A190511.P17110604454396869096

`A060144(A356106(n+1))`
-/

namespace A190511.P17110604454396869096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060144 (A356106 (n + 1)).toNat

end

end A190511.P17110604454396869096

namespace A190511

/-- `A060144(A356106(n+1))` -/
def P17110604454396869096.Spec : Prop :=
  ∀ n, P17110604454396869096.a n = A190511 (n + 1)

end A190511

/-!
# A190512: Number of one-sided n-step prudent walks, avoiding single west step only, i.e., two or more consecutive west steps are permitted.

The programs for A190512, the canonical program `A190512.P2810430431470207677` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190512 has offset 0).

The definition of A190512 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190512.P2810430431470207677

`A052980(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190512

/-- `A052980(n+1)` -/
def P2810430431470207677.Spec : Prop :=
  ∀ n, P2810430431470207677.a n = A190512 n

theorem P2810430431470207677.correct : P2810430431470207677.Spec := by
  intro n
  simp only [A190512]

end A190512

/-! ## A190512.P16710785113503589115

`ogf((1+x^2)/(1-2x-x^3))`
-/

namespace A190512.P16710785113503589115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, -2, 0, -1] n

end

end A190512.P16710785113503589115

namespace A190512

/-- `ogf((1+x^2)/(1-2x-x^3))` -/
def P16710785113503589115.Spec : Prop :=
  ∀ n, P16710785113503589115.a n = A190512 n

end A190512

/-! ## A190512.P15441010258518348422

`2*a(n-1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A190512.P15441010258518348422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  2 * a (n - 1) + a (n - 3)

end

end A190512.P15441010258518348422

namespace A190512

/-- `2*a(n-1)+a(n-3)` -/
def P15441010258518348422.Spec : Prop :=
  ∀ n, (P15441010258518348422.a n : ℤ) = A190512 n

end A190512

/-! ## A190512.P1731612053474452630

`a(n-1)+a(n-1)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A190512.P1731612053474452630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 3))

end

end A190512.P1731612053474452630

namespace A190512

/-- `a(n-1)+a(n-1)+a(n-3)` -/
def P1731612053474452630.Spec : Prop :=
  ∀ n, (P1731612053474452630.a n : ℤ) = A190512 n

end A190512

/-! ## A190512.P17702117793935844566

`abs(A110513(n+1))`
-/

namespace A190512.P17702117793935844566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110513 (n + 1)|

end

end A190512.P17702117793935844566

namespace A190512

/-- `abs(A110513(n+1))` -/
def P17702117793935844566.Spec : Prop :=
  ∀ n, P17702117793935844566.a n = A190512 n

end A190512

/-! ## A190512.P15814340184315875795

`∑[A214260(n)]+1`
-/

namespace A190512.P15814340184315875795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214260 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A190512.P15814340184315875795

namespace A190512

/-- `∑[A214260(n)]+1` -/
def P15814340184315875795.Spec : Prop :=
  ∀ n, P15814340184315875795.a n = A190512 n

end A190512

/-! ## A190512.P15005853003609024856

`A239905(4*(n+1))`
-/

namespace A190512.P15005853003609024856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239905 (4 * (n + 1))

end

end A190512.P15005853003609024856

namespace A190512

/-- `A239905(4*(n+1))` -/
def P15005853003609024856.Spec : Prop :=
  ∀ n, P15005853003609024856.a n = A190512 n

end A190512

/-! ## A190512.P6327125001854902933

`gcd(A000038(n), A110513(n+1))`
-/

namespace A190512.P6327125001854902933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A110513 (n + 1))

end

end A190512.P6327125001854902933

namespace A190512

/-- `gcd(A000038(n), A110513(n+1))` -/
def P6327125001854902933.Spec : Prop :=
  ∀ n, (P6327125001854902933.a n : ℤ) = A190512 n

end A190512

/-! ## A190512.P7380671780064233732

`lcm(A020985(n), A110513(n+1))`
-/

namespace A190512.P7380671780064233732
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A110513 (n + 1))

end

end A190512.P7380671780064233732

namespace A190512

/-- `lcm(A020985(n), A110513(n+1))` -/
def P7380671780064233732.Spec : Prop :=
  ∀ n, (P7380671780064233732.a n : ℤ) = A190512 n

end A190512

/-! ## A190512.P4508227217712980898

`A033999(n+1)*A110513(n+1)`
-/

namespace A190512.P4508227217712980898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A110513 (n + 1)

end

end A190512.P4508227217712980898

namespace A190512

/-- `A033999(n+1)*A110513(n+1)` -/
def P4508227217712980898.Spec : Prop :=
  ∀ n, P4508227217712980898.a n = A190512 n

end A190512

/-! ## A190512.P16357868221106838619

`Δ[ogf(1/(1-2x-x^3))]`
-/

namespace A190512.P16357868221106838619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190512.P16357868221106838619

namespace A190512

/-- `Δ[ogf(1/(1-2x-x^3))]` -/
def P16357868221106838619.Spec : Prop :=
  ∀ n, P16357868221106838619.a n = A190512 n

end A190512

/-! ## A190512.P15223079442376258569

`3*a(n-1)-(a(n-1)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=5`
-/

namespace A190512.P15223079442376258569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 5] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 3))

end

end A190512.P15223079442376258569

namespace A190512

/-- `3*a(n-1)-(a(n-1)-a(n-3))` -/
def P15223079442376258569.Spec : Prop :=
  ∀ n, P15223079442376258569.a n = A190512 n

end A190512

/-! ## A190512.P16439977258039581906

`Δ[A008998(n)]`
-/

namespace A190512.P16439977258039581906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190512.P16439977258039581906

namespace A190512

/-- `Δ[A008998(n)]` -/
def P16439977258039581906.Spec : Prop :=
  ∀ n, P16439977258039581906.a n = A190512 n

end A190512

/-! ## A190512.P11349285656797258280

`A008998(n+1)-A008998(n)`
-/

namespace A190512.P11349285656797258280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (n + 1) - A008998 n

end

end A190512.P11349285656797258280

namespace A190512

/-- `A008998(n+1)-A008998(n)` -/
def P11349285656797258280.Spec : Prop :=
  ∀ n, P11349285656797258280.a n = A190512 n

end A190512

/-! ## A190512.P5792044672340217898

`A335274(n+1)-A335242(n+1)`
-/

namespace A190512.P5792044672340217898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335274 (n + 1) - A335242 (n + 1)

end

end A190512.P5792044672340217898

namespace A190512

/-- `A335274(n+1)-A335242(n+1)` -/
def P5792044672340217898.Spec : Prop :=
  ∀ n, P5792044672340217898.a n = A190512 n

end A190512

/-! ## A190512.P216280998835188433

`(A193641(n+1)+A193641(A028310(n)))/2`
-/

namespace A190512.P216280998835188433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193641 (n + 1) + A193641 (A028310 n).toNat : ℚ) / 2

end

end A190512.P216280998835188433

namespace A190512

/-- `(A193641(n+1)+A193641(A028310(n)))/2` -/
def P216280998835188433.Spec : Prop :=
  ∀ n, P216280998835188433.a n = (A190512 n : ℚ)

end A190512

/-! ## A190512.P11393221013594419216

`A193641(n+1)+A332491(n)-A332647(n)`
-/

namespace A190512.P11393221013594419216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (n + 1) + (A332491 n - A332647 n)

end

end A190512.P11393221013594419216

namespace A190512

/-- `A193641(n+1)+A332491(n)-A332647(n)` -/
def P11393221013594419216.Spec : Prop :=
  ∀ n, P11393221013594419216.a n = A190512 n

end A190512

/-! ## A190512.P4741836312622336212

`Δ[A052910(n+1)/2]`
-/

namespace A190512.P4741836312622336212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052910 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190512.P4741836312622336212

namespace A190512

/-- `Δ[A052910(n+1)/2]` -/
def P4741836312622336212.Spec : Prop :=
  ∀ n, P4741836312622336212.a n = (A190512 n : ℚ)

end A190512

/-! ## A190512.P9905239303657970440

`A020708(n)-A193641(n+2)`
-/

namespace A190512.P9905239303657970440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020708 n - A193641 (n + 2)

end

end A190512.P9905239303657970440

namespace A190512

/-- `A020708(n)-A193641(n+2)` -/
def P9905239303657970440.Spec : Prop :=
  ∀ n, P9905239303657970440.a n = A190512 n

end A190512

/-! ## A190512.P14538061477454447543

`A285184(n+2)-A020708(n)`
-/

namespace A190512.P14538061477454447543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285184 (n + 2) - A020708 n

end

end A190512.P14538061477454447543

namespace A190512

/-- `A285184(n+2)-A020708(n)` -/
def P14538061477454447543.Spec : Prop :=
  ∀ n, P14538061477454447543.a n = A190512 n

end A190512

/-!
# A190513: a(n) = n + [n*s/r] + [n*t/r] + [n*u/r] + [n*v/r] + [n*w/r], where r=sin(x), s=cos(x), t=tan(x), u=csc(x), v=sec(x), w=cot(x), x=Pi/5.

The programs for A190513, there is no canonical definition to state claims against.
-/

/-! ## A190513.P15886888103639804314

`A017497(n)-A111857(A032741(A023491(n)))`
-/

namespace A190513.P15886888103639804314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017497 n - A111857 (A032741 (A023491 n).toNat).toNat

end

end A190513.P15886888103639804314

/-! ## A190513.P13045818579728775649

`A017485(n)+A010054(A265124(n+1))`
-/

namespace A190513.P13045818579728775649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n + A010054 (A265124 (n + 1)).toNat

end

end A190513.P13045818579728775649

/-! ## A190513.P8347743331182180835

`A304497(A004767(n))+A286989(n+1)`
-/

namespace A190513.P8347743331182180835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304497 (A004767 n).toNat + A286989 (n + 1)

end

end A190513.P8347743331182180835

/-! ## A190513.P14686297329438575356

`A017485(n)+A010052(A028242(A187829(n+1)))`
-/

namespace A190513.P14686297329438575356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n + A010052 (A028242 (A187829 (n + 1)).toNat).toNat

end

end A190513.P14686297329438575356

/-! ## A190513.P3242079851392895881

`A330067(A330066(3*(n+1)))-floor((n+1)*7^(7/27))`
-/

namespace A190513.P3242079851392895881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330067 (A330066 (3 * (n + 1))).toNat - ⌊(n + 1 : ℝ) * (7 : ℝ) ^ ((7 : ℚ) / 27 : ℝ)⌋

end

end A190513.P3242079851392895881

/-!
# A190514: a(n) = n + [nr/s] + [nt/s] + [nu/s] + [nv/s] + [nw/s], where r=sin(x), s=cos(x), t=tan(x), u=csc(x), v=sec(x), w=cot(x), x=Pi/5.

The programs for A190514, there is no canonical definition to state claims against.
-/

/-! ## A190514.P8446916359252816988

`A010693(A167273(2*(n+1))+1)+8*n+3`
-/

namespace A190514.P8446916359252816988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 (A167273 (2 * (n + 1)) + 1).toNat + (8 * n : ℤ) + 3

end

end A190514.P8446916359252816988

/-! ## A190514.P3772653983006945354

`A141743(A056115(n))+A004770(n+1)`
-/

namespace A190514.P3772653983006945354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141743 (A056115 n).toNat + A004770 (n + 1)

end

end A190514.P3772653983006945354

/-! ## A190514.P8648364605076663573

`A341603(A014551(n))+A004770(n+1)`
-/

namespace A190514.P8648364605076663573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341603 (A014551 n).toNat + A004770 (n + 1)

end

end A190514.P8648364605076663573

/-! ## A190514.P953177877013714209

`A017137(n)-A175358(A001008(n+1))`
-/

namespace A190514.P953177877013714209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n - A175358 (A001008 (n + 1)).toNat

end

end A190514.P953177877013714209

/-! ## A190514.P15753420764912184572

`A017137(n)-A280751(A289271(n+1))`
-/

namespace A190514.P15753420764912184572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017137 n - A280751 (A289271 (n + 1)).toNat

end

end A190514.P15753420764912184572

/-!
# A190515: a(n) = n + [nr/t] + [ns/t] + [nu/t] + [nv/t] + [nw/t], where r=sin(x), s=cos(x), t=tan(x), u=csc(x), v=sec(x), w=cot(x), x=Pi/5.

The programs for A190515, there is no canonical definition to state claims against.
-/

/-! ## A190515.P6788193664614311133

`A043453(n+1)-A043543(A043491(n+1))`
-/

namespace A190515.P6788193664614311133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043453 (n + 1) - A043543 (A043491 (n + 1)).toNat

end

end A190515.P6788193664614311133

/-!
# A190516: a(n) = n + [nr/u] + [ns/u] + [nt/u] + [nv/u] + [nw/u], where r=sin(x), s=cos(x), t=tan(x), u=csc(x), v=sec(x), w=cot(x), x=Pi/5.

The programs for A190516, there is no canonical definition to state claims against.
-/

/-! ## A190516.P15032737820739554139

`A131032(A052301(n+1))+A120738(n)`
-/

namespace A190516.P15032737820739554139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131032 (A052301 (n + 1)).toNat + A120738 n

end

end A190516.P15032737820739554139

/-! ## A190516.P12920058617074451835

`A086343(n+1)-A030199(A289501(n))`
-/

namespace A190516.P12920058617074451835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086343 (n + 1) - A030199 (A289501 n).toNat

end

end A190516.P12920058617074451835

/-! ## A190516.P4458117785310301405

`A085515(A081331(3*n+2)+n)`
-/

namespace A190516.P4458117785310301405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085515 (A081331 (3 * n + 2) + (n : ℤ)).toNat

end

end A190516.P4458117785310301405

/-! ## A190516.P6438541920205196850

`gcd(2, n)+4*n-A357071(A005578(n))`
-/

namespace A190516.P6438541920205196850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n + 4 * n : ℤ) - A357071 (A005578 n).toNat

end

end A190516.P6438541920205196850

/-!
# A190517: a(n) = n + [nr/v] + [ns/v] + [nt/v] + [nu/v] + [nw/v], where r=sin(x), s=cos(x), t=tan(x), u=csc(x), v=sec(x), w=cot(x), x=Pi/5.

The programs for A190517, there is no canonical definition to state claims against.
-/

/-! ## A190517.P3783921225389741573

`A232749(6*(n+1)-A064372(n+1))`
-/

namespace A190517.P3783921225389741573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232749 ((6 * (n + 1) : ℤ) - A064372 (n + 1)).toNat

end

end A190517.P3783921225389741573

/-! ## A190517.P5005146034825801893

`A016885(n)+A001221(A146792(n+1))`
-/

namespace A190517.P5005146034825801893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n + A001221 (A146792 (n + 1)).toNat

end

end A190517.P5005146034825801893

/-! ## A190517.P17780163105266476487

`A187224(3*n+2)-A001221(A000085(n))`
-/

namespace A190517.P17780163105266476487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187224 (3 * n + 2) - A001221 (A000085 n).toNat

end

end A190517.P17780163105266476487

/-! ## A190517.P12051301828075166495

`5*n+2+A043565(A351342(n))`
-/

namespace A190517.P12051301828075166495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n + 2 : ℤ) + A043565 (A351342 n).toNat

end

end A190517.P12051301828075166495

/-! ## A190517.P6541853102551803123

`A232749(A237048(n+1)+6*n+4)`
-/

namespace A190517.P6541853102551803123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232749 (A237048 (n + 1) + (6 * n + 4 : ℤ)).toNat

end

end A190517.P6541853102551803123

/-!
# A190518: a(n) = n + [nr/w] + [ns/w] + [nt/w] + [nu/w] + [nv/w], where r=sin(x), s=cos(x), t=tan(x), u=csc(x), v=sec(x), w=cot(x), x=Pi/5.

The programs for A190518, there is no canonical definition to state claims against.
-/

/-! ## A190518.P4740889818272559107

`A029922(A088725(4*n+2))+∑[A000034(n)]`
-/

namespace A190518.P4740889818272559107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029922 (A088725 (4 * n + 2)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190518.P4740889818272559107

/-! ## A190518.P15515488829185129732

`A029922(A088725(4*n+2))+record[A061800(n)]`
-/

namespace A190518.P15515488829185129732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029922 (A088725 (4 * n + 2)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190518.P15515488829185129732

/-! ## A190518.P4164375946681073977

`A032766(n+1)+A029922(A088725(4*n+2))`
-/

namespace A190518.P4164375946681073977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1) + A029922 (A088725 (4 * n + 2)).toNat

end

end A190518.P4164375946681073977

/-! ## A190518.P8471894093524824392

`A029922(A088725(4*n+2))+∑[A010673(n)!]`
-/

namespace A190518.P8471894093524824392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010673 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029922 (A088725 (4 * n + 2)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A190518.P8471894093524824392

/-! ## A190518.P18039552405917913119

`A029922(A088725(4*n+2))+∑[A000035(n)+1]`
-/

namespace A190518.P18039552405917913119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029922 (A088725 (4 * n + 2)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190518.P18039552405917913119

/-!
# A190519: a(n) = n + [n*s/r] + [n*t/r] + [n*u/r] + [n*v/r] + [n*w/r], where r=sin(x), s=cos(x), t=tan(x), u=csc(x), v=sec(x), w=cot(x), x=2*Pi/5.

The programs for A190519, there is no canonical definition to state claims against.
-/

/-! ## A190519.P1040253320864272672

`A244016(A017053(n)-A074286(n+1))`
-/

namespace A190519.P1040253320864272672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244016 (A017053 n - A074286 (n + 1)).toNat

end

end A190519.P1040253320864272672

/-! ## A190519.P522464991571450309

`A287867(A144777(n+1))+A017245(n)`
-/

namespace A190519.P522464991571450309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287867 (A144777 (n + 1)).toNat + A017245 n

end

end A190519.P522464991571450309

/-! ## A190519.P16882804056257188555

`A287726(2*(n+1))+A287722(A249060(n))`
-/

namespace A190519.P16882804056257188555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287726 (2 * (n + 1)) + A287722 (A249060 n).toNat

end

end A190519.P16882804056257188555

/-! ## A190519.P10232767665208307260

`A120701(3*(n+1))-A120675(A120693(2*n+1))`
-/

namespace A190519.P10232767665208307260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120701 (3 * (n + 1)) - A120675 (A120693 (2 * n + 1)).toNat

end

end A190519.P10232767665208307260

/-!
# A190520: a(n) = n + [nr/s] + [nt/s] + [nu/s] + [nv/s] + [nw/s], where r=sin(x), s=cos(x), t=tan(x), u=csc(x), v=sec(x), w=cot(x), x=2*Pi/5.

The programs for A190520, there is no canonical definition to state claims against.
-/

/-! ## A190520.P14748513940112169750

`A172471(A158595(n+1))+or(1, n)+n`
-/

namespace A190520.P14748513940112169750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A158595 (n + 1)).toNat + (Nat.lor 1 n + n : ℤ)

end

end A190520.P14748513940112169750

/-! ## A190520.P317745156928350650

`A080864(n+1)-A001222(A260774(n))`
-/

namespace A190520.P317745156928350650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080864 (n + 1) - A001222 (A260774 n).toNat

end

end A190520.P317745156928350650

/-!
# A190521: a(n) = n + [nr/t] + [ns/t] + [nu/t] + [nv/t] + [nw/t], where r=sin(x), s=cos(x), t=tan(x), u=csc(x), v=sec(x), w=cot(x), x=2*Pi/5.

The programs for A190521, there is no canonical definition to state claims against.
-/

/-! ## A190521.P6891193145167644903

`A346502(n)+A082204((n+1)*Δ[n^3])`
-/

namespace A190521.P6891193145167644903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346502 n + A082204 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A190521.P6891193145167644903

/-! ## A190521.P10712722174734193969

`A262681(A098011(n+1))+A047400(n+1)`
-/

namespace A190521.P10712722174734193969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262681 (A098011 (n + 1)).toNat + A047400 (n + 1)

end

end A190521.P10712722174734193969

/-! ## A190521.P1840181235572307241

`A005843(A187829(n+1))+A004526(A023717(n))`
-/

namespace A190521.P1840181235572307241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A187829 (n + 1)).toNat + A004526 (A023717 n).toNat

end

end A190521.P1840181235572307241

/-! ## A190521.P13165057974110285295

`A047400(A187829(n+1))+A046702(A008620(n))`
-/

namespace A190521.P13165057974110285295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047400 (A187829 (n + 1)).toNat + A046702 (A008620 n).toNat

end

end A190521.P13165057974110285295

/-! ## A190521.P8449355680402078731

`eq[A023900(A003557(2*(n+1))), A343640(3*n+4)]`
-/

namespace A190521.P8449355680402078731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023900 (A003557 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343640 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190521.P8449355680402078731

/-!
# A190522: a(n) = n + [nr/u] + [ns/u] + [nt/u] + [nv/u] + [nw/u], where r=sin(x), s=cos(x), t=tan(x), u=csc(x), v=sec(x), w=cot(x), x=2*Pi/5.

The programs for A190522, there is no canonical definition to state claims against.
-/

/-! ## A190522.P13428013942117673969

`A239310(A008574(n))-A004128(n)`
-/

namespace A190522.P13428013942117673969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239310 (A008574 n).toNat - A004128 n

end

end A190522.P13428013942117673969

/-! ## A190522.P13641774276784299736

`A329996(A329999(3*n+4))+n-3`
-/

namespace A190522.P13641774276784299736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329996 (A329999 (3 * n + 4)).toNat + ((n : ℤ) - 3)

end

end A190522.P13641774276784299736

/-! ## A190522.P5511181274443174296

`A115180(A304497(3*n+2)-A177702(n))`
-/

namespace A190522.P5511181274443174296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115180 (A304497 (3 * n + 2) - A177702 n).toNat

end

end A190522.P5511181274443174296

/-! ## A190522.P5373589197864478068

`eq[7, and(7, A338497(n+1))]`
-/

namespace A190522.P5373589197864478068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A338497 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190522.P5373589197864478068

/-! ## A190522.P10642885106554284390

`A374987(n)-A257900(A323122(n+9))`
-/

namespace A190522.P10642885106554284390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374987 n - A257900 (A323122 (n + 9)).toNat

end

end A190522.P10642885106554284390

/-!
# A190523: a(n) = n + [nr/v] + [ns/v] + [nt/v] + [nu/v] + [nw/v], where r=sin(x), s=cos(x), t=tan(x), u=csc(x), v=sec(x), w=cot(x), x=2*Pi/5.

The programs for A190523, there is no canonical definition to state claims against.
-/

/-! ## A190523.P963350441429479352

`A245718(A082069(n+1)*A216495(3*n+1))`
-/

namespace A190523.P963350441429479352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245718 (A082069 (n + 1) * A216495 (3 * n + 1)).toNat

end

end A190523.P963350441429479352

/-! ## A190523.P8407589031311721437

`∑[A102641(∑[A143952(n)])]`
-/

namespace A190523.P8407589031311721437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143952 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102641 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190523.P8407589031311721437

/-! ## A190523.P12321541619425999288

`A048103(2*n+1)-A010051(A233230(n+5))`
-/

namespace A190523.P12321541619425999288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048103 (2 * n + 1) - A010051 (A233230 (n + 5)).toNat

end

end A190523.P12321541619425999288

/-! ## A190523.P5518198945022307162

`∑[A345161(∑[n+2])]`
-/

namespace A190523.P5518198945022307162
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345161 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190523.P5518198945022307162

/-! ## A190523.P17905394922657026608

`lt[A308183(3*n+4), -(-1)^n]`
-/

namespace A190523.P17905394922657026608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308183 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-1) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190523.P17905394922657026608

/-!
# A190524: a(n) = n + [nr/w] + [ns/w] + [nt/w] + [nu/w] + [nv/w], where r=sin(x), s=cos(x), t=tan(x), u=csc(x), v=sec(x), w=cot(x), x=2*Pi/5.

The programs for A190524, there is no canonical definition to state claims against.
-/

/-! ## A190524.P6263827516582242524

`A059169(A074842(n+1))-4`
-/

namespace A190524.P6263827516582242524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A074842 (n + 1)).toNat - 4

end

end A190524.P6263827516582242524

/-! ## A190524.P14863161776724370946

`A189381(3*(n+1))-A006047(A306315(2*n+1))`
-/

namespace A190524.P14863161776724370946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189381 (3 * (n + 1)) - A006047 (A306315 (2 * n + 1)).toNat

end

end A190524.P14863161776724370946

/-! ## A190524.P14153675808474908815

`A269100(2*n+1)+A023416(A046161(n))`
-/

namespace A190524.P14153675808474908815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269100 (2 * n + 1) + A023416 (A046161 n).toNat

end

end A190524.P14153675808474908815

/-! ## A190524.P1663936695467912471

`A329988(A330118(3*(n+1)))+A329846(3*(n+1))`
-/

namespace A190524.P1663936695467912471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329988 (A330118 (3 * (n + 1))).toNat + A329846 (3 * (n + 1))

end

end A190524.P1663936695467912471

/-!
# A190525: Number of n-step one-sided prudent walks, avoiding exactly two consecutive west steps (can have three or more west steps).

The programs for A190525, the canonical program `A190525.P1116054976645212518` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190525 has offset 0).

The definition of A190525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190525.P1116054976645212518

`2*a(n-1)+a(n-2)-a(n-3)+a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=15`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190525

/-- `2*a(n-1)+a(n-2)-a(n-3)+a(n-4)` -/
def P1116054976645212518.Spec : Prop :=
  ∀ n, P1116054976645212518.a n = A190525 n

theorem P1116054976645212518.correct : P1116054976645212518.Spec := by
  intro n
  simp only [A190525]

end A190525

/-! ## A190525.P15844641632531278686

`Δ[ogf(1/(1-2x-x^2+x^3-x^4))]`
-/

namespace A190525.P15844641632531278686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -1, 1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190525.P15844641632531278686

namespace A190525

/-- `Δ[ogf(1/(1-2x-x^2+x^3-x^4))]` -/
def P15844641632531278686.Spec : Prop :=
  ∀ n, P15844641632531278686.a n = A190525 n

end A190525

/-! ## A190525.P11977900189095919484

`ogf((1+x-x^2+x^3)/(1-2x-x^2+x^3-x^4))`
-/

namespace A190525.P11977900189095919484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 1] [1, -2, -1, 1, -1] n

end

end A190525.P11977900189095919484

namespace A190525

/-- `ogf((1+x-x^2+x^3)/(1-2x-x^2+x^3-x^4))` -/
def P11977900189095919484.Spec : Prop :=
  ∀ n, P11977900189095919484.a n = A190525 n

end A190525

/-! ## A190525.P14360780599161951334

`Δ[A397235(n)]`
-/

namespace A190525.P14360780599161951334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397235 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190525.P14360780599161951334

namespace A190525

/-- `Δ[A397235(n)]` -/
def P14360780599161951334.Spec : Prop :=
  ∀ n, P14360780599161951334.a n = A190525 n

end A190525

/-! ## A190525.P13656713836597760145

`A003520(3*(n+1))`
-/

namespace A190525.P13656713836597760145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (3 * (n + 1))

end

end A190525.P13656713836597760145

namespace A190525

/-- `A003520(3*(n+1))` -/
def P13656713836597760145.Spec : Prop :=
  ∀ n, P13656713836597760145.a n = A190525 n

end A190525

/-! ## A190525.P15675104220764547456

`A079955(3*n+5)`
-/

namespace A190525.P15675104220764547456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079955 (3 * n + 5)

end

end A190525.P15675104220764547456

namespace A190525

/-- `A079955(3*n+5)` -/
def P15675104220764547456.Spec : Prop :=
  ∀ n, P15675104220764547456.a n = A190525 n

end A190525

/-! ## A190525.P17779073727444890478

`A017899(3*n+8)`
-/

namespace A190525.P17779073727444890478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (3 * n + 8)

end

end A190525.P17779073727444890478

namespace A190525

/-- `A017899(3*n+8)` -/
def P17779073727444890478.Spec : Prop :=
  ∀ n, P17779073727444890478.a n = A190525 n

end A190525

/-! ## A190525.P10764139987220661907

`∑[record[A079955(3*n)]]`
-/

namespace A190525.P10764139987220661907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079955 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190525.P10764139987220661907

namespace A190525

/-- `∑[record[A079955(3*n)]]` -/
def P10764139987220661907.Spec : Prop :=
  ∀ n, P10764139987220661907.a n = A190525 n

end A190525

/-! ## A190525.P521056435557314694

`A181984(n)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A190525.P521056435557314694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A181984 n + a (n - 2)

end

end A190525.P521056435557314694

namespace A190525

/-- `A181984(n)+a(n-2)` -/
def P521056435557314694.Spec : Prop :=
  ∀ n, P521056435557314694.a n = A190525 n

end A190525

/-! ## A190525.P3566487264225570777

`A052921(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A190525.P3566487264225570777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052921 (n + 1) - a (n - 1)

end

end A190525.P3566487264225570777

namespace A190525

/-- `A052921(n+1)-a(n-1)` -/
def P3566487264225570777.Spec : Prop :=
  ∀ n, P3566487264225570777.a n = A190525 n

end A190525

/-! ## A190525.P5397662220146821272

`Δ[A003520(A016789(n))]`
-/

namespace A190525.P5397662220146821272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190525.P5397662220146821272

namespace A190525

/-- `Δ[A003520(A016789(n))]` -/
def P5397662220146821272.Spec : Prop :=
  ∀ n, P5397662220146821272.a n = A190525 n

end A190525

/-! ## A190525.P5312869251993732307

`Δ[A003520(A008585(n)+2)]`
-/

namespace A190525.P5312869251993732307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (A008585 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190525.P5312869251993732307

namespace A190525

/-- `Δ[A003520(A008585(n)+2)]` -/
def P5312869251993732307.Spec : Prop :=
  ∀ n, P5312869251993732307.a n = A190525 n

end A190525

/-! ## A190525.P15772144618858927160

`A397235(n+1)-A397235(n)`
-/

namespace A190525.P15772144618858927160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397235 (n + 1) - A397235 n

end

end A190525.P15772144618858927160

namespace A190525

/-- `A397235(n+1)-A397235(n)` -/
def P15772144618858927160.Spec : Prop :=
  ∀ n, P15772144618858927160.a n = A190525 n

end A190525

/-! ## A190525.P16586421665428479377

`Δ[A017899(A016789(n+1)+2)]`
-/

namespace A190525.P16586421665428479377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A016789 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190525.P16586421665428479377

namespace A190525

/-- `Δ[A017899(A016789(n+1)+2)]` -/
def P16586421665428479377.Spec : Prop :=
  ∀ n, P16586421665428479377.a n = A190525 n

end A190525

/-! ## A190525.P13531067879748452497

`record[A079955(A261728(n+1)-1)]`
-/

namespace A190525.P13531067879748452497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079955 (A261728 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190525.P13531067879748452497

namespace A190525

/-- `record[A079955(A261728(n+1)-1)]` -/
def P13531067879748452497.Spec : Prop :=
  ∀ n, P13531067879748452497.a n = A190525 n

end A190525

/-! ## A190525.P1925505647036045345

`Δ[A003520(A005843(n+1)+n)]`
-/

namespace A190525.P1925505647036045345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (A005843 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190525.P1925505647036045345

namespace A190525

/-- `Δ[A003520(A005843(n+1)+n)]` -/
def P1925505647036045345.Spec : Prop :=
  ∀ n, P1925505647036045345.a n = A190525 n

end A190525

/-! ## A190525.P18384127649179286930

`record[A003520(A003602(n+2)+n)]`
-/

namespace A190525.P18384127649179286930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (A003602 (n + 2) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190525.P18384127649179286930

namespace A190525

/-- `record[A003520(A003602(n+2)+n)]` -/
def P18384127649179286930.Spec : Prop :=
  ∀ n, P18384127649179286930.a n = A190525 n

end A190525

/-! ## A190525.P18307070875214005873

`record[A079955(n)/A347633(n+1)]`
-/

namespace A190525.P18307070875214005873
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079955 n : ℚ) / (A347633 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190525.P18307070875214005873

namespace A190525

/-- `record[A079955(n)/A347633(n+1)]` -/
def P18307070875214005873.Spec : Prop :=
  ∀ n, P18307070875214005873.a n = (A190525 n : ℚ)

end A190525

/-! ## A190525.P6089584845790764624

`A017899(A016789(n))+Δ[A052921(n)]`
-/

namespace A190525.P6089584845790764624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A016789 n).toNat + (f1 (n + 1) - f1 n)

end

end A190525.P6089584845790764624

namespace A190525

/-- `A017899(A016789(n))+Δ[A052921(n)]` -/
def P6089584845790764624.Spec : Prop :=
  ∀ n, P6089584845790764624.a n = A190525 n

end A190525

/-! ## A190525.P2286662761297772001

`A052921(n+1)-A017899(A016789(n+1))`
-/

namespace A190525.P2286662761297772001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 (n + 1) - A017899 (A016789 (n + 1)).toNat

end

end A190525.P2286662761297772001

namespace A190525

/-- `A052921(n+1)-A017899(A016789(n+1))` -/
def P2286662761297772001.Spec : Prop :=
  ∀ n, P2286662761297772001.a n = A190525 n

end A190525

/-!
# A190526: Number of words of length n on alphabet {1,2,...,n} with no adjacent 1's.

The programs for A190526, there is no canonical definition to state claims against.
-/

/-! ## A190526.P13404624306573132888

`A180165(2*((1-n)²+n))`
-/

namespace A190526.P13404624306573132888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180165 (2 * ((1 - (n : ℤ)) ^ 2 + (n : ℤ))).toNat

end

end A190526.P13404624306573132888

/-! ## A190526.P16113138272156525657

`A308358(A242627(n+3)+A006873(n))`
-/

namespace A190526.P16113138272156525657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308358 (A242627 (n + 3) + A006873 n).toNat

end

end A190526.P16113138272156525657

/-!
# A190527: Primes of the form p^4 + p^3 + p^2 + p + 1, where p is prime.

The programs for A190527, there is no canonical definition to state claims against.
-/

/-! ## A190527.P84206552384106007

`A053699(A065509(n+1))`
-/

namespace A190527.P84206552384106007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (A065509 (n + 1)).toNat

end

end A190527.P84206552384106007

/-! ## A190527.P14674056294437560930

`∩[A088548(n+1), A131992(n+1)]`
-/

namespace A190527.P14674056294437560930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131992 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190527.P14674056294437560930

/-! ## A190527.P10554486957224129747

`A038992(p?[A049409(n+1)])`
-/

namespace A190527.P10554486957224129747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038992 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A190527.P10554486957224129747

/-! ## A190527.P1637040317748380352

`A053699(p?[A049409(n+1)])`
-/

namespace A190527.P1637040317748380352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053699 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A190527.P1637040317748380352

/-! ## A190527.P4241104230753847610

`∑{d}[p?[A049409(n+1)], #*A160891(#)]`
-/

namespace A190527.P4241104230753847610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049409 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A160891 d

end

end A190527.P4241104230753847610

/-!
# A190528: Number of n-step one-sided prudent walks avoiding exactly three consecutive West steps.

The programs for A190528, the canonical program `A190528.P11696352075239447689` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190528 has offset 0).

The definition of A190528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190528.P11696352075239447689

`2*a(n-1)+a(n-2)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=16, a(4)=39`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190528

/-- `2*a(n-1)+a(n-2)-a(n-4)+a(n-5)` -/
def P11696352075239447689.Spec : Prop :=
  ∀ n, P11696352075239447689.a n = A190528 n

theorem P11696352075239447689.correct : P11696352075239447689.Spec := by
  intro n
  simp only [A190528]

end A190528

/-! ## A190528.P14342364182449793440

`Δ[ogf(1/(1-2x-x^2+x^4-x^5))]`
-/

namespace A190528.P14342364182449793440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -1, 0, 1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190528.P14342364182449793440

namespace A190528

/-- `Δ[ogf(1/(1-2x-x^2+x^4-x^5))]` -/
def P14342364182449793440.Spec : Prop :=
  ∀ n, P14342364182449793440.a n = A190528 n

end A190528

/-! ## A190528.P3616261549341663220

`A248227(A137681(n+2))`
-/

namespace A190528.P3616261549341663220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (A137681 (n + 2)).toNat

end

end A190528.P3616261549341663220

namespace A190528

/-- `A248227(A137681(n+2))` -/
def P3616261549341663220.Spec : Prop :=
  ∀ n, P3616261549341663220.a n = A190528 n

end A190528

/-! ## A190528.P8724632045036284711

`A138311(∑[∑[A304961(n)]])`
-/

namespace A190528.P8724632045036284711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304961 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138311 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A190528.P8724632045036284711

namespace A190528

/-- `A138311(∑[∑[A304961(n)]])` -/
def P8724632045036284711.Spec : Prop :=
  ∀ n, P8724632045036284711.a n = A190528 n

end A190528

/-!
# A190529: The number of set partitions of {1,2,...,n} into a prime number of blocks each of which contains a prime number of elements.

The programs for A190529, there is no canonical definition to state claims against.
-/

/-! ## A190529.P7003366210665335032

`A106616(A228421(n))+2`
-/

namespace A190529.P7003366210665335032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (A228421 n).toNat + 2

end

end A190529.P7003366210665335032

/-!
# A190531: Number of idempotents in Identity Difference Partial Transformation semigroup.

The programs for A190531, the canonical program `A190531.P18265414404099108219` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190531 has offset 1).

The definition of A190531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190531.P18265414404099108219

`n*3^(n-1)+(n+1)*2^n-(n+1)+2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190531

/-- `n*3^(n-1)+(n+1)*2^n-(n+1)+2` -/
def P18265414404099108219.Spec : Prop :=
  ∀ n, P18265414404099108219.a n = (A190531 (n + 1) : ℚ)

end A190531

/-!
# A190535: Number of (n+2) X (n+2) symmetric binary matrices without the pattern 0 1 1 diagonally.

The programs for A190535, there is no canonical definition to state claims against.
-/

/-! ## A190535.P2169933189374353027

`∏[ceil(ϕ*a(n-1))]` with `a(0)=56, a(1)=12`
-/

namespace A190535.P2169933189374353027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [56, 12] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A190535.P2169933189374353027

/-! ## A190535.P15554021556785023894

`∏[floor(ϕ*a(n-1))+1]` with `a(0)=56, a(1)=12`
-/

namespace A190535.P15554021556785023894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [56, 12] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A190535.P15554021556785023894

/-! ## A190535.P9116422647914327721

`A302999(n+4)`
-/

namespace A190535.P9116422647914327721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302999 (n + 4)

end

end A190535.P9116422647914327721

/-! ## A190535.P15128164669795737163

`8*∏[A020732(n+1)]`
-/

namespace A190535.P15128164669795737163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A190535.P15128164669795737163

/-! ## A190535.P7761895223662903230

`8*∏[A000071(n+6)]`
-/

namespace A190535.P7761895223662903230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A190535.P7761895223662903230

/-!
# A190539: 

The programs for A190539, there is no canonical definition to state claims against.
-/

/-! ## A190539.P5216322962433377869

`2^n^3`
-/

namespace A190539.P5216322962433377869
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n ^ 3

end

end A190539.P5216322962433377869

/-!
# A190540: a(n) = 7^n - 2^n.

The programs for A190540, the canonical program `A190540.P15702314646486782314` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190540 has offset 0).

The definition of A190540 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-2^n` (program `A190540.P15702314646486782314`, by `A190540.P15702314646486782314.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190540.P15702314646486782314

`7^n-2^n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190540

/-- `7^n-2^n` -/
def P15702314646486782314.Spec : Prop :=
  ∀ n, P15702314646486782314.a n = A190540 n

theorem P15702314646486782314.correct : P15702314646486782314.Spec := by
  intro n
  simp only [A190540]

end A190540

/-! ## A190540.P7617093886443055726

`ogf(5x/(1-9x+14x^2))`
-/

namespace A190540.P7617093886443055726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -9, 14] n

end

end A190540.P7617093886443055726

namespace A190540

/-- `ogf(5x/(1-9x+14x^2))` -/
def P7617093886443055726.Spec : Prop :=
  ∀ n, P7617093886443055726.a n = A190540 n

end A190540

/-! ## A190540.P6560006946345275403

`abs(1-A155598(n))`
-/

namespace A190540.P6560006946345275403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155598 n|

end

end A190540.P6560006946345275403

namespace A190540

/-- `abs(1-A155598(n))` -/
def P6560006946345275403.Spec : Prop :=
  ∀ n, P6560006946345275403.a n = A190540 n

end A190540

/-! ## A190540.P9044509451599411594

`abs(A135161(n)+3^n+5^n)`
-/

namespace A190540.P9044509451599411594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135161 n + (3 ^ n + 5 ^ n : ℤ)|

end

end A190540.P9044509451599411594

namespace A190540

/-- `abs(A135161(n)+3^n+5^n)` -/
def P9044509451599411594.Spec : Prop :=
  ∀ n, P9044509451599411594.a n = A190540 n

end A190540

/-! ## A190540.P6356106967450779033

`abs(A000079(n)-A000420(n))`
-/

namespace A190540.P6356106967450779033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A000420 n|

end

end A190540.P6356106967450779033

namespace A190540

/-- `abs(A000079(n)-A000420(n))` -/
def P6356106967450779033.Spec : Prop :=
  ∀ n, P6356106967450779033.a n = A190540 n

end A190540

/-! ## A190540.P18039434417683305203

`abs(A000325(n)-A024076(n))`
-/

namespace A190540.P18039434417683305203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000325 n - A024076 n|

end

end A190540.P18039434417683305203

namespace A190540

/-- `abs(A000325(n)-A024076(n))` -/
def P18039434417683305203.Spec : Prop :=
  ∀ n, P18039434417683305203.a n = A190540 n

end A190540

/-! ## A190540.P5871133617279161536

`abs(A000051(n)-A034491(n))`
-/

namespace A190540.P5871133617279161536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - A034491 n|

end

end A190540.P5871133617279161536

namespace A190540

/-- `abs(A000051(n)-A034491(n))` -/
def P5871133617279161536.Spec : Prop :=
  ∀ n, P5871133617279161536.a n = A190540 n

end A190540

/-! ## A190540.P10436703647604984157

`abs(A024012(n)-A024077(n))`
-/

namespace A190540.P10436703647604984157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024012 n - A024077 n|

end

end A190540.P10436703647604984157

namespace A190540

/-- `abs(A024012(n)-A024077(n))` -/
def P10436703647604984157.Spec : Prop :=
  ∀ n, P10436703647604984157.a n = A190540 n

end A190540

/-! ## A190540.P330107328835569701

`abs(A024019(n)-A024084(n))`
-/

namespace A190540.P330107328835569701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024019 n - A024084 n|

end

end A190540.P330107328835569701

namespace A190540

/-- `abs(A024019(n)-A024084(n))` -/
def P330107328835569701.Spec : Prop :=
  ∀ n, P330107328835569701.a n = A190540 n

end A190540

/-! ## A190540.P16765592660400300390

`abs(A001550(n)-A074509(n))`
-/

namespace A190540.P16765592660400300390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001550 n - A074509 n|

end

end A190540.P16765592660400300390

namespace A190540

/-- `abs(A001550(n)-A074509(n))` -/
def P16765592660400300390.Spec : Prop :=
  ∀ n, P16765592660400300390.a n = A190540 n

end A190540

/-! ## A190540.P9287732329612730755

`abs(A074528(n)-A074555(n))`
-/

namespace A190540.P9287732329612730755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074528 n - A074555 n|

end

end A190540.P9287732329612730755

namespace A190540

/-- `abs(A074528(n)-A074555(n))` -/
def P9287732329612730755.Spec : Prop :=
  ∀ n, P9287732329612730755.a n = A190540 n

end A190540

/-! ## A190540.P2307472352008068514

`∑[A055272(n)-A011782(n)]`
-/

namespace A190540.P2307472352008068514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190540.P2307472352008068514

namespace A190540

/-- `∑[A055272(n)-A011782(n)]` -/
def P2307472352008068514.Spec : Prop :=
  ∀ n, P2307472352008068514.a n = A190540 n

end A190540

/-! ## A190540.P8330930686092951590

`Δ[A023000(n)-A000051(n)]`
-/

namespace A190540.P8330930686092951590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n - A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190540.P8330930686092951590

namespace A190540

/-- `Δ[A023000(n)-A000051(n)]` -/
def P8330930686092951590.Spec : Prop :=
  ∀ n, P8330930686092951590.a n = A190540 n

end A190540

/-! ## A190540.P18326481332554303678

`Δ[A023000(n)-A000079(n)]`
-/

namespace A190540.P18326481332554303678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190540.P18326481332554303678

namespace A190540

/-- `Δ[A023000(n)-A000079(n)]` -/
def P18326481332554303678.Spec : Prop :=
  ∀ n, P18326481332554303678.a n = A190540 n

end A190540

/-! ## A190540.P14277401097406065152

`Δ[A023000(n)-A000225(n)]`
-/

namespace A190540.P14277401097406065152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190540.P14277401097406065152

namespace A190540

/-- `Δ[A023000(n)-A000225(n)]` -/
def P14277401097406065152.Spec : Prop :=
  ∀ n, P14277401097406065152.a n = A190540 n

end A190540

/-! ## A190540.P5131642693345893702

`Δ[A023000(n)-A000918(n)]`
-/

namespace A190540.P5131642693345893702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n - A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190540.P5131642693345893702

namespace A190540

/-- `Δ[A023000(n)-A000918(n)]` -/
def P5131642693345893702.Spec : Prop :=
  ∀ n, P5131642693345893702.a n = A190540 n

end A190540

/-! ## A190540.P5647912360327882323

`Δ[A047852(n)-A000051(n)]`
-/

namespace A190540.P5647912360327882323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 n - A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190540.P5647912360327882323

namespace A190540

/-- `Δ[A047852(n)-A000051(n)]` -/
def P5647912360327882323.Spec : Prop :=
  ∀ n, P5647912360327882323.a n = A190540 n

end A190540

/-! ## A190540.P14073326397254506991

`Δ[A047852(n)-A000225(n)]`
-/

namespace A190540.P14073326397254506991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 n - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190540.P14073326397254506991

namespace A190540

/-- `Δ[A047852(n)-A000225(n)]` -/
def P14073326397254506991.Spec : Prop :=
  ∀ n, P14073326397254506991.a n = A190540 n

end A190540

/-! ## A190540.P16576456703454021818

`abs(Δ[A000225(n)]-A000420(n))`
-/

namespace A190540.P16576456703454021818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - A000420 n|

end

end A190540.P16576456703454021818

namespace A190540

/-- `abs(Δ[A000225(n)]-A000420(n))` -/
def P16576456703454021818.Spec : Prop :=
  ∀ n, P16576456703454021818.a n = A190540 n

end A190540

/-!
# A190541: a(n) = 7^n - 3^n.

The programs for A190541, the canonical program `A190541.P13360383706899015187` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190541 has offset 0).

The definition of A190541 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-3^n` (program `A190541.P13360383706899015187`, by `A190541.P13360383706899015187.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190541.P13360383706899015187

`7^n-3^n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190541

/-- `7^n-3^n` -/
def P13360383706899015187.Spec : Prop :=
  ∀ n, P13360383706899015187.a n = A190541 n

theorem P13360383706899015187.correct : P13360383706899015187.Spec := by
  intro n
  simp only [A190541]

end A190541

/-! ## A190541.P4786084127051529584

`ogf(4x/(1-10x+21x^2))`
-/

namespace A190541.P4786084127051529584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -10, 21] n

end

end A190541.P4786084127051529584

namespace A190541

/-- `ogf(4x/(1-10x+21x^2))` -/
def P4786084127051529584.Spec : Prop :=
  ∀ n, P4786084127051529584.a n = A190541 n

end A190541

/-! ## A190541.P2479274180510259774

`Δ[A341590(n)]`
-/

namespace A190541.P2479274180510259774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190541.P2479274180510259774

namespace A190541

/-- `Δ[A341590(n)]` -/
def P2479274180510259774.Spec : Prop :=
  ∀ n, P2479274180510259774.a n = A190541 n

end A190541

/-! ## A190541.P2664978861084679049

`xor(1, A155612(n))`
-/

namespace A190541.P2664978861084679049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A155612 n)

end

end A190541.P2664978861084679049

namespace A190541

/-- `xor(1, A155612(n))` -/
def P2664978861084679049.Spec : Prop :=
  ∀ n, P2664978861084679049.a n = A190541 n

end A190541

/-! ## A190541.P17631664058190057673

`abs(A024023(n)-A024075(n))`
-/

namespace A190541.P17631664058190057673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024023 n - A024075 n|

end

end A190541.P17631664058190057673

namespace A190541

/-- `abs(A024023(n)-A024075(n))` -/
def P17631664058190057673.Spec : Prop :=
  ∀ n, P17631664058190057673.a n = A190541 n

end A190541

/-! ## A190541.P3802034030788276979

`abs(A024025(n)-A024077(n))`
-/

namespace A190541.P3802034030788276979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024025 n - A024077 n|

end

end A190541.P3802034030788276979

namespace A190541

/-- `abs(A024025(n)-A024077(n))` -/
def P3802034030788276979.Spec : Prop :=
  ∀ n, P3802034030788276979.a n = A190541 n

end A190541

/-! ## A190541.P58467937040916346

`abs(A024032(n)-A024084(n))`
-/

namespace A190541.P58467937040916346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024032 n - A024084 n|

end

end A190541.P58467937040916346

namespace A190541

/-- `abs(A024032(n)-A024084(n))` -/
def P58467937040916346.Spec : Prop :=
  ∀ n, P58467937040916346.a n = A190541 n

end A190541

/-! ## A190541.P43617563506146938

`abs(A034472(n)-A034491(n))`
-/

namespace A190541.P43617563506146938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034472 n - A034491 n|

end

end A190541.P43617563506146938

namespace A190541

/-- `abs(A034472(n)-A034491(n))` -/
def P43617563506146938.Spec : Prop :=
  ∀ n, P43617563506146938.a n = A190541 n

end A190541

/-! ## A190541.P15621407388145882171

`abs(A074506(n)-A074513(n))`
-/

namespace A190541.P15621407388145882171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074506 n - A074513 n|

end

end A190541.P15621407388145882171

namespace A190541

/-- `abs(A074506(n)-A074513(n))` -/
def P15621407388145882171.Spec : Prop :=
  ∀ n, P15621407388145882171.a n = A190541 n

end A190541

/-! ## A190541.P8154906462641403943

`abs(A074527(n)-A074538(n))`
-/

namespace A190541.P8154906462641403943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074527 n - A074538 n|

end

end A190541.P8154906462641403943

namespace A190541

/-- `abs(A074527(n)-A074538(n))` -/
def P8154906462641403943.Spec : Prop :=
  ∀ n, P8154906462641403943.a n = A190541 n

end A190541

/-! ## A190541.P6914151247681603254

`abs(A074528(n)-A074541(n))`
-/

namespace A190541.P6914151247681603254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074528 n - A074541 n|

end

end A190541.P6914151247681603254

namespace A190541

/-- `abs(A074528(n)-A074541(n))` -/
def P6914151247681603254.Spec : Prop :=
  ∀ n, P6914151247681603254.a n = A190541 n

end A190541

/-! ## A190541.P9303286526611456608

`abs(A074547(n)-A074562(n))`
-/

namespace A190541.P9303286526611456608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074547 n - A074562 n|

end

end A190541.P9303286526611456608

namespace A190541

/-- `abs(A074547(n)-A074562(n))` -/
def P9303286526611456608.Spec : Prop :=
  ∀ n, P9303286526611456608.a n = A190541 n

end A190541

/-! ## A190541.P9264100017196582981

`∑[A055272(n)-A025192(n)]`
-/

namespace A190541.P9264100017196582981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n - A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190541.P9264100017196582981

namespace A190541

/-- `∑[A055272(n)-A025192(n)]` -/
def P9264100017196582981.Spec : Prop :=
  ∀ n, P9264100017196582981.a n = A190541 n

end A190541

/-! ## A190541.P1489674718082295068

`Δ[A023000(n)-A003462(n)]`
-/

namespace A190541.P1489674718082295068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n - A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190541.P1489674718082295068

namespace A190541

/-- `Δ[A023000(n)-A003462(n)]` -/
def P1489674718082295068.Spec : Prop :=
  ∀ n, P1489674718082295068.a n = A190541 n

end A190541

/-! ## A190541.P15561136019142251128

`2*(A034494(n)-A007051(n))`
-/

namespace A190541.P15561136019142251128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A034494 n - A007051 n)

end

end A190541.P15561136019142251128

namespace A190541

/-- `2*(A034494(n)-A007051(n))` -/
def P15561136019142251128.Spec : Prop :=
  ∀ n, P15561136019142251128.a n = A190541 n

end A190541

/-! ## A190541.P13296438295322264771

`2*(A081336(n)-A000244(n))`
-/

namespace A190541.P13296438295322264771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081336 n - A000244 n)

end

end A190541.P13296438295322264771

namespace A190541

/-- `2*(A081336(n)-A000244(n))` -/
def P13296438295322264771.Spec : Prop :=
  ∀ n, P13296438295322264771.a n = A190541 n

end A190541

/-! ## A190541.P8781148609734895828

`2*(A165147(n)-A000420(n))`
-/

namespace A190541.P8781148609734895828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A165147 n - A000420 n)

end

end A190541.P8781148609734895828

namespace A190541

/-- `2*(A165147(n)-A000420(n))` -/
def P8781148609734895828.Spec : Prop :=
  ∀ n, P8781148609734895828.a n = A190541 n

end A190541

/-! ## A190541.P21202725240055726

`Δ[A109021(n)/2]`
-/

namespace A190541.P21202725240055726
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109021 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190541.P21202725240055726

namespace A190541

/-- `Δ[A109021(n)/2]` -/
def P21202725240055726.Spec : Prop :=
  ∀ n, P21202725240055726.a n = (A190541 n : ℚ)

end A190541

/-! ## A190541.P3216420751695746523

`(A027474(n+2)-A027472(n+3))/A000217(n+1)`
-/

namespace A190541.P3216420751695746523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027474 (n + 2) - A027472 (n + 3) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A190541.P3216420751695746523

namespace A190541

/-- `(A027474(n+2)-A027472(n+3))/A000217(n+1)` -/
def P3216420751695746523.Spec : Prop :=
  ∀ n, P3216420751695746523.a n = (A190541 n : ℚ)

end A190541

/-!
# A190542: a(n) = 7^n - 4^n.

The programs for A190542, the canonical program `A190542.P17243396524375904518` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190542 has offset 0).

The definition of A190542 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n-4^n` (program `A190542.P17243396524375904518`, by `A190542.P17243396524375904518.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190542.P17243396524375904518

`7^n-4^n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190542

/-- `7^n-4^n` -/
def P17243396524375904518.Spec : Prop :=
  ∀ n, P17243396524375904518.a n = A190542 n

theorem P17243396524375904518.correct : P17243396524375904518.Spec := by
  intro n
  simp only [A190542]

end A190542

/-! ## A190542.P14596858045065187075

`abs(1-A155628(n))`
-/

namespace A190542.P14596858045065187075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155628 n|

end

end A190542.P14596858045065187075

namespace A190542

/-- `abs(1-A155628(n))` -/
def P14596858045065187075.Spec : Prop :=
  ∀ n, P14596858045065187075.a n = A190542 n

end A190542

/-! ## A190542.P201996795212969279

`abs(A024037(n)-A024076(n))`
-/

namespace A190542.P201996795212969279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024037 n - A024076 n|

end

end A190542.P201996795212969279

namespace A190542

/-- `abs(A024037(n)-A024076(n))` -/
def P201996795212969279.Spec : Prop :=
  ∀ n, P201996795212969279.a n = A190542 n

end A190542

/-! ## A190542.P10134963542188800659

`abs(A024041(n)-A024080(n))`
-/

namespace A190542.P10134963542188800659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024041 n - A024080 n|

end

end A190542.P10134963542188800659

namespace A190542

/-- `abs(A024041(n)-A024080(n))` -/
def P10134963542188800659.Spec : Prop :=
  ∀ n, P10134963542188800659.a n = A190542 n

end A190542

/-! ## A190542.P7277471304529959943

`abs(A034491(n)-A052539(n))`
-/

namespace A190542.P7277471304529959943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034491 n - A052539 n|

end

end A190542.P7277471304529959943

namespace A190542

/-- `abs(A034491(n)-A052539(n))` -/
def P7277471304529959943.Spec : Prop :=
  ∀ n, P7277471304529959943.a n = A190542 n

end A190542

/-! ## A190542.P4613247873305469952

`abs(A074506(n)-A074509(n))`
-/

namespace A190542.P4613247873305469952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074506 n - A074509 n|

end

end A190542.P4613247873305469952

namespace A190542

/-- `abs(A074506(n)-A074509(n))` -/
def P4613247873305469952.Spec : Prop :=
  ∀ n, P4613247873305469952.a n = A190542 n

end A190542

/-! ## A190542.P8627450712806206660

`abs(A074511(n)-A074517(n))`
-/

namespace A190542.P8627450712806206660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074511 n - A074517 n|

end

end A190542.P8627450712806206660

namespace A190542

/-- `abs(A074511(n)-A074517(n))` -/
def P8627450712806206660.Spec : Prop :=
  ∀ n, P8627450712806206660.a n = A190542 n

end A190542

/-! ## A190542.P4714528630253502828

`abs(A155598(n)-A020515(n))`
-/

namespace A190542.P4714528630253502828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155598 n - A020515 n|

end

end A190542.P4714528630253502828

namespace A190542

/-- `abs(A155598(n)-A020515(n))` -/
def P4714528630253502828.Spec : Prop :=
  ∀ n, P4714528630253502828.a n = A190542 n

end A190542

/-! ## A190542.P9108065854313649266

`abs(A155602(n)-A155605(n))`
-/

namespace A190542.P9108065854313649266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155602 n - A155605 n|

end

end A190542.P9108065854313649266

namespace A190542

/-- `abs(A155602(n)-A155605(n))` -/
def P9108065854313649266.Spec : Prop :=
  ∀ n, P9108065854313649266.a n = A190542 n

end A190542

/-! ## A190542.P14456574454783428280

`∑[A055272(n)-A002001(n)]`
-/

namespace A190542.P14456574454783428280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055272 n - A002001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190542.P14456574454783428280

namespace A190542

/-- `∑[A055272(n)-A002001(n)]` -/
def P14456574454783428280.Spec : Prop :=
  ∀ n, P14456574454783428280.a n = A190542 n

end A190542

/-! ## A190542.P6016741627512065606

`Δ[A023000(n)-A002450(n)]`
-/

namespace A190542.P6016741627512065606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023000 n - A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190542.P6016741627512065606

namespace A190542

/-- `Δ[A023000(n)-A002450(n)]` -/
def P6016741627512065606.Spec : Prop :=
  ∀ n, P6016741627512065606.a n = A190542 n

end A190542

/-! ## A190542.P9178026650299101729

`Δ[A047852(n)-A047849(n)]`
-/

namespace A190542.P9178026650299101729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047852 n - A047849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190542.P9178026650299101729

namespace A190542

/-- `Δ[A047852(n)-A047849(n)]` -/
def P9178026650299101729.Spec : Prop :=
  ∀ n, P9178026650299101729.a n = A190542 n

end A190542

/-! ## A190542.P3786076116411521229

`abs(A000079(n)²-A000420(n))`
-/

namespace A190542.P3786076116411521229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n ^ 2 - A000420 n|

end

end A190542.P3786076116411521229

namespace A190542

/-- `abs(A000079(n)²-A000420(n))` -/
def P3786076116411521229.Spec : Prop :=
  ∀ n, P3786076116411521229.a n = A190542 n

end A190542

/-! ## A190542.P4332415432970262855

`(A027474(n+2)-A038845(n))/A000217(n+1)`
-/

namespace A190542.P4332415432970262855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027474 (n + 2) - A038845 n : ℚ) / (A000217 (n + 1) : ℚ)

end

end A190542.P4332415432970262855

namespace A190542

/-- `(A027474(n+2)-A038845(n))/A000217(n+1)` -/
def P4332415432970262855.Spec : Prop :=
  ∀ n, P4332415432970262855.a n = (A190542 n : ℚ)

end A190542

/-!
# A190543: a(n) = 8^n - 3^n.

The programs for A190543, the canonical program `A190543.P2556492805714874723` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190543 has offset 0).

The definition of A190543 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-3^n` (program `A190543.P2556492805714874723`, by `A190543.P2556492805714874723.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190543.P2556492805714874723

`8^n-3^n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190543

/-- `8^n-3^n` -/
def P2556492805714874723.Spec : Prop :=
  ∀ n, P2556492805714874723.a n = A190543 n

theorem P2556492805714874723.correct : P2556492805714874723.Spec := by
  intro n
  simp only [A190543]

end A190543

/-! ## A190543.P3040916984254543923

`ogf(5x/(1-11x+24x^2))`
-/

namespace A190543.P3040916984254543923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -11, 24] n

end

end A190543.P3040916984254543923

namespace A190543

/-- `ogf(5x/(1-11x+24x^2))` -/
def P3040916984254543923.Spec : Prop :=
  ∀ n, P3040916984254543923.a n = A190543 n

end A190543

/-! ## A190543.P13385324638131125863

`abs(1-A155613(n))`
-/

namespace A190543.P13385324638131125863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155613 n|

end

end A190543.P13385324638131125863

namespace A190543

/-- `abs(1-A155613(n))` -/
def P13385324638131125863.Spec : Prop :=
  ∀ n, P13385324638131125863.a n = A190543 n

end A190543

/-! ## A190543.P6793585480529551176

`abs(A024024(n)-A024089(n))`
-/

namespace A190543.P6793585480529551176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024024 n - A024089 n|

end

end A190543.P6793585480529551176

namespace A190543

/-- `abs(A024024(n)-A024089(n))` -/
def P6793585480529551176.Spec : Prop :=
  ∀ n, P6793585480529551176.a n = A190543 n

end A190543

/-! ## A190543.P5510591743725569991

`abs(A024025(n)-A024090(n))`
-/

namespace A190543.P5510591743725569991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024025 n - A024090 n|

end

end A190543.P5510591743725569991

namespace A190543

/-- `abs(A024025(n)-A024090(n))` -/
def P5510591743725569991.Spec : Prop :=
  ∀ n, P5510591743725569991.a n = A190543 n

end A190543

/-! ## A190543.P15809673678744053751

`abs(A024028(n)-A024093(n))`
-/

namespace A190543.P15809673678744053751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024028 n - A024093 n|

end

end A190543.P15809673678744053751

namespace A190543

/-- `abs(A024028(n)-A024093(n))` -/
def P15809673678744053751.Spec : Prop :=
  ∀ n, P15809673678744053751.a n = A190543 n

end A190543

/-! ## A190543.P11530225626830931849

`abs(A001579(n)-A074572(n))`
-/

namespace A190543.P11530225626830931849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001579 n - A074572 n|

end

end A190543.P11530225626830931849

namespace A190543

/-- `abs(A001579(n)-A074572(n))` -/
def P11530225626830931849.Spec : Prop :=
  ∀ n, P11530225626830931849.a n = A190543 n

end A190543

/-! ## A190543.P13587361589944252234

`abs(A074506(n)-A074514(n))`
-/

namespace A190543.P13587361589944252234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074506 n - A074514 n|

end

end A190543.P13587361589944252234

namespace A190543

/-- `abs(A074506(n)-A074514(n))` -/
def P13587361589944252234.Spec : Prop :=
  ∀ n, P13587361589944252234.a n = A190543 n

end A190543

/-! ## A190543.P11626015543194724667

`abs(A074528(n)-A074542(n))`
-/

namespace A190543.P11626015543194724667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074528 n - A074542 n|

end

end A190543.P11626015543194724667

namespace A190543

/-- `abs(A074528(n)-A074542(n))` -/
def P11626015543194724667.Spec : Prop :=
  ∀ n, P11626015543194724667.a n = A190543 n

end A190543

/-! ## A190543.P18431944253048923355

`abs(A074607(n)-A074620(n))`
-/

namespace A190543.P18431944253048923355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074607 n - A074620 n|

end

end A190543.P18431944253048923355

namespace A190543

/-- `abs(A074607(n)-A074620(n))` -/
def P18431944253048923355.Spec : Prop :=
  ∀ n, P18431944253048923355.a n = A190543 n

end A190543

/-! ## A190543.P11550153542868643684

`abs(A103457(n)-A103459(n))`
-/

namespace A190543.P11550153542868643684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103457 n - A103459 n|

end

end A190543.P11550153542868643684

namespace A190543

/-- `abs(A103457(n)-A103459(n))` -/
def P11550153542868643684.Spec : Prop :=
  ∀ n, P11550153542868643684.a n = A190543 n

end A190543

/-! ## A190543.P15425744407110863070

`abs(A155602(n)-A155619(n))`
-/

namespace A190543.P15425744407110863070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155602 n - A155619 n|

end

end A190543.P15425744407110863070

namespace A190543

/-- `abs(A155602(n)-A155619(n))` -/
def P15425744407110863070.Spec : Prop :=
  ∀ n, P15425744407110863070.a n = A190543 n

end A190543

/-! ## A190543.P2650674284928857420

`abs(A155603(n)-A155635(n))`
-/

namespace A190543.P2650674284928857420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155603 n - A155635 n|

end

end A190543.P2650674284928857420

namespace A190543

/-- `abs(A155603(n)-A155635(n))` -/
def P2650674284928857420.Spec : Prop :=
  ∀ n, P2650674284928857420.a n = A190543 n

end A190543

/-! ## A190543.P3904207727345835615

`∑[A055274(n)-A025192(n)]`
-/

namespace A190543.P3904207727345835615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 n - A025192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190543.P3904207727345835615

namespace A190543

/-- `∑[A055274(n)-A025192(n)]` -/
def P3904207727345835615.Spec : Prop :=
  ∀ n, P3904207727345835615.a n = A190543 n

end A190543

/-! ## A190543.P7082078558223110804

`Δ[A023001(n)-A003462(n)]`
-/

namespace A190543.P7082078558223110804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n - A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190543.P7082078558223110804

namespace A190543

/-- `Δ[A023001(n)-A003462(n)]` -/
def P7082078558223110804.Spec : Prop :=
  ∀ n, P7082078558223110804.a n = A190543 n

end A190543

/-! ## A190543.P12779377912045459572

`Δ[A023001(n)-A007051(n)]`
-/

namespace A190543.P12779377912045459572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n - A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190543.P12779377912045459572

namespace A190543

/-- `Δ[A023001(n)-A007051(n)]` -/
def P12779377912045459572.Spec : Prop :=
  ∀ n, P12779377912045459572.a n = A190543 n

end A190543

/-! ## A190543.P17520134918195694782

`Δ[A047853(n)-A003462(n)]`
-/

namespace A190543.P17520134918195694782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047853 n - A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190543.P17520134918195694782

namespace A190543

/-- `Δ[A047853(n)-A003462(n)]` -/
def P17520134918195694782.Spec : Prop :=
  ∀ n, P17520134918195694782.a n = A190543 n

end A190543

/-! ## A190543.P15876520640022849154

`Δ[A047853(n)-A007051(n)]`
-/

namespace A190543.P15876520640022849154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047853 n - A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190543.P15876520640022849154

namespace A190543

/-- `Δ[A047853(n)-A007051(n)]` -/
def P15876520640022849154.Spec : Prop :=
  ∀ n, P15876520640022849154.a n = A190543 n

end A190543

/-!
# A190544: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(2),4,0) and []=floor.

The programs for A190544, the canonical program `A190544.P18295826170075016649` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190544 has offset 1).

The definition of A190544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190544.P18295826170075016649

`floor((A004767(n)+1)*sqrt(2))%4`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190544

/-- `floor((A004767(n)+1)*sqrt(2))%4` -/
def P18295826170075016649.Spec : Prop :=
  ∀ n, P18295826170075016649.a n = A190544 (n + 1)

theorem P18295826170075016649.correct : P18295826170075016649.Spec := by
  intro n
  simp only [A190544, Nat.add_sub_cancel]

end A190544

/-! ## A190544.P18214152901628070339

`A022842(2*(n+1))%4`
-/

namespace A190544.P18214152901628070339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022842 (2 * (n + 1))) 4

end

end A190544.P18214152901628070339

namespace A190544

/-- `A022842(2*(n+1))%4` -/
def P18214152901628070339.Spec : Prop :=
  ∀ n, P18214152901628070339.a n = A190544 (n + 1)

end A190544

/-! ## A190544.P3641454201172598188

`A197878(2*(n+1))%4`
-/

namespace A190544.P3641454201172598188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197878 (2 * (n + 1))) 4

end

end A190544.P3641454201172598188

namespace A190544

/-- `A197878(2*(n+1))%4` -/
def P3641454201172598188.Spec : Prop :=
  ∀ n, P3641454201172598188.a n = A190544 (n + 1)

end A190544

/-! ## A190544.P5553804950096378185

`and(3, A197878(n+2+n))`
-/

namespace A190544.P5553804950096378185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A197878 (n + 2 + n))

end

end A190544.P5553804950096378185

namespace A190544

/-- `and(3, A197878(n+2+n))` -/
def P5553804950096378185.Spec : Prop :=
  ∀ n, P5553804950096378185.a n = A190544 (n + 1)

end A190544

/-! ## A190544.P16825986149728327508

`A197879(2*(n+1))+2*A083035(2*(n+1))`
-/

namespace A190544.P16825986149728327508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (2 * (n + 1)) + 2 * A083035 (2 * (n + 1))

end

end A190544.P16825986149728327508

namespace A190544

/-- `A197879(2*(n+1))+2*A083035(2*(n+1))` -/
def P16825986149728327508.Spec : Prop :=
  ∀ n, P16825986149728327508.a n = A190544 (n + 1)

end A190544

/-! ## A190544.P3241775916008426948

`A001951(4*(n+1))%4`
-/

namespace A190544.P3241775916008426948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001951 (4 * (n + 1))) 4

end

end A190544.P3241775916008426948

namespace A190544

/-- `A001951(4*(n+1))%4` -/
def P3241775916008426948.Spec : Prop :=
  ∀ n, P3241775916008426948.a n = A190544 (n + 1)

end A190544

/-! ## A190544.P7283570433618414390

`A001952(4*(n+1))%4`
-/

namespace A190544.P7283570433618414390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001952 (4 * (n + 1))) 4

end

end A190544.P7283570433618414390

namespace A190544

/-- `A001952(4*(n+1))%4` -/
def P7283570433618414390.Spec : Prop :=
  ∀ n, P7283570433618414390.a n = A190544 (n + 1)

end A190544

/-! ## A190544.P5708293025992355578

`and(3, A001952(2*2*(n+1)))`
-/

namespace A190544.P5708293025992355578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A001952 (2 * (2 * (n + 1))))

end

end A190544.P5708293025992355578

namespace A190544

/-- `and(3, A001952(2*2*(n+1)))` -/
def P5708293025992355578.Spec : Prop :=
  ∀ n, P5708293025992355578.a n = A190544 (n + 1)

end A190544

/-! ## A190544.P16298315051020434929

`and(3, A001951(A008586(n+1)))`
-/

namespace A190544.P16298315051020434929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A001951 (A008586 (n + 1)).toNat)

end

end A190544.P16298315051020434929

namespace A190544

/-- `and(3, A001951(A008586(n+1)))` -/
def P16298315051020434929.Spec : Prop :=
  ∀ n, P16298315051020434929.a n = A190544 (n + 1)

end A190544

/-! ## A190544.P7108868784549212631

`A001951(A008574(n+1))-A008574(A001951(n+1))`
-/

namespace A190544.P7108868784549212631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A008574 (n + 1)).toNat - A008574 (A001951 (n + 1)).toNat

end

end A190544.P7108868784549212631

namespace A190544

/-- `A001951(A008574(n+1))-A008574(A001951(n+1))` -/
def P7108868784549212631.Spec : Prop :=
  ∀ n, P7108868784549212631.a n = A190544 (n + 1)

end A190544

/-! ## A190544.P10143961051152714576

`A001951(A008586(n+1))-A008586(A001951(n+1))`
-/

namespace A190544.P10143961051152714576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A008586 (n + 1)).toNat - A008586 (A001951 (n + 1)).toNat

end

end A190544.P10143961051152714576

namespace A190544

/-- `A001951(A008586(n+1))-A008586(A001951(n+1))` -/
def P10143961051152714576.Spec : Prop :=
  ∀ n, P10143961051152714576.a n = A190544 (n + 1)

end A190544

/-! ## A190544.P9557803191755511419

`A097508(4*(n+1))%4`
-/

namespace A190544.P9557803191755511419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097508 (4 * (n + 1))) 4

end

end A190544.P9557803191755511419

namespace A190544

/-- `A097508(4*(n+1))%4` -/
def P9557803191755511419.Spec : Prop :=
  ∀ n, P9557803191755511419.a n = A190544 (n + 1)

end A190544

/-! ## A190544.P7968985253388415551

`A190555(A190337(n+1))`
-/

namespace A190544.P7968985253388415551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190555 (A190337 (n + 1)).toNat

end

end A190544.P7968985253388415551

namespace A190544

/-- `A190555(A190337(n+1))` -/
def P7968985253388415551.Spec : Prop :=
  ∀ n, P7968985253388415551.a n = A190544 (n + 1)

end A190544

/-! ## A190544.P13264486277707905865

`and(A020737(n+1)+2, A022842(2*(n+1)))`
-/

namespace A190544.P13264486277707905865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020737 (n + 1) + 2) (A022842 (2 * (n + 1)))

end

end A190544.P13264486277707905865

namespace A190544

/-- `and(A020737(n+1)+2, A022842(2*(n+1)))` -/
def P13264486277707905865.Spec : Prop :=
  ∀ n, P13264486277707905865.a n = A190544 (n + 1)

end A190544

/-!
# A190545: Positions of 0 in A190544.

The programs for A190545, the canonical program `A190545.P8293175414529383674` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190545 has offset 1).

The definition of A190545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190545.P1195692208668245813

`A190556(n+1)%A190554(n+1)`
-/

namespace A190545.P1195692208668245813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190556 (n + 1)) (A190554 (n + 1))

end

end A190545.P1195692208668245813

namespace A190545

/-- `A190556(n+1)%A190554(n+1)` -/
def P1195692208668245813.Spec : Prop :=
  ∀ n, P1195692208668245813.a n = A190545 (n + 1)

end A190545

/-! ## A190545.P8293175414529383674

`∩[A080754(n+1), A327257(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190545

/-- `∩[A080754(n+1), A327257(n+1)]` -/
def P8293175414529383674.Spec : Prop :=
  ∀ n, (P8293175414529383674.a n : ℤ) = A190545 (n + 1)

theorem P8293175414529383674.correct : P8293175414529383674.Spec := by
  intro n
  simp only [A190545, Nat.add_sub_cancel]

end A190545

/-! ## A190545.P5902683157279611506

`∩[A187973(n+1), A327257(n+1)]`
-/

namespace A190545.P5902683157279611506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190545.P5902683157279611506

namespace A190545

/-- `∩[A187973(n+1), A327257(n+1)]` -/
def P5902683157279611506.Spec : Prop :=
  ∀ n, (P5902683157279611506.a n : ℤ) = A190545 (n + 1)

end A190545

/-! ## A190545.P955723722457621985

`∩[A190484(n+1), A327257(n+1)]`
-/

namespace A190545.P955723722457621985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190545.P955723722457621985

namespace A190545

/-- `∩[A190484(n+1), A327257(n+1)]` -/
def P955723722457621985.Spec : Prop :=
  ∀ n, (P955723722457621985.a n : ℤ) = A190545 (n + 1)

end A190545

/-! ## A190545.P16749135953853578799

`∩[A190488(n+1), A327257(n+1)]`
-/

namespace A190545.P16749135953853578799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190545.P16749135953853578799

namespace A190545

/-- `∩[A190488(n+1), A327257(n+1)]` -/
def P16749135953853578799.Spec : Prop :=
  ∀ n, (P16749135953853578799.a n : ℤ) = A190545 (n + 1)

end A190545

/-! ## A190545.P13945140798536500037

`∩[A186316(n+1)+1, A327257(n+1)]`
-/

namespace A190545.P13945140798536500037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186316 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190545.P13945140798536500037

namespace A190545

/-- `∩[A186316(n+1)+1, A327257(n+1)]` -/
def P13945140798536500037.Spec : Prop :=
  ∀ n, (P13945140798536500037.a n : ℤ) = A190545 (n + 1)

end A190545

/-! ## A190545.P6314559614461786476

`∩[A186343(n+1)+1, A327257(n+1)]`
-/

namespace A190545.P6314559614461786476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186343 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190545.P6314559614461786476

namespace A190545

/-- `∩[A186343(n+1)+1, A327257(n+1)]` -/
def P6314559614461786476.Spec : Prop :=
  ∀ n, (P6314559614461786476.a n : ℤ) = A190545 (n + 1)

end A190545

/-! ## A190545.P7041921185943559775

`∩[A186220(n+1)-1, A327257(n+1)]`
-/

namespace A190545.P7041921185943559775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186220 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190545.P7041921185943559775

namespace A190545

/-- `∩[A186220(n+1)-1, A327257(n+1)]` -/
def P7041921185943559775.Spec : Prop :=
  ∀ n, (P7041921185943559775.a n : ℤ) = A190545 (n + 1)

end A190545

/-! ## A190545.P8788755035743808216

`∩[A186222(n+1)-1, A327257(n+1)]`
-/

namespace A190545.P8788755035743808216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186222 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190545.P8788755035743808216

namespace A190545

/-- `∩[A186222(n+1)-1, A327257(n+1)]` -/
def P8788755035743808216.Spec : Prop :=
  ∀ n, (P8788755035743808216.a n : ℤ) = A190545 (n + 1)

end A190545

/-! ## A190545.P15654196674855912683

`∩[A186219(n+1), A327257(n+1)]`
-/

namespace A190545.P15654196674855912683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186219 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190545.P15654196674855912683

namespace A190545

/-- `∩[A186219(n+1), A327257(n+1)]` -/
def P15654196674855912683.Spec : Prop :=
  ∀ n, (P15654196674855912683.a n : ℤ) = A190545 (n + 1)

end A190545

/-! ## A190545.P8901969705154395361

`∩[A186221(n+1), A327257(n+1)]`
-/

namespace A190545.P8901969705154395361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190545.P8901969705154395361

namespace A190545

/-- `∩[A186221(n+1), A327257(n+1)]` -/
def P8901969705154395361.Spec : Prop :=
  ∀ n, (P8901969705154395361.a n : ℤ) = A190545 (n + 1)

end A190545

/-! ## A190545.P13264242893597967950

`∩[A186315(n+1), A327257(n+1)]`
-/

namespace A190545.P13264242893597967950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190545.P13264242893597967950

namespace A190545

/-- `∩[A186315(n+1), A327257(n+1)]` -/
def P13264242893597967950.Spec : Prop :=
  ∀ n, (P13264242893597967950.a n : ℤ) = A190545 (n + 1)

end A190545

/-! ## A190545.P7935753321913743314

`∩[A186317(n+1), A327257(n+1)]`
-/

namespace A190545.P7935753321913743314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190545.P7935753321913743314

namespace A190545

/-- `∩[A186317(n+1), A327257(n+1)]` -/
def P7935753321913743314.Spec : Prop :=
  ∀ n, (P7935753321913743314.a n : ℤ) = A190545 (n + 1)

end A190545

/-! ## A190545.P4104393620876706718

`∩[A186342(n+1), A327257(n+1)]`
-/

namespace A190545.P4104393620876706718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190545.P4104393620876706718

namespace A190545

/-- `∩[A186342(n+1), A327257(n+1)]` -/
def P4104393620876706718.Spec : Prop :=
  ∀ n, (P4104393620876706718.a n : ℤ) = A190545 (n + 1)

end A190545

/-! ## A190545.P9303647364989825495

`∩[A186344(n+1), A327257(n+1)]`
-/

namespace A190545.P9303647364989825495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190545.P9303647364989825495

namespace A190545

/-- `∩[A186344(n+1), A327257(n+1)]` -/
def P9303647364989825495.Spec : Prop :=
  ∀ n, (P9303647364989825495.a n : ℤ) = A190545 (n + 1)

end A190545

/-! ## A190545.P12727062610604445214

`∩[A285074(n+1), A327257(n+1)]`
-/

namespace A190545.P12727062610604445214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190545.P12727062610604445214

namespace A190545

/-- `∩[A285074(n+1), A327257(n+1)]` -/
def P12727062610604445214.Spec : Prop :=
  ∀ n, (P12727062610604445214.a n : ℤ) = A190545 (n + 1)

end A190545

/-! ## A190545.P12530198595239263814

`∩[A285077(n+1), A327257(n+1)]`
-/

namespace A190545.P12530198595239263814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190545.P12530198595239263814

namespace A190545

/-- `∩[A285077(n+1), A327257(n+1)]` -/
def P12530198595239263814.Spec : Prop :=
  ∀ n, (P12530198595239263814.a n : ℤ) = A190545 (n + 1)

end A190545

/-! ## A190545.P15400559880569583116

`∩[A080755(n+1)+1, A327257(n+1)]`
-/

namespace A190545.P15400559880569583116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190545.P15400559880569583116

namespace A190545

/-- `∩[A080755(n+1)+1, A327257(n+1)]` -/
def P15400559880569583116.Spec : Prop :=
  ∀ n, (P15400559880569583116.a n : ℤ) = A190545 (n + 1)

end A190545

/-! ## A190545.P13668569757261141492

`∩[A187974(n+1)+1, A327257(n+1)]`
-/

namespace A190545.P13668569757261141492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187974 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190545.P13668569757261141492

namespace A190545

/-- `∩[A187974(n+1)+1, A327257(n+1)]` -/
def P13668569757261141492.Spec : Prop :=
  ∀ n, (P13668569757261141492.a n : ℤ) = A190545 (n + 1)

end A190545

/-! ## A190545.P6415234179383941773

`lt[A190544(n+1), 1]+1`
-/

namespace A190545.P6415234179383941773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190544 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A190545.P6415234179383941773

namespace A190545

/-- `lt[A190544(n+1), 1]+1` -/
def P6415234179383941773.Spec : Prop :=
  ∀ n, (P6415234179383941773.a n : ℤ) = A190545 (n + 1)

end A190545

/-!
# A190546: Positions of 1 in A190544.

The programs for A190546, the canonical program `A190546.P18353312944459851782` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190546 has offset 1).

The definition of A190546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190546.P18353312944459851782

`∩[A064437(n+1), A327258(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190546

/-- `∩[A064437(n+1), A327258(n+1)]` -/
def P18353312944459851782.Spec : Prop :=
  ∀ n, (P18353312944459851782.a n : ℤ) = A190546 (n + 1)

theorem P18353312944459851782.correct : P18353312944459851782.Spec := by
  intro n
  simp only [A190546, Nat.add_sub_cancel]

end A190546

/-! ## A190546.P8232336568121520618

`∩[A190493(n+1), A327258(n+1)]`
-/

namespace A190546.P8232336568121520618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190546.P8232336568121520618

namespace A190546

/-- `∩[A190493(n+1), A327258(n+1)]` -/
def P8232336568121520618.Spec : Prop :=
  ∀ n, (P8232336568121520618.a n : ℤ) = A190546 (n + 1)

end A190546

/-! ## A190546.P6431511774336740026

`∩[A286666(n+1), A327258(n+1)]`
-/

namespace A190546.P6431511774336740026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190546.P6431511774336740026

namespace A190546

/-- `∩[A286666(n+1), A327258(n+1)]` -/
def P6431511774336740026.Spec : Prop :=
  ∀ n, (P6431511774336740026.a n : ℤ) = A190546 (n + 1)

end A190546

/-! ## A190546.P8991084598604139956

`∩[A003151(n+1)-1, A327258(n+1)]`
-/

namespace A190546.P8991084598604139956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190546.P8991084598604139956

namespace A190546

/-- `∩[A003151(n+1)-1, A327258(n+1)]` -/
def P8991084598604139956.Spec : Prop :=
  ∀ n, (P8991084598604139956.a n : ℤ) = A190546 (n + 1)

end A190546

/-! ## A190546.P14226418762933259348

`∩[A187978(n+1)-1, A327258(n+1)]`
-/

namespace A190546.P14226418762933259348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187978 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190546.P14226418762933259348

namespace A190546

/-- `∩[A187978(n+1)-1, A327258(n+1)]` -/
def P14226418762933259348.Spec : Prop :=
  ∀ n, (P14226418762933259348.a n : ℤ) = A190546 (n + 1)

end A190546

/-! ## A190546.P12129815059751802313

`∩[A188045(n+1)-1, A327258(n+1)]`
-/

namespace A190546.P12129815059751802313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190546.P12129815059751802313

namespace A190546

/-- `∩[A188045(n+1)-1, A327258(n+1)]` -/
def P12129815059751802313.Spec : Prop :=
  ∀ n, (P12129815059751802313.a n : ℤ) = A190546 (n + 1)

end A190546

/-! ## A190546.P16172077333280744587

`∩[A327206(n+1), A327258(n+1)]`
-/

namespace A190546.P16172077333280744587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190546.P16172077333280744587

namespace A190546

/-- `∩[A327206(n+1), A327258(n+1)]` -/
def P16172077333280744587.Spec : Prop :=
  ∀ n, (P16172077333280744587.a n : ℤ) = A190546 (n + 1)

end A190546

/-! ## A190546.P12187135500312375902

`∩[A187977(n+1), A327258(n+1)]`
-/

namespace A190546.P12187135500312375902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190546.P12187135500312375902

namespace A190546

/-- `∩[A187977(n+1), A327258(n+1)]` -/
def P12187135500312375902.Spec : Prop :=
  ∀ n, (P12187135500312375902.a n : ℤ) = A190546 (n + 1)

end A190546

/-! ## A190546.P10755652236581653612

`∩[A003152(n+1), A327258(n+1)]`
-/

namespace A190546.P10755652236581653612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190546.P10755652236581653612

namespace A190546

/-- `∩[A003152(n+1), A327258(n+1)]` -/
def P10755652236581653612.Spec : Prop :=
  ∀ n, (P10755652236581653612.a n : ℤ) = A190546 (n + 1)

end A190546

/-! ## A190546.P12373979407952154856

`∩[A189573(n+1), A327258(n+1)]`
-/

namespace A190546.P12373979407952154856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190546.P12373979407952154856

namespace A190546

/-- `∩[A189573(n+1), A327258(n+1)]` -/
def P12373979407952154856.Spec : Prop :=
  ∀ n, (P12373979407952154856.a n : ℤ) = A190546 (n + 1)

end A190546

/-! ## A190546.P13572914667399998711

`∩[A188046(n+1), A327258(n+1)]`
-/

namespace A190546.P13572914667399998711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190546.P13572914667399998711

namespace A190546

/-- `∩[A188046(n+1), A327258(n+1)]` -/
def P13572914667399998711.Spec : Prop :=
  ∀ n, (P13572914667399998711.a n : ℤ) = A190546 (n + 1)

end A190546

/-! ## A190546.P8969143414329958812

`eq[1, A190544(n+1)]+1`
-/

namespace A190546.P8969143414329958812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190546.P8969143414329958812

namespace A190546

/-- `eq[1, A190544(n+1)]+1` -/
def P8969143414329958812.Spec : Prop :=
  ∀ n, (P8969143414329958812.a n : ℤ) = A190546 (n + 1)

end A190546

/-! ## A190546.P2349820121888448959

`filter[A003152(n+1), A327256(#)]`
-/

namespace A190546.P2349820121888448959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327256 (f1 j).toNat = 1) n)

end

end A190546.P2349820121888448959

namespace A190546

/-- `filter[A003152(n+1), A327256(#)]` -/
def P2349820121888448959.Spec : Prop :=
  ∀ n, P2349820121888448959.a n = A190546 (n + 1)

end A190546

/-! ## A190546.P9493792431383042285

`filter[A064437(n+1), A327256(#)]`
-/

namespace A190546.P9493792431383042285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327256 (f1 j).toNat = 1) n)

end

end A190546.P9493792431383042285

namespace A190546

/-- `filter[A064437(n+1), A327256(#)]` -/
def P9493792431383042285.Spec : Prop :=
  ∀ n, P9493792431383042285.a n = A190546 (n + 1)

end A190546

/-! ## A190546.P13710195982183284431

`filter[A327258(n+1), A144611(#)]`
-/

namespace A190546.P13710195982183284431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144611 (f1 j).toNat = 1) n)

end

end A190546.P13710195982183284431

namespace A190546

/-- `filter[A327258(n+1), A144611(#)]` -/
def P13710195982183284431.Spec : Prop :=
  ∀ n, P13710195982183284431.a n = A190546 (n + 1)

end A190546

/-! ## A190546.P9658346132440936895

`filter[A327258(n+1), A159684(#)]`
-/

namespace A190546.P9658346132440936895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A159684 (f1 j).toNat = 1) n)

end

end A190546.P9658346132440936895

namespace A190546

/-- `filter[A327258(n+1), A159684(#)]` -/
def P9658346132440936895.Spec : Prop :=
  ∀ n, P9658346132440936895.a n = A190546 (n + 1)

end A190546

/-! ## A190546.P1213092498686339885

`filter[A187977(n+1), A327256(#)]`
-/

namespace A190546.P1213092498686339885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187977 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327256 (f1 j).toNat = 1) n)

end

end A190546.P1213092498686339885

namespace A190546

/-- `filter[A187977(n+1), A327256(#)]` -/
def P1213092498686339885.Spec : Prop :=
  ∀ n, P1213092498686339885.a n = A190546 (n + 1)

end A190546

/-! ## A190546.P16905495351357276849

`filter[A188046(n+1), A327256(#)]`
-/

namespace A190546.P16905495351357276849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327256 (f1 j).toNat = 1) n)

end

end A190546.P16905495351357276849

namespace A190546

/-- `filter[A188046(n+1), A327256(#)]` -/
def P16905495351357276849.Spec : Prop :=
  ∀ n, P16905495351357276849.a n = A190546 (n + 1)

end A190546

/-! ## A190546.P11730979110599378117

`filter[A327258(n+1), A188044(#)]`
-/

namespace A190546.P11730979110599378117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188044 (f1 j).toNat = 1) n)

end

end A190546.P11730979110599378117

namespace A190546

/-- `filter[A327258(n+1), A188044(#)]` -/
def P11730979110599378117.Spec : Prop :=
  ∀ n, P11730979110599378117.a n = A190546 (n + 1)

end A190546

/-!
# A190547: Positions of 2 in A190544.

The programs for A190547, there is no canonical definition to state claims against.
-/

/-! ## A190547.P9897289031062742598

`∩[A186220(n+1), A327257(n+1)]`
-/

namespace A190547.P9897289031062742598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P9897289031062742598

/-! ## A190547.P15824857878542161018

`∩[A186222(n+1), A327257(n+1)]`
-/

namespace A190547.P15824857878542161018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P15824857878542161018

/-! ## A190547.P214460142414404890

`∩[A186316(n+1), A327257(n+1)]`
-/

namespace A190547.P214460142414404890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P214460142414404890

/-! ## A190547.P12612024434099659306

`∩[A186318(n+1), A327257(n+1)]`
-/

namespace A190547.P12612024434099659306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P12612024434099659306

/-! ## A190547.P13411905013992773213

`∩[A186343(n+1), A327257(n+1)]`
-/

namespace A190547.P13411905013992773213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P13411905013992773213

/-! ## A190547.P11470492626984996224

`∩[A186345(n+1), A327257(n+1)]`
-/

namespace A190547.P11470492626984996224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186345 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P11470492626984996224

/-! ## A190547.P16060840498580438713

`∩[A190485(n+1), A327257(n+1)]`
-/

namespace A190547.P16060840498580438713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P16060840498580438713

/-! ## A190547.P6533677311657121883

`∩[A242137(n+1), A327257(n+1)]`
-/

namespace A190547.P6533677311657121883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P6533677311657121883

/-! ## A190547.P5347188556005712918

`∩[A285075(n+1), A327257(n+1)]`
-/

namespace A190547.P5347188556005712918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P5347188556005712918

/-! ## A190547.P10990591013972062167

`∩[A285078(n+1), A327257(n+1)]`
-/

namespace A190547.P10990591013972062167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P10990591013972062167

/-! ## A190547.P18293708812023522729

`∩[A080754(n+1)+1, A327257(n+1)]`
-/

namespace A190547.P18293708812023522729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P18293708812023522729

/-! ## A190547.P7917167649288645899

`∩[A187973(n+1)+1, A327257(n+1)]`
-/

namespace A190547.P7917167649288645899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187973 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P7917167649288645899

/-! ## A190547.P13622132630879291956

`∩[A327257(n+1), A083088(n)]`
-/

namespace A190547.P13622132630879291956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P13622132630879291956

/-! ## A190547.P12174673655283372214

`∩[A080755(n+1), A327257(n+1)]`
-/

namespace A190547.P12174673655283372214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P12174673655283372214

/-! ## A190547.P8172374458260919285

`∩[A186315(n+1)+1, A327257(n+1)]`
-/

namespace A190547.P8172374458260919285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186315 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P8172374458260919285

/-! ## A190547.P17815561328152737639

`∩[A186342(n+1)+1, A327257(n+1)]`
-/

namespace A190547.P17815561328152737639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186342 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P17815561328152737639

/-! ## A190547.P13419494020109447391

`∩[A186219(n+1)-1, A327257(n+1)]`
-/

namespace A190547.P13419494020109447391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186219 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P13419494020109447391

/-! ## A190547.P9260399302595442534

`∩[A186221(n+1)-1, A327257(n+1)]`
-/

namespace A190547.P9260399302595442534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186221 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P9260399302595442534

/-! ## A190547.P17560640406529993520

`∩[A285074(n+1)-1, A327257(n+1)]`
-/

namespace A190547.P17560640406529993520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190547.P17560640406529993520

/-!
# A190548: Positions of 3 in A190544.

The programs for A190548, the canonical program `A190548.P15034322769941778833` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190548 has offset 1).

The definition of A190548 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190548.P15034322769941778833

`∩[A003151(n+1), A327258(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190548

/-- `∩[A003151(n+1), A327258(n+1)]` -/
def P15034322769941778833.Spec : Prop :=
  ∀ n, (P15034322769941778833.a n : ℤ) = A190548 (n + 1)

theorem P15034322769941778833.correct : P15034322769941778833.Spec := by
  intro n
  simp only [A190548, Nat.add_sub_cancel]

end A190548

/-! ## A190548.P8834317391085368978

`∩[A059649(n+1), A327258(n+1)]`
-/

namespace A190548.P8834317391085368978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190548.P8834317391085368978

namespace A190548

/-- `∩[A059649(n+1), A327258(n+1)]` -/
def P8834317391085368978.Spec : Prop :=
  ∀ n, (P8834317391085368978.a n : ℤ) = A190548 (n + 1)

end A190548

/-! ## A190548.P15997191924261059152

`∩[A080652(n+1), A327258(n+1)]`
-/

namespace A190548.P15997191924261059152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190548.P15997191924261059152

namespace A190548

/-- `∩[A080652(n+1), A327258(n+1)]` -/
def P15997191924261059152.Spec : Prop :=
  ∀ n, (P15997191924261059152.a n : ℤ) = A190548 (n + 1)

end A190548

/-! ## A190548.P2830382747998823690

`∩[A187978(n+1), A327258(n+1)]`
-/

namespace A190548.P2830382747998823690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190548.P2830382747998823690

namespace A190548

/-- `∩[A187978(n+1), A327258(n+1)]` -/
def P2830382747998823690.Spec : Prop :=
  ∀ n, (P2830382747998823690.a n : ℤ) = A190548 (n + 1)

end A190548

/-! ## A190548.P10489039539280201628

`∩[A188045(n+1), A327258(n+1)]`
-/

namespace A190548.P10489039539280201628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190548.P10489039539280201628

namespace A190548

/-- `∩[A188045(n+1), A327258(n+1)]` -/
def P10489039539280201628.Spec : Prop :=
  ∀ n, (P10489039539280201628.a n : ℤ) = A190548 (n + 1)

end A190548

/-! ## A190548.P5881358736680309845

`∩[A190490(n+1), A327258(n+1)]`
-/

namespace A190548.P5881358736680309845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190548.P5881358736680309845

namespace A190548

/-- `∩[A190490(n+1), A327258(n+1)]` -/
def P5881358736680309845.Spec : Prop :=
  ∀ n, (P5881358736680309845.a n : ℤ) = A190548 (n + 1)

end A190548

/-! ## A190548.P6020379753058164061

`∩[A190500(n+1), A327258(n+1)]`
-/

namespace A190548.P6020379753058164061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190548.P6020379753058164061

namespace A190548

/-- `∩[A190500(n+1), A327258(n+1)]` -/
def P6020379753058164061.Spec : Prop :=
  ∀ n, (P6020379753058164061.a n : ℤ) = A190548 (n + 1)

end A190548

/-! ## A190548.P18427665175233022461

`∩[A327207(n+1), A327258(n+1)]`
-/

namespace A190548.P18427665175233022461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190548.P18427665175233022461

namespace A190548

/-- `∩[A327207(n+1), A327258(n+1)]` -/
def P18427665175233022461.Spec : Prop :=
  ∀ n, (P18427665175233022461.a n : ℤ) = A190548 (n + 1)

end A190548

/-! ## A190548.P7051873452876160412

`∩[A286666(n+1)+1, A327258(n+1)]`
-/

namespace A190548.P7051873452876160412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190548.P7051873452876160412

namespace A190548

/-- `∩[A286666(n+1)+1, A327258(n+1)]` -/
def P7051873452876160412.Spec : Prop :=
  ∀ n, (P7051873452876160412.a n : ℤ) = A190548 (n + 1)

end A190548

/-! ## A190548.P16031387618297312788

`∩[A064437(n+1)-1, A327258(n+1)]`
-/

namespace A190548.P16031387618297312788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190548.P16031387618297312788

namespace A190548

/-- `∩[A064437(n+1)-1, A327258(n+1)]` -/
def P16031387618297312788.Spec : Prop :=
  ∀ n, (P16031387618297312788.a n : ℤ) = A190548 (n + 1)

end A190548

/-! ## A190548.P14616247581676511581

`∩[A187977(n+1)-1, A327258(n+1)]`
-/

namespace A190548.P14616247581676511581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187977 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190548.P14616247581676511581

namespace A190548

/-- `∩[A187977(n+1)-1, A327258(n+1)]` -/
def P14616247581676511581.Spec : Prop :=
  ∀ n, (P14616247581676511581.a n : ℤ) = A190548 (n + 1)

end A190548

/-! ## A190548.P927180230546195756

`∩[A286667(n+1), A327258(n+1)]`
-/

namespace A190548.P927180230546195756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286667 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190548.P927180230546195756

namespace A190548

/-- `∩[A286667(n+1), A327258(n+1)]` -/
def P927180230546195756.Spec : Prop :=
  ∀ n, (P927180230546195756.a n : ℤ) = A190548 (n + 1)

end A190548

/-! ## A190548.P8165810392314668371

`∩[A189573(n+1)+1, A327258(n+1)]`
-/

namespace A190548.P8165810392314668371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190548.P8165810392314668371

namespace A190548

/-- `∩[A189573(n+1)+1, A327258(n+1)]` -/
def P8165810392314668371.Spec : Prop :=
  ∀ n, (P8165810392314668371.a n : ℤ) = A190548 (n + 1)

end A190548

/-! ## A190548.P12869139164521423608

`∩[A003152(n+1)-1, A327258(n+1)]`
-/

namespace A190548.P12869139164521423608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327258 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190548.P12869139164521423608

namespace A190548

/-- `∩[A003152(n+1)-1, A327258(n+1)]` -/
def P12869139164521423608.Spec : Prop :=
  ∀ n, (P12869139164521423608.a n : ℤ) = A190548 (n + 1)

end A190548

/-! ## A190548.P6101537473448764882

`lt[2, A190544(n+1)]+1`
-/

namespace A190548.P6101537473448764882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A190548.P6101537473448764882

namespace A190548

/-- `lt[2, A190544(n+1)]+1` -/
def P6101537473448764882.Spec : Prop :=
  ∀ n, (P6101537473448764882.a n : ℤ) = A190548 (n + 1)

end A190548

/-! ## A190548.P5229002394973091357

`eq[A214848(n), A327256(n)]`
-/

namespace A190548.P5229002394973091357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190548.P5229002394973091357

namespace A190548

/-- `eq[A214848(n), A327256(n)]` -/
def P5229002394973091357.Spec : Prop :=
  ∀ n, (P5229002394973091357.a n : ℤ) = A190548 (n + 1)

end A190548

/-! ## A190548.P6666690821199655288

`eq[A327256(n), A378301(n)]`
-/

namespace A190548.P6666690821199655288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378301 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190548.P6666690821199655288

namespace A190548

/-- `eq[A327256(n), A378301(n)]` -/
def P6666690821199655288.Spec : Prop :=
  ∀ n, (P6666690821199655288.a n : ℤ) = A190548 (n + 1)

end A190548

/-! ## A190548.P3531626760583362869

`eq[1, A190544(A028310(n))-2]`
-/

namespace A190548.P3531626760583362869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190544 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190548.P3531626760583362869

namespace A190548

/-- `eq[1, A190544(A028310(n))-2]` -/
def P3531626760583362869.Spec : Prop :=
  ∀ n, (P3531626760583362869.a n : ℤ) = A190548 (n + 1)

end A190548

/-! ## A190548.P656876103813694440

`filter[A003151(n+1), A327256(#)]`
-/

namespace A190548.P656876103813694440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327256 (f1 j).toNat = 1) n)

end

end A190548.P656876103813694440

namespace A190548

/-- `filter[A003151(n+1), A327256(#)]` -/
def P656876103813694440.Spec : Prop :=
  ∀ n, P656876103813694440.a n = A190548 (n + 1)

end A190548

/-! ## A190548.P5206905669157843815

`filter[A059649(n+1), A327256(#)]`
-/

namespace A190548.P5206905669157843815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327256 (f1 j).toNat = 1) n)

end

end A190548.P5206905669157843815

namespace A190548

/-- `filter[A059649(n+1), A327256(#)]` -/
def P5206905669157843815.Spec : Prop :=
  ∀ n, P5206905669157843815.a n = A190548 (n + 1)

end A190548

/-!
# A190549: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(2),4,1) and []=floor.

The programs for A190549, the canonical program `A190549.P7991738838946935118` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190549 has offset 1).

The definition of A190549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190549.P7991738838946935118

`(A001952(4*n+5)-3)%A001952(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190549

/-- `(A001952(4*n+5)-3)%A001952(n+1)` -/
def P7991738838946935118.Spec : Prop :=
  ∀ n, P7991738838946935118.a n = A190549 (n + 1)

theorem P7991738838946935118.correct : P7991738838946935118.Spec := by
  intro n
  simp only [A190549, Nat.add_sub_cancel]

end A190549

/-! ## A190549.P921613740028819180

`A003151(4*n+5)%A005408(A003151(n+1))`
-/

namespace A190549.P921613740028819180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003151 (4 * n + 5)) (A005408 (A003151 (n + 1)).toNat)

end

end A190549.P921613740028819180

namespace A190549

/-- `A003151(4*n+5)%A005408(A003151(n+1))` -/
def P921613740028819180.Spec : Prop :=
  ∀ n, P921613740028819180.a n = A190549 (n + 1)

end A190549

/-! ## A190549.P7571907071844693962

`A087057(4*n+5)%A004273(A087057(n+1))`
-/

namespace A190549.P7571907071844693962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087057 (4 * n + 5)) (A004273 (A087057 (n + 1)).toNat)

end

end A190549.P7571907071844693962

namespace A190549

/-- `A087057(4*n+5)%A004273(A087057(n+1))` -/
def P7571907071844693962.Spec : Prop :=
  ∀ n, P7571907071844693962.a n = A190549 (n + 1)

end A190549

/-! ## A190549.P16596598808519278385

`A001951(A016813(n+1))-A016813(A001951(n+1))`
-/

namespace A190549.P16596598808519278385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A016813 (n + 1)).toNat - A016813 (A001951 (n + 1)).toNat

end

end A190549.P16596598808519278385

namespace A190549

/-- `A001951(A016813(n+1))-A016813(A001951(n+1))` -/
def P16596598808519278385.Spec : Prop :=
  ∀ n, P16596598808519278385.a n = A190549 (n + 1)

end A190549

/-! ## A190549.P11376573471043565464

`A016813(A195119(n+1))-A195119(A016813(n+1))`
-/

namespace A190549.P11376573471043565464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A195119 (n + 1)).toNat - A195119 (A016813 (n + 1)).toNat

end

end A190549.P11376573471043565464

namespace A190549

/-- `A016813(A195119(n+1))-A195119(A016813(n+1))` -/
def P11376573471043565464.Spec : Prop :=
  ∀ n, P11376573471043565464.a n = A190549 (n + 1)

end A190549

/-!
# A190550: Positions of 0 in A190549.

The programs for A190550, the canonical program `A190550.P14132498748582534910` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190550 has offset 1).

The definition of A190550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190550.P9468758675087941457

`∩[A188396(2*(n+1)), A190484(n+2)]/2`
-/

namespace A190550.P9468758675087941457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188396 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190484 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A190550.P9468758675087941457

namespace A190550

/-- `∩[A188396(2*(n+1)), A190484(n+2)]/2` -/
def P9468758675087941457.Spec : Prop :=
  ∀ n, P9468758675087941457.a n = (A190550 (n + 1) : ℚ)

end A190550

/-! ## A190550.P2680132814538889534

`∩[A001952(A001952(n+1)), A190484(n+1)]/2`
-/

namespace A190550.P2680132814538889534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (A001952 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190484 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A190550.P2680132814538889534

namespace A190550

/-- `∩[A001952(A001952(n+1)), A190484(n+1)]/2` -/
def P2680132814538889534.Spec : Prop :=
  ∀ n, P2680132814538889534.a n = (A190550 (n + 1) : ℚ)

end A190550

/-! ## A190550.P8558765873261425249

`∩[A188299(2*(n+1)), A190484(n+2)]/2`
-/

namespace A190550.P8558765873261425249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188299 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190484 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A190550.P8558765873261425249

namespace A190550

/-- `∩[A188299(2*(n+1)), A190484(n+2)]/2` -/
def P8558765873261425249.Spec : Prop :=
  ∀ n, P8558765873261425249.a n = (A190550 (n + 1) : ℚ)

end A190550

/-! ## A190550.P867590614235579744

`∩[A064437(2*(n+1))-A064437(n+2), A190484(n+2)]`
-/

namespace A190550.P867590614235579744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064437 (2 * (n + 1)) - A064437 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190484 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A190550.P867590614235579744

namespace A190550

/-- `∩[A064437(2*(n+1))-A064437(n+2), A190484(n+2)]` -/
def P867590614235579744.Spec : Prop :=
  ∀ n, (P867590614235579744.a n : ℤ) = A190550 (n + 1)

end A190550

/-! ## A190550.P14132498748582534910

`lt[A190549(n+1), 1]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190550

/-- `lt[A190549(n+1), 1]+1` -/
def P14132498748582534910.Spec : Prop :=
  ∀ n, (P14132498748582534910.a n : ℤ) = A190550 (n + 1)

theorem P14132498748582534910.correct : P14132498748582534910.Spec := by
  intro n
  simp only [A190550, Nat.add_sub_cancel]

end A190550

/-! ## A190550.P1147462887372944690

`eq[A144611(n), A190549(n+1)]+1`
-/

namespace A190550.P1147462887372944690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190549 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A190550.P1147462887372944690

namespace A190550

/-- `eq[A144611(n), A190549(n+1)]+1` -/
def P1147462887372944690.Spec : Prop :=
  ∀ n, (P1147462887372944690.a n : ℤ) = A190550 (n + 1)

end A190550

/-! ## A190550.P7114176628303371058

`lt[A190549(A000007(n)+n), 1]`
-/

namespace A190550.P7114176628303371058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190549 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190550.P7114176628303371058

namespace A190550

/-- `lt[A190549(A000007(n)+n), 1]` -/
def P7114176628303371058.Spec : Prop :=
  ∀ n, (P7114176628303371058.a n : ℤ) = A190550 (n + 1)

end A190550

/-! ## A190550.P2909056040358297362

`∩[A188396(2*(n+1)), A081477(n+2)]/2`
-/

namespace A190550.P2909056040358297362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188396 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (n + 2)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A190550.P2909056040358297362

namespace A190550

/-- `∩[A188396(2*(n+1)), A081477(n+2)]/2` -/
def P2909056040358297362.Spec : Prop :=
  ∀ n, P2909056040358297362.a n = (A190550 (n + 1) : ℚ)

end A190550

/-! ## A190550.P14531297311696962789

`∩[A080754(2*(n+1)), A081477(2*(n+1))]/2`
-/

namespace A190550.P14531297311696962789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081477 (2 * (n + 1))

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A190550.P14531297311696962789

namespace A190550

/-- `∩[A080754(2*(n+1)), A081477(2*(n+1))]/2` -/
def P14531297311696962789.Spec : Prop :=
  ∀ n, P14531297311696962789.a n = (A190550 (n + 1) : ℚ)

end A190550

/-! ## A190550.P2335033643887329679

`∩[A190484(n+1), A022846(A022846(n))]/2`
-/

namespace A190550.P2335033643887329679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (A022846 n).toNat

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A190550.P2335033643887329679

namespace A190550

/-- `∩[A190484(n+1), A022846(A022846(n))]/2` -/
def P2335033643887329679.Spec : Prop :=
  ∀ n, P2335033643887329679.a n = (A190550 (n + 1) : ℚ)

end A190550

/-! ## A190550.P11885137621518340119

`lt[A082532(2*(n+1)), A054071(2*(n+1))]+1`
-/

namespace A190550.P11885137621518340119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082532 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A190550.P11885137621518340119

namespace A190550

/-- `lt[A082532(2*(n+1)), A054071(2*(n+1))]+1` -/
def P11885137621518340119.Spec : Prop :=
  ∀ n, (P11885137621518340119.a n : ℤ) = A190550 (n + 1)

end A190550

/-! ## A190550.P5184878249781362895

`eq[A001030(n+2)*A097509(2*n), A001030(2*n+1)]`
-/

namespace A190550.P5184878249781362895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (n + 2) * A097509 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190550.P5184878249781362895

namespace A190550

/-- `eq[A001030(n+2)*A097509(2*n), A001030(2*n+1)]` -/
def P5184878249781362895.Spec : Prop :=
  ∀ n, (P5184878249781362895.a n : ℤ) = A190550 (n + 1)

end A190550

/-! ## A190550.P17428440975410996791

`A026252(A190566(n+1))`
-/

namespace A190550.P17428440975410996791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (A190566 (n + 1)).toNat

end

end A190550.P17428440975410996791

namespace A190550

/-- `A026252(A190566(n+1))` -/
def P17428440975410996791.Spec : Prop :=
  ∀ n, P17428440975410996791.a n = A190550 (n + 1)

end A190550

/-! ## A190550.P6653661232572224106

`A097508(A190566(n+1)+1)`
-/

namespace A190550.P6653661232572224106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A190566 (n + 1) + 1).toNat

end

end A190550.P6653661232572224106

namespace A190550

/-- `A097508(A190566(n+1)+1)` -/
def P6653661232572224106.Spec : Prop :=
  ∀ n, P6653661232572224106.a n = A190550 (n + 1)

end A190550

/-! ## A190550.P16791709572322018637

`A001953(A190566(n+1))-A190566(A000027(n+1))`
-/

namespace A190550.P16791709572322018637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001953 (A190566 (n + 1)).toNat - A190566 (A000027 (n + 1)).toNat

end

end A190550.P16791709572322018637

namespace A190550

/-- `A001953(A190566(n+1))-A190566(A000027(n+1))` -/
def P16791709572322018637.Spec : Prop :=
  ∀ n, P16791709572322018637.a n = A190550 (n + 1)

end A190550

/-!
# A190551: Positions of 1 in A190549.

The programs for A190551, the canonical program `A190551.P17730107267419017797` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190551 has offset 1).

The definition of A190551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190551.P17730107267419017797

`eq[1, A190549(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190551

/-- `eq[1, A190549(n+1)]+1` -/
def P17730107267419017797.Spec : Prop :=
  ∀ n, (P17730107267419017797.a n : ℤ) = A190551 (n + 1)

theorem P17730107267419017797.correct : P17730107267419017797.Spec := by
  intro n
  simp only [A190551, Nat.add_sub_cancel]

end A190551

/-! ## A190551.P12632177789538991853

`A000720(p?[A000040(n+1)*A190549(n+1)])`
-/

namespace A190551.P12632177789538991853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A190549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A190551.P12632177789538991853

namespace A190551

/-- `A000720(p?[A000040(n+1)*A190549(n+1)])` -/
def P12632177789538991853.Spec : Prop :=
  ∀ n, P12632177789538991853.a n = A190551 (n + 1)

end A190551

/-! ## A190551.P3097227539050783097

`eq[3, A020639(A091087(4*n+1))]`
-/

namespace A190551.P3097227539050783097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A091087 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190551.P3097227539050783097

namespace A190551

/-- `eq[3, A020639(A091087(4*n+1))]` -/
def P3097227539050783097.Spec : Prop :=
  ∀ n, (P3097227539050783097.a n : ℤ) = A190551 (n + 1)

end A190551

/-! ## A190551.P3021270322436080072

`eq[A110514(A097508(4*n+1)), 1-4/2]`
-/

namespace A190551.P3021270322436080072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A097508 (4 * n + 1)).toNat

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (4 : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A190551.P3021270322436080072

namespace A190551

/-- `eq[A110514(A097508(4*n+1)), 1-4/2]` -/
def P3021270322436080072.Spec : Prop :=
  ∀ n, (P3021270322436080072.a n : ℤ) = A190551 (n + 1)

end A190551

/-! ## A190551.P6974432751546808582

`eq[A187976(A016813(n))+2, A190561(n+1)]`
-/

namespace A190551.P6974432751546808582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187976 (A016813 n).toNat + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190551.P6974432751546808582

namespace A190551

/-- `eq[A187976(A016813(n))+2, A190561(n+1)]` -/
def P6974432751546808582.Spec : Prop :=
  ∀ n, (P6974432751546808582.a n : ℤ) = A190551 (n + 1)

end A190551

/-! ## A190551.P14931350062484331270

`eq[2, A006519(A001951(4*n+1))]`
-/

namespace A190551.P14931350062484331270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A001951 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190551.P14931350062484331270

namespace A190551

/-- `eq[2, A006519(A001951(4*n+1))]` -/
def P14931350062484331270.Spec : Prop :=
  ∀ n, (P14931350062484331270.a n : ℤ) = A190551 (n + 1)

end A190551

/-! ## A190551.P4881897477214200240

`eq[A025480(A289036(4*n+3)), A289036(n+1)]`
-/

namespace A190551.P4881897477214200240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A289036 (4 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190551.P4881897477214200240

namespace A190551

/-- `eq[A025480(A289036(4*n+3)), A289036(n+1)]` -/
def P4881897477214200240.Spec : Prop :=
  ∀ n, (P4881897477214200240.a n : ℤ) = A190551 (n + 1)

end A190551

/-! ## A190551.P4436159639179772748

`eq[1, A190549(A233583(n+1))]`
-/

namespace A190551.P4436159639179772748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190549 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190551.P4436159639179772748

namespace A190551

/-- `eq[1, A190549(A233583(n+1))]` -/
def P4436159639179772748.Spec : Prop :=
  ∀ n, (P4436159639179772748.a n : ℤ) = A190551 (n + 1)

end A190551

/-!
# A190552: Positions of 2 in A190549.

The programs for A190552, the canonical program `A190552.P8550911056888575151` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190552 has offset 1).

The definition of A190552 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190552.P8550911056888575151

`eq[2, A190549(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190552

/-- `eq[2, A190549(n+1)]+1` -/
def P8550911056888575151.Spec : Prop :=
  ∀ n, (P8550911056888575151.a n : ℤ) = A190552 (n + 1)

theorem P8550911056888575151.correct : P8550911056888575151.Spec := by
  intro n
  simp only [A190552, Nat.add_sub_cancel]

end A190552

/-! ## A190552.P16155549275386850445

`eq[A020639(A215247(2*n+1)), A080763(n+2)]`
-/

namespace A190552.P16155549275386850445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A215247 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080763 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190552.P16155549275386850445

namespace A190552

/-- `eq[A020639(A215247(2*n+1)), A080763(n+2)]` -/
def P16155549275386850445.Spec : Prop :=
  ∀ n, (P16155549275386850445.a n : ℤ) = A190552 (n + 1)

end A190552

/-! ## A190552.P5422347711594191357

`eq[A083035(2*n+1)+1, A083035(4*n+1)]`
-/

namespace A190552.P5422347711594191357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190552.P5422347711594191357

namespace A190552

/-- `eq[A083035(2*n+1)+1, A083035(4*n+1)]` -/
def P5422347711594191357.Spec : Prop :=
  ∀ n, (P5422347711594191357.a n : ℤ) = A190552 (n + 1)

end A190552

/-! ## A190552.P8904286796415517692

`eq[A006337(n+2), A083035(A016813(n))]`
-/

namespace A190552.P8904286796415517692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (A016813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190552.P8904286796415517692

namespace A190552

/-- `eq[A006337(n+2), A083035(A016813(n))]` -/
def P8904286796415517692.Spec : Prop :=
  ∀ n, (P8904286796415517692.a n : ℤ) = A190552 (n + 1)

end A190552

/-! ## A190552.P17032444649149585964

`eq[A024544(2*(n+3)), A024544(A005408(2*n))]`
-/

namespace A190552.P17032444649149585964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024544 (2 * (n + 3))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024544 (A005408 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190552.P17032444649149585964

namespace A190552

/-- `eq[A024544(2*(n+3)), A024544(A005408(2*n))]` -/
def P17032444649149585964.Spec : Prop :=
  ∀ n, (P17032444649149585964.a n : ℤ) = A190552 (n + 1)

end A190552

/-! ## A190552.P15506638644838433517

`eq[1, A277697(A285075(4*n+2))]`
-/

namespace A190552.P15506638644838433517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277697 (A285075 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190552.P15506638644838433517

namespace A190552

/-- `eq[1, A277697(A285075(4*n+2))]` -/
def P15506638644838433517.Spec : Prop :=
  ∀ n, (P15506638644838433517.a n : ℤ) = A190552 (n + 1)

end A190552

/-!
# A190553: Positions of 3 in A190549.

The programs for A190553, the canonical program `A190553.P15220881830285851837` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190553 has offset 1).

The definition of A190553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190553.P15220881830285851837

`eq[3, A190549(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190553

/-- `eq[3, A190549(n+1)]+1` -/
def P15220881830285851837.Spec : Prop :=
  ∀ n, (P15220881830285851837.a n : ℤ) = A190553 (n + 1)

theorem P15220881830285851837.correct : P15220881830285851837.Spec := by
  intro n
  simp only [A190553, Nat.add_sub_cancel]

end A190553

/-! ## A190553.P12085128287487685600

`eq[1, val(A001952(4*n+1), 2)]`
-/

namespace A190553.P12085128287487685600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001952 (4 * n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190553.P12085128287487685600

namespace A190553

/-- `eq[1, val(A001952(4*n+1), 2)]` -/
def P12085128287487685600.Spec : Prop :=
  ∀ n, (P12085128287487685600.a n : ℤ) = A190553 (n + 1)

end A190553

/-! ## A190553.P14503067186987752745

`eq[0, A110514(A097508(4*n+1))]`
-/

namespace A190553.P14503067186987752745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A097508 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190553.P14503067186987752745

namespace A190553

/-- `eq[0, A110514(A097508(4*n+1))]` -/
def P14503067186987752745.Spec : Prop :=
  ∀ n, (P14503067186987752745.a n : ℤ) = A190553 (n + 1)

end A190553

/-! ## A190553.P1561549689014131260

`eq[A187976(A016813(n)), A190561(n+1)]`
-/

namespace A190553.P1561549689014131260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187976 (A016813 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190553.P1561549689014131260

namespace A190553

/-- `eq[A187976(A016813(n)), A190561(n+1)]` -/
def P1561549689014131260.Spec : Prop :=
  ∀ n, (P1561549689014131260.a n : ℤ) = A190553 (n + 1)

end A190553

/-! ## A190553.P17352977153326922987

`eq[4, A074473(A003151(4*n+1))]`
-/

namespace A190553.P17352977153326922987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074473 (A003151 (4 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190553.P17352977153326922987

namespace A190553

/-- `eq[4, A074473(A003151(4*n+1))]` -/
def P17352977153326922987.Spec : Prop :=
  ∀ n, (P17352977153326922987.a n : ℤ) = A190553 (n + 1)

end A190553

/-!
# A190554: Positions of 4 in A190549.

The programs for A190554, the canonical program `A190554.P12672851784276818239` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190554 has offset 1).

The definition of A190554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190554.P14662467119400048427

`A003151(A190545(n+1))`
-/

namespace A190554.P14662467119400048427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A190545 (n + 1)).toNat

end

end A190554.P14662467119400048427

namespace A190554

/-- `A003151(A190545(n+1))` -/
def P14662467119400048427.Spec : Prop :=
  ∀ n, P14662467119400048427.a n = A190554 (n + 1)

end A190554

/-! ## A190554.P12672851784276818239

`A080754(∩[A080754(n+1), A327257(n+1)])-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190554

/-- `A080754(∩[A080754(n+1), A327257(n+1)])-1` -/
def P12672851784276818239.Spec : Prop :=
  ∀ n, P12672851784276818239.a n = A190554 (n + 1)

theorem P12672851784276818239.correct : P12672851784276818239.Spec := by
  intro n
  simp only [A190554, Nat.add_sub_cancel]

end A190554

/-! ## A190554.P6401320053266867979

`∩[A003153(2*(n+1)), A187971(2*(n+1))]/2`
-/

namespace A190554.P6401320053266867979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187971 (2 * (n + 1))

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A190554.P6401320053266867979

namespace A190554

/-- `∩[A003153(2*(n+1)), A187971(2*(n+1))]/2` -/
def P6401320053266867979.Spec : Prop :=
  ∀ n, P6401320053266867979.a n = (A190554 (n + 1) : ℚ)

end A190554

/-! ## A190554.P17225279495956206643

`eq[4, A190549(n+1)]+1`
-/

namespace A190554.P17225279495956206643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190549 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A190554.P17225279495956206643

namespace A190554

/-- `eq[4, A190549(n+1)]+1` -/
def P17225279495956206643.Spec : Prop :=
  ∀ n, (P17225279495956206643.a n : ℤ) = A190554 (n + 1)

end A190554

/-! ## A190554.P9739977067127423131

`∩[A003153(2*(n+1)), A080755(2*(n+1))]/2`
-/

namespace A190554.P9739977067127423131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (2 * (n + 1))

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A190554.P9739977067127423131

namespace A190554

/-- `∩[A003153(2*(n+1)), A080755(2*(n+1))]/2` -/
def P9739977067127423131.Spec : Prop :=
  ∀ n, P9739977067127423131.a n = (A190554 (n + 1) : ℚ)

end A190554

/-! ## A190554.P18195395368613362275

`∩[A003151(2*(n+1)), A186221(2*(n+1))]/2`
-/

namespace A190554.P18195395368613362275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186221 (2 * (n + 1))

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A190554.P18195395368613362275

namespace A190554

/-- `∩[A003151(2*(n+1)), A186221(2*(n+1))]/2` -/
def P18195395368613362275.Spec : Prop :=
  ∀ n, P18195395368613362275.a n = (A190554 (n + 1) : ℚ)

end A190554

/-! ## A190554.P13129674810425161875

`∩[A003153(2*(n+1)), A187974(2*(n+1))]/2`
-/

namespace A190554.P13129674810425161875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187974 (2 * (n + 1))

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A190554.P13129674810425161875

namespace A190554

/-- `∩[A003153(2*(n+1)), A187974(2*(n+1))]/2` -/
def P13129674810425161875.Spec : Prop :=
  ∀ n, P13129674810425161875.a n = (A190554 (n + 1) : ℚ)

end A190554

/-! ## A190554.P16127146608069322577

`lt[A327205(n+1), A327177(2*n)*A327205(2*n)]`
-/

namespace A190554.P16127146608069322577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 (2 * n) * A327205 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190554.P16127146608069322577

namespace A190554

/-- `lt[A327205(n+1), A327177(2*n)*A327205(2*n)]` -/
def P16127146608069322577.Spec : Prop :=
  ∀ n, (P16127146608069322577.a n : ℤ) = A190554 (n + 1)

end A190554

/-! ## A190554.P10650201753120930426

`A026253(A190556(n+1))`
-/

namespace A190554.P10650201753120930426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026253 (A190556 (n + 1)).toNat

end

end A190554.P10650201753120930426

namespace A190554

/-- `A026253(A190556(n+1))` -/
def P10650201753120930426.Spec : Prop :=
  ∀ n, P10650201753120930426.a n = A190554 (n + 1)

end A190554

/-! ## A190554.P5246556568254674034

`A097508(A190556(n+1)+1)`
-/

namespace A190554.P5246556568254674034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 (A190556 (n + 1) + 1).toNat

end

end A190554.P5246556568254674034

namespace A190554

/-- `A097508(A190556(n+1)+1)` -/
def P5246556568254674034.Spec : Prop :=
  ∀ n, P5246556568254674034.a n = A190554 (n + 1)

end A190554

/-! ## A190554.P4107717797557085322

`eq[A327177(2*n)*A327177(n+1), A006337(3*n+1)]`
-/

namespace A190554.P4107717797557085322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 (2 * n) * A327177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190554.P4107717797557085322

namespace A190554

/-- `eq[A327177(2*n)*A327177(n+1), A006337(3*n+1)]` -/
def P4107717797557085322.Spec : Prop :=
  ∀ n, (P4107717797557085322.a n : ℤ) = A190554 (n + 1)

end A190554

/-!
# A190555: [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(2),4,2) and []=floor.

The programs for A190555, the canonical program `A190555.P17511003468908620318` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190555 has offset 1).

The definition of A190555 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3535 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190555.P4897643672182663325

`A197878(A144396(n+1))%∑[A097509(n)]`
-/

namespace A190555.P4897643672182663325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197878 (A144396 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190555.P4897643672182663325

namespace A190555

/-- `A197878(A144396(n+1))%∑[A097509(n)]` -/
def P4897643672182663325.Spec : Prop :=
  ∀ n, P4897643672182663325.a n = A190555 (n + 1)

end A190555

/-! ## A190555.P17511003468908620318

`A022842(2*n+3)%A109613(A022842(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190555

/-- `A022842(2*n+3)%A109613(A022842(n+1))` -/
def P17511003468908620318.Spec : Prop :=
  ∀ n, P17511003468908620318.a n = A190555 (n + 1)

theorem P17511003468908620318.correct : P17511003468908620318.Spec := by
  intro n
  simp only [A190555, Nat.add_sub_cancel]

end A190555

/-! ## A190555.P12177495995158387262

`A003151(4*n+6)%∑[A097509(n)]`
-/

namespace A190555.P12177495995158387262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003151 (4 * n + 6)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A190555.P12177495995158387262

namespace A190555

/-- `A003151(4*n+6)%∑[A097509(n)]` -/
def P12177495995158387262.Spec : Prop :=
  ∀ n, P12177495995158387262.a n = A190555 (n + 1)

end A190555

/-! ## A190555.P10075536909860004252

`A187338(4*n+6)%(A187338(n+1)+2)`
-/

namespace A190555.P10075536909860004252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187338 (4 * n + 6)) (A187338 (n + 1) + 2)

end

end A190555.P10075536909860004252

namespace A190555

/-- `A187338(4*n+6)%(A187338(n+1)+2)` -/
def P10075536909860004252.Spec : Prop :=
  ∀ n, P10075536909860004252.a n = A190555 (n + 1)

end A190555

/-! ## A190555.P8723860563548859127

`A190561(n+1)+A144611(A016825(n+1))`
-/

namespace A190555.P8723860563548859127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190561 (n + 1) + A144611 (A016825 (n + 1)).toNat

end

end A190555.P8723860563548859127

namespace A190555

/-- `A190561(n+1)+A144611(A016825(n+1))` -/
def P8723860563548859127.Spec : Prop :=
  ∀ n, P8723860563548859127.a n = A190555 (n + 1)

end A190555

/-! ## A190555.P3192538075488145712

`A001951(A016825(n+1))-A016825(A001951(n+1))`
-/

namespace A190555.P3192538075488145712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A016825 (n + 1)).toNat - A016825 (A001951 (n + 1)).toNat

end

end A190555.P3192538075488145712

namespace A190555

/-- `A001951(A016825(n+1))-A016825(A001951(n+1))` -/
def P3192538075488145712.Spec : Prop :=
  ∀ n, P3192538075488145712.a n = A190555 (n + 1)

end A190555

/-! ## A190555.P12762977256190074586

`A016825(A195119(n+1))-A195119(A016825(n+1))`
-/

namespace A190555.P12762977256190074586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A195119 (n + 1)).toNat - A195119 (A016825 (n + 1)).toNat

end

end A190555.P12762977256190074586

namespace A190555

/-- `A016825(A195119(n+1))-A195119(A016825(n+1))` -/
def P12762977256190074586.Spec : Prop :=
  ∀ n, P12762977256190074586.a n = A190555 (n + 1)

end A190555

/-! ## A190555.P7370390918021225135

`A197878(2*n+3)%A008619(A197878(n+1))`
-/

namespace A190555.P7370390918021225135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A197878 (2 * n + 3)) (A008619 (A197878 (n + 1)).toNat)

end

end A190555.P7370390918021225135

namespace A190555

/-- `A197878(2*n+3)%A008619(A197878(n+1))` -/
def P7370390918021225135.Spec : Prop :=
  ∀ n, P7370390918021225135.a n = A190555 (n + 1)

end A190555

/-!
# A190556: Positions of 0 in A190555.

The programs for A190556, the canonical program `A190556.P9122696133138380900` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190556 has offset 1).

The definition of A190556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190556.P9122696133138380900

`A098021(A190545(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190556

/-- `A098021(A190545(n+1))` -/
def P9122696133138380900.Spec : Prop :=
  ∀ n, P9122696133138380900.a n = A190556 (n + 1)

theorem P9122696133138380900.correct : P9122696133138380900.Spec := by
  intro n
  simp only [A190556, Nat.add_sub_cancel]

end A190556

/-! ## A190556.P13753299632697118487

`A190337(or(A000007(n), A190545(n+1)))`
-/

namespace A190556.P13753299632697118487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190337 (Int.lor (A000007 n) (A190545 (n + 1))).toNat

end

end A190556.P13753299632697118487

namespace A190556

/-- `A190337(or(A000007(n), A190545(n+1)))` -/
def P13753299632697118487.Spec : Prop :=
  ∀ n, P13753299632697118487.a n = A190556 (n + 1)

end A190556

/-! ## A190556.P11207116578303267546

`A187973(∩[2*A187973(n+1), A258834(n)])`
-/

namespace A190556.P11207116578303267546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A187973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258834 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187973 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A190556.P11207116578303267546

namespace A190556

/-- `A187973(∩[2*A187973(n+1), A258834(n)])` -/
def P11207116578303267546.Spec : Prop :=
  ∀ n, P11207116578303267546.a n = A190556 (n + 1)

end A190556

/-! ## A190556.P4204586655808217662

`A190545(n+1)+A003151(2*A190545(n+1))`
-/

namespace A190556.P4204586655808217662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190545 (n + 1) + A003151 (2 * A190545 (n + 1)).toNat

end

end A190556.P4204586655808217662

namespace A190556

/-- `A190545(n+1)+A003151(2*A190545(n+1))` -/
def P4204586655808217662.Spec : Prop :=
  ∀ n, P4204586655808217662.a n = A190556 (n + 1)

end A190556

/-! ## A190556.P4776985765406294101

`A187973(2*∩[A187973(n+1), A327257(n+1)])`
-/

namespace A190556.P4776985765406294101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327257 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187973 (2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A190556.P4776985765406294101

namespace A190556

/-- `A187973(2*∩[A187973(n+1), A327257(n+1)])` -/
def P4776985765406294101.Spec : Prop :=
  ∀ n, P4776985765406294101.a n = A190556 (n + 1)

end A190556

/-! ## A190556.P15088652970417946972

`A003153(A190554(n+1))`
-/

namespace A190556.P15088652970417946972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (A190554 (n + 1)).toNat

end

end A190556.P15088652970417946972

namespace A190556

/-- `A003153(A190554(n+1))` -/
def P15088652970417946972.Spec : Prop :=
  ∀ n, P15088652970417946972.a n = A190556 (n + 1)

end A190556

/-! ## A190556.P15073420652588241331

`A003151(A190554(n+1)+1)-2`
-/

namespace A190556.P15073420652588241331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A190554 (n + 1) + 1).toNat - 2

end

end A190556.P15073420652588241331

namespace A190556

/-- `A003151(A190554(n+1)+1)-2` -/
def P15073420652588241331.Spec : Prop :=
  ∀ n, P15073420652588241331.a n = A190556 (n + 1)

end A190556

/-! ## A190556.P12250389406785445599

`A026252(A190554(n+1)+1)-2`
-/

namespace A190556.P12250389406785445599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026252 (A190554 (n + 1) + 1).toNat - 2

end

end A190556.P12250389406785445599

namespace A190556

/-- `A026252(A190554(n+1)+1)-2` -/
def P12250389406785445599.Spec : Prop :=
  ∀ n, P12250389406785445599.a n = A190556 (n + 1)

end A190556

/-! ## A190556.P16189004136603463419

`A080754(lcm(A033999(n), A190554(n+1)))`
-/

namespace A190556.P16189004136603463419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (Int.lcm (A033999 n) (A190554 (n + 1)))

end

end A190556.P16189004136603463419

namespace A190556

/-- `A080754(lcm(A033999(n), A190554(n+1)))` -/
def P16189004136603463419.Spec : Prop :=
  ∀ n, P16189004136603463419.a n = A190556 (n + 1)

end A190556

/-! ## A190556.P18049322250081325039

`A080754(or(A000007(n), A190554(n+1)))`
-/

namespace A190556.P18049322250081325039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (Int.lor (A000007 n) (A190554 (n + 1))).toNat

end

end A190556.P18049322250081325039

namespace A190556

/-- `A080754(or(A000007(n), A190554(n+1)))` -/
def P18049322250081325039.Spec : Prop :=
  ∀ n, P18049322250081325039.a n = A190556 (n + 1)

end A190556

/-! ## A190556.P13306081191487322024

`∑{d}[A080754(A190554(n+1)), A000010(#)]`
-/

namespace A190556.P13306081191487322024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (A190554 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A190556.P13306081191487322024

namespace A190556

/-- `∑{d}[A080754(A190554(n+1)), A000010(#)]` -/
def P13306081191487322024.Spec : Prop :=
  ∀ n, P13306081191487322024.a n = A190556 (n + 1)

end A190556

/-! ## A190556.P2807413535543097836

`A003151(A190554(n+1))+char[A026741(n)]`
-/

namespace A190556.P2807413535543097836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A190554 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A190556.P2807413535543097836

namespace A190556

/-- `A003151(A190554(n+1))+char[A026741(n)]` -/
def P2807413535543097836.Spec : Prop :=
  ∀ n, P2807413535543097836.a n = A190556 (n + 1)

end A190556

/-! ## A190556.P504215704703312237

`A059841(2*n)+A003151(A190554(n+1))`
-/

namespace A190556.P504215704703312237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) + A003151 (A190554 (n + 1)).toNat

end

end A190556.P504215704703312237

namespace A190556

/-- `A059841(2*n)+A003151(A190554(n+1))` -/
def P504215704703312237.Spec : Prop :=
  ∀ n, P504215704703312237.a n = A190556 (n + 1)

end A190556

/-! ## A190556.P8653707322118939390

`A003151(A190554(n+1))+A000188(A020639(n+1))`
-/

namespace A190556.P8653707322118939390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (A190554 (n + 1)).toNat + A000188 (A020639 (n + 1)).toNat

end

end A190556.P8653707322118939390

namespace A190556

/-- `A003151(A190554(n+1))+A000188(A020639(n+1))` -/
def P8653707322118939390.Spec : Prop :=
  ∀ n, P8653707322118939390.a n = A190556 (n + 1)

end A190556

/-!
# A190557: Positions of 1 in A190555.

The programs for A190557, the canonical program `A190557.P7434355309192584092` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190557 has offset 1).

The definition of A190557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190557.P7434355309192584092

`eq[3, and(3, A022842(2*n+1))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190557

/-- `eq[3, and(3, A022842(2*n+1))]` -/
def P7434355309192584092.Spec : Prop :=
  ∀ n, (P7434355309192584092.a n : ℤ) = A190557 (n + 1)

theorem P7434355309192584092.correct : P7434355309192584092.Spec := by
  intro n
  simp only [A190557, Nat.add_sub_cancel]

end A190557

/-! ## A190557.P15384025744259507694

`eq[A001030(n+2), A197879(2*n+1)]`
-/

namespace A190557.P15384025744259507694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190557.P15384025744259507694

namespace A190557

/-- `eq[A001030(n+2), A197879(2*n+1)]` -/
def P15384025744259507694.Spec : Prop :=
  ∀ n, (P15384025744259507694.a n : ℤ) = A190557 (n + 1)

end A190557

/-! ## A190557.P1671618566085436972

`eq[1, A024539(2*n+1)+A004641(n+2)]`
-/

namespace A190557.P1671618566085436972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024539 (2 * n + 1) + A004641 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190557.P1671618566085436972

namespace A190557

/-- `eq[1, A024539(2*n+1)+A004641(n+2)]` -/
def P1671618566085436972.Spec : Prop :=
  ∀ n, (P1671618566085436972.a n : ℤ) = A190557 (n + 1)

end A190557

/-! ## A190557.P9790446945427263346

`eq[A004641(n+1), A006338(A005408(n))]`
-/

namespace A190557.P9790446945427263346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006338 (A005408 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190557.P9790446945427263346

namespace A190557

/-- `eq[A004641(n+1), A006338(A005408(n))]` -/
def P9790446945427263346.Spec : Prop :=
  ∀ n, (P9790446945427263346.a n : ℤ) = A190557 (n + 1)

end A190557

/-! ## A190557.P16805651022326777638

`eq[A004641(n+1), A024539(A267872(n))]`
-/

namespace A190557.P16805651022326777638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024539 (A267872 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190557.P16805651022326777638

namespace A190557

/-- `eq[A004641(n+1), A024539(A267872(n))]` -/
def P16805651022326777638.Spec : Prop :=
  ∀ n, (P16805651022326777638.a n : ℤ) = A190557 (n + 1)

end A190557

/-! ## A190557.P4216583518605012596

`eq[A024539(n+11), A024539(A005408(n))]`
-/

namespace A190557.P4216583518605012596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024539 (n + 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024539 (A005408 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190557.P4216583518605012596

namespace A190557

/-- `eq[A024539(n+11), A024539(A005408(n))]` -/
def P4216583518605012596.Spec : Prop :=
  ∀ n, (P4216583518605012596.a n : ℤ) = A190557 (n + 1)

end A190557

/-! ## A190557.P15133173149524600232

`lt[A001951(2*n)+A001951(n+1), A082532(2*n+1)]`
-/

namespace A190557.P15133173149524600232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n) + A001951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082532 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190557.P15133173149524600232

namespace A190557

/-- `lt[A001951(2*n)+A001951(n+1), A082532(2*n+1)]` -/
def P15133173149524600232.Spec : Prop :=
  ∀ n, (P15133173149524600232.a n : ℤ) = A190557 (n + 1)

end A190557

/-! ## A190557.P13503151528950351455

`eq[A144611(n), A190549(A086377(n+1))]`
-/

namespace A190557.P13503151528950351455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190549 (A086377 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190557.P13503151528950351455

namespace A190557

/-- `eq[A144611(n), A190549(A086377(n+1))]` -/
def P13503151528950351455.Spec : Prop :=
  ∀ n, (P13503151528950351455.a n : ℤ) = A190557 (n + 1)

end A190557

/-! ## A190557.P12670791401123773142

`eq[2, A190561(A001954(n))]`
-/

namespace A190557.P12670791401123773142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190561 (A001954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190557.P12670791401123773142

namespace A190557

/-- `eq[2, A190561(A001954(n))]` -/
def P12670791401123773142.Spec : Prop :=
  ∀ n, (P12670791401123773142.a n : ℤ) = A190557 (n + 1)

end A190557

/-! ## A190557.P6140248147348109374

`eq[1, A094267(A074840(4*n+2))]`
-/

namespace A190557.P6140248147348109374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A074840 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190557.P6140248147348109374

namespace A190557

/-- `eq[1, A094267(A074840(4*n+2))]` -/
def P6140248147348109374.Spec : Prop :=
  ∀ n, (P6140248147348109374.a n : ℤ) = A190557 (n + 1)

end A190557

/-! ## A190557.P8553624605304130279

`eq[1, A135481(A195119(4*n+2))]`
-/

namespace A190557.P8553624605304130279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A195119 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190557.P8553624605304130279

namespace A190557

/-- `eq[1, A135481(A195119(4*n+2))]` -/
def P8553624605304130279.Spec : Prop :=
  ∀ n, (P8553624605304130279.a n : ℤ) = A190557 (n + 1)

end A190557

/-! ## A190557.P3330283132259982605

`eq[3, A010873(A285075(4*n+3))]`
-/

namespace A190557.P3330283132259982605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A285075 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190557.P3330283132259982605

namespace A190557

/-- `eq[3, A010873(A285075(4*n+3))]` -/
def P3330283132259982605.Spec : Prop :=
  ∀ n, (P3330283132259982605.a n : ℤ) = A190557 (n + 1)

end A190557

/-! ## A190557.P13354435133938913894

`eq[2, A010873(A080754(A016825(n)))]`
-/

namespace A190557.P13354435133938913894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A080754 (A016825 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190557.P13354435133938913894

namespace A190557

/-- `eq[2, A010873(A080754(A016825(n)))]` -/
def P13354435133938913894.Spec : Prop :=
  ∀ n, (P13354435133938913894.a n : ℤ) = A190557 (n + 1)

end A190557

/-!
# A190558: Positions of 2 in A190555.

The programs for A190558, the canonical program `A190558.P2224212627330716451` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190558 has offset 1).

The definition of A190558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1250 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190558.P15872757716020137713

`eq[3, 3%A024544(2*n+1)]`
-/

namespace A190558.P15872757716020137713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A024544 (2 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190558.P15872757716020137713

namespace A190558

/-- `eq[3, 3%A024544(2*n+1)]` -/
def P15872757716020137713.Spec : Prop :=
  ∀ n, (P15872757716020137713.a n : ℤ) = A190558 (n + 1)

end A190558

/-! ## A190558.P6304423095192493092

`eq[1, val(A197878(2*n+1), 2)]`
-/

namespace A190558.P6304423095192493092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A197878 (2 * n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190558.P6304423095192493092

namespace A190558

/-- `eq[1, val(A197878(2*n+1), 2)]` -/
def P6304423095192493092.Spec : Prop :=
  ∀ n, (P6304423095192493092.a n : ℤ) = A190558 (n + 1)

end A190558

/-! ## A190558.P2224212627330716451

`eq[3, val(A121488(2*n+1), 2)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190558

/-- `eq[3, val(A121488(2*n+1), 2)]` -/
def P2224212627330716451.Spec : Prop :=
  ∀ n, (P2224212627330716451.a n : ℤ) = A190558 (n + 1)

theorem P2224212627330716451.correct : P2224212627330716451.Spec := by
  intro n
  simp only [A190558, Nat.add_sub_cancel]

end A190558

/-! ## A190558.P18024760371790643358

`lt[A082532(2*n+1), A001951(n+1)]`
-/

namespace A190558.P18024760371790643358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082532 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190558.P18024760371790643358

namespace A190558

/-- `lt[A082532(2*n+1), A001951(n+1)]` -/
def P18024760371790643358.Spec : Prop :=
  ∀ n, (P18024760371790643358.a n : ℤ) = A190558 (n + 1)

end A190558

/-! ## A190558.P5797273445977418601

`lt[A197879(2*n+1)+A197879(n+2), 1]`
-/

namespace A190558.P5797273445977418601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (2 * n + 1) + A197879 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A190558.P5797273445977418601

namespace A190558

/-- `lt[A197879(2*n+1)+A197879(n+2), 1]` -/
def P5797273445977418601.Spec : Prop :=
  ∀ n, (P5797273445977418601.a n : ℤ) = A190558 (n + 1)

end A190558

/-! ## A190558.P14909053588489355654

`lt[A082532(2*n+1), A054071(n+2)+n]`
-/

namespace A190558.P14909053588489355654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082532 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (n + 2) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190558.P14909053588489355654

namespace A190558

/-- `lt[A082532(2*n+1), A054071(n+2)+n]` -/
def P14909053588489355654.Spec : Prop :=
  ∀ n, (P14909053588489355654.a n : ℤ) = A190558 (n + 1)

end A190558

/-! ## A190558.P12532570936146933564

`eq[A197879(A005408(n))+1, A197879(n+1)]`
-/

namespace A190558.P12532570936146933564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (A005408 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190558.P12532570936146933564

namespace A190558

/-- `eq[A197879(A005408(n))+1, A197879(n+1)]` -/
def P12532570936146933564.Spec : Prop :=
  ∀ n, (P12532570936146933564.a n : ℤ) = A190558 (n + 1)

end A190558

/-! ## A190558.P3099412213236961099

`eq[A214848(2*n)+A144611(n+1), A144611(2*n+1)]`
-/

namespace A190558.P3099412213236961099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 (2 * n) + A144611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190558.P3099412213236961099

namespace A190558

/-- `eq[A214848(2*n)+A144611(n+1), A144611(2*n+1)]` -/
def P3099412213236961099.Spec : Prop :=
  ∀ n, (P3099412213236961099.a n : ℤ) = A190558 (n + 1)

end A190558

/-! ## A190558.P14751813788828812791

`eq[0, A190549(A001954(n))]`
-/

namespace A190558.P14751813788828812791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190549 (A001954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190558.P14751813788828812791

namespace A190558

/-- `eq[0, A190549(A001954(n))]` -/
def P14751813788828812791.Spec : Prop :=
  ∀ n, (P14751813788828812791.a n : ℤ) = A190558 (n + 1)

end A190558

/-! ## A190558.P2124543711756961163

`eq[2, A097508(4*n+2)%4]`
-/

namespace A190558.P2124543711756961163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097508 (4 * n + 2)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190558.P2124543711756961163

namespace A190558

/-- `eq[2, A097508(4*n+2)%4]` -/
def P2124543711756961163.Spec : Prop :=
  ∀ n, (P2124543711756961163.a n : ℤ) = A190558 (n + 1)

end A190558

/-! ## A190558.P13343852431442102201

`eq[1, A056594(A195119(4*n+2))]`
-/

namespace A190558.P13343852431442102201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A195119 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190558.P13343852431442102201

namespace A190558

/-- `eq[1, A056594(A195119(4*n+2))]` -/
def P13343852431442102201.Spec : Prop :=
  ∀ n, (P13343852431442102201.a n : ℤ) = A190558 (n + 1)

end A190558

/-! ## A190558.P5396860045402822842

`eq[3, A010873(A080754(A016825(n)))]`
-/

namespace A190558.P5396860045402822842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A080754 (A016825 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190558.P5396860045402822842

namespace A190558

/-- `eq[3, A010873(A080754(A016825(n)))]` -/
def P5396860045402822842.Spec : Prop :=
  ∀ n, (P5396860045402822842.a n : ℤ) = A190558 (n + 1)

end A190558

/-! ## A190558.P2899060394865774425

`lt[A001951(A082532(2*n+1)), A004277(n)]`
-/

namespace A190558.P2899060394865774425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A082532 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190558.P2899060394865774425

namespace A190558

/-- `lt[A001951(A082532(2*n+1)), A004277(n)]` -/
def P2899060394865774425.Spec : Prop :=
  ∀ n, (P2899060394865774425.a n : ℤ) = A190558 (n + 1)

end A190558

/-! ## A190558.P7479621878403927730

`eq[3, A185049(A022842(2*n+1))]`
-/

namespace A190558.P7479621878403927730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185049 (A022842 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190558.P7479621878403927730

namespace A190558

/-- `eq[3, A185049(A022842(2*n+1))]` -/
def P7479621878403927730.Spec : Prop :=
  ∀ n, (P7479621878403927730.a n : ℤ) = A190558 (n + 1)

end A190558

/-! ## A190558.P8363112711841088303

`eq[2, A001511(A003151(4*n+2))]`
-/

namespace A190558.P8363112711841088303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A003151 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190558.P8363112711841088303

namespace A190558

/-- `eq[2, A001511(A003151(4*n+2))]` -/
def P8363112711841088303.Spec : Prop :=
  ∀ n, (P8363112711841088303.a n : ℤ) = A190558 (n + 1)

end A190558

/-!
# A190559: Positions of 3 in A190555.

The programs for A190559, the canonical program `A190559.P18202990085893941256` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190559 has offset 1).

The definition of A190559 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190559.P18202990085893941256

`eq[1, and(3, A022842(2*n+1))]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190559

/-- `eq[1, and(3, A022842(2*n+1))]` -/
def P18202990085893941256.Spec : Prop :=
  ∀ n, (P18202990085893941256.a n : ℤ) = A190559 (n + 1)

theorem P18202990085893941256.correct : P18202990085893941256.Spec := by
  intro n
  simp only [A190559, Nat.add_sub_cancel]

end A190559

/-! ## A190559.P13509636587675615906

`eq[2, A008619(A024544(2*n+1))]`
-/

namespace A190559.P13509636587675615906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A024544 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190559.P13509636587675615906

namespace A190559

/-- `eq[2, A008619(A024544(2*n+1))]` -/
def P13509636587675615906.Spec : Prop :=
  ∀ n, (P13509636587675615906.a n : ℤ) = A190559 (n + 1)

end A190559

/-! ## A190559.P16369575602719286278

`eq[A004641(n+2), A024539(2*n+1)]`
-/

namespace A190559.P16369575602719286278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004641 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024539 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190559.P16369575602719286278

namespace A190559

/-- `eq[A004641(n+2), A024539(2*n+1)]` -/
def P16369575602719286278.Spec : Prop :=
  ∀ n, (P16369575602719286278.a n : ℤ) = A190559 (n + 1)

end A190559

/-! ## A190559.P3504071049332911160

`eq[2*A197879(2*n+1), A001030(n+2)]`
-/

namespace A190559.P3504071049332911160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A197879 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190559.P3504071049332911160

namespace A190559

/-- `eq[2*A197879(2*n+1), A001030(n+2)]` -/
def P3504071049332911160.Spec : Prop :=
  ∀ n, (P3504071049332911160.a n : ℤ) = A190559 (n + 1)

end A190559

/-! ## A190559.P8828172133484199393

`eq[A001030(n+1), A197879(A005408(n))]`
-/

namespace A190559.P8828172133484199393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197879 (A005408 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190559.P8828172133484199393

namespace A190559

/-- `eq[A001030(n+1), A197879(A005408(n))]` -/
def P8828172133484199393.Spec : Prop :=
  ∀ n, (P8828172133484199393.a n : ℤ) = A190559 (n + 1)

end A190559

/-! ## A190559.P15269414726642352540

`eq[1, A010873(A285075(4*n+3))]`
-/

namespace A190559.P15269414726642352540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A285075 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190559.P15269414726642352540

namespace A190559

/-- `eq[1, A010873(A285075(4*n+3))]` -/
def P15269414726642352540.Spec : Prop :=
  ∀ n, (P15269414726642352540.a n : ℤ) = A190559 (n + 1)

end A190559

/-! ## A190559.P9688862877471069614

`eq[3, A085058(A001951(4*n+2))]`
-/

namespace A190559.P9688862877471069614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 (A001951 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190559.P9688862877471069614

namespace A190559

/-- `eq[3, A085058(A001951(4*n+2))]` -/
def P9688862877471069614.Spec : Prop :=
  ∀ n, (P9688862877471069614.a n : ℤ) = A190559 (n + 1)

end A190559

/-! ## A190559.P15985036970853041612

`eq[0, A010873(A080754(A016825(n)))]`
-/

namespace A190559.P15985036970853041612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A080754 (A016825 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190559.P15985036970853041612

namespace A190559

/-- `eq[0, A010873(A080754(A016825(n)))]` -/
def P15985036970853041612.Spec : Prop :=
  ∀ n, (P15985036970853041612.a n : ℤ) = A190559 (n + 1)

end A190559

/-! ## A190559.P10461079726055492460

`eq[2, A001511(A286666(4*n+2))]`
-/

namespace A190559.P10461079726055492460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A286666 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190559.P10461079726055492460

namespace A190559

/-- `eq[2, A001511(A286666(4*n+2))]` -/
def P10461079726055492460.Spec : Prop :=
  ∀ n, (P10461079726055492460.a n : ℤ) = A190559 (n + 1)

end A190559

/-! ## A190559.P13155984526829239031

`eq[2, A050603(A286927(4*n+2))]`
-/

namespace A190559.P13155984526829239031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A286927 (4 * n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190559.P13155984526829239031

namespace A190559

/-- `eq[2, A050603(A286927(4*n+2))]` -/
def P13155984526829239031.Spec : Prop :=
  ∀ n, (P13155984526829239031.a n : ℤ) = A190559 (n + 1)

end A190559

/-!
# A190560: a(n) = 8*a(n-1) + 6*a(n-2), with a(0)=0, a(1)=1.

The programs for A190560, the canonical program `A190560.P13223478547114411995` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190560 has offset 0).

The definition of A190560 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+6*a(n-2)` (program `A190560.P13223478547114411995`, by `A190560.P13223478547114411995.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190560.P13223478547114411995

`8*a(n-1)+6*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190560

/-- `8*a(n-1)+6*a(n-2)` -/
def P13223478547114411995.Spec : Prop :=
  ∀ n, (P13223478547114411995.a n : ℤ) = A190560 n

theorem P13223478547114411995.correct : P13223478547114411995.Spec := by
  intro n
  simp only [A190560]

end A190560

/-! ## A190560.P12537358185891271835

`ogf(x/(1-8x-6x^2))`
-/

namespace A190560.P12537358185891271835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -8, -6] n

end

end A190560.P12537358185891271835

namespace A190560

/-- `ogf(x/(1-8x-6x^2))` -/
def P12537358185891271835.Spec : Prop :=
  ∀ n, P12537358185891271835.a n = A190560 n

end A190560

/-! ## A190560.P13736710607507966520

`A254657(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A190560.P13736710607507966520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A254657 (n - 1) - a (n - 1)

end

end A190560.P13736710607507966520

namespace A190560

/-- `A254657(n-1)-a(n-1)` -/
def P13736710607507966520.Spec : Prop :=
  ∀ n, P13736710607507966520.a n = A190560 n

end A190560

/-! ## A190560.P1712899531331637488

`1/44*sqrt(22)*((4+sqrt(22))^n-(4-sqrt(22))^n)`
-/

namespace A190560.P1712899531331637488
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 44 : ℝ) * Real.sqrt (22 : ℝ) * ((4 + Real.sqrt (22 : ℝ)) ^ n - (4 - Real.sqrt (22 : ℝ)) ^ n)

end

end A190560.P1712899531331637488

namespace A190560

/-- `1/44*sqrt(22)*((4+sqrt(22))^n-(4-sqrt(22))^n)` -/
def P1712899531331637488.Spec : Prop :=
  ∀ n, P1712899531331637488.a n = (A190560 n : ℝ)

end A190560

/-! ## A190560.P11749875949987466726

`A254657(n)%(A208316(n+1)-A254657(n))`
-/

namespace A190560.P11749875949987466726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254657 n) (A208316 (n + 1) - A254657 n)

end

end A190560.P11749875949987466726

namespace A190560

/-- `A254657(n)%(A208316(n+1)-A254657(n))` -/
def P11749875949987466726.Spec : Prop :=
  ∀ n, P11749875949987466726.a n = A190560 n

end A190560

/-!
# A190561: a(n) = [(bn+c)r]-b[nr]-[cr], where (r,b,c)=(sqrt(2),4,3) and []=floor.

The programs for A190561, the canonical program `A190561.P4029972441182331676` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190561 has offset 1).

The definition of A190561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190561.P4029972441182331676

`A080754(4*n+7)%A285075(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A190561

/-- `A080754(4*n+7)%A285075(n+2)` -/
def P4029972441182331676.Spec : Prop :=
  ∀ n, P4029972441182331676.a n = A190561 (n + 1)

theorem P4029972441182331676.correct : P4029972441182331676.Spec := by
  intro n
  simp only [A190561, Nat.add_sub_cancel]

end A190561

/-! ## A190561.P1520739564041628427

`A190555(n+1)-A144611(A016825(n+1))`
-/

namespace A190561.P1520739564041628427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190555 (n + 1) - A144611 (A016825 (n + 1)).toNat

end

end A190561.P1520739564041628427

namespace A190561

/-- `A190555(n+1)-A144611(A016825(n+1))` -/
def P1520739564041628427.Spec : Prop :=
  ∀ n, P1520739564041628427.a n = A190561 (n + 1)

end A190561

/-! ## A190561.P9163391599670759725

`and(p?[A103543(n+1)], A190549(n+13))`
-/

namespace A190561.P9163391599670759725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A190549 (n + 13))

end

end A190561.P9163391599670759725

namespace A190561

/-- `and(p?[A103543(n+1)], A190549(n+13))` -/
def P9163391599670759725.Spec : Prop :=
  ∀ n, P9163391599670759725.a n = A190561 (n + 1)

end A190561

/-! ## A190561.P18340657269031659811

`or(A000007(A055570(n)), A190549(n+13))`
-/

namespace A190561.P18340657269031659811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A055570 n).toNat) (A190549 (n + 13))

end

end A190561.P18340657269031659811

namespace A190561

/-- `or(A000007(A055570(n)), A190549(n+13))` -/
def P18340657269031659811.Spec : Prop :=
  ∀ n, P18340657269031659811.a n = A190561 (n + 1)

end A190561

/-! ## A190561.P9780015491109336856

`A190544(n+1)+A079979(A115341(n))`
-/

namespace A190561.P9780015491109336856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190544 (n + 1) + A079979 (A115341 n).toNat

end

end A190561.P9780015491109336856

namespace A190561

/-- `A190544(n+1)+A079979(A115341(n))` -/
def P9780015491109336856.Spec : Prop :=
  ∀ n, P9780015491109336856.a n = A190561 (n + 1)

end A190561

/-!
# A190562: Positions of 0 in A190561.

The programs for A190562, the canonical program `A190562.P8810397577342035983` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190562 has offset 1).

The definition of A190562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1893 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190562.P8810397577342035983

`1+eq[0, A190561(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190562

/-- `1+eq[0, A190561(n+1)]` -/
def P8810397577342035983.Spec : Prop :=
  ∀ n, (P8810397577342035983.a n : ℤ) = A190562 (n + 1)

theorem P8810397577342035983.correct : P8810397577342035983.Spec := by
  intro n
  simp only [A190562, Nat.add_sub_cancel]

end A190562

/-! ## A190562.P6940358919915382169

`eq[3, A190544(A285078(n+1))]`
-/

namespace A190562.P6940358919915382169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190544 (A285078 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190562.P6940358919915382169

namespace A190562

/-- `eq[3, A190544(A285078(n+1))]` -/
def P6940358919915382169.Spec : Prop :=
  ∀ n, (P6940358919915382169.a n : ℤ) = A190562 (n + 1)

end A190562

/-! ## A190562.P5541237944295786128

`eq[A144611(n), A327256(A003151(n+1))]`
-/

namespace A190562.P5541237944295786128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327256 (A003151 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190562.P5541237944295786128

namespace A190562

/-- `eq[A144611(n), A327256(A003151(n+1))]` -/
def P5541237944295786128.Spec : Prop :=
  ∀ n, (P5541237944295786128.a n : ℤ) = A190562 (n + 1)

end A190562

/-! ## A190562.P3151905464137817662

`eq[A080763(A184621(n+1)), A144611(n)]`
-/

namespace A190562.P3151905464137817662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080763 (A184621 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190562.P3151905464137817662

namespace A190562

/-- `eq[A080763(A184621(n+1)), A144611(n)]` -/
def P3151905464137817662.Spec : Prop :=
  ∀ n, (P3151905464137817662.a n : ℤ) = A190562 (n + 1)

end A190562

/-! ## A190562.P485957883936194564

`eq[1, A144611(A184621(n+1)+A144611(n))]`
-/

namespace A190562.P485957883936194564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 (A184621 (n + 1) + A144611 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190562.P485957883936194564

namespace A190562

/-- `eq[1, A144611(A184621(n+1)+A144611(n))]` -/
def P485957883936194564.Spec : Prop :=
  ∀ n, (P485957883936194564.a n : ℤ) = A190562 (n + 1)

end A190562

/-! ## A190562.P3087362412683667404

`lt[A082532(A289037(n+1)), A285074(n+1)]`
-/

namespace A190562.P3087362412683667404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082532 (A289037 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A190562.P3087362412683667404

namespace A190562

/-- `lt[A082532(A289037(n+1)), A285074(n+1)]` -/
def P3087362412683667404.Spec : Prop :=
  ∀ n, (P3087362412683667404.a n : ℤ) = A190562 (n + 1)

end A190562

/-! ## A190562.P17848872441001906450

`eq[A006338(A022804(n+1)), A144611(n)]`
-/

namespace A190562.P17848872441001906450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006338 (A022804 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190562.P17848872441001906450

namespace A190562

/-- `eq[A006338(A022804(n+1)), A144611(n)]` -/
def P17848872441001906450.Spec : Prop :=
  ∀ n, (P17848872441001906450.a n : ℤ) = A190562 (n + 1)

end A190562

/-! ## A190562.P9192782465893150356

`eq[0, A190561(A233583(n+1))]`
-/

namespace A190562.P9192782465893150356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190561 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190562.P9192782465893150356

namespace A190562

/-- `eq[0, A190561(A233583(n+1))]` -/
def P9192782465893150356.Spec : Prop :=
  ∀ n, (P9192782465893150356.a n : ℤ) = A190562 (n + 1)

end A190562

/-!
# A190563: Positions of 1 in A190561.

The programs for A190563, the canonical program `A190563.P9058313679088446124` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190563 has offset 1).

The definition of A190563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190563.P9058313679088446124

`eq[1, A190561(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190563

/-- `eq[1, A190561(n+1)]+1` -/
def P9058313679088446124.Spec : Prop :=
  ∀ n, (P9058313679088446124.a n : ℤ) = A190563 (n + 1)

theorem P9058313679088446124.correct : P9058313679088446124.Spec := by
  intro n
  simp only [A190563, Nat.add_sub_cancel]

end A190563

/-! ## A190563.P17885867817472506298

`eq[A020639(A215247(2*(n+1))), A006337(n+1)]`
-/

namespace A190563.P17885867817472506298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A215247 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190563.P17885867817472506298

namespace A190563

/-- `eq[A020639(A215247(2*(n+1))), A006337(n+1)]` -/
def P17885867817472506298.Spec : Prop :=
  ∀ n, (P17885867817472506298.a n : ℤ) = A190563 (n + 1)

end A190563

/-! ## A190563.P2557745432682345946

`eq[2, A214848(A184621(n+1))]`
-/

namespace A190563.P2557745432682345946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214848 (A184621 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190563.P2557745432682345946

namespace A190563

/-- `eq[2, A214848(A184621(n+1))]` -/
def P2557745432682345946.Spec : Prop :=
  ∀ n, (P2557745432682345946.a n : ℤ) = A190563 (n + 1)

end A190563

/-! ## A190563.P13718940676950068415

`eq[0, A289036(4*n+5)%4]`
-/

namespace A190563.P13718940676950068415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289036 (4 * n + 5)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190563.P13718940676950068415

namespace A190563

/-- `eq[0, A289036(4*n+5)%4]` -/
def P13718940676950068415.Spec : Prop :=
  ∀ n, (P13718940676950068415.a n : ℤ) = A190563 (n + 1)

end A190563

/-! ## A190563.P2505932754086319126

`eq[A024544(4*n+3), A024544(2*(n+1))]`
-/

namespace A190563.P2505932754086319126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024544 (4 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024544 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190563.P2505932754086319126

namespace A190563

/-- `eq[A024544(4*n+3), A024544(2*(n+1))]` -/
def P2505932754086319126.Spec : Prop :=
  ∀ n, (P2505932754086319126.a n : ℤ) = A190563 (n + 1)

end A190563

/-! ## A190563.P11065126261511266306

`eq[A080763(4*A003151(n+1)), A159684(n)]`
-/

namespace A190563.P11065126261511266306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080763 (4 * A003151 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190563.P11065126261511266306

namespace A190563

/-- `eq[A080763(4*A003151(n+1)), A159684(n)]` -/
def P11065126261511266306.Spec : Prop :=
  ∀ n, (P11065126261511266306.a n : ℤ) = A190563 (n + 1)

end A190563

/-! ## A190563.P6912473374928766961

`eq[1, A286688(4*A286690(n+1)+1)]`
-/

namespace A190563.P6912473374928766961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286688 (4 * A286690 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190563.P6912473374928766961

namespace A190563

/-- `eq[1, A286688(4*A286690(n+1)+1)]` -/
def P6912473374928766961.Spec : Prop :=
  ∀ n, (P6912473374928766961.a n : ℤ) = A190563 (n + 1)

end A190563

/-!
# A190564: Positions of 2 in A190561.

The programs for A190564, the canonical program `A190564.P9395471730941467231` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190564 has offset 1).

The definition of A190564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190564.P9395471730941467231

`eq[2, A190561(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190564

/-- `eq[2, A190561(n+1)]+1` -/
def P9395471730941467231.Spec : Prop :=
  ∀ n, (P9395471730941467231.a n : ℤ) = A190564 (n + 1)

theorem P9395471730941467231.correct : P9395471730941467231.Spec := by
  intro n
  simp only [A190564, Nat.add_sub_cancel]

end A190564

/-! ## A190564.P9951232518477300648

`eq[2, A190561(A000007(n)+n)]`
-/

namespace A190564.P9951232518477300648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190561 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190564.P9951232518477300648

namespace A190564

/-- `eq[2, A190561(A000007(n)+n)]` -/
def P9951232518477300648.Spec : Prop :=
  ∀ n, (P9951232518477300648.a n : ℤ) = A190564 (n + 1)

end A190564

/-! ## A190564.P16625471364945150974

`eq[2, A001951(4*n+3)%4]`
-/

namespace A190564.P16625471364945150974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001951 (4 * n + 3)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190564.P16625471364945150974

namespace A190564

/-- `eq[2, A001951(4*n+3)%4]` -/
def P16625471364945150974.Spec : Prop :=
  ∀ n, (P16625471364945150974.a n : ℤ) = A190564 (n + 1)

end A190564

/-! ## A190564.P10952730056093702974

`eq[1, A289036(4*n+5)%4]`
-/

namespace A190564.P10952730056093702974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289036 (4 * n + 5)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190564.P10952730056093702974

namespace A190564

/-- `eq[1, A289036(4*n+5)%4]` -/
def P10952730056093702974.Spec : Prop :=
  ∀ n, (P10952730056093702974.a n : ℤ) = A190564 (n + 1)

end A190564

/-! ## A190564.P12738088421512844795

`eq[3, A010127(A001951(4*n+3))]`
-/

namespace A190564.P12738088421512844795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 (A001951 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190564.P12738088421512844795

namespace A190564

/-- `eq[3, A010127(A001951(4*n+3))]` -/
def P12738088421512844795.Spec : Prop :=
  ∀ n, (P12738088421512844795.a n : ℤ) = A190564 (n + 1)

end A190564

/-! ## A190564.P1658444725496294981

`eq[atan(A083035(2*n+1)), A083035(4*n+3)]`
-/

namespace A190564.P1658444725496294981
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A083035 (2 * n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A190564.P1658444725496294981

namespace A190564

/-- `eq[atan(A083035(2*n+1)), A083035(4*n+3)]` -/
def P1658444725496294981.Spec : Prop :=
  ∀ n, (P1658444725496294981.a n : ℤ) = A190564 (n + 1)

end A190564

/-! ## A190564.P2401534103413059484

`eq[3, A053381(A289036(4*n+5))]`
-/

namespace A190564.P2401534103413059484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 (A289036 (4 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190564.P2401534103413059484

namespace A190564

/-- `eq[3, A053381(A289036(4*n+5))]` -/
def P2401534103413059484.Spec : Prop :=
  ∀ n, (P2401534103413059484.a n : ℤ) = A190564 (n + 1)

end A190564

/-! ## A190564.P2823617990633188761

`eq[1, A009001(A001952(4*n+3))]`
-/

namespace A190564.P2823617990633188761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A001952 (4 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190564.P2823617990633188761

namespace A190564

/-- `eq[1, A009001(A001952(4*n+3))]` -/
def P2823617990633188761.Spec : Prop :=
  ∀ n, (P2823617990633188761.a n : ℤ) = A190564 (n + 1)

end A190564

/-! ## A190564.P6898899755525680917

`eq[2, A190561(A233583(n+1))]`
-/

namespace A190564.P6898899755525680917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190561 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190564.P6898899755525680917

namespace A190564

/-- `eq[2, A190561(A233583(n+1))]` -/
def P6898899755525680917.Spec : Prop :=
  ∀ n, (P6898899755525680917.a n : ℤ) = A190564 (n + 1)

end A190564

/-!
# A190565: Positions of 3 in A190561.

The programs for A190565, the canonical program `A190565.P10573021868143649417` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190565 has offset 1).

The definition of A190565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190565.P10573021868143649417

`eq[3, A190561(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A190565

/-- `eq[3, A190561(n+1)]+1` -/
def P10573021868143649417.Spec : Prop :=
  ∀ n, (P10573021868143649417.a n : ℤ) = A190565 (n + 1)

theorem P10573021868143649417.correct : P10573021868143649417.Spec := by
  intro n
  simp only [A190565, Nat.add_sub_cancel]

end A190565

/-! ## A190565.P836153325449566779

`eq[3, A190561(A000007(n)+n)]`
-/

namespace A190565.P836153325449566779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190561 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190565.P836153325449566779

namespace A190565

/-- `eq[3, A190561(A000007(n)+n)]` -/
def P836153325449566779.Spec : Prop :=
  ∀ n, (P836153325449566779.a n : ℤ) = A190565 (n + 1)

end A190565

/-! ## A190565.P17827741193324318714

`eq[A020639(A215247(2*(n+1))), A080763(n+1)]`
-/

namespace A190565.P17827741193324318714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A215247 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080763 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190565.P17827741193324318714

namespace A190565

/-- `eq[A020639(A215247(2*(n+1))), A080763(n+1)]` -/
def P17827741193324318714.Spec : Prop :=
  ∀ n, (P17827741193324318714.a n : ℤ) = A190565 (n + 1)

end A190565

/-! ## A190565.P8048507550757594847

`eq[2, A289036(4*n+5)%4]`
-/

namespace A190565.P8048507550757594847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289036 (4 * n + 5)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190565.P8048507550757594847

namespace A190565

/-- `eq[2, A289036(4*n+5)%4]` -/
def P8048507550757594847.Spec : Prop :=
  ∀ n, (P8048507550757594847.a n : ℤ) = A190565 (n + 1)

end A190565

/-! ## A190565.P16652909597767407751

`eq[A006337(n+1), A083035(A016813(n)+2)]`
-/

namespace A190565.P16652909597767407751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083035 (A016813 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190565.P16652909597767407751

namespace A190565

/-- `eq[A006337(n+1), A083035(A016813(n)+2)]` -/
def P16652909597767407751.Spec : Prop :=
  ∀ n, (P16652909597767407751.a n : ℤ) = A190565 (n + 1)

end A190565

/-! ## A190565.P3026707734032136690

`eq[A020639(A003151(4*n+3)), A080763(n+1)]`
-/

namespace A190565.P3026707734032136690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003151 (4 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080763 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A190565.P3026707734032136690

namespace A190565

/-- `eq[A020639(A003151(4*n+3)), A080763(n+1)]` -/
def P3026707734032136690.Spec : Prop :=
  ∀ n, (P3026707734032136690.a n : ℤ) = A190565 (n + 1)

end A190565

/-! ## A190565.P11376544570876576927

`eq[2, A001511(A215247(2*(n+1)))]`
-/

namespace A190565.P11376544570876576927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A215247 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A190565.P11376544570876576927

namespace A190565

/-- `eq[2, A001511(A215247(2*(n+1)))]` -/
def P11376544570876576927.Spec : Prop :=
  ∀ n, (P11376544570876576927.a n : ℤ) = A190565 (n + 1)

end A190565

/-!
# A190566: Positions of 4 in A190561.

The programs for A190566, the canonical program `A190566.P4916505128148002889` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190566 has offset 1).

The definition of A190566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1465 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190566.P4916505128148002889

`A003151(A190550(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A190566

/-- `A003151(A190550(n+1))` -/
def P4916505128148002889.Spec : Prop :=
  ∀ n, P4916505128148002889.a n = A190566 (n + 1)

theorem P4916505128148002889.correct : P4916505128148002889.Spec := by
  intro n
  simp only [A190566, Nat.add_sub_cancel]

end A190566

/-! ## A190566.P3535434435689638572

`A080754(A190550(n+1)-1)+2`
-/

namespace A190566.P3535434435689638572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 (A190550 (n + 1) - 1).toNat + 2

end

end A190566.P3535434435689638572

namespace A190566

/-- `A080754(A190550(n+1)-1)+2` -/
def P3535434435689638572.Spec : Prop :=
  ∀ n, P3535434435689638572.a n = A190566 (n + 1)

end A190566

/-! ## A190566.P1596083591084739613

`A003153(A190550(n+1)%A098025(n+1))`
-/

namespace A190566.P1596083591084739613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (Int.tmod (A190550 (n + 1)) (A098025 (n + 1))).toNat

end

end A190566.P1596083591084739613

namespace A190566

/-- `A003153(A190550(n+1)%A098025(n+1))` -/
def P1596083591084739613.Spec : Prop :=
  ∀ n, P1596083591084739613.a n = A190566 (n + 1)

end A190566

/-! ## A190566.P12938068691398069950

`A001511(A016813(n))*A003153(A190550(n+1))`
-/

namespace A190566.P12938068691398069950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A016813 n).toNat * A003153 (A190550 (n + 1)).toNat

end

end A190566.P12938068691398069950

namespace A190566

/-- `A001511(A016813(n))*A003153(A190550(n+1))` -/
def P12938068691398069950.Spec : Prop :=
  ∀ n, P12938068691398069950.a n = A190566 (n + 1)

end A190566

/-! ## A190566.P12848022501465593371

`A003153(A190550(n+1))%A001966(A001966(n))`
-/

namespace A190566.P12848022501465593371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003153 (A190550 (n + 1)).toNat) (A001966 (A001966 n).toNat)

end

end A190566.P12848022501465593371

namespace A190566

/-- `A003153(A190550(n+1))%A001966(A001966(n))` -/
def P12848022501465593371.Spec : Prop :=
  ∀ n, P12848022501465593371.a n = A190566 (n + 1)

end A190566

/-! ## A190566.P15276424248965557993

`A086377(A190550(n+1))+A006337(A001952(n+1))`
-/

namespace A190566.P15276424248965557993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (A190550 (n + 1)).toNat + A006337 (A001952 (n + 1)).toNat

end

end A190566.P15276424248965557993

namespace A190566

/-- `A086377(A190550(n+1))+A006337(A001952(n+1))` -/
def P15276424248965557993.Spec : Prop :=
  ∀ n, P15276424248965557993.a n = A190566 (n + 1)

end A190566

/-! ## A190566.P12933842863763207415

`A086377(A190550(n+1))+A043566(A001511(n+1))`
-/

namespace A190566.P12933842863763207415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (A190550 (n + 1)).toNat + A043566 (A001511 (n + 1)).toNat

end

end A190566.P12933842863763207415

namespace A190566

/-- `A086377(A190550(n+1))+A043566(A001511(n+1))` -/
def P12933842863763207415.Spec : Prop :=
  ∀ n, P12933842863763207415.a n = A190566 (n + 1)

end A190566

/-! ## A190566.P12918723279885229335

`A086377(A190550(n+1))+A083035(A022804(n+1))`
-/

namespace A190566.P12918723279885229335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (A190550 (n + 1)).toNat + A083035 (A022804 (n + 1)).toNat

end

end A190566.P12918723279885229335

namespace A190566

/-- `A086377(A190550(n+1))+A083035(A022804(n+1))` -/
def P12918723279885229335.Spec : Prop :=
  ∀ n, P12918723279885229335.a n = A190566 (n + 1)

end A190566

/-! ## A190566.P9647857089364043647

`A086377(A190550(n+1))+A006337(A190492(n+1))`
-/

namespace A190566.P9647857089364043647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (A190550 (n + 1)).toNat + A006337 (A190492 (n + 1)).toNat

end

end A190566.P9647857089364043647

namespace A190566

/-- `A086377(A190550(n+1))+A006337(A190492(n+1))` -/
def P9647857089364043647.Spec : Prop :=
  ∀ n, P9647857089364043647.a n = A190566 (n + 1)

end A190566

/-! ## A190566.P12866569964036038518

`A086377(A190550(n+1))+A006338(A190547(n+1))`
-/

namespace A190566.P12866569964036038518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (A190550 (n + 1)).toNat + A006338 (A190547 (n + 1)).toNat

end

end A190566.P12866569964036038518

namespace A190566

/-- `A086377(A190550(n+1))+A006338(A190547(n+1))` -/
def P12866569964036038518.Spec : Prop :=
  ∀ n, P12866569964036038518.a n = A190566 (n + 1)

end A190566

/-! ## A190566.P17179968510232831324

`A159684(A190563(n+1))+A086377(A190550(n+1))`
-/

namespace A190566.P17179968510232831324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A190563 (n + 1)).toNat + A086377 (A190550 (n + 1)).toNat

end

end A190566.P17179968510232831324

namespace A190566

/-- `A159684(A190563(n+1))+A086377(A190550(n+1))` -/
def P17179968510232831324.Spec : Prop :=
  ∀ n, P17179968510232831324.a n = A190566 (n + 1)

end A190566

/-! ## A190566.P3387575454450085426

`A188037(A190562(n+1))+A086377(A190550(n+1))`
-/

namespace A190566.P3387575454450085426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188037 (A190562 (n + 1)).toNat + A086377 (A190550 (n + 1)).toNat

end

end A190566.P3387575454450085426

namespace A190566

/-- `A188037(A190562(n+1))+A086377(A190550(n+1))` -/
def P3387575454450085426.Spec : Prop :=
  ∀ n, P3387575454450085426.a n = A190566 (n + 1)

end A190566

/-! ## A190566.P6325503970402772336

`A086377(A190550(n+1)+1)-1`
-/

namespace A190566.P6325503970402772336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (A190550 (n + 1) + 1).toNat - 1

end

end A190566.P6325503970402772336

namespace A190566

/-- `A086377(A190550(n+1)+1)-1` -/
def P6325503970402772336.Spec : Prop :=
  ∀ n, P6325503970402772336.a n = A190566 (n + 1)

end A190566

/-! ## A190566.P11498568025007807068

`A286688(A286690(n+1))+A086377(A190550(n+1))`
-/

namespace A190566.P11498568025007807068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286688 (A286690 (n + 1)).toNat + A086377 (A190550 (n + 1)).toNat

end

end A190566.P11498568025007807068

namespace A190566

/-- `A286688(A286690(n+1))+A086377(A190550(n+1))` -/
def P11498568025007807068.Spec : Prop :=
  ∀ n, P11498568025007807068.a n = A190566 (n + 1)

end A190566

/-! ## A190566.P16440488001818437089

`A086377(A190550(n+1))+A006338(A190495(n+1))`
-/

namespace A190566.P16440488001818437089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086377 (A190550 (n + 1)).toNat + A006338 (A190495 (n + 1)).toNat

end

end A190566.P16440488001818437089

namespace A190566

/-- `A086377(A190550(n+1))+A006338(A190495(n+1))` -/
def P16440488001818437089.Spec : Prop :=
  ∀ n, P16440488001818437089.a n = A190566 (n + 1)

end A190566

/-! ## A190566.P12528260811057627304

`A080755(∩[A080755(2*(n+1)), A003153(n+2)])`
-/

namespace A190566.P12528260811057627304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003153 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A190566.P12528260811057627304

namespace A190566

/-- `A080755(∩[A080755(2*(n+1)), A003153(n+2)])` -/
def P12528260811057627304.Spec : Prop :=
  ∀ n, P12528260811057627304.a n = A190566 (n + 1)

end A190566

/-! ## A190566.P6491970090899826084

`A186221(∩[A186221(2*(n+1)), A003151(n+2)])`
-/

namespace A190566.P6491970090899826084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186221 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186221 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A190566.P6491970090899826084

namespace A190566

/-- `A186221(∩[A186221(2*(n+1)), A003151(n+2)])` -/
def P6491970090899826084.Spec : Prop :=
  ∀ n, P6491970090899826084.a n = A190566 (n + 1)

end A190566

/-! ## A190566.P2259037499137356041

`A186221(∩[A186221(2*(n+1)), A059649(n+2)])`
-/

namespace A190566.P2259037499137356041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186221 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059649 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186221 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A190566.P2259037499137356041

namespace A190566

/-- `A186221(∩[A186221(2*(n+1)), A059649(n+2)])` -/
def P2259037499137356041.Spec : Prop :=
  ∀ n, P2259037499137356041.a n = A190566 (n + 1)

end A190566

/-! ## A190566.P2031495038258865163

`A186221(∩[A186221(2*(n+1)), A187971(n+2)])`
-/

namespace A190566.P2031495038258865163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186221 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187971 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186221 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A190566.P2031495038258865163

namespace A190566

/-- `A186221(∩[A186221(2*(n+1)), A187971(n+2)])` -/
def P2031495038258865163.Spec : Prop :=
  ∀ n, P2031495038258865163.a n = A190566 (n + 1)

end A190566

/-! ## A190566.P10505907907907315529

`A080755(∩[A080755(2*(n+1)), A186221(2*(n+1))])`
-/

namespace A190566.P10505907907907315529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186221 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080755 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A190566.P10505907907907315529

namespace A190566

/-- `A080755(∩[A080755(2*(n+1)), A186221(2*(n+1))])` -/
def P10505907907907315529.Spec : Prop :=
  ∀ n, P10505907907907315529.a n = A190566 (n + 1)

end A190566

/-!
# A190567: Continued fraction expansion of 46*sqrt(46).

The programs for A190567, the canonical program `A190567.P14120007993168475704` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190567 has offset 0).

The definition of A190567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A190567.P14120007993168475704

`a(n-4)` with `a(0)=311, a(1)=1, a(2)=76, a(3)=1, a(4)=622`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190567

/-- `a(n-4)` -/
def P14120007993168475704.Spec : Prop :=
  ∀ n, (P14120007993168475704.a n : ℤ) = A190567 n

theorem P14120007993168475704.correct : P14120007993168475704.Spec := by
  intro n
  simp only [A190567]

end A190567

/-!
# A190568: Number of squares between powers of 2, floor(sqrt(2^(n+1))) - floor(sqrt(2^n)).

The programs for A190568, there is no canonical definition to state claims against.
-/

/-! ## A190568.P15825379951263963947

`floor(sqrt(2^n))-floor(sqrt(2^(n-1)))`
-/

namespace A190568.P15825379951263963947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (2 ^ n) : ℤ) - ⌊Real.sqrt ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌋

end

end A190568.P15825379951263963947

/-! ## A190568.P3459612972523190905

`A339184(2^n+1)`
-/

namespace A190568.P3459612972523190905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339184 (2 ^ n + 1)

end

end A190568.P3459612972523190905

/-! ## A190568.P6398364832871817981

`Δ[A339183(2^n)]`
-/

namespace A190568.P6398364832871817981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339183 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190568.P6398364832871817981

/-! ## A190568.P14447699755129080035

`Δ[A083023(2^(n+1))]`
-/

namespace A190568.P14447699755129080035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083023 (2 ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190568.P14447699755129080035

/-! ## A190568.P538101102382620401

`Δ[A268173(2^(n+1))]`
-/

namespace A190568.P538101102382620401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268173 (2 ^ (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190568.P538101102382620401

/-!
# A190569: Number of n-step one-sided prudent walks, avoiding single west steps and single east steps.

The programs for A190569, the canonical program `A190569.P8556180559769321665` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190569 has offset 0).

The definition of A190569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190569.P11253134245967014220

`ogf((1-x+2x^2)/(1-2x+x^2-2x^3))`
-/

namespace A190569.P11253134245967014220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2] [1, -2, 1, -2] n

end

end A190569.P11253134245967014220

namespace A190569

/-- `ogf((1-x+2x^2)/(1-2x+x^2-2x^3))` -/
def P11253134245967014220.Spec : Prop :=
  ∀ n, P11253134245967014220.a n = A190569 n

end A190569

/-! ## A190569.P8556180559769321665

`2^n-a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190569

/-- `2^n-a(n-2)` -/
def P8556180559769321665.Spec : Prop :=
  ∀ n, P8556180559769321665.a n = A190569 n

theorem P8556180559769321665.correct : P8556180559769321665.Spec := by
  intro n
  simp only [A190569]

end A190569

/-! ## A190569.P14354132714829779228

`∑[2*round(2^n/5)]+1`
-/

namespace A190569.P14354132714829779228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A190569.P14354132714829779228

namespace A190569

/-- `∑[2*round(2^n/5)]+1` -/
def P14354132714829779228.Spec : Prop :=
  ∀ n, P14354132714829779228.a n = A190569 n

end A190569

/-! ## A190569.P7329426054484256683

`xor(1, 2*floor(∑[2^n/5]))`
-/

namespace A190569.P7329426054484256683
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋)

end

end A190569.P7329426054484256683

namespace A190569

/-- `xor(1, 2*floor(∑[2^n/5]))` -/
def P7329426054484256683.Spec : Prop :=
  ∀ n, P7329426054484256683.a n = A190569 n

end A190569

/-! ## A190569.P13848086307856311853

`floor(∑[2*a(n-1)]-a(n-2))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A190569.P13848086307856311853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 2)

end

end A190569.P13848086307856311853

namespace A190569

/-- `floor(∑[2*a(n-1)]-a(n-2))` -/
def P13848086307856311853.Spec : Prop :=
  ∀ n, P13848086307856311853.a n = A190569 n

end A190569

/-! ## A190569.P2175715022226959698

`floor(∑[a(n-1)+floor(a(n-1))]-a(n-2))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A190569.P2175715022226959698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 2)

end

end A190569.P2175715022226959698

namespace A190569

/-- `floor(∑[a(n-1)+floor(a(n-1))]-a(n-2))` -/
def P2175715022226959698.Spec : Prop :=
  ∀ n, P2175715022226959698.a n = A190569 n

end A190569

/-! ## A190569.P17313626646317810834

`A007909(n+1)`
-/

namespace A190569.P17313626646317810834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007909 (n + 1)

end

end A190569.P17313626646317810834

namespace A190569

/-- `A007909(n+1)` -/
def P17313626646317810834.Spec : Prop :=
  ∀ n, P17313626646317810834.a n = A190569 n

end A190569

/-! ## A190569.P7373261391361532238

`A274845(2*(n+1))`
-/

namespace A190569.P7373261391361532238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274845 (2 * (n + 1))

end

end A190569.P7373261391361532238

namespace A190569

/-- `A274845(2*(n+1))` -/
def P7373261391361532238.Spec : Prop :=
  ∀ n, P7373261391361532238.a n = A190569 n

end A190569

/-! ## A190569.P9822952493161259547

`or(1, A199403(n+1))`
-/

namespace A190569.P9822952493161259547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A199403 (n + 1))

end

end A190569.P9822952493161259547

namespace A190569

/-- `or(1, A199403(n+1))` -/
def P9822952493161259547.Spec : Prop :=
  ∀ n, P9822952493161259547.a n = A190569 n

end A190569

/-! ## A190569.P11405332059619165510

`abs(a(n-2)-A000225(n)-1)` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A190569.P11405332059619165510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  |a (n - 2) - A000225 n - 1|

end

end A190569.P11405332059619165510

namespace A190569

/-- `abs(a(n-2)-A000225(n)-1)` -/
def P11405332059619165510.Spec : Prop :=
  ∀ n, P11405332059619165510.a n = A190569 n

end A190569

/-! ## A190569.P7069311963951270629

`Δ[ogf(1/(1-2x+x^2-2x^3))]`
-/

namespace A190569.P7069311963951270629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190569.P7069311963951270629

namespace A190569

/-- `Δ[ogf(1/(1-2x+x^2-2x^3))]` -/
def P7069311963951270629.Spec : Prop :=
  ∀ n, P7069311963951270629.a n = A190569 n

end A190569

/-! ## A190569.P10508072659101511735

`Δ[A007910(n)]`
-/

namespace A190569.P10508072659101511735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190569.P10508072659101511735

namespace A190569

/-- `Δ[A007910(n)]` -/
def P10508072659101511735.Spec : Prop :=
  ∀ n, P10508072659101511735.a n = A190569 n

end A190569

/-! ## A190569.P14233773275072968908

`or(1, A077854(n)-A007910(n))`
-/

namespace A190569.P14233773275072968908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A077854 n - A007910 n)

end

end A190569.P14233773275072968908

namespace A190569

/-- `or(1, A077854(n)-A007910(n))` -/
def P14233773275072968908.Spec : Prop :=
  ∀ n, P14233773275072968908.a n = A190569 n

end A190569

/-! ## A190569.P8823751695871867333

`or(1, floor(2^(n+2)/5))`
-/

namespace A190569.P8823751695871867333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(2 ^ (n + 2) : ℚ) / 5⌋

end

end A190569.P8823751695871867333

namespace A190569

/-- `or(1, floor(2^(n+2)/5))` -/
def P8823751695871867333.Spec : Prop :=
  ∀ n, P8823751695871867333.a n = A190569 n

end A190569

/-! ## A190569.P6600291366862400871

`A020737(n)%A262267(n+1)`
-/

namespace A190569.P6600291366862400871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020737 n) (A262267 (n + 1))

end

end A190569.P6600291366862400871

namespace A190569

/-- `A020737(n)%A262267(n+1)` -/
def P6600291366862400871.Spec : Prop :=
  ∀ n, P6600291366862400871.a n = A190569 n

end A190569

/-! ## A190569.P3978097494332100190

`Δ[Δ[Δ[A178452(n+1)]]]`
-/

namespace A190569.P3978097494332100190
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178452 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190569.P3978097494332100190

namespace A190569

/-- `Δ[Δ[Δ[A178452(n+1)]]]` -/
def P3978097494332100190.Spec : Prop :=
  ∀ n, P3978097494332100190.a n = A190569 n

end A190569

/-!
# A190570: Number of n-step one-sided prudent walks, avoiding exactly two consecutive west steps and two consecutive east steps.

The programs for A190570, the canonical program `A190570.P8246343804231131914` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190570 has offset 1).

The definition of A190570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190570.P8246343804231131914

`ogf((1+x-2x^2+2x^3)/(1-2x-x^2+2x^3-2x^4))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190570

/-- `ogf((1+x-2x^2+2x^3)/(1-2x-x^2+2x^3-2x^4))` -/
def P8246343804231131914.Spec : Prop :=
  ∀ n, P8246343804231131914.a n = A190570 (n + 1)

theorem P8246343804231131914.correct : P8246343804231131914.Spec := by
  intro n
  simp only [A190570, Nat.add_sub_cancel]

end A190570

/-! ## A190570.P7451408244745080941

`Δ[ogf(1/(1-2x-x^2+2x^3-2x^4))]`
-/

namespace A190570.P7451408244745080941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, -1, 2, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190570.P7451408244745080941

namespace A190570

/-- `Δ[ogf(1/(1-2x-x^2+2x^3-2x^4))]` -/
def P7451408244745080941.Spec : Prop :=
  ∀ n, P7451408244745080941.a n = A190570 (n + 1)

end A190570

/-! ## A190570.P11029727269790809123

`A352226(A005728(n)+A003480(n))`
-/

namespace A190570.P11029727269790809123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352226 (A005728 n + A003480 n).toNat

end

end A190570.P11029727269790809123

namespace A190570

/-- `A352226(A005728(n)+A003480(n))` -/
def P11029727269790809123.Spec : Prop :=
  ∀ n, P11029727269790809123.a n = A190570 (n + 1)

end A190570

/-! ## A190570.P16744002835578303579

`A001462(A093129(n+1))-A096976(n)`
-/

namespace A190570.P16744002835578303579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A093129 (n + 1)).toNat - A096976 n

end

end A190570.P16744002835578303579

namespace A190570

/-- `A001462(A093129(n+1))-A096976(n)` -/
def P16744002835578303579.Spec : Prop :=
  ∀ n, P16744002835578303579.a n = A190570 (n + 1)

end A190570

/-!
# A190571: Number of n-step one-sided prudent walks, avoiding exactly three consecutive west steps and three consecutive east steps.

The programs for A190571, the canonical program `A190571.P10142198945288429421` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190571 has offset 1).

The definition of A190571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 271 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190571.P10142198945288429421

`Δ[ogf(1/(1-2x-x^2+2x^4-2x^5))]`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190571

/-- `Δ[ogf(1/(1-2x-x^2+2x^4-2x^5))]` -/
def P10142198945288429421.Spec : Prop :=
  ∀ n, P10142198945288429421.a n = A190571 (n + 1)

theorem P10142198945288429421.correct : P10142198945288429421.Spec := by
  intro n
  simp only [A190571, Nat.add_sub_cancel]

end A190571

/-! ## A190571.P4043504740550212253

`A080605(A320654(n))`
-/

namespace A190571.P4043504740550212253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080605 (A320654 n).toNat

end

end A190571.P4043504740550212253

namespace A190571

/-- `A080605(A320654(n))` -/
def P4043504740550212253.Spec : Prop :=
  ∀ n, P4043504740550212253.a n = A190571 (n + 1)

end A190571

/-! ## A190571.P1961913858518532046

`Δ[A274004(∑[A018012(n)])]`
-/

namespace A190571.P1961913858518532046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018012 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274004 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190571.P1961913858518532046

namespace A190571

/-- `Δ[A274004(∑[A018012(n)])]` -/
def P1961913858518532046.Spec : Prop :=
  ∀ n, P1961913858518532046.a n = A190571 (n + 1)

end A190571

/-! ## A190571.P8810607083679193380

`A006530(A152358(n+1))+A001787(n)`
-/

namespace A190571.P8810607083679193380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A152358 (n + 1)).toNat + A001787 n

end

end A190571.P8810607083679193380

namespace A190571

/-- `A006530(A152358(n+1))+A001787(n)` -/
def P8810607083679193380.Spec : Prop :=
  ∀ n, P8810607083679193380.a n = A190571 (n + 1)

end A190571

/-!
# A190572: A189685/2.

The programs for A190572, there is no canonical definition to state claims against.
-/

/-! ## A190572.P16747291098988968067

`A189683(2*(n+1))/2`
-/

namespace A190572.P16747291098988968067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189683 (2 * (n + 1)) : ℚ) / 2

end

end A190572.P16747291098988968067

/-! ## A190572.P7495036987711884624

`A189685(n+1)/2`
-/

namespace A190572.P7495036987711884624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189685 (n + 1) : ℚ) / 2

end

end A190572.P7495036987711884624

/-! ## A190572.P9503801586479855951

`A001281(A189685(n+1))`
-/

namespace A190572.P9503801586479855951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A189685 (n + 1)).toNat

end

end A190572.P9503801586479855951

/-! ## A190572.P18039516876821854612

`A064727(A189685(n+1)²)`
-/

namespace A190572.P18039516876821854612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (A189685 (n + 1) ^ 2).toNat

end

end A190572.P18039516876821854612

/-! ## A190572.P16942015754214217905

`A004524(A189685(n+1)+1)`
-/

namespace A190572.P16942015754214217905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A189685 (n + 1) + 1).toNat

end

end A190572.P16942015754214217905

/-! ## A190572.P13941058432761752399

`A004526(A189685(n+1)+1)`
-/

namespace A190572.P13941058432761752399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A189685 (n + 1) + 1).toNat

end

end A190572.P13941058432761752399

/-! ## A190572.P16891504385544310381

`A028242(A189685(n+1)+1)`
-/

namespace A190572.P16891504385544310381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A189685 (n + 1) + 1).toNat

end

end A190572.P16891504385544310381

/-! ## A190572.P8857642429799525120

`A000463(A189685(n+1)-1)`
-/

namespace A190572.P8857642429799525120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A189685 (n + 1) - 1).toNat

end

end A190572.P8857642429799525120

/-! ## A190572.P17250992283566705877

`A001057(A189685(n+1)-1)`
-/

namespace A190572.P17250992283566705877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A189685 (n + 1) - 1).toNat

end

end A190572.P17250992283566705877

/-! ## A190572.P14270379113484909529

`A003602(A189685(n+1)-1)`
-/

namespace A190572.P14270379113484909529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A189685 (n + 1) - 1).toNat

end

end A190572.P14270379113484909529

/-!
# A190576: a(n) = n^2 + 5*n - 5.

The programs for A190576, the canonical program `A190576.P14376266656277020032` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190576 has offset 1).

The definition of A190576 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²+5*(n+1)-5` (program `A190576.P14376266656277020032`, by `A190576.P14376266656277020032.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190576.P14376266656277020032

`(n+1)²+5*(n+1)-5`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190576

/-- `(n+1)²+5*(n+1)-5` -/
def P14376266656277020032.Spec : Prop :=
  ∀ n, P14376266656277020032.a n = A190576 (n + 1)

theorem P14376266656277020032.correct : P14376266656277020032.Spec := by
  intro n
  simp only [A190576, Nat.add_sub_cancel]

end A190576

/-! ## A190576.P6949416547168714590

`∑[a(n-1)+2]` with `a(0)=1, a(1)=8`
-/

namespace A190576.P6949416547168714590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190576.P6949416547168714590

namespace A190576

/-- `∑[a(n-1)+2]` -/
def P6949416547168714590.Spec : Prop :=
  ∀ n, (P6949416547168714590.a n : ℤ) = A190576 (n + 1)

end A190576

/-! ## A190576.P4681724538806892247

`record[(1-n)²-5*n]`
-/

namespace A190576.P4681724538806892247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - (5 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190576.P4681724538806892247

namespace A190576

/-- `record[(1-n)²-5*n]` -/
def P4681724538806892247.Spec : Prop :=
  ∀ n, P4681724538806892247.a n = A190576 (n + 1)

end A190576

/-! ## A190576.P15472694552887583295

`∑[ogf((1+6x-5x^2)/(1-2x+x^2))]`
-/

namespace A190576.P15472694552887583295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190576.P15472694552887583295

namespace A190576

/-- `∑[ogf((1+6x-5x^2)/(1-2x+x^2))]` -/
def P15472694552887583295.Spec : Prop :=
  ∀ n, P15472694552887583295.a n = A190576 (n + 1)

end A190576

/-! ## A190576.P3372878875656558074

`ogf((1+6x-5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A190576.P3372878875656558074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, -5] [1, -3, 3, -1] n

end

end A190576.P3372878875656558074

namespace A190576

/-- `ogf((1+6x-5x^2)/(1-3x+3x^2-x^3))` -/
def P3372878875656558074.Spec : Prop :=
  ∀ n, P3372878875656558074.a n = A190576 (n + 1)

end A190576

/-! ## A190576.P4628023821371193850

`∑[n+1+5%(n+5)+n]`
-/

namespace A190576.P4628023821371193850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + (5 % (n + 5) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190576.P4628023821371193850

namespace A190576

/-- `∑[n+1+5%(n+5)+n]` -/
def P4628023821371193850.Spec : Prop :=
  ∀ n, (P4628023821371193850.a n : ℤ) = A190576 (n + 1)

end A190576

/-! ## A190576.P6893903117921794812

`floor(a(n-1)+6+n+n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A190576.P6893903117921794812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 6 + n + n

end

end A190576.P6893903117921794812

namespace A190576

/-- `floor(a(n-1)+6+n+n)` -/
def P6893903117921794812.Spec : Prop :=
  ∀ n, (P6893903117921794812.a n : ℤ) = A190576 (n + 1)

theorem P6893903117921794812.correct : P6893903117921794812.Spec := by
  intro n
  induction n with
  | zero => simp [A190576, A190576.P6893903117921794812.a, A190576.P14376266656277020032.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A190576, Nat.add_sub_cancel, A190576.P6893903117921794812.a, A190576.P14376266656277020032.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A190576

/-! ## A190576.P666947251330160462

`abs(5-record[(3-n)²-(n+3)])`
-/

namespace A190576.P666947251330160462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (n : ℤ)) ^ 2 - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |5 - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A190576.P666947251330160462

namespace A190576

/-- `abs(5-record[(3-n)²-(n+3)])` -/
def P666947251330160462.Spec : Prop :=
  ∀ n, P666947251330160462.a n = A190576 (n + 1)

end A190576

/-! ## A190576.P17916427431357660922

`∑[Δ[(floor(acot(n))+2+n)²]+1]`
-/

namespace A190576.P17916427431357660922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 2 + (n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190576.P17916427431357660922

namespace A190576

/-- `∑[Δ[(floor(acot(n))+2+n)²]+1]` -/
def P17916427431357660922.Spec : Prop :=
  ∀ n, P17916427431357660922.a n = A190576 (n + 1)

end A190576

/-! ## A190576.P7312680511909845831

`floor(a(n-1)-2*(n-3-2*n))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A190576.P7312680511909845831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 2 * ((n : ℤ) - 3 - (2 * n : ℤ))

end

end A190576.P7312680511909845831

namespace A190576

/-- `floor(a(n-1)-2*(n-3-2*n))` -/
def P7312680511909845831.Spec : Prop :=
  ∀ n, P7312680511909845831.a n = A190576 (n + 1)

theorem P7312680511909845831.correct : P7312680511909845831.Spec := by
  intro n
  induction n with
  | zero => simp [A190576, A190576.P7312680511909845831.a, A190576.P14376266656277020032.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A190576, Nat.add_sub_cancel, A190576.P7312680511909845831.a, A190576.P14376266656277020032.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A190576

/-! ## A190576.P14320422835381145262

`or(1, A028563(n))`
-/

namespace A190576.P14320422835381145262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A028563 n)

end

end A190576.P14320422835381145262

namespace A190576

/-- `or(1, A028563(n))` -/
def P14320422835381145262.Spec : Prop :=
  ∀ n, P14320422835381145262.a n = A190576 (n + 1)

end A190576

/-! ## A190576.P17186246282750546536

`ceil(A161549(n)/2)`
-/

namespace A190576.P17186246282750546536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A161549 n : ℚ) / 2⌉

end

end A190576.P17186246282750546536

namespace A190576

/-- `ceil(A161549(n)/2)` -/
def P17186246282750546536.Spec : Prop :=
  ∀ n, P17186246282750546536.a n = A190576 (n + 1)

end A190576

/-! ## A190576.P5759653447950643459

`abs(8*n²-A016778(n)-n)`
-/

namespace A190576.P5759653447950643459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 * n ^ 2 : ℤ) - A016778 n - (n : ℤ)|

end

end A190576.P5759653447950643459

namespace A190576

/-- `abs(8*n²-A016778(n)-n)` -/
def P5759653447950643459.Spec : Prop :=
  ∀ n, P5759653447950643459.a n = A190576 (n + 1)

end A190576

/-! ## A190576.P9386822173670218852

`A096129(n)%A027575(n)`
-/

namespace A190576.P9386822173670218852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096129 n) (A027575 n)

end

end A190576.P9386822173670218852

namespace A190576

/-- `A096129(n)%A027575(n)` -/
def P9386822173670218852.Spec : Prop :=
  ∀ n, P9386822173670218852.a n = A190576 (n + 1)

end A190576

/-! ## A190576.P6263339951924177446

`A006222(n)%A295906(n+1)`
-/

namespace A190576.P6263339951924177446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006222 n) (A295906 (n + 1))

end

end A190576.P6263339951924177446

namespace A190576

/-- `A006222(n)%A295906(n+1)` -/
def P6263339951924177446.Spec : Prop :=
  ∀ n, P6263339951924177446.a n = A190576 (n + 1)

end A190576

/-! ## A190576.P7753001497286910301

`A304163(n+1)%A164897(n)`
-/

namespace A190576.P7753001497286910301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304163 (n + 1)) (A164897 n)

end

end A190576.P7753001497286910301

namespace A190576

/-- `A304163(n+1)%A164897(n)` -/
def P7753001497286910301.Spec : Prop :=
  ∀ n, P7753001497286910301.a n = A190576 (n + 1)

end A190576

/-! ## A190576.P17203612524330680663

`A168235(n+1)%A290325(n+1)`
-/

namespace A190576.P17203612524330680663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168235 (n + 1)) (A290325 (n + 1))

end

end A190576.P17203612524330680663

namespace A190576

/-- `A168235(n+1)%A290325(n+1)` -/
def P17203612524330680663.Spec : Prop :=
  ∀ n, P17203612524330680663.a n = A190576 (n + 1)

end A190576

/-! ## A190576.P2654290701879889606

`A153169(n+1)%A285009(n+3)`
-/

namespace A190576.P2654290701879889606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153169 (n + 1)) (A285009 (n + 3))

end

end A190576.P2654290701879889606

namespace A190576

/-- `A153169(n+1)%A285009(n+3)` -/
def P2654290701879889606.Spec : Prop :=
  ∀ n, P2654290701879889606.a n = A190576 (n + 1)

end A190576

/-! ## A190576.P17024039432777274187

`Δ[∑[(n+2)*(n-1)]+C(2*n, 2)]`
-/

namespace A190576.P17024039432777274187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (Nat.choose (2 * n) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190576.P17024039432777274187

namespace A190576

/-- `Δ[∑[(n+2)*(n-1)]+C(2*n, 2)]` -/
def P17024039432777274187.Spec : Prop :=
  ∀ n, P17024039432777274187.a n = A190576 (n + 1)

end A190576

/-! ## A190576.P131804632097050905

`abs(10-A028387(n+2))`
-/

namespace A190576.P131804632097050905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |10 - A028387 (n + 2)|

end

end A190576.P131804632097050905

namespace A190576

/-- `abs(10-A028387(n+2))` -/
def P131804632097050905.Spec : Prop :=
  ∀ n, P131804632097050905.a n = A190576 (n + 1)

end A190576

/-!
# A190577: a(n) = n*(n+2)*(n+4)*(n+6).

The programs for A190577, the canonical program `A190577.P9160508914732484109` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190577 has offset 1).

The definition of A190577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+3)*(n+5)*(n+7)` (program `A190577.P9160508914732484109`, by `A190577.P9160508914732484109.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190577.P9160508914732484109

`(n+1)*(n+3)*(n+5)*(n+7)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190577

/-- `(n+1)*(n+3)*(n+5)*(n+7)` -/
def P9160508914732484109.Spec : Prop :=
  ∀ n, (P9160508914732484109.a n : ℤ) = A190577 (n + 1)

theorem P9160508914732484109.correct : P9160508914732484109.Spec := by
  intro n
  simp only [A190577, Nat.add_sub_cancel]

end A190577

/-! ## A190577.P7199148837107524656

`∑[3*A090294(n+1)]`
-/

namespace A190577.P7199148837107524656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A090294 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190577.P7199148837107524656

namespace A190577

/-- `∑[3*A090294(n+1)]` -/
def P7199148837107524656.Spec : Prop :=
  ∀ n, P7199148837107524656.a n = A190577 (n + 1)

end A190577

/-! ## A190577.P330461581502512204

`∑[A304505(n+1)]+(n+1)²²`
-/

namespace A190577.P330461581502512204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A190577.P330461581502512204

namespace A190577

/-- `∑[A304505(n+1)]+(n+1)²²` -/
def P330461581502512204.Spec : Prop :=
  ∀ n, P330461581502512204.a n = A190577 (n + 1)

end A190577

/-! ## A190577.P10964738349993165484

`∑[A004273(n+4)*A152813(n+1)]`
-/

namespace A190577.P10964738349993165484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 4) * A152813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A190577.P10964738349993165484

namespace A190577

/-- `∑[A004273(n+4)*A152813(n+1)]` -/
def P10964738349993165484.Spec : Prop :=
  ∀ n, P10964738349993165484.a n = A190577 (n + 1)

end A190577

/-! ## A190577.P17494193347535378525

`A099761(n+3)-8*A005563(n+3)`
-/

namespace A190577.P17494193347535378525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099761 (n + 3) - 8 * A005563 (n + 3)

end

end A190577.P17494193347535378525

namespace A190577

/-- `A099761(n+3)-8*A005563(n+3)` -/
def P17494193347535378525.Spec : Prop :=
  ∀ n, P17494193347535378525.a n = A190577 (n + 1)

end A190577

/-! ## A190577.P3794669961357401492

`A028566((n+4)²-9)`
-/

namespace A190577.P3794669961357401492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028566 ((n + 4) ^ 2 - 9)

end

end A190577.P3794669961357401492

namespace A190577

/-- `A028566((n+4)²-9)` -/
def P3794669961357401492.Spec : Prop :=
  ∀ n, P3794669961357401492.a n = A190577 (n + 1)

end A190577

/-! ## A190577.P8773720292775535294

`A164009((n+4)²-9)`
-/

namespace A190577.P8773720292775535294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164009 ((n + 4) ^ 2 - 9)

end

end A190577.P8773720292775535294

namespace A190577

/-- `A164009((n+4)²-9)` -/
def P8773720292775535294.Spec : Prop :=
  ∀ n, P8773720292775535294.a n = A190577 (n + 1)

end A190577

/-! ## A190577.P3961215160133593733

`A028884(A028884(n+1))-8`
-/

namespace A190577.P3961215160133593733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 (A028884 (n + 1)).toNat - 8

end

end A190577.P3961215160133593733

namespace A190577

/-- `A028884(A028884(n+1))-8` -/
def P3961215160133593733.Spec : Prop :=
  ∀ n, P3961215160133593733.a n = A190577 (n + 1)

end A190577

/-! ## A190577.P2256265017372220749

`A028881(A028875(n+4))-9`
-/

namespace A190577.P2256265017372220749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028881 (A028875 (n + 4)).toNat - 9

end

end A190577.P2256265017372220749

namespace A190577

/-- `A028881(A028875(n+4))-9` -/
def P2256265017372220749.Spec : Prop :=
  ∀ n, P2256265017372220749.a n = A190577 (n + 1)

end A190577

/-!
# A190578: a(n) = n^7 + n.

The programs for A190578, the canonical program `A190578.P12146952088927153810` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190578 has offset 0).

The definition of A190578 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^7+n` (program `A190578.P12146952088927153810`, by `A190578.P12146952088927153810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A190578.P12146952088927153810

`n^7+n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A190578

/-- `n^7+n` -/
def P12146952088927153810.Spec : Prop :=
  ∀ n, (P12146952088927153810.a n : ℤ) = A190578 n

theorem P12146952088927153810.correct : P12146952088927153810.Spec := by
  intro n
  simp only [A190578]

end A190578

/-!
# A190580: Value of y in the Diophantine equation x^3 + y^3 = n*z^3 (with x>0 and minimal and x >= y and y != 0).

The programs for A190580, there is no canonical definition to state claims against.
-/

/-! ## A190580.P10831864216467612471

`or(-char[2], A254326(n+1))`
-/

namespace A190580.P10831864216467612471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A254326 (n + 1))

end

end A190580.P10831864216467612471

/-! ## A190580.P2696440844446052291

`or(A254326(n+1), A276438(A020701(n)))`
-/

namespace A190580.P2696440844446052291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A254326 (n + 1)) (A276438 (A020701 n).toNat)

end

end A190580.P2696440844446052291

/-! ## A190580.P18076777255002961707

`or(A254326(n+1), A321859(A344680(n)))`
-/

namespace A190580.P18076777255002961707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A254326 (n + 1)) (A321859 (A344680 n).toNat)

end

end A190580.P18076777255002961707

/-!
# A190582: Generalized McCarthy function: a(n) = n - s if n > c; otherwise, a(n) = a(a(n+t)) with d = t - s > 0, with parameters t=15, s=9, c=21.

The programs for A190582, there is no canonical definition to state claims against.
-/

/-! ## A190582.P12629465424077175552

`A260187(A020723(n))+13`
-/

namespace A190582.P12629465424077175552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260187 (A020723 n).toNat + 13

end

end A190582.P12629465424077175552

/-!
# A190584: Bisection of A013697.

The programs for A190584, there is no canonical definition to state claims against.
-/

/-! ## A190584.P3790878373682123361

`A013697(2*n+3)`
-/

namespace A190584.P3790878373682123361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013697 (2 * n + 3)

end

end A190584.P3790878373682123361

/-! ## A190584.P16936629943535684970

`abs(A013697(A144396(n+1))-1)+1`
-/

namespace A190584.P16936629943535684970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A013697 (A144396 (n + 1)).toNat - 1| + 1

end

end A190584.P16936629943535684970

/-! ## A190584.P1647398990303665257

`record[A013697(n+3)/A157142(n)%2]`
-/

namespace A190584.P1647398990303665257
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013697 (n + 3) : ℚ) / (Int.tmod (A157142 n) 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190584.P1647398990303665257

/-! ## A190584.P2759361616921308294

`gcd(A000038(n)², A013697(A144396(n+1)))`
-/

namespace A190584.P2759361616921308294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n ^ 2) (A013697 (A144396 (n + 1)).toNat)

end

end A190584.P2759361616921308294

/-! ## A190584.P1371528827223860234

`A013697(A144396(n+1))+A000007(n+1)`
-/

namespace A190584.P1371528827223860234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013697 (A144396 (n + 1)).toNat + A000007 (n + 1)

end

end A190584.P1371528827223860234

/-! ## A190584.P551462483115585864

`A013697(A144396(n+1))%A045379(n+2)`
-/

namespace A190584.P551462483115585864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013697 (A144396 (n + 1)).toNat) (A045379 (n + 2))

end

end A190584.P551462483115585864

/-!
# A190585: E.g.f. Product_{n>=1} (1 - x^n)^(-u(n)/n) where u(n) is the unitary Moebius function (A076479).

The programs for A190585, there is no canonical definition to state claims against.
-/

/-! ## A190585.P7483112351427203081

`∏{e}[A002110(n), #]-6*C(n, 4)`
-/

namespace A190585.P7483112351427203081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - (6 * Nat.choose n 4 : ℤ)

end

end A190585.P7483112351427203081

/-! ## A190585.P13912972102509160474

`∏{e}[A038710(n), #]-6*C(n, 4)`
-/

namespace A190585.P13912972102509160474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - (6 * Nat.choose n 4 : ℤ)

end

end A190585.P13912972102509160474

/-! ## A190585.P18057173436409770193

`1-A002265(A190875(n))`
-/

namespace A190585.P18057173436409770193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002265 (A190875 n).toNat

end

end A190585.P18057173436409770193

/-! ## A190585.P11283091336215261204

`1-A002265(A205800(n))`
-/

namespace A190585.P11283091336215261204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A002265 (A205800 n).toNat

end

end A190585.P11283091336215261204

/-!
# A190586: Number of two-sided n-step prudent walks ending on the top side of their box, avoiding two or more consecutive west steps and south steps.

The programs for A190586, there is no canonical definition to state claims against.
-/

/-! ## A190586.P13280658524466430262

`(A190589(n)+A190587(n))/2`
-/

namespace A190586.P13280658524466430262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190589 n + A190587 n : ℚ) / 2

end

end A190586.P13280658524466430262

/-! ## A190586.P6259766946105141826

`A190587(n)+A001281(A190589(n)-A190587(n))`
-/

namespace A190586.P6259766946105141826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190587 n + A001281 (A190589 n - A190587 n).toNat

end

end A190586.P6259766946105141826

/-! ## A190586.P4382403600066870492

`A190587(n)+A004525(A190589(n)-A190587(n))`
-/

namespace A190586.P4382403600066870492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190587 n + A004525 (A190589 n - A190587 n).toNat

end

end A190586.P4382403600066870492

/-! ## A190586.P14959234362319911600

`Δ[A057361(A077851(n))]`
-/

namespace A190586.P14959234362319911600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (A077851 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190586.P14959234362319911600

/-! ## A190586.P11837080181496379632

`Δ[A057361(∑[A052912(n)])]`
-/

namespace A190586.P11837080181496379632
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052912 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A190586.P11837080181496379632

/-!
# A190587: Number of two-sided n-step prudent walks ending on the northeast corner of their box, avoiding two or more consecutive west steps and south steps.

The programs for A190587, there is no canonical definition to state claims against.
-/

/-! ## A190587.P8159569249381465982

`2*A190586(n)-A190589(n)`
-/

namespace A190587.P8159569249381465982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190586 n - A190589 n

end

end A190587.P8159569249381465982

/-! ## A190587.P9042202470485638127

`A004277(A190586(n))-A190589(n)`
-/

namespace A190587.P9042202470485638127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A190586 n).toNat - A190589 n

end

end A190587.P9042202470485638127

/-! ## A190587.P17596665823161478140

`A108141(A159336(n))`
-/

namespace A190587.P17596665823161478140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108141 (A159336 n).toNat

end

end A190587.P17596665823161478140

/-! ## A190587.P15984157728381917357

`A111439(A320654(n))`
-/

namespace A190587.P15984157728381917357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (A320654 n).toNat

end

end A190587.P15984157728381917357

/-!
# A190588: Losing positions in Nim (misere) with up to 9 stones on each heap.

The programs for A190588, there is no canonical definition to state claims against.
-/

/-! ## A190588.P18268558552448205148

`A048671(eq[n, A321804(n)])`
-/

namespace A190588.P18268558552448205148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190588.P18268558552448205148

/-! ## A190588.P17048230081082292917

`A262038((12*n)^A208059(n))`
-/

namespace A190588.P17048230081082292917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (SequenceMachineLib.roundAway ((12 * n : ℚ) ^ (A208059 n : ℤ))).toNat

end

end A190588.P17048230081082292917

/-! ## A190588.P4021002990353396788

`record[abs(A321804(A018252(n+1)))]`
-/

namespace A190588.P4021002990353396788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321804 (A018252 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190588.P4021002990353396788

/-! ## A190588.P16638667573556311358

`record[gcd(A099894(n+4), A321804(n))]`
-/

namespace A190588.P16638667573556311358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099894 (n + 4)) (A321804 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A190588.P16638667573556311358

/-! ## A190588.P7812583278884208139

`A033023(n+1)%A263076(n+1)`
-/

namespace A190588.P7812583278884208139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033023 (n + 1)) (A263076 (n + 1))

end

end A190588.P7812583278884208139

/-!
# A190589: Number of two-sided n-step prudent walks avoiding two or more consecutive west steps and two or more consecutive south steps.

The programs for A190589, there is no canonical definition to state claims against.
-/

/-! ## A190589.P15464413928110992592

`2*A190586(n)-A190587(n)`
-/

namespace A190589.P15464413928110992592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190586 n - A190587 n

end

end A190589.P15464413928110992592

/-! ## A190589.P14276389984880789191

`A004277(A190586(n))-A190587(n)`
-/

namespace A190589.P14276389984880789191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A190586 n).toNat - A190587 n

end

end A190589.P14276389984880789191

/-! ## A190589.P17305964914780635007

`2*A190586(n)-A111439(A320654(n))`
-/

namespace A190589.P17305964914780635007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190586 n - A111439 (A320654 n).toNat

end

end A190589.P17305964914780635007

/-! ## A190589.P12150341824099784519

`A004277(A190586(n))-A108141(A159336(n))`
-/

namespace A190589.P12150341824099784519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A190586 n).toNat - A108141 (A159336 n).toNat

end

end A190589.P12150341824099784519

/-!
# A190590: Expansion of series reversion of x/(1 + x + 2*x^4).

The programs for A190590, there is no canonical definition to state claims against.
-/

/-! ## A190590.P17322313564358990202

`A028310(or(A026637(n), A245931(n)))`
-/

namespace A190590.P17322313564358990202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (A026637 n) (A245931 n)).toNat

end

end A190590.P17322313564358990202

/-! ## A190590.P16340741605981629435

`A109613(or(A026637(n), A245931(n)))`
-/

namespace A190590.P16340741605981629435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (Int.lor (A026637 n) (A245931 n)).toNat

end

end A190590.P16340741605981629435

/-! ## A190590.P14186070314348782332

`or(A185284(A002620(n)), A245931(n))`
-/

namespace A190590.P14186070314348782332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (A002620 n).toNat) (A245931 n)

end

end A190590.P14186070314348782332

/-! ## A190590.P16822682465420767576

`A028310(or(A026659(n+1), A245931(n)))`
-/

namespace A190590.P16822682465420767576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (A026659 (n + 1)) (A245931 n)).toNat

end

end A190590.P16822682465420767576

/-! ## A190590.P12832658083902233729

`A109613(or(A026659(n+1), A245931(n)))`
-/

namespace A190590.P12832658083902233729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (Int.lor (A026659 (n + 1)) (A245931 n)).toNat

end

end A190590.P12832658083902233729

/-!
# A190591: The coefficient of t^n in the power series solution of u in the equation -t+(1-t+t^2+t^3)*u-(t+t^4)*u^2+(t^3+t^5)*u^3-t^4*u^4=0.

The programs for A190591, there is no canonical definition to state claims against.
-/

/-! ## A190591.P6823248534613668335

`A023193(A130131(n+1))-char[A055999(n)]`
-/

namespace A190591.P6823248534613668335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055999 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A130131 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A190591.P6823248534613668335

/-! ## A190591.P1340952795651721704

`A122921(or(A012855(n), A122921(n)))`
-/

namespace A190591.P1340952795651721704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (Int.lor (A012855 n) (A122921 n)).toNat

end

end A190591.P1340952795651721704

/-!
# A190592: Maximal digit in base-3 expansion of n.

The programs for A190592, the canonical program `A190592.P2630804836505561271` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190592 has offset 0).

The definition of A190592 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, A054055, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A190592.P2630804836505561271

`A054055(A007089(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A190592

/-- `A054055(A007089(n))` -/
def P2630804836505561271.Spec : Prop :=
  ∀ n, P2630804836505561271.a n = A190592 n

theorem P2630804836505561271.correct : P2630804836505561271.Spec := by
  intro n
  simp only [A190592]

end A190592

/-! ## A190592.P18278341162139867887

`A038574(n)%3`
-/

namespace A190592.P18278341162139867887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038574 n) 3

end

end A190592.P18278341162139867887

namespace A190592

/-- `A038574(n)%3` -/
def P18278341162139867887.Spec : Prop :=
  ∀ n, P18278341162139867887.a n = A190592 n

end A190592

/-! ## A190592.P15230526227571869147

`A038586(n)%5`
-/

namespace A190592.P15230526227571869147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038586 n) 5

end

end A190592.P15230526227571869147

namespace A190592

/-- `A038586(n)%5` -/
def P15230526227571869147.Spec : Prop :=
  ∀ n, P15230526227571869147.a n = A190592 n

end A190592

/-! ## A190592.P6673636014051671582

`∑{e}[A331279(n), #]`
-/

namespace A190592.P6673636014051671582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A190592.P6673636014051671582

namespace A190592

/-- `∑{e}[A331279(n), #]` -/
def P6673636014051671582.Spec : Prop :=
  ∀ n, (P6673636014051671582.a n : ℤ) = A190592 n

end A190592

/-! ## A190592.P10975669892139321675

`a(A060373(n))+1` with `a(0)=0`
-/

namespace A190592.P10975669892139321675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A060373 n).toNat + 1

end

end A190592.P10975669892139321675

namespace A190592

/-- `a(A060373(n))+1` -/
def P10975669892139321675.Spec : Prop :=
  ∀ n, (P10975669892139321675.a n : ℤ) = A190592 n

end A190592

/-! ## A190592.P10794847766172657886

`ceil(A174574(2*n)/(n+1))`
-/

namespace A190592.P10794847766172657886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174574 (2 * n) : ℚ) / (n + 1 : ℚ)⌉

end

end A190592.P10794847766172657886

namespace A190592

/-- `ceil(A174574(2*n)/(n+1))` -/
def P10794847766172657886.Spec : Prop :=
  ∀ n, P10794847766172657886.a n = A190592 n

end A190592

/-! ## A190592.P17134274850164273651

`ceil(A330740(2*n)/(n+1))`
-/

namespace A190592.P17134274850164273651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A330740 (2 * n) : ℚ) / (n + 1 : ℚ)⌉

end

end A190592.P17134274850164273651

namespace A190592

/-- `ceil(A330740(2*n)/(n+1))` -/
def P17134274850164273651.Spec : Prop :=
  ∀ n, P17134274850164273651.a n = A190592 n

end A190592

/-! ## A190592.P16367608890538286749

`A010872(A038574(n))`
-/

namespace A190592.P16367608890538286749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A038574 n).toNat

end

end A190592.P16367608890538286749

namespace A190592

/-- `A010872(A038574(n))` -/
def P16367608890538286749.Spec : Prop :=
  ∀ n, P16367608890538286749.a n = A190592 n

end A190592

/-! ## A190592.P16039435371695070058

`A061395(A006047(n))`
-/

namespace A190592.P16039435371695070058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A006047 n).toNat

end

end A190592.P16039435371695070058

namespace A190592

/-- `A061395(A006047(n))` -/
def P16039435371695070058.Spec : Prop :=
  ∀ n, P16039435371695070058.a n = A190592 n

end A190592

/-! ## A190592.P113516619251932356

`A036586(A151668(n))`
-/

namespace A190592.P113516619251932356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036586 (A151668 n).toNat

end

end A190592.P113516619251932356

namespace A190592

/-- `A036586(A151668(n))` -/
def P113516619251932356.Spec : Prop :=
  ∀ n, P113516619251932356.a n = A190592 n

end A190592

/-! ## A190592.P3530226481512645313

`A001222(A331279(n))`
-/

namespace A190592.P3530226481512645313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A331279 n).toNat

end

end A190592.P3530226481512645313

namespace A190592

/-- `A001222(A331279(n))` -/
def P3530226481512645313.Spec : Prop :=
  ∀ n, P3530226481512645313.a n = A190592 n

end A190592

/-! ## A190592.P17812457555617590166

`A001316(a(A081603(n)))` with `a(0)=0`
-/

namespace A190592.P17812457555617590166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001316 (a (A081603 n).toNat).toNat

end

end A190592.P17812457555617590166

namespace A190592

/-- `A001316(a(A081603(n)))` -/
def P17812457555617590166.Spec : Prop :=
  ∀ n, P17812457555617590166.a n = A190592 n

end A190592

/-! ## A190592.P17801627792854284876

`A278222(a(A081603(n)))` with `a(0)=0`
-/

namespace A190592.P17801627792854284876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A278222 (a (A081603 n).toNat).toNat

end

end A190592.P17801627792854284876

namespace A190592

/-- `A278222(a(A081603(n)))` -/
def P17801627792854284876.Spec : Prop :=
  ∀ n, P17801627792854284876.a n = A190592 n

end A190592

/-! ## A190592.P8304752735265275077

`A331532(a(A081603(n)))` with `a(0)=0`
-/

namespace A190592.P8304752735265275077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A331532 (a (A081603 n).toNat).toNat

end

end A190592.P8304752735265275077

namespace A190592

/-- `A331532(a(A081603(n)))` -/
def P8304752735265275077.Spec : Prop :=
  ∀ n, P8304752735265275077.a n = A190592 n

end A190592

/-! ## A190592.P6980734419975333805

`A290825(n)+A037897(n)`
-/

namespace A190592.P6980734419975333805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290825 n + A037897 n

end

end A190592.P6980734419975333805

namespace A190592

/-- `A290825(n)+A037897(n)` -/
def P6980734419975333805.Spec : Prop :=
  ∀ n, P6980734419975333805.a n = A190592 n

end A190592

/-! ## A190592.P3333047055852255236

`gcd(A038586(n), A130130(n))`
-/

namespace A190592.P3333047055852255236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038586 n) (A130130 n)

end

end A190592.P3333047055852255236

namespace A190592

/-- `gcd(A038586(n), A130130(n))` -/
def P3333047055852255236.Spec : Prop :=
  ∀ n, (P3333047055852255236.a n : ℤ) = A190592 n

end A190592

/-! ## A190592.P5265192103971515125

`A189820(n+1)+A057427(n)`
-/

namespace A190592.P5265192103971515125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (n + 1) + A057427 n

end

end A190592.P5265192103971515125

namespace A190592

/-- `A189820(n+1)+A057427(n)` -/
def P5265192103971515125.Spec : Prop :=
  ∀ n, P5265192103971515125.a n = A190592 n

end A190592

/-! ## A190592.P5875563809066193623

`A189820(n+1)-A057428(n)`
-/

namespace A190592.P5875563809066193623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189820 (n + 1) - A057428 n

end

end A190592.P5875563809066193623

namespace A190592

/-- `A189820(n+1)-A057428(n)` -/
def P5875563809066193623.Spec : Prop :=
  ∀ n, P5875563809066193623.a n = A190592 n

end A190592

/-! ## A190592.P12263560330268747501

`A040001(2*n)-A039966(n)`
-/

namespace A190592.P12263560330268747501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) - A039966 n

end

end A190592.P12263560330268747501

namespace A190592

/-- `A040001(2*n)-A039966(n)` -/
def P12263560330268747501.Spec : Prop :=
  ∀ n, P12263560330268747501.a n = A190592 n

end A190592

/-!
# A190593: Maximal digit in base-4 expansion of n.

The programs for A190593, the canonical program `A190593.P5286973328351378839` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190593 has offset 0).

The definition of A190593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190593.P2601524081203651656

`A319652(n)%4`
-/

namespace A190593.P2601524081203651656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319652 n) 4

end

end A190593.P2601524081203651656

namespace A190593

/-- `A319652(n)%4` -/
def P2601524081203651656.Spec : Prop :=
  ∀ n, P2601524081203651656.a n = A190593 n

end A190593

/-! ## A190593.P13804003910175910106

`A010873(A319652(n))`
-/

namespace A190593.P13804003910175910106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A319652 n).toNat

end

end A190593.P13804003910175910106

namespace A190593

/-- `A010873(A319652(n))` -/
def P13804003910175910106.Spec : Prop :=
  ∀ n, P13804003910175910106.a n = A190593 n

end A190593

/-! ## A190593.P2057109220614150933

`and(A122553(n), A319652(n))`
-/

namespace A190593.P2057109220614150933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122553 n) (A319652 n)

end

end A190593.P2057109220614150933

namespace A190593

/-- `and(A122553(n), A319652(n))` -/
def P2057109220614150933.Spec : Prop :=
  ∀ n, P2057109220614150933.a n = A190593 n

end A190593

/-! ## A190593.P5286973328351378839

`A006530(A338854(n))%(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A190593

/-- `A006530(A338854(n))%(n+1)` -/
def P5286973328351378839.Spec : Prop :=
  ∀ n, P5286973328351378839.a n = A190593 n

theorem P5286973328351378839.correct : P5286973328351378839.Spec := by
  intro n
  simp only [A190593]

end A190593

/-! ## A190593.P5008991432807299960

`and(A157532(n+1), A319652(n))`
-/

namespace A190593.P5008991432807299960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157532 (n + 1)) (A319652 n)

end

end A190593.P5008991432807299960

namespace A190593

/-- `and(A157532(n+1), A319652(n))` -/
def P5008991432807299960.Spec : Prop :=
  ∀ n, P5008991432807299960.a n = A190593 n

end A190593

/-! ## A190593.P15559139179183108469

`A030103(A319720(n))%4`
-/

namespace A190593.P15559139179183108469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030103 (A319720 n).toNat) 4

end

end A190593.P15559139179183108469

namespace A190593

/-- `A030103(A319720(n))%4` -/
def P15559139179183108469.Spec : Prop :=
  ∀ n, P15559139179183108469.a n = A190593 n

end A190593

/-! ## A190593.P14462436059281266935

`and(3, -A165012(4*n))`
-/

namespace A190593.P14462436059281266935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-A165012 (4 * n))

end

end A190593.P14462436059281266935

namespace A190593

/-- `and(3, -A165012(4*n))` -/
def P14462436059281266935.Spec : Prop :=
  ∀ n, P14462436059281266935.a n = A190593 n

end A190593

/-! ## A190593.P18296042268308674295

`A190594(A020654(n+1))`
-/

namespace A190593.P18296042268308674295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 (A020654 (n + 1)).toNat

end

end A190593.P18296042268308674295

namespace A190593

/-- `A190594(A020654(n+1))` -/
def P18296042268308674295.Spec : Prop :=
  ∀ n, P18296042268308674295.a n = A190593 n

end A190593

/-! ## A190593.P6955564628257298649

`A190594(lt[A190594(n), 4])`
-/

namespace A190593.P6955564628257298649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190594 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A190593.P6955564628257298649

namespace A190593

/-- `A190594(lt[A190594(n), 4])` -/
def P6955564628257298649.Spec : Prop :=
  ∀ n, P6955564628257298649.a n = A190593 n

end A190593

/-! ## A190593.P7298247828622004346

`A037898(4*n)`
-/

namespace A190593.P7298247828622004346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037898 (4 * n)

end

end A190593.P7298247828622004346

namespace A190593

/-- `A037898(4*n)` -/
def P7298247828622004346.Spec : Prop :=
  ∀ n, P7298247828622004346.a n = A190593 n

end A190593

/-! ## A190593.P12800353531338199403

`A319804(4*n)%4`
-/

namespace A190593.P12800353531338199403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319804 (4 * n)) 4

end

end A190593.P12800353531338199403

namespace A190593

/-- `A319804(4*n)%4` -/
def P12800353531338199403.Spec : Prop :=
  ∀ n, P12800353531338199403.a n = A190593 n

end A190593

/-! ## A190593.P16314592679515995533

`and(3, A319652(4*n))`
-/

namespace A190593.P16314592679515995533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A319652 (4 * n))

end

end A190593.P16314592679515995533

namespace A190593

/-- `and(3, A319652(4*n))` -/
def P16314592679515995533.Spec : Prop :=
  ∀ n, P16314592679515995533.a n = A190593 n

end A190593

/-! ## A190593.P360974939096268196

`A165013(4*n)%4`
-/

namespace A190593.P360974939096268196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165013 (4 * n)) 4

end

end A190593.P360974939096268196

namespace A190593

/-- `A165013(4*n)%4` -/
def P360974939096268196.Spec : Prop :=
  ∀ n, P360974939096268196.a n = A190593 n

end A190593

/-! ## A190593.P6952584527272021410

`A190595(A037460(n))`
-/

namespace A190593.P6952584527272021410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190595 (A037460 n).toNat

end

end A190593.P6952584527272021410

namespace A190593

/-- `A190595(A037460(n))` -/
def P6952584527272021410.Spec : Prop :=
  ∀ n, P6952584527272021410.a n = A190593 n

end A190593

/-! ## A190593.P2799889558784141592

`A190595(lt[A190595(n), 4])`
-/

namespace A190593.P2799889558784141592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190595 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190595 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A190593.P2799889558784141592

namespace A190593

/-- `A190595(lt[A190595(n), 4])` -/
def P2799889558784141592.Spec : Prop :=
  ∀ n, P2799889558784141592.a n = A190593 n

end A190593

/-! ## A190593.P4466533287067955218

`A276336(lt[A276336(n), 4])`
-/

namespace A190593.P4466533287067955218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276336 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276336 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A190593.P4466533287067955218

namespace A190593

/-- `A276336(lt[A276336(n), 4])` -/
def P4466533287067955218.Spec : Prop :=
  ∀ n, P4466533287067955218.a n = A190593 n

end A190593

/-! ## A190593.P17356566883504850820

`A190596(lt[A190596(n), 4])`
-/

namespace A190593.P17356566883504850820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A190593.P17356566883504850820

namespace A190593

/-- `A190596(lt[A190596(n), 4])` -/
def P17356566883504850820.Spec : Prop :=
  ∀ n, P17356566883504850820.a n = A190593 n

end A190593

/-! ## A190593.P3623639126821476243

`A190597(A037462(n))`
-/

namespace A190593.P3623639126821476243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190597 (A037462 n).toNat

end

end A190593.P3623639126821476243

namespace A190593

/-- `A190597(A037462(n))` -/
def P3623639126821476243.Spec : Prop :=
  ∀ n, P3623639126821476243.a n = A190593 n

end A190593

/-! ## A190593.P11858955262938148816

`A190597(lt[A190597(n), 4])`
-/

namespace A190593.P11858955262938148816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190597 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190597 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A190593.P11858955262938148816

namespace A190593

/-- `A190597(lt[A190597(n), 4])` -/
def P11858955262938148816.Spec : Prop :=
  ∀ n, P11858955262938148816.a n = A190593 n

end A190593

/-! ## A190593.P4358362547595336978

`A190598(A037463(n))`
-/

namespace A190593.P4358362547595336978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190598 (A037463 n).toNat

end

end A190593.P4358362547595336978

namespace A190593

/-- `A190598(A037463(n))` -/
def P4358362547595336978.Spec : Prop :=
  ∀ n, P4358362547595336978.a n = A190593 n

end A190593

/-!
# A190594: Maximal digit in base-5 expansion of n.

The programs for A190594, there is no canonical definition to state claims against.
-/

/-! ## A190594.P8879282304251998643

`A319653(n)%5`
-/

namespace A190594.P8879282304251998643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319653 n) 5

end

end A190594.P8879282304251998643

/-! ## A190594.P12203604494953609253

`A010874(A319653(n))`
-/

namespace A190594.P12203604494953609253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A319653 n).toNat

end

end A190594.P12203604494953609253

/-! ## A190594.P5245143517386670548

`(A319722(n)-A165032(n))%5`
-/

namespace A190594.P5245143517386670548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319722 n - A165032 n) 5

end

end A190594.P5245143517386670548

/-! ## A190594.P12552923234626851643

`A190595(A037465(n))`
-/

namespace A190594.P12552923234626851643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190595 (A037465 n).toNat

end

end A190594.P12552923234626851643

/-! ## A190594.P14880616226391042036

`A030104(A319722(n))%5`
-/

namespace A190594.P14880616226391042036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030104 (A319722 n).toNat) 5

end

end A190594.P14880616226391042036

/-! ## A190594.P9206002893728903901

`(4*A165032(5*n))%5`
-/

namespace A190594.P9206002893728903901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * A165032 (5 * n)) 5

end

end A190594.P9206002893728903901

/-! ## A190594.P4395551377874768820

`A190596(A037466(n))`
-/

namespace A190594.P4395551377874768820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 (A037466 n).toNat

end

end A190594.P4395551377874768820

/-! ## A190594.P16850991543780917772

`A037899(5*n)`
-/

namespace A190594.P16850991543780917772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037899 (5 * n)

end

end A190594.P16850991543780917772

/-! ## A190594.P6144516485102561289

`A319805(5*n)%5`
-/

namespace A190594.P6144516485102561289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319805 (5 * n)) 5

end

end A190594.P6144516485102561289

/-! ## A190594.P2338273659180800821

`A190597(A037467(n))`
-/

namespace A190594.P2338273659180800821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190597 (A037467 n).toNat

end

end A190594.P2338273659180800821

/-! ## A190594.P1582116429198873888

`A190598(A037468(n))`
-/

namespace A190594.P1582116429198873888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190598 (A037468 n).toNat

end

end A190594.P1582116429198873888

/-! ## A190594.P6803170117685276006

`A165033(5*n)%5`
-/

namespace A190594.P6803170117685276006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165033 (5 * n)) 5

end

end A190594.P6803170117685276006

/-! ## A190594.P8238853038836875343

`A054055(A007091(n))`
-/

namespace A190594.P8238853038836875343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007091 n).toNat

end

end A190594.P8238853038836875343

/-! ## A190594.P7289015361334646040

`A054055(eq[0, A102675(n)])`
-/

namespace A190594.P7289015361334646040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190594.P7289015361334646040

/-! ## A190594.P441540741894321333

`A054055(lt[A054055(n), 5])`
-/

namespace A190594.P441540741894321333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A190594.P441540741894321333

/-! ## A190594.P7015294348634165001

`A054055(A014263(n+1)/2)`
-/

namespace A190594.P7015294348634165001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.roundAway ((A014263 (n + 1) : ℚ) / 2)).toNat

end

end A190594.P7015294348634165001

/-! ## A190594.P8066121455431897173

`A047842(lt[A086066(n), 32])%5`
-/

namespace A190594.P8066121455431897173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)) 5

end

end A190594.P8066121455431897173

/-! ## A190594.P4480444050908280343

`A047842(lt[sqrt(∑{digits}[n, #!]), 10])%5`
-/

namespace A190594.P4480444050908280343
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.factorial x).sum : ℕ) : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℝ)) n)) 5

end

end A190594.P4480444050908280343

/-! ## A190594.P477848697127181047

`A054055(record[A106747(n)])`
-/

namespace A190594.P477848697127181047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190594.P477848697127181047

/-!
# A190595: Maximal digit in base-6 expansion of n.

The programs for A190595, there is no canonical definition to state claims against.
-/

/-! ## A190595.P18318266517057512372

`A319654(n)%6`
-/

namespace A190595.P18318266517057512372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319654 n) 6

end

end A190595.P18318266517057512372

/-! ## A190595.P9024618040547624465

`A010875(A319654(n))`
-/

namespace A190595.P9024618040547624465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A319654 n).toNat

end

end A190595.P9024618040547624465

/-! ## A190595.P12862655705596560587

`(A319723(n)-A165051(n))%6`
-/

namespace A190595.P12862655705596560587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319723 n - A165051 n) 6

end

end A190595.P12862655705596560587

/-! ## A190595.P6233626780515513229

`A030105(A319723(n))%6`
-/

namespace A190595.P6233626780515513229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030105 (A319723 n).toNat) 6

end

end A190595.P6233626780515513229

/-! ## A190595.P1227367185704634939

`A190596(A020657(n+1))`
-/

namespace A190595.P1227367185704634939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190596 (A020657 (n + 1)).toNat

end

end A190595.P1227367185704634939

/-! ## A190595.P2983538372592767793

`A190597(A037471(n))`
-/

namespace A190595.P2983538372592767793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190597 (A037471 n).toNat

end

end A190595.P2983538372592767793

/-! ## A190595.P11264676889853487800

`A190598(A037472(n))`
-/

namespace A190595.P11264676889853487800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190598 (A037472 n).toNat

end

end A190595.P11264676889853487800

/-! ## A190595.P12543781221778791181

`A037900(6*n)`
-/

namespace A190595.P12543781221778791181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037900 (6 * n)

end

end A190595.P12543781221778791181

/-! ## A190595.P3898403512116184531

`A319806(6*n)%6`
-/

namespace A190595.P3898403512116184531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319806 (6 * n)) 6

end

end A190595.P3898403512116184531

/-! ## A190595.P11811237179696755481

`A054055(A007092(n))`
-/

namespace A190595.P11811237179696755481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007092 n).toNat

end

end A190595.P11811237179696755481

/-! ## A190595.P13044982849128092958

`A054055(eq[0, A102677(n)])`
-/

namespace A190595.P13044982849128092958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190595.P13044982849128092958

/-! ## A190595.P15708572222051208467

`A054055(lt[A054055(n), 6])`
-/

namespace A190595.P15708572222051208467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A190595.P15708572222051208467

/-! ## A190595.P6425121768992482058

`A054055(record[n-A106747(n)])`
-/

namespace A190595.P6425121768992482058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190595.P6425121768992482058

/-! ## A190595.P3524661572321854284

`A047842(lt[sqrt(A061602(n)), 25])%10`
-/

namespace A190595.P3524661572321854284
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061602 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)) 10

end

end A190595.P3524661572321854284

/-! ## A190595.P13758922320761184883

`A047842(lt[A047842(n)%10, log2(46)])%10`
-/

namespace A190595.P13758922320761184883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 n) 10

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (46 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n)) 10

end

end A190595.P13758922320761184883

/-! ## A190595.P14056290961733042831

`A054055(eq[A054055(n)%6, A054055(n)])`
-/

namespace A190595.P14056290961733042831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054055 n) 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A190595.P14056290961733042831

/-! ## A190595.P3387168087309533644

`filter[A190599(n), A380484(#)]`
-/

namespace A190595.P3387168087309533644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380484 (f1 j).toNat = 1) n)

end

end A190595.P3387168087309533644

/-! ## A190595.P17684524665363185629

`filter[A190600(n), A380484(#)]`
-/

namespace A190595.P17684524665363185629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380484 (f1 j).toNat = 1) n)

end

end A190595.P17684524665363185629

/-!
# A190596: Maximal digit in base-7 expansion of n.

The programs for A190596, the canonical program `A190596.P5907297179524244657` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190596 has offset 0).

The definition of A190596 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190596.P3573159380485318469

`A319655(n)%7`
-/

namespace A190596.P3573159380485318469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319655 n) 7

end

end A190596.P3573159380485318469

namespace A190596

/-- `A319655(n)%7` -/
def P3573159380485318469.Spec : Prop :=
  ∀ n, P3573159380485318469.a n = A190596 n

end A190596

/-! ## A190596.P8635112530717566306

`A010876(A319655(n))`
-/

namespace A190596.P8635112530717566306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (A319655 n).toNat

end

end A190596.P8635112530717566306

namespace A190596

/-- `A010876(A319655(n))` -/
def P8635112530717566306.Spec : Prop :=
  ∀ n, P8635112530717566306.a n = A190596 n

end A190596

/-! ## A190596.P12612928524523946596

`(A319724(n)-A165071(n))%7`
-/

namespace A190596.P12612928524523946596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319724 n - A165071 n) 7

end

end A190596.P12612928524523946596

namespace A190596

/-- `(A319724(n)-A165071(n))%7` -/
def P12612928524523946596.Spec : Prop :=
  ∀ n, P12612928524523946596.a n = A190596 n

end A190596

/-! ## A190596.P5907297179524244657

`A190597(A037474(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A190596

/-- `A190597(A037474(n))` -/
def P5907297179524244657.Spec : Prop :=
  ∀ n, P5907297179524244657.a n = A190596 n

theorem P5907297179524244657.correct : P5907297179524244657.Spec := by
  intro n
  simp only [A190596]

end A190596

/-! ## A190596.P11245605669372331724

`A190598(A037475(n))`
-/

namespace A190596.P11245605669372331724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190598 (A037475 n).toNat

end

end A190596.P11245605669372331724

namespace A190596

/-- `A190598(A037475(n))` -/
def P11245605669372331724.Spec : Prop :=
  ∀ n, P11245605669372331724.a n = A190596 n

end A190596

/-! ## A190596.P2590644399748715335

`A030106(A319724(n))%7`
-/

namespace A190596.P2590644399748715335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030106 (A319724 n).toNat) 7

end

end A190596.P2590644399748715335

namespace A190596

/-- `A030106(A319724(n))%7` -/
def P2590644399748715335.Spec : Prop :=
  ∀ n, P2590644399748715335.a n = A190596 n

end A190596

/-! ## A190596.P18103902331925835589

`A054055(A007093(n))`
-/

namespace A190596.P18103902331925835589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007093 n).toNat

end

end A190596.P18103902331925835589

namespace A190596

/-- `A054055(A007093(n))` -/
def P18103902331925835589.Spec : Prop :=
  ∀ n, P18103902331925835589.a n = A190596 n

end A190596

/-! ## A190596.P9884470458398324838

`A054055(lt[A054055(n), 7])`
-/

namespace A190596.P9884470458398324838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A190596.P9884470458398324838

namespace A190596

/-- `A054055(lt[A054055(n), 7])` -/
def P9884470458398324838.Spec : Prop :=
  ∀ n, P9884470458398324838.a n = A190596 n

end A190596

/-! ## A190596.P9629936943344451754

`A047842(lt[log(A061602(n)), 8])%10`
-/

namespace A190596.P9629936943344451754
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A061602 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047842 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)) 10

end

end A190596.P9629936943344451754

namespace A190596

/-- `A047842(lt[log(A061602(n)), 8])%10` -/
def P9629936943344451754.Spec : Prop :=
  ∀ n, P9629936943344451754.a n = A190596 n

end A190596

/-! ## A190596.P3609604639734495824

`A054055(record[n-A064770(n)])`
-/

namespace A190596.P3609604639734495824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064770 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190596.P3609604639734495824

namespace A190596

/-- `A054055(record[n-A064770(n)])` -/
def P3609604639734495824.Spec : Prop :=
  ∀ n, P3609604639734495824.a n = A190596 n

end A190596

/-! ## A190596.P11274159159886003210

`A054055(A222251(record[A222251(n)]))`
-/

namespace A190596.P11274159159886003210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222251 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A190596.P11274159159886003210

namespace A190596

/-- `A054055(A222251(record[A222251(n)]))` -/
def P11274159159886003210.Spec : Prop :=
  ∀ n, P11274159159886003210.a n = A190596 n

end A190596

/-! ## A190596.P12446237084930058758

`A054055(eq[n, A222253(A004183(n))])`
-/

namespace A190596.P12446237084930058758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A004183 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190596.P12446237084930058758

namespace A190596

/-- `A054055(eq[n, A222253(A004183(n))])` -/
def P12446237084930058758.Spec : Prop :=
  ∀ n, P12446237084930058758.a n = A190596 n

end A190596

/-! ## A190596.P9568852456496197794

`A054055(eq[n, A222252(A004184(n))])`
-/

namespace A190596.P9568852456496197794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 (A004184 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190596.P9568852456496197794

namespace A190596

/-- `A054055(eq[n, A222252(A004184(n))])` -/
def P9568852456496197794.Spec : Prop :=
  ∀ n, P9568852456496197794.a n = A190596 n

end A190596

/-! ## A190596.P7232394104910866425

`A054055(eq[n, A222254(A222252(n))])`
-/

namespace A190596.P7232394104910866425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190596.P7232394104910866425

namespace A190596

/-- `A054055(eq[n, A222254(A222252(n))])` -/
def P7232394104910866425.Spec : Prop :=
  ∀ n, P7232394104910866425.a n = A190596 n

end A190596

/-! ## A190596.P8160946673478696393

`A054055(eq[n, A222254(A222253(n))])`
-/

namespace A190596.P8160946673478696393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222253 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190596.P8160946673478696393

namespace A190596

/-- `A054055(eq[n, A222254(A222253(n))])` -/
def P8160946673478696393.Spec : Prop :=
  ∀ n, P8160946673478696393.a n = A190596 n

end A190596

/-! ## A190596.P10229026852482114833

`A037901(7*n)`
-/

namespace A190596.P10229026852482114833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037901 (7 * n)

end

end A190596.P10229026852482114833

namespace A190596

/-- `A037901(7*n)` -/
def P10229026852482114833.Spec : Prop :=
  ∀ n, P10229026852482114833.a n = A190596 n

end A190596

/-!
# A190597: Maximal digit in base-8 expansion of n.

The programs for A190597, the canonical program `A190597.P16179968402666617356` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190597 has offset 0).

The definition of A190597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190597.P4269622824647237369

`A319656(n)%8`
-/

namespace A190597.P4269622824647237369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319656 n) 8

end

end A190597.P4269622824647237369

namespace A190597

/-- `A319656(n)%8` -/
def P4269622824647237369.Spec : Prop :=
  ∀ n, P4269622824647237369.a n = A190597 n

end A190597

/-! ## A190597.P1656759545298954292

`A010877(A319656(n))`
-/

namespace A190597.P1656759545298954292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A319656 n).toNat

end

end A190597.P1656759545298954292

namespace A190597

/-- `A010877(A319656(n))` -/
def P1656759545298954292.Spec : Prop :=
  ∀ n, P1656759545298954292.a n = A190597 n

end A190597

/-! ## A190597.P4604495594618567697

`and(A186684(n+1), A319656(n))`
-/

namespace A190597.P4604495594618567697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A186684 (n + 1)) (A319656 n)

end

end A190597.P4604495594618567697

namespace A190597

/-- `and(A186684(n+1), A319656(n))` -/
def P4604495594618567697.Spec : Prop :=
  ∀ n, P4604495594618567697.a n = A190597 n

end A190597

/-! ## A190597.P10659130934453656191

`A007318(C(2, n))*and(7, A319656(n))`
-/

namespace A190597.P10659130934453656191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * Int.land 7 (A319656 n)

end

end A190597.P10659130934453656191

namespace A190597

/-- `A007318(C(2, n))*and(7, A319656(n))` -/
def P10659130934453656191.Spec : Prop :=
  ∀ n, P10659130934453656191.a n = A190597 n

end A190597

/-! ## A190597.P12391884244082510963

`and(7, A319656(n))^A005117(C(2, n)!)`
-/

namespace A190597.P12391884244082510963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 7 (A319656 n) : ℚ) ^ (A005117 (Nat.factorial (Nat.choose 2 n)) : ℤ)

end

end A190597.P12391884244082510963

namespace A190597

/-- `and(7, A319656(n))^A005117(C(2, n)!)` -/
def P12391884244082510963.Spec : Prop :=
  ∀ n, P12391884244082510963.a n = (A190597 n : ℚ)

end A190597

/-! ## A190597.P12625311682912626512

`and(7, A319656(n))^A014963(C(2, n)!)`
-/

namespace A190597.P12625311682912626512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 7 (A319656 n) : ℚ) ^ (A014963 (Nat.factorial (Nat.choose 2 n)) : ℤ)

end

end A190597.P12625311682912626512

namespace A190597

/-- `and(7, A319656(n))^A014963(C(2, n)!)` -/
def P12625311682912626512.Spec : Prop :=
  ∀ n, P12625311682912626512.a n = (A190597 n : ℚ)

end A190597

/-! ## A190597.P14258067041406914343

`A000108(C(n, n²))*and(7, A319656(n))`
-/

namespace A190597.P14258067041406914343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose n (n ^ 2)) * Int.land 7 (A319656 n)

end

end A190597.P14258067041406914343

namespace A190597

/-- `A000108(C(n, n²))*and(7, A319656(n))` -/
def P14258067041406914343.Spec : Prop :=
  ∀ n, P14258067041406914343.a n = A190597 n

end A190597

/-! ## A190597.P7380866719857010551

`and(1, A000040(n+1))*and(7, A319656(n))`
-/

namespace A190597.P7380866719857010551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * Int.land 7 (A319656 n)

end

end A190597.P7380866719857010551

namespace A190597

/-- `and(1, A000040(n+1))*and(7, A319656(n))` -/
def P7380866719857010551.Spec : Prop :=
  ∀ n, P7380866719857010551.a n = A190597 n

end A190597

/-! ## A190597.P15383156208251718040

`A000041(C(2, n+2))*and(7, A319656(n))`
-/

namespace A190597.P15383156208251718040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * Int.land 7 (A319656 n)

end

end A190597.P15383156208251718040

namespace A190597

/-- `A000041(C(2, n+2))*and(7, A319656(n))` -/
def P15383156208251718040.Spec : Prop :=
  ∀ n, P15383156208251718040.a n = A190597 n

end A190597

/-! ## A190597.P8437710362122345660

`and(7, A319656(n))/A007318(C(2, n+2))`
-/

namespace A190597.P8437710362122345660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 7 (A319656 n) : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A190597.P8437710362122345660

namespace A190597

/-- `and(7, A319656(n))/A007318(C(2, n+2))` -/
def P8437710362122345660.Spec : Prop :=
  ∀ n, P8437710362122345660.a n = (A190597 n : ℚ)

end A190597

/-! ## A190597.P16991154551034369571

`and(7, A319656(n))*A020639(gcd(n, n+1))`
-/

namespace A190597.P16991154551034369571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A319656 n) * A020639 (Nat.gcd n (n + 1))

end

end A190597.P16991154551034369571

namespace A190597

/-- `and(7, A319656(n))*A020639(gcd(n, n+1))` -/
def P16991154551034369571.Spec : Prop :=
  ∀ n, P16991154551034369571.a n = A190597 n

end A190597

/-! ## A190597.P7630266049515610003

`and(7, A319656(n))/((-1)^A007318(n))²`
-/

namespace A190597.P7630266049515610003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 7 (A319656 n) : ℚ) / ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2

end

end A190597.P7630266049515610003

namespace A190597

/-- `and(7, A319656(n))/((-1)^A007318(n))²` -/
def P7630266049515610003.Spec : Prop :=
  ∀ n, P7630266049515610003.a n = (A190597 n : ℚ)

end A190597

/-! ## A190597.P16179968402666617356

`A190598(A037477(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A190597

/-- `A190598(A037477(n))` -/
def P16179968402666617356.Spec : Prop :=
  ∀ n, P16179968402666617356.a n = A190597 n

theorem P16179968402666617356.correct : P16179968402666617356.Spec := by
  intro n
  simp only [A190597]

end A190597

/-! ## A190597.P9921839235501717351

`A054055(A007094(n))`
-/

namespace A190597.P9921839235501717351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007094 n).toNat

end

end A190597.P9921839235501717351

namespace A190597

/-- `A054055(A007094(n))` -/
def P9921839235501717351.Spec : Prop :=
  ∀ n, P9921839235501717351.a n = A190597 n

end A190597

/-! ## A190597.P332006776264272550

`A054055(lt[A054055(n), 8])`
-/

namespace A190597.P332006776264272550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A190597.P332006776264272550

namespace A190597

/-- `A054055(lt[A054055(n), 8])` -/
def P332006776264272550.Spec : Prop :=
  ∀ n, P332006776264272550.a n = A190597 n

end A190597

/-! ## A190597.P8620521472417232579

`A054055(comp[A057104(n+1)])`
-/

namespace A190597.P8620521472417232579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A190597.P8620521472417232579

namespace A190597

/-- `A054055(comp[A057104(n+1)])` -/
def P8620521472417232579.Spec : Prop :=
  ∀ n, P8620521472417232579.a n = A190597 n

end A190597

/-! ## A190597.P1572210020164724176

`val(A069877(comp[A057104(n+1)]), 2)`
-/

namespace A190597.P1572210020164724176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A069877 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat 2

end

end A190597.P1572210020164724176

namespace A190597

/-- `val(A069877(comp[A057104(n+1)]), 2)` -/
def P1572210020164724176.Spec : Prop :=
  ∀ n, (P1572210020164724176.a n : ℤ) = A190597 n

end A190597

/-! ## A190597.P15190410874077129674

`A054055(eq[n, A222254(n)])`
-/

namespace A190597.P15190410874077129674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190597.P15190410874077129674

namespace A190597

/-- `A054055(eq[n, A222254(n)])` -/
def P15190410874077129674.Spec : Prop :=
  ∀ n, P15190410874077129674.a n = A190597 n

end A190597

/-! ## A190597.P12411328080044838731

`A054055(eq[n, A004184(A004183(n))])`
-/

namespace A190597.P12411328080044838731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A004183 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190597.P12411328080044838731

namespace A190597

/-- `A054055(eq[n, A004184(A004183(n))])` -/
def P12411328080044838731.Spec : Prop :=
  ∀ n, P12411328080044838731.a n = A190597 n

end A190597

/-! ## A190597.P12582632215649300121

`A037902(8*n)`
-/

namespace A190597.P12582632215649300121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037902 (8 * n)

end

end A190597.P12582632215649300121

namespace A190597

/-- `A037902(8*n)` -/
def P12582632215649300121.Spec : Prop :=
  ∀ n, P12582632215649300121.a n = A190597 n

end A190597

/-!
# A190598: Maximal digit in base-9 expansion of n.

The programs for A190598, the canonical program `A190598.P8948535593127818796` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A190598 has offset 0).

The definition of A190598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6562 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A190598.P2982433476774309013

`dr(A319657(n))`
-/

namespace A190598.P2982433476774309013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A319657 n)

end

end A190598.P2982433476774309013

namespace A190598

/-- `dr(A319657(n))` -/
def P2982433476774309013.Spec : Prop :=
  ∀ n, (P2982433476774309013.a n : ℤ) = A190598 n

end A190598

/-! ## A190598.P16065979960135335132

`A319657(n)%A100401(n)`
-/

namespace A190598.P16065979960135335132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319657 n) (A100401 n)

end

end A190598.P16065979960135335132

namespace A190598

/-- `A319657(n)%A100401(n)` -/
def P16065979960135335132.Spec : Prop :=
  ∀ n, P16065979960135335132.a n = A190598 n

end A190598

/-! ## A190598.P14671408371731782417

`dr(A030108(A319726(n)))`
-/

namespace A190598.P14671408371731782417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A030108 (A319726 n).toNat)

end

end A190598.P14671408371731782417

namespace A190598

/-- `dr(A030108(A319726(n)))` -/
def P14671408371731782417.Spec : Prop :=
  ∀ n, (P14671408371731782417.a n : ℤ) = A190598 n

end A190598

/-! ## A190598.P8948535593127818796

`A054055(A007095(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A190598

/-- `A054055(A007095(n))` -/
def P8948535593127818796.Spec : Prop :=
  ∀ n, P8948535593127818796.a n = A190598 n

theorem P8948535593127818796.correct : P8948535593127818796.Spec := by
  intro n
  simp only [A190598]

end A190598

/-! ## A190598.P16819208377560496503

`A054055(record[A004728(n)])`
-/

namespace A190598.P16819208377560496503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190598.P16819208377560496503

namespace A190598

/-- `A054055(record[A004728(n)])` -/
def P16819208377560496503.Spec : Prop :=
  ∀ n, P16819208377560496503.a n = A190598 n

end A190598

/-! ## A190598.P4598476279694126409

`A054055(lt[A054055(n), 9])`
-/

namespace A190598.P4598476279694126409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A190598.P4598476279694126409

namespace A190598

/-- `A054055(lt[A054055(n), 9])` -/
def P4598476279694126409.Spec : Prop :=
  ∀ n, P4598476279694126409.a n = A190598 n

end A190598

/-! ## A190598.P7653544086086855643

`A054055(comp[A011539(n+1)])`
-/

namespace A190598.P7653544086086855643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011539 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A190598.P7653544086086855643

namespace A190598

/-- `A054055(comp[A011539(n+1)])` -/
def P7653544086086855643.Spec : Prop :=
  ∀ n, P7653544086086855643.a n = A190598 n

end A190598

/-! ## A190598.P5269508768839750998

`dr(A319726(n)+A165111(n))`
-/

namespace A190598.P5269508768839750998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A319726 n + A165111 n)

end

end A190598.P5269508768839750998

namespace A190598

/-- `dr(A319726(n)+A165111(n))` -/
def P5269508768839750998.Spec : Prop :=
  ∀ n, (P5269508768839750998.a n : ℤ) = A190598 n

end A190598

/-! ## A190598.P11124179984534339962

`A054055(record[A004184(n)])`
-/

namespace A190598.P11124179984534339962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190598.P11124179984534339962

namespace A190598

/-- `A054055(record[A004184(n)])` -/
def P11124179984534339962.Spec : Prop :=
  ∀ n, P11124179984534339962.a n = A190598 n

end A190598

/-! ## A190598.P10992951564117690170

`A054055(record[A235049(n)])`
-/

namespace A190598.P10992951564117690170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A190598.P10992951564117690170

namespace A190598

/-- `A054055(record[A235049(n)])` -/
def P10992951564117690170.Spec : Prop :=
  ∀ n, P10992951564117690170.a n = A190598 n

end A190598

/-! ## A190598.P10614004554449963566

`A054055(eq[n, A004184(n)])`
-/

namespace A190598.P10614004554449963566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A190598.P10614004554449963566

namespace A190598

/-- `A054055(eq[n, A004184(n)])` -/
def P10614004554449963566.Spec : Prop :=
  ∀ n, P10614004554449963566.a n = A190598 n

end A190598

/-! ## A190598.P16035940180782650877

`A054055(record[A048379(n)])-1`
-/

namespace A190598.P16035940180782650877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A190598.P16035940180782650877

namespace A190598

/-- `A054055(record[A048379(n)])-1` -/
def P16035940180782650877.Spec : Prop :=
  ∀ n, P16035940180782650877.a n = A190598 n

end A190598

/-! ## A190598.P14843032400236442959

`A054055(record[A222210(n)])-1`
-/

namespace A190598.P14843032400236442959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222210 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A190598.P14843032400236442959

namespace A190598

/-- `A054055(record[A222210(n)])-1` -/
def P14843032400236442959.Spec : Prop :=
  ∀ n, P14843032400236442959.a n = A190598 n

end A190598

/-! ## A190598.P12056823050000970782

`A059939(A086066(record[A035043(n)]))`
-/

namespace A190598.P12056823050000970782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059939 (A086066 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A190598.P12056823050000970782

namespace A190598

/-- `A059939(A086066(record[A035043(n)]))` -/
def P12056823050000970782.Spec : Prop :=
  ∀ n, P12056823050000970782.a n = A190598 n

end A190598

/-! ## A190598.P5552297730934566719

`filter[A190599(n), A368992(#)]`
-/

namespace A190598.P5552297730934566719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368992 (f1 j).toNat = 1) n)

end

end A190598.P5552297730934566719

namespace A190598

/-- `filter[A190599(n), A368992(#)]` -/
def P5552297730934566719.Spec : Prop :=
  ∀ n, P5552297730934566719.a n = A190598 n

end A190598

/-! ## A190598.P12856123633978652241

`A037903(9*n)`
-/

namespace A190598.P12856123633978652241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037903 (9 * n)

end

end A190598.P12856123633978652241

namespace A190598

/-- `A037903(9*n)` -/
def P12856123633978652241.Spec : Prop :=
  ∀ n, P12856123633978652241.a n = A190598 n

end A190598

/-! ## A190598.P18010110194831090776

`dr(A319747(9*n))`
-/

namespace A190598.P18010110194831090776
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A319747 (9 * n))

end

end A190598.P18010110194831090776

namespace A190598

/-- `dr(A319747(9*n))` -/
def P18010110194831090776.Spec : Prop :=
  ∀ n, (P18010110194831090776.a n : ℤ) = A190598 n

end A190598

/-! ## A190598.P9954995298941501326

`dr(A165111(9*n))`
-/

namespace A190598.P9954995298941501326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A165111 (9 * n))

end

end A190598.P9954995298941501326

namespace A190598

/-- `dr(A165111(9*n))` -/
def P9954995298941501326.Spec : Prop :=
  ∀ n, (P9954995298941501326.a n : ℤ) = A190598 n

end A190598

/-!
# A190599: Maximal digit in base-11 expansion of n.

The programs for A190599, there is no canonical definition to state claims against.
-/

/-! ## A190599.P11445760900258364508

`A190600(lt[A190600(n), 11])`
-/

namespace A190599.P11445760900258364508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A190599.P11445760900258364508

/-! ## A190599.P486251258115304938

`filter[A190600(n), A178788(#)]`
-/

namespace A190599.P486251258115304938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178788 (f1 j).toNat = 1) n)

end

end A190599.P486251258115304938

/-! ## A190599.P8459551337770340534

`filter[A190600(n), A196368(#)]`
-/

namespace A190599.P8459551337770340534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196368 (f1 j).toNat = 1) n)

end

end A190599.P8459551337770340534

/-! ## A190599.P6329962847523774645

`filter[A190600(n), A228710(#)]`
-/

namespace A190599.P6329962847523774645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A228710 (f1 j).toNat = 1) n)

end

end A190599.P6329962847523774645

/-! ## A190599.P10904493337123856411

`A190600(A043653(n+1))-1`
-/

namespace A190599.P10904493337123856411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190600 (A043653 (n + 1)).toNat - 1

end

end A190599.P10904493337123856411

