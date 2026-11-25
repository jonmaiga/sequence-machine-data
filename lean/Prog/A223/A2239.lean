import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

/-!
# A223900: Li estimate of the number of primes in successive power of two intervals [2^i, 2^(i+1)) for i >= 1.

The programs for A223900, there is no canonical definition to state claims against.
-/

/-! ## A223900.P1733420105292052380

`A223853(n+1)+A036378(n+1)`
-/

namespace A223900.P1733420105292052380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223853 (n + 1) + A036378 (n + 1)

end

end A223900.P1733420105292052380

/-! ## A223900.P13381875060151743791

`A223853(n+1)+Δ[A007053(n+1)]`
-/

namespace A223900.P13381875060151743791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223853 (n + 1) + (f1 (n + 1) - f1 n)

end

end A223900.P13381875060151743791

/-! ## A223900.P16018978121258817151

`A223853(n+1)+A162145(A065475(n+1))`
-/

namespace A223900.P16018978121258817151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223853 (n + 1) + A162145 (A065475 (n + 1)).toNat

end

end A223900.P16018978121258817151

/-! ## A223900.P11333772774657860426

`A223853(n+1)+A085341(Δ[A126646(n)])`
-/

namespace A223900.P11333772774657860426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223853 (n + 1) + A085341 (f1 (n + 1) - f1 n).toNat

end

end A223900.P11333772774657860426

/-! ## A223900.P16704419606812253256

`A223853(n+1)+A085341(A126646(n)+1)`
-/

namespace A223900.P16704419606812253256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223853 (n + 1) + A085341 (A126646 n + 1).toNat

end

end A223900.P16704419606812253256

/-!
# A223905: Number of 4-vexillary permutations in S_n, that is, permutations whose Stanley symmetric function has at most 4 terms or at most 4 Edelman-Greene tableaux.

The programs for A223905, there is no canonical definition to state claims against.
-/

/-! ## A223905.P13671954353852788674

`A000142(n)-A248475(A275423(n))`
-/

namespace A223905.P13671954353852788674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A248475 (A275423 n).toNat

end

end A223905.P13671954353852788674

/-! ## A223905.P13592935098408153890

`round(sqrt(A089727(n!)))`
-/

namespace A223905.P13592935098408153890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A089727 (Nat.factorial n) : ℝ))

end

end A223905.P13592935098408153890

/-! ## A223905.P8522546542978568270

`n!-A186748(n²)`
-/

namespace A223905.P8522546542978568270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A186748 (n ^ 2)

end

end A223905.P8522546542978568270

/-!
# A223906: Poly-Cauchy numbers of the second kind -hat c_3^(-n).

The programs for A223906, the canonical program `A223906.P7995523623625918735` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223906 has offset 1).

The definition of A223906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223906.P7995523623625918735

`2^(n+2)+3^(n+2)+4^(n+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223906

/-- `2^(n+2)+3^(n+2)+4^(n+1)` -/
def P7995523623625918735.Spec : Prop :=
  ∀ n, (P7995523623625918735.a n : ℤ) = A223906 (n + 1)

theorem P7995523623625918735.correct : P7995523623625918735.Spec := by
  intro n
  simp only [A223906, Nat.add_sub_cancel]

end A223906

/-!
# A223907: Poly-Cauchy numbers of the second kind hat c_4^(-n).

The programs for A223907, there is no canonical definition to state claims against.
-/

/-! ## A223907.P7642361191971364638

`A344639(A052905(n+3))`
-/

namespace A223907.P7642361191971364638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344639 (A052905 (n + 3)).toNat

end

end A223907.P7642361191971364638

/-!
# A223909: Numbers for which the maximal run of 1's in their binary representation contains odd number of 1's.

The programs for A223909, the canonical program `A223909.P11390512592361989297` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223909 has offset 1).

The definition of A223909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223909.P3203828438445629637

`lt[-a(and(n, 2*n)), 1]` with `a(0)=1`
-/

namespace A223909.P3203828438445629637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -f1 (Nat.land n (2 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A223909.P3203828438445629637

namespace A223909

/-- `lt[-a(and(n, 2*n)), 1]` -/
def P3203828438445629637.Spec : Prop :=
  ∀ n, (P3203828438445629637.a n : ℤ) = A223909 (n + 1)

end A223909

/-! ## A223909.P11390512592361989297

`eq[1, 1-a(and(n, 2*n))]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223909

/-- `eq[1, 1-a(and(n, 2*n))]` -/
def P11390512592361989297.Spec : Prop :=
  ∀ n, (P11390512592361989297.a n : ℤ) = A223909 (n + 1)

theorem P11390512592361989297.correct : P11390512592361989297.Spec := by
  intro n
  simp only [A223909, Nat.add_sub_cancel]

end A223909

/-! ## A223909.P4312115473788067874

`lt[1, 3-a(and(n, 2*n))]` with `a(0)=1`
-/

namespace A223909.P4312115473788067874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  3 - f2 (Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A223909.P4312115473788067874

namespace A223909

/-- `lt[1, 3-a(and(n, 2*n))]` -/
def P4312115473788067874.Spec : Prop :=
  ∀ n, (P4312115473788067874.a n : ℤ) = A223909 (n + 1)

end A223909

/-! ## A223909.P10384451445378701870

`eq[2, 2/a(and(n, 2*n))]` with `a(0)=1`
-/

namespace A223909.P10384451445378701870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  2 / f2 (Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A223909.P10384451445378701870

namespace A223909

/-- `eq[2, 2/a(and(n, 2*n))]` -/
def P10384451445378701870.Spec : Prop :=
  ∀ n, (P10384451445378701870.a n : ℤ) = A223909 (n + 1)

end A223909

/-! ## A223909.P4027161322374526268

`eq[0, A077267(a(and(2*n, n)))]` with `a(0)=1`
-/

namespace A223909.P4027161322374526268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A077267 (f2 (Nat.land (2 * n) n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223909.P4027161322374526268

namespace A223909

/-- `eq[0, A077267(a(and(2*n, n)))]` -/
def P4027161322374526268.Spec : Prop :=
  ∀ n, (P4027161322374526268.a n : ℤ) = A223909 (n + 1)

end A223909

/-! ## A223909.P14383107358816399858

`lt[A292372(a(and(n, 2*n))+2), 1]` with `a(0)=1`
-/

namespace A223909.P14383107358816399858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A292372 (f1 (Nat.land n (2 * n)) + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A223909.P14383107358816399858

namespace A223909

/-- `lt[A292372(a(and(n, 2*n))+2), 1]` -/
def P14383107358816399858.Spec : Prop :=
  ∀ n, (P14383107358816399858.a n : ℤ) = A223909 (n + 1)

end A223909

/-! ## A223909.P9454826622541332033

`eq[2, A283442(a(and(n, 2*n)))%3]` with `a(0)=1`
-/

namespace A223909.P9454826622541332033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.tmod (A283442 (f2 (Nat.land n (2 * n))).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223909.P9454826622541332033

namespace A223909

/-- `eq[2, A283442(a(and(n, 2*n)))%3]` -/
def P9454826622541332033.Spec : Prop :=
  ∀ n, (P9454826622541332033.a n : ℤ) = A223909 (n + 1)

end A223909

/-! ## A223909.P4592117415932572218

`comp[A223910(n+1)]`
-/

namespace A223909.P4592117415932572218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A223909.P4592117415932572218

namespace A223909

/-- `comp[A223910(n+1)]` -/
def P4592117415932572218.Spec : Prop :=
  ∀ n, (P4592117415932572218.a n : ℤ) = A223909 (n + 1)

end A223909

/-! ## A223909.P11637766373338241616

`eq[1, A008611(a(A213370(n)))]` with `a(0)=2`
-/

namespace A223909.P11637766373338241616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A008611 (f2 (A213370 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223909.P11637766373338241616

namespace A223909

/-- `eq[1, A008611(a(A213370(n)))]` -/
def P11637766373338241616.Spec : Prop :=
  ∀ n, (P11637766373338241616.a n : ℤ) = A223909 (n + 1)

end A223909

/-! ## A223909.P2374354198885490733

`eq[1, A156135(a(A213370(n)))]` with `a(0)=5`
-/

namespace A223909.P2374354198885490733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A156135 (f2 (A213370 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223909.P2374354198885490733

namespace A223909

/-- `eq[1, A156135(a(A213370(n)))]` -/
def P2374354198885490733.Spec : Prop :=
  ∀ n, (P2374354198885490733.a n : ℤ) = A223909 (n + 1)

end A223909

/-! ## A223909.P10670920080006093330

`eq[1, and(1, A038374(n+1))]+1`
-/

namespace A223909.P10670920080006093330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A038374 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A223909.P10670920080006093330

namespace A223909

/-- `eq[1, and(1, A038374(n+1))]+1` -/
def P10670920080006093330.Spec : Prop :=
  ∀ n, (P10670920080006093330.a n : ℤ) = A223909 (n + 1)

end A223909

/-! ## A223909.P10938657288886423485

`lt[1, A143409(a(A048735(n)))]` with `a(0)=1`
-/

namespace A223909.P10938657288886423485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A143409 (f2 (A048735 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A223909.P10938657288886423485

namespace A223909

/-- `lt[1, A143409(a(A048735(n)))]` -/
def P10938657288886423485.Spec : Prop :=
  ∀ n, (P10938657288886423485.a n : ℤ) = A223909 (n + 1)

end A223909

/-!
# A223910: Numbers for which the maximal run of 1's in their binary representation contains even number of 1's.

The programs for A223910, the canonical program `A223910.P4631601168307365980` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223910 has offset 1).

The definition of A223910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223910.P4631601168307365980

`lt[1, -a(and(n, 2*n))]` with `a(0)=2`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223910

/-- `lt[1, -a(and(n, 2*n))]` -/
def P4631601168307365980.Spec : Prop :=
  ∀ n, (P4631601168307365980.a n : ℤ) = A223910 (n + 1)

theorem P4631601168307365980.correct : P4631601168307365980.Spec := by
  intro n
  simp only [A223910, Nat.add_sub_cancel]

end A223910

/-! ## A223910.P10851454332345128977

`eq[0, 1-a(and(2*n, n))]` with `a(0)=0`
-/

namespace A223910.P10851454332345128977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  1 - f2 (Nat.land (2 * n) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223910.P10851454332345128977

namespace A223910

/-- `eq[0, 1-a(and(2*n, n))]` -/
def P10851454332345128977.Spec : Prop :=
  ∀ n, (P10851454332345128977.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P10634694480519497240

`eq[1, 2/a(and(n, 2*n))]` with `a(0)=1`
-/

namespace A223910.P10634694480519497240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  2 / f2 (Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A223910.P10634694480519497240

namespace A223910

/-- `eq[1, 2/a(and(n, 2*n))]` -/
def P10634694480519497240.Spec : Prop :=
  ∀ n, (P10634694480519497240.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P6555723302648160421

`lt[1, 2-a(and(n, 2*n))]` with `a(0)=4`
-/

namespace A223910.P6555723302648160421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  2 - f2 (Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A223910.P6555723302648160421

namespace A223910

/-- `lt[1, 2-a(and(n, 2*n))]` -/
def P6555723302648160421.Spec : Prop :=
  ∀ n, (P6555723302648160421.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P12616381916224869081

`comp[A223909(1+n)]`
-/

namespace A223910.P12616381916224869081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223909 (1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A223910.P12616381916224869081

namespace A223910

/-- `comp[A223909(1+n)]` -/
def P12616381916224869081.Spec : Prop :=
  ∀ n, (P12616381916224869081.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P6022391260825182722

`lt[-2, (-39)^val(A278222(n), 2)]`
-/

namespace A223910.P6022391260825182722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-39) ^ SequenceMachineLib.valuation (A278222 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A223910.P6022391260825182722

namespace A223910

/-- `lt[-2, (-39)^val(A278222(n), 2)]` -/
def P6022391260825182722.Spec : Prop :=
  ∀ n, (P6022391260825182722.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P9624832113175026380

`eq[0, A027656(a(and(n, 2*n)))]` with `a(0)=0`
-/

namespace A223910.P9624832113175026380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A027656 (f2 (Nat.land n (2 * n))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223910.P9624832113175026380

namespace A223910

/-- `eq[0, A027656(a(and(n, 2*n)))]` -/
def P9624832113175026380.Spec : Prop :=
  ∀ n, (P9624832113175026380.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P7264733689583435168

`eq[0, A000007(2*a(and(n, 2*n)))]` with `a(0)=0`
-/

namespace A223910.P7264733689583435168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000007 (2 * f2 (Nat.land n (2 * n))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223910.P7264733689583435168

namespace A223910

/-- `eq[0, A000007(2*a(and(n, 2*n)))]` -/
def P7264733689583435168.Spec : Prop :=
  ∀ n, (P7264733689583435168.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P14455785430405551077

`eq[2, A283442(a(and(n, 2*n)))%3]` with `a(0)=2`
-/

namespace A223910.P14455785430405551077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  Int.tmod (A283442 (f2 (Nat.land n (2 * n))).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223910.P14455785430405551077

namespace A223910

/-- `eq[2, A283442(a(and(n, 2*n)))%3]` -/
def P14455785430405551077.Spec : Prop :=
  ∀ n, (P14455785430405551077.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P9646468659138927234

`lt[A083035(2*a(and(n, 2*n))+1), 1]` with `a(0)=0`
-/

namespace A223910.P9646468659138927234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A083035 (2 * f1 (Nat.land n (2 * n)) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A223910.P9646468659138927234

namespace A223910

/-- `lt[A083035(2*a(and(n, 2*n))+1), 1]` -/
def P9646468659138927234.Spec : Prop :=
  ∀ n, (P9646468659138927234.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P13652763499567612896

`eq[1, A373585(6*a(and(n, 2*n))+1)]` with `a(0)=1`
-/

namespace A223910.P13652763499567612896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A373585 (6 * f2 (Nat.land n (2 * n)) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223910.P13652763499567612896

namespace A223910

/-- `eq[1, A373585(6*a(and(n, 2*n))+1)]` -/
def P13652763499567612896.Spec : Prop :=
  ∀ n, (P13652763499567612896.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P12213312838909488739

`lt[0, A352147(val(A278222(n), 2))]`
-/

namespace A223910.P12213312838909488739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352147 (SequenceMachineLib.valuation (A278222 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A223910.P12213312838909488739

namespace A223910

/-- `lt[0, A352147(val(A278222(n), 2))]` -/
def P12213312838909488739.Spec : Prop :=
  ∀ n, (P12213312838909488739.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P14936416014156421965

`eq[1, A008611(a(A213370(n)))]` with `a(0)=1`
-/

namespace A223910.P14936416014156421965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A008611 (f2 (A213370 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223910.P14936416014156421965

namespace A223910

/-- `eq[1, A008611(a(A213370(n)))]` -/
def P14936416014156421965.Spec : Prop :=
  ∀ n, (P14936416014156421965.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P1787003586291346221

`eq[1, A156135(a(A213370(n)))]` with `a(0)=1`
-/

namespace A223910.P1787003586291346221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A156135 (f2 (A213370 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223910.P1787003586291346221

namespace A223910

/-- `eq[1, A156135(a(A213370(n)))]` -/
def P1787003586291346221.Spec : Prop :=
  ∀ n, (P1787003586291346221.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P7880581871182723880

`lt[A143409(a(A048735(n))), 2]` with `a(0)=1`
-/

namespace A223910.P7880581871182723880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A143409 (f1 (A048735 n).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A223910.P7880581871182723880

namespace A223910

/-- `lt[A143409(a(A048735(n))), 2]` -/
def P7880581871182723880.Spec : Prop :=
  ∀ n, (P7880581871182723880.a n : ℤ) = A223910 (n + 1)

end A223910

/-! ## A223910.P2808269402994878111

`eq[1, A001511(A001511(A278222(n)))]`
-/

namespace A223910.P2808269402994878111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A001511 (A278222 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A223910.P2808269402994878111

namespace A223910

/-- `eq[1, A001511(A001511(A278222(n)))]` -/
def P2808269402994878111.Spec : Prop :=
  ∀ n, (P2808269402994878111.a n : ℤ) = A223910 (n + 1)

end A223910

/-!
# A223911: Number of tiered orders on n nodes (corrected version of A006860).

The programs for A223911, there is no canonical definition to state claims against.
-/

/-! ## A223911.P11214564478105753567

`A222863(n)`
-/

namespace A223911.P11214564478105753567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222863 n

end

end A223911.P11214564478105753567

/-!
# A223912: Number of n X n 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223912, there is no canonical definition to state claims against.
-/

/-! ## A223912.P18209145724201016394

`A223918(∑[4*n]+1)`
-/

namespace A223912.P18209145724201016394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223912.P18209145724201016394

/-! ## A223912.P14428094991500684869

`record[gcd(A037012(n), A223918(n+1))]`
-/

namespace A223912.P14428094991500684869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A223918 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223912.P14428094991500684869

/-!
# A223913: Number of n X 3 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223913, the canonical program `A223913.P314189107394259803` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223913 has offset 1).

The definition of A223913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223913.P314189107394259803

`ogf((22+4x+22x^2-3x^3-3x^4+5x^5-x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223913

/-- `ogf((22+4x+22x^2-3x^3-3x^4+5x^5-x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P314189107394259803.Spec : Prop :=
  ∀ n, P314189107394259803.a n = A223913 (n + 1)

theorem P314189107394259803.correct : P314189107394259803.Spec := by
  intro n
  simp only [A223913, Nat.add_sub_cancel]

end A223913

/-! ## A223913.P8806603207333043430

`A223918(∑[n+3]+1)`
-/

namespace A223913.P8806603207333043430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223913.P8806603207333043430

namespace A223913

/-- `A223918(∑[n+3]+1)` -/
def P8806603207333043430.Spec : Prop :=
  ∀ n, P8806603207333043430.a n = A223913 (n + 1)

end A223913

/-!
# A223914: Number of n X 4 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223914, there is no canonical definition to state claims against.
-/

/-! ## A223914.P724473026365576603

`A223918(A141214(n+1))`
-/

namespace A223914.P724473026365576603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A141214 (n + 1)).toNat

end

end A223914.P724473026365576603

/-!
# A223915: Number of nX5 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223915, there is no canonical definition to state claims against.
-/

/-! ## A223915.P14439479215364300866

`A223918(∑[n+5]+6)`
-/

namespace A223915.P14439479215364300866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A223915.P14439479215364300866

/-!
# A223916: Number of nX6 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223916, there is no canonical definition to state claims against.
-/

/-! ## A223916.P7096901842629706132

`A223918(A052905(n+3))`
-/

namespace A223916.P7096901842629706132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A052905 (n + 3)).toNat

end

end A223916.P7096901842629706132

/-!
# A223917: Number of nX7 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223917, there is no canonical definition to state claims against.
-/

/-! ## A223917.P4803001895541386117

`A223918(A055999(n+4))`
-/

namespace A223917.P4803001895541386117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A055999 (n + 4)).toNat

end

end A223917.P4803001895541386117

/-!
# A223918: T(n,k)=Number of nXk 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223918, there is no canonical definition to state claims against.
-/

/-! ## A223918.P9762335220304581623

`A001281(A224262(n+1)+A224190(n+1))`
-/

namespace A223918.P9762335220304581623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A224262 (n + 1) + A224190 (n + 1)).toNat

end

end A223918.P9762335220304581623

/-! ## A223918.P15916043987009537006

`A004525(A224262(n+1)+A224190(n+1))`
-/

namespace A223918.P15916043987009537006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A224262 (n + 1) + A224190 (n + 1)).toNat

end

end A223918.P15916043987009537006

/-! ## A223918.P10766249009671501211

`A004526(A224262(n+1)+A224190(n+1))`
-/

namespace A223918.P10766249009671501211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A224262 (n + 1) + A224190 (n + 1)).toNat

end

end A223918.P10766249009671501211

/-! ## A223918.P5089679204290655900

`A025480(A224262(n+1)+A224190(n+1))`
-/

namespace A223918.P5089679204290655900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A224262 (n + 1) + A224190 (n + 1)).toNat

end

end A223918.P5089679204290655900

/-! ## A223918.P10975977319881585307

`A026741(A224262(n+1)+A224190(n+1))`
-/

namespace A223918.P10975977319881585307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A224262 (n + 1) + A224190 (n + 1)).toNat

end

end A223918.P10975977319881585307

/-!
# A223919: Number of 2 X n 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223919, there is no canonical definition to state claims against.
-/

/-! ## A223919.P16124348734032437387

`A224190(∑[n+1]+2)`
-/

namespace A223919.P16124348734032437387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224190 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223919.P16124348734032437387

/-! ## A223919.P2661671805431766031

`A223918(∑[n+1]+2)`
-/

namespace A223919.P2661671805431766031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223919.P2661671805431766031

/-! ## A223919.P9187145958492003976

`A224262(∑[n+1]+2)`
-/

namespace A223919.P9187145958492003976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224262 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223919.P9187145958492003976

/-!
# A223920: Number of 3Xn 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223920, there is no canonical definition to state claims against.
-/

/-! ## A223920.P2543784649811177654

`A223918(∑[n+2]+4)`
-/

namespace A223920.P2543784649811177654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223920.P2543784649811177654

/-!
# A223921: Number of 4Xn 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223921, there is no canonical definition to state claims against.
-/

/-! ## A223921.P17772320628299980987

`A223918(A141214(n)+7)`
-/

namespace A223921.P17772320628299980987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A141214 n + 7).toNat

end

end A223921.P17772320628299980987

/-!
# A223922: Number of 5Xn 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223922, there is no canonical definition to state claims against.
-/

/-! ## A223922.P16888456854257812225

`A223918(A167499(n+3))`
-/

namespace A223922.P16888456854257812225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A167499 (n + 3)).toNat

end

end A223922.P16888456854257812225

/-!
# A223923: Number of 6Xn 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223923, there is no canonical definition to state claims against.
-/

/-! ## A223923.P16435824160847166401

`A223918(Δ[A264443(n)]+10)`
-/

namespace A223923.P16435824160847166401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (f1 (n + 1) - f1 n + 10).toNat

end

end A223923.P16435824160847166401

/-!
# A223924: Number of 7Xn 0..2 arrays with rows and antidiagonals unimodal and columns nondecreasing.

The programs for A223924, there is no canonical definition to state claims against.
-/

/-! ## A223924.P6705659711665735179

`A223918(A167499(n+5)+2)`
-/

namespace A223924.P6705659711665735179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223918 (A167499 (n + 5) + 2).toNat

end

end A223924.P6705659711665735179

/-!
# A223925: a(2n+1) = 2*n-1; a(2n)= 4^n.

The programs for A223925, the canonical program `A223925.P4549033672136422911` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223925 has offset 1).

The definition of A223925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A223925.P841915979390430748

`ogf((1+4x-3x^2-8x^3-4x^4+4x^5)/(1-6x^2+9x^4-4x^6))`
-/

namespace A223925.P841915979390430748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, -3, -8, -4, 4] [1, 0, -6, 0, 9, 0, -4] n

end

end A223925.P841915979390430748

namespace A223925

/-- `ogf((1+4x-3x^2-8x^3-4x^4+4x^5)/(1-6x^2+9x^4-4x^6))` -/
def P841915979390430748.Spec : Prop :=
  ∀ n, P841915979390430748.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P4549033672136422911

`6*a(n-2)-9*a(n-4)+4*a(n-6)` with `a(0)=1, a(1)=4, a(2)=3, a(3)=16, a(4)=5, a(5)=64`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223925

/-- `6*a(n-2)-9*a(n-4)+4*a(n-6)` -/
def P4549033672136422911.Spec : Prop :=
  ∀ n, P4549033672136422911.a n = A223925 (n + 1)

theorem P4549033672136422911.correct : P4549033672136422911.Spec := by
  intro n
  simp only [A223925, Nat.add_sub_cancel]

end A223925

/-! ## A223925.P18362343585111161054

`(n+1-(n-1)*n%2)*(2-(n+1)%2)^n`
-/

namespace A223925.P18362343585111161054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - ((n : ℤ) - 1) * ((n % 2 : ℕ) : ℤ)) * (2 - (((n + 1) % 2 : ℕ) : ℤ)) ^ n

end

end A223925.P18362343585111161054

namespace A223925

/-- `(n+1-(n-1)*n%2)*(2-(n+1)%2)^n` -/
def P18362343585111161054.Spec : Prop :=
  ∀ n, P18362343585111161054.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P11700107251461192228

`or(n-1, A280412(n))+2`
-/

namespace A223925.P11700107251461192228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (A280412 n) + 2

end

end A223925.P11700107251461192228

namespace A223925

/-- `or(n-1, A280412(n))+2` -/
def P11700107251461192228.Spec : Prop :=
  ∀ n, P11700107251461192228.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P13668676701290261233

`A084173(n*n%2)+n`
-/

namespace A223925.P13668676701290261233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084173 (n * (n % 2)) + (n : ℤ)

end

end A223925.P13668676701290261233

namespace A223925

/-- `A084173(n*n%2)+n` -/
def P13668676701290261233.Spec : Prop :=
  ∀ n, P13668676701290261233.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P15220633615929884151

`A084173(n*and(1, n))+n`
-/

namespace A223925.P15220633615929884151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084173 (n * Nat.land 1 n) + (n : ℤ)

end

end A223925.P15220633615929884151

namespace A223925

/-- `A084173(n*and(1, n))+n` -/
def P15220633615929884151.Spec : Prop :=
  ∀ n, P15220633615929884151.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P15606044485027835646

`A390532(A014601(n)+2)`
-/

namespace A223925.P15606044485027835646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390532 (A014601 n + 2).toNat

end

end A223925.P15606044485027835646

namespace A223925

/-- `A390532(A014601(n)+2)` -/
def P15606044485027835646.Spec : Prop :=
  ∀ n, P15606044485027835646.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P5349117771217282081

`A066532(n+1)*A141310(n)`
-/

namespace A223925.P5349117771217282081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066532 (n + 1) * A141310 n

end

end A223925.P5349117771217282081

namespace A223925

/-- `A066532(n+1)*A141310(n)` -/
def P5349117771217282081.Spec : Prop :=
  ∀ n, P5349117771217282081.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P14603606839890528944

`C(n, A072345(n))+A072345(n)²`
-/

namespace A223925.P14603606839890528944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (A072345 n).toNat : ℤ) + A072345 n ^ 2

end

end A223925.P14603606839890528944

namespace A223925

/-- `C(n, A072345(n))+A072345(n)²` -/
def P14603606839890528944.Spec : Prop :=
  ∀ n, P14603606839890528944.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P1577219457894369457

`A059222(n+2)*A093178(n+1)`
-/

namespace A223925.P1577219457894369457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059222 (n + 2) * A093178 (n + 1)

end

end A223925.P1577219457894369457

namespace A223925

/-- `A059222(n+2)*A093178(n+1)` -/
def P1577219457894369457.Spec : Prop :=
  ∀ n, P1577219457894369457.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P13387421194900684788

`A141310(n)^(A141310(n+1)-1)`
-/

namespace A223925.P13387421194900684788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141310 n : ℚ) ^ (A141310 (n + 1) - 1 : ℤ)

end

end A223925.P13387421194900684788

namespace A223925

/-- `A141310(n)^(A141310(n+1)-1)` -/
def P13387421194900684788.Spec : Prop :=
  ∀ n, P13387421194900684788.a n = (A223925 (n + 1) : ℚ)

end A223925

/-! ## A223925.P17146346423834050235

`A084173(n*A135528(n+1))+n`
-/

namespace A223925.P17146346423834050235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084173 ((n : ℤ) * A135528 (n + 1)).toNat + (n : ℤ)

end

end A223925.P17146346423834050235

namespace A223925

/-- `A084173(n*A135528(n+1))+n` -/
def P17146346423834050235.Spec : Prop :=
  ∀ n, P17146346423834050235.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P11420320317851271004

`A080924(n+1)+and(n, A080924(n))`
-/

namespace A223925.P11420320317851271004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080924 (n + 1) + Int.land (n : ℤ) (A080924 n)

end

end A223925.P11420320317851271004

namespace A223925

/-- `A080924(n+1)+and(n, A080924(n))` -/
def P11420320317851271004.Spec : Prop :=
  ∀ n, P11420320317851271004.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P3317511351459954453

`A133265(n+1)+A059222(n+2)-2`
-/

namespace A223925.P3317511351459954453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133265 (n + 1) + (A059222 (n + 2) - 2)

end

end A223925.P3317511351459954453

namespace A223925

/-- `A133265(n+1)+A059222(n+2)-2` -/
def P3317511351459954453.Spec : Prop :=
  ∀ n, P3317511351459954453.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P3654690309627587571

`A059222(n+2)+n*A000035(n+1)`
-/

namespace A223925.P3654690309627587571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059222 (n + 2) + (n : ℤ) * A000035 (n + 1)

end

end A223925.P3654690309627587571

namespace A223925

/-- `A059222(n+2)+n*A000035(n+1)` -/
def P3654690309627587571.Spec : Prop :=
  ∀ n, P3654690309627587571.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P6050940578794268341

`and(n-A287199(n+1), A287199(n+1))`
-/

namespace A223925.P6050940578794268341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - A287199 (n + 1)) (A287199 (n + 1))

end

end A223925.P6050940578794268341

namespace A223925

/-- `and(n-A287199(n+1), A287199(n+1))` -/
def P6050940578794268341.Spec : Prop :=
  ∀ n, P6050940578794268341.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P12655578490206756744

`A237420(n)+A000079(A237420(n+1))`
-/

namespace A223925.P12655578490206756744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n + A000079 (A237420 (n + 1)).toNat

end

end A223925.P12655578490206756744

namespace A223925

/-- `A237420(n)+A000079(A237420(n+1))` -/
def P12655578490206756744.Spec : Prop :=
  ∀ n, P12655578490206756744.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P668405992383492599

`A027656(n)+A057979(n+1)*A224783(n+1)`
-/

namespace A223925.P668405992383492599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n + A057979 (n + 1) * A224783 (n + 1)

end

end A223925.P668405992383492599

namespace A223925

/-- `A027656(n)+A057979(n+1)*A224783(n+1)` -/
def P668405992383492599.Spec : Prop :=
  ∀ n, P668405992383492599.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P15876138765316721016

`(A057979(n+1)+A027656(n))*A059222(n+2)`
-/

namespace A223925.P15876138765316721016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057979 (n + 1) + A027656 n) * A059222 (n + 2)

end

end A223925.P15876138765316721016

namespace A223925

/-- `(A057979(n+1)+A027656(n))*A059222(n+2)` -/
def P15876138765316721016.Spec : Prop :=
  ∀ n, P15876138765316721016.a n = A223925 (n + 1)

end A223925

/-! ## A223925.P6345464468957140099

`A115068(A084263(n+1))`
-/

namespace A223925.P6345464468957140099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115068 (A084263 (n + 1)).toNat

end

end A223925.P6345464468957140099

namespace A223925

/-- `A115068(A084263(n+1))` -/
def P6345464468957140099.Spec : Prop :=
  ∀ n, P6345464468957140099.a n = A223925 (n + 1)

end A223925

/-!
# A223926: Number of n X n 0..2 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223926, there is no canonical definition to state claims against.
-/

/-! ## A223926.P5002669244740496181

`A223933(∑[4*n]+1)`
-/

namespace A223926.P5002669244740496181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223926.P5002669244740496181

/-! ## A223926.P11629568733723766675

`record[A223933(Δ[A235355(n)])]`
-/

namespace A223926.P11629568733723766675
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223926.P11629568733723766675

/-! ## A223926.P12714414724246510342

`record[A223933(A330613(n+1))]`
-/

namespace A223926.P12714414724246510342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223926.P12714414724246510342

/-! ## A223926.P1090913539686352542

`record[A003982(n)*A223933(n+1)]`
-/

namespace A223926.P1090913539686352542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223926.P1090913539686352542

/-!
# A223927: Number of n X 2 0..2 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223927, there is no canonical definition to state claims against.
-/

/-! ## A223927.P1635951780145945130

`A224374(∑[n+1]+2)`
-/

namespace A223927.P1635951780145945130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224374 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223927.P1635951780145945130

/-! ## A223927.P14548575741659441351

`A224310(∑[n+1]+2)`
-/

namespace A223927.P14548575741659441351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224310 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223927.P14548575741659441351

/-! ## A223927.P15622766406006215713

`A224057(∑[n+1]+2)`
-/

namespace A223927.P15622766406006215713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223927.P15622766406006215713

/-! ## A223927.P870379935164745015

`record[A224057(A008795(n)+2)]`
-/

namespace A223927.P870379935164745015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A008795 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223927.P870379935164745015

/-! ## A223927.P8641529895879168004

`A223933(∑[n+1]+2)`
-/

namespace A223927.P8641529895879168004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A223927.P8641529895879168004

/-!
# A223928: Number of n X 3 0..2 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223928, there is no canonical definition to state claims against.
-/

/-! ## A223928.P11891826666238366733

`A223933(∑[n+2]+4)`
-/

namespace A223928.P11891826666238366733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223928.P11891826666238366733

/-! ## A223928.P18374668370847206269

`record[A223933(A008795(n)+3)]`
-/

namespace A223928.P18374668370847206269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A008795 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223928.P18374668370847206269

/-!
# A223929: Number of nX4 0..2 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223929, there is no canonical definition to state claims against.
-/

/-! ## A223929.P14710774680093424290

`A223933(∑[n+3]+7)`
-/

namespace A223929.P14710774680093424290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A223929.P14710774680093424290

/-!
# A223930: Number of nX5 0..2 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223930, there is no canonical definition to state claims against.
-/

/-! ## A223930.P16526336394790956206

`A223933(A374005(n+1))`
-/

namespace A223930.P16526336394790956206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A374005 (n + 1)).toNat

end

end A223930.P16526336394790956206

/-!
# A223931: Number of nX6 0..2 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223931, there is no canonical definition to state claims against.
-/

/-! ## A223931.P7567194524947328631

`A223933(A374007(n+1))`
-/

namespace A223931.P7567194524947328631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A374007 (n + 1)).toNat

end

end A223931.P7567194524947328631

/-!
# A223932: Number of n X 7 0..2 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223932, there is no canonical definition to state claims against.
-/

/-! ## A223932.P4864440582519203441

`A223933(A374008(n+1))`
-/

namespace A223932.P4864440582519203441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223933 (A374008 (n + 1)).toNat

end

end A223932.P4864440582519203441

/-!
# A223933: T(n,k)=Number of nXk 0..2 arrays with rows, columns and antidiagonals unimodal and diagonals nondecreasing.

The programs for A223933, there is no canonical definition to state claims against.
-/

/-! ## A223933.P7000602578892864216

`A224057(A084193(∑[n]))`
-/

namespace A223933.P7000602578892864216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224057 (A084193 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A223933.P7000602578892864216

/-!
# A223936: Numbers prime(m), such that (Sum_{i=1..m} prime(i)^3) / m is an integer.

The programs for A223936, there is no canonical definition to state claims against.
-/

/-! ## A223936.P15519834107159051178

`A000040(A122140(n+1))`
-/

namespace A223936.P15519834107159051178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A122140 (n + 1)).toNat

end

end A223936.P15519834107159051178

/-!
# A223937: a(n) is the sum of the cubes of the first A122140(n) primes.

The programs for A223937, there is no canonical definition to state claims against.
-/

/-! ## A223937.P373006656985824862

`A122140(n+1)*A223939(n+1)`
-/

namespace A223937.P373006656985824862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122140 (n + 1) * A223939 (n + 1)

end

end A223937.P373006656985824862

/-!
# A223939: Integer averages of first k primes cubed for some k (a(n) = A223937(n)/A122140(n)).

The programs for A223939, there is no canonical definition to state claims against.
-/

/-! ## A223939.P17596600824139935024

`A223937(n+1)/A122140(n+1)`
-/

namespace A223939.P17596600824139935024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223937 (n + 1) : ℚ) / (A122140 (n + 1) : ℚ)

end

end A223939.P17596600824139935024

/-!
# A223940: Sums of antidiagonals of A223968.

The programs for A223940, the canonical program `A223940.P712283430766083117` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223940 has offset 0).

The definition of A223940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A223940.P14031860698976811516

`ogf((1+x-2x^2-x^3+x^4)/(1-x-4x^2+3x^3+3x^4-x^5))`
-/

namespace A223940.P14031860698976811516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -2, -1, 1] [1, -1, -4, 3, 3, -1] n

end

end A223940.P14031860698976811516

namespace A223940

/-- `ogf((1+x-2x^2-x^3+x^4)/(1-x-4x^2+3x^3+3x^4-x^5))` -/
def P14031860698976811516.Spec : Prop :=
  ∀ n, P14031860698976811516.a n = A223940 n

end A223940

/-! ## A223940.P712283430766083117

`a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223940

/-- `a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)+a(n-5)` -/
def P712283430766083117.Spec : Prop :=
  ∀ n, P712283430766083117.a n = A223940 n

theorem P712283430766083117.correct : P712283430766083117.Spec := by
  intro n
  simp only [A223940]

end A223940

/-! ## A223940.P4357124323351926229

`2*a(n-1)-A231182(n)` with `a(0)=1`
-/

namespace A223940.P4357124323351926229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A231182 n

end

end A223940.P4357124323351926229

namespace A223940

/-- `2*a(n-1)-A231182(n)` -/
def P4357124323351926229.Spec : Prop :=
  ∀ n, P4357124323351926229.a n = A223940 n

end A223940

/-! ## A223940.P17814393394703405263

`a(n-1)+a(A023443(n))-A231182(n)` with `a(0)=1`
-/

namespace A223940.P17814393394703405263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (A023443 n).toNat - A231182 n)

end

end A223940.P17814393394703405263

namespace A223940

/-- `a(n-1)+a(A023443(n))-A231182(n)` -/
def P17814393394703405263.Spec : Prop :=
  ∀ n, P17814393394703405263.a n = A223940 n

end A223940

/-! ## A223940.P3224878250024049711

`a(n-1)+a(n-1)-A231182(A028310(n))` with `a(0)=1`
-/

namespace A223940.P3224878250024049711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A231182 (A028310 n).toNat)

end

end A223940.P3224878250024049711

namespace A223940

/-- `a(n-1)+a(n-1)-A231182(A028310(n))` -/
def P3224878250024049711.Spec : Prop :=
  ∀ n, P3224878250024049711.a n = A223940 n

end A223940

/-! ## A223940.P9920820533282549310

`(A336675(n+4)+A336675(n))%A336675(n+2)`
-/

namespace A223940.P9920820533282549310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A336675 (n + 4) + A336675 n) (A336675 (n + 2))

end

end A223940.P9920820533282549310

namespace A223940

/-- `(A336675(n+4)+A336675(n))%A336675(n+2)` -/
def P9920820533282549310.Spec : Prop :=
  ∀ n, P9920820533282549310.a n = A223940 n

end A223940

/-!
# A223942: Least prime q such that (x^{p_n}-1)/(x-1) is irreducible modulo q, where p_n is the n-th prime.

The programs for A223942, there is no canonical definition to state claims against.
-/

/-! ## A223942.P6349467493178271423

`A002233(abs(1-n)+2)`
-/

namespace A223942.P6349467493178271423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (|1 - (n : ℤ)| + 2).toNat

end

end A223942.P6349467493178271423

/-! ## A223942.P1491316512627501639

`A002233(n+1)%(a(floor(n/2))+n)` with `a(0)=2`
-/

namespace A223942.P1491316512627501639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.tmod (A002233 (n + 1)) (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ))

end

end A223942.P1491316512627501639

/-! ## A223942.P2220397587621995609

`A007918(A002233(1+n))`
-/

namespace A223942.P2220397587621995609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A002233 (1 + n)).toNat

end

end A223942.P2220397587621995609

/-! ## A223942.P2997105276476245300

`A122028(1+A028310(n))`
-/

namespace A223942.P2997105276476245300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122028 (1 + A028310 n).toNat

end

end A223942.P2997105276476245300

/-! ## A223942.P2265841723032970995

`A229708(A006005(n+1))`
-/

namespace A223942.P2265841723032970995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229708 (A006005 (n + 1)).toNat

end

end A223942.P2265841723032970995

/-! ## A223942.P2652630747579694045

`A002233(n+1)+A000007(n)`
-/

namespace A223942.P2652630747579694045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (n + 1) + A000007 n

end

end A223942.P2652630747579694045

/-! ## A223942.P10572307703472580363

`A122028(n+1)-A000007(n)`
-/

namespace A223942.P10572307703472580363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122028 (n + 1) - A000007 n

end

end A223942.P10572307703472580363

/-! ## A223942.P10523404649037040154

`A002233(n+1)*A054977(n)`
-/

namespace A223942.P10523404649037040154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002233 (n + 1) * A054977 n

end

end A223942.P10523404649037040154

/-! ## A223942.P12515167247390333903

`min(A000040(n+1), A122028(n+1))`
-/

namespace A223942.P12515167247390333903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A000040 (n + 1)) (A122028 (n + 1))

end

end A223942.P12515167247390333903

/-! ## A223942.P6704133809051977618

`and(A088041(n+1), A122028(n+1))`
-/

namespace A223942.P6704133809051977618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088041 (n + 1)) (A122028 (n + 1))

end

end A223942.P6704133809051977618

/-! ## A223942.P1533304634299966664

`and(A118883(n+1), A122028(n+1))`
-/

namespace A223942.P1533304634299966664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118883 (n + 1)) (A122028 (n + 1))

end

end A223942.P1533304634299966664

/-! ## A223942.P91222908640695961

`and(A122028(n+1), A378139(n+1))`
-/

namespace A223942.P91222908640695961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122028 (n + 1)) (A378139 (n + 1))

end

end A223942.P91222908640695961

/-! ## A223942.P15788342086582492900

`and(A087522(n), A122028(n+1))`
-/

namespace A223942.P15788342086582492900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087522 n) (A122028 (n + 1))

end

end A223942.P15788342086582492900

/-! ## A223942.P13722335252216952753

`and(A122028(n+1), A127582(n))`
-/

namespace A223942.P13722335252216952753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122028 (n + 1)) (A127582 n)

end

end A223942.P13722335252216952753

/-! ## A223942.P11566295931318557348

`and(A122028(n+1), A130567(n+1))`
-/

namespace A223942.P11566295931318557348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122028 (n + 1)) (A130567 (n + 1))

end

end A223942.P11566295931318557348

/-! ## A223942.P6275850869146018901

`and(A122028(n+1), A198693(n))`
-/

namespace A223942.P6275850869146018901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122028 (n + 1)) (A198693 n)

end

end A223942.P6275850869146018901

/-! ## A223942.P7142507395279602577

`and(A122028(n+1), A198694(n))`
-/

namespace A223942.P7142507395279602577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122028 (n + 1)) (A198694 n)

end

end A223942.P7142507395279602577

/-! ## A223942.P1725594553906790623

`and(A122028(n+1), A198695(n))`
-/

namespace A223942.P1725594553906790623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122028 (n + 1)) (A198695 n)

end

end A223942.P1725594553906790623

/-!
# A223943: Number of n X n 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223943, there is no canonical definition to state claims against.
-/

/-! ## A223943.P16609610053663260090

`A223949(1+∑[4*n])`
-/

namespace A223943.P16609610053663260090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A223943.P16609610053663260090

/-! ## A223943.P8395944875751982803

`record[A223949(Δ[A235355(n)])]`
-/

namespace A223943.P8395944875751982803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223943.P8395944875751982803

/-! ## A223943.P10407957080768122328

`record[A003982(n)*A223949(n+1)]`
-/

namespace A223943.P10407957080768122328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223943.P10407957080768122328

/-! ## A223943.P7430494062813890122

`record[root(A223949(n+1), A143182(n))]`
-/

namespace A223943.P7430494062813890122
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223949 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223943.P7430494062813890122

/-! ## A223943.P5623592315766868278

`record[gcd(A114327(n), A223949(n+1))]`
-/

namespace A223943.P5623592315766868278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A223949 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223943.P5623592315766868278

/-!
# A223944: Number of n X 3 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223944, the canonical program `A223944.P16843128057507105975` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223944 has offset 1).

The definition of A223944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223944.P17335370951716093678

`ogf((4-2x^2-3x^3-8x^4)/(1-4x+2x^2+x^3-5x^4+8x^5))`
-/

namespace A223944.P17335370951716093678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, -2, -3, -8] [1, -4, 2, 1, -5, 8] n

end

end A223944.P17335370951716093678

namespace A223944

/-- `ogf((4-2x^2-3x^3-8x^4)/(1-4x+2x^2+x^3-5x^4+8x^5))` -/
def P17335370951716093678.Spec : Prop :=
  ∀ n, P17335370951716093678.a n = A223944 (n + 1)

end A223944

/-! ## A223944.P16843128057507105975

`4*a(n-1)-2*a(n-2)-a(n-3)+5*a(n-4)-8*a(n-5)` with `a(0)=4, a(1)=16, a(2)=54, a(3)=177, a(4)=596`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223944

/-- `4*a(n-1)-2*a(n-2)-a(n-3)+5*a(n-4)-8*a(n-5)` -/
def P16843128057507105975.Spec : Prop :=
  ∀ n, P16843128057507105975.a n = A223944 (n + 1)

theorem P16843128057507105975.correct : P16843128057507105975.Spec := by
  intro n
  simp only [A223944, Nat.add_sub_cancel]

end A223944

/-! ## A223944.P16210411875413141970

`A223949(∑[n+3]+1)`
-/

namespace A223944.P16210411875413141970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223944.P16210411875413141970

namespace A223944

/-- `A223949(∑[n+3]+1)` -/
def P16210411875413141970.Spec : Prop :=
  ∀ n, P16210411875413141970.a n = A223944 (n + 1)

end A223944

/-! ## A223944.P18257397940347688296

`record[A223949(A347633(n+4))]`
-/

namespace A223944.P18257397940347688296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A347633 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223944.P18257397940347688296

namespace A223944

/-- `record[A223949(A347633(n+4))]` -/
def P18257397940347688296.Spec : Prop :=
  ∀ n, P18257397940347688296.a n = A223944 (n + 1)

end A223944

/-!
# A223945: Number of n X 4 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223945, the canonical program `A223945.P16046442265263553827` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223945 has offset 1).

The definition of A223945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223945.P16046442265263553827

`ogf((5-4x^2-24x^3-48x^4-33x^5-19x^6+45x^7+16x^8+8x^9)/(1-5x+5x^2+2x^3-7x^4+2x^5+4x^6+61x^7-29x^8-8x^9-8x^10))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223945

/-- `ogf((5-4x^2-24x^3-48x^4-33x^5-19x^6+45x^7+16x^8+8x^9)/(1-5x+5x^2+2x^3-7x^4+2x^5+4x^6+61x^7-29x^8-8x^9-8x^10))` -/
def P16046442265263553827.Spec : Prop :=
  ∀ n, P16046442265263553827.a n = A223945 (n + 1)

theorem P16046442265263553827.correct : P16046442265263553827.Spec := by
  intro n
  simp only [A223945, Nat.add_sub_cancel]

end A223945

/-! ## A223945.P1101050163731073258

`A223949(A141214(n+1))`
-/

namespace A223945.P1101050163731073258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A141214 (n + 1)).toNat

end

end A223945.P1101050163731073258

namespace A223945

/-- `A223949(A141214(n+1))` -/
def P1101050163731073258.Spec : Prop :=
  ∀ n, P1101050163731073258.a n = A223945 (n + 1)

end A223945

/-!
# A223946: Number of nX5 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223946, there is no canonical definition to state claims against.
-/

/-! ## A223946.P17480757735884312638

`A223949(∑[n+5]+6)`
-/

namespace A223946.P17480757735884312638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A223946.P17480757735884312638

/-!
# A223947: Number of nX6 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223947, there is no canonical definition to state claims against.
-/

/-! ## A223947.P16549352509579629583

`A223949(A052905(n+3))`
-/

namespace A223947.P16549352509579629583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A052905 (n + 3)).toNat

end

end A223947.P16549352509579629583

/-!
# A223948: Number of n X 7 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223948, there is no canonical definition to state claims against.
-/

/-! ## A223948.P3850500924567137553

`A223949(A055999(n+4))`
-/

namespace A223948.P3850500924567137553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A055999 (n + 4)).toNat

end

end A223948.P3850500924567137553

/-!
# A223949: T(n,k)=Number of nXk 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223949, there is no canonical definition to state claims against.
-/

/-! ## A223949.P1881422153643701734

`A224133(n+1)+A088194(A294950(n))`
-/

namespace A223949.P1881422153643701734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (n + 1) + A088194 (A294950 n).toNat

end

end A223949.P1881422153643701734

/-! ## A223949.P12447765252740754591

`A224133(n+1)-A184946(A099927(n))`
-/

namespace A223949.P12447765252740754591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224133 (n + 1) - A184946 (A099927 n).toNat

end

end A223949.P12447765252740754591

/-! ## A223949.P3779071122782800476

`A250361(n+1)-A010893(A051128(n+1))`
-/

namespace A223949.P3779071122782800476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250361 (n + 1) - A010893 ((A051128 (n + 1)).toNat + 13)

end

end A223949.P3779071122782800476

/-! ## A223949.P6195958410416038429

`A051128(A014132(n+1))-A010893(A051128(n+1))`
-/

namespace A223949.P6195958410416038429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051128 (A014132 (n + 1)).toNat - A010893 ((A051128 (n + 1)).toNat + 13)

end

end A223949.P6195958410416038429

/-! ## A223949.P17521273442402172047

`A341392(A204985(n+1))-A010893(A051128(n+1))`
-/

namespace A223949.P17521273442402172047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341392 (A204985 (n + 1)).toNat - A010893 ((A051128 (n + 1)).toNat + 13)

end

end A223949.P17521273442402172047

/-!
# A223950: Number of 3 X n 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223950, the canonical program `A223950.P6396256672067392230` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223950 has offset 1).

The definition of A223950 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223950.P6778969976654908744

`ogf((8-5x-6x^2+10x^3-3x^4)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A223950.P6778969976654908744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -5, -6, 10, -3] [1, -4, 6, -4, 1] n

end

end A223950.P6778969976654908744

namespace A223950

/-- `ogf((8-5x-6x^2+10x^3-3x^4)/(1-4x+6x^2-4x^3+x^4))` -/
def P6778969976654908744.Spec : Prop :=
  ∀ n, P6778969976654908744.a n = A223950 (n + 1)

end A223950

/-! ## A223950.P6396256672067392230

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=8, a(1)=27, a(2)=54, a(3)=96, a(4)=157`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223950

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P6396256672067392230.Spec : Prop :=
  ∀ n, P6396256672067392230.a n = A223950 (n + 1)

theorem P6396256672067392230.correct : P6396256672067392230.Spec := by
  intro n
  simp only [A223950, Nat.add_sub_cancel]

end A223950

/-! ## A223950.P9802605189810927706

`4*n+5+A062545(n)+A016061(n+1)`
-/

namespace A223950.P9802605189810927706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 5 : ℤ) + (A062545 n + A016061 (n + 1))

end

end A223950.P9802605189810927706

namespace A223950

/-- `4*n+5+A062545(n)+A016061(n+1)` -/
def P9802605189810927706.Spec : Prop :=
  ∀ n, P9802605189810927706.a n = A223950 (n + 1)

end A223950

/-! ## A223950.P3691015243882300688

`A089389(2*(n+1))+∑[A167499(2*n+1)]`
-/

namespace A223950.P3691015243882300688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089389 (2 * (n + 1)) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223950.P3691015243882300688

namespace A223950

/-- `A089389(2*(n+1))+∑[A167499(2*n+1)]` -/
def P3691015243882300688.Spec : Prop :=
  ∀ n, P3691015243882300688.a n = A223950 (n + 1)

end A223950

/-! ## A223950.P4809956489809247682

`A016789(A103517(n))+A016061(n+1)`
-/

namespace A223950.P4809956489809247682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A103517 n).toNat + A016061 (n + 1)

end

end A223950.P4809956489809247682

namespace A223950

/-- `A016789(A103517(n))+A016061(n+1)` -/
def P4809956489809247682.Spec : Prop :=
  ∀ n, P4809956489809247682.a n = A223950 (n + 1)

end A223950

/-! ## A223950.P15671720824273011846

`A016789(Δ[A028310(n)²]+1)+A016061(n+1)`
-/

namespace A223950.P15671720824273011846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (f1 (n + 1) - f1 n + 1).toNat + A016061 (n + 1)

end

end A223950.P15671720824273011846

namespace A223950

/-- `A016789(Δ[A028310(n)²]+1)+A016061(n+1)` -/
def P15671720824273011846.Spec : Prop :=
  ∀ n, P15671720824273011846.a n = A223950 (n + 1)

end A223950

/-! ## A223950.P3761886934835362880

`A173196(2*n+3)+A016789(A103517(n))`
-/

namespace A223950.P3761886934835362880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (2 * n + 3) + A016789 (A103517 n).toNat

end

end A223950.P3761886934835362880

namespace A223950

/-- `A173196(2*n+3)+A016789(A103517(n))` -/
def P3761886934835362880.Spec : Prop :=
  ∀ n, P3761886934835362880.a n = A223950 (n + 1)

end A223950

/-! ## A223950.P8915517434295057889

`A016789(Δ[A028310(n²)]+1)+A016061(n+1)`
-/

namespace A223950.P8915517434295057889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (f1 (n + 1) - f1 n + 1).toNat + A016061 (n + 1)

end

end A223950.P8915517434295057889

namespace A223950

/-- `A016789(Δ[A028310(n²)]+1)+A016061(n+1)` -/
def P8915517434295057889.Spec : Prop :=
  ∀ n, P8915517434295057889.a n = A223950 (n + 1)

end A223950

/-!
# A223951: Number of 4 X n 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223951, the canonical program `A223951.P14440980232408271576` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223951 has offset 1).

The definition of A223951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223951.P14440980232408271576

`ogf((16+x-68x^2+86x^3-7x^4-33x^5+13x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A223951

/-- `ogf((16+x-68x^2+86x^3-7x^4-33x^5+13x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P14440980232408271576.Spec : Prop :=
  ∀ n, P14440980232408271576.a n = A223951 (n + 1)

theorem P14440980232408271576.correct : P14440980232408271576.Spec := by
  intro n
  simp only [A223951, Nat.add_sub_cancel]

end A223951

/-! ## A223951.P15912606769244815834

`A223949(A141214(n)+7)`
-/

namespace A223951.P15912606769244815834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A141214 n + 7).toNat

end

end A223951.P15912606769244815834

namespace A223951

/-- `A223949(A141214(n)+7)` -/
def P15912606769244815834.Spec : Prop :=
  ∀ n, P15912606769244815834.a n = A223951 (n + 1)

end A223951

/-!
# A223952: Number of 5 X n 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223952, there is no canonical definition to state claims against.
-/

/-! ## A223952.P7847906899794130968

`A223949(A167499(n+3))`
-/

namespace A223952.P7847906899794130968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A167499 (n + 3)).toNat

end

end A223952.P7847906899794130968

/-!
# A223953: Number of 6 X n 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223953, there is no canonical definition to state claims against.
-/

/-! ## A223953.P10326061403293659416

`A223949(A167499(n+4)+1)`
-/

namespace A223953.P10326061403293659416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A167499 (n + 4) + 1).toNat

end

end A223953.P10326061403293659416

/-!
# A223954: Number of 7 X n 0..1 arrays with diagonals and antidiagonals unimodal and rows nondecreasing.

The programs for A223954, there is no canonical definition to state claims against.
-/

/-! ## A223954.P280690998778593789

`A223949(A167487(n+5))`
-/

namespace A223954.P280690998778593789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223949 (A167487 (n + 5)).toNat

end

end A223954.P280690998778593789

/-!
# A223955: Number of n X n 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223955, there is no canonical definition to state claims against.
-/

/-! ## A223955.P5601167221654173552

`A223961(∑[4*n]+1)`
-/

namespace A223955.P5601167221654173552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223955.P5601167221654173552

/-! ## A223955.P3416565044320412712

`record[root(A223961(n+1), A143182(n))]`
-/

namespace A223955.P3416565044320412712
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223961 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223955.P3416565044320412712

/-! ## A223955.P2842909508391189481

`record[gcd(A003987(n), A223961(n+1))]`
-/

namespace A223955.P2842909508391189481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A223961 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223955.P2842909508391189481

/-! ## A223955.P9989712159771326365

`record[A203994(n+1)*A223961(n+1)]`
-/

namespace A223955.P9989712159771326365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A223961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223955.P9989712159771326365

/-!
# A223956: Number of nX3 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223956, there is no canonical definition to state claims against.
-/

/-! ## A223956.P5933900032545188951

`A223961(∑[n+3]+1)`
-/

namespace A223956.P5933900032545188951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223956.P5933900032545188951

/-!
# A223957: Number of nX4 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223957, there is no canonical definition to state claims against.
-/

/-! ## A223957.P14021014817425975971

`A223961(A141214(n+1))`
-/

namespace A223957.P14021014817425975971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A141214 (n + 1)).toNat

end

end A223957.P14021014817425975971

/-!
# A223958: Number of nX5 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223958, there is no canonical definition to state claims against.
-/

/-! ## A223958.P5885026762490410093

`A223961(eq[2, A092921(n)])`
-/

namespace A223958.P5885026762490410093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223958.P5885026762490410093

/-!
# A223959: Number of nX6 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223959, there is no canonical definition to state claims against.
-/

/-! ## A223959.P6689556598354930676

`A223961(A052905(n+3))`
-/

namespace A223959.P6689556598354930676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A052905 (n + 3)).toNat

end

end A223959.P6689556598354930676

/-!
# A223960: Number of nX7 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223960, there is no canonical definition to state claims against.
-/

/-! ## A223960.P12670068049753046570

`A223961(A055999(n+4))`
-/

namespace A223960.P12670068049753046570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A055999 (n + 4)).toNat

end

end A223960.P12670068049753046570

/-!
# A223962: Number of 2 X n 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223962, the canonical program `A223962.P4845765778239203008` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A223962 has offset 1).

The definition of A223962 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A223962.P6532039375602192521

`ogf((16-27x+36x^2-35x^3+21x^4-7x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A223962.P6532039375602192521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, -27, 36, -35, 21, -7, 1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A223962.P6532039375602192521

namespace A223962

/-- `ogf((16-27x+36x^2-35x^3+21x^4-7x^5+x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P6532039375602192521.Spec : Prop :=
  ∀ n, P6532039375602192521.a n = A223962 (n + 1)

end A223962

/-! ## A223962.P4845765778239203008

`A051880(n+1)+A006542(n+4)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A223962

/-- `A051880(n+1)+A006542(n+4)` -/
def P4845765778239203008.Spec : Prop :=
  ∀ n, P4845765778239203008.a n = A223962 (n + 1)

theorem P4845765778239203008.correct : P4845765778239203008.Spec := by
  intro n
  simp only [A223962, Nat.add_sub_cancel]

end A223962

/-! ## A223962.P14255529490726339596

`A006542(n+5)+(n+6)*∑[∑[∑[n+1]]]`
-/

namespace A223962.P14255529490726339596
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006542 (n + 5) + (((n + 6) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A223962.P14255529490726339596

namespace A223962

/-- `A006542(n+5)+(n+6)*∑[∑[∑[n+1]]]` -/
def P14255529490726339596.Spec : Prop :=
  ∀ n, P14255529490726339596.a n = A223962 (n + 1)

end A223962

/-! ## A223962.P4102874619881772623

`A264750(n+5)+Δ[A050484(n)]`
-/

namespace A223962.P4102874619881772623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264750 (n + 5) + (f1 (n + 1) - f1 n)

end

end A223962.P4102874619881772623

namespace A223962

/-- `A264750(n+5)+Δ[A050484(n)]` -/
def P4102874619881772623.Spec : Prop :=
  ∀ n, P4102874619881772623.a n = A223962 (n + 1)

end A223962

/-! ## A223962.P907928688537373227

`A000292(n+2)²-A240440(n+2)`
-/

namespace A223962.P907928688537373227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 2) ^ 2 - A240440 (n + 2)

end

end A223962.P907928688537373227

namespace A223962

/-- `A000292(n+2)²-A240440(n+2)` -/
def P907928688537373227.Spec : Prop :=
  ∀ n, P907928688537373227.a n = A223962 (n + 1)

end A223962

/-! ## A223962.P8123850386975015057

`A225007(n+1)+∑[A027800(n)-A051740(n)]`
-/

namespace A223962.P8123850386975015057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027800 n - A051740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225007 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A223962.P8123850386975015057

namespace A223962

/-- `A225007(n+1)+∑[A027800(n)-A051740(n)]` -/
def P8123850386975015057.Spec : Prop :=
  ∀ n, P8123850386975015057.a n = A223962 (n + 1)

end A223962

/-!
# A223963: Number of 3 X n 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223963, there is no canonical definition to state claims against.
-/

/-! ## A223963.P2138754998024154878

`A223961(∑[n+2]+4)`
-/

namespace A223963.P2138754998024154878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223963.P2138754998024154878

/-!
# A223964: Number of 4Xn 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223964, there is no canonical definition to state claims against.
-/

/-! ## A223964.P2647780460583208222

`A223961(A141214(n)+7)`
-/

namespace A223964.P2647780460583208222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A141214 n + 7).toNat

end

end A223964.P2647780460583208222

/-!
# A223965: Number of 5 X n 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223965, there is no canonical definition to state claims against.
-/

/-! ## A223965.P12301478664142916989

`A223961(A155212(n)+13)`
-/

namespace A223965.P12301478664142916989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A155212 n + 13).toNat

end

end A223965.P12301478664142916989

/-!
# A223966: Number of 6Xn 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223966, there is no canonical definition to state claims against.
-/

/-! ## A223966.P8033608643404068906

`A223961(A056115(n)+21)`
-/

namespace A223966.P8033608643404068906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A056115 n + 21).toNat

end

end A223966.P8033608643404068906

/-!
# A223967: Number of 7Xn 0..3 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223967, there is no canonical definition to state claims against.
-/

/-! ## A223967.P9302040427690602449

`A223961(A167487(n+5))`
-/

namespace A223967.P9302040427690602449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223961 (A167487 (n + 5)).toNat

end

end A223967.P9302040427690602449

/-!
# A223968: Square array T, read by antidiagonals: T(n,k) = 0 if n-k >= 5 or if k-n >= 6, T(4,0) = T(3,0) = T(2,0) = T(1,0) = T(0,0) = T(0,1) = T(0,2) = T(0,3) = T(0,4) = T(0,5) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A223968, there is no canonical definition to state claims against.
-/

/-! ## A223968.P5983144245655252873

`A007318(n)-A198317(A185317(n))`
-/

namespace A223968.P5983144245655252873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A198317 (A185317 n).toNat

end

end A223968.P5983144245655252873

/-! ## A223968.P9350104333476950918

`A065033(A132046(n))-A198317(A185317(n))`
-/

namespace A223968.P9350104333476950918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A132046 n).toNat - A198317 (A185317 n).toNat

end

end A223968.P9350104333476950918

/-! ## A223968.P8029974645840294528

`A007318(n)-p?[A278657(n)²+1]%2`
-/

namespace A223968.P8029974645840294528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 2

end

end A223968.P8029974645840294528

/-! ## A223968.P8010789073328652519

`A007318(n)-A330963(A325720(n+1))`
-/

namespace A223968.P8010789073328652519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A330963 (A325720 (n + 1)).toNat

end

end A223968.P8010789073328652519

/-! ## A223968.P3034538132683910131

`A007318(n)-A316863(A316836(2*(n+1)))`
-/

namespace A223968.P3034538132683910131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A316863 (A316836 (2 * (n + 1))).toNat

end

end A223968.P3034538132683910131

/-!
# A223969: Number of n X n 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223969, there is no canonical definition to state claims against.
-/

/-! ## A223969.P14837448935936130355

`A223975(∑[4*n]+1)`
-/

namespace A223969.P14837448935936130355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223969.P14837448935936130355

/-! ## A223969.P6986446452038237950

`record[A223975(A330613(n+1))]`
-/

namespace A223969.P6986446452038237950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223969.P6986446452038237950

/-! ## A223969.P8620606641415555706

`record[A003982(n)*A223975(n+1)]`
-/

namespace A223969.P8620606641415555706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223969.P8620606641415555706

/-! ## A223969.P14228672924913481943

`record[gcd(A037012(n), A223975(n+1))]`
-/

namespace A223969.P14228672924913481943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A223975 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223969.P14228672924913481943

/-! ## A223969.P80854658894106685

`record[root(A223975(n+1), A253146(n+1))]`
-/

namespace A223969.P80854658894106685
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223975 (n + 1) : ℝ) ^ (1 / (A253146 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223969.P80854658894106685

/-!
# A223970: Number of n X 3 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223970, there is no canonical definition to state claims against.
-/

/-! ## A223970.P829775741246740741

`A223975(∑[n+3]+1)`
-/

namespace A223970.P829775741246740741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223970.P829775741246740741

/-!
# A223971: Number of nX4 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223971, there is no canonical definition to state claims against.
-/

/-! ## A223971.P8322312431873883940

`A223975(A141214(n+1))`
-/

namespace A223971.P8322312431873883940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A141214 (n + 1)).toNat

end

end A223971.P8322312431873883940

/-!
# A223972: Number of nX5 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223972, there is no canonical definition to state claims against.
-/

/-! ## A223972.P2403235761687232272

`A223975(Δ[A264443(n)])`
-/

namespace A223972.P2403235761687232272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (f1 (n + 1) - f1 n).toNat

end

end A223972.P2403235761687232272

/-!
# A223973: Number of nX6 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223973, there is no canonical definition to state claims against.
-/

/-! ## A223973.P15538558805708247507

`A223975(eq[3, A219347(n)])`
-/

namespace A223973.P15538558805708247507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223973.P15538558805708247507

/-!
# A223974: Number of nX7 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223974, there is no canonical definition to state claims against.
-/

/-! ## A223974.P12111428239211221029

`A223975(A055999(n+4))`
-/

namespace A223974.P12111428239211221029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A055999 (n + 4)).toNat

end

end A223974.P12111428239211221029

/-!
# A223976: Number of 3Xn 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223976, there is no canonical definition to state claims against.
-/

/-! ## A223976.P12302353448740199388

`A223975(∑[n+2]+4)`
-/

namespace A223976.P12302353448740199388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223976.P12302353448740199388

/-!
# A223977: Number of 4Xn 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223977, there is no canonical definition to state claims against.
-/

/-! ## A223977.P7420884866819410163

`A223975(A141214(n)+7)`
-/

namespace A223977.P7420884866819410163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A141214 n + 7).toNat

end

end A223977.P7420884866819410163

/-! ## A223977.P16863006143891645496

`record[A223975(A000096(n)+5)]`
-/

namespace A223977.P16863006143891645496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A000096 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223977.P16863006143891645496

/-!
# A223978: Number of 5Xn 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223978, there is no canonical definition to state claims against.
-/

/-! ## A223978.P12227664864930366277

`A223975(A167499(n+3))`
-/

namespace A223978.P12227664864930366277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A167499 (n + 3)).toNat

end

end A223978.P12227664864930366277

/-!
# A223979: Number of 6 X n 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223979, there is no canonical definition to state claims against.
-/

/-! ## A223979.P2612472624671390009

`A223975(A056115(n)+21)`
-/

namespace A223979.P2612472624671390009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A056115 n + 21).toNat

end

end A223979.P2612472624671390009

/-!
# A223980: Number of 7Xn 0..2 arrays with rows and antidiagonals unimodal.

The programs for A223980, there is no canonical definition to state claims against.
-/

/-! ## A223980.P12906476636289608662

`A223975(A167487(n+5))`
-/

namespace A223980.P12906476636289608662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223975 (A167487 (n + 5)).toNat

end

end A223980.P12906476636289608662

/-!
# A223981: Number of n X n 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223981, there is no canonical definition to state claims against.
-/

/-! ## A223981.P13037006435394302051

`A223987(∑[4*n]+1)`
-/

namespace A223981.P13037006435394302051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223981.P13037006435394302051

/-! ## A223981.P8822422477711917175

`record[A003982(n)*A223987(n+1)]`
-/

namespace A223981.P8822422477711917175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223987 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223981.P8822422477711917175

/-! ## A223981.P8957688564639251860

`record[gcd(A037012(n), A223987(n+1))]`
-/

namespace A223981.P8957688564639251860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A223987 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223981.P8957688564639251860

/-!
# A223982: Number of n X 3 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223982, there is no canonical definition to state claims against.
-/

/-! ## A223982.P3434279882255196420

`A223987(∑[n+3]+1)`
-/

namespace A223982.P3434279882255196420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223982.P3434279882255196420

/-!
# A223983: Number of nX4 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223983, there is no canonical definition to state claims against.
-/

/-! ## A223983.P9764876057207320008

`A223987(A141214(n+1))`
-/

namespace A223983.P9764876057207320008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A141214 (n + 1)).toNat

end

end A223983.P9764876057207320008

/-!
# A223984: Number of nX5 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223984, there is no canonical definition to state claims against.
-/

/-! ## A223984.P6569845303241177800

`A223987(eq[2, A092921(n)])`
-/

namespace A223984.P6569845303241177800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A223984.P6569845303241177800

/-!
# A223985: Number of nX6 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223985, there is no canonical definition to state claims against.
-/

/-! ## A223985.P10138434514254043120

`A223987(A052905(n+3))`
-/

namespace A223985.P10138434514254043120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A052905 (n + 3)).toNat

end

end A223985.P10138434514254043120

/-!
# A223986: Number of nX7 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223986, there is no canonical definition to state claims against.
-/

/-! ## A223986.P12896404629455976685

`A223987(A055999(n+4))`
-/

namespace A223986.P12896404629455976685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A055999 (n + 4)).toNat

end

end A223986.P12896404629455976685

/-!
# A223987: T(n,k)=Number of nXk 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223987, there is no canonical definition to state claims against.
-/

/-! ## A223987.P16725429622975236872

`A004277(A223864(n+1))-A224173(n+1)`
-/

namespace A223987.P16725429622975236872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A223864 (n + 1)).toNat - A224173 (n + 1)

end

end A223987.P16725429622975236872

/-!
# A223988: Number of 3Xn 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223988, there is no canonical definition to state claims against.
-/

/-! ## A223988.P14950510000898437059

`A223987(∑[n+2]+4)`
-/

namespace A223988.P14950510000898437059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A223988.P14950510000898437059

/-!
# A223989: Number of 4Xn 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223989, there is no canonical definition to state claims against.
-/

/-! ## A223989.P7461446746970176531

`A223987(A141214(n)+7)`
-/

namespace A223989.P7461446746970176531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A141214 n + 7).toNat

end

end A223989.P7461446746970176531

/-!
# A223990: Number of 5Xn 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223990, there is no canonical definition to state claims against.
-/

/-! ## A223990.P12878629094445889038

`A223987(A167499(n+3))`
-/

namespace A223990.P12878629094445889038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A167499 (n + 3)).toNat

end

end A223990.P12878629094445889038

/-!
# A223991: Number of 6Xn 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223991, there is no canonical definition to state claims against.
-/

/-! ## A223991.P9777887570378338170

`A223987(A056115(n)+21)`
-/

namespace A223991.P9777887570378338170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (A056115 n + 21).toNat

end

end A223991.P9777887570378338170

/-!
# A223992: Number of 7Xn 0..3 arrays with rows unimodal and columns nondecreasing.

The programs for A223992, there is no canonical definition to state claims against.
-/

/-! ## A223992.P10880753648321098852

`A223987(eq[6, col(n)]+1)`
-/

namespace A223992.P10880753648321098852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223987 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A223992.P10880753648321098852

/-!
# A223993: Number of n X n 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223993, there is no canonical definition to state claims against.
-/

/-! ## A223993.P14413006405308628500

`A223999(∑[4*n]+1)`
-/

namespace A223993.P14413006405308628500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223993.P14413006405308628500

/-! ## A223993.P8840353804084370256

`record[A223999(Δ[A014112(n+1)])]`
-/

namespace A223993.P8840353804084370256
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014112 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223993.P8840353804084370256

/-! ## A223993.P7774161069730158411

`record[A003982(n)*A223999(n+1)]`
-/

namespace A223993.P7774161069730158411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A223999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223993.P7774161069730158411

/-! ## A223993.P10771907811856841527

`record[gcd(A114327(n), A223999(n+1))]`
-/

namespace A223993.P10771907811856841527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A223999 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223993.P10771907811856841527

/-! ## A223993.P15052281107317063927

`record[root(A223999(n+1), A286157(n+1))]`
-/

namespace A223993.P15052281107317063927
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A223999 (n + 1) : ℝ) ^ (1 / (A286157 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A223993.P15052281107317063927

/-!
# A223994: Number of nX3 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223994, there is no canonical definition to state claims against.
-/

/-! ## A223994.P8061467536397100907

`A223999(∑[n+3]+1)`
-/

namespace A223994.P8061467536397100907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A223994.P8061467536397100907

/-!
# A223995: Number of nX4 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223995, there is no canonical definition to state claims against.
-/

/-! ## A223995.P16769678617711746520

`A223999(A141214(n+1))`
-/

namespace A223995.P16769678617711746520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A141214 (n + 1)).toNat

end

end A223995.P16769678617711746520

/-!
# A223996: Number of nX5 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223996, there is no canonical definition to state claims against.
-/

/-! ## A223996.P8996729671402383960

`A223999(∑[n+5]+6)`
-/

namespace A223996.P8996729671402383960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A223996.P8996729671402383960

/-!
# A223997: Number of nX6 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223997, there is no canonical definition to state claims against.
-/

/-! ## A223997.P1544264988033292869

`A223999(A052905(n+3))`
-/

namespace A223997.P1544264988033292869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A052905 (n + 3)).toNat

end

end A223997.P1544264988033292869

/-!
# A223998: Number of nX7 0..2 arrays with antidiagonals unimodal and rows and diagonals nondecreasing.

The programs for A223998, there is no canonical definition to state claims against.
-/

/-! ## A223998.P9955270809370928106

`A223999(A055999(n+4))`
-/

namespace A223998.P9955270809370928106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223999 (A055999 (n + 4)).toNat

end

end A223998.P9955270809370928106

