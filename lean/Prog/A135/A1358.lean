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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A135801: Fourth column (k=3) of triangle A134832 (circular succession numbers).

The programs for A135801, the canonical program `A135801.P5050438463856338044` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135801 has offset 0).

The definition of A135801 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135801.P5050438463856338044

`C(n+3, 3)*A000757(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135801

/-- `C(n+3, 3)*A000757(n)` -/
def P5050438463856338044.Spec : Prop :=
  ∀ n, P5050438463856338044.a n = A135801 n

theorem P5050438463856338044.correct : P5050438463856338044.Spec := by
  intro n
  simp only [A135801]

end A135801

/-! ## A135801.P13374884776635527098

`A134832(A167614(n+2))`
-/

namespace A135801.P13374884776635527098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134832 (A167614 (n + 2)).toNat

end

end A135801.P13374884776635527098

namespace A135801

/-- `A134832(A167614(n+2))` -/
def P13374884776635527098.Spec : Prop :=
  ∀ n, P13374884776635527098.a n = A135801 n

end A135801

/-! ## A135801.P3378752590534769853

`A134832(A055999(n)+9)`
-/

namespace A135801.P3378752590534769853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134832 (A055999 n + 9).toNat

end

end A135801.P3378752590534769853

namespace A135801

/-- `A134832(A055999(n)+9)` -/
def P3378752590534769853.Spec : Prop :=
  ∀ n, P3378752590534769853.a n = A135801 n

end A135801

/-! ## A135801.P17376116678621548210

`A134832(eq[3, A002262(n)])`
-/

namespace A135801.P17376116678621548210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135801.P17376116678621548210

namespace A135801

/-- `A134832(eq[3, A002262(n)])` -/
def P17376116678621548210.Spec : Prop :=
  ∀ n, P17376116678621548210.a n = A135801 n

end A135801

/-! ## A135801.P10227522707960797324

`A000757(n)*A008804(2*n)`
-/

namespace A135801.P10227522707960797324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A008804 (2 * n)

end

end A135801.P10227522707960797324

namespace A135801

/-- `A000757(n)*A008804(2*n)` -/
def P10227522707960797324.Spec : Prop :=
  ∀ n, P10227522707960797324.a n = A135801 n

end A135801

/-! ## A135801.P14022726214679900470

`(A033999(n)+A002741(n))*∑[∑[n+1]]`
-/

namespace A135801.P14022726214679900470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + A002741 n) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A135801.P14022726214679900470

namespace A135801

/-- `(A033999(n)+A002741(n))*∑[∑[n+1]]` -/
def P14022726214679900470.Spec : Prop :=
  ∀ n, P14022726214679900470.a n = A135801 n

end A135801

/-! ## A135801.P13421031300529794860

`A000757(n)*A074909(A167614(n+1))`
-/

namespace A135801.P13421031300529794860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A074909 (A167614 (n + 1)).toNat

end

end A135801.P13421031300529794860

namespace A135801

/-- `A000757(n)*A074909(A167614(n+1))` -/
def P13421031300529794860.Spec : Prop :=
  ∀ n, P13421031300529794860.a n = A135801 n

end A135801

/-! ## A135801.P15745356465151738156

`A000757(n)*A007318(A167614(n+2))`
-/

namespace A135801.P15745356465151738156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A007318 (A167614 (n + 2)).toNat

end

end A135801.P15745356465151738156

namespace A135801

/-- `A000757(n)*A007318(A167614(n+2))` -/
def P15745356465151738156.Spec : Prop :=
  ∀ n, P15745356465151738156.a n = A135801 n

end A135801

/-!
# A135802: Fifth column (k=4) of triangle A134832 (circular succession numbers).

The programs for A135802, the canonical program `A135802.P7733874618734558309` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135802 has offset 0).

The definition of A135802 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135802.P7733874618734558309

`C(n+4, 4)*A000757(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135802

/-- `C(n+4, 4)*A000757(n)` -/
def P7733874618734558309.Spec : Prop :=
  ∀ n, P7733874618734558309.a n = A135802 n

theorem P7733874618734558309.correct : P7733874618734558309.Spec := by
  intro n
  simp only [A135802]

end A135802

/-! ## A135802.P8698905885205102854

`A134832(eq[4, A002262(n)])`
-/

namespace A135802.P8698905885205102854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135802.P8698905885205102854

namespace A135802

/-- `A134832(eq[4, A002262(n)])` -/
def P8698905885205102854.Spec : Prop :=
  ∀ n, P8698905885205102854.a n = A135802 n

end A135802

/-! ## A135802.P9891839632424256004

`A134832(A134869(n+4)+3)`
-/

namespace A135802.P9891839632424256004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134832 (A134869 (n + 4) + 3).toNat

end

end A135802.P9891839632424256004

namespace A135802

/-- `A134832(A134869(n+4)+3)` -/
def P9891839632424256004.Spec : Prop :=
  ∀ n, P9891839632424256004.a n = A135802 n

end A135802

/-! ## A135802.P10189847203074452701

`A134832(A000096(n+3)+5)`
-/

namespace A135802.P10189847203074452701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134832 (A000096 (n + 3) + 5).toNat

end

end A135802.P10189847203074452701

namespace A135802

/-- `A134832(A000096(n+3)+5)` -/
def P10189847203074452701.Spec : Prop :=
  ∀ n, P10189847203074452701.a n = A135802 n

end A135802

/-! ## A135802.P10234670405926453926

`A000757(n)/5*A154286(n)`
-/

namespace A135802.P10234670405926453926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000757 n : ℚ) / 5 * (A154286 n : ℚ)

end

end A135802.P10234670405926453926

namespace A135802

/-- `A000757(n)/5*A154286(n)` -/
def P10234670405926453926.Spec : Prop :=
  ∀ n, P10234670405926453926.a n = (A135802 n : ℚ)

theorem P10234670405926453926.correct : P10234670405926453926.Spec := by
  intro n
  simp only [A135802, Nat.add_sub_cancel, A135802.P10234670405926453926.a, A135802.P7733874618734558309.a, A000757, A000757.P5542658535049592383.a, A154286, A154286.P11538623933304528328.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135802

/-! ## A135802.P4563855282470650190

`∑[A000292(n+1)]*A000757(n)`
-/

namespace A135802.P4563855282470650190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000757 n

end

end A135802.P4563855282470650190

namespace A135802

/-- `∑[A000292(n+1)]*A000757(n)` -/
def P4563855282470650190.Spec : Prop :=
  ∀ n, P4563855282470650190.a n = A135802 n

end A135802

/-! ## A135802.P15310560884158643511

`A007318(A167499(n+3)-1)*A000757(n)`
-/

namespace A135802.P15310560884158643511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A167499 (n + 3) - 1).toNat * A000757 n

end

end A135802.P15310560884158643511

namespace A135802

/-- `A007318(A167499(n+3)-1)*A000757(n)` -/
def P15310560884158643511.Spec : Prop :=
  ∀ n, P15310560884158643511.a n = A135802 n

end A135802

/-! ## A135802.P7708844098636796273

`(A006470(n+1)-A027800(n))*A000757(n)`
-/

namespace A135802.P7708844098636796273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006470 (n + 1) - A027800 n) * A000757 n

end

end A135802.P7708844098636796273

namespace A135802

/-- `(A006470(n+1)-A027800(n))*A000757(n)` -/
def P7708844098636796273.Spec : Prop :=
  ∀ n, P7708844098636796273.a n = A135802 n

theorem P7708844098636796273.correct : P7708844098636796273.Spec := by
  intro n
  simp only [A135802, Nat.add_sub_cancel, A135802.P7708844098636796273.a, A135802.P7733874618734558309.a, A000757, A000757.P5542658535049592383.a, A006470, A006470.P17673189531466744654.a, A027800, A027800.P6346572312768476247.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135802

/-! ## A135802.P15085827762743751928

`(A095668(n)-A000574(n+3))*A000757(n)`
-/

namespace A135802.P15085827762743751928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A095668 n - A000574 (n + 3)) * A000757 n

end

end A135802.P15085827762743751928

namespace A135802

/-- `(A095668(n)-A000574(n+3))*A000757(n)` -/
def P15085827762743751928.Spec : Prop :=
  ∀ n, P15085827762743751928.a n = A135802 n

end A135802

/-! ## A135802.P7544392234501378345

`A007318(A167614(n+3)+1)*A134832(∑[n])`
-/

namespace A135802.P7544392234501378345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A167614 (n + 3) + 1).toNat * A134832 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135802.P7544392234501378345

namespace A135802

/-- `A007318(A167614(n+3)+1)*A134832(∑[n])` -/
def P7544392234501378345.Spec : Prop :=
  ∀ n, P7544392234501378345.a n = A135802 n

end A135802

/-!
# A135803: Sixth column (k=5) of triangle A134832 (circular succession numbers).

The programs for A135803, the canonical program `A135803.P9545162897995266125` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135803 has offset 0).

The definition of A135803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135803.P9545162897995266125

`C(n+5, 5)*A000757(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135803

/-- `C(n+5, 5)*A000757(n)` -/
def P9545162897995266125.Spec : Prop :=
  ∀ n, P9545162897995266125.a n = A135803 n

theorem P9545162897995266125.correct : P9545162897995266125.Spec := by
  intro n
  simp only [A135803]

end A135803

/-! ## A135803.P13344941777207831071

`∑[∑[A000292(n+1)]]*A000757(n)`
-/

namespace A135803.P13344941777207831071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000757 n

end

end A135803.P13344941777207831071

namespace A135803

/-- `∑[∑[A000292(n+1)]]*A000757(n)` -/
def P13344941777207831071.Spec : Prop :=
  ∀ n, P13344941777207831071.a n = A135803 n

end A135803

/-! ## A135803.P15435107128797953386

`A000389(A020710(n))*A000757(n)`
-/

namespace A135803.P15435107128797953386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 (A020710 n).toNat * A000757 n

end

end A135803.P15435107128797953386

namespace A135803

/-- `A000389(A020710(n))*A000757(n)` -/
def P15435107128797953386.Spec : Prop :=
  ∀ n, P15435107128797953386.a n = A135803 n

end A135803

/-! ## A135803.P768984610099706841

`A007318(Δ[A023551(n+1)])*A000757(n)`
-/

namespace A135803.P768984610099706841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (f1 (n + 1) - f1 n).toNat * A000757 n

end

end A135803.P768984610099706841

namespace A135803

/-- `A007318(Δ[A023551(n+1)])*A000757(n)` -/
def P768984610099706841.Spec : Prop :=
  ∀ n, P768984610099706841.a n = A135803 n

end A135803

/-! ## A135803.P17858807705923630419

`A027765(n+4)/A020710(n)*A000757(n)`
-/

namespace A135803.P17858807705923630419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027765 (n + 4) : ℚ) / (A020710 n : ℚ) * (A000757 n : ℚ)

end

end A135803.P17858807705923630419

namespace A135803

/-- `A027765(n+4)/A020710(n)*A000757(n)` -/
def P17858807705923630419.Spec : Prop :=
  ∀ n, P17858807705923630419.a n = (A135803 n : ℚ)

end A135803

/-! ## A135803.P11973917245153713621

`A134832(eq[5, A002262(n)])`
-/

namespace A135803.P11973917245153713621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135803.P11973917245153713621

namespace A135803

/-- `A134832(eq[5, A002262(n)])` -/
def P11973917245153713621.Spec : Prop :=
  ∀ n, P11973917245153713621.a n = A135803 n

end A135803

/-!
# A135804: Seventh column (k=6) of triangle A134832 (circular succession numbers).

The programs for A135804, the canonical program `A135804.P11437652727200621818` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135804 has offset 0).

The definition of A135804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135804.P11437652727200621818

`C(n+6, 6)*A000757(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135804

/-- `C(n+6, 6)*A000757(n)` -/
def P11437652727200621818.Spec : Prop :=
  ∀ n, P11437652727200621818.a n = A135804 n

theorem P11437652727200621818.correct : P11437652727200621818.Spec := by
  intro n
  simp only [A135804]

end A135804

/-! ## A135804.P6960162320820304710

`A299338(2*n)*A000757(n)`
-/

namespace A135804.P6960162320820304710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (2 * n) * A000757 n

end

end A135804.P6960162320820304710

namespace A135804

/-- `A299338(2*n)*A000757(n)` -/
def P6960162320820304710.Spec : Prop :=
  ∀ n, P6960162320820304710.a n = A135804 n

end A135804

/-! ## A135804.P15190777598204669425

`A253946(n+5)/6*A000757(n)`
-/

namespace A135804.P15190777598204669425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253946 (n + 5) : ℚ) / 6 * (A000757 n : ℚ)

end

end A135804.P15190777598204669425

namespace A135804

/-- `A253946(n+5)/6*A000757(n)` -/
def P15190777598204669425.Spec : Prop :=
  ∀ n, P15190777598204669425.a n = (A135804 n : ℚ)

theorem P15190777598204669425.correct : P15190777598204669425.Spec := by
  intro n
  simp only [A135804, Nat.add_sub_cancel, A135804.P15190777598204669425.a, A135804.P11437652727200621818.a, A000757, A000757.P5542658535049592383.a, A253946, A253946.P6076803449469898878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135804

/-! ## A135804.P11801062318347765786

`A134832(C(n+1, 2))*A299338(2*n)`
-/

namespace A135804.P11801062318347765786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134832 (Nat.choose (n + 1) 2) * A299338 (2 * n)

end

end A135804.P11801062318347765786

namespace A135804

/-- `A134832(C(n+1, 2))*A299338(2*n)` -/
def P11801062318347765786.Spec : Prop :=
  ∀ n, P11801062318347765786.a n = A135804 n

end A135804

/-! ## A135804.P11232658942807944151

`A000757(n)*A299338(A005408(n))`
-/

namespace A135804.P11232658942807944151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A299338 (A005408 n).toNat

end

end A135804.P11232658942807944151

namespace A135804

/-- `A000757(n)*A299338(A005408(n))` -/
def P11232658942807944151.Spec : Prop :=
  ∀ n, P11232658942807944151.a n = A135804 n

end A135804

/-! ## A135804.P12249986597309120881

`A000757(n)*A299338(A005843(n))`
-/

namespace A135804.P12249986597309120881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A299338 (A005843 n).toNat

end

end A135804.P12249986597309120881

namespace A135804

/-- `A000757(n)*A299338(A005843(n))` -/
def P12249986597309120881.Spec : Prop :=
  ∀ n, P12249986597309120881.a n = A135804 n

end A135804

/-! ## A135804.P8787839104527551048

`A000757(n)*A074909(A179865(n+6)+6)`
-/

namespace A135804.P8787839104527551048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A074909 (A179865 (n + 6) + 6).toNat

end

end A135804.P8787839104527551048

namespace A135804

/-- `A000757(n)*A074909(A179865(n+6)+6)` -/
def P8787839104527551048.Spec : Prop :=
  ∀ n, P8787839104527551048.a n = A135804 n

end A135804

/-!
# A135805: Eighth column (k=7) of triangle A134832 (circular succession numbers).

The programs for A135805, the canonical program `A135805.P10951809980365709088` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135805 has offset 0).

The definition of A135805 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135805.P10951809980365709088

`C(n+7, 7)*A000757(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135805

/-- `C(n+7, 7)*A000757(n)` -/
def P10951809980365709088.Spec : Prop :=
  ∀ n, P10951809980365709088.a n = A135805 n

theorem P10951809980365709088.correct : P10951809980365709088.Spec := by
  intro n
  simp only [A135805]

end A135805

/-! ## A135805.P18324679845206058389

`abs(1-∑[(1-n)*a(n-1)+1])*C(n+7, 7)` with `a(0)=0`
-/

namespace A135805.P18324679845206058389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (1 - (n : ℤ)) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j| * (Nat.choose (n + 7) 7 : ℤ)

end

end A135805.P18324679845206058389

namespace A135805

/-- `abs(1-∑[(1-n)*a(n-1)+1])*C(n+7, 7)` -/
def P18324679845206058389.Spec : Prop :=
  ∀ n, P18324679845206058389.a n = A135805 n

end A135805

/-! ## A135805.P3682079308955181388

`A000580(n+7)*A000757(n)`
-/

namespace A135805.P3682079308955181388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A000757 n

end

end A135805.P3682079308955181388

namespace A135805

/-- `A000580(n+7)*A000757(n)` -/
def P3682079308955181388.Spec : Prop :=
  ∀ n, P3682079308955181388.a n = A135805 n

end A135805

/-! ## A135805.P12175122419599921016

`∑[A299338(2*n)]*A000757(n)`
-/

namespace A135805.P12175122419599921016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299338 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000757 n

end

end A135805.P12175122419599921016

namespace A135805

/-- `∑[A299338(2*n)]*A000757(n)` -/
def P12175122419599921016.Spec : Prop :=
  ∀ n, P12175122419599921016.a n = A135805 n

end A135805

/-! ## A135805.P18256608025675117601

`A253947(n+6)/6*A000757(n)`
-/

namespace A135805.P18256608025675117601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253947 (n + 6) : ℚ) / 6 * (A000757 n : ℚ)

end

end A135805.P18256608025675117601

namespace A135805

/-- `A253947(n+6)/6*A000757(n)` -/
def P18256608025675117601.Spec : Prop :=
  ∀ n, P18256608025675117601.a n = (A135805 n : ℚ)

theorem P18256608025675117601.correct : P18256608025675117601.Spec := by
  intro n
  simp only [A135805, Nat.add_sub_cancel, A135805.P18256608025675117601.a, A135805.P10951809980365709088.a, A000757, A000757.P5542658535049592383.a, A253947, A253947.P518104505896872323.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135805

/-! ## A135805.P4440526216490699982

`A000580(n+7)*A134832(A000217(n))`
-/

namespace A135805.P4440526216490699982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7) * A134832 (A000217 n).toNat

end

end A135805.P4440526216490699982

namespace A135805

/-- `A000580(n+7)*A134832(A000217(n))` -/
def P4440526216490699982.Spec : Prop :=
  ∀ n, P4440526216490699982.a n = A135805 n

end A135805

/-! ## A135805.P10309475623383255322

`A007318(A000217(n+7)+7)*A000757(n)`
-/

namespace A135805.P10309475623383255322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 7) + 7).toNat * A000757 n

end

end A135805.P10309475623383255322

namespace A135805

/-- `A007318(A000217(n+7)+7)*A000757(n)` -/
def P10309475623383255322.Spec : Prop :=
  ∀ n, P10309475623383255322.a n = A135805 n

end A135805

/-! ## A135805.P17717222090533041320

`A134832(eq[7, A002262(n)])`
-/

namespace A135805.P17717222090533041320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134832 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135805.P17717222090533041320

namespace A135805

/-- `A134832(eq[7, A002262(n)])` -/
def P17717222090533041320.Spec : Prop :=
  ∀ n, P17717222090533041320.a n = A135805 n

end A135805

/-!
# A135806: Ninth column (k=8) of triangle A134832 (circular succession numbers).

The programs for A135806, the canonical program `A135806.P4078488060708780293` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135806 has offset 0).

The definition of A135806 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135806.P4078488060708780293

`C(n+8, 8)*A000757(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135806

/-- `C(n+8, 8)*A000757(n)` -/
def P4078488060708780293.Spec : Prop :=
  ∀ n, P4078488060708780293.a n = A135806 n

theorem P4078488060708780293.correct : P4078488060708780293.Spec := by
  intro n
  simp only [A135806]

end A135806

/-! ## A135806.P1568107352091196841

`abs(1-∑[(1-n)*a(n-1)+1])*C(n+8, 8)` with `a(0)=0`
-/

namespace A135806.P1568107352091196841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (1 - (n : ℤ)) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j| * (Nat.choose (n + 8) 8 : ℤ)

end

end A135806.P1568107352091196841

namespace A135806

/-- `abs(1-∑[(1-n)*a(n-1)+1])*C(n+8, 8)` -/
def P1568107352091196841.Spec : Prop :=
  ∀ n, P1568107352091196841.a n = A135806 n

end A135806

/-! ## A135806.P6447772405676636789

`A000581(n+8)*A000757(n)`
-/

namespace A135806.P6447772405676636789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A000757 n

end

end A135806.P6447772405676636789

namespace A135806

/-- `A000581(n+8)*A000757(n)` -/
def P6447772405676636789.Spec : Prop :=
  ∀ n, P6447772405676636789.a n = A135806 n

end A135806

/-! ## A135806.P12057312903549486671

`∑[A000580(n+7)]*A000757(n)`
-/

namespace A135806.P12057312903549486671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000757 n

end

end A135806.P12057312903549486671

namespace A135806

/-- `∑[A000580(n+7)]*A000757(n)` -/
def P12057312903549486671.Spec : Prop :=
  ∀ n, P12057312903549486671.a n = A135806 n

end A135806

/-! ## A135806.P11682750974912676441

`A000581(n+8)*A134832(∑[n])`
-/

namespace A135806.P11682750974912676441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A134832 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135806.P11682750974912676441

namespace A135806

/-- `A000581(n+8)*A134832(∑[n])` -/
def P11682750974912676441.Spec : Prop :=
  ∀ n, P11682750974912676441.a n = A135806 n

end A135806

/-! ## A135806.P7382398706714871504

`A007318(A167614(n+7)+5)*A000757(n)`
-/

namespace A135806.P7382398706714871504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A167614 (n + 7) + 5).toNat * A000757 n

end

end A135806.P7382398706714871504

namespace A135806

/-- `A007318(A167614(n+7)+5)*A000757(n)` -/
def P7382398706714871504.Spec : Prop :=
  ∀ n, P7382398706714871504.a n = A135806 n

end A135806

/-! ## A135806.P1969245806043024844

`(A033999(n)+A002741(n))*A000581(n+8)`
-/

namespace A135806.P1969245806043024844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + A002741 n) * A000581 (n + 8)

end

end A135806.P1969245806043024844

namespace A135806

/-- `(A033999(n)+A002741(n))*A000581(n+8)` -/
def P1969245806043024844.Spec : Prop :=
  ∀ n, P1969245806043024844.a n = A135806 n

end A135806

/-!
# A135807: Tenth column (k=9) of triangle A134832 (circular succession numbers).

The programs for A135807, the canonical program `A135807.P16895533843931362156` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135807 has offset 0).

The definition of A135807 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135807.P16895533843931362156

`C(n+9, 9)*A000757(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135807

/-- `C(n+9, 9)*A000757(n)` -/
def P16895533843931362156.Spec : Prop :=
  ∀ n, P16895533843931362156.a n = A135807 n

theorem P16895533843931362156.correct : P16895533843931362156.Spec := by
  intro n
  simp only [A135807]

end A135807

/-! ## A135807.P12874956367960254805

`abs(1-∑[(1-n)*a(n-1)+1])*C(n+9, 9)` with `a(0)=0`
-/

namespace A135807.P12874956367960254805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (1 - (n : ℤ)) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ∑ j ∈ Finset.range (n + 1), f1 j| * (Nat.choose (n + 9) 9 : ℤ)

end

end A135807.P12874956367960254805

namespace A135807

/-- `abs(1-∑[(1-n)*a(n-1)+1])*C(n+9, 9)` -/
def P12874956367960254805.Spec : Prop :=
  ∀ n, P12874956367960254805.a n = A135807 n

end A135807

/-! ## A135807.P776571558930360922

`A000582(n+9)*A000757(n)`
-/

namespace A135807.P776571558930360922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) * A000757 n

end

end A135807.P776571558930360922

namespace A135807

/-- `A000582(n+9)*A000757(n)` -/
def P776571558930360922.Spec : Prop :=
  ∀ n, P776571558930360922.a n = A135807 n

end A135807

/-! ## A135807.P9857782308594724511

`∑[A000581(n+8)]*A000757(n)`
-/

namespace A135807.P9857782308594724511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000757 n

end

end A135807.P9857782308594724511

namespace A135807

/-- `∑[A000581(n+8)]*A000757(n)` -/
def P9857782308594724511.Spec : Prop :=
  ∀ n, P9857782308594724511.a n = A135807 n

end A135807

/-! ## A135807.P4906093427394788167

`A000582(n+9)*A134832(∑[n])`
-/

namespace A135807.P4906093427394788167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9) * A134832 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135807.P4906093427394788167

namespace A135807

/-- `A000582(n+9)*A134832(∑[n])` -/
def P4906093427394788167.Spec : Prop :=
  ∀ n, P4906093427394788167.a n = A135807 n

end A135807

/-! ## A135807.P6390414257990418869

`∑[∑[A000580(n+7)]]*A000757(n)`
-/

namespace A135807.P6390414257990418869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000757 n

end

end A135807.P6390414257990418869

namespace A135807

/-- `∑[∑[A000580(n+7)]]*A000757(n)` -/
def P6390414257990418869.Spec : Prop :=
  ∀ n, P6390414257990418869.a n = A135807 n

end A135807

/-! ## A135807.P6005129204588466456

`∑[A000581(n+8)]*A134832(∑[n])`
-/

namespace A135807.P6005129204588466456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A134832 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A135807.P6005129204588466456

namespace A135807

/-- `∑[A000581(n+8)]*A134832(∑[n])` -/
def P6005129204588466456.Spec : Prop :=
  ∀ n, P6005129204588466456.a n = A135807 n

end A135807

/-! ## A135807.P1379644202478693301

`A007318(A000217(n+10)-10)*A000757(n)`
-/

namespace A135807.P1379644202478693301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (n + 10) - 10).toNat * A000757 n

end

end A135807.P1379644202478693301

namespace A135807

/-- `A007318(A000217(n+10)-10)*A000757(n)` -/
def P1379644202478693301.Spec : Prop :=
  ∀ n, P1379644202478693301.a n = A135807 n

end A135807

/-!
# A135808: Numerator of z-sequence for the Sheffer (Appell type) triangle A134832 (circular succession numbers).

The programs for A135808, there is no canonical definition to state claims against.
-/

/-! ## A135808.P11015389454221734208

`A330150(or(1, A062943(n+1)))`
-/

namespace A135808.P11015389454221734208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330150 (Int.lor 1 (A062943 (n + 1))).toNat

end

end A135808.P11015389454221734208

/-! ## A135808.P8924331181879091606

`A350893(or(A000225(n), A289037(n+1)))`
-/

namespace A135808.P8924331181879091606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350893 (Int.lor (A000225 n) (A289037 (n + 1))).toNat

end

end A135808.P8924331181879091606

/-! ## A135808.P8003666659072554071

`A350893(or(A000040(n+3), A000225(n)))`
-/

namespace A135808.P8003666659072554071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350893 (Int.lor (A000040 (n + 3)) (A000225 n)).toNat

end

end A135808.P8003666659072554071

/-!
# A135809: Number of coincidence-free length n lists of 3-tuples with all numbers 1,...,n in tuple position k, for k=1,2,3.

The programs for A135809, there is no canonical definition to state claims against.
-/

/-! ## A135809.P15873066230398477762

`A135814(eq[3, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A135809.P15873066230398477762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135809.P15873066230398477762

/-! ## A135809.P9175752122847825772

`A135814(A167614(n+2))`
-/

namespace A135809.P9175752122847825772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135814 (A167614 (n + 2)).toNat

end

end A135809.P9175752122847825772

/-! ## A135809.P3328190484074741082

`A135814(A152950(n+4))`
-/

namespace A135809.P3328190484074741082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135814 (A152950 (n + 4)).toNat

end

end A135809.P3328190484074741082

/-!
# A135810: Number of coincidence-free length n lists of 4-tuples with all numbers 1..n in tuple position k, for k=1..4.

The programs for A135810, the canonical program `A135810.P5883859874965767215` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135810 has offset 0).

The definition of A135810 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135810.P5883859874965767215

`∑{#}[n, (-1)^(n-#)*C(n, #)*#!^4]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135810

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*#!^4]` -/
def P5883859874965767215.Spec : Prop :=
  ∀ n, P5883859874965767215.a n = (A135810 n : ℚ)

end A135810

/-! ## A135810.P2550715166365450559

`A135814(eq[4, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A135810.P2550715166365450559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135810.P2550715166365450559

namespace A135810

/-- `A135814(eq[4, n-C(∑[char[∑[n]]], 2)])` -/
def P2550715166365450559.Spec : Prop :=
  ∀ n, P2550715166365450559.a n = A135810 n

end A135810

/-!
# A135811: Number of coincidence-free length n lists of 5-tuples with all numbers 1..n in tuple position k, for k=1..5.

The programs for A135811, the canonical program `A135811.P947172886258310799` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135811 has offset 0).

The definition of A135811 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135811.P947172886258310799

`∑{#}[n, (-1)^(n-#)*C(n, #)*#!^5]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135811

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*#!^5]` -/
def P947172886258310799.Spec : Prop :=
  ∀ n, P947172886258310799.a n = (A135811 n : ℚ)

end A135811

/-!
# A135812: Number of coincidence-free length n lists of 6-tuples with all numbers 1..n in tuple position k, for k=1..6.

The programs for A135812, the canonical program `A135812.P12478355786269497575` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135812 has offset 0).

The definition of A135812 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135812.P12478355786269497575

`∑{#}[n, (-1)^(n-#)*C(n, #)*#!^6]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135812

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*#!^6]` -/
def P12478355786269497575.Spec : Prop :=
  ∀ n, P12478355786269497575.a n = (A135812 n : ℚ)

end A135812

/-!
# A135813: Number of coincidence-free length n lists of 7-tuples with all numbers 1..n in tuple position k, for k=1..7.

The programs for A135813, the canonical program `A135813.P14747651954176078008` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135813 has offset 0).

The definition of A135813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135813.P14747651954176078008

`∑{#}[n, (-1)^(n-#)*C(n, #)*#!^7]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135813

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*#!^7]` -/
def P14747651954176078008.Spec : Prop :=
  ∀ n, P14747651954176078008.a n = (A135813 n : ℚ)

end A135813

/-!
# A135814: Triangle of numbers of coincidence-free length n-m lists of m-tuples with all numbers 1,...,n-m in tuple position k, for k=1..m.

The programs for A135814, there is no canonical definition to state claims against.
-/

/-! ## A135814.P4721923434371768089

`A192262(A363044(n+2))`
-/

namespace A135814.P4721923434371768089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192262 (A363044 (n + 2)).toNat

end

end A135814.P4721923434371768089

/-! ## A135814.P16997446886940940364

`A232462(2^A276995(n))`
-/

namespace A135814.P16997446886940940364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232462 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A276995 n : ℤ))).toNat

end

end A135814.P16997446886940940364

/-! ## A135814.P6304784705601928543

`A276995(n)+A016389(A022166(n))`
-/

namespace A135814.P6304784705601928543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276995 n + A016389 (A022166 n).toNat

end

end A135814.P6304784705601928543

/-! ## A135814.P7916547658596692929

`A357681(n+1)^A164995(A000108(ceil(n/2)))`
-/

namespace A135814.P7916547658596692929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357681 (n + 1) : ℚ) ^ (A164995 (A000108 ⌈(n : ℚ) / 2⌉.toNat).toNat : ℤ)

end

end A135814.P7916547658596692929

/-! ## A135814.P10749383460092646350

`A098489(A269948(n+1))`
-/

namespace A135814.P10749383460092646350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098489 (A269948 (n + 1)).toNat

end

end A135814.P10749383460092646350

/-!
# A135815: Row sums of triangle A135814 (number of coincidence-free m-tuple lists of length n).

The programs for A135815, there is no canonical definition to state claims against.
-/

/-! ## A135815.P3333810324135836066

`A005117(∏{p}[A072882(n+1), #])`
-/

namespace A135815.P3333810324135836066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A135815.P3333810324135836066

/-! ## A135815.P18423201113057116436

`A064839(or(A033638(n), A355843(n)))`
-/

namespace A135815.P18423201113057116436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064839 (Int.lor (A033638 n) (A355843 n)).toNat

end

end A135815.P18423201113057116436

/-! ## A135815.P17019130807004891122

`A005117(A054106(n)*A064098(n+1))`
-/

namespace A135815.P17019130807004891122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A054106 n * A064098 (n + 1)).toNat

end

end A135815.P17019130807004891122

/-!
# A135816: Alternating row sums of triangle A135814 (number of coincidence-free m-tuple lists of length n).

The programs for A135816, there is no canonical definition to state claims against.
-/

/-! ## A135816.P6943200856837343693

`A292469(A327165(n+1)+A308346(n))`
-/

namespace A135816.P6943200856837343693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292469 (A327165 (n + 1) + A308346 n).toNat

end

end A135816.P6943200856837343693

/-!
# A135817: Length of Wythoff representation of n.

The programs for A135817, the canonical program `A135817.P17602955867649866332` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135817 has offset 1).

The definition of A135817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135817.P10776531949724790815

`a(abs(Δ[(n-1)*floor((n+1)/ϕ)]-n))+1` with `a(0)=1, a(1)=1`
-/

namespace A135817.P10776531949724790815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ⌊(n + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a |f1 (n + 1) - f1 n - (n : ℤ)|.toNat + 1

end

end A135817.P10776531949724790815

namespace A135817

/-- `a(abs(Δ[(n-1)*floor((n+1)/ϕ)]-n))+1` -/
def P10776531949724790815.Spec : Prop :=
  ∀ n, (P10776531949724790815.a n : ℤ) = A135817 (n + 1)

end A135817

/-! ## A135817.P17602955867649866332

`A102364(n)+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A135817

/-- `A102364(n)+1` -/
def P17602955867649866332.Spec : Prop :=
  ∀ n, P17602955867649866332.a n = A135817 (n + 1)

theorem P17602955867649866332.correct : P17602955867649866332.Spec := by
  intro n
  simp only [A135817, Nat.add_sub_cancel]

end A135817

/-! ## A135817.P18298501805179495521

`A135818(n+1)+A007895(n)`
-/

namespace A135817.P18298501805179495521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135818 (n + 1) + A007895 n

end

end A135817.P18298501805179495521

namespace A135817

/-- `A135818(n+1)+A007895(n)` -/
def P18298501805179495521.Spec : Prop :=
  ∀ n, P18298501805179495521.a n = A135817 (n + 1)

theorem P18298501805179495521.correct : P18298501805179495521.Spec := by
  intro n
  simp only [A135817, Nat.add_sub_cancel, A135817.P18298501805179495521.a, A135817.P17602955867649866332.a, A007895, A007895.P13159574906702943091.a, A102364, A102364.P14950148720451937594.a, A135818, A135818.P5231028092520313342.a, A010056, A010056.P4215187913350317449.f1, A010056.P4215187913350317449.a, A072649, A072649.P9617326913925617377.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A108852, A108852.P14747039251510576692.a, A003849, A003849.P15070805603138295355.a, A022341, A022341.P2847779761458071812.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135817

/-! ## A135817.P10036969089606217120

`A212278(n)+A213911(n)+1`
-/

namespace A135817.P10036969089606217120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212278 n + (A213911 n + 1)

end

end A135817.P10036969089606217120

namespace A135817

/-- `A212278(n)+A213911(n)+1` -/
def P10036969089606217120.Spec : Prop :=
  ∀ n, P10036969089606217120.a n = A135817 (n + 1)

theorem P10036969089606217120.correct : P10036969089606217120.Spec := by
  intro n
  simp only [A135817, Nat.add_sub_cancel, A135817.P10036969089606217120.a, A135817.P17602955867649866332.a, A102364, A102364.P14950148720451937594.a, A212278, A212278.P9636615895971734323.a, A213911, A213911.P10704289243874186372.a, A003849, A003849.P15070805603138295355.a, A007895, A007895.P13159574906702943091.a, A010056, A010056.P4215187913350317449.f1, A010056.P4215187913350317449.a, A072649, A072649.P9617326913925617377.a, A108852, A108852.P14747039251510576692.a, A143299, A143299.P15563677956109418683.a, A022341, A022341.P2847779761458071812.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135817

/-! ## A135817.P17464757507301357763

`A131234(n+1)-A007895(n)`
-/

namespace A135817.P17464757507301357763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131234 (n + 1) - A007895 n

end

end A135817.P17464757507301357763

namespace A135817

/-- `A131234(n+1)-A007895(n)` -/
def P17464757507301357763.Spec : Prop :=
  ∀ n, P17464757507301357763.a n = A135817 (n + 1)

end A135817

/-! ## A135817.P6017390216842765378

`∑[char[A000045(n)]]-A007895(n)`
-/

namespace A135817.P6017390216842765378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A007895 n

end

end A135817.P6017390216842765378

namespace A135817

/-- `∑[char[A000045(n)]]-A007895(n)` -/
def P6017390216842765378.Spec : Prop :=
  ∀ n, P6017390216842765378.a n = A135817 (n + 1)

end A135817

/-! ## A135817.P7178732304964493887

`A131234(n+1)+1-A143299(n+1)`
-/

namespace A135817.P7178732304964493887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131234 (n + 1) + (1 - A143299 (n + 1))

end

end A135817.P7178732304964493887

namespace A135817

/-- `A131234(n+1)+1-A143299(n+1)` -/
def P7178732304964493887.Spec : Prop :=
  ∀ n, P7178732304964493887.a n = A135817 (n + 1)

end A135817

/-! ## A135817.P18031418455865011621

`A290251(A118113(n))`
-/

namespace A135817.P18031418455865011621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (A118113 n).toNat

end

end A135817.P18031418455865011621

namespace A135817

/-- `A290251(A118113(n))` -/
def P18031418455865011621.Spec : Prop :=
  ∀ n, P18031418455865011621.a n = A135817 (n + 1)

end A135817

/-! ## A135817.P609494540829731148

`A070939(A048679(n))`
-/

namespace A135817.P609494540829731148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A048679 n).toNat

end

end A135817.P609494540829731148

namespace A135817

/-- `A070939(A048679(n))` -/
def P609494540829731148.Spec : Prop :=
  ∀ n, P609494540829731148.a n = A135817 (n + 1)

end A135817

/-! ## A135817.P9188273881022717641

`A080791(eq[n, and(n, 3*n)])+1`
-/

namespace A135817.P9188273881022717641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A135817.P9188273881022717641

namespace A135817

/-- `A080791(eq[n, and(n, 3*n)])+1` -/
def P9188273881022717641.Spec : Prop :=
  ∀ n, P9188273881022717641.a n = A135817 (n + 1)

end A135817

/-! ## A135817.P13049256253633630775

`A008687(A003714(n)+1)`
-/

namespace A135817.P13049256253633630775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A003714 n + 1).toNat

end

end A135817.P13049256253633630775

namespace A135817

/-- `A008687(A003714(n)+1)` -/
def P13049256253633630775.Spec : Prop :=
  ∀ n, P13049256253633630775.a n = A135817 (n + 1)

end A135817

/-! ## A135817.P8839201982951604046

`A070939(A227351(n))`
-/

namespace A135817.P8839201982951604046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A227351 n).toNat

end

end A135817.P8839201982951604046

namespace A135817

/-- `A070939(A227351(n))` -/
def P8839201982951604046.Spec : Prop :=
  ∀ n, P8839201982951604046.a n = A135817 (n + 1)

end A135817

/-! ## A135817.P18013146698599632938

`A346633(A295897(n+1))+1`
-/

namespace A135817.P18013146698599632938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346633 (A295897 (n + 1)).toNat + 1

end

end A135817.P18013146698599632938

namespace A135817

/-- `A346633(A295897(n+1))+1` -/
def P18013146698599632938.Spec : Prop :=
  ∀ n, P18013146698599632938.a n = A135817 (n + 1)

end A135817

/-! ## A135817.P12836611494037120357

`A023416(record[and(2*n, -n)])`
-/

namespace A135817.P12836611494037120357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135817.P12836611494037120357

namespace A135817

/-- `A023416(record[and(2*n, -n)])` -/
def P12836611494037120357.Spec : Prop :=
  ∀ n, P12836611494037120357.a n = A135817 (n + 1)

end A135817

/-! ## A135817.P10636052412561190659

`A023416(2*record[xor(n, 2*n)/3])`
-/

namespace A135817.P10636052412561190659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (SequenceMachineLib.roundAway (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A135817.P10636052412561190659

namespace A135817

/-- `A023416(2*record[xor(n, 2*n)/3])` -/
def P10636052412561190659.Spec : Prop :=
  ∀ n, P10636052412561190659.a n = A135817 (n + 1)

end A135817

/-! ## A135817.P11690984801421900055

`A023416(2*record[n-and(n, 2*n)])`
-/

namespace A135817.P11690984801421900055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135817.P11690984801421900055

namespace A135817

/-- `A023416(2*record[n-and(n, 2*n)])` -/
def P11690984801421900055.Spec : Prop :=
  ∀ n, P11690984801421900055.a n = A135817 (n + 1)

end A135817

/-! ## A135817.P18345473383923936988

`A023416(2*record[abs(or(2*n, -n))])`
-/

namespace A135817.P18345473383923936988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (2 * n : ℤ) (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135817.P18345473383923936988

namespace A135817

/-- `A023416(2*record[abs(or(2*n, -n))])` -/
def P18345473383923936988.Spec : Prop :=
  ∀ n, P18345473383923936988.a n = A135817 (n + 1)

end A135817

/-! ## A135817.P2249375426681815914

`A023416(record[2*(or(n, floor(n/2))-n)])`
-/

namespace A135817.P2249375426681815914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135817.P2249375426681815914

namespace A135817

/-- `A023416(record[2*(or(n, floor(n/2))-n)])` -/
def P2249375426681815914.Spec : Prop :=
  ∀ n, P2249375426681815914.a n = A135817 (n + 1)

end A135817

/-! ## A135817.P8327263070048187610

`A023416(A022340(n))`
-/

namespace A135817.P8327263070048187610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A022340 n).toNat

end

end A135817.P8327263070048187610

namespace A135817

/-- `A023416(A022340(n))` -/
def P8327263070048187610.Spec : Prop :=
  ∀ n, P8327263070048187610.a n = A135817 (n + 1)

end A135817

/-! ## A135817.P5076690559259832814

`A008687(A022340(n)+2)`
-/

namespace A135817.P5076690559259832814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A022340 n + 2).toNat

end

end A135817.P5076690559259832814

namespace A135817

/-- `A008687(A022340(n)+2)` -/
def P5076690559259832814.Spec : Prop :=
  ∀ n, P5076690559259832814.a n = A135817 (n + 1)

end A135817

/-!
# A135818: Number of 1's (or A's) in the Wythoff representation of n.

The programs for A135818, the canonical program `A135818.P5231028092520313342` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135818 has offset 1).

The definition of A135818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135818.P17414226114251153119

`A212278(n)+Δ[ceil((n+1)/ϕ)]`
-/

namespace A135818.P17414226114251153119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212278 n + (f1 (n + 1) - f1 n)

end

end A135818.P17414226114251153119

namespace A135818

/-- `A212278(n)+Δ[ceil((n+1)/ϕ)]` -/
def P17414226114251153119.Spec : Prop :=
  ∀ n, P17414226114251153119.a n = A135818 (n + 1)

end A135818

/-! ## A135818.P5231028092520313342

`A102364(n)+1-A007895(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A135818

/-- `A102364(n)+1-A007895(n)` -/
def P5231028092520313342.Spec : Prop :=
  ∀ n, P5231028092520313342.a n = A135818 (n + 1)

theorem P5231028092520313342.correct : P5231028092520313342.Spec := by
  intro n
  simp only [A135818, Nat.add_sub_cancel]

end A135818

/-! ## A135818.P17057077970252061630

`A135817(n+1)-A007895(n)`
-/

namespace A135818.P17057077970252061630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135817 (n + 1) - A007895 n

end

end A135818.P17057077970252061630

namespace A135818

/-- `A135817(n+1)-A007895(n)` -/
def P17057077970252061630.Spec : Prop :=
  ∀ n, P17057077970252061630.a n = A135818 (n + 1)

theorem P17057077970252061630.correct : P17057077970252061630.Spec := by
  intro n
  simp only [A135818, Nat.add_sub_cancel, A135818.P17057077970252061630.a, A135818.P5231028092520313342.a, A007895, A007895.P13159574906702943091.a, A102364, A102364.P14950148720451937594.a, A135817, A135817.P17602955867649866332.a, A010056, A010056.P4215187913350317449.f1, A010056.P4215187913350317449.a, A072649, A072649.P9617326913925617377.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A108852, A108852.P14747039251510576692.a, A003849, A003849.P15070805603138295355.a, A022341, A022341.P2847779761458071812.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135818

/-! ## A135818.P12605806987037986934

`A131234(n+1)-2*A007895(n)`
-/

namespace A135818.P12605806987037986934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131234 (n + 1) - 2 * A007895 n

end

end A135818.P12605806987037986934

namespace A135818

/-- `A131234(n+1)-2*A007895(n)` -/
def P12605806987037986934.Spec : Prop :=
  ∀ n, P12605806987037986934.a n = A135818 (n + 1)

end A135818

/-! ## A135818.P14433060606451725483

`1-A145037(record[xor(n, 2*n)/3])`
-/

namespace A135818.P14433060606451725483
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A145037 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A135818.P14433060606451725483

namespace A135818

/-- `1-A145037(record[xor(n, 2*n)/3])` -/
def P14433060606451725483.Spec : Prop :=
  ∀ n, P14433060606451725483.a n = A135818 (n + 1)

end A135818

/-! ## A135818.P9462404822058313662

`1-A145037(A003714(n))`
-/

namespace A135818.P9462404822058313662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A145037 (A003714 n).toNat

end

end A135818.P9462404822058313662

namespace A135818

/-- `1-A145037(A003714(n))` -/
def P9462404822058313662.Spec : Prop :=
  ∀ n, P9462404822058313662.a n = A135818 (n + 1)

end A135818

/-! ## A135818.P3814959608245646586

`A023416(A048679(n))`
-/

namespace A135818.P3814959608245646586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A048679 n).toNat

end

end A135818.P3814959608245646586

namespace A135818

/-- `A023416(A048679(n))` -/
def P3814959608245646586.Spec : Prop :=
  ∀ n, P3814959608245646586.a n = A135818 (n + 1)

end A135818

/-! ## A135818.P13210124427696316815

`A037861(record[and(2*n, -n)])`
-/

namespace A135818.P13210124427696316815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135818.P13210124427696316815

namespace A135818

/-- `A037861(record[and(2*n, -n)])` -/
def P13210124427696316815.Spec : Prop :=
  ∀ n, P13210124427696316815.a n = A135818 (n + 1)

end A135818

/-! ## A135818.P14552161490774815301

`A037861(2*lt[and(n, 2*n), 1])`
-/

namespace A135818.P14552161490774815301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A135818.P14552161490774815301

namespace A135818

/-- `A037861(2*lt[and(n, 2*n), 1])` -/
def P14552161490774815301.Spec : Prop :=
  ∀ n, P14552161490774815301.a n = A135818 (n + 1)

end A135818

/-! ## A135818.P15655594079292823752

`A037861(2*record[xor(n, 2*n)/3])`
-/

namespace A135818.P15655594079292823752
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (SequenceMachineLib.roundAway (2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A135818.P15655594079292823752

namespace A135818

/-- `A037861(2*record[xor(n, 2*n)/3])` -/
def P15655594079292823752.Spec : Prop :=
  ∀ n, P15655594079292823752.a n = A135818 (n + 1)

end A135818

/-! ## A135818.P16443305618346444692

`A037861(A022340(n))`
-/

namespace A135818.P16443305618346444692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A022340 n).toNat

end

end A135818.P16443305618346444692

namespace A135818

/-- `A037861(A022340(n))` -/
def P16443305618346444692.Spec : Prop :=
  ∀ n, P16443305618346444692.a n = A135818 (n + 1)

end A135818

/-! ## A135818.P3342313556084935534

`A037861(record[A213064(n)])`
-/

namespace A135818.P3342313556084935534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135818.P3342313556084935534

namespace A135818

/-- `A037861(record[A213064(n)])` -/
def P3342313556084935534.Spec : Prop :=
  ∀ n, P3342313556084935534.a n = A135818 (n + 1)

end A135818

/-! ## A135818.P13348868371780350668

`A037861(A118113(n)-1)`
-/

namespace A135818.P13348868371780350668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (A118113 n - 1).toNat

end

end A135818.P13348868371780350668

namespace A135818

/-- `A037861(A118113(n)-1)` -/
def P13348868371780350668.Spec : Prop :=
  ∀ n, P13348868371780350668.a n = A135818 (n + 1)

end A135818

/-! ## A135818.P16973527620979439255

`A037861(2*A003714(n))`
-/

namespace A135818.P16973527620979439255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 (2 * A003714 n).toNat

end

end A135818.P16973527620979439255

namespace A135818

/-- `A037861(2*A003714(n))` -/
def P16973527620979439255.Spec : Prop :=
  ∀ n, P16973527620979439255.a n = A135818 (n + 1)

end A135818

/-! ## A135818.P16233279325183175082

`A023416(record[xor(n, 2*n)])`
-/

namespace A135818.P16233279325183175082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A135818.P16233279325183175082

namespace A135818

/-- `A023416(record[xor(n, 2*n)])` -/
def P16233279325183175082.Spec : Prop :=
  ∀ n, P16233279325183175082.a n = A135818 (n + 1)

end A135818

/-! ## A135818.P4922799030337274489

`A023416(3*record[n-and(n, 2*n)])`
-/

namespace A135818.P4922799030337274489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (2 * n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135818.P4922799030337274489

namespace A135818

/-- `A023416(3*record[n-and(n, 2*n)])` -/
def P4922799030337274489.Spec : Prop :=
  ∀ n, P4922799030337274489.a n = A135818 (n + 1)

end A135818

/-! ## A135818.P1680133613103558012

`A023416(3*record[gcd(2*n, or(n, 2*n))])`
-/

namespace A135818.P1680133613103558012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (Nat.lor n (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A135818.P1680133613103558012

namespace A135818

/-- `A023416(3*record[gcd(2*n, or(n, 2*n))])` -/
def P1680133613103558012.Spec : Prop :=
  ∀ n, P1680133613103558012.a n = A135818 (n + 1)

end A135818

/-! ## A135818.P13870344029063076624

`A023416(A277335(n))`
-/

namespace A135818.P13870344029063076624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A277335 n).toNat

end

end A135818.P13870344029063076624

namespace A135818

/-- `A023416(A277335(n))` -/
def P13870344029063076624.Spec : Prop :=
  ∀ n, P13870344029063076624.a n = A135818 (n + 1)

end A135818

/-! ## A135818.P18438151615322997959

`A023416(record[A048724(n)])`
-/

namespace A135818.P18438151615322997959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A135818.P18438151615322997959

namespace A135818

/-- `A023416(record[A048724(n)])` -/
def P18438151615322997959.Spec : Prop :=
  ∀ n, P18438151615322997959.a n = A135818 (n + 1)

end A135818

/-! ## A135818.P522316153701284947

`A023416(3*A003714(n))`
-/

namespace A135818.P522316153701284947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (3 * A003714 n).toNat

end

end A135818.P522316153701284947

namespace A135818

/-- `A023416(3*A003714(n))` -/
def P522316153701284947.Spec : Prop :=
  ∀ n, P522316153701284947.a n = A135818 (n + 1)

end A135818

/-!
# A135820: Finite sequence of moves needed to flip the top uf, ub edges in a 3 X 3 X 3 Rubik's Cube.

The programs for A135820, there is no canonical definition to state claims against.
-/

/-! ## A135820.P1867485951985336219

`4*a(n-3)` with `a(0)=14, a(1)=14, a(2)=98`
-/

namespace A135820.P1867485951985336219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [14, 14, 98] fun n a =>
  4 * a (n - 3)

end

end A135820.P1867485951985336219

/-!
# A135823: Moves to permute (ufr,dfr)(ubr,ubl) corners in a 3 X 3 X 3 Rubik's Cube.

The programs for A135823, there is no canonical definition to state claims against.
-/

/-! ## A135823.P15893181651671681487

`21^3^(n%2)`
-/

namespace A135823.P15893181651671681487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 ^ 3 ^ (n % 2)

end

end A135823.P15893181651671681487

/-!
# A135828: Expansion of psi(x^2)^8 * (psi(x)^8 + psi(-x)^8) / 2 in powers of x^2 where psi() is a Ramanujan theta function.

The programs for A135828, there is no canonical definition to state claims against.
-/

/-! ## A135828.P513089275814452079

`A014805(2*n+1)/16`
-/

namespace A135828.P513089275814452079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014805 (2 * n + 1) : ℚ) / 16

end

end A135828.P513089275814452079

/-! ## A135828.P9155801811784412244

`record[ratio[A014805(A093178(n))]]`
-/

namespace A135828.P9155801811784412244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014805 (A093178 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135828.P9155801811784412244

/-!
# A135829: a(n) = F(n)*a(n-1) + a(n-2) with a(0) = 0, a(1) = 1.

The programs for A135829, the canonical program `A135829.P18037864830820649888` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135829 has offset 0).

The definition of A135829 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)*a(n-1)+a(n-2)` (program `A135829.P18037864830820649888`, by `A135829.P18037864830820649888.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135829.P18037864830820649888

`A000045(n)*a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135829

/-- `A000045(n)*a(n-1)+a(n-2)` -/
def P18037864830820649888.Spec : Prop :=
  ∀ n, P18037864830820649888.a n = A135829 n

theorem P18037864830820649888.correct : P18037864830820649888.Spec := by
  intro n
  simp only [A135829]

end A135829

/-! ## A135829.P2753875294377953438

`A320279(A018089(n))`
-/

namespace A135829.P2753875294377953438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320279 (A018089 n).toNat

end

end A135829.P2753875294377953438

namespace A135829

/-- `A320279(A018089(n))` -/
def P2753875294377953438.Spec : Prop :=
  ∀ n, P2753875294377953438.a n = A135829 n

end A135829

/-!
# A135830: A000012(signed) * A049310 * A000012.

The programs for A135830, there is no canonical definition to state claims against.
-/

/-! ## A135830.P16504690726068589871

`abs(A131331(comp[∑[n]]))`
-/

namespace A135830.P16504690726068589871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131331 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A135830.P16504690726068589871

/-! ## A135830.P4047444945645107196

`A138554(A131331(comp[∑[n]])²)`
-/

namespace A135830.P4047444945645107196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 (A131331 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2).toNat

end

end A135830.P4047444945645107196

/-! ## A135830.P3246781384574544963

`A097807(n)*A131331(comp[∑[n]])`
-/

namespace A135830.P3246781384574544963
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A131331 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A135830.P3246781384574544963

/-! ## A135830.P5748701510732069004

`A131331(A014132(n+1))/A097807(n)`
-/

namespace A135830.P5748701510732069004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131331 (A014132 (n + 1)).toNat : ℚ) / (A097807 n : ℚ)

end

end A135830.P5748701510732069004

/-! ## A135830.P7366780526768911886

`∑{d}[A131331(A014132(n+1)), A000010(#)]`
-/

namespace A135830.P7366780526768911886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131331 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A135830.P7366780526768911886

/-! ## A135830.P17378183144515287425

`abs(A131331(A014132(n+1))%A000040(n+1))`
-/

namespace A135830.P17378183144515287425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A131331 (A014132 (n + 1)).toNat) (A000040 (n + 1))|

end

end A135830.P17378183144515287425

/-!
# A135831: Independence number of commuting graph of symmetric group S_n.

The programs for A135831, there is no canonical definition to state claims against.
-/

/-! ## A135831.P1608326465666325995

`∑{d}[gcd(n+1, C(5, n²)), A145453(#)]`
-/

namespace A135831.P1608326465666325995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (Nat.choose 5 (n ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A145453 d

end

end A135831.P1608326465666325995

/-! ## A135831.P4685047197631692545

`A212606(∑{d}[∏{p}[n+1, #], (n+1)/#])%n!`
-/

namespace A135831.P4685047197631692545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212606 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ))).toNat) (Nat.factorial n : ℤ)

end

end A135831.P4685047197631692545

/-! ## A135831.P13710245929934226614

`A237118(A336139(n))`
-/

namespace A135831.P13710245929934226614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237118 (A336139 n).toNat

end

end A135831.P13710245929934226614

/-!
# A135832: Irregular triangle of Section I primes. Row n contains primes p with 2^n < p < 2^(n+1) and phi^n(p) = 2, where phi^n means n iterations of Euler's totient function.

The programs for A135832, the canonical program `A135832.P7134565724259816016` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135832 has offset 1).

The definition of A135832 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 857 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135832.P7134565724259816016

`p?[A005239(n+1)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A135832

/-- `p?[A005239(n+1)]` -/
def P7134565724259816016.Spec : Prop :=
  ∀ n, P7134565724259816016.a n = A135832 (n + 1)

theorem P7134565724259816016.correct : P7134565724259816016.Spec := by
  intro n
  simp only [A135832, Nat.add_sub_cancel]

end A135832

/-! ## A135832.P5268728997628167101

`∩[A005239(n+1), A049551(n+1)]`
-/

namespace A135832.P5268728997628167101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135832.P5268728997628167101

namespace A135832

/-- `∩[A005239(n+1), A049551(n+1)]` -/
def P5268728997628167101.Spec : Prop :=
  ∀ n, (P5268728997628167101.a n : ℤ) = A135832 (n + 1)

end A135832

/-! ## A135832.P17703019755898916741

`∩[A005239(n+1), A049569(n+1)]`
-/

namespace A135832.P17703019755898916741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135832.P17703019755898916741

namespace A135832

/-- `∩[A005239(n+1), A049569(n+1)]` -/
def P17703019755898916741.Spec : Prop :=
  ∀ n, (P17703019755898916741.a n : ℤ) = A135832 (n + 1)

end A135832

/-! ## A135832.P1943361591923246554

`∩[A005239(n+1), A058853(n+1)]`
-/

namespace A135832.P1943361591923246554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135832.P1943361591923246554

namespace A135832

/-- `∩[A005239(n+1), A058853(n+1)]` -/
def P1943361591923246554.Spec : Prop :=
  ∀ n, (P1943361591923246554.a n : ℤ) = A135832 (n + 1)

end A135832

/-! ## A135832.P18437771753076326310

`∩[A000040(n+1), A005239(n+1)]`
-/

namespace A135832.P18437771753076326310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135832.P18437771753076326310

namespace A135832

/-- `∩[A000040(n+1), A005239(n+1)]` -/
def P18437771753076326310.Spec : Prop :=
  ∀ n, (P18437771753076326310.a n : ℤ) = A135832 (n + 1)

end A135832

/-! ## A135832.P17026722352848532575

`∩[A005239(n+1), A006005(n+1)]`
-/

namespace A135832.P17026722352848532575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135832.P17026722352848532575

namespace A135832

/-- `∩[A005239(n+1), A006005(n+1)]` -/
def P17026722352848532575.Spec : Prop :=
  ∀ n, (P17026722352848532575.a n : ℤ) = A135832 (n + 1)

end A135832

/-! ## A135832.P13952089168979284128

`∩[A005239(n+1), A008578(n+1)]`
-/

namespace A135832.P13952089168979284128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135832.P13952089168979284128

namespace A135832

/-- `∩[A005239(n+1), A008578(n+1)]` -/
def P13952089168979284128.Spec : Prop :=
  ∀ n, (P13952089168979284128.a n : ℤ) = A135832 (n + 1)

end A135832

/-! ## A135832.P17668796490554361669

`∩[A005239(n+1), A046022(n+1)]`
-/

namespace A135832.P17668796490554361669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135832.P17668796490554361669

namespace A135832

/-- `∩[A005239(n+1), A046022(n+1)]` -/
def P17668796490554361669.Spec : Prop :=
  ∀ n, (P17668796490554361669.a n : ℤ) = A135832 (n + 1)

end A135832

/-! ## A135832.P1435210578413736550

`∩[A005239(n+1), A051948(n+1)]`
-/

namespace A135832.P1435210578413736550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135832.P1435210578413736550

namespace A135832

/-- `∩[A005239(n+1), A051948(n+1)]` -/
def P1435210578413736550.Spec : Prop :=
  ∀ n, (P1435210578413736550.a n : ℤ) = A135832 (n + 1)

end A135832

/-! ## A135832.P17262769840420035361

`∩[A005239(n+1), A053577(n+1)]`
-/

namespace A135832.P17262769840420035361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135832.P17262769840420035361

namespace A135832

/-- `∩[A005239(n+1), A053577(n+1)]` -/
def P17262769840420035361.Spec : Prop :=
  ∀ n, (P17262769840420035361.a n : ℤ) = A135832 (n + 1)

end A135832

/-! ## A135832.P8453329217598178671

`∩[A005239(n+1), A053813(n+1)]`
-/

namespace A135832.P8453329217598178671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135832.P8453329217598178671

namespace A135832

/-- `∩[A005239(n+1), A053813(n+1)]` -/
def P8453329217598178671.Spec : Prop :=
  ∀ n, (P8453329217598178671.a n : ℤ) = A135832 (n + 1)

end A135832

/-! ## A135832.P13858716198744880796

`∩[A005239(n+1), A065091(n+1)]`
-/

namespace A135832.P13858716198744880796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135832.P13858716198744880796

namespace A135832

/-- `∩[A005239(n+1), A065091(n+1)]` -/
def P13858716198744880796.Spec : Prop :=
  ∀ n, (P13858716198744880796.a n : ℤ) = A135832 (n + 1)

end A135832

/-! ## A135832.P4604963204698350705

`∩[A005239(n+1), A066050(n+1)]`
-/

namespace A135832.P4604963204698350705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135832.P4604963204698350705

namespace A135832

/-- `∩[A005239(n+1), A066050(n+1)]` -/
def P4604963204698350705.Spec : Prop :=
  ∀ n, (P4604963204698350705.a n : ℤ) = A135832 (n + 1)

end A135832

/-! ## A135832.P13489498192788566570

`∩[A005239(n+1), A066542(n+1)]`
-/

namespace A135832.P13489498192788566570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135832.P13489498192788566570

namespace A135832

/-- `∩[A005239(n+1), A066542(n+1)]` -/
def P13489498192788566570.Spec : Prop :=
  ∀ n, (P13489498192788566570.a n : ℤ) = A135832 (n + 1)

end A135832

/-! ## A135832.P4284976810072012397

`∩[A005239(n+1), A093515(n+1)]`
-/

namespace A135832.P4284976810072012397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135832.P4284976810072012397

namespace A135832

/-- `∩[A005239(n+1), A093515(n+1)]` -/
def P4284976810072012397.Spec : Prop :=
  ∀ n, (P4284976810072012397.a n : ℤ) = A135832 (n + 1)

end A135832

/-! ## A135832.P4159417114345828790

`∩[A005239(n+1), A066191(n+1)]`
-/

namespace A135832.P4159417114345828790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A135832.P4159417114345828790

namespace A135832

/-- `∩[A005239(n+1), A066191(n+1)]` -/
def P4159417114345828790.Spec : Prop :=
  ∀ n, (P4159417114345828790.a n : ℤ) = A135832 (n + 1)

end A135832

/-! ## A135832.P1432002526062633737

`filter[A005239(n+1), A010051(#)]`
-/

namespace A135832.P1432002526062633737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A135832.P1432002526062633737

namespace A135832

/-- `filter[A005239(n+1), A010051(#)]` -/
def P1432002526062633737.Spec : Prop :=
  ∀ n, P1432002526062633737.a n = A135832 (n + 1)

end A135832

/-! ## A135832.P17844311485284444238

`filter[A005239(n+1), A358751(#)]`
-/

namespace A135832.P17844311485284444238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358751 (f1 j).toNat = 1) n)

end

end A135832.P17844311485284444238

namespace A135832

/-- `filter[A005239(n+1), A358751(#)]` -/
def P17844311485284444238.Spec : Prop :=
  ∀ n, P17844311485284444238.a n = A135832 (n + 1)

end A135832

/-! ## A135832.P15619004883009833766

`filter[A005239(n+1), A358771(#)]`
-/

namespace A135832.P15619004883009833766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358771 (f1 j).toNat = 1) n)

end

end A135832.P15619004883009833766

namespace A135832

/-- `filter[A005239(n+1), A358771(#)]` -/
def P15619004883009833766.Spec : Prop :=
  ∀ n, P15619004883009833766.a n = A135832 (n + 1)

end A135832

/-! ## A135832.P17614895620724042229

`filter[A005239(n+1), A365716(#)]`
-/

namespace A135832.P17614895620724042229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A135832.P17614895620724042229

namespace A135832

/-- `filter[A005239(n+1), A365716(#)]` -/
def P17614895620724042229.Spec : Prop :=
  ∀ n, P17614895620724042229.a n = A135832 (n + 1)

end A135832

/-!
# A135835: Lower triangular matrix T with first column and diagonal (1,2,3,4,...,n,...) and otherwise satisfying T(i,j) = Sum_{k=1..j} T(i-j+1,k)*T(j,k), read by rows.

The programs for A135835, there is no canonical definition to state claims against.
-/

/-! ## A135835.P2159429080034449378

`xor(A135831(A256038(n)), A177696(n+1))`
-/

namespace A135835.P2159429080034449378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A135831 (A256038 n).toNat) (A177696 (n + 1))

end

end A135835.P2159429080034449378

/-! ## A135835.P18411874017019409357

`A085736(A177696(n+1))`
-/

namespace A135835.P18411874017019409357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085736 (A177696 (n + 1)).toNat

end

end A135835.P18411874017019409357

/-! ## A135835.P13574527641755619301

`A088725(A391484(n+1))`
-/

namespace A135835.P13574527641755619301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088725 (A391484 (n + 1)).toNat

end

end A135835.P13574527641755619301

/-! ## A135835.P1662777892411855667

`A393258(A132812(n+1))`
-/

namespace A135835.P1662777892411855667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393258 (A132812 (n + 1)).toNat

end

end A135835.P1662777892411855667

/-! ## A135835.P14402713378558759755

`A369464(A227263(n+1))`
-/

namespace A135835.P14402713378558759755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369464 (A227263 (n + 1)).toNat

end

end A135835.P14402713378558759755

/-!
# A135836: Column three of the triangular matrix in A135835.

The programs for A135836, the canonical program `A135836.P4324897787191560454` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135836 has offset 1).

The definition of A135836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135836.P4324897787191560454

`ogf((3+10x)/(1-4x+2x^2+10x^3-15x^4+6x^5))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135836

/-- `ogf((3+10x)/(1-4x+2x^2+10x^3-15x^4+6x^5))` -/
def P4324897787191560454.Spec : Prop :=
  ∀ n, P4324897787191560454.a n = A135836 (n + 1)

theorem P4324897787191560454.correct : P4324897787191560454.Spec := by
  intro n
  simp only [A135836, Nat.add_sub_cancel]

end A135836

/-! ## A135836.P8237286828632110641

`A135835(∑[n+3]+1)`
-/

namespace A135836.P8237286828632110641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135835 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A135836.P8237286828632110641

namespace A135836

/-- `A135835(∑[n+3]+1)` -/
def P8237286828632110641.Spec : Prop :=
  ∀ n, P8237286828632110641.a n = A135836 (n + 1)

end A135836

/-! ## A135836.P5468568709962536643

`and(-1, A135835(A167614(n+1)))`
-/

namespace A135836.P5468568709962536643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A135835 (A167614 (n + 1)).toNat)

end

end A135836.P5468568709962536643

namespace A135836

/-- `and(-1, A135835(A167614(n+1)))` -/
def P5468568709962536643.Spec : Prop :=
  ∀ n, P5468568709962536643.a n = A135836 (n + 1)

end A135836

/-! ## A135836.P5498028016094807424

`lcm(A000034(n), A135835(A167614(n+1)))`
-/

namespace A135836.P5498028016094807424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A135835 (A167614 (n + 1)).toNat)

end

end A135836.P5498028016094807424

namespace A135836

/-- `lcm(A000034(n), A135835(A167614(n+1)))` -/
def P5498028016094807424.Spec : Prop :=
  ∀ n, (P5498028016094807424.a n : ℤ) = A135836 (n + 1)

end A135836

/-! ## A135836.P8140126792679533828

`or(A000007(n), A135835(A167614(n+1)))`
-/

namespace A135836.P8140126792679533828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A135835 (A167614 (n + 1)).toNat)

end

end A135836.P8140126792679533828

namespace A135836

/-- `or(A000007(n), A135835(A167614(n+1)))` -/
def P8140126792679533828.Spec : Prop :=
  ∀ n, P8140126792679533828.a n = A135836 (n + 1)

end A135836

/-!
# A135837: A007318 * a triangle with (1, 2, 2, 4, 4, 8, 8, ...) in the main diagonal and the rest zeros.

The programs for A135837, the canonical program `A135837.P1451698449987845866` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135837 has offset 1).

The definition of A135837 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135837.P1451698449987845866

`A007318(n)*A060546(A002262(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A135837

/-- `A007318(n)*A060546(A002262(n))` -/
def P1451698449987845866.Spec : Prop :=
  ∀ n, P1451698449987845866.a n = A135837 (n + 1)

theorem P1451698449987845866.correct : P1451698449987845866.Spec := by
  intro n
  simp only [A135837, Nat.add_sub_cancel]

end A135837

/-! ## A135837.P2839511542228676036

`A013609(n)/A016116(A002262(n))`
-/

namespace A135837.P2839511542228676036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A016116 (A002262 n).toNat : ℚ)

end

end A135837.P2839511542228676036

namespace A135837

/-- `A013609(n)/A016116(A002262(n))` -/
def P2839511542228676036.Spec : Prop :=
  ∀ n, P2839511542228676036.a n = (A135837 (n + 1) : ℚ)

end A135837

/-! ## A135837.P8006588910040682500

`A007318(n)*A016116(A002260(n+1))`
-/

namespace A135837.P8006588910040682500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A016116 (A002260 (n + 1)).toNat

end

end A135837.P8006588910040682500

namespace A135837

/-- `A007318(n)*A016116(A002260(n+1))` -/
def P8006588910040682500.Spec : Prop :=
  ∀ n, P8006588910040682500.a n = A135837 (n + 1)

end A135837

/-! ## A135837.P17718194561677443775

`A007318(n)*A016116(A002262(n)+1)`
-/

namespace A135837.P17718194561677443775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A016116 (A002262 n + 1).toNat

end

end A135837.P17718194561677443775

namespace A135837

/-- `A007318(n)*A016116(A002262(n)+1)` -/
def P17718194561677443775.Spec : Prop :=
  ∀ n, P17718194561677443775.a n = A135837 (n + 1)

end A135837

/-! ## A135837.P5903818152850177282

`A013609(n)/A016116(A002260(n+1)-1)`
-/

namespace A135837.P5903818152850177282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013609 n : ℚ) / (A016116 (A002260 (n + 1) - 1).toNat : ℚ)

end

end A135837.P5903818152850177282

namespace A135837

/-- `A013609(n)/A016116(A002260(n+1)-1)` -/
def P5903818152850177282.Spec : Prop :=
  ∀ n, P5903818152850177282.a n = (A135837 (n + 1) : ℚ)

end A135837

/-! ## A135837.P16226830351538764922

`A208521(n+1)+A208906(n+2)-A208521(n+2)`
-/

namespace A135837.P16226830351538764922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208521 (n + 1) + (A208906 (n + 2) - A208521 (n + 2))

end

end A135837.P16226830351538764922

namespace A135837

/-- `A208521(n+1)+A208906(n+2)-A208521(n+2)` -/
def P16226830351538764922.Spec : Prop :=
  ∀ n, P16226830351538764922.a n = A135837 (n + 1)

end A135837

/-! ## A135837.P12284017893953496162

`A133214(n)/A117919(n+1)`
-/

namespace A135837.P12284017893953496162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133214 n : ℚ) / (A117919 (n + 1) : ℚ)

end

end A135837.P12284017893953496162

namespace A135837

/-- `A133214(n)/A117919(n+1)` -/
def P12284017893953496162.Spec : Prop :=
  ∀ n, P12284017893953496162.a n = (A135837 (n + 1) : ℚ)

end A135837

/-! ## A135837.P2615869195431474758

`A007318(n)*A059268(n)/A133388(A059268(n))`
-/

namespace A135837.P2615869195431474758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n * A059268 n : ℚ) / (A133388 (A059268 n).toNat : ℚ)

end

end A135837.P2615869195431474758

namespace A135837

/-- `A007318(n)*A059268(n)/A133388(A059268(n))` -/
def P2615869195431474758.Spec : Prop :=
  ∀ n, P2615869195431474758.a n = (A135837 (n + 1) : ℚ)

end A135837

/-! ## A135837.P5904396175813224921

`A007318(n)*A019554(A059268(n))`
-/

namespace A135837.P5904396175813224921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A019554 (A059268 n).toNat

end

end A135837.P5904396175813224921

namespace A135837

/-- `A007318(n)*A019554(A059268(n))` -/
def P5904396175813224921.Spec : Prop :=
  ∀ n, P5904396175813224921.a n = A135837 (n + 1)

end A135837

/-! ## A135837.P11772456331783860324

`A007318(n)*A133388(2*A059268(n))`
-/

namespace A135837.P11772456331783860324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A133388 (2 * A059268 n).toNat

end

end A135837.P11772456331783860324

namespace A135837

/-- `A007318(n)*A133388(2*A059268(n))` -/
def P11772456331783860324.Spec : Prop :=
  ∀ n, P11772456331783860324.a n = A135837 (n + 1)

end A135837

/-!
# A135838: Triangle read by rows: T(n,k) = 2^floor(n/2)*binomial(n-1,k-1).

The programs for A135838, the canonical program `A135838.P17072571587486554793` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135838 has offset 1).

The definition of A135838 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135838.P17072571587486554793

`2^floor((row(n)+1)/2)*C(row(n), col(n))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135838

/-- `2^floor((row(n)+1)/2)*C(row(n), col(n))` -/
def P17072571587486554793.Spec : Prop :=
  ∀ n, P17072571587486554793.a n = (A135838 (n + 1) : ℚ)

end A135838

/-! ## A135838.P15074898654047059787

`A007318(n)*A060546(A003056(n))`
-/

namespace A135838.P15074898654047059787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A060546 (A003056 n).toNat

end

end A135838.P15074898654047059787

namespace A135838

/-- `A007318(n)*A060546(A003056(n))` -/
def P15074898654047059787.Spec : Prop :=
  ∀ n, P15074898654047059787.a n = A135838 (n + 1)

end A135838

/-! ## A135838.P16161894635890110114

`A007318(n)*A016116(A130855(n))`
-/

namespace A135838.P16161894635890110114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A016116 (A130855 n).toNat

end

end A135838.P16161894635890110114

namespace A135838

/-- `A007318(n)*A016116(A130855(n))` -/
def P16161894635890110114.Spec : Prop :=
  ∀ n, P16161894635890110114.a n = A135838 (n + 1)

end A135838

/-! ## A135838.P11421216925100150581

`A038208(n)/A016116(A003056(n))`
-/

namespace A135838.P11421216925100150581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038208 n : ℚ) / (A016116 (A003056 n).toNat : ℚ)

end

end A135838.P11421216925100150581

namespace A135838

/-- `A038208(n)/A016116(A003056(n))` -/
def P11421216925100150581.Spec : Prop :=
  ∀ n, P11421216925100150581.a n = (A135838 (n + 1) : ℚ)

end A135838

/-! ## A135838.P15367864618776969827

`A007318(n)*A016116(A002024(n+1))`
-/

namespace A135838.P15367864618776969827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A016116 (A002024 (n + 1)).toNat

end

end A135838.P15367864618776969827

namespace A135838

/-- `A007318(n)*A016116(A002024(n+1))` -/
def P15367864618776969827.Spec : Prop :=
  ∀ n, P15367864618776969827.a n = A135838 (n + 1)

end A135838

/-! ## A135838.P481953870843531461

`A007318(n)*A016116(A003056(n)+1)`
-/

namespace A135838.P481953870843531461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A016116 (A003056 n + 1).toNat

end

end A135838.P481953870843531461

namespace A135838

/-- `A007318(n)*A016116(A003056(n)+1)` -/
def P481953870843531461.Spec : Prop :=
  ∀ n, P481953870843531461.a n = A135838 (n + 1)

end A135838

/-! ## A135838.P4243194810486321389

`A007318(n)*A019554(A137688(n))`
-/

namespace A135838.P4243194810486321389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A019554 (A137688 n).toNat

end

end A135838.P4243194810486321389

namespace A135838

/-- `A007318(n)*A019554(A137688(n))` -/
def P4243194810486321389.Spec : Prop :=
  ∀ n, P4243194810486321389.a n = A135838 (n + 1)

end A135838

/-! ## A135838.P8739796906080726221

`A007318(n)*A329888(A140513(n))`
-/

namespace A135838.P8739796906080726221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A329888 (A140513 n).toNat

end

end A135838.P8739796906080726221

namespace A135838

/-- `A007318(n)*A329888(A140513(n))` -/
def P8739796906080726221.Spec : Prop :=
  ∀ n, P8739796906080726221.a n = A135838 (n + 1)

end A135838

/-!
# A135839: 

The programs for A135839, there is no canonical definition to state claims against.
-/

/-! ## A135839.P8494456044635476085

`1-T(n-1,k)*T(n,k-1)` with `a(0)=1`
-/

namespace A135839.P8494456044635476085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - SequenceMachineLib.triUp a n * SequenceMachineLib.triLeft a n

end

end A135839.P8494456044635476085

/-! ## A135839.P5325722352205983319

`1-T(n-1,k)*T(n-2,k-1)` with `a(0)=1`
-/

namespace A135839.P5325722352205983319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - SequenceMachineLib.triUp a n * SequenceMachineLib.triUp2Left a n

end

end A135839.P5325722352205983319

/-! ## A135839.P6903006855295756641

`(T(n-1,k+1)-1)*T(n-2,k-1)+1` with `a(0)=1`
-/

namespace A135839.P6903006855295756641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUpRight a n - 1) * SequenceMachineLib.triUp2Left a n + 1

end

end A135839.P6903006855295756641

/-! ## A135839.P7769093141503676233

`1-(1-T(n-1,k+1))*T(n-2,k-1)` with `a(0)=1`
-/

namespace A135839.P7769093141503676233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (1 - SequenceMachineLib.triUpRight a n) * SequenceMachineLib.triUp2Left a n

end

end A135839.P7769093141503676233

/-! ## A135839.P3310839255048892851

`(T(n-2,k)-1)*T(n-2,k-1)+1` with `a(0)=1`
-/

namespace A135839.P3310839255048892851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUp2 a n - 1) * SequenceMachineLib.triUp2Left a n + 1

end

end A135839.P3310839255048892851

/-! ## A135839.P5595534892244086021

`1-(1-T(n-2,k))*T(n-2,k-1)` with `a(0)=1`
-/

namespace A135839.P5595534892244086021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (1 - SequenceMachineLib.triUp2 a n) * SequenceMachineLib.triUp2Left a n

end

end A135839.P5595534892244086021

/-! ## A135839.P17365911568180981561

`(T(n-2,k)-1)*T(n-1,k)+1` with `a(0)=1, a(1)=1`
-/

namespace A135839.P17365911568180981561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (SequenceMachineLib.triUp2 a n - 1) * SequenceMachineLib.triUp a n + 1

end

end A135839.P17365911568180981561

/-! ## A135839.P1864062136329315964

`1-(1-T(n-2,k))*T(n-1,k)` with `a(0)=1, a(1)=1`
-/

namespace A135839.P1864062136329315964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (1 - SequenceMachineLib.triUp2 a n) * SequenceMachineLib.triUp a n

end

end A135839.P1864062136329315964

/-! ## A135839.P2473479678547539432

`(T(n-1,k+1)-1)*T(n,k-1)+1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A135839.P2473479678547539432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (SequenceMachineLib.triUpRight a n - 1) * SequenceMachineLib.triLeft a n + 1

end

end A135839.P2473479678547539432

/-! ## A135839.P15823746332186030700

`1-(1-T(n-1,k+1))*T(n,k-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A135839.P15823746332186030700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  1 - (1 - SequenceMachineLib.triUpRight a n) * SequenceMachineLib.triLeft a n

end

end A135839.P15823746332186030700

/-! ## A135839.P4079237563450645037

`(T(n-2,k)-1)*T(n,k-1)+1` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A135839.P4079237563450645037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (SequenceMachineLib.triUp2 a n - 1) * SequenceMachineLib.triLeft a n + 1

end

end A135839.P4079237563450645037

/-! ## A135839.P3276519468827124215

`1-(1-T(n-2,k))*T(n,k-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A135839.P3276519468827124215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  1 - (1 - SequenceMachineLib.triUp2 a n) * SequenceMachineLib.triLeft a n

end

end A135839.P3276519468827124215

/-! ## A135839.P7416558460562571171

`A193592(n)%2`
-/

namespace A135839.P7416558460562571171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193592 n) 2

end

end A135839.P7416558460562571171

/-! ## A135839.P16186792662827016445

`A113749(n+1)%2`
-/

namespace A135839.P16186792662827016445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113749 (n + 1)) 2

end

end A135839.P16186792662827016445

/-! ## A135839.P2698211251603291044

`A130303(n+1)%2`
-/

namespace A135839.P2698211251603291044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130303 (n + 1)) 2

end

end A135839.P2698211251603291044

/-! ## A135839.P14391881569197226829

`A208522(n+1)%2`
-/

namespace A135839.P14391881569197226829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208522 (n + 1)) 2

end

end A135839.P14391881569197226829

/-! ## A135839.P597247836363034495

`A276162(n+1)%2`
-/

namespace A135839.P597247836363034495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276162 (n + 1)) 2

end

end A135839.P597247836363034495

/-! ## A135839.P8546142025814249120

`abs(ceil(1/A303872(n)))`
-/

namespace A135839.P8546142025814249120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈1 / (A303872 n : ℚ)⌉|

end

end A135839.P8546142025814249120

/-! ## A135839.P4378247594049763144

`ceil(1/(2*A251634(n)))`
-/

namespace A135839.P4378247594049763144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (2 * A251634 n : ℚ)⌉

end

end A135839.P4378247594049763144

/-! ## A135839.P4544604245776120078

`abs(ceil(1/A140756(n+1)))`
-/

namespace A135839.P4544604245776120078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈1 / (A140756 (n + 1) : ℚ)⌉|

end

end A135839.P4544604245776120078

/-!
# A135840: A135839 * A000012 as infinite lower triangular matrices.

The programs for A135840, the canonical program `A135840.P14133601689704318792` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135840 has offset 1).

The definition of A135840 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135840.P14165715388309380956

`T(n-2,k)+1` with `a(0)=1, a(1)=2`
-/

namespace A135840.P14165715388309380956
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.triUp2 a n + 1

end

end A135840.P14165715388309380956

namespace A135840

/-- `T(n-2,k)+1` -/
def P14165715388309380956.Spec : Prop :=
  ∀ n, (P14165715388309380956.a n : ℤ) = A135840 (n + 1)

end A135840

/-! ## A135840.P4498783714795240028

`round(A178067(n+1)/(2*n+1))`
-/

namespace A135840.P4498783714795240028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A178067 (n + 1) : ℚ) / (2 * n + 1 : ℚ))

end

end A135840.P4498783714795240028

namespace A135840

/-- `round(A178067(n+1)/(2*n+1))` -/
def P4498783714795240028.Spec : Prop :=
  ∀ n, P4498783714795240028.a n = A135840 (n + 1)

end A135840

/-! ## A135840.P83664506083336679

`A008619(A144257(n+1))`
-/

namespace A135840.P83664506083336679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A144257 (n + 1)).toNat

end

end A135840.P83664506083336679

namespace A135840

/-- `A008619(A144257(n+1))` -/
def P83664506083336679.Spec : Prop :=
  ∀ n, P83664506083336679.a n = A135840 (n + 1)

end A135840

/-! ## A135840.P13490239228700812444

`A110654(A144257(n+1)+1)`
-/

namespace A135840.P13490239228700812444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A144257 (n + 1) + 1).toNat

end

end A135840.P13490239228700812444

namespace A135840

/-- `A110654(A144257(n+1)+1)` -/
def P13490239228700812444.Spec : Prop :=
  ∀ n, P13490239228700812444.a n = A135840 (n + 1)

end A135840

/-! ## A135840.P4427789247254363101

`A123108(A144257(n+1)+2)`
-/

namespace A135840.P4427789247254363101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A144257 (n + 1) + 2).toNat

end

end A135840.P4427789247254363101

namespace A135840

/-- `A123108(A144257(n+1)+2)` -/
def P4427789247254363101.Spec : Prop :=
  ∀ n, P4427789247254363101.a n = A135840 (n + 1)

end A135840

/-! ## A135840.P14133601689704318792

`ceil((A010054(n)+A004736(n+1))/2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A135840

/-- `ceil((A010054(n)+A004736(n+1))/2)` -/
def P14133601689704318792.Spec : Prop :=
  ∀ n, P14133601689704318792.a n = A135840 (n + 1)

theorem P14133601689704318792.correct : P14133601689704318792.Spec := by
  intro n
  simp only [A135840, Nat.add_sub_cancel]

end A135840

/-! ## A135840.P15893220793694610843

`A008619(A025581(comp[a(n-1)+n]))` with `a(0)=1`
-/

namespace A135840.P15893220793694610843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A025581 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A135840.P15893220793694610843

namespace A135840

/-- `A008619(A025581(comp[a(n-1)+n]))` -/
def P15893220793694610843.Spec : Prop :=
  ∀ n, P15893220793694610843.a n = A135840 (n + 1)

end A135840

/-! ## A135840.P14593710660862247249

`A110655(A104571(n)+A010054(n))`
-/

namespace A135840.P14593710660862247249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A104571 n + A010054 n).toNat

end

end A135840.P14593710660862247249

namespace A135840

/-- `A110655(A104571(n)+A010054(n))` -/
def P14593710660862247249.Spec : Prop :=
  ∀ n, P14593710660862247249.a n = A135840 (n + 1)

end A135840

/-! ## A135840.P13353357374006462872

`A008619(A025581(n)+char[A000217(n)])`
-/

namespace A135840.P13353357374006462872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A025581 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A135840.P13353357374006462872

namespace A135840

/-- `A008619(A025581(n)+char[A000217(n)])` -/
def P13353357374006462872.Spec : Prop :=
  ∀ n, P13353357374006462872.a n = A135840 (n + 1)

end A135840

/-! ## A135840.P15361150936626911584

`A008619(A025581(n)+A035214(n)-1)`
-/

namespace A135840.P15361150936626911584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A025581 n + (A035214 n - 1)).toNat

end

end A135840.P15361150936626911584

namespace A135840

/-- `A008619(A025581(n)+A035214(n)-1)` -/
def P15361150936626911584.Spec : Prop :=
  ∀ n, P15361150936626911584.a n = A135840 (n + 1)

end A135840

/-! ## A135840.P17828164978664221912

`A008621(A035214(n)+A099375(n)-1)`
-/

namespace A135840.P17828164978664221912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A035214 n + (A099375 n - 1)).toNat

end

end A135840.P17828164978664221912

namespace A135840

/-- `A008621(A035214(n)+A099375(n)-1)` -/
def P17828164978664221912.Spec : Prop :=
  ∀ n, P17828164978664221912.a n = A135840 (n + 1)

end A135840

/-! ## A135840.P9055972467392652411

`A008619(A025581(n)-(1-A035214(n)))`
-/

namespace A135840.P9055972467392652411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A025581 n - (1 - A035214 n)).toNat

end

end A135840.P9055972467392652411

namespace A135840

/-- `A008619(A025581(n)-(1-A035214(n)))` -/
def P9055972467392652411.Spec : Prop :=
  ∀ n, P9055972467392652411.a n = A135840 (n + 1)

end A135840

/-! ## A135840.P5300391332091813449

`A008621(A035214(n)-(1-A099375(n)))`
-/

namespace A135840.P5300391332091813449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A035214 n - (1 - A099375 n)).toNat

end

end A135840.P5300391332091813449

namespace A135840

/-- `A008621(A035214(n)-(1-A099375(n)))` -/
def P5300391332091813449.Spec : Prop :=
  ∀ n, P5300391332091813449.a n = A135840 (n + 1)

end A135840

/-! ## A135840.P3666739720700283183

`A008619(A025581(n)+and(1, A307883(n)))`
-/

namespace A135840.P3666739720700283183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A025581 n + Int.land 1 (A307883 n)).toNat

end

end A135840.P3666739720700283183

namespace A135840

/-- `A008619(A025581(n)+and(1, A307883(n)))` -/
def P3666739720700283183.Spec : Prop :=
  ∀ n, P3666739720700283183.a n = A135840 (n + 1)

end A135840

/-! ## A135840.P6271729797151676737

`A065033(A004736(n+1)+A035214(n)-1)`
-/

namespace A135840.P6271729797151676737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A004736 (n + 1) + (A035214 n - 1)).toNat

end

end A135840.P6271729797151676737

namespace A135840

/-- `A065033(A004736(n+1)+A035214(n)-1)` -/
def P6271729797151676737.Spec : Prop :=
  ∀ n, P6271729797151676737.a n = A135840 (n + 1)

end A135840

/-! ## A135840.P4620697106560001693

`A110654(A004736(n+1)+A035214(n)-1)`
-/

namespace A135840.P4620697106560001693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004736 (n + 1) + (A035214 n - 1)).toNat

end

end A135840.P4620697106560001693

namespace A135840

/-- `A110654(A004736(n+1)+A035214(n)-1)` -/
def P4620697106560001693.Spec : Prop :=
  ∀ n, P4620697106560001693.a n = A135840 (n + 1)

end A135840

/-! ## A135840.P5308419877585721625

`A110654(A038722(n+1)+A144328(n+1)-n)`
-/

namespace A135840.P5308419877585721625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A038722 (n + 1) + (A144328 (n + 1) - (n : ℤ))).toNat

end

end A135840.P5308419877585721625

namespace A135840

/-- `A110654(A038722(n+1)+A144328(n+1)-n)` -/
def P5308419877585721625.Spec : Prop :=
  ∀ n, P5308419877585721625.a n = A135840 (n + 1)

end A135840

/-! ## A135840.P3364742127220439726

`A008621(A099375(n)+A198954(n)/A099375(n))`
-/

namespace A135840.P3364742127220439726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (SequenceMachineLib.roundAway ((A099375 n : ℚ) + (A198954 n : ℚ) / (A099375 n : ℚ))).toNat

end

end A135840.P3364742127220439726

namespace A135840

/-- `A008621(A099375(n)+A198954(n)/A099375(n))` -/
def P3364742127220439726.Spec : Prop :=
  ∀ n, P3364742127220439726.a n = A135840 (n + 1)

end A135840

/-! ## A135840.P5046743491151554996

`ceil(A278539(A278511(n+1))/2)`
-/

namespace A135840.P5046743491151554996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A278539 (A278511 (n + 1)).toNat : ℚ) / 2⌉

end

end A135840.P5046743491151554996

namespace A135840

/-- `ceil(A278539(A278511(n+1))/2)` -/
def P5046743491151554996.Spec : Prop :=
  ∀ n, P5046743491151554996.a n = A135840 (n + 1)

end A135840

/-! ## A135840.P15106074572093106608

`A261095(A175004(n+1))`
-/

namespace A135840.P15106074572093106608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261095 (A175004 (n + 1)).toNat

end

end A135840.P15106074572093106608

namespace A135840

/-- `A261095(A175004(n+1))` -/
def P15106074572093106608.Spec : Prop :=
  ∀ n, P15106074572093106608.a n = A135840 (n + 1)

end A135840

/-!
# A135841: A000012 * A135839 as infinite lower triangular matrices.

The programs for A135841, the canonical program `A135841.P9530508394126414704` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135841 has offset 1).

The definition of A135841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135841.P932735946010810767

`T(n-1,k)+(T(n-1,k+1)-T(n-1,k))*(T(n,k-1)-T(n-1,k-1))+1` with `a(0)=1`
-/

namespace A135841.P932735946010810767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triUpRight a n - SequenceMachineLib.triUp a n) * (SequenceMachineLib.triLeft a n - SequenceMachineLib.triUpLeft a n) + 1

end

end A135841.P932735946010810767

namespace A135841

/-- `T(n-1,k)+(T(n-1,k+1)-T(n-1,k))*(T(n,k-1)-T(n-1,k-1))+1` -/
def P932735946010810767.Spec : Prop :=
  ∀ n, P932735946010810767.a n = A135841 (n + 1)

end A135841

/-! ## A135841.P12906787744329847936

`T(n-1,k)+(T(n-1,k)-T(n-2,k))*(T(n-1,k-1)-T(n,k-1))+1` with `a(0)=1`
-/

namespace A135841.P12906787744329847936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + (SequenceMachineLib.triUp a n - SequenceMachineLib.triUp2 a n) * (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triLeft a n) + 1

end

end A135841.P12906787744329847936

namespace A135841

/-- `T(n-1,k)+(T(n-1,k)-T(n-2,k))*(T(n-1,k-1)-T(n,k-1))+1` -/
def P12906787744329847936.Spec : Prop :=
  ∀ n, P12906787744329847936.a n = A135841 (n + 1)

end A135841

/-! ## A135841.P3571520449189832352

`T(n-1,k)+1-(T(n-2,k-1)+(T(n-2,k-1)-T(n,k-1))*T(n-1,k+1))` with `a(0)=1`
-/

namespace A135841.P3571520449189832352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 1 - (SequenceMachineLib.triUp2Left a n + (SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triLeft a n) * SequenceMachineLib.triUpRight a n)

end

end A135841.P3571520449189832352

namespace A135841

/-- `T(n-1,k)+1-(T(n-2,k-1)+(T(n-2,k-1)-T(n,k-1))*T(n-1,k+1))` -/
def P3571520449189832352.Spec : Prop :=
  ∀ n, P3571520449189832352.a n = A135841 (n + 1)

end A135841

/-! ## A135841.P1422864209856117666

`T(n-1,k)+1-(T(n-2,k-1)+(T(n-2,k-1)-T(n,k-1))*T(n-2,k))` with `a(0)=1`
-/

namespace A135841.P1422864209856117666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 1 - (SequenceMachineLib.triUp2Left a n + (SequenceMachineLib.triUp2Left a n - SequenceMachineLib.triLeft a n) * SequenceMachineLib.triUp2 a n)

end

end A135841.P1422864209856117666

namespace A135841

/-- `T(n-1,k)+1-(T(n-2,k-1)+(T(n-2,k-1)-T(n,k-1))*T(n-2,k))` -/
def P1422864209856117666.Spec : Prop :=
  ∀ n, P1422864209856117666.a n = A135841 (n + 1)

end A135841

/-! ## A135841.P9530508394126414704

`ceil(A130303(n+1)/2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135841

/-- `ceil(A130303(n+1)/2)` -/
def P9530508394126414704.Spec : Prop :=
  ∀ n, P9530508394126414704.a n = A135841 (n + 1)

theorem P9530508394126414704.correct : P9530508394126414704.Spec := by
  intro n
  simp only [A135841, Nat.add_sub_cancel]

end A135841

/-! ## A135841.P6045194170124828438

`ceil(A004736(n+1)/(2-char[∑[n]]))`
-/

namespace A135841.P6045194170124828438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004736 (n + 1) : ℚ) / (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ)⌉

end

end A135841.P6045194170124828438

namespace A135841

/-- `ceil(A004736(n+1)/(2-char[∑[n]]))` -/
def P6045194170124828438.Spec : Prop :=
  ∀ n, P6045194170124828438.a n = A135841 (n + 1)

end A135841

/-! ## A135841.P74025714080364341

`A178804(A185782(n+1)+1)`
-/

namespace A135841.P74025714080364341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178804 (A185782 (n + 1) + 1).toNat

end

end A135841.P74025714080364341

namespace A135841

/-- `A178804(A185782(n+1)+1)` -/
def P74025714080364341.Spec : Prop :=
  ∀ n, P74025714080364341.a n = A135841 (n + 1)

end A135841

/-! ## A135841.P9131406292566025889

`ceil(A093375(n+1)/A124927(n))`
-/

namespace A135841.P9131406292566025889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A093375 (n + 1) : ℚ) / (A124927 n : ℚ)⌉

end

end A135841.P9131406292566025889

namespace A135841

/-- `ceil(A093375(n+1)/A124927(n))` -/
def P9131406292566025889.Spec : Prop :=
  ∀ n, P9131406292566025889.a n = A135841 (n + 1)

end A135841

/-! ## A135841.P8571122728502433132

`A008621(A198954(n)+A099375(n))`
-/

namespace A135841.P8571122728502433132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A198954 n + A099375 n).toNat

end

end A135841.P8571122728502433132

namespace A135841

/-- `A008621(A198954(n)+A099375(n))` -/
def P8571122728502433132.Spec : Prop :=
  ∀ n, P8571122728502433132.a n = A135841 (n + 1)

end A135841

/-! ## A135841.P16830572253806176549

`A008619(A025581(n)*A035214(n))`
-/

namespace A135841.P16830572253806176549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A025581 n * A035214 n).toNat

end

end A135841.P16830572253806176549

namespace A135841

/-- `A008619(A025581(n)*A035214(n))` -/
def P16830572253806176549.Spec : Prop :=
  ∀ n, P16830572253806176549.a n = A135841 (n + 1)

end A135841

/-! ## A135841.P3812926702020122377

`A008621(A035214(n)*A099375(n))`
-/

namespace A135841.P3812926702020122377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A035214 n * A099375 n).toNat

end

end A135841.P3812926702020122377

namespace A135841

/-- `A008621(A035214(n)*A099375(n))` -/
def P3812926702020122377.Spec : Prop :=
  ∀ n, P3812926702020122377.a n = A135841 (n + 1)

end A135841

/-! ## A135841.P9680079462928639181

`A008621(lcm(A035214(n), A099375(n)))`
-/

namespace A135841.P9680079462928639181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (Int.lcm (A035214 n) (A099375 n))

end

end A135841.P9680079462928639181

namespace A135841

/-- `A008621(lcm(A035214(n), A099375(n)))` -/
def P9680079462928639181.Spec : Prop :=
  ∀ n, P9680079462928639181.a n = A135841 (n + 1)

end A135841

/-! ## A135841.P12636331608221149441

`A065033(A158821(n)+A004736(n+1))`
-/

namespace A135841.P12636331608221149441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A158821 n + A004736 (n + 1)).toNat

end

end A135841.P12636331608221149441

namespace A135841

/-- `A065033(A158821(n)+A004736(n+1))` -/
def P12636331608221149441.Spec : Prop :=
  ∀ n, P12636331608221149441.a n = A135841 (n + 1)

end A135841

/-! ## A135841.P7759399202784967670

`A110654(A130296(n+1)+A025581(n))`
-/

namespace A135841.P7759399202784967670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A130296 (n + 1) + A025581 n).toNat

end

end A135841.P7759399202784967670

namespace A135841

/-- `A110654(A130296(n+1)+A025581(n))` -/
def P7759399202784967670.Spec : Prop :=
  ∀ n, P7759399202784967670.a n = A135841 (n + 1)

end A135841

/-! ## A135841.P6385707070864247575

`A110654(A158821(n)+A004736(n+1))`
-/

namespace A135841.P6385707070864247575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A158821 n + A004736 (n + 1)).toNat

end

end A135841.P6385707070864247575

namespace A135841

/-- `A110654(A158821(n)+A004736(n+1))` -/
def P6385707070864247575.Spec : Prop :=
  ∀ n, P6385707070864247575.a n = A135841 (n + 1)

end A135841

/-! ## A135841.P6063431852774865097

`A065033(A004736(n+1)*A035214(n))`
-/

namespace A135841.P6063431852774865097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A004736 (n + 1) * A035214 n).toNat

end

end A135841.P6063431852774865097

namespace A135841

/-- `A065033(A004736(n+1)*A035214(n))` -/
def P6063431852774865097.Spec : Prop :=
  ∀ n, P6063431852774865097.a n = A135841 (n + 1)

end A135841

/-! ## A135841.P5905798637005923345

`A110654(A004736(n+1)*A035214(n))`
-/

namespace A135841.P5905798637005923345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004736 (n + 1) * A035214 n).toNat

end

end A135841.P5905798637005923345

namespace A135841

/-- `A110654(A004736(n+1)*A035214(n))` -/
def P5905798637005923345.Spec : Prop :=
  ∀ n, P5905798637005923345.a n = A135841 (n + 1)

end A135841

/-! ## A135841.P4853706686326780626

`A008621(A099375(n)-(1-A198954(n)))`
-/

namespace A135841.P4853706686326780626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A099375 n - (1 - A198954 n)).toNat

end

end A135841.P4853706686326780626

namespace A135841

/-- `A008621(A099375(n)-(1-A198954(n)))` -/
def P4853706686326780626.Spec : Prop :=
  ∀ n, P4853706686326780626.a n = A135841 (n + 1)

end A135841

/-! ## A135841.P5644064861274929386

`A004526(A130296(n+1)+A004736(n+1))`
-/

namespace A135841.P5644064861274929386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A130296 (n + 1) + A004736 (n + 1)).toNat

end

end A135841.P5644064861274929386

namespace A135841

/-- `A004526(A130296(n+1)+A004736(n+1))` -/
def P5644064861274929386.Spec : Prop :=
  ∀ n, P5644064861274929386.a n = A135841 (n + 1)

end A135841

/-!
# A135842: Prime numbers p of the form 10k+1 for which the quintic polynomial x^5-x-1 modulus p is factorizable into five binomials.

The programs for A135842, there is no canonical definition to state claims against.
-/

/-! ## A135842.P8587839218245008947

`filter[A135844(n+1), A185705(#)]`
-/

namespace A135842.P8587839218245008947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A135842.P8587839218245008947

/-!
# A135843: Primes p of the form 10k+1 for which the polynomial x^5-x^4-x^3-x^2-x-1 modulo p is factorizable into five binomials.

The programs for A135843, there is no canonical definition to state claims against.
-/

/-! ## A135843.P2200642351370344442

`filter[A106281(n+1), A185705(#)]`
-/

namespace A135843.P2200642351370344442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A135843.P2200642351370344442

/-! ## A135843.P3436067979641704889

`filter[A135846(n+1), A185705(#)]`
-/

namespace A135843.P3436067979641704889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A135843.P3436067979641704889

/-!
# A135844: Prime numbers p for which the quintic polynomial x^5 - x - 1 modulo p completely factors into linear polynomials.

The programs for A135844, there is no canonical definition to state claims against.
-/

/-! ## A135844.P7846129771784928151

`∪[A135842(n+1), A135845(n+1)]`
-/

namespace A135844.P7846129771784928151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135842 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A135844.P7846129771784928151

/-!
# A135845: Prime numbers p not of the form 10*k+1 for which the quintic polynomial x^5-x-1 modulus p is factorizable into five binomials.

The programs for A135845, there is no canonical definition to state claims against.
-/

/-! ## A135845.P1338396356396279546

`A135844(eq[A194235(3*n+5), A363162(n+2)])`
-/

namespace A135845.P1338396356396279546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194235 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363162 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135844 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A135845.P1338396356396279546

/-!
# A135846: Primes p such that the polynomial x^5-x^4-x^3-x^2-x-1 modulo p is completely factorizable.

The programs for A135846, there is no canonical definition to state claims against.
-/

/-! ## A135846.P6180510556498724212

`∪[A106281(n+1), A135847(n+1)]`
-/

namespace A135846.P6180510556498724212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A135846.P6180510556498724212

/-! ## A135846.P1219944547835713405

`∪[A135843(n+1), A135847(n+1)]`
-/

namespace A135846.P1219944547835713405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135847 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A135846.P1219944547835713405

/-!
# A135847: Prime numbers p not of the form 10k+1 for which the polynomial x^5 - x^4 - x^3 - x^2 - x - 1 modulo p is factorizable into five binomials.

The programs for A135847, there is no canonical definition to state claims against.
-/

/-! ## A135847.P1090816922075052467

`filter[A135846(n+1), A011705(#)]`
-/

namespace A135847.P1090816922075052467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011705 (f1 j).toNat = 1) n)

end

end A135847.P1090816922075052467

/-! ## A135847.P323683857673723260

`filter[A135846(n+1), A106465(#)]`
-/

namespace A135847.P323683857673723260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A106465 (f1 j).toNat = 1) n)

end

end A135847.P323683857673723260

/-! ## A135847.P17448783562903565769

`filter[A135846(n+1), A204447(#)]`
-/

namespace A135847.P17448783562903565769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A204447 (f1 j).toNat = 1) n)

end

end A135847.P17448783562903565769

/-! ## A135847.P16486620186704109823

`filter[A135846(n+1), A230901(#)]`
-/

namespace A135847.P16486620186704109823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A230901 (f1 j).toNat = 1) n)

end

end A135847.P16486620186704109823

/-! ## A135847.P3203936516934851139

`filter[A135846(n+1), A285978(#)]`
-/

namespace A135847.P3203936516934851139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A285978 (f1 j).toNat = 1) n)

end

end A135847.P3203936516934851139

/-!
# A135849: a(n) is the ratio of the sum of the bends (curvatures) of the circles in the n-th generation of an Apollonian packing to the sum of the bends in the initial four-circle configuration.

The programs for A135849, the canonical program `A135849.P16129250557777547216` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135849 has offset 1).

The definition of A135849 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135849.P17191520779980737029

`ogf((1-3x+2x^2)/(1-8x+3x^2))`
-/

namespace A135849.P17191520779980737029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 2] [1, -8, 3] n

end

end A135849.P17191520779980737029

namespace A135849

/-- `ogf((1-3x+2x^2)/(1-8x+3x^2))` -/
def P17191520779980737029.Spec : Prop :=
  ∀ n, P17191520779980737029.a n = A135849 (n + 1)

end A135849

/-! ## A135849.P16129250557777547216

`8*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=5, a(2)=39`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135849

/-- `8*a(n-1)-3*a(n-2)` -/
def P16129250557777547216.Spec : Prop :=
  ∀ n, P16129250557777547216.a n = A135849 (n + 1)

theorem P16129250557777547216.correct : P16129250557777547216.Spec := by
  intro n
  simp only [A135849, Nat.add_sub_cancel]

end A135849

/-! ## A135849.P10875511873122015066

`ceil(A331211(n)/3)`
-/

namespace A135849.P10875511873122015066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A331211 n : ℚ) / 3⌉

end

end A135849.P10875511873122015066

namespace A135849

/-- `ceil(A331211(n)/3)` -/
def P10875511873122015066.Spec : Prop :=
  ∀ n, P10875511873122015066.a n = A135849 (n + 1)

end A135849

/-! ## A135849.P3706309877931940232

`A331211(n)/3%A055235(n)`
-/

namespace A135849.P3706309877931940232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331211 n : ℚ) / (Int.tmod 3 (A055235 n) : ℚ)

end

end A135849.P3706309877931940232

namespace A135849

/-- `A331211(n)/3%A055235(n)` -/
def P3706309877931940232.Spec : Prop :=
  ∀ n, P3706309877931940232.a n = (A135849 (n + 1) : ℚ)

end A135849

/-! ## A135849.P7915108682843766524

`A331211(n)/gcd(3, A189274(n+1))`
-/

namespace A135849.P7915108682843766524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331211 n : ℚ) / (Int.gcd 3 (A189274 (n + 1)) : ℚ)

end

end A135849.P7915108682843766524

namespace A135849

/-- `A331211(n)/gcd(3, A189274(n+1))` -/
def P7915108682843766524.Spec : Prop :=
  ∀ n, P7915108682843766524.a n = (A135849 (n + 1) : ℚ)

end A135849

/-! ## A135849.P14643326272542363881

`A331211(n)/A003945(A178334(n))`
-/

namespace A135849.P14643326272542363881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331211 n : ℚ) / (A003945 (A178334 n).toNat : ℚ)

end

end A135849.P14643326272542363881

namespace A135849

/-- `A331211(n)/A003945(A178334(n))` -/
def P14643326272542363881.Spec : Prop :=
  ∀ n, P14643326272542363881.a n = (A135849 (n + 1) : ℚ)

end A135849

/-!
# A135850: Numbers m such that there are precisely 6 groups of order m.

The programs for A135850, there is no canonical definition to state claims against.
-/

/-! ## A135850.P12717448759604854064

`eq[6, A000001(n)]`
-/

namespace A135850.P12717448759604854064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A135850.P12717448759604854064

/-! ## A135850.P5970102870607514173

`eq[36, A297420(n)]`
-/

namespace A135850.P5970102870607514173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  36

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A135850.P5970102870607514173

/-! ## A135850.P16116309489345414723

`eq[6, A201733(round(acot(n)+n))]`
-/

namespace A135850.P16116309489345414723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A135850.P16116309489345414723

/-! ## A135850.P17676002001430140966

`eq[6, A201733(A028310(n))]`
-/

namespace A135850.P17676002001430140966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A135850.P17676002001430140966

/-! ## A135850.P2093126795401834003

`A020725(eq[6, A201733(n+1)])`
-/

namespace A135850.P2093126795401834003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A135850.P2093126795401834003

/-!
# A135851: a(n) = n-1, if n <= 2, otherwise A107458(n-1) + A107458(n-2).

The programs for A135851, the canonical program `A135851.P2384895097992446206` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135851 has offset 0).

The definition of A135851 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135851.P6305296350996686217

`ogf((-1+x+x^2)/(1-x-x^3))`
-/

namespace A135851.P6305296350996686217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 1, 1] [1, -1, 0, -1] n

end

end A135851.P6305296350996686217

namespace A135851

/-- `ogf((-1+x+x^2)/(1-x-x^3))` -/
def P6305296350996686217.Spec : Prop :=
  ∀ n, P6305296350996686217.a n = A135851 n

end A135851

/-! ## A135851.P2384895097992446206

`a(n-1)+a(n-3)` with `a(0)=-1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135851

/-- `a(n-1)+a(n-3)` -/
def P2384895097992446206.Spec : Prop :=
  ∀ n, P2384895097992446206.a n = A135851 n

theorem P2384895097992446206.correct : P2384895097992446206.Spec := by
  intro n
  simp only [A135851]

end A135851

/-! ## A135851.P4145912958862089795

`A000930(n+2)-2*A000930(n)`
-/

namespace A135851.P4145912958862089795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 2) - 2 * A000930 n

end

end A135851.P4145912958862089795

namespace A135851

/-- `A000930(n+2)-2*A000930(n)` -/
def P4145912958862089795.Spec : Prop :=
  ∀ n, P4145912958862089795.a n = A135851 n

end A135851

/-! ## A135851.P7746116873281884107

`a(n-1)-(a(n-5)-a(n-2))` with `a(0)=-1, a(1)=0, a(2)=1, a(3)=0, a(4)=0`
-/

namespace A135851.P7746116873281884107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, 1, 0, 0] fun n a =>
  a (n - 1) - (a (n - 5) - a (n - 2))

end

end A135851.P7746116873281884107

namespace A135851

/-- `a(n-1)-(a(n-5)-a(n-2))` -/
def P7746116873281884107.Spec : Prop :=
  ∀ n, P7746116873281884107.a n = A135851 n

end A135851

/-! ## A135851.P1728027962290232000

`A107458(n+2)-A107458(n)`
-/

namespace A135851.P1728027962290232000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (n + 2) - A107458 n

end

end A135851.P1728027962290232000

namespace A135851

/-- `A107458(n+2)-A107458(n)` -/
def P1728027962290232000.Spec : Prop :=
  ∀ n, P1728027962290232000.a n = A135851 n

end A135851

/-! ## A135851.P4116995311667312428

`Δ[ogf((-1+x)/(-1+x+x^3))]`
-/

namespace A135851.P4116995311667312428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -1, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135851.P4116995311667312428

namespace A135851

/-- `Δ[ogf((-1+x)/(-1+x+x^3))]` -/
def P4116995311667312428.Spec : Prop :=
  ∀ n, P4116995311667312428.a n = A135851 n

end A135851

/-! ## A135851.P10030837870690737522

`Δ[a(n-1)-(1-a(n-3))]` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A135851.P10030837870690737522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135851.P10030837870690737522

namespace A135851

/-- `Δ[a(n-1)-(1-a(n-3))]` -/
def P10030837870690737522.Spec : Prop :=
  ∀ n, P10030837870690737522.a n = A135851 n

end A135851

/-! ## A135851.P2681626737792052984

`Δ[A078012(n)]`
-/

namespace A135851.P2681626737792052984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135851.P2681626737792052984

namespace A135851

/-- `Δ[A078012(n)]` -/
def P2681626737792052984.Spec : Prop :=
  ∀ n, P2681626737792052984.a n = A135851 n

end A135851

/-! ## A135851.P15089917571697994569

`A078012(n+1)-A078012(n)`
-/

namespace A135851.P15089917571697994569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (n + 1) - A078012 n

end

end A135851.P15089917571697994569

namespace A135851

/-- `A078012(n+1)-A078012(n)` -/
def P15089917571697994569.Spec : Prop :=
  ∀ n, P15089917571697994569.a n = A135851 n

end A135851

/-! ## A135851.P790643462251822404

`Δ[A107458(n+1)+A107458(n)]`
-/

namespace A135851.P790643462251822404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (n + 1) + A107458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135851.P790643462251822404

namespace A135851

/-- `Δ[A107458(n+1)+A107458(n)]` -/
def P790643462251822404.Spec : Prop :=
  ∀ n, P790643462251822404.a n = A135851 n

end A135851

/-! ## A135851.P9281662813968565790

`A013979(n)-A078012(n)-A107458(n)`
-/

namespace A135851.P9281662813968565790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 n - A078012 n - A107458 n

end

end A135851.P9281662813968565790

namespace A135851

/-- `A013979(n)-A078012(n)-A107458(n)` -/
def P9281662813968565790.Spec : Prop :=
  ∀ n, P9281662813968565790.a n = A135851 n

end A135851

/-! ## A135851.P7508616937420599974

`Δ[A306276(n)-A277252(n)]`
-/

namespace A135851.P7508616937420599974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306276 n - A277252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135851.P7508616937420599974

namespace A135851

/-- `Δ[A306276(n)-A277252(n)]` -/
def P7508616937420599974.Spec : Prop :=
  ∀ n, P7508616937420599974.a n = A135851 n

end A135851

/-! ## A135851.P12768788392880191242

`A058278(n+2)-A000930(n)`
-/

namespace A135851.P12768788392880191242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058278 (n + 2) - A000930 n

end

end A135851.P12768788392880191242

namespace A135851

/-- `A058278(n+2)-A000930(n)` -/
def P12768788392880191242.Spec : Prop :=
  ∀ n, P12768788392880191242.a n = A135851 n

end A135851

/-! ## A135851.P9937742643391765308

`A000930(n)-A058278(n)-A078012(n)`
-/

namespace A135851.P9937742643391765308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 n - A058278 n - A078012 n

end

end A135851.P9937742643391765308

namespace A135851

/-- `A000930(n)-A058278(n)-A078012(n)` -/
def P9937742643391765308.Spec : Prop :=
  ∀ n, P9937742643391765308.a n = A135851 n

end A135851

/-! ## A135851.P13481912438736727312

`∑[A306276(n)-A277253(n)]-A306276(n)`
-/

namespace A135851.P13481912438736727312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306276 n - A277253 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A306276 n

end

end A135851.P13481912438736727312

namespace A135851

/-- `∑[A306276(n)-A277253(n)]-A306276(n)` -/
def P13481912438736727312.Spec : Prop :=
  ∀ n, P13481912438736727312.a n = A135851 n

end A135851

/-! ## A135851.P7646525302959762061

`A068921(n)-A000930(n)-A078012(n)`
-/

namespace A135851.P7646525302959762061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 n - A000930 n - A078012 n

end

end A135851.P7646525302959762061

namespace A135851

/-- `A068921(n)-A000930(n)-A078012(n)` -/
def P7646525302959762061.Spec : Prop :=
  ∀ n, P7646525302959762061.a n = A135851 n

end A135851

/-! ## A135851.P5020823149477381212

`A097333(n)-A000930(n)-A058278(n)`
-/

namespace A135851.P5020823149477381212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 n - A000930 n - A058278 n

end

end A135851.P5020823149477381212

namespace A135851

/-- `A097333(n)-A000930(n)-A058278(n)` -/
def P5020823149477381212.Spec : Prop :=
  ∀ n, P5020823149477381212.a n = A135851 n

end A135851

/-! ## A135851.P624135472058155425

`A000930(n+1)-(A306276(n)+A277253(n))`
-/

namespace A135851.P624135472058155425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 1) - (A306276 n + A277253 n)

end

end A135851.P624135472058155425

namespace A135851

/-- `A000930(n+1)-(A306276(n)+A277253(n))` -/
def P624135472058155425.Spec : Prop :=
  ∀ n, P624135472058155425.a n = A135851 n

end A135851

/-! ## A135851.P12110002259135806660

`A068921(n+1)-2*A000930(n)`
-/

namespace A135851.P12110002259135806660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (n + 1) - 2 * A000930 n

end

end A135851.P12110002259135806660

namespace A135851

/-- `A068921(n+1)-2*A000930(n)` -/
def P12110002259135806660.Spec : Prop :=
  ∀ n, P12110002259135806660.a n = A135851 n

end A135851

/-!
# A135852: A007318 * A103516 as a lower triangular matrix.

The programs for A135852, the canonical program `A135852.P3513124287864982456` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135852 has offset 0).

The definition of A135852 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135852.P3513124287864982456

`A103406(n)*A211164(A198954(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A135852

/-- `A103406(n)*A211164(A198954(n))` -/
def P3513124287864982456.Spec : Prop :=
  ∀ n, P3513124287864982456.a n = A135852 n

theorem P3513124287864982456.correct : P3513124287864982456.Spec := by
  intro n
  simp only [A135852]

end A135852

/-! ## A135852.P9800820092453423705

`A103406(n)+A211164(A198954(n))+A153881(n+2)`
-/

namespace A135852.P9800820092453423705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103406 n + (A211164 (A198954 n).toNat + A153881 (n + 2))

end

end A135852.P9800820092453423705

namespace A135852

/-- `A103406(n)+A211164(A198954(n))+A153881(n+2)` -/
def P9800820092453423705.Spec : Prop :=
  ∀ n, P9800820092453423705.a n = A135852 n

end A135852

/-!
# A135853: A103516 * A007318 as an infinite lower triangular matrix.

The programs for A135853, the canonical program `A135853.P16818106393424875175` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135853 has offset 0).

The definition of A135853 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135853.P14157466709559596979

`(char[∑[n+1]]+1)*A003506(n+1)`
-/

namespace A135853.P14157466709559596979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℤ) * A003506 (n + 1)

end

end A135853.P14157466709559596979

namespace A135853

/-- `(char[∑[n+1]]+1)*A003506(n+1)` -/
def P14157466709559596979.Spec : Prop :=
  ∀ n, P14157466709559596979.a n = A135853 n

end A135853

/-! ## A135853.P6840985028938234841

`∑[A010054(n)]*A132749(n)`
-/

namespace A135853.P6840985028938234841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A132749 n

end

end A135853.P6840985028938234841

namespace A135853

/-- `∑[A010054(n)]*A132749(n)` -/
def P6840985028938234841.Spec : Prop :=
  ∀ n, P6840985028938234841.a n = A135853 n

end A135853

/-! ## A135853.P417954949976913018

`A002024(n+1)*A132749(n)`
-/

namespace A135853.P417954949976913018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A132749 n

end

end A135853.P417954949976913018

namespace A135853

/-- `A002024(n+1)*A132749(n)` -/
def P417954949976913018.Spec : Prop :=
  ∀ n, P417954949976913018.a n = A135853 n

end A135853

/-! ## A135853.P17389351587250214773

`(A003056(n)+1)*A132749(n)`
-/

namespace A135853.P17389351587250214773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003056 n + 1) * A132749 n

end

end A135853.P17389351587250214773

namespace A135853

/-- `(A003056(n)+1)*A132749(n)` -/
def P17389351587250214773.Spec : Prop :=
  ∀ n, P17389351587250214773.a n = A135853 n

end A135853

/-! ## A135853.P16818106393424875175

`A134868(n+1)*A135278(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135853

/-- `A134868(n+1)*A135278(n)` -/
def P16818106393424875175.Spec : Prop :=
  ∀ n, P16818106393424875175.a n = A135853 n

theorem P16818106393424875175.correct : P16818106393424875175.Spec := by
  intro n
  simp only [A135853]

end A135853

/-! ## A135853.P5712531411869452908

`(A007401(n+1)-n)*A132749(n)`
-/

namespace A135853.P5712531411869452908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007401 (n + 1) - (n : ℤ)) * A132749 n

end

end A135853.P5712531411869452908

namespace A135853

/-- `(A007401(n+1)-n)*A132749(n)` -/
def P5712531411869452908.Spec : Prop :=
  ∀ n, P5712531411869452908.a n = A135853 n

end A135853

/-! ## A135853.P13533880270181505475

`(A014132(n+1)-(n+1))*A132749(n)`
-/

namespace A135853.P13533880270181505475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014132 (n + 1) - (n + 1 : ℤ)) * A132749 n

end

end A135853.P13533880270181505475

namespace A135853

/-- `(A014132(n+1)-(n+1))*A132749(n)` -/
def P13533880270181505475.Spec : Prop :=
  ∀ n, P13533880270181505475.a n = A135853 n

end A135853

/-! ## A135853.P11648648109058089606

`(lt[8, A247533(n+1)]-n)*A132749(n)`
-/

namespace A135853.P11648648109058089606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)) * A132749 n

end

end A135853.P11648648109058089606

namespace A135853

/-- `(lt[8, A247533(n+1)]-n)*A132749(n)` -/
def P11648648109058089606.Spec : Prop :=
  ∀ n, P11648648109058089606.a n = A135853 n

end A135853

/-! ## A135853.P8399659639573143669

`A000194(2*n+1)*A132749(n)`
-/

namespace A135853.P8399659639573143669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (2 * n + 1) * A132749 n

end

end A135853.P8399659639573143669

namespace A135853

/-- `A000194(2*n+1)*A132749(n)` -/
def P8399659639573143669.Spec : Prop :=
  ∀ n, P8399659639573143669.a n = A135853 n

end A135853

/-!
# A135854: a(n) = (n+1)*(2^n+1) for n > 0 with a(0)=1.

The programs for A135854, the canonical program `A135854.P13682036248962058383` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135854 has offset 0).

The definition of A135854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135854.P13682036248962058383

`ogf((1-8x^2+12x^3-4x^4)/(1-6x+13x^2-12x^3+4x^4))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135854

/-- `ogf((1-8x^2+12x^3-4x^4)/(1-6x+13x^2-12x^3+4x^4))` -/
def P13682036248962058383.Spec : Prop :=
  ∀ n, P13682036248962058383.a n = A135854 n

theorem P13682036248962058383.correct : P13682036248962058383.Spec := by
  intro n
  simp only [A135854]

end A135854

/-! ## A135854.P2652913187582880146

`(n+1)*or(1, 2^n)`
-/

namespace A135854.P2652913187582880146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.lor 1 (2 ^ n)

end

end A135854.P2652913187582880146

namespace A135854

/-- `(n+1)*or(1, 2^n)` -/
def P2652913187582880146.Spec : Prop :=
  ∀ n, (P2652913187582880146.a n : ℤ) = A135854 n

end A135854

/-! ## A135854.P7773514571073476246

`or(n+1, (n+1)/2^-n)`
-/

namespace A135854.P7773514571073476246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)))

end

end A135854.P7773514571073476246

namespace A135854

/-- `or(n+1, (n+1)/2^-n)` -/
def P7773514571073476246.Spec : Prop :=
  ∀ n, P7773514571073476246.a n = A135854 n

end A135854

/-! ## A135854.P13009883434999107770

`or(1, ∑[ogf((1-x)/(1-4x+4x^2))])+n`
-/

namespace A135854.P13009883434999107770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A135854.P13009883434999107770

namespace A135854

/-- `or(1, ∑[ogf((1-x)/(1-4x+4x^2))])+n` -/
def P13009883434999107770.Spec : Prop :=
  ∀ n, P13009883434999107770.a n = A135854 n

end A135854

/-! ## A135854.P6641890919455806815

`(n+1)*∑[2*a(n-1)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A135854.P6641890919455806815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135854.P6641890919455806815

namespace A135854

/-- `(n+1)*∑[2*a(n-1)]` -/
def P6641890919455806815.Spec : Prop :=
  ∀ n, (P6641890919455806815.a n : ℤ) = A135854 n

end A135854

/-! ## A135854.P7195505757319688163

`(n+1)*(n²%(n+1)+2^n)`
-/

namespace A135854.P7195505757319688163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n ^ 2 % (n + 1) + 2 ^ n)

end

end A135854.P7195505757319688163

namespace A135854

/-- `(n+1)*(n²%(n+1)+2^n)` -/
def P7195505757319688163.Spec : Prop :=
  ∀ n, (P7195505757319688163.a n : ℤ) = A135854 n

end A135854

/-! ## A135854.P11879655159946433487

`(2/n+2)*a(n-1)-(n+1)` with `a(0)=1, a(1)=6`
-/

namespace A135854.P11879655159946433487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  (2 / (n : ℚ) + 2) * a (n - 1) - (n + 1 : ℚ)

end

end A135854.P11879655159946433487

namespace A135854

/-- `(2/n+2)*a(n-1)-(n+1)` -/
def P11879655159946433487.Spec : Prop :=
  ∀ n, P11879655159946433487.a n = (A135854 n : ℚ)

end A135854

/-! ## A135854.P1851628643879888357

`(n+1)*A083318(n)`
-/

namespace A135854.P1851628643879888357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A083318 n

end

end A135854.P1851628643879888357

namespace A135854

/-- `(n+1)*A083318(n)` -/
def P1851628643879888357.Spec : Prop :=
  ∀ n, P1851628643879888357.a n = A135854 n

end A135854

/-! ## A135854.P2265642463618964612

`(n+1)*Δ[A132736(n)]`
-/

namespace A135854.P2265642463618964612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A135854.P2265642463618964612

namespace A135854

/-- `(n+1)*Δ[A132736(n)]` -/
def P2265642463618964612.Spec : Prop :=
  ∀ n, P2265642463618964612.a n = A135854 n

end A135854

/-! ## A135854.P12022347502723353604

`or(1, ∑[A001792(n)])+n`
-/

namespace A135854.P12022347502723353604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A135854.P12022347502723353604

namespace A135854

/-- `or(1, ∑[A001792(n)])+n` -/
def P12022347502723353604.Spec : Prop :=
  ∀ n, P12022347502723353604.a n = A135854 n

end A135854

/-! ## A135854.P5860565076036745191

`(n+1)*A127904(n+1)`
-/

namespace A135854.P5860565076036745191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A127904 (n + 1)

end

end A135854.P5860565076036745191

namespace A135854

/-- `(n+1)*A127904(n+1)` -/
def P5860565076036745191.Spec : Prop :=
  ∀ n, P5860565076036745191.a n = A135854 n

end A135854

/-! ## A135854.P14244400223255108049

`(n+1)*(A155559(n)+1)`
-/

namespace A135854.P14244400223255108049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A155559 n + 1)

end

end A135854.P14244400223255108049

namespace A135854

/-- `(n+1)*(A155559(n)+1)` -/
def P14244400223255108049.Spec : Prop :=
  ∀ n, P14244400223255108049.a n = A135854 n

end A135854

/-! ## A135854.P7959950003533705678

`(n+1)*(A133140(n)-1)`
-/

namespace A135854.P7959950003533705678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A133140 n - 1)

end

end A135854.P7959950003533705678

namespace A135854

/-- `(n+1)*(A133140(n)-1)` -/
def P7959950003533705678.Spec : Prop :=
  ∀ n, P7959950003533705678.a n = A135854 n

end A135854

/-! ## A135854.P15138864142275313978

`(n+1)*(A146528(n)-3)`
-/

namespace A135854.P15138864142275313978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A146528 n - 3)

end

end A135854.P15138864142275313978

namespace A135854

/-- `(n+1)*(A146528(n)-3)` -/
def P15138864142275313978.Spec : Prop :=
  ∀ n, P15138864142275313978.a n = A135854 n

end A135854

/-! ## A135854.P10918888500946323986

`or(1, A001787(n+1))+n`
-/

namespace A135854.P10918888500946323986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A001787 (n + 1)) + (n : ℤ)

end

end A135854.P10918888500946323986

namespace A135854

/-- `or(1, A001787(n+1))+n` -/
def P10918888500946323986.Spec : Prop :=
  ∀ n, P10918888500946323986.a n = A135854 n

end A135854

/-! ## A135854.P16109917332284546607

`(n+1)*(A132045(n)+n)`
-/

namespace A135854.P16109917332284546607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A132045 n + (n : ℤ))

end

end A135854.P16109917332284546607

namespace A135854

/-- `(n+1)*(A132045(n)+n)` -/
def P16109917332284546607.Spec : Prop :=
  ∀ n, P16109917332284546607.a n = A135854 n

end A135854

/-! ## A135854.P4598995071429655562

`(n+1)*∑[A090129(n+1)]`
-/

namespace A135854.P4598995071429655562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135854.P4598995071429655562

namespace A135854

/-- `(n+1)*∑[A090129(n+1)]` -/
def P4598995071429655562.Spec : Prop :=
  ∀ n, P4598995071429655562.a n = A135854 n

end A135854

/-! ## A135854.P13073848523577676810

`(n+1)*record[xor(1, A131577(n))]`
-/

namespace A135854.P13073848523577676810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A131577 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135854.P13073848523577676810

namespace A135854

/-- `(n+1)*record[xor(1, A131577(n))]` -/
def P13073848523577676810.Spec : Prop :=
  ∀ n, P13073848523577676810.a n = A135854 n

end A135854

/-! ## A135854.P17467638186626025677

`2*A131056(n+1)+n-1`
-/

namespace A135854.P17467638186626025677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131056 (n + 1) + ((n : ℤ) - 1)

end

end A135854.P17467638186626025677

namespace A135854

/-- `2*A131056(n+1)+n-1` -/
def P17467638186626025677.Spec : Prop :=
  ∀ n, P17467638186626025677.a n = A135854 n

end A135854

/-! ## A135854.P6464138621131309325

`or(1, A171647(2*n+1))+n`
-/

namespace A135854.P6464138621131309325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A171647 (2 * n + 1)) + (n : ℤ)

end

end A135854.P6464138621131309325

namespace A135854

/-- `or(1, A171647(2*n+1))+n` -/
def P6464138621131309325.Spec : Prop :=
  ∀ n, P6464138621131309325.a n = A135854 n

end A135854

/-!
# A135855: A007318 * a tridiagonal matrix with (1, 4, 1, 0, 0, 0, ...) in every column.

The programs for A135855, the canonical program `A135855.P16850139679087986239` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135855 has offset 0).

The definition of A135855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135855.P17300715412871795247

`A264357(n+1)+A110813(n)`
-/

namespace A135855.P17300715412871795247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264357 (n + 1) + A110813 n

end

end A135855.P17300715412871795247

namespace A135855

/-- `A264357(n+1)+A110813(n)` -/
def P17300715412871795247.Spec : Prop :=
  ∀ n, P17300715412871795247.a n = A135855 n

theorem P17300715412871795247.correct : P17300715412871795247.Spec := by
  intro n
  simp only [A135855, Nat.add_sub_cancel, A135855.P17300715412871795247.a, A135855.P16850139679087986239.a, A110813, A110813.P13168758714149035316.a, A131085, A131085.P15158434548820626258.a, A264357, A264357.P4841253329854367094.a, A104712, A104712.P8393777965278521263.a, A135278, A135278.P15294612270063548765.a, A014410, A014410.P12420516935091573692.a, A168577, A168577.P14364464542492817144.a, A002024, A002024.P11700297927830783882.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135855

/-! ## A135855.P16850139679087986239

`2*A110813(n)-A131085(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A135855

/-- `2*A110813(n)-A131085(n)` -/
def P16850139679087986239.Spec : Prop :=
  ∀ n, P16850139679087986239.a n = A135855 n

theorem P16850139679087986239.correct : P16850139679087986239.Spec := by
  intro n
  simp only [A135855]

end A135855

/-! ## A135855.P9503043087648549198

`A131085(n)+2*A264357(n+1)`
-/

namespace A135855.P9503043087648549198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131085 n + 2 * A264357 (n + 1)

end

end A135855.P9503043087648549198

namespace A135855

/-- `A131085(n)+2*A264357(n+1)` -/
def P9503043087648549198.Spec : Prop :=
  ∀ n, P9503043087648549198.a n = A135855 n

theorem P9503043087648549198.correct : P9503043087648549198.Spec := by
  intro n
  simp only [A135855, Nat.add_sub_cancel, A135855.P9503043087648549198.a, A135855.P16850139679087986239.a, A110813, A110813.P13168758714149035316.a, A131085, A131085.P15158434548820626258.a, A264357, A264357.P4841253329854367094.a, A104712, A104712.P8393777965278521263.a, A135278, A135278.P15294612270063548765.a, A014410, A014410.P12420516935091573692.a, A168577, A168577.P14364464542492817144.a, A002024, A002024.P11700297927830783882.a, A003057, A003057.P16308936517940939054.a, A004736, A004736.P10337537277358081527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A135855

/-! ## A135855.P4235144976300997283

`2*A104712(n+2)-A124725(n)`
-/

namespace A135855.P4235144976300997283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104712 (n + 2) - A124725 n

end

end A135855.P4235144976300997283

namespace A135855

/-- `2*A104712(n+2)-A124725(n)` -/
def P4235144976300997283.Spec : Prop :=
  ∀ n, P4235144976300997283.a n = A135855 n

end A135855

/-! ## A135855.P16263007036149926578

`gcd(Δ[A003056(n)], A028276(n+1))`
-/

namespace A135855.P16263007036149926578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A028276 (n + 1))

end

end A135855.P16263007036149926578

namespace A135855

/-- `gcd(Δ[A003056(n)], A028276(n+1))` -/
def P16263007036149926578.Spec : Prop :=
  ∀ n, (P16263007036149926578.a n : ℤ) = A135855 n

end A135855

/-! ## A135855.P2933853227459233335

`A029655(n+1)+A110813(n)-A131085(n)`
-/

namespace A135855.P2933853227459233335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 (n + 1) + (A110813 n - A131085 n)

end

end A135855.P2933853227459233335

namespace A135855

/-- `A029655(n+1)+A110813(n)-A131085(n)` -/
def P2933853227459233335.Spec : Prop :=
  ∀ n, P2933853227459233335.a n = A135855 n

end A135855

/-! ## A135855.P15445647382519467660

`A028276(comp[∑[n]])-A028276(n)`
-/

namespace A135855.P15445647382519467660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A028276 n

end

end A135855.P15445647382519467660

namespace A135855

/-- `A028276(comp[∑[n]])-A028276(n)` -/
def P15445647382519467660.Spec : Prop :=
  ∀ n, P15445647382519467660.a n = A135855 n

end A135855

/-! ## A135855.P4052585094906236134

`2*A110813(n)-A156644(A014132(n+1))`
-/

namespace A135855.P4052585094906236134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110813 n - A156644 (A014132 (n + 1)).toNat

end

end A135855.P4052585094906236134

namespace A135855

/-- `2*A110813(n)-A156644(A014132(n+1))` -/
def P4052585094906236134.Spec : Prop :=
  ∀ n, P4052585094906236134.a n = A135855 n

end A135855

/-! ## A135855.P16729888405973368718

`A249755(∑[A035214(n)])-A028326(n)`
-/

namespace A135855.P16729888405973368718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249755 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A028326 n

end

end A135855.P16729888405973368718

namespace A135855

/-- `A249755(∑[A035214(n)])-A028326(n)` -/
def P16729888405973368718.Spec : Prop :=
  ∀ n, P16729888405973368718.a n = A135855 n

end A135855

/-! ## A135855.P8837813541375650420

`A249755(A014132(n+1))-A028326(n)`
-/

namespace A135855.P8837813541375650420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249755 (A014132 (n + 1)).toNat - A028326 n

end

end A135855.P8837813541375650420

namespace A135855

/-- `A249755(A014132(n+1))-A028326(n)` -/
def P8837813541375650420.Spec : Prop :=
  ∀ n, P8837813541375650420.a n = A135855 n

end A135855

/-! ## A135855.P6231224612329828034

`A005843(A110813(n))-A131085(n)`
-/

namespace A135855.P6231224612329828034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A110813 n).toNat - A131085 n

end

end A135855.P6231224612329828034

namespace A135855

/-- `A005843(A110813(n))-A131085(n)` -/
def P6231224612329828034.Spec : Prop :=
  ∀ n, P6231224612329828034.a n = A135855 n

end A135855

/-! ## A135855.P4083557141828947898

`A005843(A110813(n))-A156644(A014132(n+1))`
-/

namespace A135855.P4083557141828947898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A110813 n).toNat - A156644 (A014132 (n + 1)).toNat

end

end A135855.P4083557141828947898

namespace A135855

/-- `A005843(A110813(n))-A156644(A014132(n+1))` -/
def P4083557141828947898.Spec : Prop :=
  ∀ n, P4083557141828947898.a n = A135855 n

end A135855

/-! ## A135855.P2937126220029982614

`A124725(n)+A005843(A104712(n+2)-A124725(n))`
-/

namespace A135855.P2937126220029982614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124725 n + A005843 (A104712 (n + 2) - A124725 n).toNat

end

end A135855.P2937126220029982614

namespace A135855

/-- `A124725(n)+A005843(A104712(n+2)-A124725(n))` -/
def P2937126220029982614.Spec : Prop :=
  ∀ n, P2937126220029982614.a n = A135855 n

end A135855

/-! ## A135855.P6336575859954022515

`A005843(A104712(n+2))-A124725(n)`
-/

namespace A135855.P6336575859954022515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A104712 (n + 2)).toNat - A124725 n

end

end A135855.P6336575859954022515

namespace A135855

/-- `A005843(A104712(n+2))-A124725(n)` -/
def P6336575859954022515.Spec : Prop :=
  ∀ n, P6336575859954022515.a n = A135855 n

end A135855

/-!
# A135856: A007318 * a bidiagonal matrix with all 1's in the main diagonal and all 4's in the subdiagonal.

The programs for A135856, the canonical program `A135856.P7074953744569354246` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135856 has offset 1).

The definition of A135856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135856.P8225334077717153628

`C(row(n)+1, col(n)+1)+3*C(row(n), col(n)+1)`
-/

namespace A135856.P8225334077717153628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1) + 3 * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n + 1)

end

end A135856.P8225334077717153628

namespace A135856

/-- `C(row(n)+1, col(n)+1)+3*C(row(n), col(n)+1)` -/
def P8225334077717153628.Spec : Prop :=
  ∀ n, (P8225334077717153628.a n : ℤ) = A135856 (n + 1)

end A135856

/-! ## A135856.P11795686412219749424

`A095666(A099375(n)+n)`
-/

namespace A135856.P11795686412219749424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 (A099375 n + (n : ℤ)).toNat

end

end A135856.P11795686412219749424

namespace A135856

/-- `A095666(A099375(n)+n)` -/
def P11795686412219749424.Spec : Prop :=
  ∀ n, P11795686412219749424.a n = A135856 (n + 1)

end A135856

/-! ## A135856.P7074953744569354246

`2*A110813(n)-A007318(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A135856

/-- `2*A110813(n)-A007318(n)` -/
def P7074953744569354246.Spec : Prop :=
  ∀ n, P7074953744569354246.a n = A135856 (n + 1)

theorem P7074953744569354246.correct : P7074953744569354246.Spec := by
  intro n
  simp only [A135856, Nat.add_sub_cancel]

end A135856

/-! ## A135856.P10347816520821645456

`2*A135857(n)-A110813(n)`
-/

namespace A135856.P10347816520821645456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135857 n - A110813 n

end

end A135856.P10347816520821645456

namespace A135856

/-- `2*A135857(n)-A110813(n)` -/
def P10347816520821645456.Spec : Prop :=
  ∀ n, P10347816520821645456.a n = A135856 (n + 1)

end A135856

/-! ## A135856.P17324562317488723020

`A095666(2*A025581(n)+1+n)`
-/

namespace A135856.P17324562317488723020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 (2 * A025581 n + 1 + (n : ℤ)).toNat

end

end A135856.P17324562317488723020

namespace A135856

/-- `A095666(2*A025581(n)+1+n)` -/
def P17324562317488723020.Spec : Prop :=
  ∀ n, P17324562317488723020.a n = A135856 (n + 1)

end A135856

/-! ## A135856.P5438721119008630265

`A095666(A061579(n)+round(sqrt(2*(n+1))))`
-/

namespace A135856.P5438721119008630265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 (A061579 n + SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat

end

end A135856.P5438721119008630265

namespace A135856

/-- `A095666(A061579(n)+round(sqrt(2*(n+1))))` -/
def P5438721119008630265.Spec : Prop :=
  ∀ n, P5438721119008630265.a n = A135856 (n + 1)

end A135856

/-! ## A135856.P15123820597374034856

`A007318(n)+4*(A051597(n)-A074909(n))`
-/

namespace A135856.P15123820597374034856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 4 * (A051597 n - A074909 n)

end

end A135856.P15123820597374034856

namespace A135856

/-- `A007318(n)+4*(A051597(n)-A074909(n))` -/
def P15123820597374034856.Spec : Prop :=
  ∀ n, P15123820597374034856.a n = A135856 (n + 1)

end A135856

/-! ## A135856.P15182508222498054392

`A131113(n)+Δ[A131061(n)]`
-/

namespace A135856.P15182508222498054392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131113 n + (f1 (n + 1) - f1 n)

end

end A135856.P15182508222498054392

namespace A135856

/-- `A131113(n)+Δ[A131061(n)]` -/
def P15182508222498054392.Spec : Prop :=
  ∀ n, P15182508222498054392.a n = A135856 (n + 1)

end A135856

/-! ## A135856.P10030120141066772832

`A135857(n)+A135857(n)-A029655(n+1)`
-/

namespace A135856.P10030120141066772832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135857 n + (A135857 n - A029655 (n + 1))

end

end A135856.P10030120141066772832

namespace A135856

/-- `A135857(n)+A135857(n)-A029655(n+1)` -/
def P10030120141066772832.Spec : Prop :=
  ∀ n, P10030120141066772832.a n = A135856 (n + 1)

end A135856

/-! ## A135856.P16816959204389406100

`A093561(comp[∑[n]])`
-/

namespace A135856.P16816959204389406100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A135856.P16816959204389406100

namespace A135856

/-- `A093561(comp[∑[n]])` -/
def P16816959204389406100.Spec : Prop :=
  ∀ n, P16816959204389406100.a n = A135856 (n + 1)

end A135856

/-! ## A135856.P3324462393865795348

`A095666(A061579(comp[∑[n]]))`
-/

namespace A135856.P3324462393865795348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095666 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A135856.P3324462393865795348

namespace A135856

/-- `A095666(A061579(comp[∑[n]]))` -/
def P3324462393865795348.Spec : Prop :=
  ∀ n, P3324462393865795348.a n = A135856 (n + 1)

end A135856

/-! ## A135856.P6990680940739902622

`lcm(A020985(n), A093561(A014132(n+1)))`
-/

namespace A135856.P6990680940739902622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A093561 (A014132 (n + 1)).toNat)

end

end A135856.P6990680940739902622

namespace A135856

/-- `lcm(A020985(n), A093561(A014132(n+1)))` -/
def P6990680940739902622.Spec : Prop :=
  ∀ n, (P6990680940739902622.a n : ℤ) = A135856 (n + 1)

end A135856

/-! ## A135856.P5141705643601679484

`or(A000007(n), A093561(A014132(n+1)))`
-/

namespace A135856.P5141705643601679484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A093561 (A014132 (n + 1)).toNat)

end

end A135856.P5141705643601679484

namespace A135856

/-- `or(A000007(n), A093561(A014132(n+1)))` -/
def P5141705643601679484.Spec : Prop :=
  ∀ n, P5141705643601679484.a n = A135856 (n + 1)

end A135856

/-! ## A135856.P5737450847008585255

`A007318(n)+4*A071919(A014132(n+1))`
-/

namespace A135856.P5737450847008585255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 4 * A071919 (A014132 (n + 1)).toNat

end

end A135856.P5737450847008585255

namespace A135856

/-- `A007318(n)+4*A071919(A014132(n+1))` -/
def P5737450847008585255.Spec : Prop :=
  ∀ n, P5737450847008585255.a n = A135856 (n + 1)

end A135856

/-! ## A135856.P18023566308577645758

`A029655(n+1)+A005843(A206735(n+1))`
-/

namespace A135856.P18023566308577645758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029655 (n + 1) + A005843 (A206735 (n + 1)).toNat

end

end A135856.P18023566308577645758

namespace A135856

/-- `A029655(n+1)+A005843(A206735(n+1))` -/
def P18023566308577645758.Spec : Prop :=
  ∀ n, P18023566308577645758.a n = A135856 (n + 1)

end A135856

/-! ## A135856.P9578554204755050716

`A110813(n)+A005843(A110813(n)-A135278(n))`
-/

namespace A135856.P9578554204755050716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 n + A005843 (A110813 n - A135278 n).toNat

end

end A135856.P9578554204755050716

namespace A135856

/-- `A110813(n)+A005843(A110813(n)-A135278(n))` -/
def P9578554204755050716.Spec : Prop :=
  ∀ n, P9578554204755050716.a n = A135856 (n + 1)

end A135856

/-! ## A135856.P5685696657233217084

`A093561(A014132(n+1))+A000007(A093561(n))`
-/

namespace A135856.P5685696657233217084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093561 (A014132 (n + 1)).toNat + A000007 (A093561 n).toNat

end

end A135856.P5685696657233217084

namespace A135856

/-- `A093561(A014132(n+1))+A000007(A093561(n))` -/
def P5685696657233217084.Spec : Prop :=
  ∀ n, P5685696657233217084.a n = A135856 (n + 1)

end A135856

/-! ## A135856.P14990063061821226930

`A005843(A110813(n))-A007318(n)`
-/

namespace A135856.P14990063061821226930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A110813 n).toNat - A007318 n

end

end A135856.P14990063061821226930

namespace A135856

/-- `A005843(A110813(n))-A007318(n)` -/
def P14990063061821226930.Spec : Prop :=
  ∀ n, P14990063061821226930.a n = A135856 (n + 1)

end A135856

/-! ## A135856.P2564765596600320602

`A004273(A110813(n))-A014473(n)`
-/

namespace A135856.P2564765596600320602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A110813 n).toNat - A014473 n

end

end A135856.P2564765596600320602

namespace A135856

/-- `A004273(A110813(n))-A014473(n)` -/
def P2564765596600320602.Spec : Prop :=
  ∀ n, P2564765596600320602.a n = A135856 (n + 1)

end A135856

/-!
# A135857: Partial sums triangle based on A016777. Riordan convolution triangle ((1 + 2*x)/(1-x)^2, x/(1-x)).

The programs for A135857, the canonical program `A135857.P2897730251523822403` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135857 has offset 0).

The definition of A135857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135857.P2897730251523822403

`(3*row(n)-2*col(n)+1)*C(row(n)+1, col(n)+1)/(row(n)+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135857

/-- `(3*row(n)-2*col(n)+1)*C(row(n)+1, col(n)+1)/(row(n)+1)` -/
def P2897730251523822403.Spec : Prop :=
  ∀ n, P2897730251523822403.a n = (A135857 n : ℚ)

end A135857

/-! ## A135857.P2191768609647694282

`C(row(n), col(n))+3*C(row(n), col(n)+1)`
-/

namespace A135857.P2191768609647694282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) + 3 * Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n + 1)

end

end A135857.P2191768609647694282

namespace A135857

/-- `C(row(n), col(n))+3*C(row(n), col(n)+1)` -/
def P2191768609647694282.Spec : Prop :=
  ∀ n, (P2191768609647694282.a n : ℤ) = A135857 n

end A135857

/-! ## A135857.P2609291905070707425

`A095660(A099375(n)+n)`
-/

namespace A135857.P2609291905070707425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A099375 n + (n : ℤ)).toNat

end

end A135857.P2609291905070707425

namespace A135857

/-- `A095660(A099375(n)+n)` -/
def P2609291905070707425.Spec : Prop :=
  ∀ n, P2609291905070707425.a n = A135857 n

end A135857

/-! ## A135857.P11901277241392894431

`2*A110813(n)-A135278(n)`
-/

namespace A135857.P11901277241392894431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110813 n - A135278 n

end

end A135857.P11901277241392894431

namespace A135857

/-- `2*A110813(n)-A135278(n)` -/
def P11901277241392894431.Spec : Prop :=
  ∀ n, P11901277241392894431.a n = A135857 n

end A135857

/-! ## A135857.P14260750583903643838

`A028326(∑[A035214(n)])-A156644(n)`
-/

namespace A135857.P14260750583903643838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A156644 n

end

end A135857.P14260750583903643838

namespace A135857

/-- `A028326(∑[A035214(n)])-A156644(n)` -/
def P14260750583903643838.Spec : Prop :=
  ∀ n, P14260750583903643838.a n = A135857 n

end A135857

/-! ## A135857.P10780420343417710430

`A133601(n)+A133807(n)-A007318(n)`
-/

namespace A135857.P10780420343417710430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133601 n + (A133807 n - A007318 n)

end

end A135857.P10780420343417710430

namespace A135857

/-- `A133601(n)+A133807(n)-A007318(n)` -/
def P10780420343417710430.Spec : Prop :=
  ∀ n, P10780420343417710430.a n = A135857 n

end A135857

/-! ## A135857.P10376256445519416708

`A007318(n)+3*(A051597(n)-A074909(n))`
-/

namespace A135857.P10376256445519416708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 3 * (A051597 n - A074909 n)

end

end A135857.P10376256445519416708

namespace A135857

/-- `A007318(n)+3*(A051597(n)-A074909(n))` -/
def P10376256445519416708.Spec : Prop :=
  ∀ n, P10376256445519416708.a n = A135857 n

end A135857

/-! ## A135857.P821640528453765807

`A131112(n)+Δ[A131060(n)]`
-/

namespace A135857.P821640528453765807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131112 n + (f1 (n + 1) - f1 n)

end

end A135857.P821640528453765807

namespace A135857

/-- `A131112(n)+Δ[A131060(n)]` -/
def P821640528453765807.Spec : Prop :=
  ∀ n, P821640528453765807.a n = A135857 n

end A135857

/-! ## A135857.P10232797619897012804

`A206735(n+1)+A110813(n)`
-/

namespace A135857.P10232797619897012804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) + A110813 n

end

end A135857.P10232797619897012804

namespace A135857

/-- `A206735(n+1)+A110813(n)` -/
def P10232797619897012804.Spec : Prop :=
  ∀ n, P10232797619897012804.a n = A135857 n

end A135857

/-! ## A135857.P6728911134156005276

`A029621(n+1)-A007318(n)`
-/

namespace A135857.P6728911134156005276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029621 (n + 1) - A007318 n

end

end A135857.P6728911134156005276

namespace A135857

/-- `A029621(n+1)-A007318(n)` -/
def P6728911134156005276.Spec : Prop :=
  ∀ n, P6728911134156005276.a n = A135857 n

end A135857

/-! ## A135857.P12052712180435152660

`A029621(n+1)-abs(A108086(n))`
-/

namespace A135857.P12052712180435152660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029621 (n + 1) - |A108086 n|

end

end A135857.P12052712180435152660

namespace A135857

/-- `A029621(n+1)-abs(A108086(n))` -/
def P12052712180435152660.Spec : Prop :=
  ∀ n, P12052712180435152660.a n = A135857 n

end A135857

/-! ## A135857.P11934063719267309521

`A206735(n+1)+A029655(n+1)`
-/

namespace A135857.P11934063719267309521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) + A029655 (n + 1)

end

end A135857.P11934063719267309521

namespace A135857

/-- `A206735(n+1)+A029655(n+1)` -/
def P11934063719267309521.Spec : Prop :=
  ∀ n, P11934063719267309521.a n = A135857 n

end A135857

/-! ## A135857.P16701269448042066943

`A325191(n+1)+A124927(n+1)`
-/

namespace A135857.P16701269448042066943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325191 (n + 1) + A124927 (n + 1)

end

end A135857.P16701269448042066943

namespace A135857

/-- `A325191(n+1)+A124927(n+1)` -/
def P16701269448042066943.Spec : Prop :=
  ∀ n, P16701269448042066943.a n = A135857 n

end A135857

/-! ## A135857.P12803310027785397851

`A074909(n+1)+2*A206735(n+1)`
-/

namespace A135857.P12803310027785397851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) + 2 * A206735 (n + 1)

end

end A135857.P12803310027785397851

namespace A135857

/-- `A074909(n+1)+2*A206735(n+1)` -/
def P12803310027785397851.Spec : Prop :=
  ∀ n, P12803310027785397851.a n = A135857 n

end A135857

/-! ## A135857.P11955443577776549358

`A080233(n+1)+2*A325191(n+1)`
-/

namespace A135857.P11955443577776549358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 (n + 1) + 2 * A325191 (n + 1)

end

end A135857.P11955443577776549358

namespace A135857

/-- `A080233(n+1)+2*A325191(n+1)` -/
def P11955443577776549358.Spec : Prop :=
  ∀ n, P11955443577776549358.a n = A135857 n

end A135857

/-! ## A135857.P11300983112227587208

`2*A124927(n+1)-A080233(n+1)`
-/

namespace A135857.P11300983112227587208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124927 (n + 1) - A080233 (n + 1)

end

end A135857.P11300983112227587208

namespace A135857

/-- `2*A124927(n+1)-A080233(n+1)` -/
def P11300983112227587208.Spec : Prop :=
  ∀ n, P11300983112227587208.a n = A135857 n

end A135857

/-! ## A135857.P2377306375461117247

`A206735(n+1)+A206735(n+1)+A135278(n)`
-/

namespace A135857.P2377306375461117247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 (n + 1) + (A206735 (n + 1) + A135278 n)

end

end A135857.P2377306375461117247

namespace A135857

/-- `A206735(n+1)+A206735(n+1)+A135278(n)` -/
def P2377306375461117247.Spec : Prop :=
  ∀ n, P2377306375461117247.a n = A135857 n

end A135857

/-! ## A135857.P3019834288907320385

`A093560(comp[∑[n]])`
-/

namespace A135857.P3019834288907320385
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093560 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A135857.P3019834288907320385

namespace A135857

/-- `A093560(comp[∑[n]])` -/
def P3019834288907320385.Spec : Prop :=
  ∀ n, P3019834288907320385.a n = A135857 n

end A135857

/-! ## A135857.P16317310518854555321

`A095660(A061579(comp[∑[n]]))`
-/

namespace A135857.P16317310518854555321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095660 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A135857.P16317310518854555321

namespace A135857

/-- `A095660(A061579(comp[∑[n]]))` -/
def P16317310518854555321.Spec : Prop :=
  ∀ n, P16317310518854555321.a n = A135857 n

end A135857

/-! ## A135857.P9506881269362009198

`A007318(n)+3*A071919(A014132(n+1))`
-/

namespace A135857.P9506881269362009198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + 3 * A071919 (A014132 (n + 1)).toNat

end

end A135857.P9506881269362009198

namespace A135857

/-- `A007318(n)+3*A071919(A014132(n+1))` -/
def P9506881269362009198.Spec : Prop :=
  ∀ n, P9506881269362009198.a n = A135857 n

end A135857

/-!
# A135859: Row sums of triangle A135858.

The programs for A135859, the canonical program `A135859.P3843104523707469963` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135859 has offset 1).

The definition of A135859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135859.P9130526079731390434

`ogf((1+3x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A135859.P9130526079731390434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3, 2] [1, -4, 6, -4, 1] n

end

end A135859.P9130526079731390434

namespace A135859

/-- `ogf((1+3x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P9130526079731390434.Spec : Prop :=
  ∀ n, P9130526079731390434.a n = A135859 (n + 1)

end A135859

/-! ## A135859.P3843104523707469963

`5*(n+1)-2+(n+1)^3-3*(n+1)²`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135859

/-- `5*(n+1)-2+(n+1)^3-3*(n+1)²` -/
def P3843104523707469963.Spec : Prop :=
  ∀ n, P3843104523707469963.a n = A135859 (n + 1)

theorem P3843104523707469963.correct : P3843104523707469963.Spec := by
  intro n
  simp only [A135859, Nat.add_sub_cancel]

end A135859

/-! ## A135859.P312286492452349235

`Δ[C(n, 2)²+n²]`
-/

namespace A135859.P312286492452349235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2 + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A135859.P312286492452349235

namespace A135859

/-- `Δ[C(n, 2)²+n²]` -/
def P312286492452349235.Spec : Prop :=
  ∀ n, P312286492452349235.a n = A135859 (n + 1)

theorem P312286492452349235.correct : P312286492452349235.Spec := by
  intro n
  simp only [A135859, Nat.add_sub_cancel, A135859.P312286492452349235.f1, A135859.P312286492452349235.a, A135859.P3843104523707469963.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135859

/-! ## A135859.P17713491925829538340

`ceil(acot(n)^-3+n)`
-/

namespace A135859.P17713491925829538340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ) ^ (-3 : ℤ) + (n : ℝ)⌉

end

end A135859.P17713491925829538340

namespace A135859

/-- `ceil(acot(n)^-3+n)` -/
def P17713491925829538340.Spec : Prop :=
  ∀ n, P17713491925829538340.a n = A135859 (n + 1)

end A135859

/-! ## A135859.P11721151701950810993

`round(acot(n)^-3+n+1)`
-/

namespace A135859.P11721151701950810993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) ^ (-3 : ℤ) + (n + 1 : ℝ))

end

end A135859.P11721151701950810993

namespace A135859

/-- `round(acot(n)^-3+n+1)` -/
def P11721151701950810993.Spec : Prop :=
  ∀ n, P11721151701950810993.a n = A135859 (n + 1)

end A135859

/-! ## A135859.P8058789220046819610

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A135859.P8058789220046819610
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 6] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135859.P8058789220046819610

namespace A135859

/-- `∑[∑[a(n-1)+6]]` -/
def P8058789220046819610.Spec : Prop :=
  ∀ n, (P8058789220046819610.a n : ℤ) = A135859 (n + 1)

end A135859

/-! ## A135859.P1556283876324040989

`ceil(2*n+cot(1)+n^3)`
-/

namespace A135859.P1556283876324040989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) + (Real.cot (1 : ℝ) + (n ^ 3 : ℝ))⌉

end

end A135859.P1556283876324040989

namespace A135859

/-- `ceil(2*n+cot(1)+n^3)` -/
def P1556283876324040989.Spec : Prop :=
  ∀ n, P1556283876324040989.a n = A135859 (n + 1)

end A135859

/-! ## A135859.P12010736574324394089

`∑[∑[ogf((1+3x^2+2x^3)/(1-2x+x^2))]]`
-/

namespace A135859.P12010736574324394089
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135859.P12010736574324394089

namespace A135859

/-- `∑[∑[ogf((1+3x^2+2x^3)/(1-2x+x^2))]]` -/
def P12010736574324394089.Spec : Prop :=
  ∀ n, P12010736574324394089.a n = A135859 (n + 1)

end A135859

/-! ## A135859.P6706310251620829715

`∑[or(1, A077588(n))]`
-/

namespace A135859.P6706310251620829715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A077588 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135859.P6706310251620829715

namespace A135859

/-- `∑[or(1, A077588(n))]` -/
def P6706310251620829715.Spec : Prop :=
  ∀ n, P6706310251620829715.a n = A135859 (n + 1)

end A135859

/-! ## A135859.P12219274440843403841

`abs(n-A005491(n))`
-/

namespace A135859.P12219274440843403841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A005491 n|

end

end A135859.P12219274440843403841

namespace A135859

/-- `abs(n-A005491(n))` -/
def P12219274440843403841.Spec : Prop :=
  ∀ n, P12219274440843403841.a n = A135859 (n + 1)

end A135859

/-! ## A135859.P6224237744820220443

`Δ[n²+A161680(n)²]`
-/

namespace A135859.P6224237744820220443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A161680 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A135859.P6224237744820220443

namespace A135859

/-- `Δ[n²+A161680(n)²]` -/
def P6224237744820220443.Spec : Prop :=
  ∀ n, P6224237744820220443.a n = A135859 (n + 1)

theorem P6224237744820220443.correct : P6224237744820220443.Spec := by
  intro n
  simp only [A135859, Nat.add_sub_cancel, A135859.P6224237744820220443.f1, A135859.P6224237744820220443.a, A135859.P3843104523707469963.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A135859

/-! ## A135859.P5005121851795395898

`∑[A116735(n+1)+n²]`
-/

namespace A135859.P5005121851795395898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116735 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135859.P5005121851795395898

namespace A135859

/-- `∑[A116735(n+1)+n²]` -/
def P5005121851795395898.Spec : Prop :=
  ∀ n, P5005121851795395898.a n = A135859 (n + 1)

end A135859

/-! ## A135859.P12780413881083122073

`abs(A000578(n)+6*n+1-4*n)`
-/

namespace A135859.P12780413881083122073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000578 n + (6 * n + 1 : ℤ) - (4 * n : ℤ)|

end

end A135859.P12780413881083122073

namespace A135859

/-- `abs(A000578(n)+6*n+1-4*n)` -/
def P12780413881083122073.Spec : Prop :=
  ∀ n, P12780413881083122073.a n = A135859 (n + 1)

end A135859

/-! ## A135859.P6635461508012860171

`A257925(n+1)%A094792(n)`
-/

namespace A135859.P6635461508012860171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257925 (n + 1)) (A094792 n)

end

end A135859.P6635461508012860171

namespace A135859

/-- `A257925(n+1)%A094792(n)` -/
def P6635461508012860171.Spec : Prop :=
  ∀ n, P6635461508012860171.a n = A135859 (n + 1)

end A135859

/-! ## A135859.P15234033739809398655

`A269658(n)%A188377(n+3)`
-/

namespace A135859.P15234033739809398655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269658 n) (A188377 (n + 3))

end

end A135859.P15234033739809398655

namespace A135859

/-- `A269658(n)%A188377(n+3)` -/
def P15234033739809398655.Spec : Prop :=
  ∀ n, P15234033739809398655.a n = A135859 (n + 1)

end A135859

/-! ## A135859.P7723007434773782847

`A304162(n+1)%A005492(n+4)`
-/

namespace A135859.P7723007434773782847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304162 (n + 1)) (A005492 (n + 4))

end

end A135859.P7723007434773782847

namespace A135859

/-- `A304162(n+1)%A005492(n+4)` -/
def P7723007434773782847.Spec : Prop :=
  ∀ n, P7723007434773782847.a n = A135859 (n + 1)

end A135859

/-! ## A135859.P16493474220445378989

`abs(A007531(n+1)+6*n+1-3*n)`
-/

namespace A135859.P16493474220445378989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007531 (n + 1) + (6 * n + 1 : ℤ) - (3 * n : ℤ)|

end

end A135859.P16493474220445378989

namespace A135859

/-- `abs(A007531(n+1)+6*n+1-3*n)` -/
def P16493474220445378989.Spec : Prop :=
  ∀ n, P16493474220445378989.a n = A135859 (n + 1)

end A135859

/-! ## A135859.P4051490249564167708

`∑[A089071(A004277(n))+n²]`
-/

namespace A135859.P4051490249564167708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089071 (A004277 n).toNat + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A135859.P4051490249564167708

namespace A135859

/-- `∑[A089071(A004277(n))+n²]` -/
def P4051490249564167708.Spec : Prop :=
  ∀ n, P4051490249564167708.a n = A135859 (n + 1)

end A135859

/-! ## A135859.P4686431240361639139

`record[Δ[(A000217(A002262(n))+1)²]+1]`
-/

namespace A135859.P4686431240361639139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (A002262 n).toNat + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135859.P4686431240361639139

namespace A135859

/-- `record[Δ[(A000217(A002262(n))+1)²]+1]` -/
def P4686431240361639139.Spec : Prop :=
  ∀ n, P4686431240361639139.a n = A135859 (n + 1)

end A135859

/-! ## A135859.P2951189997784821386

`A088699(A167614(n+2))`
-/

namespace A135859.P2951189997784821386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088699 (A167614 (n + 2)).toNat

end

end A135859.P2951189997784821386

namespace A135859

/-- `A088699(A167614(n+2))` -/
def P2951189997784821386.Spec : Prop :=
  ∀ n, P2951189997784821386.a n = A135859 (n + 1)

end A135859

/-!
# A135860: a(n) = binomial(n*(n+1), n).

The programs for A135860, the canonical program `A135860.P8836704614336037335` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135860 has offset 0).

The definition of A135860 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n*(n+1), n)` (program `A135860.P8836704614336037335`, by `A135860.P8836704614336037335.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A135860.P11804272054039871915

`C(n²+n, n)`
-/

namespace A135860.P11804272054039871915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n ^ 2 + n) n

end

end A135860.P11804272054039871915

namespace A135860

/-- `C(n²+n, n)` -/
def P11804272054039871915.Spec : Prop :=
  ∀ n, (P11804272054039871915.a n : ℤ) = A135860 n

theorem P11804272054039871915.correct : P11804272054039871915.Spec := by
  intro n
  simp only [A135860, Nat.add_sub_cancel, A135860.P11804272054039871915.a, A135860.P8836704614336037335.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A135860

/-! ## A135860.P8836704614336037335

`C(n*(n+1), n)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135860

/-- `C(n*(n+1), n)` -/
def P8836704614336037335.Spec : Prop :=
  ∀ n, (P8836704614336037335.a n : ℤ) = A135860 n

theorem P8836704614336037335.correct : P8836704614336037335.Spec := by
  intro n
  simp only [A135860]

end A135860

/-! ## A135860.P13541005501132539602

`∑{#}[n, C(n, #)*C(n², #)]`
-/

namespace A135860.P13541005501132539602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Nat.choose n k * Nat.choose (n ^ 2) k

end

end A135860.P13541005501132539602

namespace A135860

/-- `∑{#}[n, C(n, #)*C(n², #)]` -/
def P13541005501132539602.Spec : Prop :=
  ∀ n, (P13541005501132539602.a n : ℤ) = A135860 n

end A135860

/-! ## A135860.P8399510224373848842

`A055789(∑[2*n])`
-/

namespace A135860.P8399510224373848842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055789 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135860.P8399510224373848842

namespace A135860

/-- `A055789(∑[2*n])` -/
def P8399510224373848842.Spec : Prop :=
  ∀ n, P8399510224373848842.a n = A135860 n

end A135860

/-! ## A135860.P6706164980210810410

`A102366(∑[2*n])`
-/

namespace A135860.P6706164980210810410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102366 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135860.P6706164980210810410

namespace A135860

/-- `A102366(∑[2*n])` -/
def P6706164980210810410.Spec : Prop :=
  ∀ n, P6706164980210810410.a n = A135860 n

end A135860

/-!
# A135861: a(n) = binomial(n*(n+1),n)/(n+1).

The programs for A135861, the canonical program `A135861.P9011973211715434732` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135861 has offset 0).

The definition of A135861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135861.P9011973211715434732

`C(n*(n+1), n)/(n+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135861

/-- `C(n*(n+1), n)/(n+1)` -/
def P9011973211715434732.Spec : Prop :=
  ∀ n, P9011973211715434732.a n = (A135861 n : ℚ)

end A135861

/-! ## A135861.P13185218497219766630

`A135860(n)/(n+1)`
-/

namespace A135861.P13185218497219766630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135860 n : ℚ) / (n + 1 : ℚ)

end

end A135861.P13185218497219766630

namespace A135861

/-- `A135860(n)/(n+1)` -/
def P13185218497219766630.Spec : Prop :=
  ∀ n, P13185218497219766630.a n = (A135861 n : ℚ)

end A135861

/-! ## A135861.P15070784105086855056

`C(abs(1-n²)+n, n²)`
-/

namespace A135861.P15070784105086855056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (|1 - (n ^ 2 : ℤ)| + (n : ℤ)).toNat (n ^ 2)

end

end A135861.P15070784105086855056

namespace A135861

/-- `C(abs(1-n²)+n, n²)` -/
def P15070784105086855056.Spec : Prop :=
  ∀ n, (P15070784105086855056.a n : ℤ) = A135861 n

end A135861

/-! ## A135861.P11785817296307554906

`floor(C(n²+n, n)/(n+1))`
-/

namespace A135861.P11785817296307554906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n ^ 2 + n) n : ℚ) / (n + 1 : ℚ)⌋

end

end A135861.P11785817296307554906

namespace A135861

/-- `floor(C(n²+n, n)/(n+1))` -/
def P11785817296307554906.Spec : Prop :=
  ∀ n, P11785817296307554906.a n = A135861 n

end A135861

/-! ## A135861.P2148295386959763816

`ceil(C(n²+n, n)/(n+1))`
-/

namespace A135861.P2148295386959763816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n ^ 2 + n) n : ℚ) / (n + 1 : ℚ)⌉

end

end A135861.P2148295386959763816

namespace A135861

/-- `ceil(C(n²+n, n)/(n+1))` -/
def P2148295386959763816.Spec : Prop :=
  ∀ n, P2148295386959763816.a n = A135861 n

end A135861

/-!
# A135862: a(n) = binomial(n*(n+1),n)/(n^2+1).

The programs for A135862, the canonical program `A135862.P2966672629564437369` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135862 has offset 0).

The definition of A135862 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A135862.P2966672629564437369

`C(n*(n+1), n)/(n²+1)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A135862

/-- `C(n*(n+1), n)/(n²+1)` -/
def P2966672629564437369.Spec : Prop :=
  ∀ n, P2966672629564437369.a n = (A135862 n : ℚ)

end A135862

/-! ## A135862.P8977624449918725557

`A135860(n)/(n²+1)`
-/

namespace A135862.P8977624449918725557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135860 n : ℚ) / (n ^ 2 + 1 : ℚ)

end

end A135862.P8977624449918725557

namespace A135862

/-- `A135860(n)/(n²+1)` -/
def P8977624449918725557.Spec : Prop :=
  ∀ n, P8977624449918725557.a n = (A135862 n : ℚ)

end A135862

/-! ## A135862.P6373755975116080799

`A228509(n)/(n+1)`
-/

namespace A135862.P6373755975116080799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228509 n : ℚ) / (n + 1 : ℚ)

end

end A135862.P6373755975116080799

namespace A135862

/-- `A228509(n)/(n+1)` -/
def P6373755975116080799.Spec : Prop :=
  ∀ n, P6373755975116080799.a n = (A135862 n : ℚ)

end A135862

/-! ## A135862.P9969623837522502422

`1/A026741(A005893(n))*A135860(n)`
-/

namespace A135862.P9969623837522502422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A026741 (A005893 n).toNat : ℚ) * (A135860 n : ℚ)

end

end A135862.P9969623837522502422

namespace A135862

/-- `1/A026741(A005893(n))*A135860(n)` -/
def P9969623837522502422.Spec : Prop :=
  ∀ n, P9969623837522502422.a n = (A135862 n : ℚ)

end A135862

/-! ## A135862.P9665393721719496699

`A070914(∑[4*n])`
-/

namespace A135862.P9665393721719496699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070914 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135862.P9665393721719496699

namespace A135862

/-- `A070914(∑[4*n])` -/
def P9665393721719496699.Spec : Prop :=
  ∀ n, P9665393721719496699.a n = A135862 n

end A135862

/-!
# A135863: G.f. A(x) = 1 + 4*x*A(x)^(1/2); A(x) = 1 + 8*x^2 + 4*x*sqrt(1 + 4*x^2).

The programs for A135863, there is no canonical definition to state claims against.
-/

/-! ## A135863.P1076459869449631109

`ceil(cosh(sin(n)))*A198786(n)`
-/

namespace A135863.P1076459869449631109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A198786 n

end

end A135863.P1076459869449631109

/-! ## A135863.P5282411779153088464

`A036453(n+1)*A198786(n)`
-/

namespace A135863.P5282411779153088464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A198786 n

end

end A135863.P5282411779153088464

/-! ## A135863.P9514086353714809793

`A121358(n+1)*A198786(n)`
-/

namespace A135863.P9514086353714809793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121358 (n + 1) * A198786 n

end

end A135863.P9514086353714809793

/-! ## A135863.P11930935671856335811

`A140685(n+1)*A198786(n)`
-/

namespace A135863.P11930935671856335811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140685 (n + 1) * A198786 n

end

end A135863.P11930935671856335811

/-! ## A135863.P14960144877976903742

`ceil(atan(A001222(n+1)+1))*A198786(n)`
-/

namespace A135863.P14960144877976903742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A001222 (n + 1) + 1 : ℝ)⌉ * A198786 n

end

end A135863.P14960144877976903742

/-! ## A135863.P9629386160129929957

`A020639(A000010(n+2))*A198786(n)`
-/

namespace A135863.P9629386160129929957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A198786 n

end

end A135863.P9629386160129929957

/-! ## A135863.P16542964779383094587

`A081668(n)*A198786(n)`
-/

namespace A135863.P16542964779383094587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 n * A198786 n

end

end A135863.P16542964779383094587

/-!
# A135865: G.f. A(x) satisfies A(x) = 1 + x*A(4*x)^(1/2).

The programs for A135865, there is no canonical definition to state claims against.
-/

/-! ## A135865.P154074142074630367

`A039159(∏[n!])`
-/

namespace A135865.P154074142074630367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039159 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A135865.P154074142074630367

/-!
# A135866: G.f. A(x) satisfies A(x) = 1 + x*A(9*x)^(1/3).

The programs for A135866, there is no canonical definition to state claims against.
-/

/-! ## A135866.P5852791925944758390

`A032020(n)*A283757(A292096(n))`
-/

namespace A135866.P5852791925944758390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n * A283757 (A292096 n).toNat

end

end A135866.P5852791925944758390

/-!
# A135867: G.f. satisfies A(x) = 1 + x*A(2*x)^2.

The programs for A135867, there is no canonical definition to state claims against.
-/

/-! ## A135867.P6122768020388421658

`A254744(n)/2^n`
-/

namespace A135867.P6122768020388421658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A254744 n : ℚ) / (2 ^ n : ℚ)

end

end A135867.P6122768020388421658

/-! ## A135867.P1634767666479102945

`floor(A254744(n)/A000079(n))`
-/

namespace A135867.P1634767666479102945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A254744 n : ℚ) / (A000079 n : ℚ)⌋

end

end A135867.P1634767666479102945

/-! ## A135867.P6372860464794173135

`round(A254744(n)/∑[A011782(n)])`
-/

namespace A135867.P6372860464794173135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A254744 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A135867.P6372860464794173135

/-! ## A135867.P16523557712454965139

`floor(A254744(n)/A011782(n+1))`
-/

namespace A135867.P16523557712454965139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A254744 n : ℚ) / (A011782 (n + 1) : ℚ)⌋

end

end A135867.P16523557712454965139

/-! ## A135867.P49477410196253270

`floor(A254744(n)/A131577(n+1))`
-/

namespace A135867.P49477410196253270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A254744 n : ℚ) / (A131577 (n + 1) : ℚ)⌋

end

end A135867.P49477410196253270

/-!
# A135868: G.f. A(x) = (1 + x*A(2*x))^2.

The programs for A135868, there is no canonical definition to state claims against.
-/

/-! ## A135868.P15022367280508051652

`A135867(n+1)/A000079(n)`
-/

namespace A135868.P15022367280508051652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135867 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A135868.P15022367280508051652

/-! ## A135868.P7426187588184049362

`A135867(n+1)/∑[A011782(n)]`
-/

namespace A135868.P7426187588184049362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135867 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A135868.P7426187588184049362

/-! ## A135868.P12633801636021660114

`A135867(n+1)/A011782(n+1)`
-/

namespace A135868.P12633801636021660114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135867 (n + 1) : ℚ) / (A011782 (n + 1) : ℚ)

end

end A135868.P12633801636021660114

/-! ## A135868.P861848035363125842

`A135867(n+1)/A016116(2*n)`
-/

namespace A135868.P861848035363125842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135867 (n + 1) : ℚ) / (A016116 (2 * n) : ℚ)

end

end A135868.P861848035363125842

/-! ## A135868.P11309047117209568453

`A135867(n+1)/A163864(2*n+1)`
-/

namespace A135868.P11309047117209568453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135867 (n + 1) : ℚ) / (A163864 (2 * n + 1) : ℚ)

end

end A135868.P11309047117209568453

/-!
# A135869: G.f. A(x) satisfies A(x) = 1 + x*A(3*x)^2.

The programs for A135869, there is no canonical definition to state claims against.
-/

/-! ## A135869.P1947426535769447825

`A072601(A175254(n!))`
-/

namespace A135869.P1947426535769447825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072601 (A175254 (Nat.factorial n)).toNat

end

end A135869.P1947426535769447825

/-!
# A135870: G.f. A(x) = (1 + x*A(3x))^2.

The programs for A135870, there is no canonical definition to state claims against.
-/

/-! ## A135870.P1478528953144247623

`A135869(n+1)/A000244(n)`
-/

namespace A135870.P1478528953144247623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135869 (n + 1) : ℚ) / (A000244 n : ℚ)

end

end A135870.P1478528953144247623

/-!
# A135871: Triangle by columns: A013610 signed and interleaved with zeros.

The programs for A135871, the canonical program `A135871.P7097473593831335136` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A135871 has offset 1).

The definition of A135871 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A135871.P11126426799281997649

`3*T(n-1,k-1)-T(n-2,k)` with `a(0)=1`
-/

namespace A135871.P11126426799281997649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2 a n

end

end A135871.P11126426799281997649

namespace A135871

/-- `3*T(n-1,k-1)-T(n-2,k)` -/
def P11126426799281997649.Spec : Prop :=
  ∀ n, P11126426799281997649.a n = A135871 (n + 1)

end A135871

/-! ## A135871.P18147979874788245393

`3^A002262(n)*A049310(n)`
-/

namespace A135871.P18147979874788245393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A002262 n : ℤ) * (A049310 n : ℚ)

end

end A135871.P18147979874788245393

namespace A135871

/-- `3^A002262(n)*A049310(n)` -/
def P18147979874788245393.Spec : Prop :=
  ∀ n, P18147979874788245393.a n = (A135871 (n + 1) : ℚ)

end A135871

/-! ## A135871.P7097473593831335136

`A000244(A002262(n))*A049310(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A135871

/-- `A000244(A002262(n))*A049310(n)` -/
def P7097473593831335136.Spec : Prop :=
  ∀ n, P7097473593831335136.a n = A135871 (n + 1)

theorem P7097473593831335136.correct : P7097473593831335136.Spec := by
  intro n
  simp only [A135871, Nat.add_sub_cancel]

end A135871

/-! ## A135871.P14734459869661231084

`A049310(n)*A140429(A002260(n+1))`
-/

namespace A135871.P14734459869661231084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A140429 (A002260 (n + 1)).toNat

end

end A135871.P14734459869661231084

namespace A135871

/-- `A049310(n)*A140429(A002260(n+1))` -/
def P14734459869661231084.Spec : Prop :=
  ∀ n, P14734459869661231084.a n = A135871 (n + 1)

end A135871

/-! ## A135871.P15172615609753285477

`A117568(n)*A168561(n)*A000244(A002262(n))`
-/

namespace A135871.P15172615609753285477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117568 n * A168561 n * A000244 (A002262 n).toNat

end

end A135871.P15172615609753285477

namespace A135871

/-- `A117568(n)*A168561(n)*A000244(A002262(n))` -/
def P15172615609753285477.Spec : Prop :=
  ∀ n, P15172615609753285477.a n = A135871 (n + 1)

theorem P15172615609753285477.correct : P15172615609753285477.Spec := by
  intro n
  simp only [A135871, Nat.add_sub_cancel, A135871.P15172615609753285477.a, A135871.P7097473593831335136.a, A000244, A000244.P17162167222172810417.a, A002262, A002262.P17823619022233514403.a, A049310, A049310.P1662014320520452531.a, A117568, A117568.P10505874102500913440.a, A168561, A168561.P3183119596903847201.a, A025581, A025581.P16112744757063613497.a, A117576, A117576.P15788069879778431007.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A135871

/-! ## A135871.P3836750204270495602

`A053117(n)/A059268(n)*A000244(A002262(n))`
-/

namespace A135871.P3836750204270495602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053117 n : ℚ) / (A059268 n : ℚ) * (A000244 (A002262 n).toNat : ℚ)

end

end A135871.P3836750204270495602

namespace A135871

/-- `A053117(n)/A059268(n)*A000244(A002262(n))` -/
def P3836750204270495602.Spec : Prop :=
  ∀ n, P3836750204270495602.a n = (A135871 (n + 1) : ℚ)

end A135871

/-! ## A135871.P59979429854873688

`A000244(A002262(n))*A053119(A061579(n))`
-/

namespace A135871.P59979429854873688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A053119 (A061579 n).toNat

end

end A135871.P59979429854873688

namespace A135871

/-- `A000244(A002262(n))*A053119(A061579(n))` -/
def P59979429854873688.Spec : Prop :=
  ∀ n, P59979429854873688.a n = A135871 (n + 1)

end A135871

/-! ## A135871.P8076815027128832343

`A000244(A002262(n))*A053119(A114327(n)+n)`
-/

namespace A135871.P8076815027128832343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A002262 n).toNat * A053119 (A114327 n + (n : ℤ)).toNat

end

end A135871.P8076815027128832343

namespace A135871

/-- `A000244(A002262(n))*A053119(A114327(n)+n)` -/
def P8076815027128832343.Spec : Prop :=
  ∀ n, P8076815027128832343.a n = A135871 (n + 1)

end A135871

/-! ## A135871.P1857515558984202601

`A013622(A112367(n))*A049310(n)`
-/

namespace A135871.P1857515558984202601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013622 (A112367 n).toNat * A049310 n

end

end A135871.P1857515558984202601

namespace A135871

/-- `A013622(A112367(n))*A049310(n)` -/
def P1857515558984202601.Spec : Prop :=
  ∀ n, P1857515558984202601.a n = A135871 (n + 1)

end A135871

/-! ## A135871.P14328383073404069934

`A003959(A059268(n))*A049310(n)`
-/

namespace A135871.P14328383073404069934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (A059268 n).toNat * A049310 n

end

end A135871.P14328383073404069934

namespace A135871

/-- `A003959(A059268(n))*A049310(n)` -/
def P14328383073404069934.Spec : Prop :=
  ∀ n, P14328383073404069934.a n = A135871 (n + 1)

end A135871

/-!
# A135873: Multiply the positive integers which are coprime to n in order (starting at 1). a(n) is the largest such partial product that is <= n.

The programs for A135873, there is no canonical definition to state claims against.
-/

/-! ## A135873.P15134000375732915607

`A345933(A135872(n+1))`
-/

namespace A135873.P15134000375732915607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345933 (A135872 (n + 1)).toNat

end

end A135873.P15134000375732915607

/-! ## A135873.P15967202539662182609

`A135872(n-log2(1/2))/A345931(A135872(n+1))`
-/

namespace A135873.P15967202539662182609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135872 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat : ℚ) / (A345931 (A135872 (n + 1)).toNat : ℚ)

end

end A135873.P15967202539662182609

/-! ## A135873.P8281516139677450831

`A234533(A128779(n+1)%A017294(n))`
-/

namespace A135873.P8281516139677450831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234533 (Int.tmod (A128779 (n + 1)) (A017294 n)).toNat

end

end A135873.P8281516139677450831

/-! ## A135873.P17121839294495019492

`A234533(A128779(n+1))`
-/

namespace A135873.P17121839294495019492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234533 (A128779 (n + 1)).toNat

end

end A135873.P17121839294495019492

/-!
# A135874: Multiply the positive divisors of n in order (starting at 1). a(n) is the smallest such partial product that is >= n.

The programs for A135874, there is no canonical definition to state claims against.
-/

/-! ## A135874.P1791223207602136275

`A056622((A056622(n+1)*A089247(n+1))²)`
-/

namespace A135874.P1791223207602136275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 ((A056622 (n + 1) * A089247 (n + 1)) ^ 2).toNat

end

end A135874.P1791223207602136275

/-! ## A135874.P13204677455413381237

`A056622(A081437(n))*A089247(n+1)`
-/

namespace A135874.P13204677455413381237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (A081437 n).toNat * A089247 (n + 1)

end

end A135874.P13204677455413381237

/-!
# A135875: Multiply the positive divisors n in order (starting at 1). a(n) is the largest such partial product that is <= n.

The programs for A135875, there is no canonical definition to state claims against.
-/

/-! ## A135875.P10979567764945527844

`A350390(n+1)-A350386(A083768(n+2))`
-/

namespace A135875.P10979567764945527844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1) - A350386 (A083768 (n + 2)).toNat

end

end A135875.P10979567764945527844

/-! ## A135875.P3109474158397280006

`A350390(n+1)-A336644(A235608(n))`
-/

namespace A135875.P3109474158397280006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1) - A336644 (A235608 n).toNat

end

end A135875.P3109474158397280006

/-! ## A135875.P8508078122595269759

`A350390(n+1)-A270417(A270413(n+1))`
-/

namespace A135875.P8508078122595269759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1) - A270417 (A270413 (n + 1)).toNat

end

end A135875.P8508078122595269759

/-! ## A135875.P12593873758773065010

`A350390(n+1)-A081603(A080953(n))`
-/

namespace A135875.P12593873758773065010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1) - A081603 (A080953 n).toNat

end

end A135875.P12593873758773065010

/-! ## A135875.P13957044728830369059

`A350390(n+1)-A336107(A336096(n+1))`
-/

namespace A135875.P13957044728830369059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350390 (n + 1) - A336107 (A336096 (n + 1)).toNat

end

end A135875.P13957044728830369059

/-!
# A135876: Square array, read by antidiagonals, where row n+1 is generated from row n by first removing terms at positions [(m+2)^2/4 - 1] for m>=0 and then taking partial sums, starting with all 1's in row 0.

The programs for A135876, there is no canonical definition to state claims against.
-/

/-! ## A135876.P6249784282240043736

`A370419(comp[∑[n]])%A240310(3*n+4)`
-/

namespace A135876.P6249784282240043736
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A370419 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A240310 (3 * n + 4))

end

end A135876.P6249784282240043736

/-!
# A135878: Square array, read by antidiagonals, where row n+1 is generated from row n by first removing terms at positions [(m+3)^2/4 - 2] for m>=0 and then taking partial sums, starting with all 1's in row 0.

The programs for A135878, there is no canonical definition to state claims against.
-/

/-! ## A135878.P4266349419962441093

`A102800(A094587(n))`
-/

namespace A135878.P4266349419962441093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (A094587 n).toNat

end

end A135878.P4266349419962441093

/-! ## A135878.P5342105587386006845

`A294652(A134379(n))`
-/

namespace A135878.P5342105587386006845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294652 (A134379 n).toNat

end

end A135878.P5342105587386006845

/-! ## A135878.P444818586952285836

`A104305(A143603(n+1))`
-/

namespace A135878.P444818586952285836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104305 (A143603 (n + 1)).toNat

end

end A135878.P444818586952285836

/-! ## A135878.P15238332388810036453

`A182049(A094587(n)+1)`
-/

namespace A135878.P15238332388810036453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182049 (A094587 n + 1).toNat

end

end A135878.P15238332388810036453

/-! ## A135878.P796400391056823193

`A334966(A094587(n)+1)`
-/

namespace A135878.P796400391056823193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334966 (A094587 n + 1).toNat

end

end A135878.P796400391056823193

/-!
# A135880: Triangle P, read by rows, where column k of P^2 equals column 0 of P^(2k+2) such that column 0 of P^2 equals column 0 of P shift one place left, with P(0,0)=1.

The programs for A135880, there is no canonical definition to state claims against.
-/

/-! ## A135880.P12642668936062117947

`A135898(comp[∑[n]])`
-/

namespace A135880.P12642668936062117947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135898 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A135880.P12642668936062117947

/-! ## A135880.P12024745986543408654

`and(-1, A135898(A014132(n+1)))`
-/

namespace A135880.P12024745986543408654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A135898 (A014132 (n + 1)).toNat)

end

end A135880.P12024745986543408654

/-! ## A135880.P8230527156982415795

`A135898(∑[A035214(n)])+C(n, 64)`
-/

namespace A135880.P8230527156982415795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135898 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (Nat.choose n 64 : ℤ)

end

end A135880.P8230527156982415795

/-! ## A135880.P15721514502866817589

`A135898(A014132(n+1))^A051340(n)`
-/

namespace A135880.P15721514502866817589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135898 (A014132 (n + 1)).toNat : ℚ) ^ (A051340 n : ℤ)

end

end A135880.P15721514502866817589

/-! ## A135880.P14314348036788903038

`gcd(A134309(n), A135898(A014132(n+1)))`
-/

namespace A135880.P14314348036788903038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A134309 n) (A135898 (A014132 (n + 1)).toNat)

end

end A135880.P14314348036788903038

/-! ## A135880.P8375541595773585532

`A135898(∑[A035214(n)])+A000007(n+1)`
-/

namespace A135880.P8375541595773585532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135898 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A000007 (n + 1)

end

end A135880.P8375541595773585532

/-! ## A135880.P600461843935787947

`A007318(∑[n])*A135898(A014132(n+1))`
-/

namespace A135880.P600461843935787947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A135898 (A014132 (n + 1)).toNat

end

end A135880.P600461843935787947

/-! ## A135880.P17485060480887083129

`A135898(A014132(n+1))%∑[A000032(n)]`
-/

namespace A135880.P17485060480887083129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135898 (A014132 (n + 1)).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135880.P17485060480887083129

/-! ## A135880.P16545419604748919271

`A135898(∑[A035214(n)])%A000032(n+2)`
-/

namespace A135880.P16545419604748919271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135898 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A000032 (n + 2))

end

end A135880.P16545419604748919271

/-! ## A135880.P7099605532448250048

`A014963(4*n+6)*A135898(A014132(n+1))`
-/

namespace A135880.P7099605532448250048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A135898 (A014132 (n + 1)).toNat

end

end A135880.P7099605532448250048

/-!
# A135881: Column 0 of triangle A135880.

The programs for A135881, there is no canonical definition to state claims against.
-/

/-! ## A135881.P12450894613089210488

`A135878(∑[n])`
-/

namespace A135881.P12450894613089210488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135878 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135881.P12450894613089210488

/-! ## A135881.P17611031437694867391

`A135880(∑[n])`
-/

namespace A135881.P17611031437694867391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135880 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135881.P17611031437694867391

/-! ## A135881.P2099129200847253680

`A135899(∑[n])`
-/

namespace A135881.P2099129200847253680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135899 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135881.P2099129200847253680

/-! ## A135881.P950237858204807096

`A135885(C(n, 2))`
-/

namespace A135881.P950237858204807096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135885 (Nat.choose n 2)

end

end A135881.P950237858204807096

/-! ## A135881.P519310290106704401

`A135885(∑[n]-n)`
-/

namespace A135881.P519310290106704401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135885 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A135881.P519310290106704401

/-!
# A135882: Column 1 of triangle A135880.

The programs for A135882, there is no canonical definition to state claims against.
-/

/-! ## A135882.P8906083419635625688

`A135895(∑[n])`
-/

namespace A135882.P8906083419635625688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135895 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135882.P8906083419635625688

/-! ## A135882.P7151969686822294202

`record[A135895(A001971(n))]`
-/

namespace A135882.P7151969686822294202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135895 (A001971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135882.P7151969686822294202

/-! ## A135882.P1235539913782230540

`record[A135895(A049780(n))]`
-/

namespace A135882.P1235539913782230540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135895 (A049780 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135882.P1235539913782230540

/-! ## A135882.P17537085253021970516

`record[A135895(A091018(n))]`
-/

namespace A135882.P17537085253021970516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135895 (A091018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135882.P17537085253021970516

/-! ## A135882.P5829986704252961005

`record[A135895(record[A056943(n)])]`
-/

namespace A135882.P5829986704252961005
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056943 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135895 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135882.P5829986704252961005

/-!
# A135883: Column 2 of triangle A135880.

The programs for A135883, there is no canonical definition to state claims against.
-/

/-! ## A135883.P2921408917013392084

`A135896(∑[n])`
-/

namespace A135883.P2921408917013392084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135896 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135883.P2921408917013392084

/-! ## A135883.P13115934121119226525

`record[A135896(A001971(n))]`
-/

namespace A135883.P13115934121119226525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135896 (A001971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135883.P13115934121119226525

/-! ## A135883.P9034344088973424560

`record[A135896(A049780(n))]`
-/

namespace A135883.P9034344088973424560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135896 (A049780 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135883.P9034344088973424560

/-! ## A135883.P2503206159887456677

`record[A135896(A091018(n))]`
-/

namespace A135883.P2503206159887456677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135896 (A091018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135883.P2503206159887456677

/-! ## A135883.P1628889211061119951

`record[A135896(A112367(n))]`
-/

namespace A135883.P1628889211061119951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135896 (A112367 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135883.P1628889211061119951

/-!
# A135884: Column 3 of triangle A135880.

The programs for A135884, there is no canonical definition to state claims against.
-/

/-! ## A135884.P16699370105653791396

`A135897(∑[n])`
-/

namespace A135884.P16699370105653791396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135897 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135884.P16699370105653791396

/-! ## A135884.P524420287660129023

`record[A135897(A001971(n))]`
-/

namespace A135884.P524420287660129023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135897 (A001971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135884.P524420287660129023

/-! ## A135884.P16232205685618583760

`record[A135897(A004247(n))]`
-/

namespace A135884.P16232205685618583760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135897 (A004247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135884.P16232205685618583760

/-! ## A135884.P14273507576067656167

`record[A135897(A049780(n))]`
-/

namespace A135884.P14273507576067656167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135897 (A049780 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135884.P14273507576067656167

/-! ## A135884.P7832909493289985175

`record[A135897(A091018(n))]`
-/

namespace A135884.P7832909493289985175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135897 (A091018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135884.P7832909493289985175

/-!
# A135885: Triangle Q, read by rows, where column k of Q equals column 0 of Q^(k+1) and Q is equal to the matrix square of integer triangle P = A135880 such that column 0 of Q equals column 0 of P shift left.

The programs for A135885, there is no canonical definition to state claims against.
-/

/-! ## A135885.P17262124940690476310

`A135899(comp[∑[n-1]])`
-/

namespace A135885.P17262124940690476310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135899 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A135885.P17262124940690476310

/-! ## A135885.P8221215106774710449

`and(-1, A135899(A007401(n+1)))`
-/

namespace A135885.P8221215106774710449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A135899 (A007401 (n + 1)).toNat)

end

end A135885.P8221215106774710449

/-! ## A135885.P4666358006294126480

`A135899(A007401(n+1))^A178334(n)`
-/

namespace A135885.P4666358006294126480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135899 (A007401 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A135885.P4666358006294126480

/-! ## A135885.P8898503395565437605

`A135899(A007401(n+1))^A178489(n)`
-/

namespace A135885.P8898503395565437605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135899 (A007401 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A135885.P8898503395565437605

/-! ## A135885.P16370923547438639929

`A135899(A007401(n+1))%A045535(n)`
-/

namespace A135885.P16370923547438639929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135899 (A007401 (n + 1)).toNat) (A045535 n)

end

end A135885.P16370923547438639929

/-!
# A135886: Column 1 of triangle Q = A135885; also equals column 0 of Q^2.

The programs for A135886, there is no canonical definition to state claims against.
-/

/-! ## A135886.P8750364452557016126

`A135891(∑[n])`
-/

namespace A135886.P8750364452557016126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135891 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135886.P8750364452557016126

/-! ## A135886.P16938342124710296652

`record[A135891(n)]`
-/

namespace A135886.P16938342124710296652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135886.P16938342124710296652

/-! ## A135886.P14425989617575326772

`and(-1, A135891(A000217(n)))`
-/

namespace A135886.P14425989617575326772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A135891 (A000217 n).toNat)

end

end A135886.P14425989617575326772

/-! ## A135886.P15197265014902350932

`A135891(A000217(n))+A011738(n)`
-/

namespace A135886.P15197265014902350932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135891 (A000217 n).toNat + A011738 n

end

end A135886.P15197265014902350932

/-! ## A135886.P15553014373010742192

`A135891(A000217(n))+A033665(n)`
-/

namespace A135886.P15553014373010742192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135891 (A000217 n).toNat + A033665 n

end

end A135886.P15553014373010742192

/-!
# A135887: Column 2 of triangle Q = A135885; also equals column 0 of Q^3 = A135893.

The programs for A135887, there is no canonical definition to state claims against.
-/

/-! ## A135887.P13171735211610742458

`A135893(∑[n])`
-/

namespace A135887.P13171735211610742458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135893 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135887.P13171735211610742458

/-! ## A135887.P16556144050587415651

`record[A135893(n)]`
-/

namespace A135887.P16556144050587415651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135887.P16556144050587415651

/-! ## A135887.P6210033331678545592

`and(-1, A135893(A000217(n)))`
-/

namespace A135887.P6210033331678545592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A135893 (A000217 n).toNat)

end

end A135887.P6210033331678545592

/-! ## A135887.P683176444632602347

`and(-1, A135893(A213516(n+1)))`
-/

namespace A135887.P683176444632602347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A135893 (A213516 (n + 1)).toNat)

end

end A135887.P683176444632602347

/-! ## A135887.P3021878518016156501

`A135893(A000217(n))+A025442(n)`
-/

namespace A135887.P3021878518016156501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135893 (A000217 n).toNat + A025442 n

end

end A135887.P3021878518016156501

/-!
# A135889: Column 0 of triangle A135888, which equals the matrix cube of triangle A135880; also equals column 1 of triangle A135894.

The programs for A135889, there is no canonical definition to state claims against.
-/

/-! ## A135889.P10987881450719386756

`A135888(∑[n])`
-/

namespace A135889.P10987881450719386756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135888 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135889.P10987881450719386756

/-! ## A135889.P15469763244713563994

`record[A135888(A001971(n))]`
-/

namespace A135889.P15469763244713563994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135888 (A001971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135889.P15469763244713563994

/-! ## A135889.P14154967651749422018

`record[A135888(A004247(n))]`
-/

namespace A135889.P14154967651749422018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135888 (A004247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135889.P14154967651749422018

/-! ## A135889.P16796226298221723861

`record[A135888(A049780(n))]`
-/

namespace A135889.P16796226298221723861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135888 (A049780 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135889.P16796226298221723861

/-! ## A135889.P5924068318601435744

`record[A135888(A091018(n))]`
-/

namespace A135889.P5924068318601435744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135888 (A091018 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135889.P5924068318601435744

/-!
# A135890: Column 1 of triangle A135888, which equals the matrix cube of triangle A135880; also equals column 1 of triangle A135895.

The programs for A135890, there is no canonical definition to state claims against.
-/

/-! ## A135890.P14241260047892379886

`record[A135888(comp[∑[n]])]`
-/

namespace A135890.P14241260047892379886
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135888 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135890.P14241260047892379886

/-! ## A135890.P3397004585171042673

`record[A135895(comp[∑[n]])]`
-/

namespace A135890.P3397004585171042673
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135895 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135890.P3397004585171042673

/-! ## A135890.P17351722464690900524

`A135888(∑[n+1]+1)`
-/

namespace A135890.P17351722464690900524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135888 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A135890.P17351722464690900524

/-! ## A135890.P936339355750670630

`A135895(∑[n+1]+1)`
-/

namespace A135890.P936339355750670630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135895 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A135890.P936339355750670630

/-! ## A135890.P14731678803366253642

`record[A135895(n)*A344612(n)]`
-/

namespace A135890.P14731678803366253642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135895 n * A344612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A135890.P14731678803366253642

/-!
# A135891: Triangle, read by rows, equal to P^4, where triangle P = A135880; also equals Q^2, where triangle Q = P^2 = A135885.

The programs for A135891, there is no canonical definition to state claims against.
-/

/-! ## A135891.P14880295235128287972

`A258445(A160164(n+3)-3)`
-/

namespace A135891.P14880295235128287972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258445 (A160164 (n + 3) - 3).toNat

end

end A135891.P14880295235128287972

/-! ## A135891.P2124303120586993577

`A078939(n)+A010894(A052905(n))`
-/

namespace A135891.P2124303120586993577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078939 n + A010894 ((A052905 n).toNat + 21)

end

end A135891.P2124303120586993577

/-!
# A135892: Triangle, read by rows, equal to P^5, where triangle P = A135880.

The programs for A135892, there is no canonical definition to state claims against.
-/

/-! ## A135892.P14181305084511966776

`A261720(∪[∑[16*n-6]+7, A000330(n+1)])`
-/

namespace A135892.P14181305084511966776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 * n : ℤ) - 6

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261720 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n)

end

end A135892.P14181305084511966776

/-! ## A135892.P11720176696126469045

`A261720(A258151(n+1)+A134309(n))`
-/

namespace A135892.P11720176696126469045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261720 (A258151 (n + 1) + A134309 n).toNat

end

end A135892.P11720176696126469045

/-!
# A135893: Triangle, read by rows, equal to P^6, where triangle P = A135880; also equals Q^3 where Q = P^2 = A135885.

The programs for A135893, there is no canonical definition to state claims against.
-/

/-! ## A135893.P11873916925655545586

`A135885(A177789(n)+A001227(n+5))`
-/

namespace A135893.P11873916925655545586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135885 (A177789 n + A001227 (n + 5)).toNat

end

end A135893.P11873916925655545586

/-!
# A135894: Triangle R, read by rows, where column k of R equals column 0 of P^(2k+1) where P=A135880.

The programs for A135894, there is no canonical definition to state claims against.
-/

/-! ## A135894.P2844742031136293067

`A135900(comp[∑[n-1]])`
-/

namespace A135894.P2844742031136293067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135900 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A135894.P2844742031136293067

/-! ## A135894.P8288530270185322528

`and(-1, A135900(A007401(n+1)))`
-/

namespace A135894.P8288530270185322528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A135900 (A007401 (n + 1)).toNat)

end

end A135894.P8288530270185322528

/-! ## A135894.P17072237612455140742

`A135900(A007401(n+1))^A178334(n)`
-/

namespace A135894.P17072237612455140742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135900 (A007401 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A135894.P17072237612455140742

/-! ## A135894.P7375584405348751887

`A135900(A007401(n+1))^A178489(n)`
-/

namespace A135894.P7375584405348751887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135900 (A007401 (n + 1)).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A135894.P7375584405348751887

/-! ## A135894.P17216697819636816491

`gcd(A130123(n), A135900(A007401(n+1)))`
-/

namespace A135894.P17216697819636816491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130123 n) (A135900 (A007401 (n + 1)).toNat)

end

end A135894.P17216697819636816491

/-!
# A135898: Triangle, read by rows equal to the matrix product P^-1*R, where P = A135880 and R = A135894; P^-1*R equals triangle P shifted right one column.

The programs for A135898, there is no canonical definition to state claims against.
-/

/-! ## A135898.P574033509401412035

`A185044(A113413(n))+A084938(n)`
-/

namespace A135898.P574033509401412035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185044 (A113413 n).toNat + A084938 n

end

end A135898.P574033509401412035

/-! ## A135898.P16941200620521338819

`A130167(n)+A086017(A173005(n))`
-/

namespace A135898.P16941200620521338819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130167 n + A086017 (A173005 n).toNat

end

end A135898.P16941200620521338819

/-! ## A135898.P18104161673358222675

`A340988(A055372(n))+A084938(n)`
-/

namespace A135898.P18104161673358222675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A055372 n).toNat + 91) + A084938 n

end

end A135898.P18104161673358222675

/-! ## A135898.P10836356606368512876

`A209915(A229142(n))+A084938(n)`
-/

namespace A135898.P10836356606368512876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209915 (A229142 n).toNat + A084938 n

end

end A135898.P10836356606368512876

/-! ## A135898.P2653368060939175033

`or(A084938(n), A321378(A128564(n)))`
-/

namespace A135898.P2653368060939175033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084938 n) (A321378 (A128564 n).toNat)

end

end A135898.P2653368060939175033

/-!
# A135899: Triangle, read by rows equal to the matrix product P*R^-1*P, where P = A135880 and R = A135894; P*R^-1*P equals triangle Q=A135885 shifted down one row.

The programs for A135899, there is no canonical definition to state claims against.
-/

/-! ## A135899.P13114574198502476510

`A135885(∑[char[A007401(n+2)]])`
-/

namespace A135899.P13114574198502476510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135885 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A135899.P13114574198502476510

/-! ## A135899.P18410626475566963249

`A135885(A083920(n*A023532(n)))`
-/

namespace A135899.P18410626475566963249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135885 (A083920 ((n : ℤ) * A023532 n).toNat).toNat

end

end A135899.P18410626475566963249

/-! ## A135899.P13276132663072322589

`A135885(A083920(n)%A001497(n))`
-/

namespace A135899.P13276132663072322589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135885 (Int.tmod (A083920 n) (A001497 n)).toNat

end

end A135899.P13276132663072322589

/-! ## A135899.P12148010446255322411

`A135885(A083920(n*Δ[A083920(n)]))`
-/

namespace A135899.P12148010446255322411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135885 (A083920 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat).toNat

end

end A135899.P12148010446255322411

/-! ## A135899.P15957702304421164323

`A135885(A083920(n+1)-A178334(n))`
-/

namespace A135899.P15957702304421164323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135885 (A083920 (n + 1) - A178334 n).toNat

end

end A135899.P15957702304421164323

/-! ## A135899.P1768249486860655583

`gcd(A103452(n+1), A135885(A083920(n)))`
-/

namespace A135899.P1768249486860655583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103452 (n + 1)) (A135885 (A083920 n).toNat)

end

end A135899.P1768249486860655583

/-! ## A135899.P2576477407755612851

`A135885(A083920(n))^A130123(A131431(n))`
-/

namespace A135899.P2576477407755612851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135885 (A083920 n).toNat : ℚ) ^ (A130123 (A131431 n).toNat : ℤ)

end

end A135899.P2576477407755612851

/-! ## A135899.P5643497209979064437

`A135885(∑[A178334(n)%A135880(n)])`
-/

namespace A135899.P5643497209979064437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A178334 n) (A135880 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135885 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A135899.P5643497209979064437

