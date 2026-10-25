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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A385700: Numbers such that when the leftmost digit is moved to the unit's place the result is divisible by 4.

The programs for A385700, there is no canonical definition to state claims against.
-/

/-! ## A385700.P3496799487157289390

`lt[A091722(A082216(n)), 5]`
-/

namespace A385700.P3496799487157289390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091722 (A082216 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A385700.P3496799487157289390

/-! ## A385700.P14029119814710406995

`eq[A009545(A004086(n)), A073424(n+4)]`
-/

namespace A385700.P14029119814710406995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385700.P14029119814710406995

/-! ## A385700.P6455780692203219441

`lt[A070939(n+4), A040281(A082216(n))]`
-/

namespace A385700.P6455780692203219441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040281 (A082216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385700.P6455780692203219441

/-! ## A385700.P4020848674910032910

`eq[A009545(A004086(n)), A083914(2*n+3)]`
-/

namespace A385700.P4020848674910032910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083914 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385700.P4020848674910032910

/-! ## A385700.P14553842409545792895

`lt[A010054(2*(n+2)), A056594(A082216(n))]`
-/

namespace A385700.P14553842409545792895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A082216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385700.P14553842409545792895

/-!
# A385701: Numbers such that when the leftmost digit is moved to the unit's place the result is divisible by 6.

The programs for A385701, there is no canonical definition to state claims against.
-/

/-! ## A385701.P17918193555301883858

`eq[0, A097325(A004086(n))]`
-/

namespace A385701.P17918193555301883858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A385701.P17918193555301883858

/-! ## A385701.P4798015402515057822

`eq[A059841(A004086(n)), A153727(n)]`
-/

namespace A385701.P4798015402515057822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A004086 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153727 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385701.P4798015402515057822

/-! ## A385701.P11909597116303890546

`filter[A273892(n+1), A079978(#)]`
-/

namespace A385701.P11909597116303890546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079978 (f1 j).toNat = 1) n)

end

end A385701.P11909597116303890546

/-! ## A385701.P3941569541316504704

`filter[A273892(n+1), A329680(#)]`
-/

namespace A385701.P3941569541316504704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A329680 (f1 j).toNat = 1) n)

end

end A385701.P3941569541316504704

/-! ## A385701.P1032634796107128278

`∩[A273892(n+1), A008585(n)]`
-/

namespace A385701.P1032634796107128278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385701.P1032634796107128278

/-!
# A385702: Numbers such that when the leftmost digit is moved to the unit's place the result is divisible by 7.

The programs for A385702, there is no canonical definition to state claims against.
-/

/-! ## A385702.P10031148030026616021

`lt[A279614(n+1), A040404(A004086(n))]`
-/

namespace A385702.P10031148030026616021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040404 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385702.P10031148030026616021

/-! ## A385702.P8065336896368530405

`lt[A333536(n+2), A040404(A004086(n))]`
-/

namespace A385702.P8065336896368530405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333536 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040404 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385702.P8065336896368530405

/-! ## A385702.P10308811286040417896

`A316945(A190550(n+2))`
-/

namespace A385702.P10308811286040417896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316945 (A190550 (n + 2)).toNat

end

end A385702.P10308811286040417896

/-!
# A385703: Numbers such that when the leftmost digit is moved to the unit's place the result is divisible by 8.

The programs for A385703, there is no canonical definition to state claims against.
-/

/-! ## A385703.P17097602648304544017

`lt[A010877(A056142(n)), 1]`
-/

namespace A385703.P17097602648304544017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A056142 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A385703.P17097602648304544017

/-! ## A385703.P14234796091513167234

`lt[A000010(n+1), A040587(A004086(n))]`
-/

namespace A385703.P14234796091513167234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040587 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385703.P14234796091513167234

/-!
# A385704: Complement of A184535.

The programs for A385704, the canonical program `A385704.P143017808627893424` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385704 has offset 1).

The definition of A385704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385704.P143017808627893424

`comp[A184535(n+1)-1]+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A385704

/-- `comp[A184535(n+1)-1]+1` -/
def P143017808627893424.Spec : Prop :=
  ∀ n, (P143017808627893424.a n : ℤ) = A385704 (n + 1)

theorem P143017808627893424.correct : P143017808627893424.Spec := by
  intro n
  simp only [A385704, Nat.add_sub_cancel]

end A385704

/-! ## A385704.P2877216291667854577

`eq[char[A184535(n+1)], A151933(n)]`
-/

namespace A385704.P2877216291667854577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184535 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A385704.P2877216291667854577

namespace A385704

/-- `eq[char[A184535(n+1)], A151933(n)]` -/
def P2877216291667854577.Spec : Prop :=
  ∀ n, (P2877216291667854577.a n : ℤ) = A385704 (n + 1)

end A385704

/-! ## A385704.P9328551064644264425

`A088519(A004709(2*n+5))+n`
-/

namespace A385704.P9328551064644264425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088519 (A004709 (2 * n + 5)).toNat + (n : ℤ)

end

end A385704.P9328551064644264425

namespace A385704

/-- `A088519(A004709(2*n+5))+n` -/
def P9328551064644264425.Spec : Prop :=
  ∀ n, P9328551064644264425.a n = A385704 (n + 1)

end A385704

/-! ## A385704.P1638994987346257687

`eq[char[A184535(n+1)], A151622(n)]`
-/

namespace A385704.P1638994987346257687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184535 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A385704.P1638994987346257687

namespace A385704

/-- `eq[char[A184535(n+1)], A151622(n)]` -/
def P1638994987346257687.Spec : Prop :=
  ∀ n, (P1638994987346257687.a n : ℤ) = A385704 (n + 1)

end A385704

/-! ## A385704.P16569918335170461966

`A183574(n+2)-A266724(A140679(2*n+3))`
-/

namespace A385704.P16569918335170461966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183574 (n + 2) - A266724 (A140679 (2 * n + 3)).toNat

end

end A385704.P16569918335170461966

namespace A385704

/-- `A183574(n+2)-A266724(A140679(2*n+3))` -/
def P16569918335170461966.Spec : Prop :=
  ∀ n, P16569918335170461966.a n = A385704 (n + 1)

end A385704

/-!
# A385705: Primes p such that there exists prime q < p such that sigma(p+1)=sigma(q+1).

The programs for A385705, there is no canonical definition to state claims against.
-/

/-! ## A385705.P5144834553046176610

`filter[A272404(2*(n+1)), A171588(#)]`
-/

namespace A385705.P5144834553046176610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272404 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171588 (f1 j).toNat = 1) n)

end

end A385705.P5144834553046176610

/-!
# A385706: Numerator of h(n) which is the minimum among the maxima of period n cycles of T(x) = 1 - 2 * |x-1/2|.

The programs for A385706, there is no canonical definition to state claims against.
-/

/-! ## A385706.P5472583128151304355

`A088172(n+1)*A132881(A274904(n))`
-/

namespace A385706.P5472583128151304355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088172 (n + 1) * A132881 (A274904 n).toNat

end

end A385706.P5472583128151304355

/-! ## A385706.P6681957435630642205

`A036577(A162652(2*(n+2)))*A088172(n+1)`
-/

namespace A385706.P6681957435630642205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (A162652 (2 * (n + 2))).toNat * A088172 (n + 1)

end

end A385706.P6681957435630642205

/-!
# A385711: Primes whose digits are all distinct and pairwise coprime.

The programs for A385711, there is no canonical definition to state claims against.
-/

/-! ## A385711.P10003270935148729345

`∩[A029743(n+1), A078453(n+1)]`
-/

namespace A385711.P10003270935148729345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029743 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385711.P10003270935148729345

/-!
# A385713: Numbers w + x + y + z where (w,x,y,z) are nonnegative solutions to the Diophantine equation w^2 + x^2 + y^2 + z^2 = w*x*y*z.

The programs for A385713, there is no canonical definition to state claims against.
-/

/-! ## A385713.P10915292864817330537

`A243169(A292492(n))`
-/

namespace A385713.P10915292864817330537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243169 (A292492 n).toNat

end

end A385713.P10915292864817330537

/-!
# A385716: Expansion of 1/((1-x) * (1-13*x))^(3/2).

The programs for A385716, there is no canonical definition to state claims against.
-/

/-! ## A385716.P10163737854546590007

`C(n+2, 2)*A386362(n)`
-/

namespace A385716.P10163737854546590007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) * A386362 n

end

end A385716.P10163737854546590007

/-! ## A385716.P11687745212199248854

`∑[∑[A387210(n)]]`
-/

namespace A385716.P11687745212199248854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387210 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385716.P11687745212199248854

/-! ## A385716.P12101469417473932970

`∑[n+1]*A386362(n)`
-/

namespace A385716.P12101469417473932970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A386362 n

end

end A385716.P12101469417473932970

/-! ## A385716.P4695346156192372236

`(A337167(n+1)-A337167(n))/3*∑[n+1]`
-/

namespace A385716.P4695346156192372236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337167 (n + 1) - A337167 n : ℚ) / 3 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A385716.P4695346156192372236

/-! ## A385716.P1893747437984248701

`((14*n+7)*a(n-1)-13*(n+1)*a(n-2))/n` with `a(0)=1, a(1)=21`
-/

namespace A385716.P1893747437984248701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 21] fun n a =>
  ((14 * n + 7 : ℚ) * a (n - 1) - 13 * ((n + 1 : ℚ) * a (n - 2))) / (n : ℚ)

end

end A385716.P1893747437984248701

/-!
# A385717: a(n) = a(n-1) + a(n-2) + a(n-3), with a(1) = 4, a(2) = 13, a(3) = 42.

The programs for A385717, the canonical program `A385717.P11067697425676795605` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385717 has offset 1).

The definition of A385717 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A385717.P11067697425676795605`, by `A385717.P11067697425676795605.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A385717.P11067697425676795605

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=4, a(1)=13, a(2)=42`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A385717

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P11067697425676795605.Spec : Prop :=
  ∀ n, (P11067697425676795605.a n : ℤ) = A385717 (n + 1)

theorem P11067697425676795605.correct : P11067697425676795605.Spec := by
  intro n
  simp only [A385717, Nat.add_sub_cancel]

end A385717

/-!
# A385721: Primes in A386964.

The programs for A385721, there is no canonical definition to state claims against.
-/

/-! ## A385721.P17324364776279619283

`A386964(A276481(n+1))`
-/

namespace A385721.P17324364776279619283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386964 (A276481 (n + 1)).toNat

end

end A385721.P17324364776279619283

/-!
# A385723: Numbers k such that m^m == m (mod k) where m = ceiling(k/2).

The programs for A385723, there is no canonical definition to state claims against.
-/

/-! ## A385723.P13044035673687429940

`lt[A025446(A049001(2*(n+1))), A301849(n+4)]`
-/

namespace A385723.P13044035673687429940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025446 (A049001 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301849 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385723.P13044035673687429940

/-!
# A385726: a(n) = 3^n - 6*binomial(n,4) - 6*binomial(n,3) - 4*binomial(n,2) - 2*n - 1.

The programs for A385726, the canonical program `A385726.P15582791440511932674` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385726 has offset 0).

The definition of A385726 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n-6*C(n, 4)-6*C(n, 3)-4*C(n, 2)-2*n-1` (program `A385726.P15582791440511932674`, by `A385726.P15582791440511932674.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A385726.P933134162011536228

`3^n-n*(n*(n*(n-2)+7)+2)/4-1`
-/

namespace A385726.P933134162011536228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℚ) - ((n : ℤ) * ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 2) + 7) + 2) : ℚ) / 4 - 1

end

end A385726.P933134162011536228

namespace A385726

/-- `3^n-n*(n*(n*(n-2)+7)+2)/4-1` -/
def P933134162011536228.Spec : Prop :=
  ∀ n, P933134162011536228.a n = (A385726 n : ℚ)

theorem P933134162011536228.correct : P933134162011536228.Spec := by
  intro n
  simp only [A385726, Nat.add_sub_cancel, A385726.P933134162011536228.a, A385726.P15582791440511932674.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A385726

/-! ## A385726.P15582791440511932674

`3^n-6*C(n, 4)-6*C(n, 3)-4*C(n, 2)-2*n-1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A385726

/-- `3^n-6*C(n, 4)-6*C(n, 3)-4*C(n, 2)-2*n-1` -/
def P15582791440511932674.Spec : Prop :=
  ∀ n, P15582791440511932674.a n = A385726 n

theorem P15582791440511932674.correct : P15582791440511932674.Spec := by
  intro n
  simp only [A385726]

end A385726

/-! ## A385726.P5006244191132038550

`A310582(A008458(3*(n+1)))%A330663(n)`
-/

namespace A385726.P5006244191132038550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310582 (A008458 (3 * (n + 1))).toNat) (A330663 n)

end

end A385726.P5006244191132038550

namespace A385726

/-- `A310582(A008458(3*(n+1)))%A330663(n)` -/
def P5006244191132038550.Spec : Prop :=
  ∀ n, P5006244191132038550.a n = A385726 n

end A385726

/-!
# A385728: Expansion of 1/((1-2*x) * (1-6*x))^(3/2).

The programs for A385728, the canonical program `A385728.P6895606513719186912` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385728 has offset 0).

The definition of A385728 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385728.P6895606513719186912

`C(n+2, 2)*A005572(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A385728

/-- `C(n+2, 2)*A005572(n)` -/
def P6895606513719186912.Spec : Prop :=
  ∀ n, P6895606513719186912.a n = A385728 n

theorem P6895606513719186912.correct : P6895606513719186912.Spec := by
  intro n
  simp only [A385728]

end A385728

/-! ## A385728.P17992224998368416258

`((8*n+4)*a(n-1)-12*(n+1)*a(n-2))/n` with `a(0)=1, a(1)=12`
-/

namespace A385728.P17992224998368416258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 12] fun n a =>
  ((8 * n + 4 : ℚ) * a (n - 1) - (12 * (n + 1) : ℚ) * a (n - 2)) / (n : ℚ)

end

end A385728.P17992224998368416258

namespace A385728

/-- `((8*n+4)*a(n-1)-12*(n+1)*a(n-2))/n` -/
def P17992224998368416258.Spec : Prop :=
  ∀ n, P17992224998368416258.a n = (A385728 n : ℚ)

end A385728

/-! ## A385728.P5431314150021410906

`∑[n+1]*A005572(n)`
-/

namespace A385728.P5431314150021410906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A005572 n

end

end A385728.P5431314150021410906

namespace A385728

/-- `∑[n+1]*A005572(n)` -/
def P5431314150021410906.Spec : Prop :=
  ∀ n, P5431314150021410906.a n = A385728 n

end A385728

/-! ## A385728.P15767874316580172647

`∑[n+1]*A052179(∑[n])`
-/

namespace A385728.P15767874316580172647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A052179 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A385728.P15767874316580172647

namespace A385728

/-- `∑[n+1]*A052179(∑[n])` -/
def P15767874316580172647.Spec : Prop :=
  ∀ n, P15767874316580172647.a n = A385728 n

end A385728

/-! ## A385728.P6410868718347001356

`A002378(n+1)*A005572(n)/2`
-/

namespace A385728.P6410868718347001356
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (n + 1) * A005572 n : ℚ) / 2

end

end A385728.P6410868718347001356

namespace A385728

/-- `A002378(n+1)*A005572(n)/2` -/
def P6410868718347001356.Spec : Prop :=
  ∀ n, P6410868718347001356.a n = (A385728 n : ℚ)

end A385728

/-!
# A385730: The number of lattice points in the 2D plane contained between the curve y=x^2/4 and the line y=n^2, inclusive, where n is a positive integer.

The programs for A385730, the canonical program `A385730.P7087016858821356909` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385730 has offset 0).

The definition of A385730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A385730.P7087016858821356909

`1/3*(8*n^3+7*n+3)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A385730

/-- `1/3*(8*n^3+7*n+3)` -/
def P7087016858821356909.Spec : Prop :=
  ∀ n, P7087016858821356909.a n = (A385730 n : ℚ)

end A385730

/-! ## A385730.P16289057421665249803

`A171272(n)+n`
-/

namespace A385730.P16289057421665249803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171272 n + (n : ℤ)

end

end A385730.P16289057421665249803

namespace A385730

/-- `A171272(n)+n` -/
def P16289057421665249803.Spec : Prop :=
  ∀ n, P16289057421665249803.a n = A385730 n

end A385730

/-! ## A385730.P16741391128448617862

`Δ[A345897(n)]+2`
-/

namespace A385730.P16741391128448617862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A385730.P16741391128448617862

namespace A385730

/-- `Δ[A345897(n)]+2` -/
def P16741391128448617862.Spec : Prop :=
  ∀ n, P16741391128448617862.a n = A385730 n

end A385730

/-! ## A385730.P11124727329050338401

`A143166(n)+Δ[n²]`
-/

namespace A385730.P11124727329050338401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143166 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A385730.P11124727329050338401

namespace A385730

/-- `A143166(n)+Δ[n²]` -/
def P11124727329050338401.Spec : Prop :=
  ∀ n, P11124727329050338401.a n = A385730 n

end A385730

/-! ## A385730.P7568063466302355702

`2*A035597(n)+n+1`
-/

namespace A385730.P7568063466302355702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035597 n + (n + 1 : ℤ)

end

end A385730.P7568063466302355702

namespace A385730

/-- `2*A035597(n)+n+1` -/
def P7568063466302355702.Spec : Prop :=
  ∀ n, P7568063466302355702.a n = A385730 n

end A385730

/-! ## A385730.P506611579377605585

`2*A100503(n)-(n+1)`
-/

namespace A385730.P506611579377605585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100503 n - (n + 1 : ℤ)

end

end A385730.P506611579377605585

namespace A385730

/-- `2*A100503(n)-(n+1)` -/
def P506611579377605585.Spec : Prop :=
  ∀ n, P506611579377605585.a n = A385730 n

end A385730

/-! ## A385730.P10859909005421875435

`A050410(n)+∑[(n+1)²]`
-/

namespace A385730.P10859909005421875435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050410 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A385730.P10859909005421875435

namespace A385730

/-- `A050410(n)+∑[(n+1)²]` -/
def P10859909005421875435.Spec : Prop :=
  ∀ n, P10859909005421875435.a n = A385730 n

end A385730

/-! ## A385730.P8643248908959735002

`A336288(n+1)-(2*n)²`
-/

namespace A385730.P8643248908959735002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336288 (n + 1) - ((2 * n) ^ 2 : ℤ)

end

end A385730.P8643248908959735002

namespace A385730

/-- `A336288(n+1)-(2*n)²` -/
def P8643248908959735002.Spec : Prop :=
  ∀ n, P8643248908959735002.a n = A385730 n

end A385730

/-! ## A385730.P15800218320002408103

`A005491(n)+A004466(n)`
-/

namespace A385730.P15800218320002408103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005491 n + A004466 n

end

end A385730.P15800218320002408103

namespace A385730

/-- `A005491(n)+A004466(n)` -/
def P15800218320002408103.Spec : Prop :=
  ∀ n, P15800218320002408103.a n = A385730 n

end A385730

/-! ## A385730.P8001433269544514392

`A008778(n)+A006597(n)`
-/

namespace A385730.P8001433269544514392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n + A006597 n

end

end A385730.P8001433269544514392

namespace A385730

/-- `A008778(n)+A006597(n)` -/
def P8001433269544514392.Spec : Prop :=
  ∀ n, P8001433269544514392.a n = A385730 n

end A385730

/-! ## A385730.P1569536755981023540

`A015237(n)+A005894(n)`
-/

namespace A385730.P1569536755981023540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n + A005894 n

end

end A385730.P1569536755981023540

namespace A385730

/-- `A015237(n)+A005894(n)` -/
def P1569536755981023540.Spec : Prop :=
  ∀ n, P1569536755981023540.a n = A385730 n

end A385730

/-! ## A385730.P7064391065436184534

`A063523(n)+A016813(n)`
-/

namespace A385730.P7064391065436184534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063523 n + A016813 n

end

end A385730.P7064391065436184534

namespace A385730

/-- `A063523(n)+A016813(n)` -/
def P7064391065436184534.Spec : Prop :=
  ∀ n, P7064391065436184534.a n = A385730 n

end A385730

/-! ## A385730.P12394165902643269130

`A100503(n)+A035597(n)`
-/

namespace A385730.P12394165902643269130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100503 n + A035597 n

end

end A385730.P12394165902643269130

namespace A385730

/-- `A100503(n)+A035597(n)` -/
def P12394165902643269130.Spec : Prop :=
  ∀ n, P12394165902643269130.a n = A385730 n

end A385730

/-! ## A385730.P8876440393479835222

`A168547(n)+A014105(n)`
-/

namespace A385730.P8876440393479835222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168547 n + A014105 n

end

end A385730.P8876440393479835222

namespace A385730

/-- `A168547(n)+A014105(n)` -/
def P8876440393479835222.Spec : Prop :=
  ∀ n, P8876440393479835222.a n = A385730 n

end A385730

/-! ## A385730.P3469866122357779421

`A259110(n)+A016777(n)`
-/

namespace A385730.P3469866122357779421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259110 n + A016777 n

end

end A385730.P3469866122357779421

namespace A385730

/-- `A259110(n)+A016777(n)` -/
def P3469866122357779421.Spec : Prop :=
  ∀ n, P3469866122357779421.a n = A385730 n

end A385730

/-! ## A385730.P5425815726999386550

`A057813(n)-A007742(n)`
-/

namespace A385730.P5425815726999386550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057813 n - A007742 n

end

end A385730.P5425815726999386550

namespace A385730

/-- `A057813(n)-A007742(n)` -/
def P5425815726999386550.Spec : Prop :=
  ∀ n, P5425815726999386550.a n = A385730 n

end A385730

/-! ## A385730.P4684571772340162299

`A168574(n)-A000384(n)`
-/

namespace A385730.P4684571772340162299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168574 n - A000384 n

end

end A385730.P4684571772340162299

namespace A385730

/-- `A168574(n)-A000384(n)` -/
def P4684571772340162299.Spec : Prop :=
  ∀ n, P4684571772340162299.a n = A385730 n

end A385730

/-! ## A385730.P2954285774201757103

`A116731(Δ[n²])+n`
-/

namespace A385730.P2954285774201757103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116731 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + (n : ℤ)

end

end A385730.P2954285774201757103

namespace A385730

/-- `A116731(Δ[n²])+n` -/
def P2954285774201757103.Spec : Prop :=
  ∀ n, P2954285774201757103.a n = A385730 n

end A385730

/-! ## A385730.P15750581681927717635

`A006527(2*n)+n+1`
-/

namespace A385730.P15750581681927717635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 (2 * n) + (n + 1 : ℤ)

end

end A385730.P15750581681927717635

namespace A385730

/-- `A006527(2*n)+n+1` -/
def P15750581681927717635.Spec : Prop :=
  ∀ n, P15750581681927717635.a n = A385730 n

end A385730

/-! ## A385730.P13506795957718377899

`A212686(2*n)+n+1`
-/

namespace A385730.P13506795957718377899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212686 (2 * n) + (n + 1 : ℤ)

end

end A385730.P13506795957718377899

namespace A385730

/-- `A212686(2*n)+n+1` -/
def P13506795957718377899.Spec : Prop :=
  ∀ n, P13506795957718377899.a n = A385730 n

end A385730

/-!
# A385731: Number of divisors d of n such that (-d) == (-d)^d == d^d (mod n).

The programs for A385731, there is no canonical definition to state claims against.
-/

/-! ## A385731.P4288482348134187404

`A385392(n+1)+A385541(n+1)-A384854(n+1)`
-/

namespace A385731.P4288482348134187404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385392 (n + 1) + (A385541 (n + 1) - A384854 (n + 1))

end

end A385731.P4288482348134187404

/-! ## A385731.P10957667172193206425

`A006530(A385392(n+1)^A142150(n+1))`
-/

namespace A385731.P10957667172193206425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A385392 (n + 1) : ℚ) ^ (A142150 (n + 1) : ℤ))).toNat

end

end A385731.P10957667172193206425

/-! ## A385731.P8191409090417514136

`gcd(A065120(A293221(2*(n+1))), A304481(n+1))`
-/

namespace A385731.P8191409090417514136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065120 (A293221 (2 * (n + 1))).toNat) (A304481 (n + 1))

end

end A385731.P8191409090417514136

/-! ## A385731.P15965003854215859019

`A385392((n+1)^A385392(n+4))`
-/

namespace A385731.P15965003854215859019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385392 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A385392 (n + 4) : ℤ))).toNat

end

end A385731.P15965003854215859019

/-! ## A385731.P14108579519450336976

`gcd(A325566(A098859(2*n)), A325566(3*(n+1)))`
-/

namespace A385731.P14108579519450336976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A325566 (A098859 (2 * n)).toNat) (A325566 (3 * (n + 1)))

end

end A385731.P14108579519450336976

/-!
# A385733: Triangle read by rows: the denominators of the Lucas triangle.

The programs for A385733, there is no canonical definition to state claims against.
-/

/-! ## A385733.P7157561493570867565

`gcd(A055870(n), A066099(A222479(n+1)))`
-/

namespace A385733.P7157561493570867565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055870 n) (A066099 (A222479 (n + 1)).toNat)

end

end A385733.P7157561493570867565

/-! ## A385733.P1426248063829732314

`gcd(A026741(A087062(n+1)), A344615(n))`
-/

namespace A385733.P1426248063829732314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026741 (A087062 (n + 1)).toNat) (A344615 n)

end

end A385733.P1426248063829732314

/-! ## A385733.P4589685039981936550

`A196563(A048113(n)*A256223(n))`
-/

namespace A385733.P4589685039981936550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A048113 n * A256223 n).toNat

end

end A385733.P4589685039981936550

/-! ## A385733.P2104263049186236958

`A050603(A176487(n))`
-/

namespace A385733.P2104263049186236958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A176487 n).toNat

end

end A385733.P2104263049186236958

/-! ## A385733.P4923037378853521098

`A089242(A168517(n))`
-/

namespace A385733.P4923037378853521098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089242 (A168517 n).toNat

end

end A385733.P4923037378853521098

/-!
# A385734: Lucas triangle A385732/A385733 mod 2.

The programs for A385734, there is no canonical definition to state claims against.
-/

/-! ## A385734.P3832001278093496763

`A101455(A385458(n)+A277701(n+1))`
-/

namespace A385734.P3832001278093496763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A385458 n + A277701 (n + 1)).toNat

end

end A385734.P3832001278093496763

/-! ## A385734.P12541044204986320101

`A280237(A010048(n))`
-/

namespace A385734.P12541044204986320101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280237 (A010048 n).toNat

end

end A385734.P12541044204986320101

/-! ## A385734.P2774572672800677094

`A359155(A172347(n))`
-/

namespace A385734.P2774572672800677094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359155 (A172347 n).toNat

end

end A385734.P2774572672800677094

/-! ## A385734.P1164623721335744611

`A117947(n)^A035485(A299898(2*n+3))`
-/

namespace A385734.P1164623721335744611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117947 n : ℚ) ^ (A035485 (A299898 (2 * n + 3)).toNat : ℤ)

end

end A385734.P1164623721335744611

/-! ## A385734.P7935104683877195800

`A117947(n)^A189143(A189143(n+1))`
-/

namespace A385734.P7935104683877195800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117947 n : ℚ) ^ (A189143 (A189143 (n + 1)).toNat : ℤ)

end

end A385734.P7935104683877195800

/-!
# A385735: Inverse permutation to A385661.

The programs for A385735, there is no canonical definition to state claims against.
-/

/-! ## A385735.P17780150331452260404

`A358874(A385661(A358874(A385661(A358874(n+1)))))`
-/

namespace A385735.P17780150331452260404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358874 (A385661 (A358874 (A385661 (A358874 (n + 1)).toNat).toNat).toNat).toNat

end

end A385735.P17780150331452260404

/-!
# A385736: a(n) is the number of distinct nondegenerate triangles with perimeter n whose side lengths are triangular numbers.

The programs for A385736, there is no canonical definition to state claims against.
-/

/-! ## A385736.P6466284061713563812

`and(A059841(A270929(n+1)), A081233(n+3))`
-/

namespace A385736.P6466284061713563812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059841 (A270929 (n + 1)).toNat) (A081233 (n + 3))

end

end A385736.P6466284061713563812

/-! ## A385736.P13236683339107071702

`A001274(A073020(3*n+2))%A043537(3*n+4)`
-/

namespace A385736.P13236683339107071702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001274 (A073020 (3 * n + 2)).toNat) (A043537 (3 * n + 4))

end

end A385736.P13236683339107071702

/-! ## A385736.P6212884996226592528

`A000035(A185214(n)+A078489(n+1))`
-/

namespace A385736.P6212884996226592528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A185214 n + A078489 (n + 1)).toNat

end

end A385736.P6212884996226592528

/-! ## A385736.P12628537918705504983

`A293162(A051291(n)%A293183(n+5))`
-/

namespace A385736.P12628537918705504983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 (Int.tmod (A051291 n) (A293183 (n + 5))).toNat

end

end A385736.P12628537918705504983

/-! ## A385736.P18076948000888049347

`A023969(A219578(n+2))`
-/

namespace A385736.P18076948000888049347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023969 (A219578 (n + 2)).toNat

end

end A385736.P18076948000888049347

/-!
# A385744: The number of iterations of the infinitary analog of the totient function A384247 that are required to reach from n to 1.

The programs for A385744, there is no canonical definition to state claims against.
-/

/-! ## A385744.P436540816541249752

`a(A384247(n+1)-1)+1` with `a(0)=0`
-/

namespace A385744.P436540816541249752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A384247 (n + 1) - 1).toNat + 1

end

end A385744.P436540816541249752

/-!
# A385746: Numbers that are equal to the sum of their iterated infinitary analog of the totient function A384247.

The programs for A385746, there is no canonical definition to state claims against.
-/

/-! ## A385746.P3467371372711499138

`eq[n+1, A385745(n+1)]+1`
-/

namespace A385746.P3467371372711499138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385745 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A385746.P3467371372711499138

/-! ## A385746.P9179859020820579387

`eq[A028310(n), A385745(A028310(n))]`
-/

namespace A385746.P9179859020820579387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385745 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A385746.P9179859020820579387

/-!
# A385750: a(n) = Sum_{k=0..n} Stirling2(n,k) * (n!/k!)^2.

The programs for A385750, there is no canonical definition to state claims against.
-/

/-! ## A385750.P12735089573027484081

`A051724(A089299(3*n+1)^floor(sqrt(n)+1/2))`
-/

namespace A385750.P12735089573027484081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (SequenceMachineLib.roundAway ((A089299 (3 * n + 1) : ℚ) ^ (⌊Real.sqrt (n : ℝ) + ((1 : ℚ) / 2 : ℝ)⌋ : ℤ))).toNat

end

end A385750.P12735089573027484081

/-!
# A385751: a(n) = Sum_{k=0..n} |Stirling1(n,k)| * (n!/k!)^2.

The programs for A385751, there is no canonical definition to state claims against.
-/

/-! ## A385751.P12852277539212024634

`A286402(A350306(n))-A350297(n)`
-/

namespace A385751.P12852277539212024634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286402 (A350306 n).toNat - A350297 n

end

end A385751.P12852277539212024634

/-!
# A385753: Integer part of the greedy base sqrt(Pi) representation of n.

The programs for A385753, there is no canonical definition to state claims against.
-/

/-! ## A385753.P6165109134252981847

`filter[A043681(n+2), A080764(#)]`
-/

namespace A385753.P6165109134252981847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043681 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080764 (f1 j).toNat = 1) n)

end

end A385753.P6165109134252981847

/-! ## A385753.P15254400245633863925

`filter[A043681(n+2), A188038(#)]`
-/

namespace A385753.P15254400245633863925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043681 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188038 (f1 j).toNat = 1) n)

end

end A385753.P15254400245633863925

/-! ## A385753.P1551525702522570166

`filter[A043681(n+2), A188044(#)]`
-/

namespace A385753.P1551525702522570166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043681 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188044 (f1 j).toNat = 1) n)

end

end A385753.P1551525702522570166

/-! ## A385753.P2932414670602748517

`filter[A043681(n+2), A189129(#)]`
-/

namespace A385753.P2932414670602748517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043681 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189129 (f1 j).toNat = 1) n)

end

end A385753.P2932414670602748517

/-! ## A385753.P9372413921596734004

`filter[A234472(n+2), A080764(#)]`
-/

namespace A385753.P9372413921596734004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080764 (f1 j).toNat = 1) n)

end

end A385753.P9372413921596734004

/-!
# A385755: Numbers k with a unique combination of bigomega(k) and sopfr(k).

The programs for A385755, there is no canonical definition to state claims against.
-/

/-! ## A385755.P6064814880253154265

`lt[A271950(n), A304669(A304669(n+1))]`
-/

namespace A385755.P6064814880253154265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304669 (A304669 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385755.P6064814880253154265

/-! ## A385755.P15235638944609214205

`lt[A126671(A130312(n+1)), A071574(n+1)]`
-/

namespace A385755.P15235638944609214205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126671 (A130312 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385755.P15235638944609214205

/-! ## A385755.P12088347184551490714

`lt[A019446(A294651(n+3)), A330698(2*n+1)]`
-/

namespace A385755.P12088347184551490714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A294651 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330698 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385755.P12088347184551490714

/-! ## A385755.P1158241178862208576

`lt[A004070(A011971(n)), A016754(n)]`
-/

namespace A385755.P1158241178862208576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (A011971 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385755.P1158241178862208576

/-! ## A385755.P13828997405406782128

`lt[A213887(A011971(n)), A004928(n)]`
-/

namespace A385755.P13828997405406782128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213887 (A011971 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A385755.P13828997405406782128

/-!
# A385757: a(n) is the smallest number having n smaller numbers with the same number of prime factors (counted with multiplicity).

The programs for A385757, there is no canonical definition to state claims against.
-/

/-! ## A385757.P12230754556011827114

`A269244(A324088(n+1))+A038179(n+2)`
-/

namespace A385757.P12230754556011827114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269244 (A324088 (n + 1)).toNat + A038179 (n + 2)

end

end A385757.P12230754556011827114

/-! ## A385757.P10959024004074603003

`A000040(n+2)-A359677(A077426(n+1))`
-/

namespace A385757.P10959024004074603003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A359677 (A077426 (n + 1)).toNat

end

end A385757.P10959024004074603003

/-! ## A385757.P11219289174435216252

`record[A190136(n+1)-A326152(3*n+2)]`
-/

namespace A385757.P11219289174435216252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190136 (n + 1) - A326152 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A385757.P11219289174435216252

/-! ## A385757.P14873900385706593908

`A065091(n+1)-A083025(A018028(n))`
-/

namespace A385757.P14873900385706593908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A083025 (A018028 n).toNat

end

end A385757.P14873900385706593908

/-!
# A385758: G.f. A(x) satisfies A(x) = 1/((1 - x) * (1 - x*A(x) - x^3*A''(x))).

The programs for A385758, there is no canonical definition to state claims against.
-/

/-! ## A385758.P13818750442466644581

`∑[A092599(a(n-1))+3]` with `a(0)=1, a(1)=1`
-/

namespace A385758.P13818750442466644581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A092599 (f1 (n - 1)).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385758.P13818750442466644581

/-!
# A385759: G.f. A(x) satisfies A(x) = 1/((1 - x) * (1 - x*A(x) - x^4*A'''(x))).

The programs for A385759, there is no canonical definition to state claims against.
-/

/-! ## A385759.P6799345244356252595

`A134643(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A385759.P6799345244356252595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A134643 (a (n - 1)).toNat

end

end A385759.P6799345244356252595

/-!
# A385762: G.f. A(x) satisfies A(x) = 1/(1 - x*A(x) - x^3*A''(x)).

The programs for A385762, there is no canonical definition to state claims against.
-/

/-! ## A385762.P5951285877338835467

`A156351(A048800(n)+A008687(n))`
-/

namespace A385762.P5951285877338835467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156351 (A048800 n + A008687 n).toNat

end

end A385762.P5951285877338835467

/-! ## A385762.P7195728990716195242

`A187857(A115600(n+1))-A333628(2*(n+1))`
-/

namespace A385762.P7195728990716195242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187857 (A115600 (n + 1)).toNat - A333628 (2 * (n + 1))

end

end A385762.P7195728990716195242

/-!
# A385763: G.f. A(x) satisfies A(x) = 1/(1 - x*A(x) - x^4*A'''(x)).

The programs for A385763, there is no canonical definition to state claims against.
-/

/-! ## A385763.P3804110276275008263

`A316313(A010060(n)+A007460(n))`
-/

namespace A385763.P3804110276275008263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316313 (A010060 n + A007460 n).toNat

end

end A385763.P3804110276275008263

/-! ## A385763.P14716178325431901930

`A316313(A091217(n)+A056242(n+1))`
-/

namespace A385763.P14716178325431901930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316313 (A091217 n + A056242 (n + 1)).toNat

end

end A385763.P14716178325431901930

/-!
# A385764: G.f. A(x) satisfies A(x) = 1/(1 - x*A(x) - x^5*A''''(x)).

The programs for A385764, there is no canonical definition to state claims against.
-/

/-! ## A385764.P11296034046514223025

`A124732(A249762(n))`
-/

namespace A385764.P11296034046514223025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124732 (A249762 n).toNat

end

end A385764.P11296034046514223025

/-! ## A385764.P6922489901199084919

`filter[A218020(2*n+1), A103451(#)]`
-/

namespace A385764.P6922489901199084919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218020 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103451 (f1 j).toNat = 1) n)

end

end A385764.P6922489901199084919

/-!
# A385765: G.f. A(x) satisfies A(x) = 1/(1 - x*A(x) - x^6*A'''''(x)).

The programs for A385765, there is no canonical definition to state claims against.
-/

/-! ## A385765.P9073241420908677003

`A008589(A052720(n))+A000108(n)`
-/

namespace A385765.P9073241420908677003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A052720 n).toNat + A000108 n

end

end A385765.P9073241420908677003

/-!
# A385766: G.f. A(x) satisfies A(x) = 1/((1 - x) * (1 - x*A(x)^2 - x^2*A(x)*A'(x))).

The programs for A385766, there is no canonical definition to state claims against.
-/

/-! ## A385766.P17036120268379335213

`∑[A065033(A015456(n)+n)]`
-/

namespace A385766.P17036120268379335213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A015456 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A385766.P17036120268379335213

/-!
# A385767: G.f. A(x) satisfies A(x) = 1/((1 - x) * (1 - x*A(x)^3 - x^2*A(x)^2*A'(x))).

The programs for A385767, there is no canonical definition to state claims against.
-/

/-! ## A385767.P7358414132731998160

`A088190(A167019(n))+n`
-/

namespace A385767.P7358414132731998160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088190 (A167019 n).toNat + (n : ℤ)

end

end A385767.P7358414132731998160

/-!
# A385768: Primes having only {0, 4, 9} as digits.

The programs for A385768, there is no canonical definition to state claims against.
-/

/-! ## A385768.P6171810821331044518

`∩[A386071(n+1), A386073(n+1)]`
-/

namespace A385768.P6171810821331044518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P6171810821331044518

/-! ## A385768.P16417333578200224318

`∩[A386071(n+1), A386076(n+1)]`
-/

namespace A385768.P16417333578200224318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P16417333578200224318

/-! ## A385768.P8988418296432139608

`∩[A386073(n+1), A386076(n+1)]`
-/

namespace A385768.P8988418296432139608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P8988418296432139608

/-! ## A385768.P2884441804593523067

`∩[A386048(n+1), A386071(n+1)]`
-/

namespace A385768.P2884441804593523067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P2884441804593523067

/-! ## A385768.P10387404141184419283

`∩[A386048(n+1), A386073(n+1)]`
-/

namespace A385768.P10387404141184419283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P10387404141184419283

/-! ## A385768.P8475756807270577572

`∩[A386048(n+1), A386076(n+1)]`
-/

namespace A385768.P8475756807270577572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P8475756807270577572

/-! ## A385768.P15106776412537027047

`∩[A386048(n+1), A386075(n+1)]`
-/

namespace A385768.P15106776412537027047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P15106776412537027047

/-! ## A385768.P1767696552608407028

`∩[A386071(n+1), A386075(n+1)]`
-/

namespace A385768.P1767696552608407028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P1767696552608407028

/-! ## A385768.P17225983943445241497

`∩[A386073(n+1), A386075(n+1)]`
-/

namespace A385768.P17225983943445241497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P17225983943445241497

/-! ## A385768.P12004247132151169651

`∩[A386075(n+1), A386076(n+1)]`
-/

namespace A385768.P12004247132151169651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P12004247132151169651

/-! ## A385768.P13541479764496372326

`∩[A061246(n+1), A386048(n+1)]`
-/

namespace A385768.P13541479764496372326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386048 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P13541479764496372326

/-! ## A385768.P12847662788257004346

`∩[A061246(n+1), A386071(n+1)]`
-/

namespace A385768.P12847662788257004346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P12847662788257004346

/-! ## A385768.P11116046295926939690

`∩[A061246(n+1), A386073(n+1)]`
-/

namespace A385768.P11116046295926939690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P11116046295926939690

/-! ## A385768.P3706064903199913769

`∩[A061246(n+1), A386075(n+1)]`
-/

namespace A385768.P3706064903199913769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P3706064903199913769

/-! ## A385768.P14627308759653673230

`∩[A061246(n+1), A386076(n+1)]`
-/

namespace A385768.P14627308759653673230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P14627308759653673230

/-! ## A385768.P4986478600589520349

`∩[A061246(n+1), A386060(n+1)]`
-/

namespace A385768.P4986478600589520349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P4986478600589520349

/-! ## A385768.P6192028444252579585

`∩[A386048(n+1), A386060(n+1)]`
-/

namespace A385768.P6192028444252579585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P6192028444252579585

/-! ## A385768.P623780268744425479

`∩[A386060(n+1), A386071(n+1)]`
-/

namespace A385768.P623780268744425479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P623780268744425479

/-! ## A385768.P2434258468069452353

`∩[A386060(n+1), A386073(n+1)]`
-/

namespace A385768.P2434258468069452353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P2434258468069452353

/-! ## A385768.P16207602434747649854

`∩[A386060(n+1), A386075(n+1)]`
-/

namespace A385768.P16207602434747649854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385768.P16207602434747649854

/-!
# A385769: Primes having only {0, 5, 9} as digits.

The programs for A385769, there is no canonical definition to state claims against.
-/

/-! ## A385769.P5141509988848827271

`∩[A386078(n+1), A386081(n+1)]`
-/

namespace A385769.P5141509988848827271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P5141509988848827271

/-! ## A385769.P227598181004904402

`∩[A386050(n+1), A386071(n+1)]`
-/

namespace A385769.P227598181004904402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P227598181004904402

/-! ## A385769.P2887236259514007003

`∩[A386050(n+1), A386078(n+1)]`
-/

namespace A385769.P2887236259514007003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P2887236259514007003

/-! ## A385769.P8079113781438938462

`∩[A386050(n+1), A386081(n+1)]`
-/

namespace A385769.P8079113781438938462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P8079113781438938462

/-! ## A385769.P17340628158359821712

`∩[A386071(n+1), A386078(n+1)]`
-/

namespace A385769.P17340628158359821712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P17340628158359821712

/-! ## A385769.P17859484534677833872

`∩[A386071(n+1), A386081(n+1)]`
-/

namespace A385769.P17859484534677833872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P17859484534677833872

/-! ## A385769.P4774083589796061853

`∩[A386050(n+1), A386080(n+1)]`
-/

namespace A385769.P4774083589796061853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P4774083589796061853

/-! ## A385769.P4845425721074776657

`∩[A386071(n+1), A386080(n+1)]`
-/

namespace A385769.P4845425721074776657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P4845425721074776657

/-! ## A385769.P287968118004991591

`∩[A386078(n+1), A386080(n+1)]`
-/

namespace A385769.P287968118004991591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P287968118004991591

/-! ## A385769.P4712520711438891841

`∩[A386080(n+1), A386081(n+1)]`
-/

namespace A385769.P4712520711438891841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P4712520711438891841

/-! ## A385769.P5928217047081229140

`∩[A386034(n+1), A386050(n+1)]`
-/

namespace A385769.P5928217047081229140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P5928217047081229140

/-! ## A385769.P18187187080692084819

`∩[A386034(n+1), A386071(n+1)]`
-/

namespace A385769.P18187187080692084819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P18187187080692084819

/-! ## A385769.P3073108716845796589

`∩[A386034(n+1), A386078(n+1)]`
-/

namespace A385769.P3073108716845796589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P3073108716845796589

/-! ## A385769.P2895887304647018140

`∩[A386034(n+1), A386080(n+1)]`
-/

namespace A385769.P2895887304647018140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P2895887304647018140

/-! ## A385769.P16646419321650135473

`∩[A386034(n+1), A386081(n+1)]`
-/

namespace A385769.P16646419321650135473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P16646419321650135473

/-! ## A385769.P959179180854190972

`∩[A386034(n+1), A386064(n+1)]`
-/

namespace A385769.P959179180854190972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P959179180854190972

/-! ## A385769.P8584549266811338373

`∩[A386050(n+1), A386064(n+1)]`
-/

namespace A385769.P8584549266811338373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P8584549266811338373

/-! ## A385769.P8304315690293477454

`∩[A386064(n+1), A386071(n+1)]`
-/

namespace A385769.P8304315690293477454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386071 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P8304315690293477454

/-! ## A385769.P8937643833002216464

`∩[A386064(n+1), A386078(n+1)]`
-/

namespace A385769.P8937643833002216464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P8937643833002216464

/-! ## A385769.P3587015533048421254

`∩[A386064(n+1), A386080(n+1)]`
-/

namespace A385769.P3587015533048421254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385769.P3587015533048421254

/-!
# A385770: Primes having only {0, 6, 7} as digits.

The programs for A385770, there is no canonical definition to state claims against.
-/

/-! ## A385770.P3008442295107852129

`∩[A386051(n+1), A386072(n+1)]`
-/

namespace A385770.P3008442295107852129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P3008442295107852129

/-! ## A385770.P12010557397501217856

`∩[A386051(n+1), A386077(n+1)]`
-/

namespace A385770.P12010557397501217856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P12010557397501217856

/-! ## A385770.P5815084580189881820

`∩[A386051(n+1), A386082(n+1)]`
-/

namespace A385770.P5815084580189881820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P5815084580189881820

/-! ## A385770.P9585346331537119933

`∩[A386072(n+1), A386077(n+1)]`
-/

namespace A385770.P9585346331537119933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P9585346331537119933

/-! ## A385770.P1818499164022688349

`∩[A386072(n+1), A386082(n+1)]`
-/

namespace A385770.P1818499164022688349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P1818499164022688349

/-! ## A385770.P5165057154506197890

`∩[A386077(n+1), A386082(n+1)]`
-/

namespace A385770.P5165057154506197890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P5165057154506197890

/-! ## A385770.P13890853228504833994

`∩[A386051(n+1), A386083(n+1)]`
-/

namespace A385770.P13890853228504833994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P13890853228504833994

/-! ## A385770.P3305646377332165155

`∩[A386072(n+1), A386083(n+1)]`
-/

namespace A385770.P3305646377332165155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P3305646377332165155

/-! ## A385770.P16613379419116723158

`∩[A386077(n+1), A386083(n+1)]`
-/

namespace A385770.P16613379419116723158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P16613379419116723158

/-! ## A385770.P4565316055359454740

`∩[A386082(n+1), A386083(n+1)]`
-/

namespace A385770.P4565316055359454740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P4565316055359454740

/-! ## A385770.P9602397861585552216

`∩[A386051(n+1), A386065(n+1)]`
-/

namespace A385770.P9602397861585552216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P9602397861585552216

/-! ## A385770.P8988030244827082369

`∩[A386065(n+1), A386072(n+1)]`
-/

namespace A385770.P8988030244827082369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P8988030244827082369

/-! ## A385770.P7708362725163436647

`∩[A386065(n+1), A386077(n+1)]`
-/

namespace A385770.P7708362725163436647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P7708362725163436647

/-! ## A385770.P6789624717807247781

`∩[A386065(n+1), A386082(n+1)]`
-/

namespace A385770.P6789624717807247781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P6789624717807247781

/-! ## A385770.P6587155421757671691

`∩[A386065(n+1), A386083(n+1)]`
-/

namespace A385770.P6587155421757671691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P6587155421757671691

/-! ## A385770.P581339549073502301

`∩[A386035(n+1), A386051(n+1)]`
-/

namespace A385770.P581339549073502301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386051 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P581339549073502301

/-! ## A385770.P14493118104891888256

`∩[A386035(n+1), A386065(n+1)]`
-/

namespace A385770.P14493118104891888256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P14493118104891888256

/-! ## A385770.P13428584702531522967

`∩[A386035(n+1), A386072(n+1)]`
-/

namespace A385770.P13428584702531522967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386072 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P13428584702531522967

/-! ## A385770.P16878565935531055467

`∩[A386035(n+1), A386077(n+1)]`
-/

namespace A385770.P16878565935531055467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P16878565935531055467

/-! ## A385770.P14504568983719391950

`∩[A386035(n+1), A386082(n+1)]`
-/

namespace A385770.P14504568983719391950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385770.P14504568983719391950

/-!
# A385771: Primes having only {0, 7, 8} as digits.

The programs for A385771, there is no canonical definition to state claims against.
-/

/-! ## A385771.P13386344417273100623

`∩[A386053(n+1), A386074(n+1)]`
-/

namespace A385771.P13386344417273100623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P13386344417273100623

/-! ## A385771.P3707482613400753869

`∩[A386053(n+1), A386079(n+1)]`
-/

namespace A385771.P3707482613400753869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P3707482613400753869

/-! ## A385771.P11430336447512916014

`∩[A386053(n+1), A386082(n+1)]`
-/

namespace A385771.P11430336447512916014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P11430336447512916014

/-! ## A385771.P13514719987467264578

`∩[A386074(n+1), A386079(n+1)]`
-/

namespace A385771.P13514719987467264578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P13514719987467264578

/-! ## A385771.P2477450611484640626

`∩[A386074(n+1), A386082(n+1)]`
-/

namespace A385771.P2477450611484640626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P2477450611484640626

/-! ## A385771.P2232084856000955669

`∩[A386079(n+1), A386082(n+1)]`
-/

namespace A385771.P2232084856000955669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P2232084856000955669

/-! ## A385771.P4416468041315945228

`∩[A386053(n+1), A386084(n+1)]`
-/

namespace A385771.P4416468041315945228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P4416468041315945228

/-! ## A385771.P13589712163528009443

`∩[A386074(n+1), A386084(n+1)]`
-/

namespace A385771.P13589712163528009443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P13589712163528009443

/-! ## A385771.P6174368874852712

`∩[A386079(n+1), A386084(n+1)]`
-/

namespace A385771.P6174368874852712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P6174368874852712

/-! ## A385771.P17907990225966585493

`∩[A386082(n+1), A386084(n+1)]`
-/

namespace A385771.P17907990225966585493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P17907990225966585493

/-! ## A385771.P10762607704369948897

`∩[A386053(n+1), A386067(n+1)]`
-/

namespace A385771.P10762607704369948897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P10762607704369948897

/-! ## A385771.P2271830570594430435

`∩[A386067(n+1), A386074(n+1)]`
-/

namespace A385771.P2271830570594430435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P2271830570594430435

/-! ## A385771.P10496830287567709276

`∩[A386067(n+1), A386079(n+1)]`
-/

namespace A385771.P10496830287567709276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P10496830287567709276

/-! ## A385771.P9591361298303258524

`∩[A386067(n+1), A386082(n+1)]`
-/

namespace A385771.P9591361298303258524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P9591361298303258524

/-! ## A385771.P801600482680095798

`∩[A386067(n+1), A386084(n+1)]`
-/

namespace A385771.P801600482680095798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P801600482680095798

/-! ## A385771.P4845791147337023819

`∩[A386038(n+1), A386053(n+1)]`
-/

namespace A385771.P4845791147337023819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386053 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P4845791147337023819

/-! ## A385771.P6087652085498304877

`∩[A386038(n+1), A386067(n+1)]`
-/

namespace A385771.P6087652085498304877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P6087652085498304877

/-! ## A385771.P7059093506584711843

`∩[A386038(n+1), A386074(n+1)]`
-/

namespace A385771.P7059093506584711843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P7059093506584711843

/-! ## A385771.P689025899412941842

`∩[A386038(n+1), A386079(n+1)]`
-/

namespace A385771.P689025899412941842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386079 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P689025899412941842

/-! ## A385771.P6705495066349634268

`∩[A386038(n+1), A386082(n+1)]`
-/

namespace A385771.P6705495066349634268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385771.P6705495066349634268

/-!
# A385772: Primes having only {0, 8, 9} as digits.

The programs for A385772, there is no canonical definition to state claims against.
-/

/-! ## A385772.P3917078081046248141

`∩[A053580(n+1), A386055(n+1)]`
-/

namespace A385772.P3917078081046248141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P3917078081046248141

/-! ## A385772.P7307329429509355682

`∩[A053580(n+1), A386076(n+1)]`
-/

namespace A385772.P7307329429509355682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P7307329429509355682

/-! ## A385772.P6762468263335427006

`∩[A053580(n+1), A386081(n+1)]`
-/

namespace A385772.P6762468263335427006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P6762468263335427006

/-! ## A385772.P10187433670718842688

`∩[A386055(n+1), A386076(n+1)]`
-/

namespace A385772.P10187433670718842688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P10187433670718842688

/-! ## A385772.P17357995558380427471

`∩[A386055(n+1), A386081(n+1)]`
-/

namespace A385772.P17357995558380427471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P17357995558380427471

/-! ## A385772.P776668123394227089

`∩[A386076(n+1), A386081(n+1)]`
-/

namespace A385772.P776668123394227089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P776668123394227089

/-! ## A385772.P14352724366558045203

`∩[A053580(n+1), A386084(n+1)]`
-/

namespace A385772.P14352724366558045203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P14352724366558045203

/-! ## A385772.P13731169815609419689

`∩[A386055(n+1), A386084(n+1)]`
-/

namespace A385772.P13731169815609419689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P13731169815609419689

/-! ## A385772.P11152206782631162193

`∩[A386076(n+1), A386084(n+1)]`
-/

namespace A385772.P11152206782631162193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P11152206782631162193

/-! ## A385772.P8011745464813408425

`∩[A386081(n+1), A386084(n+1)]`
-/

namespace A385772.P8011745464813408425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P8011745464813408425

/-! ## A385772.P10054396760651359266

`∩[A053580(n+1), A386069(n+1)]`
-/

namespace A385772.P10054396760651359266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P10054396760651359266

/-! ## A385772.P4248945261814428830

`∩[A386055(n+1), A386069(n+1)]`
-/

namespace A385772.P4248945261814428830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P4248945261814428830

/-! ## A385772.P14855677652247635191

`∩[A386069(n+1), A386076(n+1)]`
-/

namespace A385772.P14855677652247635191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P14855677652247635191

/-! ## A385772.P5899254425124054229

`∩[A386069(n+1), A386081(n+1)]`
-/

namespace A385772.P5899254425124054229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P5899254425124054229

/-! ## A385772.P17957053619561081359

`∩[A386069(n+1), A386084(n+1)]`
-/

namespace A385772.P17957053619561081359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P17957053619561081359

/-! ## A385772.P16766670328792815933

`∩[A053580(n+1), A386040(n+1)]`
-/

namespace A385772.P16766670328792815933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053580 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P16766670328792815933

/-! ## A385772.P5802194149882956685

`∩[A386040(n+1), A386055(n+1)]`
-/

namespace A385772.P5802194149882956685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P5802194149882956685

/-! ## A385772.P8255200112171401231

`∩[A386040(n+1), A386069(n+1)]`
-/

namespace A385772.P8255200112171401231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P8255200112171401231

/-! ## A385772.P16984042411350365333

`∩[A386040(n+1), A386076(n+1)]`
-/

namespace A385772.P16984042411350365333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P16984042411350365333

/-! ## A385772.P12704194433548078024

`∩[A386040(n+1), A386081(n+1)]`
-/

namespace A385772.P12704194433548078024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385772.P12704194433548078024

/-!
# A385773: Primes having only {1, 2, 5} as digits.

The programs for A385773, the canonical program `A385773.P2392214569970667758` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385773 has offset 1).

The definition of A385773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 781 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385773.P5132958279918530078

`∩[A386018(n+1), A386095(n+1)]`
-/

namespace A385773.P5132958279918530078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P5132958279918530078

namespace A385773

/-- `∩[A386018(n+1), A386095(n+1)]` -/
def P5132958279918530078.Spec : Prop :=
  ∀ n, (P5132958279918530078.a n : ℤ) = A385773 (n + 1)

end A385773

/-! ## A385773.P18315872334133999928

`∩[A386018(n+1), A386097(n+1)]`
-/

namespace A385773.P18315872334133999928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P18315872334133999928

namespace A385773

/-- `∩[A386018(n+1), A386097(n+1)]` -/
def P18315872334133999928.Spec : Prop :=
  ∀ n, (P18315872334133999928.a n : ℤ) = A385773 (n + 1)

end A385773

/-! ## A385773.P14730534351500645257

`∩[A386095(n+1), A386097(n+1)]`
-/

namespace A385773.P14730534351500645257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P14730534351500645257

namespace A385773

/-- `∩[A386095(n+1), A386097(n+1)]` -/
def P14730534351500645257.Spec : Prop :=
  ∀ n, (P14730534351500645257.a n : ℤ) = A385773 (n + 1)

end A385773

/-! ## A385773.P3563048217717135702

`∩[A386018(n+1), A386091(n+1)]`
-/

namespace A385773.P3563048217717135702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P3563048217717135702

namespace A385773

/-- `∩[A386018(n+1), A386091(n+1)]` -/
def P3563048217717135702.Spec : Prop :=
  ∀ n, (P3563048217717135702.a n : ℤ) = A385773 (n + 1)

end A385773

/-! ## A385773.P16816275166467524156

`∩[A386091(n+1), A386095(n+1)]`
-/

namespace A385773.P16816275166467524156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P16816275166467524156

namespace A385773

/-- `∩[A386091(n+1), A386095(n+1)]` -/
def P16816275166467524156.Spec : Prop :=
  ∀ n, (P16816275166467524156.a n : ℤ) = A385773 (n + 1)

end A385773

/-! ## A385773.P16937999477885985080

`∩[A386091(n+1), A386097(n+1)]`
-/

namespace A385773.P16937999477885985080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P16937999477885985080

namespace A385773

/-- `∩[A386091(n+1), A386097(n+1)]` -/
def P16937999477885985080.Spec : Prop :=
  ∀ n, (P16937999477885985080.a n : ℤ) = A385773 (n + 1)

end A385773

/-! ## A385773.P2392214569970667758

`∩[A386018(n+1), A386096(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A385773

/-- `∩[A386018(n+1), A386096(n+1)]` -/
def P2392214569970667758.Spec : Prop :=
  ∀ n, (P2392214569970667758.a n : ℤ) = A385773 (n + 1)

theorem P2392214569970667758.correct : P2392214569970667758.Spec := by
  intro n
  simp only [A385773, Nat.add_sub_cancel]

end A385773

/-! ## A385773.P18420979628823686896

`∩[A386018(n+1), A386098(n+1)]`
-/

namespace A385773.P18420979628823686896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P18420979628823686896

namespace A385773

/-- `∩[A386018(n+1), A386098(n+1)]` -/
def P18420979628823686896.Spec : Prop :=
  ∀ n, (P18420979628823686896.a n : ℤ) = A385773 (n + 1)

end A385773

/-! ## A385773.P3477951569160678361

`∩[A386091(n+1), A386096(n+1)]`
-/

namespace A385773.P3477951569160678361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P3477951569160678361

namespace A385773

/-- `∩[A386091(n+1), A386096(n+1)]` -/
def P3477951569160678361.Spec : Prop :=
  ∀ n, (P3477951569160678361.a n : ℤ) = A385773 (n + 1)

end A385773

/-! ## A385773.P11201210017356882920

`∩[A386091(n+1), A386098(n+1)]`
-/

namespace A385773.P11201210017356882920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P11201210017356882920

namespace A385773

/-- `∩[A386091(n+1), A386098(n+1)]` -/
def P11201210017356882920.Spec : Prop :=
  ∀ n, (P11201210017356882920.a n : ℤ) = A385773 (n + 1)

end A385773

/-! ## A385773.P15447941065647919257

`∩[A386095(n+1), A386096(n+1)]`
-/

namespace A385773.P15447941065647919257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P15447941065647919257

namespace A385773

/-- `∩[A386095(n+1), A386096(n+1)]` -/
def P15447941065647919257.Spec : Prop :=
  ∀ n, (P15447941065647919257.a n : ℤ) = A385773 (n + 1)

end A385773

/-! ## A385773.P10227387517889888224

`∩[A386095(n+1), A386098(n+1)]`
-/

namespace A385773.P10227387517889888224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P10227387517889888224

namespace A385773

/-- `∩[A386095(n+1), A386098(n+1)]` -/
def P10227387517889888224.Spec : Prop :=
  ∀ n, (P10227387517889888224.a n : ℤ) = A385773 (n + 1)

end A385773

/-! ## A385773.P2579696828980814149

`∩[A386096(n+1), A386097(n+1)]`
-/

namespace A385773.P2579696828980814149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P2579696828980814149

namespace A385773

/-- `∩[A386096(n+1), A386097(n+1)]` -/
def P2579696828980814149.Spec : Prop :=
  ∀ n, (P2579696828980814149.a n : ℤ) = A385773 (n + 1)

end A385773

/-! ## A385773.P18085113099192868815

`∩[A386096(n+1), A386098(n+1)]`
-/

namespace A385773.P18085113099192868815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P18085113099192868815

namespace A385773

/-- `∩[A386096(n+1), A386098(n+1)]` -/
def P18085113099192868815.Spec : Prop :=
  ∀ n, (P18085113099192868815.a n : ℤ) = A385773 (n + 1)

end A385773

/-! ## A385773.P15620168456560140840

`∩[A386097(n+1), A386098(n+1)]`
-/

namespace A385773.P15620168456560140840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P15620168456560140840

namespace A385773

/-- `∩[A386097(n+1), A386098(n+1)]` -/
def P15620168456560140840.Spec : Prop :=
  ∀ n, (P15620168456560140840.a n : ℤ) = A385773 (n + 1)

end A385773

/-! ## A385773.P5009667199379379428

`∩[A386018(n+1), A386086(n+1)]`
-/

namespace A385773.P5009667199379379428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P5009667199379379428

namespace A385773

/-- `∩[A386018(n+1), A386086(n+1)]` -/
def P5009667199379379428.Spec : Prop :=
  ∀ n, (P5009667199379379428.a n : ℤ) = A385773 (n + 1)

end A385773

/-! ## A385773.P10136765194462209463

`∩[A386086(n+1), A386091(n+1)]`
-/

namespace A385773.P10136765194462209463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P10136765194462209463

namespace A385773

/-- `∩[A386086(n+1), A386091(n+1)]` -/
def P10136765194462209463.Spec : Prop :=
  ∀ n, (P10136765194462209463.a n : ℤ) = A385773 (n + 1)

end A385773

/-! ## A385773.P16830202739036917015

`∩[A386086(n+1), A386095(n+1)]`
-/

namespace A385773.P16830202739036917015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P16830202739036917015

namespace A385773

/-- `∩[A386086(n+1), A386095(n+1)]` -/
def P16830202739036917015.Spec : Prop :=
  ∀ n, (P16830202739036917015.a n : ℤ) = A385773 (n + 1)

end A385773

/-! ## A385773.P6247756513042740612

`∩[A386086(n+1), A386096(n+1)]`
-/

namespace A385773.P6247756513042740612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P6247756513042740612

namespace A385773

/-- `∩[A386086(n+1), A386096(n+1)]` -/
def P6247756513042740612.Spec : Prop :=
  ∀ n, (P6247756513042740612.a n : ℤ) = A385773 (n + 1)

end A385773

/-! ## A385773.P5073145020438521882

`∩[A386086(n+1), A386097(n+1)]`
-/

namespace A385773.P5073145020438521882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385773.P5073145020438521882

namespace A385773

/-- `∩[A386086(n+1), A386097(n+1)]` -/
def P5073145020438521882.Spec : Prop :=
  ∀ n, (P5073145020438521882.a n : ℤ) = A385773 (n + 1)

end A385773

/-!
# A385774: Primes having only {1, 2, 6} as digits.

The programs for A385774, there is no canonical definition to state claims against.
-/

/-! ## A385774.P6285737481622926897

`∩[A386019(n+1), A386100(n+1)]`
-/

namespace A385774.P6285737481622926897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P6285737481622926897

/-! ## A385774.P9196626147258427364

`∩[A386019(n+1), A386095(n+1)]`
-/

namespace A385774.P9196626147258427364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P9196626147258427364

/-! ## A385774.P9329056632256134860

`∩[A386095(n+1), A386100(n+1)]`
-/

namespace A385774.P9329056632256134860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P9329056632256134860

/-! ## A385774.P3440535828654077809

`∩[A386019(n+1), A386092(n+1)]`
-/

namespace A385774.P3440535828654077809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P3440535828654077809

/-! ## A385774.P7417488256087407380

`∩[A386092(n+1), A386095(n+1)]`
-/

namespace A385774.P7417488256087407380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P7417488256087407380

/-! ## A385774.P3133607219276177111

`∩[A386092(n+1), A386100(n+1)]`
-/

namespace A385774.P3133607219276177111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P3133607219276177111

/-! ## A385774.P9925311607057565309

`∩[A386019(n+1), A386099(n+1)]`
-/

namespace A385774.P9925311607057565309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P9925311607057565309

/-! ## A385774.P17816260968337736987

`∩[A386019(n+1), A386101(n+1)]`
-/

namespace A385774.P17816260968337736987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P17816260968337736987

/-! ## A385774.P1172254352942402433

`∩[A386092(n+1), A386099(n+1)]`
-/

namespace A385774.P1172254352942402433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P1172254352942402433

/-! ## A385774.P7886312349152364937

`∩[A386092(n+1), A386101(n+1)]`
-/

namespace A385774.P7886312349152364937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P7886312349152364937

/-! ## A385774.P11091503595662072873

`∩[A386095(n+1), A386099(n+1)]`
-/

namespace A385774.P11091503595662072873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P11091503595662072873

/-! ## A385774.P12680880544535020064

`∩[A386095(n+1), A386101(n+1)]`
-/

namespace A385774.P12680880544535020064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P12680880544535020064

/-! ## A385774.P4775400784379715085

`∩[A386099(n+1), A386100(n+1)]`
-/

namespace A385774.P4775400784379715085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P4775400784379715085

/-! ## A385774.P17075700392126798246

`∩[A386099(n+1), A386101(n+1)]`
-/

namespace A385774.P17075700392126798246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P17075700392126798246

/-! ## A385774.P15439802317075029284

`∩[A386100(n+1), A386101(n+1)]`
-/

namespace A385774.P15439802317075029284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P15439802317075029284

/-! ## A385774.P8346100084140685192

`∩[A386019(n+1), A386087(n+1)]`
-/

namespace A385774.P8346100084140685192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P8346100084140685192

/-! ## A385774.P3193508630673278889

`∩[A386087(n+1), A386092(n+1)]`
-/

namespace A385774.P3193508630673278889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P3193508630673278889

/-! ## A385774.P1489545786613120001

`∩[A386087(n+1), A386095(n+1)]`
-/

namespace A385774.P1489545786613120001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P1489545786613120001

/-! ## A385774.P9931835258364836413

`∩[A386087(n+1), A386099(n+1)]`
-/

namespace A385774.P9931835258364836413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P9931835258364836413

/-! ## A385774.P17529428286742013439

`∩[A386087(n+1), A386100(n+1)]`
-/

namespace A385774.P17529428286742013439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385774.P17529428286742013439

/-!
# A385775: Primes having only {1, 2, 8} as digits.

The programs for A385775, there is no canonical definition to state claims against.
-/

/-! ## A385775.P8201890880979106778

`∩[A386021(n+1), A386097(n+1)]`
-/

namespace A385775.P8201890880979106778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P8201890880979106778

/-! ## A385775.P13726732613892010567

`∩[A386021(n+1), A386100(n+1)]`
-/

namespace A385775.P13726732613892010567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P13726732613892010567

/-! ## A385775.P10684605145040877952

`∩[A386097(n+1), A386100(n+1)]`
-/

namespace A385775.P10684605145040877952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P10684605145040877952

/-! ## A385775.P12120197370501573858

`∩[A383371(n+1), A386021(n+1)]`
-/

namespace A385775.P12120197370501573858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P12120197370501573858

/-! ## A385775.P12329183247333865003

`∩[A383371(n+1), A386097(n+1)]`
-/

namespace A385775.P12329183247333865003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P12329183247333865003

/-! ## A385775.P3515067942416247047

`∩[A383371(n+1), A386100(n+1)]`
-/

namespace A385775.P3515067942416247047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P3515067942416247047

/-! ## A385775.P7326780532591012907

`∩[A383371(n+1), A386104(n+1)]`
-/

namespace A385775.P7326780532591012907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P7326780532591012907

/-! ## A385775.P5115377719615279645

`∩[A386021(n+1), A386104(n+1)]`
-/

namespace A385775.P5115377719615279645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P5115377719615279645

/-! ## A385775.P4469332105738836505

`∩[A386097(n+1), A386104(n+1)]`
-/

namespace A385775.P4469332105738836505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P4469332105738836505

/-! ## A385775.P11699506517018817678

`∩[A386100(n+1), A386104(n+1)]`
-/

namespace A385775.P11699506517018817678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P11699506517018817678

/-! ## A385775.P4735922440183159925

`∩[A383371(n+1), A386102(n+1)]`
-/

namespace A385775.P4735922440183159925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P4735922440183159925

/-! ## A385775.P1559403010352988512

`∩[A386021(n+1), A386102(n+1)]`
-/

namespace A385775.P1559403010352988512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P1559403010352988512

/-! ## A385775.P13365841254257631253

`∩[A386097(n+1), A386102(n+1)]`
-/

namespace A385775.P13365841254257631253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P13365841254257631253

/-! ## A385775.P3057079340162882160

`∩[A386100(n+1), A386102(n+1)]`
-/

namespace A385775.P3057079340162882160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P3057079340162882160

/-! ## A385775.P2187029498702356122

`∩[A386102(n+1), A386104(n+1)]`
-/

namespace A385775.P2187029498702356122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P2187029498702356122

/-! ## A385775.P6379563820714612164

`∩[A383371(n+1), A386089(n+1)]`
-/

namespace A385775.P6379563820714612164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P6379563820714612164

/-! ## A385775.P7602895351182713671

`∩[A386021(n+1), A386089(n+1)]`
-/

namespace A385775.P7602895351182713671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P7602895351182713671

/-! ## A385775.P12883130123460498440

`∩[A386089(n+1), A386097(n+1)]`
-/

namespace A385775.P12883130123460498440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P12883130123460498440

/-! ## A385775.P7907013813885246903

`∩[A386089(n+1), A386100(n+1)]`
-/

namespace A385775.P7907013813885246903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P7907013813885246903

/-! ## A385775.P9554575909248402032

`∩[A386089(n+1), A386102(n+1)]`
-/

namespace A385775.P9554575909248402032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385775.P9554575909248402032

/-!
# A385776: Primes having only {1, 2, 9} as digits.

The programs for A385776, there is no canonical definition to state claims against.
-/

/-! ## A385776.P14072024273413062886

`∩[A386022(n+1), A386098(n+1)]`
-/

namespace A385776.P14072024273413062886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P14072024273413062886

/-! ## A385776.P16975060501802120478

`∩[A386022(n+1), A386094(n+1)]`
-/

namespace A385776.P16975060501802120478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P16975060501802120478

/-! ## A385776.P4444033403385115172

`∩[A386094(n+1), A386098(n+1)]`
-/

namespace A385776.P4444033403385115172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P4444033403385115172

/-! ## A385776.P9706762798467767889

`∩[A386022(n+1), A386101(n+1)]`
-/

namespace A385776.P9706762798467767889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P9706762798467767889

/-! ## A385776.P9781732820841591684

`∩[A386094(n+1), A386101(n+1)]`
-/

namespace A385776.P9781732820841591684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P9781732820841591684

/-! ## A385776.P13236366667805404408

`∩[A386098(n+1), A386101(n+1)]`
-/

namespace A385776.P13236366667805404408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P13236366667805404408

/-! ## A385776.P281893500311327565

`∩[A386022(n+1), A386104(n+1)]`
-/

namespace A385776.P281893500311327565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P281893500311327565

/-! ## A385776.P343766012682759853

`∩[A386094(n+1), A386104(n+1)]`
-/

namespace A385776.P343766012682759853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P343766012682759853

/-! ## A385776.P16331595267052093042

`∩[A386098(n+1), A386104(n+1)]`
-/

namespace A385776.P16331595267052093042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P16331595267052093042

/-! ## A385776.P3972759377560539691

`∩[A386101(n+1), A386104(n+1)]`
-/

namespace A385776.P3972759377560539691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P3972759377560539691

/-! ## A385776.P1438630551579088452

`∩[A386022(n+1), A386103(n+1)]`
-/

namespace A385776.P1438630551579088452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P1438630551579088452

/-! ## A385776.P754853423784726098

`∩[A386094(n+1), A386103(n+1)]`
-/

namespace A385776.P754853423784726098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P754853423784726098

/-! ## A385776.P14551746310948686110

`∩[A386098(n+1), A386103(n+1)]`
-/

namespace A385776.P14551746310948686110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P14551746310948686110

/-! ## A385776.P8744694413120854665

`∩[A386101(n+1), A386103(n+1)]`
-/

namespace A385776.P8744694413120854665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P8744694413120854665

/-! ## A385776.P2708485729757307060

`∩[A386103(n+1), A386104(n+1)]`
-/

namespace A385776.P2708485729757307060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P2708485729757307060

/-! ## A385776.P13438056195892150511

`∩[A386022(n+1), A386090(n+1)]`
-/

namespace A385776.P13438056195892150511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P13438056195892150511

/-! ## A385776.P17189554245298475865

`∩[A386090(n+1), A386094(n+1)]`
-/

namespace A385776.P17189554245298475865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P17189554245298475865

/-! ## A385776.P6233178335754094768

`∩[A386090(n+1), A386098(n+1)]`
-/

namespace A385776.P6233178335754094768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P6233178335754094768

/-! ## A385776.P9015430436077472682

`∩[A386090(n+1), A386101(n+1)]`
-/

namespace A385776.P9015430436077472682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P9015430436077472682

/-! ## A385776.P6971699896131427638

`∩[A386090(n+1), A386103(n+1)]`
-/

namespace A385776.P6971699896131427638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386103 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385776.P6971699896131427638

/-!
# A385777: Primes having only {1, 3, 6} as digits.

The programs for A385777, the canonical program `A385777.P3819637133373039858` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385777 has offset 1).

The definition of A385777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1418 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385777.P15427143528540800340

`∩[A111488(n+1), A386115(n+1)]`
-/

namespace A385777.P15427143528540800340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P15427143528540800340

namespace A385777

/-- `∩[A111488(n+1), A386115(n+1)]` -/
def P15427143528540800340.Spec : Prop :=
  ∀ n, (P15427143528540800340.a n : ℤ) = A385777 (n + 1)

end A385777

/-! ## A385777.P18305906468789481998

`∩[A111488(n+1), A386106(n+1)]`
-/

namespace A385777.P18305906468789481998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P18305906468789481998

namespace A385777

/-- `∩[A111488(n+1), A386106(n+1)]` -/
def P18305906468789481998.Spec : Prop :=
  ∀ n, (P18305906468789481998.a n : ℤ) = A385777 (n + 1)

end A385777

/-! ## A385777.P9956462744046853000

`∩[A386106(n+1), A386115(n+1)]`
-/

namespace A385777.P9956462744046853000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P9956462744046853000

namespace A385777

/-- `∩[A386106(n+1), A386115(n+1)]` -/
def P9956462744046853000.Spec : Prop :=
  ∀ n, (P9956462744046853000.a n : ℤ) = A385777 (n + 1)

end A385777

/-! ## A385777.P5687512618589762274

`∩[A111488(n+1), A386087(n+1)]`
-/

namespace A385777.P5687512618589762274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P5687512618589762274

namespace A385777

/-- `∩[A111488(n+1), A386087(n+1)]` -/
def P5687512618589762274.Spec : Prop :=
  ∀ n, (P5687512618589762274.a n : ℤ) = A385777 (n + 1)

end A385777

/-! ## A385777.P4985894684804278267

`∩[A111488(n+1), A386110(n+1)]`
-/

namespace A385777.P4985894684804278267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P4985894684804278267

namespace A385777

/-- `∩[A111488(n+1), A386110(n+1)]` -/
def P4985894684804278267.Spec : Prop :=
  ∀ n, (P4985894684804278267.a n : ℤ) = A385777 (n + 1)

end A385777

/-! ## A385777.P3819637133373039858

`∩[A386087(n+1), A386106(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A385777

/-- `∩[A386087(n+1), A386106(n+1)]` -/
def P3819637133373039858.Spec : Prop :=
  ∀ n, (P3819637133373039858.a n : ℤ) = A385777 (n + 1)

theorem P3819637133373039858.correct : P3819637133373039858.Spec := by
  intro n
  simp only [A385777, Nat.add_sub_cancel]

end A385777

/-! ## A385777.P11135104224020490862

`∩[A386087(n+1), A386110(n+1)]`
-/

namespace A385777.P11135104224020490862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P11135104224020490862

namespace A385777

/-- `∩[A386087(n+1), A386110(n+1)]` -/
def P11135104224020490862.Spec : Prop :=
  ∀ n, (P11135104224020490862.a n : ℤ) = A385777 (n + 1)

end A385777

/-! ## A385777.P9883570591225546438

`∩[A386087(n+1), A386115(n+1)]`
-/

namespace A385777.P9883570591225546438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P9883570591225546438

namespace A385777

/-- `∩[A386087(n+1), A386115(n+1)]` -/
def P9883570591225546438.Spec : Prop :=
  ∀ n, (P9883570591225546438.a n : ℤ) = A385777 (n + 1)

end A385777

/-! ## A385777.P16680322370680070825

`∩[A386106(n+1), A386110(n+1)]`
-/

namespace A385777.P16680322370680070825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P16680322370680070825

namespace A385777

/-- `∩[A386106(n+1), A386110(n+1)]` -/
def P16680322370680070825.Spec : Prop :=
  ∀ n, (P16680322370680070825.a n : ℤ) = A385777 (n + 1)

end A385777

/-! ## A385777.P11653009028528882991

`∩[A386110(n+1), A386115(n+1)]`
-/

namespace A385777.P11653009028528882991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P11653009028528882991

namespace A385777

/-- `∩[A386110(n+1), A386115(n+1)]` -/
def P11653009028528882991.Spec : Prop :=
  ∀ n, (P11653009028528882991.a n : ℤ) = A385777 (n + 1)

end A385777

/-! ## A385777.P2614667612299357350

`∩[A111488(n+1), A386114(n+1)]`
-/

namespace A385777.P2614667612299357350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P2614667612299357350

namespace A385777

/-- `∩[A111488(n+1), A386114(n+1)]` -/
def P2614667612299357350.Spec : Prop :=
  ∀ n, (P2614667612299357350.a n : ℤ) = A385777 (n + 1)

end A385777

/-! ## A385777.P11918954782571973280

`∩[A386087(n+1), A386114(n+1)]`
-/

namespace A385777.P11918954782571973280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P11918954782571973280

namespace A385777

/-- `∩[A386087(n+1), A386114(n+1)]` -/
def P11918954782571973280.Spec : Prop :=
  ∀ n, (P11918954782571973280.a n : ℤ) = A385777 (n + 1)

end A385777

/-! ## A385777.P8299313150565424730

`∩[A386106(n+1), A386114(n+1)]`
-/

namespace A385777.P8299313150565424730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P8299313150565424730

namespace A385777

/-- `∩[A386106(n+1), A386114(n+1)]` -/
def P8299313150565424730.Spec : Prop :=
  ∀ n, (P8299313150565424730.a n : ℤ) = A385777 (n + 1)

end A385777

/-! ## A385777.P14449660744473013115

`∩[A386110(n+1), A386114(n+1)]`
-/

namespace A385777.P14449660744473013115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P14449660744473013115

namespace A385777

/-- `∩[A386110(n+1), A386114(n+1)]` -/
def P14449660744473013115.Spec : Prop :=
  ∀ n, (P14449660744473013115.a n : ℤ) = A385777 (n + 1)

end A385777

/-! ## A385777.P10612556609783456966

`∩[A386114(n+1), A386115(n+1)]`
-/

namespace A385777.P10612556609783456966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P10612556609783456966

namespace A385777

/-- `∩[A386114(n+1), A386115(n+1)]` -/
def P10612556609783456966.Spec : Prop :=
  ∀ n, (P10612556609783456966.a n : ℤ) = A385777 (n + 1)

end A385777

/-! ## A385777.P14673434087860377747

`∩[A111488(n+1), A386116(n+1)]`
-/

namespace A385777.P14673434087860377747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P14673434087860377747

namespace A385777

/-- `∩[A111488(n+1), A386116(n+1)]` -/
def P14673434087860377747.Spec : Prop :=
  ∀ n, (P14673434087860377747.a n : ℤ) = A385777 (n + 1)

end A385777

/-! ## A385777.P3196820322580500198

`∩[A386087(n+1), A386116(n+1)]`
-/

namespace A385777.P3196820322580500198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P3196820322580500198

namespace A385777

/-- `∩[A386087(n+1), A386116(n+1)]` -/
def P3196820322580500198.Spec : Prop :=
  ∀ n, (P3196820322580500198.a n : ℤ) = A385777 (n + 1)

end A385777

/-! ## A385777.P7160028601612478897

`∩[A386106(n+1), A386116(n+1)]`
-/

namespace A385777.P7160028601612478897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P7160028601612478897

namespace A385777

/-- `∩[A386106(n+1), A386116(n+1)]` -/
def P7160028601612478897.Spec : Prop :=
  ∀ n, (P7160028601612478897.a n : ℤ) = A385777 (n + 1)

end A385777

/-! ## A385777.P8382002495088865972

`∩[A386110(n+1), A386116(n+1)]`
-/

namespace A385777.P8382002495088865972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P8382002495088865972

namespace A385777

/-- `∩[A386110(n+1), A386116(n+1)]` -/
def P8382002495088865972.Spec : Prop :=
  ∀ n, (P8382002495088865972.a n : ℤ) = A385777 (n + 1)

end A385777

/-! ## A385777.P8534117879686551033

`∩[A386114(n+1), A386116(n+1)]`
-/

namespace A385777.P8534117879686551033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385777.P8534117879686551033

namespace A385777

/-- `∩[A386114(n+1), A386116(n+1)]` -/
def P8534117879686551033.Spec : Prop :=
  ∀ n, (P8534117879686551033.a n : ℤ) = A385777 (n + 1)

end A385777

/-!
# A385778: Primes having only {1, 3, 8} as digits.

The programs for A385778, there is no canonical definition to state claims against.
-/

/-! ## A385778.P3269159037200736373

`∩[A125308(n+1), A386108(n+1)]`
-/

namespace A385778.P3269159037200736373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P3269159037200736373

/-! ## A385778.P1722336892469375132

`∩[A125308(n+1), A386115(n+1)]`
-/

namespace A385778.P1722336892469375132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P1722336892469375132

/-! ## A385778.P8105013272381276559

`∩[A386108(n+1), A386115(n+1)]`
-/

namespace A385778.P8105013272381276559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P8105013272381276559

/-! ## A385778.P7687515033164345419

`∩[A125308(n+1), A386112(n+1)]`
-/

namespace A385778.P7687515033164345419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P7687515033164345419

/-! ## A385778.P5080145937943163391

`∩[A386108(n+1), A386112(n+1)]`
-/

namespace A385778.P5080145937943163391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P5080145937943163391

/-! ## A385778.P8313752743723790484

`∩[A386112(n+1), A386115(n+1)]`
-/

namespace A385778.P8313752743723790484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P8313752743723790484

/-! ## A385778.P17624505712672480445

`∩[A125308(n+1), A386089(n+1)]`
-/

namespace A385778.P17624505712672480445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P17624505712672480445

/-! ## A385778.P8357477084753931224

`∩[A386089(n+1), A386108(n+1)]`
-/

namespace A385778.P8357477084753931224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P8357477084753931224

/-! ## A385778.P11310609451602070746

`∩[A386089(n+1), A386112(n+1)]`
-/

namespace A385778.P11310609451602070746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P11310609451602070746

/-! ## A385778.P478973629433819316

`∩[A386089(n+1), A386115(n+1)]`
-/

namespace A385778.P478973629433819316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P478973629433819316

/-! ## A385778.P13760865881753121309

`∩[A125308(n+1), A386118(n+1)]`
-/

namespace A385778.P13760865881753121309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P13760865881753121309

/-! ## A385778.P15585419189255270718

`∩[A386089(n+1), A386118(n+1)]`
-/

namespace A385778.P15585419189255270718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P15585419189255270718

/-! ## A385778.P14696897098362985671

`∩[A386108(n+1), A386118(n+1)]`
-/

namespace A385778.P14696897098362985671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P14696897098362985671

/-! ## A385778.P15795349026733940975

`∩[A386112(n+1), A386118(n+1)]`
-/

namespace A385778.P15795349026733940975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P15795349026733940975

/-! ## A385778.P5948928246244343692

`∩[A386115(n+1), A386118(n+1)]`
-/

namespace A385778.P5948928246244343692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P5948928246244343692

/-! ## A385778.P8630442765752702702

`∩[A125308(n+1), A386117(n+1)]`
-/

namespace A385778.P8630442765752702702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P8630442765752702702

/-! ## A385778.P1420046700205712269

`∩[A386089(n+1), A386117(n+1)]`
-/

namespace A385778.P1420046700205712269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P1420046700205712269

/-! ## A385778.P9255670952039570206

`∩[A386108(n+1), A386117(n+1)]`
-/

namespace A385778.P9255670952039570206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386108 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P9255670952039570206

/-! ## A385778.P18242823323470156203

`∩[A386112(n+1), A386117(n+1)]`
-/

namespace A385778.P18242823323470156203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P18242823323470156203

/-! ## A385778.P5857980260346439578

`∩[A386115(n+1), A386117(n+1)]`
-/

namespace A385778.P5857980260346439578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385778.P5857980260346439578

/-!
# A385779: Primes having only {1, 5, 6} as digits.

The programs for A385779, there is no canonical definition to state claims against.
-/

/-! ## A385779.P1346814160094083173

`∩[A386031(n+1), A386130(n+1)]`
-/

namespace A385779.P1346814160094083173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P1346814160094083173

/-! ## A385779.P3013972903889293164

`∩[A386031(n+1), A386119(n+1)]`
-/

namespace A385779.P3013972903889293164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P3013972903889293164

/-! ## A385779.P17856642666825606468

`∩[A386119(n+1), A386130(n+1)]`
-/

namespace A385779.P17856642666825606468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P17856642666825606468

/-! ## A385779.P16679280093342634337

`∩[A386031(n+1), A386095(n+1)]`
-/

namespace A385779.P16679280093342634337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P16679280093342634337

/-! ## A385779.P4774586339039619785

`∩[A386095(n+1), A386119(n+1)]`
-/

namespace A385779.P4774586339039619785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P4774586339039619785

/-! ## A385779.P13840031670411019640

`∩[A386095(n+1), A386130(n+1)]`
-/

namespace A385779.P13840031670411019640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P13840031670411019640

/-! ## A385779.P6937910281685092538

`∩[A386031(n+1), A386129(n+1)]`
-/

namespace A385779.P6937910281685092538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P6937910281685092538

/-! ## A385779.P9893418945901769581

`∩[A386031(n+1), A386131(n+1)]`
-/

namespace A385779.P9893418945901769581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P9893418945901769581

/-! ## A385779.P8917793488136809364

`∩[A386095(n+1), A386129(n+1)]`
-/

namespace A385779.P8917793488136809364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P8917793488136809364

/-! ## A385779.P3562707029010054206

`∩[A386095(n+1), A386131(n+1)]`
-/

namespace A385779.P3562707029010054206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P3562707029010054206

/-! ## A385779.P4050316923932263273

`∩[A386119(n+1), A386129(n+1)]`
-/

namespace A385779.P4050316923932263273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P4050316923932263273

/-! ## A385779.P18076311755256433191

`∩[A386119(n+1), A386131(n+1)]`
-/

namespace A385779.P18076311755256433191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P18076311755256433191

/-! ## A385779.P16719941671997320083

`∩[A386129(n+1), A386130(n+1)]`
-/

namespace A385779.P16719941671997320083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P16719941671997320083

/-! ## A385779.P14479496656917549733

`∩[A386129(n+1), A386131(n+1)]`
-/

namespace A385779.P14479496656917549733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P14479496656917549733

/-! ## A385779.P16376770210515770792

`∩[A386130(n+1), A386131(n+1)]`
-/

namespace A385779.P16376770210515770792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P16376770210515770792

/-! ## A385779.P465097285617751276

`∩[A386031(n+1), A386110(n+1)]`
-/

namespace A385779.P465097285617751276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P465097285617751276

/-! ## A385779.P11411985961256339975

`∩[A386095(n+1), A386110(n+1)]`
-/

namespace A385779.P11411985961256339975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P11411985961256339975

/-! ## A385779.P9508866180321764770

`∩[A386110(n+1), A386119(n+1)]`
-/

namespace A385779.P9508866180321764770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P9508866180321764770

/-! ## A385779.P6419970309574702905

`∩[A386110(n+1), A386129(n+1)]`
-/

namespace A385779.P6419970309574702905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P6419970309574702905

/-! ## A385779.P10664764444549899849

`∩[A386110(n+1), A386130(n+1)]`
-/

namespace A385779.P10664764444549899849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385779.P10664764444549899849

/-!
# A385780: Primes having only {1, 5, 8} as digits.

The programs for A385780, there is no canonical definition to state claims against.
-/

/-! ## A385780.P3354079654336171400

`∩[A386033(n+1), A386130(n+1)]`
-/

namespace A385780.P3354079654336171400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P3354079654336171400

/-! ## A385780.P4967413250299369680

`∩[A386033(n+1), A386097(n+1)]`
-/

namespace A385780.P4967413250299369680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P4967413250299369680

/-! ## A385780.P13836396868188250293

`∩[A386033(n+1), A386121(n+1)]`
-/

namespace A385780.P13836396868188250293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P13836396868188250293

/-! ## A385780.P16561567156776543806

`∩[A386097(n+1), A386121(n+1)]`
-/

namespace A385780.P16561567156776543806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P16561567156776543806

/-! ## A385780.P7093224231556292698

`∩[A386097(n+1), A386130(n+1)]`
-/

namespace A385780.P7093224231556292698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P7093224231556292698

/-! ## A385780.P14321672745478629877

`∩[A386121(n+1), A386130(n+1)]`
-/

namespace A385780.P14321672745478629877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P14321672745478629877

/-! ## A385780.P2002528694775145995

`∩[A386033(n+1), A386134(n+1)]`
-/

namespace A385780.P2002528694775145995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P2002528694775145995

/-! ## A385780.P13933735023044455959

`∩[A386097(n+1), A386134(n+1)]`
-/

namespace A385780.P13933735023044455959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P13933735023044455959

/-! ## A385780.P55373775193519435

`∩[A386121(n+1), A386134(n+1)]`
-/

namespace A385780.P55373775193519435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P55373775193519435

/-! ## A385780.P7185635976543139814

`∩[A386130(n+1), A386134(n+1)]`
-/

namespace A385780.P7185635976543139814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P7185635976543139814

/-! ## A385780.P5269476215414254449

`∩[A386033(n+1), A386112(n+1)]`
-/

namespace A385780.P5269476215414254449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P5269476215414254449

/-! ## A385780.P1465029059760557625

`∩[A386033(n+1), A386132(n+1)]`
-/

namespace A385780.P1465029059760557625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P1465029059760557625

/-! ## A385780.P14846502413907051635

`∩[A386097(n+1), A386112(n+1)]`
-/

namespace A385780.P14846502413907051635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P14846502413907051635

/-! ## A385780.P13196489658545632538

`∩[A386097(n+1), A386132(n+1)]`
-/

namespace A385780.P13196489658545632538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P13196489658545632538

/-! ## A385780.P12429642989737613829

`∩[A386112(n+1), A386121(n+1)]`
-/

namespace A385780.P12429642989737613829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P12429642989737613829

/-! ## A385780.P9211937545831244330

`∩[A386112(n+1), A386130(n+1)]`
-/

namespace A385780.P9211937545831244330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P9211937545831244330

/-! ## A385780.P2410432167532896654

`∩[A386112(n+1), A386132(n+1)]`
-/

namespace A385780.P2410432167532896654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P2410432167532896654

/-! ## A385780.P8179273983854720442

`∩[A386112(n+1), A386134(n+1)]`
-/

namespace A385780.P8179273983854720442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386112 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P8179273983854720442

/-! ## A385780.P11312941402147451304

`∩[A386121(n+1), A386132(n+1)]`
-/

namespace A385780.P11312941402147451304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P11312941402147451304

/-! ## A385780.P8325320291143978645

`∩[A386130(n+1), A386132(n+1)]`
-/

namespace A385780.P8325320291143978645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386132 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385780.P8325320291143978645

/-!
# A385781: Primes having only {1, 5, 9} as digits.

The programs for A385781, the canonical program `A385781.P14896123236242491509` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385781 has offset 1).

The definition of A385781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1084 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385781.P1294588350514679904

`∩[A386034(n+1), A386134(n+1)]`
-/

namespace A385781.P1294588350514679904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P1294588350514679904

namespace A385781

/-- `∩[A386034(n+1), A386134(n+1)]` -/
def P1294588350514679904.Spec : Prop :=
  ∀ n, (P1294588350514679904.a n : ℤ) = A385781 (n + 1)

end A385781

/-! ## A385781.P13335227680981460105

`∩[A386034(n+1), A386098(n+1)]`
-/

namespace A385781.P13335227680981460105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P13335227680981460105

namespace A385781

/-- `∩[A386034(n+1), A386098(n+1)]` -/
def P13335227680981460105.Spec : Prop :=
  ∀ n, (P13335227680981460105.a n : ℤ) = A385781 (n + 1)

end A385781

/-! ## A385781.P2723825402699785388

`∩[A386098(n+1), A386134(n+1)]`
-/

namespace A385781.P2723825402699785388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P2723825402699785388

namespace A385781

/-- `∩[A386098(n+1), A386134(n+1)]` -/
def P2723825402699785388.Spec : Prop :=
  ∀ n, (P2723825402699785388.a n : ℤ) = A385781 (n + 1)

end A385781

/-! ## A385781.P10726255037814065734

`∩[A386034(n+1), A386131(n+1)]`
-/

namespace A385781.P10726255037814065734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P10726255037814065734

namespace A385781

/-- `∩[A386034(n+1), A386131(n+1)]` -/
def P10726255037814065734.Spec : Prop :=
  ∀ n, (P10726255037814065734.a n : ℤ) = A385781 (n + 1)

end A385781

/-! ## A385781.P3595145638929283951

`∩[A386098(n+1), A386131(n+1)]`
-/

namespace A385781.P3595145638929283951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P3595145638929283951

namespace A385781

/-- `∩[A386098(n+1), A386131(n+1)]` -/
def P3595145638929283951.Spec : Prop :=
  ∀ n, (P3595145638929283951.a n : ℤ) = A385781 (n + 1)

end A385781

/-! ## A385781.P4243697602031066477

`∩[A386131(n+1), A386134(n+1)]`
-/

namespace A385781.P4243697602031066477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P4243697602031066477

namespace A385781

/-- `∩[A386131(n+1), A386134(n+1)]` -/
def P4243697602031066477.Spec : Prop :=
  ∀ n, (P4243697602031066477.a n : ℤ) = A385781 (n + 1)

end A385781

/-! ## A385781.P17694797212262321907

`∩[A386034(n+1), A386122(n+1)]`
-/

namespace A385781.P17694797212262321907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P17694797212262321907

namespace A385781

/-- `∩[A386034(n+1), A386122(n+1)]` -/
def P17694797212262321907.Spec : Prop :=
  ∀ n, (P17694797212262321907.a n : ℤ) = A385781 (n + 1)

end A385781

/-! ## A385781.P9360164906027653385

`∩[A386098(n+1), A386122(n+1)]`
-/

namespace A385781.P9360164906027653385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P9360164906027653385

namespace A385781

/-- `∩[A386098(n+1), A386122(n+1)]` -/
def P9360164906027653385.Spec : Prop :=
  ∀ n, (P9360164906027653385.a n : ℤ) = A385781 (n + 1)

end A385781

/-! ## A385781.P14248470705543926406

`∩[A386122(n+1), A386131(n+1)]`
-/

namespace A385781.P14248470705543926406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P14248470705543926406

namespace A385781

/-- `∩[A386122(n+1), A386131(n+1)]` -/
def P14248470705543926406.Spec : Prop :=
  ∀ n, (P14248470705543926406.a n : ℤ) = A385781 (n + 1)

end A385781

/-! ## A385781.P12735971962849630089

`∩[A386122(n+1), A386134(n+1)]`
-/

namespace A385781.P12735971962849630089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P12735971962849630089

namespace A385781

/-- `∩[A386122(n+1), A386134(n+1)]` -/
def P12735971962849630089.Spec : Prop :=
  ∀ n, (P12735971962849630089.a n : ℤ) = A385781 (n + 1)

end A385781

/-! ## A385781.P14896123236242491509

`∩[A386034(n+1), A386133(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A385781

/-- `∩[A386034(n+1), A386133(n+1)]` -/
def P14896123236242491509.Spec : Prop :=
  ∀ n, (P14896123236242491509.a n : ℤ) = A385781 (n + 1)

theorem P14896123236242491509.correct : P14896123236242491509.Spec := by
  intro n
  simp only [A385781, Nat.add_sub_cancel]

end A385781

/-! ## A385781.P776326074777444705

`∩[A386098(n+1), A386133(n+1)]`
-/

namespace A385781.P776326074777444705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P776326074777444705

namespace A385781

/-- `∩[A386098(n+1), A386133(n+1)]` -/
def P776326074777444705.Spec : Prop :=
  ∀ n, (P776326074777444705.a n : ℤ) = A385781 (n + 1)

end A385781

/-! ## A385781.P3132979909901075254

`∩[A386122(n+1), A386133(n+1)]`
-/

namespace A385781.P3132979909901075254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P3132979909901075254

namespace A385781

/-- `∩[A386122(n+1), A386133(n+1)]` -/
def P3132979909901075254.Spec : Prop :=
  ∀ n, (P3132979909901075254.a n : ℤ) = A385781 (n + 1)

end A385781

/-! ## A385781.P16482441346210923403

`∩[A386131(n+1), A386133(n+1)]`
-/

namespace A385781.P16482441346210923403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P16482441346210923403

namespace A385781

/-- `∩[A386131(n+1), A386133(n+1)]` -/
def P16482441346210923403.Spec : Prop :=
  ∀ n, (P16482441346210923403.a n : ℤ) = A385781 (n + 1)

end A385781

/-! ## A385781.P13492661372778623317

`∩[A386034(n+1), A386113(n+1)]`
-/

namespace A385781.P13492661372778623317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P13492661372778623317

namespace A385781

/-- `∩[A386034(n+1), A386113(n+1)]` -/
def P13492661372778623317.Spec : Prop :=
  ∀ n, (P13492661372778623317.a n : ℤ) = A385781 (n + 1)

end A385781

/-! ## A385781.P14953945749291052577

`∩[A386098(n+1), A386113(n+1)]`
-/

namespace A385781.P14953945749291052577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P14953945749291052577

namespace A385781

/-- `∩[A386098(n+1), A386113(n+1)]` -/
def P14953945749291052577.Spec : Prop :=
  ∀ n, (P14953945749291052577.a n : ℤ) = A385781 (n + 1)

end A385781

/-! ## A385781.P13067052611296004334

`∩[A386113(n+1), A386122(n+1)]`
-/

namespace A385781.P13067052611296004334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P13067052611296004334

namespace A385781

/-- `∩[A386113(n+1), A386122(n+1)]` -/
def P13067052611296004334.Spec : Prop :=
  ∀ n, (P13067052611296004334.a n : ℤ) = A385781 (n + 1)

end A385781

/-! ## A385781.P17194215145088788220

`∩[A386113(n+1), A386131(n+1)]`
-/

namespace A385781.P17194215145088788220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P17194215145088788220

namespace A385781

/-- `∩[A386113(n+1), A386131(n+1)]` -/
def P17194215145088788220.Spec : Prop :=
  ∀ n, (P17194215145088788220.a n : ℤ) = A385781 (n + 1)

end A385781

/-! ## A385781.P11957652328166500834

`∩[A386113(n+1), A386133(n+1)]`
-/

namespace A385781.P11957652328166500834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P11957652328166500834

namespace A385781

/-- `∩[A386113(n+1), A386133(n+1)]` -/
def P11957652328166500834.Spec : Prop :=
  ∀ n, (P11957652328166500834.a n : ℤ) = A385781 (n + 1)

end A385781

/-! ## A385781.P6550838129728058041

`∩[A386113(n+1), A386134(n+1)]`
-/

namespace A385781.P6550838129728058041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385781.P6550838129728058041

namespace A385781

/-- `∩[A386113(n+1), A386134(n+1)]` -/
def P6550838129728058041.Spec : Prop :=
  ∀ n, (P6550838129728058041.a n : ℤ) = A385781 (n + 1)

end A385781

/-!
# A385782: Primes having only {1, 6, 8} as digits.

The programs for A385782, there is no canonical definition to state claims against.
-/

/-! ## A385782.P3559734659698878533

`∩[A386036(n+1), A386130(n+1)]`
-/

namespace A385782.P3559734659698878533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P3559734659698878533

/-! ## A385782.P4387952706048128930

`∩[A386036(n+1), A386100(n+1)]`
-/

namespace A385782.P4387952706048128930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P4387952706048128930

/-! ## A385782.P7852530978199811559

`∩[A386100(n+1), A386130(n+1)]`
-/

namespace A385782.P7852530978199811559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P7852530978199811559

/-! ## A385782.P5634660908528254728

`∩[A386036(n+1), A386124(n+1)]`
-/

namespace A385782.P5634660908528254728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P5634660908528254728

/-! ## A385782.P6477396475601653523

`∩[A386100(n+1), A386124(n+1)]`
-/

namespace A385782.P6477396475601653523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P6477396475601653523

/-! ## A385782.P15283379681692082380

`∩[A386124(n+1), A386130(n+1)]`
-/

namespace A385782.P15283379681692082380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P15283379681692082380

/-! ## A385782.P15671899091217210320

`∩[A386036(n+1), A386137(n+1)]`
-/

namespace A385782.P15671899091217210320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P15671899091217210320

/-! ## A385782.P3914941117861856055

`∩[A386100(n+1), A386137(n+1)]`
-/

namespace A385782.P3914941117861856055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P3914941117861856055

/-! ## A385782.P17684006996594240961

`∩[A386124(n+1), A386137(n+1)]`
-/

namespace A385782.P17684006996594240961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P17684006996594240961

/-! ## A385782.P12942622017578867946

`∩[A386130(n+1), A386137(n+1)]`
-/

namespace A385782.P12942622017578867946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P12942622017578867946

/-! ## A385782.P13757945489009370262

`∩[A386036(n+1), A386135(n+1)]`
-/

namespace A385782.P13757945489009370262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P13757945489009370262

/-! ## A385782.P5383134518046178950

`∩[A386100(n+1), A386135(n+1)]`
-/

namespace A385782.P5383134518046178950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P5383134518046178950

/-! ## A385782.P10233420051642718633

`∩[A386124(n+1), A386135(n+1)]`
-/

namespace A385782.P10233420051642718633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P10233420051642718633

/-! ## A385782.P11969316691831127696

`∩[A386130(n+1), A386135(n+1)]`
-/

namespace A385782.P11969316691831127696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P11969316691831127696

/-! ## A385782.P1776202241223522240

`∩[A386135(n+1), A386137(n+1)]`
-/

namespace A385782.P1776202241223522240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P1776202241223522240

/-! ## A385782.P17110686188847831277

`∩[A386036(n+1), A386115(n+1)]`
-/

namespace A385782.P17110686188847831277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P17110686188847831277

/-! ## A385782.P5596196518796248940

`∩[A386100(n+1), A386115(n+1)]`
-/

namespace A385782.P5596196518796248940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P5596196518796248940

/-! ## A385782.P9384236674453189653

`∩[A386115(n+1), A386124(n+1)]`
-/

namespace A385782.P9384236674453189653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P9384236674453189653

/-! ## A385782.P10789208161008779077

`∩[A386115(n+1), A386130(n+1)]`
-/

namespace A385782.P10789208161008779077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386130 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P10789208161008779077

/-! ## A385782.P2722678898219065406

`∩[A386115(n+1), A386135(n+1)]`
-/

namespace A385782.P2722678898219065406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385782.P2722678898219065406

/-!
# A385783: Primes having only {1, 8, 9} as digits.

The programs for A385783, the canonical program `A385783.P11645284071125070441` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A385783 has offset 1).

The definition of A385783 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1467 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A385783.P580246131819826965

`∩[A386040(n+1), A386134(n+1)]`
-/

namespace A385783.P580246131819826965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P580246131819826965

namespace A385783

/-- `∩[A386040(n+1), A386134(n+1)]` -/
def P580246131819826965.Spec : Prop :=
  ∀ n, (P580246131819826965.a n : ℤ) = A385783 (n + 1)

end A385783

/-! ## A385783.P6068126951065053172

`∩[A386040(n+1), A386104(n+1)]`
-/

namespace A385783.P6068126951065053172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P6068126951065053172

namespace A385783

/-- `∩[A386040(n+1), A386104(n+1)]` -/
def P6068126951065053172.Spec : Prop :=
  ∀ n, (P6068126951065053172.a n : ℤ) = A385783 (n + 1)

end A385783

/-! ## A385783.P9276069020995197922

`∩[A386104(n+1), A386134(n+1)]`
-/

namespace A385783.P9276069020995197922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P9276069020995197922

namespace A385783

/-- `∩[A386104(n+1), A386134(n+1)]` -/
def P9276069020995197922.Spec : Prop :=
  ∀ n, (P9276069020995197922.a n : ℤ) = A385783 (n + 1)

end A385783

/-! ## A385783.P2192550642241669536

`∩[A386040(n+1), A386128(n+1)]`
-/

namespace A385783.P2192550642241669536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P2192550642241669536

namespace A385783

/-- `∩[A386040(n+1), A386128(n+1)]` -/
def P2192550642241669536.Spec : Prop :=
  ∀ n, (P2192550642241669536.a n : ℤ) = A385783 (n + 1)

end A385783

/-! ## A385783.P1879573262265470712

`∩[A386104(n+1), A386128(n+1)]`
-/

namespace A385783.P1879573262265470712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P1879573262265470712

namespace A385783

/-- `∩[A386104(n+1), A386128(n+1)]` -/
def P1879573262265470712.Spec : Prop :=
  ∀ n, (P1879573262265470712.a n : ℤ) = A385783 (n + 1)

end A385783

/-! ## A385783.P15963091154120118691

`∩[A386128(n+1), A386134(n+1)]`
-/

namespace A385783.P15963091154120118691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P15963091154120118691

namespace A385783

/-- `∩[A386128(n+1), A386134(n+1)]` -/
def P15963091154120118691.Spec : Prop :=
  ∀ n, (P15963091154120118691.a n : ℤ) = A385783 (n + 1)

end A385783

/-! ## A385783.P11645284071125070441

`∩[A386040(n+1), A386137(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A385783

/-- `∩[A386040(n+1), A386137(n+1)]` -/
def P11645284071125070441.Spec : Prop :=
  ∀ n, (P11645284071125070441.a n : ℤ) = A385783 (n + 1)

theorem P11645284071125070441.correct : P11645284071125070441.Spec := by
  intro n
  simp only [A385783, Nat.add_sub_cancel]

end A385783

/-! ## A385783.P10342950613224088072

`∩[A386104(n+1), A386137(n+1)]`
-/

namespace A385783.P10342950613224088072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P10342950613224088072

namespace A385783

/-- `∩[A386104(n+1), A386137(n+1)]` -/
def P10342950613224088072.Spec : Prop :=
  ∀ n, (P10342950613224088072.a n : ℤ) = A385783 (n + 1)

end A385783

/-! ## A385783.P17869567662101185683

`∩[A386128(n+1), A386137(n+1)]`
-/

namespace A385783.P17869567662101185683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P17869567662101185683

namespace A385783

/-- `∩[A386128(n+1), A386137(n+1)]` -/
def P17869567662101185683.Spec : Prop :=
  ∀ n, (P17869567662101185683.a n : ℤ) = A385783 (n + 1)

end A385783

/-! ## A385783.P8272557454771881357

`∩[A386134(n+1), A386137(n+1)]`
-/

namespace A385783.P8272557454771881357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P8272557454771881357

namespace A385783

/-- `∩[A386134(n+1), A386137(n+1)]` -/
def P8272557454771881357.Spec : Prop :=
  ∀ n, (P8272557454771881357.a n : ℤ) = A385783 (n + 1)

end A385783

/-! ## A385783.P13011392250146430819

`∩[A386040(n+1), A386118(n+1)]`
-/

namespace A385783.P13011392250146430819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P13011392250146430819

namespace A385783

/-- `∩[A386040(n+1), A386118(n+1)]` -/
def P13011392250146430819.Spec : Prop :=
  ∀ n, (P13011392250146430819.a n : ℤ) = A385783 (n + 1)

end A385783

/-! ## A385783.P11309320674368653005

`∩[A386104(n+1), A386118(n+1)]`
-/

namespace A385783.P11309320674368653005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P11309320674368653005

namespace A385783

/-- `∩[A386104(n+1), A386118(n+1)]` -/
def P11309320674368653005.Spec : Prop :=
  ∀ n, (P11309320674368653005.a n : ℤ) = A385783 (n + 1)

end A385783

/-! ## A385783.P16327338703675030843

`∩[A386118(n+1), A386128(n+1)]`
-/

namespace A385783.P16327338703675030843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P16327338703675030843

namespace A385783

/-- `∩[A386118(n+1), A386128(n+1)]` -/
def P16327338703675030843.Spec : Prop :=
  ∀ n, (P16327338703675030843.a n : ℤ) = A385783 (n + 1)

end A385783

/-! ## A385783.P18041946121078211637

`∩[A386118(n+1), A386134(n+1)]`
-/

namespace A385783.P18041946121078211637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P18041946121078211637

namespace A385783

/-- `∩[A386118(n+1), A386134(n+1)]` -/
def P18041946121078211637.Spec : Prop :=
  ∀ n, (P18041946121078211637.a n : ℤ) = A385783 (n + 1)

end A385783

/-! ## A385783.P6005184831890046094

`∩[A386118(n+1), A386137(n+1)]`
-/

namespace A385783.P6005184831890046094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P6005184831890046094

namespace A385783

/-- `∩[A386118(n+1), A386137(n+1)]` -/
def P6005184831890046094.Spec : Prop :=
  ∀ n, (P6005184831890046094.a n : ℤ) = A385783 (n + 1)

end A385783

/-! ## A385783.P11355071447282146024

`∩[A386040(n+1), A386138(n+1)]`
-/

namespace A385783.P11355071447282146024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P11355071447282146024

namespace A385783

/-- `∩[A386040(n+1), A386138(n+1)]` -/
def P11355071447282146024.Spec : Prop :=
  ∀ n, (P11355071447282146024.a n : ℤ) = A385783 (n + 1)

end A385783

/-! ## A385783.P783999919054541542

`∩[A386104(n+1), A386138(n+1)]`
-/

namespace A385783.P783999919054541542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P783999919054541542

namespace A385783

/-- `∩[A386104(n+1), A386138(n+1)]` -/
def P783999919054541542.Spec : Prop :=
  ∀ n, (P783999919054541542.a n : ℤ) = A385783 (n + 1)

end A385783

/-! ## A385783.P9481600515982162122

`∩[A386118(n+1), A386138(n+1)]`
-/

namespace A385783.P9481600515982162122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P9481600515982162122

namespace A385783

/-- `∩[A386118(n+1), A386138(n+1)]` -/
def P9481600515982162122.Spec : Prop :=
  ∀ n, (P9481600515982162122.a n : ℤ) = A385783 (n + 1)

end A385783

/-! ## A385783.P2409852187068599802

`∩[A386128(n+1), A386138(n+1)]`
-/

namespace A385783.P2409852187068599802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P2409852187068599802

namespace A385783

/-- `∩[A386128(n+1), A386138(n+1)]` -/
def P2409852187068599802.Spec : Prop :=
  ∀ n, (P2409852187068599802.a n : ℤ) = A385783 (n + 1)

end A385783

/-! ## A385783.P12810511614722999900

`∩[A386134(n+1), A386138(n+1)]`
-/

namespace A385783.P12810511614722999900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385783.P12810511614722999900

namespace A385783

/-- `∩[A386134(n+1), A386138(n+1)]` -/
def P12810511614722999900.Spec : Prop :=
  ∀ n, (P12810511614722999900.a n : ℤ) = A385783 (n + 1)

end A385783

/-!
# A385784: Primes having only {2, 4, 7} as digits.

The programs for A385784, there is no canonical definition to state claims against.
-/

/-! ## A385784.P6025064083130761794

`∩[A386047(n+1), A386157(n+1)]`
-/

namespace A385784.P6025064083130761794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P6025064083130761794

/-! ## A385784.P18346119882168031642

`∩[A386047(n+1), A386155(n+1)]`
-/

namespace A385784.P18346119882168031642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P18346119882168031642

/-! ## A385784.P14900819954983773752

`∩[A386155(n+1), A386157(n+1)]`
-/

namespace A385784.P14900819954983773752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P14900819954983773752

/-! ## A385784.P12024743489417339626

`∩[A386047(n+1), A386153(n+1)]`
-/

namespace A385784.P12024743489417339626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P12024743489417339626

/-! ## A385784.P10811441325439320392

`∩[A386153(n+1), A386155(n+1)]`
-/

namespace A385784.P10811441325439320392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P10811441325439320392

/-! ## A385784.P6309508471850164946

`∩[A386153(n+1), A386157(n+1)]`
-/

namespace A385784.P6309508471850164946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P6309508471850164946

/-! ## A385784.P3260473587615418089

`∩[A386047(n+1), A386158(n+1)]`
-/

namespace A385784.P3260473587615418089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P3260473587615418089

/-! ## A385784.P12731659864913189756

`∩[A386153(n+1), A386158(n+1)]`
-/

namespace A385784.P12731659864913189756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P12731659864913189756

/-! ## A385784.P17508239710237525112

`∩[A386155(n+1), A386158(n+1)]`
-/

namespace A385784.P17508239710237525112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P17508239710237525112

/-! ## A385784.P5222824424804776165

`∩[A386157(n+1), A386158(n+1)]`
-/

namespace A385784.P5222824424804776165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P5222824424804776165

/-! ## A385784.P4328613729292344596

`∩[A386047(n+1), A386141(n+1)]`
-/

namespace A385784.P4328613729292344596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P4328613729292344596

/-! ## A385784.P16721728621051667852

`∩[A386141(n+1), A386153(n+1)]`
-/

namespace A385784.P16721728621051667852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P16721728621051667852

/-! ## A385784.P2002441118135364893

`∩[A386141(n+1), A386155(n+1)]`
-/

namespace A385784.P2002441118135364893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P2002441118135364893

/-! ## A385784.P16109045547946920880

`∩[A386141(n+1), A386157(n+1)]`
-/

namespace A385784.P16109045547946920880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P16109045547946920880

/-! ## A385784.P7816954626627605920

`∩[A386141(n+1), A386158(n+1)]`
-/

namespace A385784.P7816954626627605920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P7816954626627605920

/-! ## A385784.P6438778476232703971

`∩[A386047(n+1), A386093(n+1)]`
-/

namespace A385784.P6438778476232703971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386047 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P6438778476232703971

/-! ## A385784.P12593250027734140161

`∩[A386093(n+1), A386141(n+1)]`
-/

namespace A385784.P12593250027734140161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P12593250027734140161

/-! ## A385784.P9226046610974183658

`∩[A386093(n+1), A386153(n+1)]`
-/

namespace A385784.P9226046610974183658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P9226046610974183658

/-! ## A385784.P16078019583412873207

`∩[A386093(n+1), A386155(n+1)]`
-/

namespace A385784.P16078019583412873207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P16078019583412873207

/-! ## A385784.P2788161816018994892

`∩[A386093(n+1), A386157(n+1)]`
-/

namespace A385784.P2788161816018994892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385784.P2788161816018994892

/-!
# A385785: Primes having only {2, 4, 9} as digits.

The programs for A385785, there is no canonical definition to state claims against.
-/

/-! ## A385785.P7727473983047690147

`∩[A386048(n+1), A386156(n+1)]`
-/

namespace A385785.P7727473983047690147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P7727473983047690147

/-! ## A385785.P4530150867776369968

`∩[A386048(n+1), A386159(n+1)]`
-/

namespace A385785.P4530150867776369968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P4530150867776369968

/-! ## A385785.P10415827313377081675

`∩[A386156(n+1), A386159(n+1)]`
-/

namespace A385785.P10415827313377081675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P10415827313377081675

/-! ## A385785.P1766948023232522570

`∩[A386048(n+1), A386154(n+1)]`
-/

namespace A385785.P1766948023232522570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P1766948023232522570

/-! ## A385785.P3397066581871017435

`∩[A386154(n+1), A386156(n+1)]`
-/

namespace A385785.P3397066581871017435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P3397066581871017435

/-! ## A385785.P7688803140181769950

`∩[A386154(n+1), A386159(n+1)]`
-/

namespace A385785.P7688803140181769950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P7688803140181769950

/-! ## A385785.P6905244913861213205

`∩[A386048(n+1), A386158(n+1)]`
-/

namespace A385785.P6905244913861213205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P6905244913861213205

/-! ## A385785.P923473231418288323

`∩[A386154(n+1), A386158(n+1)]`
-/

namespace A385785.P923473231418288323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P923473231418288323

/-! ## A385785.P17192796254726220731

`∩[A386156(n+1), A386158(n+1)]`
-/

namespace A385785.P17192796254726220731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P17192796254726220731

/-! ## A385785.P13647192414762085920

`∩[A386158(n+1), A386159(n+1)]`
-/

namespace A385785.P13647192414762085920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P13647192414762085920

/-! ## A385785.P2240587591627471321

`∩[A386048(n+1), A386143(n+1)]`
-/

namespace A385785.P2240587591627471321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P2240587591627471321

/-! ## A385785.P5336322768586206899

`∩[A386143(n+1), A386154(n+1)]`
-/

namespace A385785.P5336322768586206899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P5336322768586206899

/-! ## A385785.P12369954260727143415

`∩[A386143(n+1), A386156(n+1)]`
-/

namespace A385785.P12369954260727143415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P12369954260727143415

/-! ## A385785.P6956876371002378187

`∩[A386143(n+1), A386158(n+1)]`
-/

namespace A385785.P6956876371002378187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P6956876371002378187

/-! ## A385785.P1737827691923238391

`∩[A386143(n+1), A386159(n+1)]`
-/

namespace A385785.P1737827691923238391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P1737827691923238391

/-! ## A385785.P6001838970415649724

`∩[A386048(n+1), A386094(n+1)]`
-/

namespace A385785.P6001838970415649724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P6001838970415649724

/-! ## A385785.P9511663369895265190

`∩[A386094(n+1), A386143(n+1)]`
-/

namespace A385785.P9511663369895265190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P9511663369895265190

/-! ## A385785.P3465517851275796664

`∩[A386094(n+1), A386154(n+1)]`
-/

namespace A385785.P3465517851275796664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P3465517851275796664

/-! ## A385785.P17373524044928398847

`∩[A386094(n+1), A386156(n+1)]`
-/

namespace A385785.P17373524044928398847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P17373524044928398847

/-! ## A385785.P11512186832198275152

`∩[A386094(n+1), A386158(n+1)]`
-/

namespace A385785.P11512186832198275152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385785.P11512186832198275152

/-!
# A385786: Primes having only {2, 5, 9} as digits.

The programs for A385786, there is no canonical definition to state claims against.
-/

/-! ## A385786.P18052501341691785430

`∩[A386050(n+1), A386161(n+1)]`
-/

namespace A385786.P18052501341691785430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P18052501341691785430

/-! ## A385786.P6820826867165486258

`∩[A386050(n+1), A386164(n+1)]`
-/

namespace A385786.P6820826867165486258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P6820826867165486258

/-! ## A385786.P17267672177111478300

`∩[A386161(n+1), A386164(n+1)]`
-/

namespace A385786.P17267672177111478300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P17267672177111478300

/-! ## A385786.P16340605685293671726

`∩[A386050(n+1), A386154(n+1)]`
-/

namespace A385786.P16340605685293671726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P16340605685293671726

/-! ## A385786.P5338874840089044657

`∩[A386154(n+1), A386161(n+1)]`
-/

namespace A385786.P5338874840089044657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P5338874840089044657

/-! ## A385786.P6101557078908807816

`∩[A386154(n+1), A386164(n+1)]`
-/

namespace A385786.P6101557078908807816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P6101557078908807816

/-! ## A385786.P17372683317149739560

`∩[A386050(n+1), A386163(n+1)]`
-/

namespace A385786.P17372683317149739560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P17372683317149739560

/-! ## A385786.P17824459755389989795

`∩[A386154(n+1), A386163(n+1)]`
-/

namespace A385786.P17824459755389989795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P17824459755389989795

/-! ## A385786.P11452589587864382465

`∩[A386161(n+1), A386163(n+1)]`
-/

namespace A385786.P11452589587864382465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P11452589587864382465

/-! ## A385786.P2056679021104297272

`∩[A386163(n+1), A386164(n+1)]`
-/

namespace A385786.P2056679021104297272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P2056679021104297272

/-! ## A385786.P14871560766207985162

`∩[A386050(n+1), A386146(n+1)]`
-/

namespace A385786.P14871560766207985162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P14871560766207985162

/-! ## A385786.P5118287496625381036

`∩[A386146(n+1), A386154(n+1)]`
-/

namespace A385786.P5118287496625381036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P5118287496625381036

/-! ## A385786.P1271786900035568045

`∩[A386146(n+1), A386161(n+1)]`
-/

namespace A385786.P1271786900035568045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P1271786900035568045

/-! ## A385786.P6442914840569934355

`∩[A386146(n+1), A386163(n+1)]`
-/

namespace A385786.P6442914840569934355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P6442914840569934355

/-! ## A385786.P12380572965875660143

`∩[A386146(n+1), A386164(n+1)]`
-/

namespace A385786.P12380572965875660143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P12380572965875660143

/-! ## A385786.P344438500942343756

`∩[A386050(n+1), A386098(n+1)]`
-/

namespace A385786.P344438500942343756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P344438500942343756

/-! ## A385786.P1429485202443277326

`∩[A386098(n+1), A386146(n+1)]`
-/

namespace A385786.P1429485202443277326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P1429485202443277326

/-! ## A385786.P1223326448720786026

`∩[A386098(n+1), A386154(n+1)]`
-/

namespace A385786.P1223326448720786026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P1223326448720786026

/-! ## A385786.P13103349640266279422

`∩[A386098(n+1), A386161(n+1)]`
-/

namespace A385786.P13103349640266279422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P13103349640266279422

/-! ## A385786.P9958791443835952259

`∩[A386098(n+1), A386163(n+1)]`
-/

namespace A385786.P9958791443835952259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385786.P9958791443835952259

/-!
# A385787: Primes having only {2, 6, 7} as digits.

The programs for A385787, there is no canonical definition to state claims against.
-/

/-! ## A385787.P17411167608324929221

`∩[A386051(n+1), A386165(n+1)]`
-/

namespace A385787.P17411167608324929221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P17411167608324929221

/-! ## A385787.P10894142260391885616

`∩[A386051(n+1), A386155(n+1)]`
-/

namespace A385787.P10894142260391885616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P10894142260391885616

/-! ## A385787.P11378109049377437388

`∩[A386155(n+1), A386165(n+1)]`
-/

namespace A385787.P11378109049377437388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P11378109049377437388

/-! ## A385787.P17909371770256833130

`∩[A386051(n+1), A386160(n+1)]`
-/

namespace A385787.P17909371770256833130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P17909371770256833130

/-! ## A385787.P3315996664943627649

`∩[A386155(n+1), A386160(n+1)]`
-/

namespace A385787.P3315996664943627649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P3315996664943627649

/-! ## A385787.P11995093293069568266

`∩[A386160(n+1), A386165(n+1)]`
-/

namespace A385787.P11995093293069568266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P11995093293069568266

/-! ## A385787.P7411036707929648917

`∩[A386051(n+1), A386166(n+1)]`
-/

namespace A385787.P7411036707929648917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P7411036707929648917

/-! ## A385787.P10694849371548103682

`∩[A386155(n+1), A386166(n+1)]`
-/

namespace A385787.P10694849371548103682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P10694849371548103682

/-! ## A385787.P16622480992054028883

`∩[A386160(n+1), A386166(n+1)]`
-/

namespace A385787.P16622480992054028883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P16622480992054028883

/-! ## A385787.P14276429888984639853

`∩[A386165(n+1), A386166(n+1)]`
-/

namespace A385787.P14276429888984639853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P14276429888984639853

/-! ## A385787.P12327538739709024037

`∩[A386051(n+1), A386147(n+1)]`
-/

namespace A385787.P12327538739709024037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P12327538739709024037

/-! ## A385787.P17170601114470920901

`∩[A386147(n+1), A386155(n+1)]`
-/

namespace A385787.P17170601114470920901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P17170601114470920901

/-! ## A385787.P6146469107642285312

`∩[A386147(n+1), A386160(n+1)]`
-/

namespace A385787.P6146469107642285312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P6146469107642285312

/-! ## A385787.P2742087557840613081

`∩[A386147(n+1), A386165(n+1)]`
-/

namespace A385787.P2742087557840613081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P2742087557840613081

/-! ## A385787.P14891069425475074961

`∩[A386147(n+1), A386166(n+1)]`
-/

namespace A385787.P14891069425475074961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P14891069425475074961

/-! ## A385787.P8023869673286377166

`∩[A386051(n+1), A386099(n+1)]`
-/

namespace A385787.P8023869673286377166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P8023869673286377166

/-! ## A385787.P91715117284909473

`∩[A386099(n+1), A386147(n+1)]`
-/

namespace A385787.P91715117284909473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P91715117284909473

/-! ## A385787.P4943266025616430607

`∩[A386099(n+1), A386155(n+1)]`
-/

namespace A385787.P4943266025616430607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P4943266025616430607

/-! ## A385787.P1164600282301413005

`∩[A386099(n+1), A386160(n+1)]`
-/

namespace A385787.P1164600282301413005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386160 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P1164600282301413005

/-! ## A385787.P453412933884416312

`∩[A386099(n+1), A386165(n+1)]`
-/

namespace A385787.P453412933884416312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385787.P453412933884416312

/-!
# A385788: Primes having only {2, 6, 9} as digits.

The programs for A385788, there is no canonical definition to state claims against.
-/

/-! ## A385788.P15907392089208231045

`∩[A386052(n+1), A386167(n+1)]`
-/

namespace A385788.P15907392089208231045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P15907392089208231045

/-! ## A385788.P17301437695442931543

`∩[A386052(n+1), A386156(n+1)]`
-/

namespace A385788.P17301437695442931543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P17301437695442931543

/-! ## A385788.P14748890068909467833

`∩[A386052(n+1), A386161(n+1)]`
-/

namespace A385788.P14748890068909467833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P14748890068909467833

/-! ## A385788.P7135430575471380190

`∩[A386156(n+1), A386161(n+1)]`
-/

namespace A385788.P7135430575471380190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P7135430575471380190

/-! ## A385788.P32196051466296305

`∩[A386156(n+1), A386167(n+1)]`
-/

namespace A385788.P32196051466296305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P32196051466296305

/-! ## A385788.P3693303462262339458

`∩[A386161(n+1), A386167(n+1)]`
-/

namespace A385788.P3693303462262339458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P3693303462262339458

/-! ## A385788.P5419214172746525811

`∩[A386052(n+1), A386166(n+1)]`
-/

namespace A385788.P5419214172746525811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P5419214172746525811

/-! ## A385788.P6598459337418666033

`∩[A386156(n+1), A386166(n+1)]`
-/

namespace A385788.P6598459337418666033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386156 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P6598459337418666033

/-! ## A385788.P2044721995154098424

`∩[A386161(n+1), A386166(n+1)]`
-/

namespace A385788.P2044721995154098424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P2044721995154098424

/-! ## A385788.P16322026401374370223

`∩[A386166(n+1), A386167(n+1)]`
-/

namespace A385788.P16322026401374370223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P16322026401374370223

/-! ## A385788.P16717647770890276807

`∩[A386052(n+1), A386149(n+1)]`
-/

namespace A385788.P16717647770890276807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P16717647770890276807

/-! ## A385788.P1344905928264118375

`∩[A386149(n+1), A386156(n+1)]`
-/

namespace A385788.P1344905928264118375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P1344905928264118375

/-! ## A385788.P4918415031949844063

`∩[A386149(n+1), A386161(n+1)]`
-/

namespace A385788.P4918415031949844063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P4918415031949844063

/-! ## A385788.P7104236365141329404

`∩[A386149(n+1), A386166(n+1)]`
-/

namespace A385788.P7104236365141329404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P7104236365141329404

/-! ## A385788.P1977050428755177967

`∩[A386149(n+1), A386167(n+1)]`
-/

namespace A385788.P1977050428755177967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P1977050428755177967

/-! ## A385788.P7491179152368949311

`∩[A386052(n+1), A386101(n+1)]`
-/

namespace A385788.P7491179152368949311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P7491179152368949311

/-! ## A385788.P4876522948268090040

`∩[A386101(n+1), A386149(n+1)]`
-/

namespace A385788.P4876522948268090040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P4876522948268090040

/-! ## A385788.P9002707347972277224

`∩[A386101(n+1), A386156(n+1)]`
-/

namespace A385788.P9002707347972277224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386156 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P9002707347972277224

/-! ## A385788.P11946244673525248273

`∩[A386101(n+1), A386161(n+1)]`
-/

namespace A385788.P11946244673525248273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P11946244673525248273

/-! ## A385788.P12359171061143879846

`∩[A386101(n+1), A386166(n+1)]`
-/

namespace A385788.P12359171061143879846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385788.P12359171061143879846

/-!
# A385789: Primes having only {2, 7, 8} as digits.

The programs for A385789, there is no canonical definition to state claims against.
-/

/-! ## A385789.P13877317360040242893

`∩[A386053(n+1), A386165(n+1)]`
-/

namespace A385789.P13877317360040242893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P13877317360040242893

/-! ## A385789.P10895104548496027510

`∩[A386053(n+1), A386162(n+1)]`
-/

namespace A385789.P10895104548496027510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P10895104548496027510

/-! ## A385789.P11179820427743765764

`∩[A386162(n+1), A386165(n+1)]`
-/

namespace A385789.P11179820427743765764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P11179820427743765764

/-! ## A385789.P10693852412563010729

`∩[A386053(n+1), A386157(n+1)]`
-/

namespace A385789.P10693852412563010729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P10693852412563010729

/-! ## A385789.P6159134261983754487

`∩[A386157(n+1), A386162(n+1)]`
-/

namespace A385789.P6159134261983754487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P6159134261983754487

/-! ## A385789.P17474649077321477427

`∩[A386157(n+1), A386165(n+1)]`
-/

namespace A385789.P17474649077321477427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P17474649077321477427

/-! ## A385789.P1194031469132708383

`∩[A386053(n+1), A386168(n+1)]`
-/

namespace A385789.P1194031469132708383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P1194031469132708383

/-! ## A385789.P1848645435596471771

`∩[A386157(n+1), A386168(n+1)]`
-/

namespace A385789.P1848645435596471771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P1848645435596471771

/-! ## A385789.P12815354345196287285

`∩[A386162(n+1), A386168(n+1)]`
-/

namespace A385789.P12815354345196287285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P12815354345196287285

/-! ## A385789.P5740040976695918092

`∩[A386165(n+1), A386168(n+1)]`
-/

namespace A385789.P5740040976695918092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P5740040976695918092

/-! ## A385789.P17700511237177308169

`∩[A386053(n+1), A386150(n+1)]`
-/

namespace A385789.P17700511237177308169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P17700511237177308169

/-! ## A385789.P6594316692485979909

`∩[A386150(n+1), A386157(n+1)]`
-/

namespace A385789.P6594316692485979909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P6594316692485979909

/-! ## A385789.P1367211033743225519

`∩[A386150(n+1), A386162(n+1)]`
-/

namespace A385789.P1367211033743225519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P1367211033743225519

/-! ## A385789.P17219261099302663880

`∩[A386150(n+1), A386165(n+1)]`
-/

namespace A385789.P17219261099302663880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P17219261099302663880

/-! ## A385789.P16222235330122064794

`∩[A386150(n+1), A386168(n+1)]`
-/

namespace A385789.P16222235330122064794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P16222235330122064794

/-! ## A385789.P9883363894558597147

`∩[A386053(n+1), A386102(n+1)]`
-/

namespace A385789.P9883363894558597147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386053 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P9883363894558597147

/-! ## A385789.P14664525389029275349

`∩[A386102(n+1), A386150(n+1)]`
-/

namespace A385789.P14664525389029275349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P14664525389029275349

/-! ## A385789.P15282904727954287886

`∩[A386102(n+1), A386157(n+1)]`
-/

namespace A385789.P15282904727954287886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P15282904727954287886

/-! ## A385789.P17800622904748635003

`∩[A386102(n+1), A386162(n+1)]`
-/

namespace A385789.P17800622904748635003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P17800622904748635003

/-! ## A385789.P16147839946872018330

`∩[A386102(n+1), A386165(n+1)]`
-/

namespace A385789.P16147839946872018330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385789.P16147839946872018330

/-!
# A385790: Primes having only {2, 8, 9} as digits.

The programs for A385790, there is no canonical definition to state claims against.
-/

/-! ## A385790.P11577689265481594953

`∩[A386055(n+1), A386159(n+1)]`
-/

namespace A385790.P11577689265481594953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P11577689265481594953

/-! ## A385790.P3814061136022302947

`∩[A386055(n+1), A386164(n+1)]`
-/

namespace A385790.P3814061136022302947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P3814061136022302947

/-! ## A385790.P12056002527555871368

`∩[A386055(n+1), A386167(n+1)]`
-/

namespace A385790.P12056002527555871368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P12056002527555871368

/-! ## A385790.P6902612821696740284

`∩[A386159(n+1), A386164(n+1)]`
-/

namespace A385790.P6902612821696740284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P6902612821696740284

/-! ## A385790.P2744440514535045530

`∩[A386159(n+1), A386167(n+1)]`
-/

namespace A385790.P2744440514535045530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P2744440514535045530

/-! ## A385790.P13419334555063070572

`∩[A386164(n+1), A386167(n+1)]`
-/

namespace A385790.P13419334555063070572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P13419334555063070572

/-! ## A385790.P2000501185846105384

`∩[A386055(n+1), A386152(n+1)]`
-/

namespace A385790.P2000501185846105384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P2000501185846105384

/-! ## A385790.P1547810636045587402

`∩[A386055(n+1), A386168(n+1)]`
-/

namespace A385790.P1547810636045587402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P1547810636045587402

/-! ## A385790.P158650479932418434

`∩[A386152(n+1), A386159(n+1)]`
-/

namespace A385790.P158650479932418434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P158650479932418434

/-! ## A385790.P10216860544540254511

`∩[A386152(n+1), A386164(n+1)]`
-/

namespace A385790.P10216860544540254511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P10216860544540254511

/-! ## A385790.P5690157465681019420

`∩[A386152(n+1), A386167(n+1)]`
-/

namespace A385790.P5690157465681019420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P5690157465681019420

/-! ## A385790.P16649552869185430682

`∩[A386152(n+1), A386168(n+1)]`
-/

namespace A385790.P16649552869185430682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P16649552869185430682

/-! ## A385790.P3692375375737316596

`∩[A386159(n+1), A386168(n+1)]`
-/

namespace A385790.P3692375375737316596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P3692375375737316596

/-! ## A385790.P2245873574663484030

`∩[A386164(n+1), A386168(n+1)]`
-/

namespace A385790.P2245873574663484030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P2245873574663484030

/-! ## A385790.P11970710897811912699

`∩[A386167(n+1), A386168(n+1)]`
-/

namespace A385790.P11970710897811912699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P11970710897811912699

/-! ## A385790.P17934920183217930244

`∩[A386055(n+1), A386104(n+1)]`
-/

namespace A385790.P17934920183217930244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P17934920183217930244

/-! ## A385790.P4944299010159896512

`∩[A386104(n+1), A386152(n+1)]`
-/

namespace A385790.P4944299010159896512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P4944299010159896512

/-! ## A385790.P15703822109409713400

`∩[A386104(n+1), A386159(n+1)]`
-/

namespace A385790.P15703822109409713400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P15703822109409713400

/-! ## A385790.P14654859583190324023

`∩[A386104(n+1), A386164(n+1)]`
-/

namespace A385790.P14654859583190324023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P14654859583190324023

/-! ## A385790.P991935337112743816

`∩[A386104(n+1), A386167(n+1)]`
-/

namespace A385790.P991935337112743816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385790.P991935337112743816

/-!
# A385791: Primes having only {3, 6, 8} as digits.

The programs for A385791, there is no canonical definition to state claims against.
-/

/-! ## A385791.P10256433303269536008

`∩[A386066(n+1), A386174(n+1)]`
-/

namespace A385791.P10256433303269536008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P10256433303269536008

/-! ## A385791.P2954962257596455946

`∩[A386066(n+1), A386179(n+1)]`
-/

namespace A385791.P2954962257596455946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P2954962257596455946

/-! ## A385791.P9174402974909989459

`∩[A386174(n+1), A386179(n+1)]`
-/

namespace A385791.P9174402974909989459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P9174402974909989459

/-! ## A385791.P448975742858641507

`∩[A386066(n+1), A386148(n+1)]`
-/

namespace A385791.P448975742858641507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P448975742858641507

/-! ## A385791.P10914284338688245218

`∩[A386148(n+1), A386174(n+1)]`
-/

namespace A385791.P10914284338688245218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P10914284338688245218

/-! ## A385791.P11084545091779614732

`∩[A386148(n+1), A386179(n+1)]`
-/

namespace A385791.P11084545091779614732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P11084545091779614732

/-! ## A385791.P7015595736569974876

`∩[A386066(n+1), A386186(n+1)]`
-/

namespace A385791.P7015595736569974876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P7015595736569974876

/-! ## A385791.P6331552367131990065

`∩[A386148(n+1), A386186(n+1)]`
-/

namespace A385791.P6331552367131990065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P6331552367131990065

/-! ## A385791.P4715942668503250210

`∩[A386174(n+1), A386186(n+1)]`
-/

namespace A385791.P4715942668503250210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P4715942668503250210

/-! ## A385791.P16361529541589860111

`∩[A386179(n+1), A386186(n+1)]`
-/

namespace A385791.P16361529541589860111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P16361529541589860111

/-! ## A385791.P16052371834899617458

`∩[A386066(n+1), A386184(n+1)]`
-/

namespace A385791.P16052371834899617458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P16052371834899617458

/-! ## A385791.P15332236201727912033

`∩[A386148(n+1), A386184(n+1)]`
-/

namespace A385791.P15332236201727912033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386148 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P15332236201727912033

/-! ## A385791.P4575327025109521641

`∩[A386174(n+1), A386184(n+1)]`
-/

namespace A385791.P4575327025109521641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P4575327025109521641

/-! ## A385791.P4583814300383209384

`∩[A386179(n+1), A386184(n+1)]`
-/

namespace A385791.P4583814300383209384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P4583814300383209384

/-! ## A385791.P6359073648696788991

`∩[A386184(n+1), A386186(n+1)]`
-/

namespace A385791.P6359073648696788991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P6359073648696788991

/-! ## A385791.P7357094694213892295

`∩[A386066(n+1), A386115(n+1)]`
-/

namespace A385791.P7357094694213892295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P7357094694213892295

/-! ## A385791.P3328004647544592173

`∩[A386115(n+1), A386148(n+1)]`
-/

namespace A385791.P3328004647544592173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P3328004647544592173

/-! ## A385791.P11218655985778963735

`∩[A386115(n+1), A386174(n+1)]`
-/

namespace A385791.P11218655985778963735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P11218655985778963735

/-! ## A385791.P1918762555282692149

`∩[A386115(n+1), A386179(n+1)]`
-/

namespace A385791.P1918762555282692149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P1918762555282692149

/-! ## A385791.P4704953155166535159

`∩[A386115(n+1), A386184(n+1)]`
-/

namespace A385791.P4704953155166535159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385791.P4704953155166535159

/-!
# A385792: Primes having only {3, 8, 9} as digits.

The programs for A385792, there is no canonical definition to state claims against.
-/

/-! ## A385792.P17867034376353691199

`∩[A386069(n+1), A386183(n+1)]`
-/

namespace A385792.P17867034376353691199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P17867034376353691199

/-! ## A385792.P16490550066946039171

`∩[A386069(n+1), A386177(n+1)]`
-/

namespace A385792.P16490550066946039171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P16490550066946039171

/-! ## A385792.P16721585226089031305

`∩[A386069(n+1), A386186(n+1)]`
-/

namespace A385792.P16721585226089031305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P16721585226089031305

/-! ## A385792.P18059977255227501981

`∩[A386069(n+1), A386187(n+1)]`
-/

namespace A385792.P18059977255227501981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P18059977255227501981

/-! ## A385792.P5112084404714154919

`∩[A386069(n+1), A386118(n+1)]`
-/

namespace A385792.P5112084404714154919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P5112084404714154919

/-! ## A385792.P3532913804090941465

`∩[A386069(n+1), A386152(n+1)]`
-/

namespace A385792.P3532913804090941465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P3532913804090941465

/-! ## A385792.P13154898898306154888

`∩[A386118(n+1), A386152(n+1)]`
-/

namespace A385792.P13154898898306154888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P13154898898306154888

/-! ## A385792.P4271845658285490061

`∩[A386118(n+1), A386177(n+1)]`
-/

namespace A385792.P4271845658285490061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P4271845658285490061

/-! ## A385792.P4284569731935778785

`∩[A386118(n+1), A386183(n+1)]`
-/

namespace A385792.P4284569731935778785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P4284569731935778785

/-! ## A385792.P4241621084830584140

`∩[A386118(n+1), A386186(n+1)]`
-/

namespace A385792.P4241621084830584140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P4241621084830584140

/-! ## A385792.P8009992166112848660

`∩[A386118(n+1), A386187(n+1)]`
-/

namespace A385792.P8009992166112848660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P8009992166112848660

/-! ## A385792.P5242235711167419036

`∩[A386152(n+1), A386177(n+1)]`
-/

namespace A385792.P5242235711167419036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P5242235711167419036

/-! ## A385792.P8302079528615940738

`∩[A386152(n+1), A386183(n+1)]`
-/

namespace A385792.P8302079528615940738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P8302079528615940738

/-! ## A385792.P12085775708596237930

`∩[A386152(n+1), A386186(n+1)]`
-/

namespace A385792.P12085775708596237930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386186 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P12085775708596237930

/-! ## A385792.P5188364835145569609

`∩[A386152(n+1), A386187(n+1)]`
-/

namespace A385792.P5188364835145569609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P5188364835145569609

/-! ## A385792.P10709850414456682180

`∩[A079652(n+1), A386118(n+1)]`
-/

namespace A385792.P10709850414456682180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P10709850414456682180

/-! ## A385792.P17599219374308435633

`∩[A079652(n+1), A386152(n+1)]`
-/

namespace A385792.P17599219374308435633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P17599219374308435633

/-! ## A385792.P17664967313304012646

`∩[A079652(n+1), A386177(n+1)]`
-/

namespace A385792.P17664967313304012646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P17664967313304012646

/-! ## A385792.P17334236911486733163

`∩[A079652(n+1), A386183(n+1)]`
-/

namespace A385792.P17334236911486733163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P17334236911486733163

/-! ## A385792.P5749652123373258082

`∩[A079652(n+1), A386187(n+1)]`
-/

namespace A385792.P5749652123373258082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385792.P5749652123373258082

/-!
# A385793: Primes having only {4, 5, 9} as digits.

The programs for A385793, there is no canonical definition to state claims against.
-/

/-! ## A385793.P5944696017546102743

`∩[A386071(n+1), A386192(n+1)]`
-/

namespace A385793.P5944696017546102743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P5944696017546102743

/-! ## A385793.P12964953414011996967

`∩[A386071(n+1), A386189(n+1)]`
-/

namespace A385793.P12964953414011996967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P12964953414011996967

/-! ## A385793.P1898198297579119621

`∩[A386189(n+1), A386192(n+1)]`
-/

namespace A385793.P1898198297579119621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P1898198297579119621

/-! ## A385793.P3470938496214748764

`∩[A386071(n+1), A386154(n+1)]`
-/

namespace A385793.P3470938496214748764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P3470938496214748764

/-! ## A385793.P10345417439170813971

`∩[A386154(n+1), A386189(n+1)]`
-/

namespace A385793.P10345417439170813971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P10345417439170813971

/-! ## A385793.P8189108210685979412

`∩[A386154(n+1), A386192(n+1)]`
-/

namespace A385793.P8189108210685979412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P8189108210685979412

/-! ## A385793.P13886098032569626917

`∩[A386071(n+1), A386191(n+1)]`
-/

namespace A385793.P13886098032569626917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P13886098032569626917

/-! ## A385793.P11610200609571466058

`∩[A386154(n+1), A386191(n+1)]`
-/

namespace A385793.P11610200609571466058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P11610200609571466058

/-! ## A385793.P14869941022266143660

`∩[A386189(n+1), A386191(n+1)]`
-/

namespace A385793.P14869941022266143660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P14869941022266143660

/-! ## A385793.P9047797752148613812

`∩[A386191(n+1), A386192(n+1)]`
-/

namespace A385793.P9047797752148613812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P9047797752148613812

/-! ## A385793.P12725411634158697797

`∩[A386071(n+1), A386122(n+1)]`
-/

namespace A385793.P12725411634158697797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P12725411634158697797

/-! ## A385793.P17143526164475166007

`∩[A386071(n+1), A386172(n+1)]`
-/

namespace A385793.P17143526164475166007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P17143526164475166007

/-! ## A385793.P16851591186586643635

`∩[A386122(n+1), A386154(n+1)]`
-/

namespace A385793.P16851591186586643635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P16851591186586643635

/-! ## A385793.P9144542136919819342

`∩[A386122(n+1), A386172(n+1)]`
-/

namespace A385793.P9144542136919819342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P9144542136919819342

/-! ## A385793.P7356690301023479112

`∩[A386122(n+1), A386189(n+1)]`
-/

namespace A385793.P7356690301023479112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P7356690301023479112

/-! ## A385793.P2563271024918032143

`∩[A386122(n+1), A386191(n+1)]`
-/

namespace A385793.P2563271024918032143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P2563271024918032143

/-! ## A385793.P8485403896669768165

`∩[A386122(n+1), A386192(n+1)]`
-/

namespace A385793.P8485403896669768165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P8485403896669768165

/-! ## A385793.P3466426916311601642

`∩[A386154(n+1), A386172(n+1)]`
-/

namespace A385793.P3466426916311601642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P3466426916311601642

/-! ## A385793.P48042990095436488

`∩[A386172(n+1), A386189(n+1)]`
-/

namespace A385793.P48042990095436488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P48042990095436488

/-! ## A385793.P9816396330834037627

`∩[A386172(n+1), A386191(n+1)]`
-/

namespace A385793.P9816396330834037627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385793.P9816396330834037627

/-!
# A385794: Primes having only {4, 6, 7} as digits.

The programs for A385794, there is no canonical definition to state claims against.
-/

/-! ## A385794.P8115541042629669141

`∩[A386072(n+1), A386193(n+1)]`
-/

namespace A385794.P8115541042629669141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P8115541042629669141

/-! ## A385794.P8314187325021571924

`∩[A386072(n+1), A386188(n+1)]`
-/

namespace A385794.P8314187325021571924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P8314187325021571924

/-! ## A385794.P16245761240502344303

`∩[A386188(n+1), A386193(n+1)]`
-/

namespace A385794.P16245761240502344303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P16245761240502344303

/-! ## A385794.P9722131089888805134

`∩[A386072(n+1), A386155(n+1)]`
-/

namespace A385794.P9722131089888805134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P9722131089888805134

/-! ## A385794.P16847071077505027522

`∩[A386155(n+1), A386188(n+1)]`
-/

namespace A385794.P16847071077505027522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P16847071077505027522

/-! ## A385794.P2664523427116156741

`∩[A386155(n+1), A386193(n+1)]`
-/

namespace A385794.P2664523427116156741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P2664523427116156741

/-! ## A385794.P11170257158922089710

`∩[A386072(n+1), A386194(n+1)]`
-/

namespace A385794.P11170257158922089710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P11170257158922089710

/-! ## A385794.P202880198655867664

`∩[A386155(n+1), A386194(n+1)]`
-/

namespace A385794.P202880198655867664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P202880198655867664

/-! ## A385794.P14750813989450100383

`∩[A386188(n+1), A386194(n+1)]`
-/

namespace A385794.P14750813989450100383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P14750813989450100383

/-! ## A385794.P16305219864266463993

`∩[A386193(n+1), A386194(n+1)]`
-/

namespace A385794.P16305219864266463993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P16305219864266463993

/-! ## A385794.P14981812948761322615

`∩[A386072(n+1), A386123(n+1)]`
-/

namespace A385794.P14981812948761322615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P14981812948761322615

/-! ## A385794.P5346501925908638028

`∩[A386072(n+1), A386173(n+1)]`
-/

namespace A385794.P5346501925908638028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P5346501925908638028

/-! ## A385794.P15352135719848191367

`∩[A386123(n+1), A386155(n+1)]`
-/

namespace A385794.P15352135719848191367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P15352135719848191367

/-! ## A385794.P11264836231445910881

`∩[A386123(n+1), A386173(n+1)]`
-/

namespace A385794.P11264836231445910881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P11264836231445910881

/-! ## A385794.P1696374159768879999

`∩[A386123(n+1), A386188(n+1)]`
-/

namespace A385794.P1696374159768879999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P1696374159768879999

/-! ## A385794.P10602478161804815089

`∩[A386123(n+1), A386193(n+1)]`
-/

namespace A385794.P10602478161804815089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P10602478161804815089

/-! ## A385794.P4174378180442844436

`∩[A386123(n+1), A386194(n+1)]`
-/

namespace A385794.P4174378180442844436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P4174378180442844436

/-! ## A385794.P3853212413110879114

`∩[A386155(n+1), A386173(n+1)]`
-/

namespace A385794.P3853212413110879114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386155 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P3853212413110879114

/-! ## A385794.P13750691221329344718

`∩[A386173(n+1), A386188(n+1)]`
-/

namespace A385794.P13750691221329344718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P13750691221329344718

/-! ## A385794.P1310545363978175594

`∩[A386173(n+1), A386193(n+1)]`
-/

namespace A385794.P1310545363978175594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385794.P1310545363978175594

/-!
# A385795: Primes having only {4, 7, 8} as digits.

The programs for A385795, there is no canonical definition to state claims against.
-/

/-! ## A385795.P16143813149178559143

`∩[A386074(n+1), A386190(n+1)]`
-/

namespace A385795.P16143813149178559143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P16143813149178559143

/-! ## A385795.P3775372942746645132

`∩[A386074(n+1), A386193(n+1)]`
-/

namespace A385795.P3775372942746645132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P3775372942746645132

/-! ## A385795.P3412149292197743705

`∩[A386190(n+1), A386193(n+1)]`
-/

namespace A385795.P3412149292197743705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P3412149292197743705

/-! ## A385795.P2453745020019091595

`∩[A386074(n+1), A386157(n+1)]`
-/

namespace A385795.P2453745020019091595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P2453745020019091595

/-! ## A385795.P11793299270798551597

`∩[A386157(n+1), A386190(n+1)]`
-/

namespace A385795.P11793299270798551597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P11793299270798551597

/-! ## A385795.P15859651332325061615

`∩[A386157(n+1), A386193(n+1)]`
-/

namespace A385795.P15859651332325061615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P15859651332325061615

/-! ## A385795.P6817602886641484990

`∩[A386074(n+1), A386195(n+1)]`
-/

namespace A385795.P6817602886641484990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P6817602886641484990

/-! ## A385795.P10073808857830844967

`∩[A386157(n+1), A386195(n+1)]`
-/

namespace A385795.P10073808857830844967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P10073808857830844967

/-! ## A385795.P13435454504649236310

`∩[A386190(n+1), A386195(n+1)]`
-/

namespace A385795.P13435454504649236310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P13435454504649236310

/-! ## A385795.P13300427954139131000

`∩[A386193(n+1), A386195(n+1)]`
-/

namespace A385795.P13300427954139131000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P13300427954139131000

/-! ## A385795.P638798974496971551

`∩[A386074(n+1), A386126(n+1)]`
-/

namespace A385795.P638798974496971551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P638798974496971551

/-! ## A385795.P2404592799327610620

`∩[A386074(n+1), A386176(n+1)]`
-/

namespace A385795.P2404592799327610620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386074 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P2404592799327610620

/-! ## A385795.P1892054675111081029

`∩[A386126(n+1), A386157(n+1)]`
-/

namespace A385795.P1892054675111081029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P1892054675111081029

/-! ## A385795.P4029117390354876018

`∩[A386126(n+1), A386176(n+1)]`
-/

namespace A385795.P4029117390354876018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P4029117390354876018

/-! ## A385795.P2804717133377879230

`∩[A386126(n+1), A386190(n+1)]`
-/

namespace A385795.P2804717133377879230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P2804717133377879230

/-! ## A385795.P12745884518669318106

`∩[A386126(n+1), A386193(n+1)]`
-/

namespace A385795.P12745884518669318106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P12745884518669318106

/-! ## A385795.P9642468521875795207

`∩[A386126(n+1), A386195(n+1)]`
-/

namespace A385795.P9642468521875795207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P9642468521875795207

/-! ## A385795.P10056414267448536673

`∩[A386157(n+1), A386176(n+1)]`
-/

namespace A385795.P10056414267448536673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386157 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P10056414267448536673

/-! ## A385795.P1071750740741287009

`∩[A386176(n+1), A386190(n+1)]`
-/

namespace A385795.P1071750740741287009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P1071750740741287009

/-! ## A385795.P16023018919989811774

`∩[A386176(n+1), A386193(n+1)]`
-/

namespace A385795.P16023018919989811774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385795.P16023018919989811774

/-!
# A385796: Primes having only {4, 8, 9} as digits.

The programs for A385796, there is no canonical definition to state claims against.
-/

/-! ## A385796.P10782902230173351921

`∩[A051416(n+1), A386076(n+1)]`
-/

namespace A385796.P10782902230173351921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P10782902230173351921

/-! ## A385796.P14256088574347388353

`∩[A051416(n+1), A386192(n+1)]`
-/

namespace A385796.P14256088574347388353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P14256088574347388353

/-! ## A385796.P1604121650713897124

`∩[A386076(n+1), A386192(n+1)]`
-/

namespace A385796.P1604121650713897124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P1604121650713897124

/-! ## A385796.P6724122603347655603

`∩[A051416(n+1), A386159(n+1)]`
-/

namespace A385796.P6724122603347655603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P6724122603347655603

/-! ## A385796.P4349282110490180384

`∩[A386076(n+1), A386159(n+1)]`
-/

namespace A385796.P4349282110490180384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P4349282110490180384

/-! ## A385796.P2406722435848910133

`∩[A386159(n+1), A386192(n+1)]`
-/

namespace A385796.P2406722435848910133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P2406722435848910133

/-! ## A385796.P4077706570901540826

`∩[A051416(n+1), A386195(n+1)]`
-/

namespace A385796.P4077706570901540826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P4077706570901540826

/-! ## A385796.P3843558373769299691

`∩[A386076(n+1), A386195(n+1)]`
-/

namespace A385796.P3843558373769299691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P3843558373769299691

/-! ## A385796.P748371892056036027

`∩[A386159(n+1), A386195(n+1)]`
-/

namespace A385796.P748371892056036027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P748371892056036027

/-! ## A385796.P9377291894514107173

`∩[A386192(n+1), A386195(n+1)]`
-/

namespace A385796.P9377291894514107173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P9377291894514107173

/-! ## A385796.P15360987141800890066

`∩[A051416(n+1), A386128(n+1)]`
-/

namespace A385796.P15360987141800890066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P15360987141800890066

/-! ## A385796.P2961957910021826415

`∩[A051416(n+1), A386177(n+1)]`
-/

namespace A385796.P2961957910021826415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P2961957910021826415

/-! ## A385796.P9574535722010143154

`∩[A386076(n+1), A386128(n+1)]`
-/

namespace A385796.P9574535722010143154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P9574535722010143154

/-! ## A385796.P1133679443045314572

`∩[A386076(n+1), A386177(n+1)]`
-/

namespace A385796.P1133679443045314572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P1133679443045314572

/-! ## A385796.P11526705613950677264

`∩[A386128(n+1), A386159(n+1)]`
-/

namespace A385796.P11526705613950677264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P11526705613950677264

/-! ## A385796.P3363195177864894918

`∩[A386128(n+1), A386177(n+1)]`
-/

namespace A385796.P3363195177864894918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P3363195177864894918

/-! ## A385796.P1461487439959486008

`∩[A386128(n+1), A386192(n+1)]`
-/

namespace A385796.P1461487439959486008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P1461487439959486008

/-! ## A385796.P17428121277229406365

`∩[A386128(n+1), A386195(n+1)]`
-/

namespace A385796.P17428121277229406365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P17428121277229406365

/-! ## A385796.P10273377006525444363

`∩[A386159(n+1), A386177(n+1)]`
-/

namespace A385796.P10273377006525444363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P10273377006525444363

/-! ## A385796.P2515477251164498897

`∩[A386177(n+1), A386192(n+1)]`
-/

namespace A385796.P2515477251164498897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385796.P2515477251164498897

/-!
# A385797: Primes having only {5, 6, 9} as digits.

The programs for A385797, there is no canonical definition to state claims against.
-/

/-! ## A385797.P8457608223575764625

`∩[A386078(n+1), A386198(n+1)]`
-/

namespace A385797.P8457608223575764625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P8457608223575764625

/-! ## A385797.P16818613855659721760

`∩[A386078(n+1), A386161(n+1)]`
-/

namespace A385797.P16818613855659721760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P16818613855659721760

/-! ## A385797.P2556535375072645144

`∩[A386078(n+1), A386189(n+1)]`
-/

namespace A385797.P2556535375072645144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P2556535375072645144

/-! ## A385797.P16764458641896071784

`∩[A386161(n+1), A386189(n+1)]`
-/

namespace A385797.P16764458641896071784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P16764458641896071784

/-! ## A385797.P4117116523622103567

`∩[A386161(n+1), A386198(n+1)]`
-/

namespace A385797.P4117116523622103567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P4117116523622103567

/-! ## A385797.P12722859398352722739

`∩[A386189(n+1), A386198(n+1)]`
-/

namespace A385797.P12722859398352722739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P12722859398352722739

/-! ## A385797.P4763928212658597741

`∩[A386078(n+1), A386197(n+1)]`
-/

namespace A385797.P4763928212658597741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P4763928212658597741

/-! ## A385797.P13750087147736325372

`∩[A386161(n+1), A386197(n+1)]`
-/

namespace A385797.P13750087147736325372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P13750087147736325372

/-! ## A385797.P15669283117930113375

`∩[A386189(n+1), A386197(n+1)]`
-/

namespace A385797.P15669283117930113375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P15669283117930113375

/-! ## A385797.P9522264795653234380

`∩[A386197(n+1), A386198(n+1)]`
-/

namespace A385797.P9522264795653234380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P9522264795653234380

/-! ## A385797.P9975797908176915916

`∩[A386078(n+1), A386131(n+1)]`
-/

namespace A385797.P9975797908176915916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P9975797908176915916

/-! ## A385797.P10685916816456066039

`∩[A386078(n+1), A386180(n+1)]`
-/

namespace A385797.P10685916816456066039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P10685916816456066039

/-! ## A385797.P3894064494395899429

`∩[A386131(n+1), A386161(n+1)]`
-/

namespace A385797.P3894064494395899429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P3894064494395899429

/-! ## A385797.P16079354479197520709

`∩[A386131(n+1), A386180(n+1)]`
-/

namespace A385797.P16079354479197520709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P16079354479197520709

/-! ## A385797.P13626997762496040015

`∩[A386131(n+1), A386189(n+1)]`
-/

namespace A385797.P13626997762496040015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P13626997762496040015

/-! ## A385797.P2819908061611312120

`∩[A386131(n+1), A386197(n+1)]`
-/

namespace A385797.P2819908061611312120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P2819908061611312120

/-! ## A385797.P13649375172491105954

`∩[A386131(n+1), A386198(n+1)]`
-/

namespace A385797.P13649375172491105954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P13649375172491105954

/-! ## A385797.P12636978740678509240

`∩[A386161(n+1), A386180(n+1)]`
-/

namespace A385797.P12636978740678509240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386180 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P12636978740678509240

/-! ## A385797.P12523726365745107834

`∩[A386180(n+1), A386189(n+1)]`
-/

namespace A385797.P12523726365745107834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P12523726365745107834

/-! ## A385797.P17258192636146604932

`∩[A386180(n+1), A386197(n+1)]`
-/

namespace A385797.P17258192636146604932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385797.P17258192636146604932

/-!
# A385798: Primes having only {5, 8, 9} as digits.

The programs for A385798, there is no canonical definition to state claims against.
-/

/-! ## A385798.P7499553384185831021

`∩[A386081(n+1), A386198(n+1)]`
-/

namespace A385798.P7499553384185831021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P7499553384185831021

/-! ## A385798.P10479109725759344906

`∩[A386081(n+1), A386164(n+1)]`
-/

namespace A385798.P10479109725759344906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P10479109725759344906

/-! ## A385798.P8801171265249862826

`∩[A386081(n+1), A386192(n+1)]`
-/

namespace A385798.P8801171265249862826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P8801171265249862826

/-! ## A385798.P15096341146838567404

`∩[A386164(n+1), A386192(n+1)]`
-/

namespace A385798.P15096341146838567404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P15096341146838567404

/-! ## A385798.P1177176593534256305

`∩[A386164(n+1), A386198(n+1)]`
-/

namespace A385798.P1177176593534256305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P1177176593534256305

/-! ## A385798.P4063735363895838836

`∩[A386192(n+1), A386198(n+1)]`
-/

namespace A385798.P4063735363895838836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P4063735363895838836

/-! ## A385798.P9133718880176822065

`∩[A386081(n+1), A386199(n+1)]`
-/

namespace A385798.P9133718880176822065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P9133718880176822065

/-! ## A385798.P15304156008810642435

`∩[A386164(n+1), A386199(n+1)]`
-/

namespace A385798.P15304156008810642435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P15304156008810642435

/-! ## A385798.P1479828089617299910

`∩[A386192(n+1), A386199(n+1)]`
-/

namespace A385798.P1479828089617299910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386192 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P1479828089617299910

/-! ## A385798.P15058799448955485091

`∩[A386198(n+1), A386199(n+1)]`
-/

namespace A385798.P15058799448955485091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P15058799448955485091

/-! ## A385798.P17354467031549784862

`∩[A386081(n+1), A386134(n+1)]`
-/

namespace A385798.P17354467031549784862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P17354467031549784862

/-! ## A385798.P2495637896257821612

`∩[A386081(n+1), A386183(n+1)]`
-/

namespace A385798.P2495637896257821612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P2495637896257821612

/-! ## A385798.P2989669551538824563

`∩[A386134(n+1), A386164(n+1)]`
-/

namespace A385798.P2989669551538824563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P2989669551538824563

/-! ## A385798.P13190179311483974381

`∩[A386134(n+1), A386183(n+1)]`
-/

namespace A385798.P13190179311483974381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P13190179311483974381

/-! ## A385798.P12442765615389803786

`∩[A386134(n+1), A386192(n+1)]`
-/

namespace A385798.P12442765615389803786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P12442765615389803786

/-! ## A385798.P11531085810941271958

`∩[A386134(n+1), A386198(n+1)]`
-/

namespace A385798.P11531085810941271958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P11531085810941271958

/-! ## A385798.P6738914995458680653

`∩[A386134(n+1), A386199(n+1)]`
-/

namespace A385798.P6738914995458680653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P6738914995458680653

/-! ## A385798.P9175971946075843848

`∩[A386164(n+1), A386183(n+1)]`
-/

namespace A385798.P9175971946075843848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P9175971946075843848

/-! ## A385798.P9360229557312158737

`∩[A386183(n+1), A386192(n+1)]`
-/

namespace A385798.P9360229557312158737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P9360229557312158737

/-! ## A385798.P2758251136298557701

`∩[A386183(n+1), A386198(n+1)]`
-/

namespace A385798.P2758251136298557701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385798.P2758251136298557701

/-!
# A385799: Primes having only {6, 7, 8} as digits.

The programs for A385799, there is no canonical definition to state claims against.
-/

/-! ## A385799.P12604844729855647284

`∩[A386082(n+1), A386165(n+1)]`
-/

namespace A385799.P12604844729855647284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P12604844729855647284

/-! ## A385799.P7063728504955202552

`∩[A386082(n+1), A386193(n+1)]`
-/

namespace A385799.P7063728504955202552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P7063728504955202552

/-! ## A385799.P8856278596219289797

`∩[A386082(n+1), A386196(n+1)]`
-/

namespace A385799.P8856278596219289797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P8856278596219289797

/-! ## A385799.P9819493890316238650

`∩[A386165(n+1), A386193(n+1)]`
-/

namespace A385799.P9819493890316238650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P9819493890316238650

/-! ## A385799.P5099329409278965491

`∩[A386165(n+1), A386196(n+1)]`
-/

namespace A385799.P5099329409278965491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P5099329409278965491

/-! ## A385799.P8396152290079936022

`∩[A386193(n+1), A386196(n+1)]`
-/

namespace A385799.P8396152290079936022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P8396152290079936022

/-! ## A385799.P5724142220188618669

`∩[A106111(n+1), A386082(n+1)]`
-/

namespace A385799.P5724142220188618669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P5724142220188618669

/-! ## A385799.P17031590842867505529

`∩[A106111(n+1), A386165(n+1)]`
-/

namespace A385799.P17031590842867505529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P17031590842867505529

/-! ## A385799.P15859924560679197058

`∩[A106111(n+1), A386193(n+1)]`
-/

namespace A385799.P15859924560679197058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P15859924560679197058

/-! ## A385799.P17698522501014374956

`∩[A106111(n+1), A386196(n+1)]`
-/

namespace A385799.P17698522501014374956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P17698522501014374956

/-! ## A385799.P3365803476299123731

`∩[A106111(n+1), A386135(n+1)]`
-/

namespace A385799.P3365803476299123731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P3365803476299123731

/-! ## A385799.P11881507179739264656

`∩[A106111(n+1), A386184(n+1)]`
-/

namespace A385799.P11881507179739264656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P11881507179739264656

/-! ## A385799.P15978786020851037854

`∩[A386082(n+1), A386135(n+1)]`
-/

namespace A385799.P15978786020851037854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P15978786020851037854

/-! ## A385799.P2048998324189060851

`∩[A386082(n+1), A386184(n+1)]`
-/

namespace A385799.P2048998324189060851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P2048998324189060851

/-! ## A385799.P12852284995463809904

`∩[A386135(n+1), A386165(n+1)]`
-/

namespace A385799.P12852284995463809904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P12852284995463809904

/-! ## A385799.P8388696362872220552

`∩[A386135(n+1), A386184(n+1)]`
-/

namespace A385799.P8388696362872220552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P8388696362872220552

/-! ## A385799.P3190991622947392197

`∩[A386135(n+1), A386193(n+1)]`
-/

namespace A385799.P3190991622947392197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P3190991622947392197

/-! ## A385799.P10405673132843318469

`∩[A386135(n+1), A386196(n+1)]`
-/

namespace A385799.P10405673132843318469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P10405673132843318469

/-! ## A385799.P1141716149958925961

`∩[A386165(n+1), A386184(n+1)]`
-/

namespace A385799.P1141716149958925961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P1141716149958925961

/-! ## A385799.P1356713473423967557

`∩[A386184(n+1), A386193(n+1)]`
-/

namespace A385799.P1356713473423967557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386193 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A385799.P1356713473423967557

