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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A094100: Fit a polynomial of degree k-1 to column k of array in A048790, evaluate it at dimension n = -1.

The programs for A094100, there is no canonical definition to state claims against.
-/

/-! ## A094100.P15316519709085150652

`A003963(A305114(n))*A217786(n)`
-/

namespace A094100.P15316519709085150652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A305114 n).toNat * A217786 n

end

end A094100.P15316519709085150652

/-!
# A094101: Number of rooted 8-dimensional "polycubes" with n cells, with no symmetries removed.

The programs for A094101, there is no canonical definition to state claims against.
-/

/-! ## A094101.P6639835732864750428

`(n+1)*A151834(n+1)`
-/

namespace A094101.P6639835732864750428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A151834 (n + 1)

end

end A094101.P6639835732864750428

/-! ## A094101.P12390433946794907226

`A151834(n+1)*A291769(n)`
-/

namespace A094101.P12390433946794907226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151834 (n + 1) * A291769 n

end

end A094101.P12390433946794907226

/-! ## A094101.P14431920880215822256

`A151834(n+1)*A348553(n)`
-/

namespace A094101.P14431920880215822256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151834 (n + 1) * A348553 n

end

end A094101.P14431920880215822256

/-! ## A094101.P456838649737136053

`record[A151834(A344180(n))]*A291769(n)`
-/

namespace A094101.P456838649737136053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151834 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A291769 n

end

end A094101.P456838649737136053

/-! ## A094101.P12108867053027449384

`record[A151834(A344180(n))]*A348553(n)`
-/

namespace A094101.P12108867053027449384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151834 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A348553 n

end

end A094101.P12108867053027449384

/-!
# A094102: Triangle read by rows in which row n contains Fib(1), ..., Fib(n-1), Fib(n), Fib(n-1), ..., Fib(1).

The programs for A094102, the canonical program `A094102.P5158071478824962528` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094102 has offset 1).

The definition of A094102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094102.P1456289553022198253

`A105809(∑[n-round(sqrt(n))²])`
-/

namespace A094102.P1456289553022198253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105809 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094102.P1456289553022198253

namespace A094102

/-- `A105809(∑[n-round(sqrt(n))²])` -/
def P1456289553022198253.Spec : Prop :=
  ∀ n, P1456289553022198253.a n = A094102 (n + 1)

end A094102

/-! ## A094102.P16741862564012588032

`A017125(A133825(n))`
-/

namespace A094102.P16741862564012588032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017125 (A133825 n).toNat

end

end A094102.P16741862564012588032

namespace A094102

/-- `A017125(A133825(n))` -/
def P16741862564012588032.Spec : Prop :=
  ∀ n, P16741862564012588032.a n = A094102 (n + 1)

end A094102

/-! ## A094102.P5158071478824962528

`A000045(A004737(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A094102

/-- `A000045(A004737(n+1))` -/
def P5158071478824962528.Spec : Prop :=
  ∀ n, P5158071478824962528.a n = A094102 (n + 1)

theorem P5158071478824962528.correct : P5158071478824962528.Spec := by
  intro n
  simp only [A094102, Nat.add_sub_cancel]

end A094102

/-! ## A094102.P16562197875047821483

`A000045(root(A133823(n), 3))`
-/

namespace A094102.P16562197875047821483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A133823 n : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A094102.P16562197875047821483

namespace A094102

/-- `A000045(root(A133823(n), 3))` -/
def P16562197875047821483.Spec : Prop :=
  ∀ n, P16562197875047821483.a n = A094102 (n + 1)

end A094102

/-! ## A094102.P13149960189934836998

`A000045(sqrt(A124258(n+1)))`
-/

namespace A094102.P13149960189934836998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway (Real.sqrt (A124258 (n + 1) : ℝ))).toNat

end

end A094102.P13149960189934836998

namespace A094102

/-- `A000045(sqrt(A124258(n+1)))` -/
def P13149960189934836998.Spec : Prop :=
  ∀ n, P13149960189934836998.a n = A094102 (n + 1)

end A094102

/-! ## A094102.P12093564014612431642

`A000045(root(A124258(n+1), 2))`
-/

namespace A094102.P12093564014612431642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A124258 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A094102.P12093564014612431642

namespace A094102

/-- `A000045(root(A124258(n+1), 2))` -/
def P12093564014612431642.Spec : Prop :=
  ∀ n, P12093564014612431642.a n = A094102 (n + 1)

end A094102

/-! ## A094102.P8782331384039196475

`A000045(∑[char[n²]]-A053615(n))`
-/

namespace A094102.P8782331384039196475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A053615 n).toNat

end

end A094102.P8782331384039196475

namespace A094102

/-- `A000045(∑[char[n²]]-A053615(n))` -/
def P8782331384039196475.Spec : Prop :=
  ∀ n, P8782331384039196475.a n = A094102 (n + 1)

end A094102

/-! ## A094102.P8108812630091811762

`A000045(A133823(n)^(1-2/3))`
-/

namespace A094102.P8108812630091811762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.roundAway ((A133823 n : ℝ) ^ (1 - (2 : ℚ) / 3 : ℝ))).toNat

end

end A094102.P8108812630091811762

namespace A094102

/-- `A000045(A133823(n)^(1-2/3))` -/
def P8108812630091811762.Spec : Prop :=
  ∀ n, P8108812630091811762.a n = A094102 (n + 1)

end A094102

/-! ## A094102.P4014822923637525956

`A000045(A053615(n-floor(sqrt(n)))+1)`
-/

namespace A094102.P4014822923637525956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A053615 (n - Nat.sqrt n) + 1).toNat

end

end A094102.P4014822923637525956

namespace A094102

/-- `A000045(A053615(n-floor(sqrt(n)))+1)` -/
def P4014822923637525956.Spec : Prop :=
  ∀ n, P4014822923637525956.a n = A094102 (n + 1)

end A094102

/-! ## A094102.P3514796808503990636

`A115338(A124258(n+1))`
-/

namespace A094102.P3514796808503990636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115338 (A124258 (n + 1)).toNat

end

end A094102.P3514796808503990636

namespace A094102

/-- `A115338(A124258(n+1))` -/
def P3514796808503990636.Spec : Prop :=
  ∀ n, P3514796808503990636.a n = A094102 (n + 1)

end A094102

/-! ## A094102.P4138001785242616847

`A000045(A004739(comp[n²]))`
-/

namespace A094102.P4138001785242616847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004739 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A094102.P4138001785242616847

namespace A094102

/-- `A000045(A004739(comp[n²]))` -/
def P4138001785242616847.Spec : Prop :=
  ∀ n, P4138001785242616847.a n = A094102 (n + 1)

end A094102

/-! ## A094102.P15101756107421884668

`A000045(A053188(A049068(n+1)))`
-/

namespace A094102.P15101756107421884668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A053188 (A049068 (n + 1)).toNat).toNat

end

end A094102.P15101756107421884668

namespace A094102

/-- `A000045(A053188(A049068(n+1)))` -/
def P15101756107421884668.Spec : Prop :=
  ∀ n, P15101756107421884668.a n = A094102 (n + 1)

end A094102

/-! ## A094102.P1983071124866970297

`A000045(A003983(A007606(n+1)))`
-/

namespace A094102.P1983071124866970297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003983 (A007606 (n + 1)).toNat).toNat

end

end A094102.P1983071124866970297

namespace A094102

/-- `A000045(A003983(A007606(n+1)))` -/
def P1983071124866970297.Spec : Prop :=
  ∀ n, P1983071124866970297.a n = A094102 (n + 1)

end A094102

/-! ## A094102.P8569085025867840900

`A000045(A056559(A133826(n)))`
-/

namespace A094102.P8569085025867840900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A056559 (A133826 n).toNat).toNat

end

end A094102.P8569085025867840900

namespace A094102

/-- `A000045(A056559(A133826(n)))` -/
def P8569085025867840900.Spec : Prop :=
  ∀ n, P8569085025867840900.a n = A094102 (n + 1)

end A094102

/-! ## A094102.P17235595760057193580

`A000045(A019555(A133823(n)))`
-/

namespace A094102.P17235595760057193580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A019555 (A133823 n).toNat).toNat

end

end A094102.P17235595760057193580

namespace A094102

/-- `A000045(A019555(A133823(n)))` -/
def P17235595760057193580.Spec : Prop :=
  ∀ n, P17235595760057193580.a n = A094102 (n + 1)

end A094102

/-! ## A094102.P3044029773456741635

`A000044(A325181(n))`
-/

namespace A094102.P3044029773456741635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000044 (A325181 n).toNat

end

end A094102.P3044029773456741635

namespace A094102

/-- `A000044(A325181(n))` -/
def P3044029773456741635.Spec : Prop :=
  ∀ n, P3044029773456741635.a n = A094102 (n + 1)

end A094102

/-! ## A094102.P11800482367071553046

`A059974(A138143(n+1))`
-/

namespace A094102.P11800482367071553046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059974 (A138143 (n + 1)).toNat

end

end A094102.P11800482367071553046

namespace A094102

/-- `A059974(A138143(n+1))` -/
def P11800482367071553046.Spec : Prop :=
  ∀ n, P11800482367071553046.a n = A094102 (n + 1)

end A094102

/-!
# A094103: a(n) = sum along n-th diagonal of A094102 (sloping downward to left).

The programs for A094103, the canonical program `A094103.P14918747936923867159` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094103 has offset 1).

The definition of A094103 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094103.P14918747936923867159

`a(n-2)+a(n-3)+a(n-4)-a(n-5)-a(n-7)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094103

/-- `a(n-2)+a(n-3)+a(n-4)-a(n-5)-a(n-7)` -/
def P14918747936923867159.Spec : Prop :=
  ∀ n, P14918747936923867159.a n = A094103 (n + 1)

theorem P14918747936923867159.correct : P14918747936923867159.Spec := by
  intro n
  simp only [A094103, Nat.add_sub_cancel]

end A094103

/-! ## A094103.P2215526242777518666

`ceil(∑[A053602(n+1)/2])`
-/

namespace A094103.P2215526242777518666
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053602 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A094103.P2215526242777518666

namespace A094103

/-- `ceil(∑[A053602(n+1)/2])` -/
def P2215526242777518666.Spec : Prop :=
  ∀ n, P2215526242777518666.a n = A094103 (n + 1)

end A094103

/-! ## A094103.P5942553205927302300

`round(∑[A272912(n+3)/2])`
-/

namespace A094103.P5942553205927302300
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272912 (n + 3) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094103.P5942553205927302300

namespace A094103

/-- `round(∑[A272912(n+3)/2])` -/
def P5942553205927302300.Spec : Prop :=
  ∀ n, P5942553205927302300.a n = A094103 (n + 1)

end A094103

/-! ## A094103.P7704792286566068806

`∑[A100887(ceil(xor(1, n)/2))-((n+2)%3-1)]`
-/

namespace A094103.P7704792286566068806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100887 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat - ((((n + 2) % 3 : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094103.P7704792286566068806

namespace A094103

/-- `∑[A100887(ceil(xor(1, n)/2))-((n+2)%3-1)]` -/
def P7704792286566068806.Spec : Prop :=
  ∀ n, P7704792286566068806.a n = A094103 (n + 1)

end A094103

/-! ## A094103.P3817631553019729798

`∑[A094686(A028242(n))+A049347(n)]`
-/

namespace A094103.P3817631553019729798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 (A028242 n).toNat + A049347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094103.P3817631553019729798

namespace A094103

/-- `∑[A094686(A028242(n))+A049347(n)]` -/
def P3817631553019729798.Spec : Prop :=
  ∀ n, P3817631553019729798.a n = A094103 (n + 1)

end A094103

/-! ## A094103.P11573317006983592443

`∑[A051449(n+6)-Δ[A051449(n+7)]]`
-/

namespace A094103.P11573317006983592443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051449 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051449 (n + 6) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094103.P11573317006983592443

namespace A094103

/-- `∑[A051449(n+6)-Δ[A051449(n+7)]]` -/
def P11573317006983592443.Spec : Prop :=
  ∀ n, P11573317006983592443.a n = A094103 (n + 1)

end A094103

/-!
# A094104: Primes of the form 2*prime(n) + prime(n+1).

The programs for A094104, the canonical program `A094104.P401703695270972638` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094104 has offset 1).

The definition of A094104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094104.P401703695270972638

`p?[A001748(n+1)+A001223(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A094104

/-- `p?[A001748(n+1)+A001223(n+1)]` -/
def P401703695270972638.Spec : Prop :=
  ∀ n, P401703695270972638.a n = A094104 (n + 1)

theorem P401703695270972638.correct : P401703695270972638.Spec := by
  intro n
  simp only [A094104, Nat.add_sub_cancel]

end A094104

/-! ## A094104.P12437415668960613593

`p?[A001043(n+1)+A000040(n+1)]`
-/

namespace A094104.P12437415668960613593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P12437415668960613593

namespace A094104

/-- `p?[A001043(n+1)+A000040(n+1)]` -/
def P12437415668960613593.Spec : Prop :=
  ∀ n, P12437415668960613593.a n = A094104 (n + 1)

theorem P12437415668960613593.correct : P12437415668960613593.Spec := by
  intro n
  simp only [A094104, Nat.add_sub_cancel, A094104.P12437415668960613593.f1, A094104.P12437415668960613593.a, A094104.P401703695270972638.f1, A094104.P401703695270972638.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A001223, A001223.P5083310856331133973.a, A001748, A001748.P16019639290970068825.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094104

/-! ## A094104.P370096001970477682

`p?[A001747(n+1)+A000040(n+1)]`
-/

namespace A094104.P370096001970477682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P370096001970477682

namespace A094104

/-- `p?[A001747(n+1)+A000040(n+1)]` -/
def P370096001970477682.Spec : Prop :=
  ∀ n, P370096001970477682.a n = A094104 (n + 1)

end A094104

/-! ## A094104.P14782336745597721630

`p?[A100484(n+1)+A065091(n+1)]`
-/

namespace A094104.P14782336745597721630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P14782336745597721630

namespace A094104

/-- `p?[A100484(n+1)+A065091(n+1)]` -/
def P14782336745597721630.Spec : Prop :=
  ∀ n, P14782336745597721630.a n = A094104 (n + 1)

theorem P14782336745597721630.correct : P14782336745597721630.Spec := by
  intro n
  simp only [A094104, Nat.add_sub_cancel, A094104.P14782336745597721630.f1, A094104.P14782336745597721630.a, A094104.P401703695270972638.f1, A094104.P401703695270972638.a, A001223, A001223.P5083310856331133973.a, A001748, A001748.P16019639290970068825.a, A065091, A065091.P6971844946592549357.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094104

/-! ## A094104.P18310316678268607712

`p?[A001043(n+1)+A008578(n+2)]`
-/

namespace A094104.P18310316678268607712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P18310316678268607712

namespace A094104

/-- `p?[A001043(n+1)+A008578(n+2)]` -/
def P18310316678268607712.Spec : Prop :=
  ∀ n, P18310316678268607712.a n = A094104 (n + 1)

end A094104

/-! ## A094104.P3666206658131198317

`p?[A001747(n+1)+A008578(n+2)]`
-/

namespace A094104.P3666206658131198317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) + A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P3666206658131198317

namespace A094104

/-- `p?[A001747(n+1)+A008578(n+2)]` -/
def P3666206658131198317.Spec : Prop :=
  ∀ n, P3666206658131198317.a n = A094104 (n + 1)

end A094104

/-! ## A094104.P5544635963698289512

`p?[A011974(n+2)+A000040(n+1)]`
-/

namespace A094104.P5544635963698289512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P5544635963698289512

namespace A094104

/-- `p?[A011974(n+2)+A000040(n+1)]` -/
def P5544635963698289512.Spec : Prop :=
  ∀ n, P5544635963698289512.a n = A094104 (n + 1)

end A094104

/-! ## A094104.P12249648249704147131

`p?[A034961(n+1)-A031131(n+1)]`
-/

namespace A094104.P12249648249704147131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) - A031131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P12249648249704147131

namespace A094104

/-- `p?[A034961(n+1)-A031131(n+1)]` -/
def P12249648249704147131.Spec : Prop :=
  ∀ n, P12249648249704147131.a n = A094104 (n + 1)

theorem P12249648249704147131.correct : P12249648249704147131.Spec := by
  intro n
  simp only [A094104, Nat.add_sub_cancel, A094104.P12249648249704147131.f1, A094104.P12249648249704147131.a, A094104.P401703695270972638.f1, A094104.P401703695270972638.a, A001223, A001223.P5083310856331133973.a, A001748, A001748.P16019639290970068825.a, A031131, A031131.P2453725465626413076.a, A034961, A034961.P9480249767911558173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094104

/-! ## A094104.P5496426692919700389

`p?[A100484(n+1)+A000040(n+2)]`
-/

namespace A094104.P5496426692919700389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P5496426692919700389

namespace A094104

/-- `p?[A100484(n+1)+A000040(n+2)]` -/
def P5496426692919700389.Spec : Prop :=
  ∀ n, P5496426692919700389.a n = A094104 (n + 1)

theorem P5496426692919700389.correct : P5496426692919700389.Spec := by
  intro n
  simp only [A094104, Nat.add_sub_cancel, A094104.P5496426692919700389.f1, A094104.P5496426692919700389.a, A094104.P401703695270972638.f1, A094104.P401703695270972638.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5083310856331133973.a, A001748, A001748.P16019639290970068825.a, A100484, A100484.P9678625670825099636.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094104

/-! ## A094104.P5842949818929228437

`p?[A096277(n+1)-A181428(n+1)]`
-/

namespace A094104.P5842949818929228437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096277 (n + 1) - A181428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P5842949818929228437

namespace A094104

/-- `p?[A096277(n+1)-A181428(n+1)]` -/
def P5842949818929228437.Spec : Prop :=
  ∀ n, P5842949818929228437.a n = A094104 (n + 1)

theorem P5842949818929228437.correct : P5842949818929228437.Spec := by
  intro n
  simp only [A094104, Nat.add_sub_cancel, A094104.P5842949818929228437.f1, A094104.P5842949818929228437.a, A094104.P401703695270972638.f1, A094104.P401703695270972638.a, A001223, A001223.P5083310856331133973.a, A001748, A001748.P16019639290970068825.a, A096277, A096277.P17564688573804244660.a, A181428, A181428.P2003735190548304675.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A031131, A031131.P2453725465626413076.a, A046933, A046933.P9479947770746769512.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094104

/-! ## A094104.P12425250462671208424

`p?[A040976(n+1)+2*A028815(n)]`
-/

namespace A094104.P12425250462671208424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2 * A028815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P12425250462671208424

namespace A094104

/-- `p?[A040976(n+1)+2*A028815(n)]` -/
def P12425250462671208424.Spec : Prop :=
  ∀ n, P12425250462671208424.a n = A094104 (n + 1)

end A094104

/-! ## A094104.P15317411711009335238

`p?[A001043(n+1)+A006093(n+1)+1]`
-/

namespace A094104.P15317411711009335238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A006093 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P15317411711009335238

namespace A094104

/-- `p?[A001043(n+1)+A006093(n+1)+1]` -/
def P15317411711009335238.Spec : Prop :=
  ∀ n, P15317411711009335238.a n = A094104 (n + 1)

theorem P15317411711009335238.correct : P15317411711009335238.Spec := by
  intro n
  simp only [A094104, Nat.add_sub_cancel, A094104.P15317411711009335238.f1, A094104.P15317411711009335238.a, A094104.P401703695270972638.f1, A094104.P401703695270972638.a, A001043, A001043.P18269783162673735460.a, A001223, A001223.P5083310856331133973.a, A001748, A001748.P16019639290970068825.a, A006093, A006093.P2906174024863549003.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094104

/-! ## A094104.P317663220582380889

`p?[A001747(n+1)+A006093(n+1)+1]`
-/

namespace A094104.P317663220582380889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) + (A006093 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P317663220582380889

namespace A094104

/-- `p?[A001747(n+1)+A006093(n+1)+1]` -/
def P317663220582380889.Spec : Prop :=
  ∀ n, P317663220582380889.a n = A094104 (n + 1)

end A094104

/-! ## A094104.P15822190002624571235

`p?[A001043(n+1)+A040976(n+1)+2]`
-/

namespace A094104.P15822190002624571235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) + (A040976 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P15822190002624571235

namespace A094104

/-- `p?[A001043(n+1)+A040976(n+1)+2]` -/
def P15822190002624571235.Spec : Prop :=
  ∀ n, P15822190002624571235.a n = A094104 (n + 1)

theorem P15822190002624571235.correct : P15822190002624571235.Spec := by
  intro n
  simp only [A094104, Nat.add_sub_cancel, A094104.P15822190002624571235.f1, A094104.P15822190002624571235.a, A094104.P401703695270972638.f1, A094104.P401703695270972638.a, A001043, A001043.P18269783162673735460.a, A001223, A001223.P5083310856331133973.a, A001748, A001748.P16019639290970068825.a, A040976, A040976.P11599754272797435513.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094104

/-! ## A094104.P1869330529815857395

`p?[A001747(n+1)+A040976(n+1)+2]`
-/

namespace A094104.P1869330529815857395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) + (A040976 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P1869330529815857395

namespace A094104

/-- `p?[A001747(n+1)+A040976(n+1)+2]` -/
def P1869330529815857395.Spec : Prop :=
  ∀ n, P1869330529815857395.a n = A094104 (n + 1)

end A094104

/-! ## A094104.P7863175640603133758

`p?[A000040(n+1)+2*A008578(n+1)]`
-/

namespace A094104.P7863175640603133758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2 * A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P7863175640603133758

namespace A094104

/-- `p?[A000040(n+1)+2*A008578(n+1)]` -/
def P7863175640603133758.Spec : Prop :=
  ∀ n, P7863175640603133758.a n = A094104 (n + 1)

end A094104

/-! ## A094104.P13423279818526549592

`p?[A065091(n+1)+2*A000040(n+1)]`
-/

namespace A094104.P13423279818526549592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + 2 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P13423279818526549592

namespace A094104

/-- `p?[A065091(n+1)+2*A000040(n+1)]` -/
def P13423279818526549592.Spec : Prop :=
  ∀ n, P13423279818526549592.a n = A094104 (n + 1)

end A094104

/-! ## A094104.P11393662783866494925

`p?[A001747(n+1)+record[A006530(n+2)]]`
-/

namespace A094104.P11393662783866494925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P11393662783866494925

namespace A094104

/-- `p?[A001747(n+1)+record[A006530(n+2)]]` -/
def P11393662783866494925.Spec : Prop :=
  ∀ n, P11393662783866494925.a n = A094104 (n + 1)

end A094104

/-! ## A094104.P15054242642402137207

`p?[A001747(n+1)+record[A020639(n+2)]]`
-/

namespace A094104.P15054242642402137207
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P15054242642402137207

namespace A094104

/-- `p?[A001747(n+1)+record[A020639(n+2)]]` -/
def P15054242642402137207.Spec : Prop :=
  ∀ n, P15054242642402137207.a n = A094104 (n + 1)

end A094104

/-! ## A094104.P11473937596991412116

`p?[A011974(n+2)+record[A006530(n+2)]]`
-/

namespace A094104.P11473937596991412116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094104.P11473937596991412116

namespace A094104

/-- `p?[A011974(n+2)+record[A006530(n+2)]]` -/
def P11473937596991412116.Spec : Prop :=
  ∀ n, P11473937596991412116.a n = A094104 (n + 1)

end A094104

/-!
# A094105: Primes of the form prime(k) + 2*prime(k+1).

The programs for A094105, the canonical program `A094105.P14354361594551790093` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094105 has offset 1).

The definition of A094105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094105.P14354361594551790093

`p?[A034961(n+1)+A031131(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A094105

/-- `p?[A034961(n+1)+A031131(n+1)]` -/
def P14354361594551790093.Spec : Prop :=
  ∀ n, P14354361594551790093.a n = A094105 (n + 1)

theorem P14354361594551790093.correct : P14354361594551790093.Spec := by
  intro n
  simp only [A094105, Nat.add_sub_cancel]

end A094105

/-! ## A094105.P16031419205269449534

`p?[A364411(n+1)]`
-/

namespace A094105.P16031419205269449534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094105.P16031419205269449534

namespace A094105

/-- `p?[A364411(n+1)]` -/
def P16031419205269449534.Spec : Prop :=
  ∀ n, P16031419205269449534.a n = A094105 (n + 1)

end A094105

/-! ## A094105.P7690708571040327864

`A364411(A396898(n+1))`
-/

namespace A094105.P7690708571040327864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (A396898 (n + 1)).toNat

end

end A094105.P7690708571040327864

namespace A094105

/-- `A364411(A396898(n+1))` -/
def P7690708571040327864.Spec : Prop :=
  ∀ n, P7690708571040327864.a n = A094105 (n + 1)

end A094105

/-! ## A094105.P11939452522013391615

`p?[A011974(n+1)+A000040(n+1)]`
-/

namespace A094105.P11939452522013391615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094105.P11939452522013391615

namespace A094105

/-- `p?[A011974(n+1)+A000040(n+1)]` -/
def P11939452522013391615.Spec : Prop :=
  ∀ n, P11939452522013391615.a n = A094105 (n + 1)

end A094105

/-! ## A094105.P2077802455634916008

`p?[A065091(n+1)+A001043(n+1)]`
-/

namespace A094105.P2077802455634916008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094105.P2077802455634916008

namespace A094105

/-- `p?[A065091(n+1)+A001043(n+1)]` -/
def P2077802455634916008.Spec : Prop :=
  ∀ n, P2077802455634916008.a n = A094105 (n + 1)

end A094105

/-! ## A094105.P9199936409080879156

`p?[A001748(n+1)-A054541(n+1)]`
-/

namespace A094105.P9199936409080879156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094105.P9199936409080879156

namespace A094105

/-- `p?[A001748(n+1)-A054541(n+1)]` -/
def P9199936409080879156.Spec : Prop :=
  ∀ n, P9199936409080879156.a n = A094105 (n + 1)

end A094105

/-! ## A094105.P8007402652986337273

`p?[A100484(n+2)+A008578(n+2)]`
-/

namespace A094105.P8007402652986337273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2) + A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094105.P8007402652986337273

namespace A094105

/-- `p?[A100484(n+2)+A008578(n+2)]` -/
def P8007402652986337273.Spec : Prop :=
  ∀ n, P8007402652986337273.a n = A094105 (n + 1)

end A094105

/-! ## A094105.P14602144208149097621

`∩[A364411(n+1), A380468(n+1)]`
-/

namespace A094105.P14602144208149097621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094105.P14602144208149097621

namespace A094105

/-- `∩[A364411(n+1), A380468(n+1)]` -/
def P14602144208149097621.Spec : Prop :=
  ∀ n, (P14602144208149097621.a n : ℤ) = A094105 (n + 1)

end A094105

/-! ## A094105.P12313452874309254557

`∩[A000040(n+1), A364411(n+1)]`
-/

namespace A094105.P12313452874309254557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094105.P12313452874309254557

namespace A094105

/-- `∩[A000040(n+1), A364411(n+1)]` -/
def P12313452874309254557.Spec : Prop :=
  ∀ n, (P12313452874309254557.a n : ℤ) = A094105 (n + 1)

end A094105

/-! ## A094105.P7588055458210542260

`∩[A004139(n+1), A364411(n+1)]`
-/

namespace A094105.P7588055458210542260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094105.P7588055458210542260

namespace A094105

/-- `∩[A004139(n+1), A364411(n+1)]` -/
def P7588055458210542260.Spec : Prop :=
  ∀ n, (P7588055458210542260.a n : ℤ) = A094105 (n + 1)

end A094105

/-! ## A094105.P15979316218019113734

`∩[A006005(n+1), A364411(n+1)]`
-/

namespace A094105.P15979316218019113734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094105.P15979316218019113734

namespace A094105

/-- `∩[A006005(n+1), A364411(n+1)]` -/
def P15979316218019113734.Spec : Prop :=
  ∀ n, (P15979316218019113734.a n : ℤ) = A094105 (n + 1)

end A094105

/-! ## A094105.P8707931297976873448

`∩[A008578(n+1), A364411(n+1)]`
-/

namespace A094105.P8707931297976873448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094105.P8707931297976873448

namespace A094105

/-- `∩[A008578(n+1), A364411(n+1)]` -/
def P8707931297976873448.Spec : Prop :=
  ∀ n, (P8707931297976873448.a n : ℤ) = A094105 (n + 1)

end A094105

/-! ## A094105.P10540390572710698475

`∩[A045319(n+1), A364411(n+1)]`
-/

namespace A094105.P10540390572710698475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094105.P10540390572710698475

namespace A094105

/-- `∩[A045319(n+1), A364411(n+1)]` -/
def P10540390572710698475.Spec : Prop :=
  ∀ n, (P10540390572710698475.a n : ℤ) = A094105 (n + 1)

end A094105

/-! ## A094105.P2402046062528045496

`∩[A045344(n+1), A364411(n+1)]`
-/

namespace A094105.P2402046062528045496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094105.P2402046062528045496

namespace A094105

/-- `∩[A045344(n+1), A364411(n+1)]` -/
def P2402046062528045496.Spec : Prop :=
  ∀ n, (P2402046062528045496.a n : ℤ) = A094105 (n + 1)

end A094105

/-! ## A094105.P8376142656184185485

`∩[A065091(n+1), A364411(n+1)]`
-/

namespace A094105.P8376142656184185485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094105.P8376142656184185485

namespace A094105

/-- `∩[A065091(n+1), A364411(n+1)]` -/
def P8376142656184185485.Spec : Prop :=
  ∀ n, (P8376142656184185485.a n : ℤ) = A094105 (n + 1)

end A094105

/-! ## A094105.P5258619358090235730

`∩[A065396(n+1), A364411(n+1)]`
-/

namespace A094105.P5258619358090235730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094105.P5258619358090235730

namespace A094105

/-- `∩[A065396(n+1), A364411(n+1)]` -/
def P5258619358090235730.Spec : Prop :=
  ∀ n, (P5258619358090235730.a n : ℤ) = A094105 (n + 1)

end A094105

/-! ## A094105.P9841647260747095795

`∩[A071621(n+1), A364411(n+1)]`
-/

namespace A094105.P9841647260747095795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094105.P9841647260747095795

namespace A094105

/-- `∩[A071621(n+1), A364411(n+1)]` -/
def P9841647260747095795.Spec : Prop :=
  ∀ n, (P9841647260747095795.a n : ℤ) = A094105 (n + 1)

end A094105

/-! ## A094105.P16520842827297039579

`∩[A083249(n+1), A364411(n+1)]`
-/

namespace A094105.P16520842827297039579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094105.P16520842827297039579

namespace A094105

/-- `∩[A083249(n+1), A364411(n+1)]` -/
def P16520842827297039579.Spec : Prop :=
  ∀ n, (P16520842827297039579.a n : ℤ) = A094105 (n + 1)

end A094105

/-! ## A094105.P6951142370338481031

`∩[A106118(n+1), A364411(n+1)]`
-/

namespace A094105.P6951142370338481031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094105.P6951142370338481031

namespace A094105

/-- `∩[A106118(n+1), A364411(n+1)]` -/
def P6951142370338481031.Spec : Prop :=
  ∀ n, (P6951142370338481031.a n : ℤ) = A094105 (n + 1)

end A094105

/-! ## A094105.P16439028371417814300

`∩[A106119(n+1), A364411(n+1)]`
-/

namespace A094105.P16439028371417814300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094105.P16439028371417814300

namespace A094105

/-- `∩[A106119(n+1), A364411(n+1)]` -/
def P16439028371417814300.Spec : Prop :=
  ∀ n, (P16439028371417814300.a n : ℤ) = A094105 (n + 1)

end A094105

/-!
# A094107: Primes which can be written as prime(prime(k))-6 for some k>1.

The programs for A094107, there is no canonical definition to state claims against.
-/

/-! ## A094107.P17596846830781287659

`p?[A006450(n+1)-6]`
-/

namespace A094107.P17596846830781287659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094107.P17596846830781287659

/-! ## A094107.P853977568413357880

`p?[A000040(A128059(n))-6]`
-/

namespace A094107.P853977568413357880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A128059 n).toNat - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094107.P853977568413357880

/-! ## A094107.P6554924492009608413

`p?[A361707(A000040(n+1))-2]`
-/

namespace A094107.P6554924492009608413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361707 (A000040 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094107.P6554924492009608413

/-! ## A094107.P16303901537311450495

`p?[A008864(sqrt(A001248(n+1)))-7]`
-/

namespace A094107.P16303901537311450495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094107.P16303901537311450495

/-! ## A094107.P12841435106103458869

`p?[A007444(A008864(n+1)-1)-4]`
-/

namespace A094107.P12841435106103458869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007444 (A008864 (n + 1) - 1).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A094107.P12841435106103458869

/-!
# A094109: Start with "I" in Roman numerals (one). The next number (in Roman numerals) describes the number of Roman numerals written previously in the sequence. Convert this infinite sequence into an infinite sequence of Arabic numbers.

The programs for A094109, there is no canonical definition to state claims against.
-/

/-! ## A094109.P4409915385737988771

`a(n-1)+A006968(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A094109.P4409915385737988771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + A006968 (a (n - 1)).toNat

end

end A094109.P4409915385737988771

/-!
# A094110: Start with the word "One". The next word is the number of letters written previously. Convert this infinite sequence of words into an infinite sequence of numbers.

The programs for A094110, there is no canonical definition to state claims against.
-/

/-! ## A094110.P17478271668879905839

`A326937(Δ[A007055(n)])+A139097(n)`
-/

namespace A094110.P17478271668879905839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326937 (f1 (n + 1) - f1 n).toNat + A139097 n

end

end A094110.P17478271668879905839

/-! ## A094110.P5877133794712475235

`A326937(A007055(n))+A139097(n)`
-/

namespace A094110.P5877133794712475235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326937 (A007055 n).toNat + A139097 n

end

end A094110.P5877133794712475235

/-! ## A094110.P2447802219459729126

`A139097(n)+A008683(A000079(n))`
-/

namespace A094110.P2447802219459729126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139097 n + A008683 (A000079 n).toNat

end

end A094110.P2447802219459729126

/-! ## A094110.P10069459670004718594

`A139097(n)+A008683(A187941(n))`
-/

namespace A094110.P10069459670004718594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139097 n + A008683 (A187941 n).toNat

end

end A094110.P10069459670004718594

/-! ## A094110.P4583467174717491293

`A240328(A062025(n))+A139097(n)`
-/

namespace A094110.P4583467174717491293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (A062025 n).toNat + A139097 n

end

end A094110.P4583467174717491293

/-!
# A094112: Triangle read by rows: T(n,k) is the number of permutations p of [n] in which the length of the longest initial segment avoiding the 123-, the 132- and the 231-pattern is equal to k.

The programs for A094112, the canonical program `A094112.P13916715946078502144` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094112 has offset 1).

The definition of A094112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2486 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094112.P13916715946078502144

`A092582(C(2, n)+n)+Δ[A035214(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A094112

/-- `A092582(C(2, n)+n)+Δ[A035214(n)]` -/
def P13916715946078502144.Spec : Prop :=
  ∀ n, P13916715946078502144.a n = A094112 (n + 1)

theorem P13916715946078502144.correct : P13916715946078502144.Spec := by
  intro n
  simp only [A094112, Nat.add_sub_cancel]

end A094112

/-! ## A094112.P10395914454799547968

`A092582(A000038(n)+n)+Δ[A035214(n)]`
-/

namespace A094112.P10395914454799547968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092582 (A000038 n + (n : ℤ)).toNat + (f1 (n + 1) - f1 n)

end

end A094112.P10395914454799547968

namespace A094112

/-- `A092582(A000038(n)+n)+Δ[A035214(n)]` -/
def P10395914454799547968.Spec : Prop :=
  ∀ n, P10395914454799547968.a n = A094112 (n + 1)

end A094112

/-! ## A094112.P16922710126223132495

`A130477(A038722(n+1))+Δ[A010054(n)]`
-/

namespace A094112.P16922710126223132495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130477 (A038722 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A094112.P16922710126223132495

namespace A094112

/-- `A130477(A038722(n+1))+Δ[A010054(n)]` -/
def P16922710126223132495.Spec : Prop :=
  ∀ n, P16922710126223132495.a n = A094112 (n + 1)

end A094112

/-! ## A094112.P10613729469489784347

`A130477(A038722(n+1))+Δ[A035214(n)]`
-/

namespace A094112.P10613729469489784347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130477 (A038722 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A094112.P10613729469489784347

namespace A094112

/-- `A130477(A038722(n+1))+Δ[A035214(n)]` -/
def P10613729469489784347.Spec : Prop :=
  ∀ n, P10613729469489784347.a n = A094112 (n + 1)

end A094112

/-! ## A094112.P193150314978153425

`A128138(n+1)*A173333(n+1)`
-/

namespace A094112.P193150314978153425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128138 (n + 1) * A173333 (n + 1)

end

end A094112.P193150314978153425

namespace A094112

/-- `A128138(n+1)*A173333(n+1)` -/
def P193150314978153425.Spec : Prop :=
  ∀ n, P193150314978153425.a n = A094112 (n + 1)

end A094112

/-! ## A094112.P15609258183272045511

`A094587(∑[A035214(n)])*A128138(n+1)`
-/

namespace A094112.P15609258183272045511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A128138 (n + 1)

end

end A094112.P15609258183272045511

namespace A094112

/-- `A094587(∑[A035214(n)])*A128138(n+1)` -/
def P15609258183272045511.Spec : Prop :=
  ∀ n, P15609258183272045511.a n = A094112 (n + 1)

end A094112

/-! ## A094112.P13515231377198450119

`A002262(A181133(n+1))*A173333(n+1)`
-/

namespace A094112.P13515231377198450119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A181133 (n + 1)).toNat * A173333 (n + 1)

end

end A094112.P13515231377198450119

namespace A094112

/-- `A002262(A181133(n+1))*A173333(n+1)` -/
def P13515231377198450119.Spec : Prop :=
  ∀ n, P13515231377198450119.a n = A094112 (n + 1)

end A094112

/-! ## A094112.P5103609134658290571

`(A002260(n+1)-A023532(n))*A173333(n+1)`
-/

namespace A094112.P5103609134658290571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - A023532 n) * A173333 (n + 1)

end

end A094112.P5103609134658290571

namespace A094112

/-- `(A002260(n+1)-A023532(n))*A173333(n+1)` -/
def P5103609134658290571.Spec : Prop :=
  ∀ n, P5103609134658290571.a n = A094112 (n + 1)

end A094112

/-! ## A094112.P1644258827918555476

`A092582(A233583(n+1))+Δ[A035214(n)]`
-/

namespace A094112.P1644258827918555476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092582 (A233583 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A094112.P1644258827918555476

namespace A094112

/-- `A092582(A233583(n+1))+Δ[A035214(n)]` -/
def P1644258827918555476.Spec : Prop :=
  ∀ n, P1644258827918555476.a n = A094112 (n + 1)

end A094112

/-!
# A094113: Total area of all 1-histograms of length n.

The programs for A094113, there is no canonical definition to state claims against.
-/

/-! ## A094113.P8747757396627896908

`A106245(A081268(n))`
-/

namespace A094113.P8747757396627896908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106245 (A081268 n).toNat

end

end A094113.P8747757396627896908

/-!
# A094114: a(n) = -Sum_{i=1..n-1} (-1)^i*2^valuation(i,3).

The programs for A094114, the canonical program `A094114.P17319484531371158423` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094114 has offset 1).

The definition of A094114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6667 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094114.P11856948852817644627

`A061392(A093347(n+1))`
-/

namespace A094114.P11856948852817644627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A093347 (n + 1)).toNat

end

end A094114.P11856948852817644627

namespace A094114

/-- `A061392(A093347(n+1))` -/
def P11856948852817644627.Spec : Prop :=
  ∀ n, P11856948852817644627.a n = A094114 (n + 1)

end A094114

/-! ## A094114.P5338231093507184341

`A265263(2*A289813(n))-A289813(n)`
-/

namespace A094114.P5338231093507184341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265263 (2 * A289813 n).toNat - A289813 n

end

end A094114.P5338231093507184341

namespace A094114

/-- `A265263(2*A289813(n))-A289813(n)` -/
def P5338231093507184341.Spec : Prop :=
  ∀ n, P5338231093507184341.a n = A094114 (n + 1)

end A094114

/-! ## A094114.P17319484531371158423

`A065361(A004526(n+1)+n)-A065361(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094114

/-- `A065361(A004526(n+1)+n)-A065361(n)` -/
def P17319484531371158423.Spec : Prop :=
  ∀ n, P17319484531371158423.a n = A094114 (n + 1)

theorem P17319484531371158423.correct : P17319484531371158423.Spec := by
  intro n
  simp only [A094114, Nat.add_sub_cancel]

end A094114

/-! ## A094114.P3836687041454840263

`ceil(A332497(n)/2)`
-/

namespace A094114.P3836687041454840263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A332497 n : ℚ) / 2⌉

end

end A094114.P3836687041454840263

namespace A094114

/-- `ceil(A332497(n)/2)` -/
def P3836687041454840263.Spec : Prop :=
  ∀ n, P3836687041454840263.a n = A094114 (n + 1)

end A094114

/-! ## A094114.P16528024286456228027

`A110654(A332497(n))`
-/

namespace A094114.P16528024286456228027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A332497 n).toNat

end

end A094114.P16528024286456228027

namespace A094114

/-- `A110654(A332497(n))` -/
def P16528024286456228027.Spec : Prop :=
  ∀ n, P16528024286456228027.a n = A094114 (n + 1)

end A094114

/-! ## A094114.P5535443747412981173

`A004526(A332497(n)+1)`
-/

namespace A094114.P5535443747412981173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A332497 n + 1).toNat

end

end A094114.P5535443747412981173

namespace A094114

/-- `A004526(A332497(n)+1)` -/
def P5535443747412981173.Spec : Prop :=
  ∀ n, P5535443747412981173.a n = A094114 (n + 1)

end A094114

/-! ## A094114.P12132297107738462452

`A008619(A332497(n)+1)-1`
-/

namespace A094114.P12132297107738462452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A332497 n + 1).toNat - 1

end

end A094114.P12132297107738462452

namespace A094114

/-- `A008619(A332497(n)+1)-1` -/
def P12132297107738462452.Spec : Prop :=
  ∀ n, P12132297107738462452.a n = A094114 (n + 1)

end A094114

/-! ## A094114.P15648204818461755349

`A059169(2*A332497(n)+1)`
-/

namespace A094114.P15648204818461755349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (2 * A332497 n + 1).toNat

end

end A094114.P15648204818461755349

namespace A094114

/-- `A059169(2*A332497(n)+1)` -/
def P15648204818461755349.Spec : Prop :=
  ∀ n, P15648204818461755349.a n = A094114 (n + 1)

end A094114

/-! ## A094114.P1318052217564627904

`(A332497(n)+A000035(n))/2`
-/

namespace A094114.P1318052217564627904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332497 n + A000035 n : ℚ) / 2

end

end A094114.P1318052217564627904

namespace A094114

/-- `(A332497(n)+A000035(n))/2` -/
def P1318052217564627904.Spec : Prop :=
  ∀ n, P1318052217564627904.a n = (A094114 (n + 1) : ℚ)

theorem P1318052217564627904.correct : P1318052217564627904.Spec := by
  intro n
  simp only [A094114, Nat.add_sub_cancel, A094114.P1318052217564627904.a, A094114.P17319484531371158423.a, A000035, A000035.P2023072528413494694.a, A004526, A004526.P10084182425416171735.a, A065361, A065361.P8413146355220226985.a, A332497, A332497.P4742121065997566983.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094114

/-! ## A094114.P14616961060622931238

`A059169(A332497(n)+A332497(n)+1)`
-/

namespace A094114.P14616961060622931238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A332497 n + (A332497 n + 1)).toNat

end

end A094114.P14616961060622931238

namespace A094114

/-- `A059169(A332497(n)+A332497(n)+1)` -/
def P14616961060622931238.Spec : Prop :=
  ∀ n, P14616961060622931238.a n = A094114 (n + 1)

end A094114

/-! ## A094114.P10442317828682296177

`(A332498(A003278(n+1))+A332497(n))/2`
-/

namespace A094114.P10442317828682296177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332498 (A003278 (n + 1)).toNat + A332497 n : ℚ) / 2

end

end A094114.P10442317828682296177

namespace A094114

/-- `(A332498(A003278(n+1))+A332497(n))/2` -/
def P10442317828682296177.Spec : Prop :=
  ∀ n, P10442317828682296177.a n = (A094114 (n + 1) : ℚ)

end A094114

/-!
# A094115: Partial sums of A093347.

The programs for A094115, the canonical program `A094115.P8635219247474367787` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094115 has offset 1).

The definition of A094115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2971 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094115.P7239055982223057375

`∑[A093347(n+1)]`
-/

namespace A094115.P7239055982223057375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094115.P7239055982223057375

namespace A094115

/-- `∑[A093347(n+1)]` -/
def P7239055982223057375.Spec : Prop :=
  ∀ n, P7239055982223057375.a n = A094115 (n + 1)

end A094115

/-! ## A094115.P8635219247474367787

`∑[a(n-1)-3^val(n, 3)*A056594(2*n)]` with `a(0)=0`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A094115

/-- `∑[a(n-1)-3^val(n, 3)*A056594(2*n)]` -/
def P8635219247474367787.Spec : Prop :=
  ∀ n, P8635219247474367787.a n = A094115 (n + 1)

theorem P8635219247474367787.correct : P8635219247474367787.Spec := by
  intro n
  simp only [A094115, Nat.add_sub_cancel]

end A094115

/-! ## A094115.P14918031690361164853

`∑[A333773(A244042(n))]`
-/

namespace A094115.P14918031690361164853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 (A244042 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094115.P14918031690361164853

namespace A094115

/-- `∑[A333773(A244042(n))]` -/
def P14918031690361164853.Spec : Prop :=
  ∀ n, P14918031690361164853.a n = A094115 (n + 1)

end A094115

/-! ## A094115.P439879208513462630

`∑[A333773(n-A300222(n))]`
-/

namespace A094115.P439879208513462630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 ((n : ℤ) - A300222 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094115.P439879208513462630

namespace A094115

/-- `∑[A333773(n-A300222(n))]` -/
def P439879208513462630.Spec : Prop :=
  ∀ n, P439879208513462630.a n = A094115 (n + 1)

end A094115

/-! ## A094115.P9561426787120141598

`∑[A306556(A332497(n)+1)]`
-/

namespace A094115.P9561426787120141598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306556 (A332497 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094115.P9561426787120141598

namespace A094115

/-- `∑[A306556(A332497(n)+1)]` -/
def P9561426787120141598.Spec : Prop :=
  ∀ n, P9561426787120141598.a n = A094115 (n + 1)

end A094115

/-! ## A094115.P16064685254086970503

`floor(∑[A105672(n+1)/3])`
-/

namespace A094115.P16064685254086970503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105672 (n + 1) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A094115.P16064685254086970503

namespace A094115

/-- `floor(∑[A105672(n+1)/3])` -/
def P16064685254086970503.Spec : Prop :=
  ∀ n, P16064685254086970503.a n = A094115 (n + 1)

end A094115

/-! ## A094115.P9319735552266447775

`A002264(∑[A105672(n+1)])`
-/

namespace A094115.P9319735552266447775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094115.P9319735552266447775

namespace A094115

/-- `A002264(∑[A105672(n+1)])` -/
def P9319735552266447775.Spec : Prop :=
  ∀ n, P9319735552266447775.a n = A094115 (n + 1)

end A094115

/-! ## A094115.P6278627302865074937

`A008620(∑[A105672(n+1)])-1`
-/

namespace A094115.P6278627302865074937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A094115.P6278627302865074937

namespace A094115

/-- `A008620(∑[A105672(n+1)])-1` -/
def P6278627302865074937.Spec : Prop :=
  ∀ n, P6278627302865074937.a n = A094115 (n + 1)

end A094115

/-! ## A094115.P9839210196843387759

`A033999(2*n+1)+A008620(∑[A105672(n+1)])`
-/

namespace A094115.P9839210196843387759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105672 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A094115.P9839210196843387759

namespace A094115

/-- `A033999(2*n+1)+A008620(∑[A105672(n+1)])` -/
def P9839210196843387759.Spec : Prop :=
  ∀ n, P9839210196843387759.a n = A094115 (n + 1)

end A094115

/-!
# A094116: Partial sums of A093348.

The programs for A094116, the canonical program `A094116.P13820343816343530618` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094116 has offset 1).

The definition of A094116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3022 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094116.P13820343816343530618

`∑[A093348(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A094116

/-- `∑[A093348(n+1)]` -/
def P13820343816343530618.Spec : Prop :=
  ∀ n, P13820343816343530618.a n = A094116 (n + 1)

theorem P13820343816343530618.correct : P13820343816343530618.Spec := by
  intro n
  simp only [A094116, Nat.add_sub_cancel]

end A094116

/-! ## A094116.P395752104862589296

`∑[a(n-1)+A060904(n)*A062157(n)]` with `a(0)=0`
-/

namespace A094116.P395752104862589296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + A060904 n * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094116.P395752104862589296

namespace A094116

/-- `∑[a(n-1)+A060904(n)*A062157(n)]` -/
def P395752104862589296.Spec : Prop :=
  ∀ n, P395752104862589296.a n = A094116 (n + 1)

end A094116

/-! ## A094116.P15256288234106217365

`a(n-1)+A093348(n+1)+A000007(n)` with `a(0)=0`
-/

namespace A094116.P15256288234106217365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A093348 (n + 1) + A000007 n)

end

end A094116.P15256288234106217365

namespace A094116

/-- `a(n-1)+A093348(n+1)+A000007(n)` -/
def P15256288234106217365.Spec : Prop :=
  ∀ n, P15256288234106217365.a n = A094116 (n + 1)

end A094116

/-! ## A094116.P14472647928266741151

`a(n-1)+A093348(n+1)%A008458(n)` with `a(0)=0`
-/

namespace A094116.P14472647928266741151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + Int.tmod (A093348 (n + 1)) (A008458 n)

end

end A094116.P14472647928266741151

namespace A094116

/-- `a(n-1)+A093348(n+1)%A008458(n)` -/
def P14472647928266741151.Spec : Prop :=
  ∀ n, P14472647928266741151.a n = A094116 (n + 1)

end A094116

/-! ## A094116.P16686330504177109160

`a(n-1)+A093348(n+1)/A001222(A049591(n+1))` with `a(0)=0`
-/

namespace A094116.P16686330504177109160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A093348 (n + 1) : ℚ) / (A001222 (A049591 (n + 1)).toNat : ℚ)

end

end A094116.P16686330504177109160

namespace A094116

/-- `a(n-1)+A093348(n+1)/A001222(A049591(n+1))` -/
def P16686330504177109160.Spec : Prop :=
  ∀ n, P16686330504177109160.a n = (A094116 (n + 1) : ℚ)

end A094116

/-!
# A094117: Partial sums of A093349.

The programs for A094117, there is no canonical definition to state claims against.
-/

/-! ## A094117.P11414459764381464666

`∑[A093349(n+1)]`
-/

namespace A094117.P11414459764381464666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094117.P11414459764381464666

/-! ## A094117.P13850522986389049373

`∑[A056239(A248770(n+1))+A000035(n)]`
-/

namespace A094117.P13850522986389049373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A248770 (n + 1)).toNat + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094117.P13850522986389049373

/-! ## A094117.P8541385209969504550

`∑[A240830(n+1)-A204418(A000225(n))]`
-/

namespace A094117.P8541385209969504550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240830 (n + 1) - A204418 (A000225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094117.P8541385209969504550

/-! ## A094117.P10479616577782720290

`abs(A274923(A297182(n+1)²))`
-/

namespace A094117.P10479616577782720290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274923 (A297182 (n + 1) ^ 2).toNat|

end

end A094117.P10479616577782720290

/-! ## A094117.P255589241927981163

`∑[A159913(A173067(n+1))-A059841(n)]`
-/

namespace A094117.P255589241927981163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159913 (A173067 (n + 1)).toNat - A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094117.P255589241927981163

/-!
# A094120: a(n) = Sum_{k=1..n} Sum_{i=1..k} (-2)^valuation(i,2).

The programs for A094120, the canonical program `A094120.P7740040242053437363` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094120 has offset 0).

The definition of A094120 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094120.P7740040242053437363

`∑[ceil(n/2)-2*a(floor(n/2))]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094120

/-- `∑[ceil(n/2)-2*a(floor(n/2))]` -/
def P7740040242053437363.Spec : Prop :=
  ∀ n, P7740040242053437363.a n = A094120 n

theorem P7740040242053437363.correct : P7740040242053437363.Spec := by
  intro n
  simp only [A094120]

end A094120

/-! ## A094120.P4688449500431415884

`∑[n-2*a(floor(n/2))-floor(n/2)]` with `a(0)=0`
-/

namespace A094120.P4688449500431415884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (n : ℤ) - 2 * f1 ⌊(n : ℚ) / 2⌋.toNat - ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094120.P4688449500431415884

namespace A094120

/-- `∑[n-2*a(floor(n/2))-floor(n/2)]` -/
def P4688449500431415884.Spec : Prop :=
  ∀ n, P4688449500431415884.a n = A094120 n

end A094120

/-! ## A094120.P15112820609775963784

`∑[A057300(n)-n]`
-/

namespace A094120.P15112820609775963784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094120.P15112820609775963784

namespace A094120

/-- `∑[A057300(n)-n]` -/
def P15112820609775963784.Spec : Prop :=
  ∀ n, P15112820609775963784.a n = A094120 n

end A094120

/-! ## A094120.P4752481414760882866

`∑[A004468(A048647(n))-n]`
-/

namespace A094120.P4752481414760882866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004468 (A048647 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094120.P4752481414760882866

namespace A094120

/-- `∑[A004468(A048647(n))-n]` -/
def P4752481414760882866.Spec : Prop :=
  ∀ n, P4752481414760882866.a n = A094120 n

end A094120

/-! ## A094120.P1645840508123782010

`∑[A048647(A006015(n))-n]`
-/

namespace A094120.P1645840508123782010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 (A006015 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094120.P1645840508123782010

namespace A094120

/-- `∑[A048647(A006015(n))-n]` -/
def P1645840508123782010.Spec : Prop :=
  ∀ n, P1645840508123782010.a n = A094120 n

end A094120

/-! ## A094120.P5614910812692538374

`∑[n-A001196(A059906(n))]`
-/

namespace A094120.P5614910812692538374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001196 (A059906 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094120.P5614910812692538374

namespace A094120

/-- `∑[n-A001196(A059906(n))]` -/
def P5614910812692538374.Spec : Prop :=
  ∀ n, P5614910812692538374.a n = A094120 n

end A094120

/-! ## A094120.P15778736572263590031

`∑[n-A003188(A063695(n))]`
-/

namespace A094120.P15778736572263590031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A003188 (A063695 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094120.P15778736572263590031

namespace A094120

/-- `∑[n-A003188(A063695(n))]` -/
def P15778736572263590031.Spec : Prop :=
  ∀ n, P15778736572263590031.a n = A094120 n

end A094120

/-! ## A094120.P6327182202082828242

`∑[A003188(A300839(n))-n]`
-/

namespace A094120.P6327182202082828242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A300839 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094120.P6327182202082828242

namespace A094120

/-- `∑[A003188(A300839(n))-n]` -/
def P6327182202082828242.Spec : Prop :=
  ∀ n, P6327182202082828242.a n = A094120 n

end A094120

/-! ## A094120.P5224273277301942207

`∑[A300838(A006068(n))-n]`
-/

namespace A094120.P5224273277301942207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300838 (A006068 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094120.P5224273277301942207

namespace A094120

/-- `∑[A300838(A006068(n))-n]` -/
def P5224273277301942207.Spec : Prop :=
  ∀ n, P5224273277301942207.a n = A094120 n

end A094120

/-! ## A094120.P5501180305441314663

`∑[A163235(A163234(n))-n]`
-/

namespace A094120.P5501180305441314663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163235 (A163234 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094120.P5501180305441314663

namespace A094120

/-- `∑[A163235(A163234(n))-n]` -/
def P5501180305441314663.Spec : Prop :=
  ∀ n, P5501180305441314663.a n = A094120 n

end A094120

/-!
# A094125: a(n) = 3*2^n + 2*3^n.

The programs for A094125, the canonical program `A094125.P5563388245735425865` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094125 has offset 0).

The definition of A094125 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n+2*3^n` (program `A094125.P5563388245735425865`, by `A094125.P5563388245735425865.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094125.P5563388245735425865

`3*2^n+2*3^n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094125

/-- `3*2^n+2*3^n` -/
def P5563388245735425865.Spec : Prop :=
  ∀ n, (P5563388245735425865.a n : ℤ) = A094125 n

theorem P5563388245735425865.correct : P5563388245735425865.Spec := by
  intro n
  simp only [A094125]

end A094125

/-! ## A094125.P151356979692310360

`ogf((5-13x)/(1-5x+6x^2))`
-/

namespace A094125.P151356979692310360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -13] [1, -5, 6] n

end

end A094125.P151356979692310360

namespace A094125

/-- `ogf((5-13x)/(1-5x+6x^2))` -/
def P151356979692310360.Spec : Prop :=
  ∀ n, P151356979692310360.a n = A094125 n

end A094125

/-! ## A094125.P17181702971138751335

`lcm(3, 2^(n-1)-a(n-1))` with `a(0)=5`
-/

namespace A094125.P17181702971138751335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  Int.lcm 3 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (a (n - 1) : ℚ)))

end

end A094125.P17181702971138751335

namespace A094125

/-- `lcm(3, 2^(n-1)-a(n-1))` -/
def P17181702971138751335.Spec : Prop :=
  ∀ n, (P17181702971138751335.a n : ℤ) = A094125 n

end A094125

/-! ## A094125.P7457730252751057144

`2*(3^(n-1)-floor(-a(n-1)))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A094125.P7457730252751057144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5] fun n a =>
  2 * ((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌊-a (n - 1)⌋ : ℚ))

end

end A094125.P7457730252751057144

namespace A094125

/-- `2*(3^(n-1)-floor(-a(n-1)))` -/
def P7457730252751057144.Spec : Prop :=
  ∀ n, P7457730252751057144.a n = (A094125 n : ℚ)

end A094125

/-! ## A094125.P5006332049929082336

`Δ[A254362(n)]`
-/

namespace A094125.P5006332049929082336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254362 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094125.P5006332049929082336

namespace A094125

/-- `Δ[A254362(n)]` -/
def P5006332049929082336.Spec : Prop :=
  ∀ n, P5006332049929082336.a n = A094125 n

theorem P5006332049929082336.correct : P5006332049929082336.Spec := by
  intro n
  simp only [A094125, Nat.add_sub_cancel, A094125.P5006332049929082336.f1, A094125.P5006332049929082336.a, A094125.P5563388245735425865.a, A254362, A254362.P6743988378768268642.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094125

/-! ## A094125.P824727169546104484

`A120354(n)%A169687(n+2)`
-/

namespace A094125.P824727169546104484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120354 n) (A169687 (n + 2))

end

end A094125.P824727169546104484

namespace A094125

/-- `A120354(n)%A169687(n+2)` -/
def P824727169546104484.Spec : Prop :=
  ∀ n, P824727169546104484.a n = A094125 n

end A094125

/-!
# A094133: 

The programs for A094133, there is no canonical definition to state claims against.
-/

/-! ## A094133.P7942690075922507417

`A001580(A064539(n+1))`
-/

namespace A094133.P7942690075922507417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001580 (A064539 (n + 1)).toNat

end

end A094133.P7942690075922507417

/-! ## A094133.P17288043841611826760

`A109216(lt[A128082(n), A109216(n)])`
-/

namespace A094133.P17288043841611826760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128082 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109216 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A094133.P17288043841611826760

/-!
# A094136: Values x of smallest positive pair (x,y) satisfying x^2 - 2*y^2 = -+d, where d=A058529(n).

The programs for A094136, there is no canonical definition to state claims against.
-/

/-! ## A094136.P6450685497932878829

`A094138(n+1)-A094137(n+1)`
-/

namespace A094136.P6450685497932878829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094138 (n + 1) - A094137 (n + 1)

end

end A094136.P6450685497932878829

/-! ## A094136.P12593285042796688274

`A094138(n+1)+A008683(A001132(n+1))*A094137(n+1)`
-/

namespace A094136.P12593285042796688274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094138 (n + 1) + A008683 (A001132 (n + 1)).toNat * A094137 (n + 1)

end

end A094136.P12593285042796688274

/-!
# A094137: Values y of smallest positive pair (x,y) satisfying x^2 - 2*y^2 = +-d, where d=A058529(n).

The programs for A094137, there is no canonical definition to state claims against.
-/

/-! ## A094137.P10331176218969184343

`A094138(n+1)-A094136(n+1)`
-/

namespace A094137.P10331176218969184343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094138 (n + 1) - A094136 (n + 1)

end

end A094137.P10331176218969184343

/-! ## A094137.P9948006727006329995

`A094138(n+1)+A008683(A001132(n+1))*A094136(n+1)`
-/

namespace A094137.P9948006727006329995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094138 (n + 1) + A008683 (A001132 (n + 1)).toNat * A094136 (n + 1)

end

end A094137.P9948006727006329995

/-!
# A094138: Values x+y of smallest pair (x,y) satisfying x^2 - 2*y^2=-+d, where d=A058529(n).

The programs for A094138, there is no canonical definition to state claims against.
-/

/-! ## A094138.P2269000312052195436

`A094137(n+1)+A094136(n+1)`
-/

namespace A094138.P2269000312052195436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094137 (n + 1) + A094136 (n + 1)

end

end A094138.P2269000312052195436

/-!
# A094140: Smallest inradius of primitive Pythagorean triangle whose legs differ by A058529(n).

The programs for A094140, there is no canonical definition to state claims against.
-/

/-! ## A094140.P17240558644121879335

`A094142(n+1)-A094079(n+1)`
-/

namespace A094140.P17240558644121879335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094142 (n + 1) - A094079 (n + 1)

end

end A094140.P17240558644121879335

/-! ## A094140.P943297696731304741

`A094142(C(n+1, n))%A094079(n+1)`
-/

namespace A094140.P943297696731304741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094142 (Nat.choose (n + 1) n)) (A094079 (n + 1))

end

end A094140.P943297696731304741

/-! ## A094140.P8019670804271046458

`A094142(char[1]+1+n)%A094079(n+1)`
-/

namespace A094140.P8019670804271046458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094142 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)) (A094079 (n + 1))

end

end A094140.P8019670804271046458

/-! ## A094140.P16925518242270378579

`A000027(A094142(n+1)%A094079(n+1))`
-/

namespace A094140.P16925518242270378579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (Int.tmod (A094142 (n + 1)) (A094079 (n + 1))).toNat

end

end A094140.P16925518242270378579

/-! ## A094140.P4705259092381299485

`(A094142((n+1)^A178334(n))%A094079(n+1))^A178334(n)`
-/

namespace A094140.P4705259092381299485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A094142 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A178334 n : ℤ))).toNat) (A094079 (n + 1)) : ℚ) ^ (A178334 n : ℤ)

end

end A094140.P4705259092381299485

/-! ## A094140.P6549145263131869579

`A094080(n+1)-A094142(n+1)`
-/

namespace A094140.P6549145263131869579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094080 (n + 1) - A094142 (n + 1)

end

end A094140.P6549145263131869579

/-! ## A094140.P16372605880297794417

`(A094080(n+1)-A094079(n+1))/2`
-/

namespace A094140.P16372605880297794417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094080 (n + 1) - A094079 (n + 1) : ℚ) / 2

end

end A094140.P16372605880297794417

/-! ## A094140.P4201345454419837843

`A004525(A094080(n+1)-A094079(n+1))`
-/

namespace A094140.P4201345454419837843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A094080 (n + 1) - A094079 (n + 1)).toNat

end

end A094140.P4201345454419837843

/-! ## A094140.P7938216415606850111

`A004526(A094080(n+1)-A094079(n+1))`
-/

namespace A094140.P7938216415606850111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A094080 (n + 1) - A094079 (n + 1)).toNat

end

end A094140.P7938216415606850111

/-! ## A094140.P10681263230451822995

`A014682(A094080(n+1)-A094079(n+1))`
-/

namespace A094140.P10681263230451822995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A094080 (n + 1) - A094079 (n + 1)).toNat

end

end A094140.P10681263230451822995

/-!
# A094142: Smallest semiperimeter of primitive Pythagorean triangle whose legs differ by A058529(n).

The programs for A094142, there is no canonical definition to state claims against.
-/

/-! ## A094142.P4767842244953793768

`A094140(n+1)+A094079(n+1)`
-/

namespace A094142.P4767842244953793768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094140 (n + 1) + A094079 (n + 1)

end

end A094142.P4767842244953793768

/-! ## A094142.P8350113759988893707

`A094080(n+1)-A094140(n+1)`
-/

namespace A094142.P8350113759988893707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094080 (n + 1) - A094140 (n + 1)

end

end A094142.P8350113759988893707

/-! ## A094142.P553754114671144770

`(A094080(n+1)+A094079(n+1))/2`
-/

namespace A094142.P553754114671144770
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094080 (n + 1) + A094079 (n + 1) : ℚ) / 2

end

end A094142.P553754114671144770

/-! ## A094142.P11249503327956103921

`A004525(A094080(n+1)+A094079(n+1))`
-/

namespace A094142.P11249503327956103921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A094080 (n + 1) + A094079 (n + 1)).toNat

end

end A094142.P11249503327956103921

/-! ## A094142.P4930136427097889527

`A004526(A094080(n+1)+A094079(n+1))`
-/

namespace A094142.P4930136427097889527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A094080 (n + 1) + A094079 (n + 1)).toNat

end

end A094142.P4930136427097889527

/-! ## A094142.P7077154908953074868

`A014682(A094080(n+1)+A094079(n+1))`
-/

namespace A094142.P7077154908953074868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A094080 (n + 1) + A094079 (n + 1)).toNat

end

end A094142.P7077154908953074868

/-! ## A094142.P8128904983925867134

`A025480(A094080(n+1)+A094079(n+1))`
-/

namespace A094142.P8128904983925867134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A094080 (n + 1) + A094079 (n + 1)).toNat

end

end A094142.P8128904983925867134

/-! ## A094142.P15877603967016694180

`A026741(A094080(n+1)+A094079(n+1))`
-/

namespace A094142.P15877603967016694180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A094080 (n + 1) + A094079 (n + 1)).toNat

end

end A094142.P15877603967016694180

/-! ## A094142.P13895263532365968167

`A029578(A094080(n+1)+A094079(n+1))`
-/

namespace A094142.P13895263532365968167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A094080 (n + 1) + A094079 (n + 1)).toNat

end

end A094142.P13895263532365968167

/-! ## A094142.P5400815977690819198

`A032742(A094080(n+1)+A094079(n+1))`
-/

namespace A094142.P5400815977690819198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A094080 (n + 1) + A094079 (n + 1)).toNat

end

end A094142.P5400815977690819198

/-!
# A094143: Least area of primitive Pythagorean triangle whose legs differ by A058529(n).

The programs for A094143, there is no canonical definition to state claims against.
-/

/-! ## A094143.P2789069169212431828

`A094140(n+1)*A094142(n+1)`
-/

namespace A094143.P2789069169212431828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094140 (n + 1) * A094142 (n + 1)

end

end A094143.P2789069169212431828

/-! ## A094143.P9131292547582661106

`lcm(A094140(A000027(n+1)), A094142(n+1))`
-/

namespace A094143.P9131292547582661106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A094140 (A000027 (n + 1)).toNat) (A094142 (n + 1))

end

end A094143.P9131292547582661106

/-! ## A094143.P2238657487220451419

`lcm(A094140(n+1), A094142(1-A001489(n)))`
-/

namespace A094143.P2238657487220451419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A094140 (n + 1)) (A094142 (1 - A001489 n).toNat)

end

end A094143.P2238657487220451419

/-! ## A094143.P14260098337899882415

`(A094140(n+1)+A094079(n+1))*A094140(n+1)`
-/

namespace A094143.P14260098337899882415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094140 (n + 1) + A094079 (n + 1)) * A094140 (n + 1)

end

end A094143.P14260098337899882415

/-! ## A094143.P11368059612505713358

`(A094080(n+1)-A094140(n+1))*A094140(n+1)`
-/

namespace A094143.P11368059612505713358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094080 (n + 1) - A094140 (n + 1)) * A094140 (n + 1)

end

end A094143.P11368059612505713358

/-!
# A094144: Numbers n such that n!! - 2 is prime.

The programs for A094144, there is no canonical definition to state claims against.
-/

/-! ## A094144.P1073931810107727529

`eq[2, A057034(n+4)]+4`
-/

namespace A094144.P1073931810107727529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057034 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4

end

end A094144.P1073931810107727529

/-! ## A094144.P5919445359409732679

`A020705(eq[2, A057034(n+4)])`
-/

namespace A094144.P5919445359409732679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057034 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A094144.P5919445359409732679

/-! ## A094144.P5423123018336112170

`A020705(lt[A057034(n+4), 3])`
-/

namespace A094144.P5423123018336112170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057034 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A094144.P5423123018336112170

/-! ## A094144.P2399522701770639485

`record[A353832(2*n+5)/A212636(n+3)]`
-/

namespace A094144.P2399522701770639485
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353832 (2 * n + 5) : ℚ) / (A212636 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094144.P2399522701770639485

/-!
# A094147: Numbers that can be written as sum of squares of two divisors.

The programs for A094147, there is no canonical definition to state claims against.
-/

/-! ## A094147.P3761963836482943521

`∩[A063664(n+1), A237415(n)]`
-/

namespace A094147.P3761963836482943521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237415 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094147.P3761963836482943521

/-! ## A094147.P7240220638905371128

`∩[A047222(n+1), A063664(n+1)]`
-/

namespace A094147.P7240220638905371128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094147.P7240220638905371128

/-! ## A094147.P2107754810961339648

`lt[A063665(A272138(n+1)), A063665(n+1)]+1`
-/

namespace A094147.P2107754810961339648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063665 (A272138 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A094147.P2107754810961339648

/-! ## A094147.P13012434123072272670

`A063664(A168186(n+1)%A061882(2*(n+1)))`
-/

namespace A094147.P13012434123072272670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063664 (Int.tmod (A168186 (n + 1)) (A061882 (2 * (n + 1)))).toNat

end

end A094147.P13012434123072272670

/-! ## A094147.P12480628877458641018

`A063664(∑[A063686(n)^A063694(n)])`
-/

namespace A094147.P12480628877458641018
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063686 n : ℚ) ^ (A063694 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063664 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A094147.P12480628877458641018

/-!
# A094148: Decimal expansion of log(3)/log(4).

The programs for A094148, there is no canonical definition to state claims against.
-/

/-! ## A094148.P16957251609444822632

`A154197(n+1)`
-/

namespace A094148.P16957251609444822632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154197 (n + 1 + 1)

end

end A094148.P16957251609444822632

/-! ## A094148.P17026663543197839217

`A153460(n+1)+A154155(n+1)-A153201(n+1)`
-/

namespace A094148.P17026663543197839217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153460 (n + 1 + 1) + (A154155 (n + 1 + 1) - A153201 (n + 1 + 1))

end

end A094148.P17026663543197839217

/-! ## A094148.P1093410402179961785

`A153460(n+1)+A154464(n+1)-A153615(n+1)`
-/

namespace A094148.P1093410402179961785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153460 (n + 1 + 1) + (A154464 (n + 1 + 1) - A153615 (n + 1 + 1))

end

end A094148.P1093410402179961785

/-!
# A094149: The 2k-th moments of the random graph G(n, 1/n) (odd moments are zero). The number of walks of length 2k on _all_ bushes (rooted plane trees) that start and end at the root and visit new vertices from left-to-right (but may return).

The programs for A094149, there is no canonical definition to state claims against.
-/

/-! ## A094149.P15885911307521743014

`A001281(A134664(n+2))`
-/

namespace A094149.P15885911307521743014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A134664 (n + 2)).toNat

end

end A094149.P15885911307521743014

/-!
# A094151: Remainder when concatenation 1,2,3,...up to (n-1) is divided by n.

The programs for A094151, there is no canonical definition to state claims against.
-/

/-! ## A094151.P16832102626138206782

`A007908(abs(2-n)+2)%(n+1)`
-/

namespace A094151.P16832102626138206782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007908 (|2 - (n : ℤ)| + 2).toNat) (n + 1 : ℤ)

end

end A094151.P16832102626138206782

/-! ## A094151.P12989186965190180507

`(∑[A078998(A028310(n))]-1)%(n+1)`
-/

namespace A094151.P12989186965190180507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078998 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - 1) (n + 1 : ℤ)

end

end A094151.P12989186965190180507

/-! ## A094151.P13151143513300291920

`A252043(A058183(abs(1-n)+1))%(n+1)`
-/

namespace A094151.P13151143513300291920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252043 (A058183 (|1 - (n : ℤ)| + 1).toNat).toNat) (n + 1 : ℤ)

end

end A094151.P13151143513300291920

/-! ## A094151.P11153692611388061489

`A213059(A011782(n))%A005555(n)`
-/

namespace A094151.P11153692611388061489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213059 (A011782 n).toNat) (A005555 n)

end

end A094151.P11153692611388061489

/-! ## A094151.P15416436466954640313

`A048794(2^n-1)%(n+1)`
-/

namespace A094151.P15416436466954640313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048794 (2 ^ n - 1)) (n + 1 : ℤ)

end

end A094151.P15416436466954640313

/-!
# A094154: Bisection of A000939.

The programs for A094154, there is no canonical definition to state claims against.
-/

/-! ## A094154.P16629080416506048785

`A000939(2*n+3)`
-/

namespace A094154.P16629080416506048785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000939 (2 * n + 3)

end

end A094154.P16629080416506048785

/-! ## A094154.P14294942669001741385

`A002619(2*n+3)/2`
-/

namespace A094154.P14294942669001741385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002619 (2 * n + 3) : ℚ) / 2

end

end A094154.P14294942669001741385

/-! ## A094154.P13085489654663112880

`record[A000939(A029579(n))]`
-/

namespace A094154.P13085489654663112880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000939 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094154.P13085489654663112880

/-! ## A094154.P2092420069360856310

`record[A000939(A093178(n))]`
-/

namespace A094154.P2092420069360856310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000939 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094154.P2092420069360856310

/-! ## A094154.P12482281404931111676

`record[A000939(A000265(n+1))]`
-/

namespace A094154.P12482281404931111676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000939 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094154.P12482281404931111676

/-!
# A094155: Bisection of A000939.

The programs for A094155, there is no canonical definition to state claims against.
-/

/-! ## A094155.P5969900157918845097

`A000939(2*(n+2))`
-/

namespace A094155.P5969900157918845097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000939 (2 * (n + 2))

end

end A094155.P5969900157918845097

/-! ## A094155.P9416162378556424208

`record[A000939(n+4)/(-1)^n]`
-/

namespace A094155.P9416162378556424208
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000939 (n + 4) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094155.P9416162378556424208

/-! ## A094155.P2949816033820733634

`record[A000939(A065165(n+1))]`
-/

namespace A094155.P2949816033820733634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000939 (A065165 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094155.P2949816033820733634

/-! ## A094155.P9319821218560691971

`lcm(1-and(2, n), A000939(A005843(n+2)))`
-/

namespace A094155.P9319821218560691971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A000939 (A005843 (n + 2)).toNat)

end

end A094155.P9319821218560691971

/-! ## A094155.P1011228865572299254

`record[A000939(n-xor(1, n-A065169(n+2)))]`
-/

namespace A094155.P1011228865572299254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000939 ((n : ℤ) - Int.xor 1 ((n : ℤ) - A065169 (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094155.P1011228865572299254

/-!
# A094156: Bisection of A000940.

The programs for A094156, there is no canonical definition to state claims against.
-/

/-! ## A094156.P2276477089527808618

`A000940(2*n+3)`
-/

namespace A094156.P2276477089527808618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000940 (2 * n + 3)

end

end A094156.P2276477089527808618

/-! ## A094156.P15567288721404364489

`record[A000940(n+3)/A033999(n)]`
-/

namespace A094156.P15567288721404364489
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000940 (n + 3) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094156.P15567288721404364489

/-! ## A094156.P15167800854623325064

`record[gcd(A000940(n+3), A155585(n))]`
-/

namespace A094156.P15167800854623325064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000940 (n + 3)) (A155585 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094156.P15167800854623325064

/-! ## A094156.P12088603748331170240

`record[lcm(A000940(n+3), A056594(n))]`
-/

namespace A094156.P12088603748331170240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000940 (n + 3)) (A056594 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094156.P12088603748331170240

/-! ## A094156.P10244689702273304575

`record[and(A000940(n+3), A165326(n))]`
-/

namespace A094156.P10244689702273304575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000940 (n + 3)) (A165326 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094156.P10244689702273304575

/-!
# A094157: Bisection of A000940.

The programs for A094157, there is no canonical definition to state claims against.
-/

/-! ## A094157.P883490813310133282

`A000940(2*(n+2))`
-/

namespace A094157.P883490813310133282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000940 (2 * (n + 2))

end

end A094157.P883490813310133282

/-! ## A094157.P4013934968807941448

`record[A000940(n+4)/A033999(n)]`
-/

namespace A094157.P4013934968807941448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000940 (n + 4) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094157.P4013934968807941448

/-! ## A094157.P15117930669556617252

`record[root(A000940(n+4), A000034(n))]`
-/

namespace A094157.P15117930669556617252
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000940 (n + 4) : ℝ) ^ (1 / (A000034 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094157.P15117930669556617252

/-! ## A094157.P12313835933577413449

`record[lcm(A000940(n+4), A056594(n))]`
-/

namespace A094157.P12313835933577413449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000940 (n + 4)) (A056594 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094157.P12313835933577413449

/-!
# A094159: 3 times hexagonal numbers: a(n) = 3*n*(2*n-1).

The programs for A094159, the canonical program `A094159.P13229722457034603277` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094159 has offset 0).

The definition of A094159 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(2*n-1)` (program `A094159.P13229722457034603277`, by `A094159.P13229722457034603277.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094159.P10085832556868524820

`6*n²-3*n`
-/

namespace A094159.P10085832556868524820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 2 : ℤ) - (3 * n : ℤ)

end

end A094159.P10085832556868524820

namespace A094159

/-- `6*n²-3*n` -/
def P10085832556868524820.Spec : Prop :=
  ∀ n, P10085832556868524820.a n = A094159 n

theorem P10085832556868524820.correct : P10085832556868524820.Spec := by
  intro n
  simp only [A094159, Nat.add_sub_cancel, A094159.P10085832556868524820.a, A094159.P13229722457034603277.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A094159

/-! ## A094159.P13229722457034603277

`3*n*(2*n-1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094159

/-- `3*n*(2*n-1)` -/
def P13229722457034603277.Spec : Prop :=
  ∀ n, P13229722457034603277.a n = A094159 n

theorem P13229722457034603277.correct : P13229722457034603277.Spec := by
  intro n
  simp only [A094159]

end A094159

/-! ## A094159.P6700078836767874791

`∑[a(n-1)+12]` with `a(0)=0, a(1)=3`
-/

namespace A094159.P6700078836767874791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094159.P6700078836767874791

namespace A094159

/-- `∑[a(n-1)+12]` -/
def P6700078836767874791.Spec : Prop :=
  ∀ n, (P6700078836767874791.a n : ℤ) = A094159 n

end A094159

/-! ## A094159.P7528500960968058579

`record[n²-lcm(n, n+3)]`
-/

namespace A094159.P7528500960968058579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (Nat.lcm n (n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094159.P7528500960968058579

namespace A094159

/-- `record[n²-lcm(n, n+3)]` -/
def P7528500960968058579.Spec : Prop :=
  ∀ n, P7528500960968058579.a n = A094159 n

end A094159

/-! ## A094159.P4675457492887048338

`∑[ogf((3x+9x^2)/(1-2x+x^2))]`
-/

namespace A094159.P4675457492887048338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094159.P4675457492887048338

namespace A094159

/-- `∑[ogf((3x+9x^2)/(1-2x+x^2))]` -/
def P4675457492887048338.Spec : Prop :=
  ∀ n, P4675457492887048338.a n = A094159 n

end A094159

/-! ## A094159.P8771188485260472021

`ogf((3x+9x^2)/(1-3x+3x^2-x^3))`
-/

namespace A094159.P8771188485260472021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 9] [1, -3, 3, -1] n

end

end A094159.P8771188485260472021

namespace A094159

/-- `ogf((3x+9x^2)/(1-3x+3x^2-x^3))` -/
def P8771188485260472021.Spec : Prop :=
  ∀ n, P8771188485260472021.a n = A094159 n

end A094159

/-! ## A094159.P14120613278693417062

`record[lcm(2*n+1, n+2)%(n+1)²]`
-/

namespace A094159.P14120613278693417062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (n + 2) % (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094159.P14120613278693417062

namespace A094159

/-- `record[lcm(2*n+1, n+2)%(n+1)²]` -/
def P14120613278693417062.Spec : Prop :=
  ∀ n, (P14120613278693417062.a n : ℤ) = A094159 n

end A094159

/-! ## A094159.P13352102973319824422

`A152746(n)/2`
-/

namespace A094159.P13352102973319824422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152746 n : ℚ) / 2

end

end A094159.P13352102973319824422

namespace A094159

/-- `A152746(n)/2` -/
def P13352102973319824422.Spec : Prop :=
  ∀ n, P13352102973319824422.a n = (A094159 n : ℚ)

theorem P13352102973319824422.correct : P13352102973319824422.Spec := by
  intro n
  simp only [A094159, Nat.add_sub_cancel, A094159.P13352102973319824422.a, A094159.P13229722457034603277.a, A152746, A152746.P17154373183025308854.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094159

/-! ## A094159.P15086370342535023339

`A152994(n)/3`
-/

namespace A094159.P15086370342535023339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152994 n : ℚ) / 3

end

end A094159.P15086370342535023339

namespace A094159

/-- `A152994(n)/3` -/
def P15086370342535023339.Spec : Prop :=
  ∀ n, P15086370342535023339.a n = (A094159 n : ℚ)

theorem P15086370342535023339.correct : P15086370342535023339.Spec := by
  intro n
  simp only [A094159, Nat.add_sub_cancel, A094159.P15086370342535023339.a, A094159.P13229722457034603277.a, A152994, A152994.P7052798607735396897.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094159

/-! ## A094159.P10617705782210371847

`A143698(n)/4`
-/

namespace A094159.P10617705782210371847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143698 n : ℚ) / 4

end

end A094159.P10617705782210371847

namespace A094159

/-- `A143698(n)/4` -/
def P10617705782210371847.Spec : Prop :=
  ∀ n, P10617705782210371847.a n = (A094159 n : ℚ)

theorem P10617705782210371847.correct : P10617705782210371847.Spec := by
  intro n
  simp only [A094159, Nat.add_sub_cancel, A094159.P10617705782210371847.a, A094159.P13229722457034603277.a, A143698, A143698.P346745898935711225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094159

/-! ## A094159.P17145918528555108302

`abs(n*A228935(n))`
-/

namespace A094159.P17145918528555108302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A228935 n|

end

end A094159.P17145918528555108302

namespace A094159

/-- `abs(n*A228935(n))` -/
def P17145918528555108302.Spec : Prop :=
  ∀ n, P17145918528555108302.a n = A094159 n

end A094159

/-! ## A094159.P8925798129301029855

`3*A002939(n)/2`
-/

namespace A094159.P8925798129301029855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A002939 n : ℚ) / 2

end

end A094159.P8925798129301029855

namespace A094159

/-- `3*A002939(n)/2` -/
def P8925798129301029855.Spec : Prop :=
  ∀ n, P8925798129301029855.a n = (A094159 n : ℚ)

theorem P8925798129301029855.correct : P8925798129301029855.Spec := by
  intro n
  simp only [A094159, Nat.add_sub_cancel, A094159.P8925798129301029855.a, A094159.P13229722457034603277.a, A002939, A002939.P11095602872349887610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094159

/-! ## A094159.P3352828257705593928

`A060787(n+2)/6`
-/

namespace A094159.P3352828257705593928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060787 (n + 2) : ℚ) / 6

end

end A094159.P3352828257705593928

namespace A094159

/-- `A060787(n+2)/6` -/
def P3352828257705593928.Spec : Prop :=
  ∀ n, P3352828257705593928.a n = (A094159 n : ℚ)

theorem P3352828257705593928.correct : P3352828257705593928.Spec := by
  intro n
  simp only [A094159, Nat.add_sub_cancel, A094159.P3352828257705593928.a, A094159.P13229722457034603277.a, A060787, A060787.P14382161394144982412.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A094159

/-! ## A094159.P8323367406082814201

`A082041(n)%A033571(n)`
-/

namespace A094159.P8323367406082814201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082041 n) (A033571 n)

end

end A094159.P8323367406082814201

namespace A094159

/-- `A082041(n)%A033571(n)` -/
def P8323367406082814201.Spec : Prop :=
  ∀ n, P8323367406082814201.a n = A094159 n

end A094159

/-! ## A094159.P1955288049850630308

`A154617(n)%A067239(n)`
-/

namespace A094159.P1955288049850630308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154617 n) (A067239 n)

end

end A094159.P1955288049850630308

namespace A094159

/-- `A154617(n)%A067239(n)` -/
def P1955288049850630308.Spec : Prop :=
  ∀ n, P1955288049850630308.a n = A094159 n

end A094159

/-! ## A094159.P14774718767153197307

`A194454(n)%A033570(n)`
-/

namespace A094159.P14774718767153197307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194454 n) (A033570 n)

end

end A094159.P14774718767153197307

namespace A094159

/-- `A194454(n)%A033570(n)` -/
def P14774718767153197307.Spec : Prop :=
  ∀ n, P14774718767153197307.a n = A094159 n

end A094159

/-! ## A094159.P15331725105038595974

`A158480(n)%A085473(n)`
-/

namespace A094159.P15331725105038595974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158480 n) (A085473 n)

end

end A094159.P15331725105038595974

namespace A094159

/-- `A158480(n)%A085473(n)` -/
def P15331725105038595974.Spec : Prop :=
  ∀ n, P15331725105038595974.a n = A094159 n

end A094159

/-! ## A094159.P18349251660131659680

`A204675(n)%A080860(n)`
-/

namespace A094159.P18349251660131659680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204675 n) (A080860 n)

end

end A094159.P18349251660131659680

namespace A094159

/-- `A204675(n)%A080860(n)` -/
def P18349251660131659680.Spec : Prop :=
  ∀ n, P18349251660131659680.a n = A094159 n

end A094159

/-! ## A094159.P6328526266193282175

`A087887(n)%A227776(n)`
-/

namespace A094159.P6328526266193282175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087887 n) (A227776 n)

end

end A094159.P6328526266193282175

namespace A094159

/-- `A087887(n)%A227776(n)` -/
def P6328526266193282175.Spec : Prop :=
  ∀ n, P6328526266193282175.a n = A094159 n

end A094159

/-! ## A094159.P14800814790537251064

`gcd(A143698(n), A152994(n))`
-/

namespace A094159.P14800814790537251064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143698 n) (A152994 n)

end

end A094159.P14800814790537251064

namespace A094159

/-- `gcd(A143698(n), A152994(n))` -/
def P14800814790537251064.Spec : Prop :=
  ∀ n, (P14800814790537251064.a n : ℤ) = A094159 n

end A094159

/-!
# A094160: Column 4 of A048790.

The programs for A094160, the canonical program `A094160.P13963913940163302320` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094160 has offset 1).

The definition of A094160 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094160.P13963913940163302320

`64/3*n^3-30*n²+38/3*n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094160

/-- `64/3*n^3-30*n²+38/3*n` -/
def P13963913940163302320.Spec : Prop :=
  ∀ n, P13963913940163302320.a n = (A094160 (n + 1) : ℚ)

end A094160

/-! ## A094160.P15466658155035978042

`2*(A098931(2*n)-A056106(3*n))`
-/

namespace A094160.P15466658155035978042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A098931 (2 * n) - A056106 (3 * n))

end

end A094160.P15466658155035978042

namespace A094160

/-- `2*(A098931(2*n)-A056106(3*n))` -/
def P15466658155035978042.Spec : Prop :=
  ∀ n, P15466658155035978042.a n = A094160 (n + 1)

end A094160

/-!
# A094162: Where n first appears in A093320.

The programs for A094162, there is no canonical definition to state claims against.
-/

/-! ## A094162.P15151661002813653843

`A315884(abs(Δ[n*(3-a(n-1))]))` with `a(0)=2, a(1)=2, a(2)=1`
-/

namespace A094162.P15151661002813653843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1] fun n f1 =>
  (n : ℤ) * (3 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315884 |f1 (n + 1) - f1 n|.toNat

end

end A094162.P15151661002813653843

/-!
# A094164: Number of rooted 2-dimensional polyominoes with n triangular cells, with no symmetries removed.

The programs for A094164, there is no canonical definition to state claims against.
-/

/-! ## A094164.P3886887660814667047

`A094166(∑[n+1])`
-/

namespace A094164.P3886887660814667047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094166 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A094164.P3886887660814667047

/-! ## A094164.P5158299810498904995

`record[A094166(∑[A008621(n)])]`
-/

namespace A094164.P5158299810498904995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094166 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094164.P5158299810498904995

/-! ## A094164.P1064039372109852822

`record[A094166(∑[A057979(n)])]`
-/

namespace A094164.P1064039372109852822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094166 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094164.P1064039372109852822

/-! ## A094164.P16175083712637707783

`record[A094166(record[A025888(n)])]`
-/

namespace A094164.P16175083712637707783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025888 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094166 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094164.P16175083712637707783

/-! ## A094164.P4209998449886219778

`record[A094166(A093055(n+1))]`
-/

namespace A094164.P4209998449886219778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094166 (A093055 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094164.P4209998449886219778

/-!
# A094165: Number of rooted 2-dimensional polyominoes with n hexagonal cells, with no symmetries removed.

The programs for A094165, there is no canonical definition to state claims against.
-/

/-! ## A094165.P2079027901071568059

`(n+1)*A001207(n+1)`
-/

namespace A094165.P2079027901071568059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001207 (n + 1)

end

end A094165.P2079027901071568059

/-! ## A094165.P14223489017370952268

`A001207(A008619(2*n))*A008619(2*n)`
-/

namespace A094165.P14223489017370952268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001207 (A008619 (2 * n)).toNat * A008619 (2 * n)

end

end A094165.P14223489017370952268

/-! ## A094165.P351577833998871732

`A001207(A029579(2*n))*A029579(2*n)`
-/

namespace A094165.P351577833998871732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001207 (A029579 (2 * n)).toNat * A029579 (2 * n)

end

end A094165.P351577833998871732

/-! ## A094165.P10193721949066358839

`A001207(A052938(2*n))*A052938(2*n)`
-/

namespace A094165.P10193721949066358839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001207 (A052938 (2 * n)).toNat * A052938 (2 * n)

end

end A094165.P10193721949066358839

/-! ## A094165.P13849597254083422575

`A001207(A008611(3*n))*A008611(3*n)`
-/

namespace A094165.P13849597254083422575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001207 (A008611 (3 * n)).toNat * A008611 (3 * n)

end

end A094165.P13849597254083422575

/-!
# A094168: Number of rooted 2-dimensional polyominoes with n heptagonal cells, with no symmetries removed.

The programs for A094168, there is no canonical definition to state claims against.
-/

/-! ## A094168.P447818626822844304

`A094166(Δ[A264443(n)])`
-/

namespace A094168.P447818626822844304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094166 (f1 (n + 1) - f1 n).toNat

end

end A094168.P447818626822844304

/-! ## A094168.P7039299636494385084

`A094166(A046691(n+3))`
-/

namespace A094168.P7039299636494385084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094166 (A046691 (n + 3)).toNat

end

end A094168.P7039299636494385084

/-!
# A094169: Number of rooted 2-dimensional polyominoes with n octagonal cells, with no symmetries removed.

The programs for A094169, there is no canonical definition to state claims against.
-/

/-! ## A094169.P13942031190078054901

`A312317(ceil(sinh(n)²))`
-/

namespace A094169.P13942031190078054901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312317 ⌈Real.sinh (n : ℝ) ^ 2⌉.toNat

end

end A094169.P13942031190078054901

/-!
# A094170: Number of quasi-triominoes in an n X n bounding box.

The programs for A094170, there is no canonical definition to state claims against.
-/

/-! ## A094170.P9409101516547546241

`A071244(n)-A175424(A065450(n))`
-/

namespace A094170.P9409101516547546241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071244 n - A175424 (A065450 n).toNat

end

end A094170.P9409101516547546241

/-!
# A094171: Number of quasi-tetrominoes in an n X n bounding box.

The programs for A094171, there is no canonical definition to state claims against.
-/

/-! ## A094171.P9344442578239949948

`∑[A308135(A000932(n)²)]`
-/

namespace A094171.P9344442578239949948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308135 (A000932 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094171.P9344442578239949948

/-! ## A094171.P16300284420108007973

`A035327(A023998(n))+A033312(n)`
-/

namespace A094171.P16300284420108007973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A023998 n).toNat + A033312 n

end

end A094171.P16300284420108007973

/-!
# A094172: Number of quasi-pentominoes in an n X n bounding box.

The programs for A094172, there is no canonical definition to state claims against.
-/

/-! ## A094172.P15533619394892581847

`A262292(or(5, n²))`
-/

namespace A094172.P15533619394892581847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262292 (Nat.lor 5 (n ^ 2))

end

end A094172.P15533619394892581847

/-!
# A094173: a(n) = m if m has already occurred at least once and n=k+i*(m+1) where k is the index of the first occurrence of n and i=1,...,max(n-1,1), otherwise a(n) = least positive integer that has not yet occurred.

The programs for A094173, there is no canonical definition to state claims against.
-/

/-! ## A094173.P17084671378075193001

`dr(A214370(n+1))`
-/

namespace A094173.P17084671378075193001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A214370 (n + 1))

end

end A094173.P17084671378075193001

/-! ## A094173.P4703547632475321457

`dr(1-A214371(n+2))`
-/

namespace A094173.P4703547632475321457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A214371 (n + 2))

end

end A094173.P4703547632475321457

/-! ## A094173.P235617698291238732

`∑[Δ[A214371(n+1)]%4]`
-/

namespace A094173.P235617698291238732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214371 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094173.P235617698291238732

/-! ## A094173.P12692639589781631160

`∑{digits}[A214370(-xor(n, -1)), #]`
-/

namespace A094173.P12692639589781631160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214370 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A094173.P12692639589781631160

/-! ## A094173.P8697113232490411865

`A214370(A005496(n))`
-/

namespace A094173.P8697113232490411865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214370 (A005496 n).toNat

end

end A094173.P8697113232490411865

/-!
# A094175: Round( n / sum of digits of n ).

The programs for A094175, the canonical program `A094175.P10018414659277539982` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094175 has offset 1).

The definition of A094175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094175.P10018414659277539982

`round((n+1)/∑{digits}[n+1, #])`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094175

/-- `round((n+1)/∑{digits}[n+1, #])` -/
def P10018414659277539982.Spec : Prop :=
  ∀ n, P10018414659277539982.a n = A094175 (n + 1)

theorem P10018414659277539982.correct : P10018414659277539982.Spec := by
  intro n
  simp only [A094175, Nat.add_sub_cancel]

end A094175

/-! ## A094175.P10630372870332808592

`round((n+1)/Δ[A037123(n)])`
-/

namespace A094175.P10630372870332808592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ))

end

end A094175.P10630372870332808592

namespace A094175

/-- `round((n+1)/Δ[A037123(n)])` -/
def P10630372870332808592.Spec : Prop :=
  ∀ n, P10630372870332808592.a n = A094175 (n + 1)

end A094175

/-! ## A094175.P7037806296827561448

`round((n+1)/A007953(n+1))`
-/

namespace A094175.P7037806296827561448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007953 (n + 1) : ℚ))

end

end A094175.P7037806296827561448

namespace A094175

/-- `round((n+1)/A007953(n+1))` -/
def P7037806296827561448.Spec : Prop :=
  ∀ n, P7037806296827561448.a n = A094175 (n + 1)

end A094175

/-! ## A094175.P16118703645415103404

`round((n+1)²/A057147(n+1))`
-/

namespace A094175.P16118703645415103404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A057147 (n + 1) : ℚ))

end

end A094175.P16118703645415103404

namespace A094175

/-- `round((n+1)²/A057147(n+1))` -/
def P16118703645415103404.Spec : Prop :=
  ∀ n, P16118703645415103404.a n = A094175 (n + 1)

end A094175

/-! ## A094175.P10151688422097632421

`round(sqrt((n+1)²/A118881(n+1)))`
-/

namespace A094175.P10151688422097632421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (((n + 1) ^ 2 : ℚ) / (A118881 (n + 1) : ℚ) : ℝ))

end

end A094175.P10151688422097632421

namespace A094175

/-- `round(sqrt((n+1)²/A118881(n+1)))` -/
def P10151688422097632421.Spec : Prop :=
  ∀ n, P10151688422097632421.a n = A094175 (n + 1)

end A094175

/-! ## A094175.P9885057071476940232

`round(A065517(n+1)/A065518(n+1))`
-/

namespace A094175.P9885057071476940232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A065517 (n + 1) : ℚ) / (A065518 (n + 1) : ℚ))

end

end A094175.P9885057071476940232

namespace A094175

/-- `round(A065517(n+1)/A065518(n+1))` -/
def P9885057071476940232.Spec : Prop :=
  ∀ n, P9885057071476940232.a n = A094175 (n + 1)

end A094175

/-! ## A094175.P7900885758630855335

`round((n+1)/(A037123(n+1)-A037123(n)))`
-/

namespace A094175.P7900885758630855335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A037123 (n + 1) - A037123 n : ℚ))

end

end A094175.P7900885758630855335

namespace A094175

/-- `round((n+1)/(A037123(n+1)-A037123(n)))` -/
def P7900885758630855335.Spec : Prop :=
  ∀ n, P7900885758630855335.a n = A094175 (n + 1)

end A094175

/-!
# A094176: (A047926(n)-A091588(n))/2.

The programs for A094176, there is no canonical definition to state claims against.
-/

/-! ## A094176.P13350440996648642730

`(A091588(n)-A047926(n))/2`
-/

namespace A094176.P13350440996648642730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091588 n - A047926 n : ℚ) / 2

end

end A094176.P13350440996648642730

/-! ## A094176.P9490805413345850484

`A014682(A091588(n)-A047926(n))`
-/

namespace A094176.P9490805413345850484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A091588 n - A047926 n).toNat

end

end A094176.P9490805413345850484

/-! ## A094176.P7189973104185725299

`A014682(A091588(n)%A047926(n))`
-/

namespace A094176.P7189973104185725299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.tmod (A091588 n) (A047926 n)).toNat

end

end A094176.P7189973104185725299

/-! ## A094176.P15433209211413839126

`A004526(A091587(n)-A047926(n))`
-/

namespace A094176.P15433209211413839126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A091587 n - A047926 n).toNat

end

end A094176.P15433209211413839126

/-! ## A094176.P1826878975189668674

`A004525(A091588(n)-A047926(n))`
-/

namespace A094176.P1826878975189668674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A091588 n - A047926 n).toNat

end

end A094176.P1826878975189668674

/-!
# A094178: Numbers n such that 4n+1 is divisible only by primes of form 4m+1 (i.e., by the Pythagorean primes A002144).

The programs for A094178, the canonical program `A094178.P10442744756588594346` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094178 has offset 1).

The definition of A094178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094178.P10442744756588594346

`floor(A008846(n+1)/4)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A094178

/-- `floor(A008846(n+1)/4)` -/
def P10442744756588594346.Spec : Prop :=
  ∀ n, P10442744756588594346.a n = A094178 (n + 1)

theorem P10442744756588594346.correct : P10442744756588594346.Spec := by
  intro n
  simp only [A094178, Nat.add_sub_cancel]

end A094178

/-! ## A094178.P14390906349203565110

`∪[A375750(n+1), A376208(n+1)]`
-/

namespace A094178.P14390906349203565110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A094178.P14390906349203565110

namespace A094178

/-- `∪[A375750(n+1), A376208(n+1)]` -/
def P14390906349203565110.Spec : Prop :=
  ∀ n, (P14390906349203565110.a n : ℤ) = A094178 (n + 1)

end A094178

/-! ## A094178.P7852758124556084164

`floor(A004613(n+2)/4)`
-/

namespace A094178.P7852758124556084164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004613 (n + 2) : ℚ) / 4⌋

end

end A094178.P7852758124556084164

namespace A094178

/-- `floor(A004613(n+2)/4)` -/
def P7852758124556084164.Spec : Prop :=
  ∀ n, P7852758124556084164.a n = A094178 (n + 1)

end A094178

/-! ## A094178.P5527895903656987477

`eq[2, log2(a(A125203(n)))]` with `a(0)=4`
-/

namespace A094178.P5527895903656987477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f2 =>
  Real.logb 2 (f2 (A125203 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A094178.P5527895903656987477

namespace A094178

/-- `eq[2, log2(a(A125203(n)))]` -/
def P5527895903656987477.Spec : Prop :=
  ∀ n, (P5527895903656987477.a n : ℤ) = A094178 (n + 1)

end A094178

/-! ## A094178.P14651800333129961805

`lt[0, A106594(n+1)]+1`
-/

namespace A094178.P14651800333129961805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106594 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A094178.P14651800333129961805

namespace A094178

/-- `lt[0, A106594(n+1)]+1` -/
def P14651800333129961805.Spec : Prop :=
  ∀ n, (P14651800333129961805.a n : ℤ) = A094178 (n + 1)

end A094178

/-! ## A094178.P991122108765672420

`lt[A125203(n+1), 1]+1`
-/

namespace A094178.P991122108765672420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A094178.P991122108765672420

namespace A094178

/-- `lt[A125203(n+1), 1]+1` -/
def P991122108765672420.Spec : Prop :=
  ∀ n, (P991122108765672420.a n : ℤ) = A094178 (n + 1)

end A094178

/-! ## A094178.P6954137113348784924

`eq[1, A000285(a(A125203(n)))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A094178.P6954137113348784924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  A000285 (f2 (A125203 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094178.P6954137113348784924

namespace A094178

/-- `eq[1, A000285(a(A125203(n)))]` -/
def P6954137113348784924.Spec : Prop :=
  ∀ n, (P6954137113348784924.a n : ℤ) = A094178 (n + 1)

end A094178

/-! ## A094178.P1059587746890053443

`eq[1, A001844(a(A125203(n)))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A094178.P1059587746890053443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  A001844 (f2 (A125203 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094178.P1059587746890053443

namespace A094178

/-- `eq[1, A001844(a(A125203(n)))]` -/
def P1059587746890053443.Spec : Prop :=
  ∀ n, (P1059587746890053443.a n : ℤ) = A094178 (n + 1)

end A094178

/-! ## A094178.P3583764359639098032

`lt[1, A031358(n)]`
-/

namespace A094178.P3583764359639098032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A094178.P3583764359639098032

namespace A094178

/-- `lt[1, A031358(n)]` -/
def P3583764359639098032.Spec : Prop :=
  ∀ n, (P3583764359639098032.a n : ℤ) = A094178 (n + 1)

end A094178

/-! ## A094178.P1511565773731716181

`eq[A000007(n), A359240(n+1)]`
-/

namespace A094178.P1511565773731716181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359240 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094178.P1511565773731716181

namespace A094178

/-- `eq[A000007(n), A359240(n+1)]` -/
def P1511565773731716181.Spec : Prop :=
  ∀ n, (P1511565773731716181.a n : ℤ) = A094178 (n + 1)

end A094178

/-! ## A094178.P17570167485789122088

`eq[A000038(n), A359240(n+1)]`
-/

namespace A094178.P17570167485789122088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359240 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094178.P17570167485789122088

namespace A094178

/-- `eq[A000038(n), A359240(n+1)]` -/
def P17570167485789122088.Spec : Prop :=
  ∀ n, (P17570167485789122088.a n : ℤ) = A094178 (n + 1)

end A094178

/-! ## A094178.P8873834588146457935

`eq[A000007(n), A363407(n+1)]`
-/

namespace A094178.P8873834588146457935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094178.P8873834588146457935

namespace A094178

/-- `eq[A000007(n), A363407(n+1)]` -/
def P8873834588146457935.Spec : Prop :=
  ∀ n, (P8873834588146457935.a n : ℤ) = A094178 (n + 1)

end A094178

/-! ## A094178.P17965420586037436435

`eq[A000038(n), A363407(n+1)]`
-/

namespace A094178.P17965420586037436435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094178.P17965420586037436435

namespace A094178

/-- `eq[A000038(n), A363407(n+1)]` -/
def P17965420586037436435.Spec : Prop :=
  ∀ n, (P17965420586037436435.a n : ℤ) = A094178 (n + 1)

end A094178

/-! ## A094178.P14582469398096455599

`eq[A000007(n), A364084(n+1)]`
-/

namespace A094178.P14582469398096455599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094178.P14582469398096455599

namespace A094178

/-- `eq[A000007(n), A364084(n+1)]` -/
def P14582469398096455599.Spec : Prop :=
  ∀ n, (P14582469398096455599.a n : ℤ) = A094178 (n + 1)

end A094178

/-! ## A094178.P2398908643066209512

`eq[A000038(n), A364084(n+1)]`
-/

namespace A094178.P2398908643066209512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094178.P2398908643066209512

namespace A094178

/-- `eq[A000038(n), A364084(n+1)]` -/
def P2398908643066209512.Spec : Prop :=
  ∀ n, (P2398908643066209512.a n : ℤ) = A094178 (n + 1)

end A094178

/-! ## A094178.P4592477734242053390

`eq[A363407(n+1), A365807(n)]`
-/

namespace A094178.P4592477734242053390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365807 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094178.P4592477734242053390

namespace A094178

/-- `eq[A363407(n+1), A365807(n)]` -/
def P4592477734242053390.Spec : Prop :=
  ∀ n, (P4592477734242053390.a n : ℤ) = A094178 (n + 1)

end A094178

/-! ## A094178.P3544286861529458724

`eq[A154271(n+1), A359240(n+1)]`
-/

namespace A094178.P3544286861529458724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359240 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094178.P3544286861529458724

namespace A094178

/-- `eq[A154271(n+1), A359240(n+1)]` -/
def P3544286861529458724.Spec : Prop :=
  ∀ n, (P3544286861529458724.a n : ℤ) = A094178 (n + 1)

end A094178

/-! ## A094178.P15954678016802722115

`eq[A154271(n+1), A363407(n+1)]`
-/

namespace A094178.P15954678016802722115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094178.P15954678016802722115

namespace A094178

/-- `eq[A154271(n+1), A363407(n+1)]` -/
def P15954678016802722115.Spec : Prop :=
  ∀ n, (P15954678016802722115.a n : ℤ) = A094178 (n + 1)

end A094178

/-! ## A094178.P17306940705597484833

`eq[A154272(n+1), A363407(n+1)]`
-/

namespace A094178.P17306940705597484833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094178.P17306940705597484833

namespace A094178

/-- `eq[A154272(n+1), A363407(n+1)]` -/
def P17306940705597484833.Spec : Prop :=
  ∀ n, (P17306940705597484833.a n : ℤ) = A094178 (n + 1)

end A094178

/-! ## A094178.P11589333964406673507

`eq[A154271(n+1), A364084(n+1)]`
-/

namespace A094178.P11589333964406673507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364084 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A094178.P11589333964406673507

namespace A094178

/-- `eq[A154271(n+1), A364084(n+1)]` -/
def P11589333964406673507.Spec : Prop :=
  ∀ n, (P11589333964406673507.a n : ℤ) = A094178 (n + 1)

end A094178

/-!
# A094179: Numbers congruent to 3 mod 4 which are divisible only by primes congruent to 3 mod 4.

The programs for A094179, the canonical program `A094179.P8224842387198527838` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094179 has offset 1).

The definition of A094179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5474 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094179.P6641308765488571767

`4*A094180(n+1)-1`
-/

namespace A094179.P6641308765488571767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A094180 (n + 1) - 1

end

end A094179.P6641308765488571767

namespace A094179

/-- `4*A094180(n+1)-1` -/
def P6641308765488571767.Spec : Prop :=
  ∀ n, P6641308765488571767.a n = A094179 (n + 1)

end A094179

/-! ## A094179.P4331650872090768440

`filter[A359153(n+1), A360113(#)]`
-/

namespace A094179.P4331650872090768440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A094179.P4331650872090768440

namespace A094179

/-- `filter[A359153(n+1), A360113(#)]` -/
def P4331650872090768440.Spec : Prop :=
  ∀ n, P4331650872090768440.a n = A094179 (n + 1)

end A094179

/-! ## A094179.P8997868850669179496

`filter[A359153(n+1), A360116(#)]`
-/

namespace A094179.P8997868850669179496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360116 (f1 j).toNat = 1) n)

end

end A094179.P8997868850669179496

namespace A094179

/-- `filter[A359153(n+1), A360116(#)]` -/
def P8997868850669179496.Spec : Prop :=
  ∀ n, P8997868850669179496.a n = A094179 (n + 1)

end A094179

/-! ## A094179.P8224842387198527838

`filter[A004614(n+1), A066829(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A094179

/-- `filter[A004614(n+1), A066829(#)]` -/
def P8224842387198527838.Spec : Prop :=
  ∀ n, P8224842387198527838.a n = A094179 (n + 1)

theorem P8224842387198527838.correct : P8224842387198527838.Spec := by
  intro n
  simp only [A094179, Nat.add_sub_cancel]

end A094179

/-! ## A094179.P5560953362009164377

`filter[A004614(n+1), A359152(#)]`
-/

namespace A094179.P5560953362009164377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A094179.P5560953362009164377

namespace A094179

/-- `filter[A004614(n+1), A359152(#)]` -/
def P5560953362009164377.Spec : Prop :=
  ∀ n, P5560953362009164377.a n = A094179 (n + 1)

end A094179

/-! ## A094179.P12394959642651718902

`filter[A004614(n+1), A359372(#)]`
-/

namespace A094179.P12394959642651718902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359372 (f1 j).toNat = 1) n)

end

end A094179.P12394959642651718902

namespace A094179

/-- `filter[A004614(n+1), A359372(#)]` -/
def P12394959642651718902.Spec : Prop :=
  ∀ n, P12394959642651718902.a n = A094179 (n + 1)

end A094179

/-! ## A094179.P16718434282230763161

`filter[A004614(n+1), A373141(#)]`
-/

namespace A094179.P16718434282230763161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373141 (f1 j).toNat = 1) n)

end

end A094179.P16718434282230763161

namespace A094179

/-- `filter[A004614(n+1), A373141(#)]` -/
def P16718434282230763161.Spec : Prop :=
  ∀ n, P16718434282230763161.a n = A094179 (n + 1)

end A094179

/-! ## A094179.P10219052683907067716

`filter[A004614(n+1), A353558(#)]`
-/

namespace A094179.P10219052683907067716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353558 (f1 j).toNat = 1) n)

end

end A094179.P10219052683907067716

namespace A094179

/-- `filter[A004614(n+1), A353558(#)]` -/
def P10219052683907067716.Spec : Prop :=
  ∀ n, P10219052683907067716.a n = A094179 (n + 1)

end A094179

/-! ## A094179.P5474735915840374993

`filter[A004614(n+2), A353491(#)]`
-/

namespace A094179.P5474735915840374993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353491 (f1 j).toNat = 1) n)

end

end A094179.P5474735915840374993

namespace A094179

/-- `filter[A004614(n+2), A353491(#)]` -/
def P5474735915840374993.Spec : Prop :=
  ∀ n, P5474735915840374993.a n = A094179 (n + 1)

end A094179

/-! ## A094179.P8181458799431092887

`∩[4*n+3, A004144(n+1)]`
-/

namespace A094179.P8181458799431092887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094179.P8181458799431092887

namespace A094179

/-- `∩[4*n+3, A004144(n+1)]` -/
def P8181458799431092887.Spec : Prop :=
  ∀ n, (P8181458799431092887.a n : ℤ) = A094179 (n + 1)

end A094179

/-! ## A094179.P8150689789610324587

`filter[A004767(n), A360113(#)]`
-/

namespace A094179.P8150689789610324587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A094179.P8150689789610324587

namespace A094179

/-- `filter[A004767(n), A360113(#)]` -/
def P8150689789610324587.Spec : Prop :=
  ∀ n, P8150689789610324587.a n = A094179 (n + 1)

end A094179

/-! ## A094179.P12144636718885102369

`filter[A004767(n), A360116(#)]`
-/

namespace A094179.P12144636718885102369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360116 (f1 j).toNat = 1) n)

end

end A094179.P12144636718885102369

namespace A094179

/-- `filter[A004767(n), A360116(#)]` -/
def P12144636718885102369.Spec : Prop :=
  ∀ n, P12144636718885102369.a n = A094179 (n + 1)

end A094179

/-! ## A094179.P1274933291176704854

`A004767(A094180(n+1)-1)`
-/

namespace A094179.P1274933291176704854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A094180 (n + 1) - 1).toNat

end

end A094179.P1274933291176704854

namespace A094179

/-- `A004767(A094180(n+1)-1)` -/
def P1274933291176704854.Spec : Prop :=
  ∀ n, P1274933291176704854.a n = A094179 (n + 1)

end A094179

/-! ## A094179.P1485854380207074304

`∩[A004144(n+1), A004767(n)]`
-/

namespace A094179.P1485854380207074304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094179.P1485854380207074304

namespace A094179

/-- `∩[A004144(n+1), A004767(n)]` -/
def P1485854380207074304.Spec : Prop :=
  ∀ n, (P1485854380207074304.a n : ℤ) = A094179 (n + 1)

end A094179

/-! ## A094179.P16611414240753674385

`∩[A004614(n+1), A004767(n)]`
-/

namespace A094179.P16611414240753674385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094179.P16611414240753674385

namespace A094179

/-- `∩[A004614(n+1), A004767(n)]` -/
def P16611414240753674385.Spec : Prop :=
  ∀ n, (P16611414240753674385.a n : ℤ) = A094179 (n + 1)

end A094179

/-! ## A094179.P5909852315638410270

`filter[A131098(n+2), A360113(#)]`
-/

namespace A094179.P5909852315638410270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360113 (f1 j).toNat = 1) n)

end

end A094179.P5909852315638410270

namespace A094179

/-- `filter[A131098(n+2), A360113(#)]` -/
def P5909852315638410270.Spec : Prop :=
  ∀ n, P5909852315638410270.a n = A094179 (n + 1)

end A094179

/-! ## A094179.P17579512545573732884

`filter[A131098(n+2), A360116(#)]`
-/

namespace A094179.P17579512545573732884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131098 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A360116 (f1 j).toNat = 1) n)

end

end A094179.P17579512545573732884

namespace A094179

/-- `filter[A131098(n+2), A360116(#)]` -/
def P17579512545573732884.Spec : Prop :=
  ∀ n, P17579512545573732884.a n = A094179 (n + 1)

end A094179

/-! ## A094179.P3594906355981316760

`filter[A200982(n+1), A359152(#)]`
-/

namespace A094179.P3594906355981316760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359152 (f1 j).toNat = 1) n)

end

end A094179.P3594906355981316760

namespace A094179

/-- `filter[A200982(n+1), A359152(#)]` -/
def P3594906355981316760.Spec : Prop :=
  ∀ n, P3594906355981316760.a n = A094179 (n + 1)

end A094179

/-! ## A094179.P73622967135898186

`∩[A200982(n+1), A004767(n)]`
-/

namespace A094179.P73622967135898186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A094179.P73622967135898186

namespace A094179

/-- `∩[A200982(n+1), A004767(n)]` -/
def P73622967135898186.Spec : Prop :=
  ∀ n, (P73622967135898186.a n : ℤ) = A094179 (n + 1)

end A094179

/-!
# A094180: Numbers k such that 4*k-1 is divisible only by primes of form 4*m-1 (i.e., by the Gaussian primes A002145).

The programs for A094180, the canonical program `A094180.P14445506066879923085` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094180 has offset 1).

The definition of A094180 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A094179, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A094180.P14445506066879923085

`(A094179(n+1)+1)/4`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A094180

/-- `(A094179(n+1)+1)/4` -/
def P14445506066879923085.Spec : Prop :=
  ∀ n, P14445506066879923085.a n = (A094180 (n + 1) : ℚ)

end A094180

/-! ## A094180.P18121612654433049220

`eq[2, A046110(2*n+1)]+1`
-/

namespace A094180.P18121612654433049220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046110 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A094180.P18121612654433049220

namespace A094180

/-- `eq[2, A046110(2*n+1)]+1` -/
def P18121612654433049220.Spec : Prop :=
  ∀ n, (P18121612654433049220.a n : ℤ) = A094180 (n + 1)

end A094180

/-! ## A094180.P16728430512607979456

`record[(n+1)/A170818(4*(n+1)-1)]`
-/

namespace A094180.P16728430512607979456
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A170818 (4 * (n + 1) - 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094180.P16728430512607979456

namespace A094180

/-- `record[(n+1)/A170818(4*(n+1)-1)]` -/
def P16728430512607979456.Spec : Prop :=
  ∀ n, P16728430512607979456.a n = (A094180 (n + 1) : ℚ)

end A094180

/-! ## A094180.P15179334358785506414

`A008621(A094179(n+1))`
-/

namespace A094180.P15179334358785506414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A094179 (n + 1)).toNat

end

end A094180.P15179334358785506414

namespace A094180

/-- `A008621(A094179(n+1))` -/
def P15179334358785506414.Spec : Prop :=
  ∀ n, P15179334358785506414.a n = A094180 (n + 1)

end A094180

/-! ## A094180.P17707890181854955305

`A025480(A094179(n+1)+2)`
-/

namespace A094180.P17707890181854955305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A094179 (n + 1) + 2).toNat

end

end A094180.P17707890181854955305

namespace A094180

/-- `A025480(A094179(n+1)+2)` -/
def P17707890181854955305.Spec : Prop :=
  ∀ n, P17707890181854955305.a n = A094180 (n + 1)

end A094180

/-! ## A094180.P5393563734852657733

`A060819(record[A097706(or(2, n+1))+1])`
-/

namespace A094180.P5393563734852657733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (Nat.lor 2 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A094180.P5393563734852657733

namespace A094180

/-- `A060819(record[A097706(or(2, n+1))+1])` -/
def P5393563734852657733.Spec : Prop :=
  ∀ n, P5393563734852657733.a n = A094180 (n + 1)

end A094180

/-! ## A094180.P15958492941407909876

`eq[2, A014963(A046109(A266724(2*n)))]`
-/

namespace A094180.P15958492941407909876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A046109 (A266724 (2 * n)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A094180.P15958492941407909876

namespace A094180

/-- `eq[2, A014963(A046109(A266724(2*n)))]` -/
def P15958492941407909876.Spec : Prop :=
  ∀ n, (P15958492941407909876.a n : ℤ) = A094180 (n + 1)

end A094180

/-! ## A094180.P13125695511402681673

`A008619(eq[A218858(n+1), A328712(2*n+1)])`
-/

namespace A094180.P13125695511402681673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328712 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A094180.P13125695511402681673

namespace A094180

/-- `A008619(eq[A218858(n+1), A328712(2*n+1)])` -/
def P13125695511402681673.Spec : Prop :=
  ∀ n, P13125695511402681673.a n = A094180 (n + 1)

end A094180

/-! ## A094180.P3250233757772505552

`record[gcd(n+1, A328712(A098502(n+1)))]`
-/

namespace A094180.P3250233757772505552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A328712 (A098502 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A094180.P3250233757772505552

namespace A094180

/-- `record[gcd(n+1, A328712(A098502(n+1)))]` -/
def P3250233757772505552.Spec : Prop :=
  ∀ n, (P3250233757772505552.a n : ℤ) = A094180 (n + 1)

end A094180

/-! ## A094180.P5349886767014383321

`A108354(eq[A099380(n), A108354(n)]-1)`
-/

namespace A094180.P5349886767014383321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099380 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108354 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108354 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n - 1)

end

end A094180.P5349886767014383321

namespace A094180

/-- `A108354(eq[A099380(n), A108354(n)]-1)` -/
def P5349886767014383321.Spec : Prop :=
  ∀ n, P5349886767014383321.a n = A094180 (n + 1)

end A094180

/-! ## A094180.P9226375361010045823

`A108354(eq[A099380(n+1), A108354(n+1)])`
-/

namespace A094180.P9226375361010045823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108354 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A094180.P9226375361010045823

namespace A094180

/-- `A108354(eq[A099380(n+1), A108354(n+1)])` -/
def P9226375361010045823.Spec : Prop :=
  ∀ n, P9226375361010045823.a n = A094180 (n + 1)

end A094180

/-!
# A094181: a(n) = (n - tau(n))*(n - phi(n)), where tau=A000005 and phi=A000010.

The programs for A094181, the canonical program `A094181.P11727998955911444971` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094181 has offset 1).

The definition of A094181 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A094181.P11727998955911444971

`A049820(n+1)*A051953(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A094181

/-- `A049820(n+1)*A051953(n+1)` -/
def P11727998955911444971.Spec : Prop :=
  ∀ n, P11727998955911444971.a n = A094181 (n + 1)

theorem P11727998955911444971.correct : P11727998955911444971.Spec := by
  intro n
  simp only [A094181, Nat.add_sub_cancel]

end A094181

/-! ## A094181.P16777719615818848652

`(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)*(n+1-∏{e}[n+1, #+1])`
-/

namespace A094181.P16777719615818848652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)) * ((n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1) : ℕ) : ℤ) : ℚ)

end

end A094181.P16777719615818848652

namespace A094181

/-- `(1-(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n)*(n+1-∏{e}[n+1, #+1])` -/
def P16777719615818848652.Spec : Prop :=
  ∀ n, P16777719615818848652.a n = (A094181 (n + 1) : ℚ)

end A094181

/-! ## A094181.P4616213091860104998

`(A016035(n+1)+1)*A049820(n+1)`
-/

namespace A094181.P4616213091860104998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016035 (n + 1) + 1) * A049820 (n + 1)

end

end A094181.P4616213091860104998

namespace A094181

/-- `(A016035(n+1)+1)*A049820(n+1)` -/
def P4616213091860104998.Spec : Prop :=
  ∀ n, P4616213091860104998.a n = A094181 (n + 1)

end A094181

/-! ## A094181.P8632080656304120283

`(A062968(n+1)-1)*A051953(n+1)`
-/

namespace A094181.P8632080656304120283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062968 (n + 1) - 1) * A051953 (n + 1)

end

end A094181.P8632080656304120283

namespace A094181

/-- `(A062968(n+1)-1)*A051953(n+1)` -/
def P8632080656304120283.Spec : Prop :=
  ∀ n, P8632080656304120283.a n = A094181 (n + 1)

theorem P8632080656304120283.correct : P8632080656304120283.Spec := by
  intro n
  simp only [A094181, Nat.add_sub_cancel, A094181.P8632080656304120283.a, A094181.P11727998955911444971.a, A049820, A049820.P9428372222244335888.a, A051953, A051953.P12093122754958550118.a, A062968, A062968.P12745258028289340812.a, A000005, A000005.P16091521709108585461.a, A003557, A003557.P6364735403900941810.a, A318305, A318305.P17845263951644339002.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A094181

/-! ## A094181.P11519759193535243818

`(n-A109606(n+1))*A049820(n+1)`
-/

namespace A094181.P11519759193535243818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A109606 (n + 1)) * A049820 (n + 1)

end

end A094181.P11519759193535243818

namespace A094181

/-- `(n-A109606(n+1))*A049820(n+1)` -/
def P11519759193535243818.Spec : Prop :=
  ∀ n, P11519759193535243818.a n = A094181 (n + 1)

end A094181

/-! ## A094181.P936208271571952047

`(n+1-A000010(n+1))*A049820(n+1)`
-/

namespace A094181.P936208271571952047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A000010 (n + 1)) * A049820 (n + 1)

end

end A094181.P936208271571952047

namespace A094181

/-- `(n+1-A000010(n+1))*A049820(n+1)` -/
def P936208271571952047.Spec : Prop :=
  ∀ n, P936208271571952047.a n = A094181 (n + 1)

end A094181

/-! ## A094181.P16983668309099212028

`(n+1-A000005(n+1))*A051953(n+1)`
-/

namespace A094181.P16983668309099212028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A000005 (n + 1)) * A051953 (n + 1)

end

end A094181.P16983668309099212028

namespace A094181

/-- `(n+1-A000005(n+1))*A051953(n+1)` -/
def P16983668309099212028.Spec : Prop :=
  ∀ n, P16983668309099212028.a n = A094181 (n + 1)

end A094181

/-! ## A094181.P1210260943107815548

`(n+1-A000005(n+1))*(n+1-A000010(n+1))`
-/

namespace A094181.P1210260943107815548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A000005 (n + 1)) * ((n + 1 : ℤ) - A000010 (n + 1))

end

end A094181.P1210260943107815548

namespace A094181

/-- `(n+1-A000005(n+1))*(n+1-A000010(n+1))` -/
def P1210260943107815548.Spec : Prop :=
  ∀ n, P1210260943107815548.a n = A094181 (n + 1)

end A094181

/-! ## A094181.P10929891203728234160

`(A002088(n)-A015613(n+1))*A049820(n+1)`
-/

namespace A094181.P10929891203728234160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002088 n - A015613 (n + 1)) * A049820 (n + 1)

end

end A094181.P10929891203728234160

namespace A094181

/-- `(A002088(n)-A015613(n+1))*A049820(n+1)` -/
def P10929891203728234160.Spec : Prop :=
  ∀ n, P10929891203728234160.a n = A094181 (n + 1)

end A094181

/-! ## A094181.P9931232988120960584

`(A063070(n+1)+A051953(n+1))*A051953(n+1)`
-/

namespace A094181.P9931232988120960584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A063070 (n + 1) + A051953 (n + 1)) * A051953 (n + 1)

end

end A094181.P9931232988120960584

namespace A094181

/-- `(A063070(n+1)+A051953(n+1))*A051953(n+1)` -/
def P9931232988120960584.Spec : Prop :=
  ∀ n, P9931232988120960584.a n = A094181 (n + 1)

end A094181

/-! ## A094181.P12623455807137817440

`(A006590(n+1)-A006218(n+1))*A051953(n+1)`
-/

namespace A094181.P12623455807137817440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006590 (n + 1) - A006218 (n + 1)) * A051953 (n + 1)

end

end A094181.P12623455807137817440

namespace A094181

/-- `(A006590(n+1)-A006218(n+1))*A051953(n+1)` -/
def P12623455807137817440.Spec : Prop :=
  ∀ n, P12623455807137817440.a n = A094181 (n + 1)

end A094181

/-! ## A094181.P6137830548687009335

`(n-A032741(n+1))*A319700(2*(n+1))`
-/

namespace A094181.P6137830548687009335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A032741 (n + 1)) * A319700 (2 * (n + 1))

end

end A094181.P6137830548687009335

namespace A094181

/-- `(n-A032741(n+1))*A319700(2*(n+1))` -/
def P6137830548687009335.Spec : Prop :=
  ∀ n, P6137830548687009335.a n = A094181 (n + 1)

end A094181

/-!
# A094183: Semiperimeter of primitive Pythagorean triangles, sorted on area A024406(n), then on semiperimeter.

The programs for A094183, there is no canonical definition to state claims against.
-/

/-! ## A094183.P14677970080434999592

`A020886(A014321(n+1)%A289893(3*(n+1)))`
-/

namespace A094183.P14677970080434999592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020886 (Int.tmod (A014321 (n + 1)) (A289893 (3 * (n + 1)))).toNat

end

end A094183.P14677970080434999592

/-!
# A094184: Triangle read by rows in which each term equals the entry above minus the entry left plus twice the entry left-above.

The programs for A094184, there is no canonical definition to state claims against.
-/

/-! ## A094184.P7666351473643863618

`A015267(A002262(n))*A065432(n)`
-/

namespace A094184.P7666351473643863618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015267 (A002262 n).toNat * A065432 n

end

end A094184.P7666351473643863618

/-! ## A094184.P15435918744756454303

`A008836(A059268(n))*A065432(n)`
-/

namespace A094184.P15435918744756454303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A059268 n).toNat * A065432 n

end

end A094184.P15435918744756454303

/-! ## A094184.P4591861790244558781

`A065432(n)*A097807(A061579(n))`
-/

namespace A094184.P4591861790244558781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065432 n * A097807 (A061579 n).toNat

end

end A094184.P4591861790244558781

/-! ## A094184.P2945536369443089875

`A009531(A158405(n+1))*A065432(n)`
-/

namespace A094184.P2945536369443089875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A158405 (n + 1)).toNat * A065432 n

end

end A094184.P2945536369443089875

/-! ## A094184.P9906699588878266282

`A065432(n)*A258998(A133819(n+1))`
-/

namespace A094184.P9906699588878266282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065432 n * A258998 (A133819 (n + 1)).toNat

end

end A094184.P9906699588878266282

/-! ## A094184.P1276148535234824320

`A033999(A002262(n))*A125692(A061579(n))`
-/

namespace A094184.P1276148535234824320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A125692 (A061579 n).toNat

end

end A094184.P1276148535234824320

/-! ## A094184.P12908111087333774186

`A008836(A059268(n))*A125692(A061579(n))`
-/

namespace A094184.P12908111087333774186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A059268 n).toNat * A125692 (A061579 n).toNat

end

end A094184.P12908111087333774186

/-! ## A094184.P2892108957862515022

`A033999(A002262(n))*A125692(A114327(n)+n)`
-/

namespace A094184.P2892108957862515022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A002262 n).toNat * A125692 (A114327 n + (n : ℤ)).toNat

end

end A094184.P2892108957862515022

/-! ## A094184.P5069740449602377880

`A125692(A114327(n)+n)/A008836(A059268(n))`
-/

namespace A094184.P5069740449602377880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A125692 (A114327 n + (n : ℤ)).toNat : ℚ) / (A008836 (A059268 n).toNat : ℚ)

end

end A094184.P5069740449602377880

/-! ## A094184.P157071085539018135

`A065432(n)*A097807(A002378(n)%A080036(n))`
-/

namespace A094184.P157071085539018135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065432 n * A097807 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A094184.P157071085539018135

/-!
# A094186: Taking a(1)=0 and a(2)=1, sequence (a(n))n>1 is defined as follows : letting w(k)=a(1)a(2)...a(k) and w(infinity)= limit k ->infinity a(1)a(2)w(1)w(2)...w(k) we have w(infinity)=a(1)a(2)a(3)a(4)...

The programs for A094186, the canonical program `A094186.P15847844308210161823` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094186 has offset 1).

The definition of A094186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094186.P15847844308210161823

`a(A002262(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A094186

/-- `a(A002262(n-2))` -/
def P15847844308210161823.Spec : Prop :=
  ∀ n, (P15847844308210161823.a n : ℤ) = A094186 (n + 1)

theorem P15847844308210161823.correct : P15847844308210161823.Spec := by
  intro n
  simp only [A094186, Nat.add_sub_cancel]

end A094186

/-! ## A094186.P15342802945632689629

`char[A267379(n+1)-1]`
-/

namespace A094186.P15342802945632689629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267379 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A094186.P15342802945632689629

namespace A094186

/-- `char[A267379(n+1)-1]` -/
def P15342802945632689629.Spec : Prop :=
  ∀ n, (P15342802945632689629.a n : ℤ) = A094186 (n + 1)

end A094186

/-! ## A094186.P5707615585919928392

`a(log2(A059268(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A094186.P5707615585919928392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (SequenceMachineLib.roundAway (Real.logb 2 (A059268 (n - 2) : ℝ))).toNat

end

end A094186.P5707615585919928392

namespace A094186

/-- `a(log2(A059268(n-2)))` -/
def P5707615585919928392.Spec : Prop :=
  ∀ n, (P5707615585919928392.a n : ℤ) = A094186 (n + 1)

end A094186

/-! ## A094186.P16030404741571068572

`a(A002260(n-1)-1)` with `a(0)=0, a(1)=1`
-/

namespace A094186.P16030404741571068572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A002260 (n - 1) - 1).toNat

end

end A094186.P16030404741571068572

namespace A094186

/-- `a(A002260(n-1)-1)` -/
def P16030404741571068572.Spec : Prop :=
  ∀ n, (P16030404741571068572.a n : ℤ) = A094186 (n + 1)

end A094186

/-! ## A094186.P608701575427459770

`A060368(Δ[char[A267379(n+1)]]+2)`
-/

namespace A094186.P608701575427459770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267379 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060368 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat

end

end A094186.P608701575427459770

namespace A094186

/-- `A060368(Δ[char[A267379(n+1)]]+2)` -/
def P608701575427459770.Spec : Prop :=
  ∀ n, P608701575427459770.a n = A094186 (n + 1)

end A094186

/-! ## A094186.P10908838048810472546

`A004247(Δ[char[A267379(n+1)]]+3)`
-/

namespace A094186.P10908838048810472546
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267379 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3).toNat

end

end A094186.P10908838048810472546

namespace A094186

/-- `A004247(Δ[char[A267379(n+1)]]+3)` -/
def P10908838048810472546.Spec : Prop :=
  ∀ n, P10908838048810472546.a n = A094186 (n + 1)

end A094186

/-! ## A094186.P11497913096552638289

`a(A026100(A026098(abs(2-n)+1))-1)` with `a(0)=0, a(1)=1`
-/

namespace A094186.P11497913096552638289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A026100 (A026098 (|2 - (n : ℤ)| + 1).toNat).toNat - 1).toNat

end

end A094186.P11497913096552638289

namespace A094186

/-- `a(A026100(A026098(abs(2-n)+1))-1)` -/
def P11497913096552638289.Spec : Prop :=
  ∀ n, (P11497913096552638289.a n : ℤ) = A094186 (n + 1)

end A094186

/-!
# A094188: Number of levels in the compositions of n with odd summands.

The programs for A094188, the canonical program `A094188.P7617462375773314475` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094188 has offset 2).

The definition of A094188 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A094188.P7617462375773314475

`a(n-1)+3*a(n-2)-a(n-3)-3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=3, a(3)=2, a(4)=8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094188

/-- `a(n-1)+3*a(n-2)-a(n-3)-3*a(n-4)-a(n-5)` -/
def P7617462375773314475.Spec : Prop :=
  ∀ n, P7617462375773314475.a n = A094188 (n + 2)

theorem P7617462375773314475.correct : P7617462375773314475.Spec := by
  intro n
  simp only [A094188, Nat.add_sub_cancel]

end A094188

/-! ## A094188.P5280823409958859322

`A006367(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A094188.P5280823409958859322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A006367 n + a (n - 2)

end

end A094188.P5280823409958859322

namespace A094188

/-- `A006367(n)+a(n-2)` -/
def P5280823409958859322.Spec : Prop :=
  ∀ n, P5280823409958859322.a n = A094188 (n + 2)

end A094188

/-! ## A094188.P4201381918541415933

`A078024(n)+A010049(n)`
-/

namespace A094188.P4201381918541415933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 n + A010049 n

end

end A094188.P4201381918541415933

namespace A094188

/-- `A078024(n)+A010049(n)` -/
def P4201381918541415933.Spec : Prop :=
  ∀ n, P4201381918541415933.a n = A094188 (n + 2)

end A094188

/-! ## A094188.P12475315048730919322

`ogf((1-x)/(1-x-3x^2+x^3+3x^4+x^5))`
-/

namespace A094188.P12475315048730919322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -1, -3, 1, 3, 1] n

end

end A094188.P12475315048730919322

namespace A094188

/-- `ogf((1-x)/(1-x-3x^2+x^3+3x^4+x^5))` -/
def P12475315048730919322.Spec : Prop :=
  ∀ n, P12475315048730919322.a n = A094188 (n + 2)

end A094188

/-! ## A094188.P850129796393839165

`A010049(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A094188.P850129796393839165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010049 (n + 1) - a (n - 1)

end

end A094188.P850129796393839165

namespace A094188

/-- `A010049(n+1)-a(n-1)` -/
def P850129796393839165.Spec : Prop :=
  ∀ n, P850129796393839165.a n = A094188 (n + 2)

end A094188

/-! ## A094188.P6047848723445398049

`abs(∑[(A004442(n)-n)*A010049(n+1)])`
-/

namespace A094188.P6047848723445398049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A010049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A094188.P6047848723445398049

namespace A094188

/-- `abs(∑[(A004442(n)-n)*A010049(n+1)])` -/
def P6047848723445398049.Spec : Prop :=
  ∀ n, P6047848723445398049.a n = A094188 (n + 2)

end A094188

/-! ## A094188.P11563437084851691994

`A078024(n)+Δ[A001629(n)]`
-/

namespace A094188.P11563437084851691994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 n + (f1 (n + 1) - f1 n)

end

end A094188.P11563437084851691994

namespace A094188

/-- `A078024(n)+Δ[A001629(n)]` -/
def P11563437084851691994.Spec : Prop :=
  ∀ n, P11563437084851691994.a n = A094188 (n + 2)

end A094188

/-! ## A094188.P1373787173601179523

`Δ[A001629(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A094188.P1373787173601179523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (n + 1) - f1 n - a (n - 1)

end

end A094188.P1373787173601179523

namespace A094188

/-- `Δ[A001629(n+1)]-a(n-1)` -/
def P1373787173601179523.Spec : Prop :=
  ∀ n, P1373787173601179523.a n = A094188 (n + 2)

end A094188

/-! ## A094188.P15447391070976913836

`A078024(n)+Δ[Δ[A006478(n)]]`
-/

namespace A094188.P15447391070976913836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078024 n + (f1 (n + 1) - f1 n)

end

end A094188.P15447391070976913836

namespace A094188

/-- `A078024(n)+Δ[Δ[A006478(n)]]` -/
def P15447391070976913836.Spec : Prop :=
  ∀ n, P15447391070976913836.a n = A094188 (n + 2)

end A094188

/-! ## A094188.P14045346919939952042

`Δ[Δ[A055244(n)-A014217(n)]]`
-/

namespace A094188.P14045346919939952042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 n - A014217 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A094188.P14045346919939952042

namespace A094188

/-- `Δ[Δ[A055244(n)-A014217(n)]]` -/
def P14045346919939952042.Spec : Prop :=
  ∀ n, P14045346919939952042.a n = A094188 (n + 2)

end A094188

/-!
# A094189: Number of primes between n^2-n and n^2 (inclusive).

The programs for A094189, there is no canonical definition to state claims against.
-/

/-! ## A094189.P4911902803819184072

`A220492(2*n+1)+char[1]`
-/

namespace A094189.P4911902803819184072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220492 (2 * n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A094189.P4911902803819184072

/-! ## A094189.P12928872190359589734

`A054977(A004483(n))*A220492(2*n+1)`
-/

namespace A094189.P12928872190359589734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A004483 n).toNat * A220492 (2 * n + 1)

end

end A094189.P12928872190359589734

/-! ## A094189.P14183373605615428085

`A054977(A220492(n))*A220492(2*n+1)`
-/

namespace A094189.P14183373605615428085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A220492 n).toNat * A220492 (2 * n + 1)

end

end A094189.P14183373605615428085

/-! ## A094189.P939755961505811200

`A083415(char[1]+∑[n+1])`
-/

namespace A094189.P939755961505811200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083415 ((if ∃ j, f1 j = n then 1 else 0) + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A094189.P939755961505811200

/-! ## A094189.P17190124622115558883

`A083415(∑[n+1])+A063524(n)`
-/

namespace A094189.P17190124622115558883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083415 (∑ j ∈ Finset.range (n + 1), f1 j) + A063524 n

end

end A094189.P17190124622115558883

/-! ## A094189.P4437167800917520319

`A083415(∑[n+1])-A159075(n)`
-/

namespace A094189.P4437167800917520319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083415 (∑ j ∈ Finset.range (n + 1), f1 j) - A159075 n

end

end A094189.P4437167800917520319

/-! ## A094189.P4125960439368911549

`A189024(or(1, n*(n+2)))`
-/

namespace A094189.P4125960439368911549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 (Nat.lor 1 (n * (n + 2)))

end

end A094189.P4125960439368911549

/-! ## A094189.P4253376869127563924

`A189024(char[1]+(n+1)²)`
-/

namespace A094189.P4253376869127563924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 ((if ∃ j, f1 j = n then 1 else 0) + (n + 1) ^ 2)

end

end A094189.P4253376869127563924

/-! ## A094189.P14068178639918453915

`(C(n, n²)+1)*A189024((n+1)²)`
-/

namespace A094189.P14068178639918453915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (n ^ 2) + 1 : ℤ) * A189024 ((n + 1) ^ 2)

end

end A094189.P14068178639918453915

/-! ## A094189.P5159560969706346381

`A141044(n)*A189024((n+1)²)`
-/

namespace A094189.P5159560969706346381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n * A189024 ((n + 1) ^ 2)

end

end A094189.P5159560969706346381

/-! ## A094189.P4440270338371834849

`A189024((n+1)²)+A036987(n²+2)`
-/

namespace A094189.P4440270338371834849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 ((n + 1) ^ 2) + A036987 (n ^ 2 + 2)

end

end A094189.P4440270338371834849

/-! ## A094189.P2593337600358105951

`A189024((n+1)²)+A003982(A001747(n+1))`
-/

namespace A094189.P2593337600358105951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 ((n + 1) ^ 2) + A003982 (A001747 (n + 1)).toNat

end

end A094189.P2593337600358105951

/-! ## A094189.P1962684001466398862

`A189024((n+1)²)-A247223(A000040(2*n+1))`
-/

namespace A094189.P1962684001466398862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189024 ((n + 1) ^ 2) - A247223 (A000040 (2 * n + 1)).toNat

end

end A094189.P1962684001466398862

/-!
# A094190: Least n-digit automorphic number.

The programs for A094190, there is no canonical definition to state claims against.
-/

/-! ## A094190.P15060646477809436721

`A003226(A335002(n+3)^A080345(n+1))`
-/

namespace A094190.P15060646477809436721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003226 (SequenceMachineLib.roundAway ((A335002 (n + 3) : ℚ) ^ (A080345 (n + 1) : ℤ))).toNat

end

end A094190.P15060646477809436721

/-! ## A094190.P6422985514073634224

`A003226(A281005(n+1)%A265408(3*n+1))`
-/

namespace A094190.P6422985514073634224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003226 (Int.tmod (A281005 (n + 1)) (A265408 (3 * n + 1))).toNat

end

end A094190.P6422985514073634224

/-!
# A094191: a(n) = smallest positive number that occurs exactly n times as a difference between two positive squares.

The programs for A094191, there is no canonical definition to state claims against.
-/

/-! ## A094191.P16336694976172495555

`A246063(A246092(2*(n+1))%A246042(n+2))`
-/

namespace A094191.P16336694976172495555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246063 (Int.tmod (A246092 (2 * (n + 1))) (A246042 (n + 2))).toNat

end

end A094191.P16336694976172495555

/-! ## A094191.P11412072638082106687

`A334078(A100793(n))`
-/

namespace A094191.P11412072638082106687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334078 (A100793 n).toNat

end

end A094191.P11412072638082106687

/-!
# A094192: Values x of the generator pairs (x, y), x>y of primitive Pythagorean triples, sorted.

The programs for A094192, the canonical program `A094192.P18098978962141808339` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094192 has offset 1).

The definition of A094192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094192.P4974367727108389844

`∑[char[∑[A055034(n+2)]]]+2`
-/

namespace A094192.P4974367727108389844
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A094192.P4974367727108389844

namespace A094192

/-- `∑[char[∑[A055034(n+2)]]]+2` -/
def P4974367727108389844.Spec : Prop :=
  ∀ n, (P4974367727108389844.a n : ℤ) = A094192 (n + 1)

end A094192

/-! ## A094192.P264542606740099763

`∑[and(1, A000010(A094193(n+1)))]+1`
-/

namespace A094192.P264542606740099763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000010 (A094193 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A094192.P264542606740099763

namespace A094192

/-- `∑[and(1, A000010(A094193(n+1)))]+1` -/
def P264542606740099763.Spec : Prop :=
  ∀ n, P264542606740099763.a n = A094192 (n + 1)

end A094192

/-! ## A094192.P18098978962141808339

`A038567(eq[2, gcd(2, (n+1)*A038567(n))])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A094192

/-- `A038567(eq[2, gcd(2, (n+1)*A038567(n))])` -/
def P18098978962141808339.Spec : Prop :=
  ∀ n, P18098978962141808339.a n = A094192 (n + 1)

theorem P18098978962141808339.correct : P18098978962141808339.Spec := by
  intro n
  simp only [A094192, Nat.add_sub_cancel]

end A094192

/-! ## A094192.P12541117903189235022

`sqrt(A094194(n+1)-A094193(n+1)²)`
-/

namespace A094192.P12541117903189235022
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A094194 (n + 1) - A094193 (n + 1) ^ 2 : ℝ)

end

end A094192.P12541117903189235022

namespace A094192

/-- `sqrt(A094194(n+1)-A094193(n+1)²)` -/
def P12541117903189235022.Spec : Prop :=
  ∀ n, P12541117903189235022.a n = (A094192 (n + 1) : ℝ)

end A094192

/-! ## A094192.P4583650866147472175

`A000267(eq[A000196(4*n), A075119(4*n+1)])`
-/

namespace A094192.P4583650866147472175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (4 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075119 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A094192.P4583650866147472175

namespace A094192

/-- `A000267(eq[A000196(4*n), A075119(4*n+1)])` -/
def P4583650866147472175.Spec : Prop :=
  ∀ n, P4583650866147472175.a n = A094192 (n + 1)

end A094192

/-! ## A094192.P11083400636010651916

`∑[A014744(A337713(n+2)-1)]+1`
-/

namespace A094192.P11083400636010651916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014744 (A337713 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A094192.P11083400636010651916

namespace A094192

/-- `∑[A014744(A337713(n+2)-1)]+1` -/
def P11083400636010651916.Spec : Prop :=
  ∀ n, P11083400636010651916.a n = A094192 (n + 1)

end A094192

/-! ## A094192.P12560602405247752319

`A309425(n+1)+A094193(n+1)`
-/

namespace A094192.P12560602405247752319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309425 (n + 1) + A094193 (n + 1)

end

end A094192.P12560602405247752319

namespace A094192

/-- `A309425(n+1)+A094193(n+1)` -/
def P12560602405247752319.Spec : Prop :=
  ∀ n, P12560602405247752319.a n = A094192 (n + 1)

theorem P12560602405247752319.correct : P12560602405247752319.Spec := by
  intro n
  simp only [A094192, Nat.add_sub_cancel, A094192.P12560602405247752319.a, A094192.P18098978962141808339.f1, A094192.P18098978962141808339.f2, A094192.P18098978962141808339.a, A038567, A038567.P2197162168153652474.a, A094193, A094193.P6959740835423411185.f1, A094193.P6959740835423411185.f2, A094193.P6959740835423411185.a, A309425, A309425.P6950203414554343427.a, A020652, A020652.P12873781580618070316.a, A020653, A020653.P13896194492571762582.a, A169581, A169581.P5880074655837136645.f1, A169581.P5880074655837136645.f2, A169581.P5880074655837136645.a, A002260, A002260.P769748059679640451.a, A025581, A025581.P420762180635059694.a, A166527, A166527.P3407768485719253100.f1, A166527.P3407768485719253100.f2, A166527.P3407768485719253100.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A077478, A077478.P13653691619814893632.f1, A077478.P13653691619814893632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A094192

/-! ## A094192.P13348176369855205438

`A309424(n+1)-A094193(n+1)`
-/

namespace A094192.P13348176369855205438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309424 (n + 1) - A094193 (n + 1)

end

end A094192.P13348176369855205438

namespace A094192

/-- `A309424(n+1)-A094193(n+1)` -/
def P13348176369855205438.Spec : Prop :=
  ∀ n, P13348176369855205438.a n = A094192 (n + 1)

theorem P13348176369855205438.correct : P13348176369855205438.Spec := by
  intro n
  simp only [A094192, Nat.add_sub_cancel, A094192.P13348176369855205438.a, A094192.P18098978962141808339.f1, A094192.P18098978962141808339.f2, A094192.P18098978962141808339.a, A038567, A038567.P2197162168153652474.a, A094193, A094193.P6959740835423411185.f1, A094193.P6959740835423411185.f2, A094193.P6959740835423411185.a, A309424, A309424.P14488381854534681636.a, A020652, A020652.P12873781580618070316.a, A020653, A020653.P13896194492571762582.a, A169581, A169581.P5880074655837136645.f1, A169581.P5880074655837136645.f2, A169581.P5880074655837136645.a, A002260, A002260.P769748059679640451.a, A025581, A025581.P420762180635059694.a, A166527, A166527.P3407768485719253100.f1, A166527.P3407768485719253100.f2, A166527.P3407768485719253100.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A077478, A077478.P13653691619814893632.f1, A077478.P13653691619814893632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A094192

/-! ## A094192.P15747873161551332624

`(A309425(n+1)+A309424(n+1))/2`
-/

namespace A094192.P15747873161551332624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309425 (n + 1) + A309424 (n + 1) : ℚ) / 2

end

end A094192.P15747873161551332624

namespace A094192

/-- `(A309425(n+1)+A309424(n+1))/2` -/
def P15747873161551332624.Spec : Prop :=
  ∀ n, P15747873161551332624.a n = (A094192 (n + 1) : ℚ)

theorem P15747873161551332624.correct : P15747873161551332624.Spec := by
  intro n
  simp only [A094192, Nat.add_sub_cancel, A094192.P15747873161551332624.a, A094192.P18098978962141808339.f1, A094192.P18098978962141808339.f2, A094192.P18098978962141808339.a, A038567, A038567.P2197162168153652474.a, A309424, A309424.P14488381854534681636.a, A309425, A309425.P6950203414554343427.a, A094193, A094193.P6959740835423411185.f1, A094193.P6959740835423411185.f2, A094193.P6959740835423411185.a, A169581, A169581.P5880074655837136645.f1, A169581.P5880074655837136645.f2, A169581.P5880074655837136645.a, A002260, A002260.P769748059679640451.a, A020652, A020652.P12873781580618070316.a, A020653, A020653.P13896194492571762582.a, A025581, A025581.P420762180635059694.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A166527, A166527.P3407768485719253100.f1, A166527.P3407768485719253100.f2, A166527.P3407768485719253100.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A094192

/-! ## A094192.P4188813523097764712

`A002024(A243808(n+1))`
-/

namespace A094192.P4188813523097764712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A243808 (n + 1)).toNat

end

end A094192.P4188813523097764712

namespace A094192

/-- `A002024(A243808(n+1))` -/
def P4188813523097764712.Spec : Prop :=
  ∀ n, P4188813523097764712.a n = A094192 (n + 1)

end A094192

/-!
# A094193: Values y of the generator pairs (x, y), x>y of primitive Pythagorean triples, sorted on x.

The programs for A094193, the canonical program `A094193.P6959740835423411185` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094193 has offset 1).

The definition of A094193 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094193.P6959740835423411185

`A020652(eq[1, A020653(n+1)%2]+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A094193

/-- `A020652(eq[1, A020653(n+1)%2]+1)` -/
def P6959740835423411185.Spec : Prop :=
  ∀ n, P6959740835423411185.a n = A094193 (n + 1)

theorem P6959740835423411185.correct : P6959740835423411185.Spec := by
  intro n
  simp only [A094193, Nat.add_sub_cancel]

end A094193

/-! ## A094193.P2395989183990484583

`sqrt(A094194(n+1)-A094192(n+1)²)`
-/

namespace A094193.P2395989183990484583
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A094194 (n + 1) - A094192 (n + 1) ^ 2 : ℝ)

end

end A094193.P2395989183990484583

namespace A094193

/-- `sqrt(A094194(n+1)-A094192(n+1)²)` -/
def P2395989183990484583.Spec : Prop :=
  ∀ n, P2395989183990484583.a n = (A094193 (n + 1) : ℝ)

end A094193

/-! ## A094193.P2375713128710603173

`A000196(A094194(n+1)-A094192(n+1)²)`
-/

namespace A094193.P2375713128710603173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A094194 (n + 1) - A094192 (n + 1) ^ 2).toNat

end

end A094193.P2375713128710603173

namespace A094193

/-- `A000196(A094194(n+1)-A094192(n+1)²)` -/
def P2375713128710603173.Spec : Prop :=
  ∀ n, P2375713128710603173.a n = A094193 (n + 1)

end A094193

/-! ## A094193.P4832378657719826369

`A003059(A094194(n+1)-A094192(n+1)²)`
-/

namespace A094193.P4832378657719826369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A094194 (n + 1) - A094192 (n + 1) ^ 2).toNat

end

end A094193.P4832378657719826369

namespace A094193

/-- `A003059(A094194(n+1)-A094192(n+1)²)` -/
def P4832378657719826369.Spec : Prop :=
  ∀ n, P4832378657719826369.a n = A094193 (n + 1)

end A094193

/-! ## A094193.P15630853741699369037

`A000196(A094194(n+1)%A094192(n+1)²)`
-/

namespace A094193.P15630853741699369037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.tmod (A094194 (n + 1)) (A094192 (n + 1) ^ 2)).toNat

end

end A094193.P15630853741699369037

namespace A094193

/-- `A000196(A094194(n+1)%A094192(n+1)²)` -/
def P15630853741699369037.Spec : Prop :=
  ∀ n, P15630853741699369037.a n = A094193 (n + 1)

end A094193

/-! ## A094193.P14098644767070454361

`A000194(A094194(n+1)-A094192(n+1)²)`
-/

namespace A094193.P14098644767070454361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A094194 (n + 1) - A094192 (n + 1) ^ 2).toNat

end

end A094193.P14098644767070454361

namespace A094193

/-- `A000194(A094194(n+1)-A094192(n+1)²)` -/
def P14098644767070454361.Spec : Prop :=
  ∀ n, P14098644767070454361.a n = A094193 (n + 1)

end A094193

/-! ## A094193.P6933845762622980322

`A094192(n+1)-A309425(n+1)`
-/

namespace A094193.P6933845762622980322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (n + 1) - A309425 (n + 1)

end

end A094193.P6933845762622980322

namespace A094193

/-- `A094192(n+1)-A309425(n+1)` -/
def P6933845762622980322.Spec : Prop :=
  ∀ n, P6933845762622980322.a n = A094193 (n + 1)

theorem P6933845762622980322.correct : P6933845762622980322.Spec := by
  intro n
  simp only [A094193, Nat.add_sub_cancel, A094193.P6933845762622980322.a, A094193.P6959740835423411185.f1, A094193.P6959740835423411185.f2, A094193.P6959740835423411185.a, A020652, A020652.P12873781580618070316.a, A020653, A020653.P13896194492571762582.a, A094192, A094192.P18098978962141808339.f1, A094192.P18098978962141808339.f2, A094192.P18098978962141808339.a, A309425, A309425.P6950203414554343427.a, A002260, A002260.P769748059679640451.a, A038567, A038567.P2197162168153652474.a, A166527, A166527.P3407768485719253100.f1, A166527.P3407768485719253100.f2, A166527.P3407768485719253100.a, A002262, A002262.P12129691700837801527.a, A077478, A077478.P13653691619814893632.f1, A077478.P13653691619814893632.a, A169581, A169581.P5880074655837136645.f1, A169581.P5880074655837136645.f2, A169581.P5880074655837136645.a, A003989, A003989.P4304575530733865990.a, A025581, A025581.P420762180635059694.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A094193

/-! ## A094193.P9764980084399509066

`A309424(n+1)-A094192(n+1)`
-/

namespace A094193.P9764980084399509066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309424 (n + 1) - A094192 (n + 1)

end

end A094193.P9764980084399509066

namespace A094193

/-- `A309424(n+1)-A094192(n+1)` -/
def P9764980084399509066.Spec : Prop :=
  ∀ n, P9764980084399509066.a n = A094193 (n + 1)

theorem P9764980084399509066.correct : P9764980084399509066.Spec := by
  intro n
  simp only [A094193, Nat.add_sub_cancel, A094193.P9764980084399509066.a, A094193.P6959740835423411185.f1, A094193.P6959740835423411185.f2, A094193.P6959740835423411185.a, A020652, A020652.P12873781580618070316.a, A020653, A020653.P13896194492571762582.a, A094192, A094192.P18098978962141808339.f1, A094192.P18098978962141808339.f2, A094192.P18098978962141808339.a, A309424, A309424.P14488381854534681636.a, A002260, A002260.P769748059679640451.a, A038567, A038567.P2197162168153652474.a, A166527, A166527.P3407768485719253100.f1, A166527.P3407768485719253100.f2, A166527.P3407768485719253100.a, A002262, A002262.P12129691700837801527.a, A077478, A077478.P13653691619814893632.f1, A077478.P13653691619814893632.a, A169581, A169581.P5880074655837136645.f1, A169581.P5880074655837136645.f2, A169581.P5880074655837136645.a, A003989, A003989.P4304575530733865990.a, A025581, A025581.P420762180635059694.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A094193

/-! ## A094193.P1878046623187052181

`(A309424(n+1)-A309425(n+1))/2`
-/

namespace A094193.P1878046623187052181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309424 (n + 1) - A309425 (n + 1) : ℚ) / 2

end

end A094193.P1878046623187052181

namespace A094193

/-- `(A309424(n+1)-A309425(n+1))/2` -/
def P1878046623187052181.Spec : Prop :=
  ∀ n, P1878046623187052181.a n = (A094193 (n + 1) : ℚ)

theorem P1878046623187052181.correct : P1878046623187052181.Spec := by
  intro n
  simp only [A094193, Nat.add_sub_cancel, A094193.P1878046623187052181.a, A094193.P6959740835423411185.f1, A094193.P6959740835423411185.f2, A094193.P6959740835423411185.a, A020652, A020652.P12873781580618070316.a, A020653, A020653.P13896194492571762582.a, A309424, A309424.P14488381854534681636.a, A309425, A309425.P6950203414554343427.a, A002260, A002260.P769748059679640451.a, A038567, A038567.P2197162168153652474.a, A094192, A094192.P18098978962141808339.f1, A094192.P18098978962141808339.f2, A094192.P18098978962141808339.a, A166527, A166527.P3407768485719253100.f1, A166527.P3407768485719253100.f2, A166527.P3407768485719253100.a, A002262, A002262.P12129691700837801527.a, A077478, A077478.P13653691619814893632.f1, A077478.P13653691619814893632.a, A169581, A169581.P5880074655837136645.f1, A169581.P5880074655837136645.f2, A169581.P5880074655837136645.a, A003989, A003989.P4304575530733865990.a, A025581, A025581.P420762180635059694.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A094193

/-! ## A094193.P14328085112168993087

`A002260(A243808(n+1))`
-/

namespace A094193.P14328085112168993087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A243808 (n + 1)).toNat

end

end A094193.P14328085112168993087

namespace A094193

/-- `A002260(A243808(n+1))` -/
def P14328085112168993087.Spec : Prop :=
  ∀ n, P14328085112168993087.a n = A094193 (n + 1)

end A094193

/-!
# A094194: Hypotenuses x^2 + y^2 of primitive Pythagorean triangles, sorted on values x of the generator pair (x, y), x>y.

The programs for A094194, the canonical program `A094194.P14176884691351997185` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094194 has offset 1).

The definition of A094194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A094194.P14176884691351997185

`A094192(n+1)²+A094193(n+1)²`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A094194

/-- `A094192(n+1)²+A094193(n+1)²` -/
def P14176884691351997185.Spec : Prop :=
  ∀ n, P14176884691351997185.a n = A094194 (n + 1)

theorem P14176884691351997185.correct : P14176884691351997185.Spec := by
  intro n
  simp only [A094194, Nat.add_sub_cancel]

end A094194

/-! ## A094194.P6739426899885889402

`A020652(eq[1, A020653(n+1)%2]+1)²+A094192(n+1)²`
-/

namespace A094194.P6739426899885889402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020653 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2 + A094192 (n + 1) ^ 2

end

end A094194.P6739426899885889402

namespace A094194

/-- `A020652(eq[1, A020653(n+1)%2]+1)²+A094192(n+1)²` -/
def P6739426899885889402.Spec : Prop :=
  ∀ n, P6739426899885889402.a n = A094194 (n + 1)

theorem P6739426899885889402.correct : P6739426899885889402.Spec := by
  intro n
  simp only [A094194, Nat.add_sub_cancel, A094194.P6739426899885889402.f1, A094194.P6739426899885889402.f2, A094194.P6739426899885889402.a, A094194.P14176884691351997185.a, A020652, A020652.P12873781580618070316.a, A020653, A020653.P13896194492571762582.a, A094192, A094192.P18098978962141808339.f1, A094192.P18098978962141808339.f2, A094192.P18098978962141808339.a, A094193, A094193.P6959740835423411185.f1, A094193.P6959740835423411185.f2, A094193.P6959740835423411185.a, A002260, A002260.P769748059679640451.a, A038567, A038567.P2197162168153652474.a, A166527, A166527.P3407768485719253100.f1, A166527.P3407768485719253100.f2, A166527.P3407768485719253100.a, A002262, A002262.P12129691700837801527.a, A077478, A077478.P13653691619814893632.f1, A077478.P13653691619814893632.a, A169581, A169581.P5880074655837136645.f1, A169581.P5880074655837136645.f2, A169581.P5880074655837136645.a, A003989, A003989.P4304575530733865990.a, A025581, A025581.P420762180635059694.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A094194

/-! ## A094194.P15723041158174161030

`filter[A088307(n+1), A354354(#)]`
-/

namespace A094194.P15723041158174161030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A094194.P15723041158174161030

namespace A094194

/-- `filter[A088307(n+1), A354354(#)]` -/
def P15723041158174161030.Spec : Prop :=
  ∀ n, P15723041158174161030.a n = A094194 (n + 1)

end A094194

/-! ## A094194.P7583456782949382208

`filter[A222946(n+2), A014306(#)]`
-/

namespace A094194.P7583456782949382208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A094194.P7583456782949382208

namespace A094194

/-- `filter[A222946(n+2), A014306(#)]` -/
def P7583456782949382208.Spec : Prop :=
  ∀ n, P7583456782949382208.a n = A094194 (n + 1)

end A094194

/-! ## A094194.P7007911809900706393

`filter[A222946(n+2), A014578(#)]`
-/

namespace A094194.P7007911809900706393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A094194.P7007911809900706393

namespace A094194

/-- `filter[A222946(n+2), A014578(#)]` -/
def P7007911809900706393.Spec : Prop :=
  ∀ n, P7007911809900706393.a n = A094194 (n + 1)

end A094194

/-! ## A094194.P11129222621985833537

`filter[A222946(n+2), A098725(#)]`
-/

namespace A094194.P11129222621985833537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A094194.P11129222621985833537

namespace A094194

/-- `filter[A222946(n+2), A098725(#)]` -/
def P11129222621985833537.Spec : Prop :=
  ∀ n, P11129222621985833537.a n = A094194 (n + 1)

end A094194

/-! ## A094194.P16082158385920208042

`filter[A222946(n+2), A115971(#)]`
-/

namespace A094194.P16082158385920208042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A094194.P16082158385920208042

namespace A094194

/-- `filter[A222946(n+2), A115971(#)]` -/
def P16082158385920208042.Spec : Prop :=
  ∀ n, P16082158385920208042.a n = A094194 (n + 1)

end A094194

/-! ## A094194.P10959842225161215226

`filter[A222946(n+2), A166486(#)]`
-/

namespace A094194.P10959842225161215226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A094194.P10959842225161215226

namespace A094194

/-- `filter[A222946(n+2), A166486(#)]` -/
def P10959842225161215226.Spec : Prop :=
  ∀ n, P10959842225161215226.a n = A094194 (n + 1)

end A094194

/-! ## A094194.P15497254161145498106

`filter[A222946(n+2), A168185(#)]`
-/

namespace A094194.P15497254161145498106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A094194.P15497254161145498106

namespace A094194

/-- `filter[A222946(n+2), A168185(#)]` -/
def P15497254161145498106.Spec : Prop :=
  ∀ n, P15497254161145498106.a n = A094194 (n + 1)

end A094194

/-! ## A094194.P13480102593296412928

`A222946(lt[0, A222946(n+2)]+2)`
-/

namespace A094194.P13480102593296412928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A094194.P13480102593296412928

namespace A094194

/-- `A222946(lt[0, A222946(n+2)]+2)` -/
def P13480102593296412928.Spec : Prop :=
  ∀ n, P13480102593296412928.a n = A094194 (n + 1)

end A094194

/-! ## A094194.P2345576213509607846

`A222946(comp[eq[0, A222946(n+2)]]+2)`
-/

namespace A094194.P2345576213509607846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)

end

end A094194.P2345576213509607846

namespace A094194

/-- `A222946(comp[eq[0, A222946(n+2)]]+2)` -/
def P2345576213509607846.Spec : Prop :=
  ∀ n, P2345576213509607846.a n = A094194 (n + 1)

end A094194

/-! ## A094194.P13531603033920828031

`filter[A222946(n+2), A097325(#)]`
-/

namespace A094194.P13531603033920828031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A094194.P13531603033920828031

namespace A094194

/-- `filter[A222946(n+2), A097325(#)]` -/
def P13531603033920828031.Spec : Prop :=
  ∀ n, P13531603033920828031.a n = A094194 (n + 1)

end A094194

/-! ## A094194.P10874170576350299258

`filter[A222946(n+2), A168181(#)]`
-/

namespace A094194.P10874170576350299258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A094194.P10874170576350299258

namespace A094194

/-- `filter[A222946(n+2), A168181(#)]` -/
def P10874170576350299258.Spec : Prop :=
  ∀ n, P10874170576350299258.a n = A094194 (n + 1)

end A094194

/-! ## A094194.P5129008198362662092

`A222946(comp[n-A222946(n+2)]+2)`
-/

namespace A094194.P5129008198362662092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A222946 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2)

end

end A094194.P5129008198362662092

namespace A094194

/-- `A222946(comp[n-A222946(n+2)]+2)` -/
def P5129008198362662092.Spec : Prop :=
  ∀ n, P5129008198362662092.a n = A094194 (n + 1)

end A094194

/-! ## A094194.P8313252737960174703

`filter[A088307(n+1), A000035(#)]`
-/

namespace A094194.P8313252737960174703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A094194.P8313252737960174703

namespace A094194

/-- `filter[A088307(n+1), A000035(#)]` -/
def P8313252737960174703.Spec : Prop :=
  ∀ n, P8313252737960174703.a n = A094194 (n + 1)

end A094194

/-! ## A094194.P15578196594946387430

`filter[A088307(n+1), A096268(#)]`
-/

namespace A094194.P15578196594946387430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096268 (f1 j).toNat = 1) n)

end

end A094194.P15578196594946387430

namespace A094194

/-- `filter[A088307(n+1), A096268(#)]` -/
def P15578196594946387430.Spec : Prop :=
  ∀ n, P15578196594946387430.a n = A094194 (n + 1)

end A094194

/-! ## A094194.P1095051329554252516

`filter[A088307(n+1), A231600(#)]`
-/

namespace A094194.P1095051329554252516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A231600 (f1 j).toNat = 1) n)

end

end A094194.P1095051329554252516

namespace A094194

/-- `filter[A088307(n+1), A231600(#)]` -/
def P1095051329554252516.Spec : Prop :=
  ∀ n, P1095051329554252516.a n = A094194 (n + 1)

end A094194

/-! ## A094194.P10840203359590533208

`filter[A088307(n+1), A259044(#)]`
-/

namespace A094194.P10840203359590533208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A094194.P10840203359590533208

namespace A094194

/-- `filter[A088307(n+1), A259044(#)]` -/
def P10840203359590533208.Spec : Prop :=
  ∀ n, P10840203359590533208.a n = A094194 (n + 1)

end A094194

/-! ## A094194.P9858916497409615988

`filter[A222946(n+2), A000035(#)]`
-/

namespace A094194.P9858916497409615988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A094194.P9858916497409615988

namespace A094194

/-- `filter[A222946(n+2), A000035(#)]` -/
def P9858916497409615988.Spec : Prop :=
  ∀ n, P9858916497409615988.a n = A094194 (n + 1)

end A094194

/-! ## A094194.P2200057117513992662

`filter[A222946(n+2), A011655(#)]`
-/

namespace A094194.P2200057117513992662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A094194.P2200057117513992662

namespace A094194

/-- `filter[A222946(n+2), A011655(#)]` -/
def P2200057117513992662.Spec : Prop :=
  ∀ n, P2200057117513992662.a n = A094194 (n + 1)

end A094194

/-!
# A094195: Expansion of g.f.: (1-4*x)/((1-5*x)*(1-x)^2).

The programs for A094195, the canonical program `A094195.P10967249381415277547` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A094195 has offset 0).

The definition of A094195 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x)/(1-7x+11x^2-5x^3))` (program `A094195.P10967249381415277547`, by `A094195.P10967249381415277547.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A094195.P10967249381415277547

`ogf((1-4x)/(1-7x+11x^2-5x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A094195

/-- `ogf((1-4x)/(1-7x+11x^2-5x^3))` -/
def P10967249381415277547.Spec : Prop :=
  ∀ n, P10967249381415277547.a n = A094195 n

theorem P10967249381415277547.correct : P10967249381415277547.Spec := by
  intro n
  simp only [A094195]

end A094195

/-! ## A094195.P6737605810842354831

`7*a(n-1)-11*a(n-2)+5*a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A094195.P6737605810842354831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10] fun n a =>
  7 * a (n - 1) - 11 * a (n - 2) + 5 * a (n - 3)

end

end A094195.P6737605810842354831

namespace A094195

/-- `7*a(n-1)-11*a(n-2)+5*a(n-3)` -/
def P6737605810842354831.Spec : Prop :=
  ∀ n, P6737605810842354831.a n = A094195 n

end A094195

/-! ## A094195.P15230999700502283771

`(5^(n+1)+12*n+11)/16`
-/

namespace A094195.P15230999700502283771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ (n + 1) + 12 * n + 11 : ℚ) / 16

end

end A094195.P15230999700502283771

namespace A094195

/-- `(5^(n+1)+12*n+11)/16` -/
def P15230999700502283771.Spec : Prop :=
  ∀ n, P15230999700502283771.a n = (A094195 n : ℚ)

end A094195

/-! ## A094195.P2690738335964528737

`∑[5*a(n-1)-3]` with `a(0)=1`
-/

namespace A094195.P2690738335964528737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  5 * f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094195.P2690738335964528737

namespace A094195

/-- `∑[5*a(n-1)-3]` -/
def P2690738335964528737.Spec : Prop :=
  ∀ n, P2690738335964528737.a n = A094195 n

end A094195

/-! ## A094195.P2697635185733038353

`a(n-1)+ceil(5^n/4)` with `a(0)=1`
-/

namespace A094195.P2697635185733038353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ⌈(5 ^ n : ℚ) / 4⌉

end

end A094195.P2697635185733038353

namespace A094195

/-- `a(n-1)+ceil(5^n/4)` -/
def P2697635185733038353.Spec : Prop :=
  ∀ n, P2697635185733038353.a n = A094195 n

end A094195

/-! ## A094195.P10260919924224611805

`5*a(n-1)+1-3*n` with `a(0)=1`
-/

namespace A094195.P10260919924224611805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * a (n - 1) + (1 - (3 * n : ℤ))

end

end A094195.P10260919924224611805

namespace A094195

/-- `5*a(n-1)+1-3*n` -/
def P10260919924224611805.Spec : Prop :=
  ∀ n, P10260919924224611805.a n = A094195 n

end A094195

/-! ## A094195.P9972855622952232323

`1-(3*n-5*a(n-1))` with `a(0)=1`
-/

namespace A094195.P9972855622952232323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((3 * n : ℤ) - 5 * a (n - 1))

end

end A094195.P9972855622952232323

namespace A094195

/-- `1-(3*n-5*a(n-1))` -/
def P9972855622952232323.Spec : Prop :=
  ∀ n, P9972855622952232323.a n = A094195 n

end A094195

/-! ## A094195.P9356459047611039904

`∑[A047850(n)]`
-/

namespace A094195.P9356459047611039904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094195.P9356459047611039904

namespace A094195

/-- `∑[A047850(n)]` -/
def P9356459047611039904.Spec : Prop :=
  ∀ n, P9356459047611039904.a n = A094195 n

end A094195

/-! ## A094195.P820064765243695921

`A185055(n+1)/2+n+1`
-/

namespace A094195.P820064765243695921
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185055 (n + 1) : ℚ) / 2 + (n + 1 : ℚ)

end

end A094195.P820064765243695921

namespace A094195

/-- `A185055(n+1)/2+n+1` -/
def P820064765243695921.Spec : Prop :=
  ∀ n, P820064765243695921.a n = (A094195 n : ℚ)

end A094195

/-! ## A094195.P14328190267654922619

`A268414(n)-a(n-1)+n` with `a(0)=1`
-/

namespace A094195.P14328190267654922619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A268414 n - a (n - 1) + (n : ℤ)

end

end A094195.P14328190267654922619

namespace A094195

/-- `A268414(n)-a(n-1)+n` -/
def P14328190267654922619.Spec : Prop :=
  ∀ n, P14328190267654922619.a n = A094195 n

end A094195

/-! ## A094195.P13436557564014606766

`A000027(n+1)+∑[∑[round(5^(n-1))]]`
-/

namespace A094195.P13436557564014606766
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A094195.P13436557564014606766

namespace A094195

/-- `A000027(n+1)+∑[∑[round(5^(n-1))]]` -/
def P13436557564014606766.Spec : Prop :=
  ∀ n, P13436557564014606766.a n = A094195 n

end A094195

/-! ## A094195.P947287712174803004

`A014827(n+1)-A185055(n+1)-A185055(n+1)`
-/

namespace A094195.P947287712174803004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014827 (n + 1) - A185055 (n + 1) - A185055 (n + 1)

end

end A094195.P947287712174803004

namespace A094195

/-- `A014827(n+1)-A185055(n+1)-A185055(n+1)` -/
def P947287712174803004.Spec : Prop :=
  ∀ n, P947287712174803004.a n = A094195 n

end A094195

/-!
# A094197: First integral ladder to be largest perpendicular-corner-bending for exactly n distinct pairs of integral corridor widths.

The programs for A094197, there is no canonical definition to state claims against.
-/

/-! ## A094197.P3789250318362090530

`A006339(n+1)^3`
-/

namespace A094197.P3789250318362090530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006339 (n + 1) ^ 3

end

end A094197.P3789250318362090530

/-! ## A094197.P10968567854670665516

`sqrt(A018782(2*n+3))^3`
-/

namespace A094197.P10968567854670665516
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A018782 (2 * n + 3) : ℝ) ^ 3

end

end A094197.P10968567854670665516

/-! ## A094197.P15931920137189852430

`sqrt(A340388(2*n+3))*A340388(2*n+3)`
-/

namespace A094197.P15931920137189852430
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340388 (2 * n + 3) : ℝ) * (A340388 (2 * n + 3) : ℝ)

end

end A094197.P15931920137189852430

/-!
# A094198: Number of ways that n boxes with distinct sizes can contain each other under the condition that each box may contain at most three (themselves possibly nested) boxes. Each box is assumed to be large enough to contain any three smaller boxes.

The programs for A094198, there is no canonical definition to state claims against.
-/

/-! ## A094198.P113252976614078697

`∏[n+1]-A198317(∑[∑[n]])`
-/

namespace A094198.P113252976614078697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A198317 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A094198.P113252976614078697

/-! ## A094198.P2298152220163465206

`∏[n+1]-A144557(3*n+1)`
-/

namespace A094198.P2298152220163465206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A144557 (3 * n + 1)

end

end A094198.P2298152220163465206

