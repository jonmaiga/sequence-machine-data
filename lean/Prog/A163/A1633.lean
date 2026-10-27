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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B001.C011
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C013
import Seq.Opaque.C014
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
# A163300: Even numbers without 2.

The programs for A163300, the canonical program `A163300.P6939037721526909123` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163300 has offset 1).

The definition of A163300 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163300.P6939037721526909123

`2*a(n-1)-a(n-2)` with `a(0)=0, a(1)=4, a(2)=6`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163300

/-- `2*a(n-1)-a(n-2)` -/
def P6939037721526909123.Spec : Prop :=
  ∀ n, P6939037721526909123.a n = A163300 (n + 1)

theorem P6939037721526909123.correct : P6939037721526909123.Spec := by
  intro n
  simp only [A163300, Nat.add_sub_cancel]

end A163300

/-!
# A163301: a(n) = Sum_{x=n-th even nonprime..n-th odd nonprime} -x*(-1)^x.

The programs for A163301, there is no canonical definition to state claims against.
-/

/-! ## A163301.P622671467663596849

`C(2, n+2)+comp[floor(p?[2*n+1]/2)]-n`
-/

namespace A163301.P622671467663596849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A163301.P622671467663596849

/-! ## A163301.P10340548820253772735

`ceil(A165971(n+1)/2)`
-/

namespace A163301.P10340548820253772735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A165971 (n + 1) : ℚ) / 2⌉

end

end A163301.P10340548820253772735

/-! ## A163301.P1265143870641052298

`record[A179621(n+2)]-n`
-/

namespace A163301.P1265143870641052298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179621 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A163301.P1265143870641052298

/-! ## A163301.P12246410962275095230

`comp[A067076(n+2)]+1-n`
-/

namespace A163301.P12246410962275095230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A163301.P12246410962275095230

/-! ## A163301.P4867890018973265315

`comp[A285982(2*(n+1))]-n`
-/

namespace A163301.P4867890018973265315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285982 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A163301.P4867890018973265315

/-! ## A163301.P8693912707592585475

`comp[∑[A028334(n+2)]]+1-n`
-/

namespace A163301.P8693912707592585475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A163301.P8693912707592585475

/-! ## A163301.P3074749415688051548

`comp[A005097(n+2)-1]+1-n`
-/

namespace A163301.P3074749415688051548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 2) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + (1 - (n : ℤ))

end

end A163301.P3074749415688051548

/-! ## A163301.P10061588466411322274

`lt[atan(n), A001222(2*n+1)]-n`
-/

namespace A163301.P10061588466411322274
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n : ℤ) - (n : ℤ)

end

end A163301.P10061588466411322274

/-! ## A163301.P4321672291016768732

`abs(comp[ceil(A006530(n+1)/2)]-1-n)`
-/

namespace A163301.P4321672291016768732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006530 (n + 1) : ℚ) / 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1 - (n : ℤ)|

end

end A163301.P4321672291016768732

/-!
# A163303: a(n) = n^3 + 73*n^2 + n + 67.

The programs for A163303, the canonical program `A163303.P10725789719857187228` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163303 has offset 0).

The definition of A163303 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+73*n²+n+67` (program `A163303.P10725789719857187228`, by `A163303.P10725789719857187228.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163303.P10725789719857187228

`n^3+73*n²+n+67`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163303

/-- `n^3+73*n²+n+67` -/
def P10725789719857187228.Spec : Prop :=
  ∀ n, (P10725789719857187228.a n : ℤ) = A163303 n

theorem P10725789719857187228.correct : P10725789719857187228.Spec := by
  intro n
  simp only [A163303]

end A163303

/-!
# A163304: a(n) = n^4 + 984*n^3 + 902*n^2 + 394*n + 858.

The programs for A163304, the canonical program `A163304.P3138753925195739795` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163304 has offset 0).

The definition of A163304 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+984*n^3+902*n²+394*n+858` (program `A163304.P3138753925195739795`, by `A163304.P3138753925195739795.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163304.P3138753925195739795

`n^4+984*n^3+902*n²+394*n+858`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163304

/-- `n^4+984*n^3+902*n²+394*n+858` -/
def P3138753925195739795.Spec : Prop :=
  ∀ n, (P3138753925195739795.a n : ℤ) = A163304 n

theorem P3138753925195739795.correct : P3138753925195739795.Spec := by
  intro n
  simp only [A163304]

end A163304

/-!
# A163305: Numerators of fractions in the approximation of the square root of 5 satisfying: a(n)= (a(n-1)+ c)/(a(n-1)+1); with c=5 and a(1)=0. Also product of the powers of two and five times the Fibonacci numbers.

The programs for A163305, the canonical program `A163305.P16012779075755920142` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163305 has offset 1).

The definition of A163305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163305.P16012779075755920142

`2*a(n-1)+4*a(n-2)` with `a(0)=0, a(1)=5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163305

/-- `2*a(n-1)+4*a(n-2)` -/
def P16012779075755920142.Spec : Prop :=
  ∀ n, (P16012779075755920142.a n : ℤ) = A163305 (n + 1)

theorem P16012779075755920142.correct : P16012779075755920142.Spec := by
  intro n
  simp only [A163305, Nat.add_sub_cancel]

end A163305

/-! ## A163305.P11885986406080421516

`5*A000045(n)*2^(n-1)`
-/

namespace A163305.P11885986406080421516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A000045 n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A163305.P11885986406080421516

namespace A163305

/-- `5*A000045(n)*2^(n-1)` -/
def P11885986406080421516.Spec : Prop :=
  ∀ n, P11885986406080421516.a n = (A163305 (n + 1) : ℚ)

end A163305

/-! ## A163305.P6397218936643509977

`ogf(5x/(1-2x-4x^2))`
-/

namespace A163305.P6397218936643509977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -2, -4] n

end

end A163305.P6397218936643509977

namespace A163305

/-- `ogf(5x/(1-2x-4x^2))` -/
def P6397218936643509977.Spec : Prop :=
  ∀ n, P6397218936643509977.a n = A163305 (n + 1)

end A163305

/-! ## A163305.P6563054294871453371

`8*(a(n-2)+a(n-3))` with `a(0)=0, a(1)=5, a(2)=10`
-/

namespace A163305.P6563054294871453371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 5, 10] fun n a =>
  8 * (a (n - 2) + a (n - 3))

end

end A163305.P6563054294871453371

namespace A163305

/-- `8*(a(n-2)+a(n-3))` -/
def P6563054294871453371.Spec : Prop :=
  ∀ n, (P6563054294871453371.a n : ℤ) = A163305 (n + 1)

end A163305

/-! ## A163305.P9251818745595865549

`Δ[A084057(n)]`
-/

namespace A163305.P9251818745595865549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163305.P9251818745595865549

namespace A163305

/-- `Δ[A084057(n)]` -/
def P9251818745595865549.Spec : Prop :=
  ∀ n, P9251818745595865549.a n = A163305 (n + 1)

end A163305

/-! ## A163305.P10442643673987956524

`Δ[A203579(n)]`
-/

namespace A163305.P10442643673987956524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163305.P10442643673987956524

namespace A163305

/-- `Δ[A203579(n)]` -/
def P10442643673987956524.Spec : Prop :=
  ∀ n, P10442643673987956524.a n = A163305 (n + 1)

end A163305

/-! ## A163305.P4567805715975342584

`5*A085449(n)`
-/

namespace A163305.P4567805715975342584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A085449 n

end

end A163305.P4567805715975342584

namespace A163305

/-- `5*A085449(n)` -/
def P4567805715975342584.Spec : Prop :=
  ∀ n, P4567805715975342584.a n = A163305 (n + 1)

end A163305

/-! ## A163305.P14223691794494586276

`Δ[A087131(n)/2]`
-/

namespace A163305.P14223691794494586276
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087131 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163305.P14223691794494586276

namespace A163305

/-- `Δ[A087131(n)/2]` -/
def P14223691794494586276.Spec : Prop :=
  ∀ n, P14223691794494586276.a n = (A163305 (n + 1) : ℚ)

end A163305

/-! ## A163305.P13933738818658786939

`Δ[A272263(n)/2]`
-/

namespace A163305.P13933738818658786939
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272263 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163305.P13933738818658786939

namespace A163305

/-- `Δ[A272263(n)/2]` -/
def P13933738818658786939.Spec : Prop :=
  ∀ n, P13933738818658786939.a n = (A163305 (n + 1) : ℚ)

end A163305

/-! ## A163305.P849285618220775653

`Δ[5*A014335(n)]`
-/

namespace A163305.P849285618220775653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A014335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163305.P849285618220775653

namespace A163305

/-- `Δ[5*A014335(n)]` -/
def P849285618220775653.Spec : Prop :=
  ∀ n, P849285618220775653.a n = A163305 (n + 1)

end A163305

/-! ## A163305.P13749371299407165281

`5/2*A103435(n)`
-/

namespace A163305.P13749371299407165281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 2 * (A103435 n : ℚ)

end

end A163305.P13749371299407165281

namespace A163305

/-- `5/2*A103435(n)` -/
def P13749371299407165281.Spec : Prop :=
  ∀ n, P13749371299407165281.a n = (A163305 (n + 1) : ℚ)

end A163305

/-! ## A163305.P12349425013165823215

`5/4*A209084(n)`
-/

namespace A163305.P12349425013165823215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A209084 n : ℚ)

end

end A163305.P12349425013165823215

namespace A163305

/-- `5/4*A209084(n)` -/
def P12349425013165823215.Spec : Prop :=
  ∀ n, P12349425013165823215.a n = (A163305 (n + 1) : ℚ)

end A163305

/-! ## A163305.P17626145057777356685

`2^(n-1)*A022088(n)`
-/

namespace A163305.P17626145057777356685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A022088 n : ℚ)

end

end A163305.P17626145057777356685

namespace A163305

/-- `2^(n-1)*A022088(n)` -/
def P17626145057777356685.Spec : Prop :=
  ∀ n, P17626145057777356685.a n = (A163305 (n + 1) : ℚ)

end A163305

/-! ## A163305.P5455148832764585513

`Δ[2^(n-1)*A000032(n)]`
-/

namespace A163305.P5455148832764585513
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000032 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163305.P5455148832764585513

namespace A163305

/-- `Δ[2^(n-1)*A000032(n)]` -/
def P5455148832764585513.Spec : Prop :=
  ∀ n, P5455148832764585513.a n = (A163305 (n + 1) : ℚ)

end A163305

/-! ## A163305.P1144385591481319771

`A209084(n)+A085449(n)`
-/

namespace A163305.P1144385591481319771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209084 n + A085449 n

end

end A163305.P1144385591481319771

namespace A163305

/-- `A209084(n)+A085449(n)` -/
def P1144385591481319771.Spec : Prop :=
  ∀ n, P1144385591481319771.a n = A163305 (n + 1)

end A163305

/-! ## A163305.P12517507858163985992

`A162770(n)-A087131(n)`
-/

namespace A163305.P12517507858163985992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162770 n - A087131 n

end

end A163305.P12517507858163985992

namespace A163305

/-- `A162770(n)-A087131(n)` -/
def P12517507858163985992.Spec : Prop :=
  ∀ n, P12517507858163985992.a n = A163305 (n + 1)

end A163305

/-! ## A163305.P3355057986339676445

`A087206(n)-A319196(n)`
-/

namespace A163305.P3355057986339676445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087206 n - A319196 n

end

end A163305.P3355057986339676445

namespace A163305

/-- `A087206(n)-A319196(n)` -/
def P3355057986339676445.Spec : Prop :=
  ∀ n, P3355057986339676445.a n = A163305 (n + 1)

end A163305

/-! ## A163305.P6700777370776055891

`A000045(n)*A146523(n)`
-/

namespace A163305.P6700777370776055891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A146523 n

end

end A163305.P6700777370776055891

namespace A163305

/-- `A000045(n)*A146523(n)` -/
def P6700777370776055891.Spec : Prop :=
  ∀ n, P6700777370776055891.a n = A163305 (n + 1)

end A163305

/-! ## A163305.P1956623707623430953

`A022088(n)*A131577(n)`
-/

namespace A163305.P1956623707623430953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022088 n * A131577 n

end

end A163305.P1956623707623430953

namespace A163305

/-- `A022088(n)*A131577(n)` -/
def P1956623707623430953.Spec : Prop :=
  ∀ n, P1956623707623430953.a n = A163305 (n + 1)

end A163305

/-! ## A163305.P1664660034196495319

`lcm(A022088(n), A085449(n))`
-/

namespace A163305.P1664660034196495319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A022088 n) (A085449 n)

end

end A163305.P1664660034196495319

namespace A163305

/-- `lcm(A022088(n), A085449(n))` -/
def P1664660034196495319.Spec : Prop :=
  ∀ n, (P1664660034196495319.a n : ℤ) = A163305 (n + 1)

end A163305

/-!
# A163306: a(n) = 12*a(n-1) - 31*a(n-2) for n > 1; a(0) = 1, a(1) = 7.

The programs for A163306, the canonical program `A163306.P11101962459517115574` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163306 has offset 0).

The definition of A163306 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12*a(n-1)-31*a(n-2)` (program `A163306.P11101962459517115574`, by `A163306.P11101962459517115574.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163306.P11101962459517115574

`12*a(n-1)-31*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163306

/-- `12*a(n-1)-31*a(n-2)` -/
def P11101962459517115574.Spec : Prop :=
  ∀ n, P11101962459517115574.a n = A163306 n

theorem P11101962459517115574.correct : P11101962459517115574.Spec := by
  intro n
  simp only [A163306]

end A163306

/-! ## A163306.P14402641831309861772

`((5+sqrt(5))*(6+sqrt(5))^n+(5-sqrt(5))*(6-sqrt(5))^n)/10`
-/

namespace A163306.P14402641831309861772
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (5 : ℝ)) * (6 + Real.sqrt (5 : ℝ)) ^ n + (5 - Real.sqrt (5 : ℝ)) * (6 - Real.sqrt (5 : ℝ)) ^ n) / 10

end

end A163306.P14402641831309861772

namespace A163306

/-- `((5+sqrt(5))*(6+sqrt(5))^n+(5-sqrt(5))*(6-sqrt(5))^n)/10` -/
def P14402641831309861772.Spec : Prop :=
  ∀ n, P14402641831309861772.a n = (A163306 n : ℝ)

theorem P14402641831309861772.correct : P14402641831309861772.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163306, Nat.add_sub_cancel, A163306.P14402641831309861772.a, A163306.P11101962459517115574.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163306, Nat.add_sub_cancel, A163306.P14402641831309861772.a, A163306.P11101962459517115574.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163306

/-! ## A163306.P17199854906110235028

`Δ[A152107(n)/5]`
-/

namespace A163306.P17199854906110235028
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152107 n : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163306.P17199854906110235028

namespace A163306

/-- `Δ[A152107(n)/5]` -/
def P17199854906110235028.Spec : Prop :=
  ∀ n, P17199854906110235028.a n = (A163306 n : ℚ)

end A163306

/-!
# A163307: a(n) = 14*a(n-1) - 44*a(n-2) for n > 1; a(0) = 1, a(1) = 8.

The programs for A163307, the canonical program `A163307.P9550476794807558767` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163307 has offset 0).

The definition of A163307 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `14*a(n-1)-44*a(n-2)` (program `A163307.P9550476794807558767`, by `A163307.P9550476794807558767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163307.P9550476794807558767

`14*a(n-1)-44*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163307

/-- `14*a(n-1)-44*a(n-2)` -/
def P9550476794807558767.Spec : Prop :=
  ∀ n, P9550476794807558767.a n = A163307 n

theorem P9550476794807558767.correct : P9550476794807558767.Spec := by
  intro n
  simp only [A163307]

end A163307

/-! ## A163307.P17660423462961567377

`((5+sqrt(5))*(7+sqrt(5))^n+(5-sqrt(5))*(7-sqrt(5))^n)/10`
-/

namespace A163307.P17660423462961567377
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (5 : ℝ)) * (7 + Real.sqrt (5 : ℝ)) ^ n + (5 - Real.sqrt (5 : ℝ)) * (7 - Real.sqrt (5 : ℝ)) ^ n) / 10

end

end A163307.P17660423462961567377

namespace A163307

/-- `((5+sqrt(5))*(7+sqrt(5))^n+(5-sqrt(5))*(7-sqrt(5))^n)/10` -/
def P17660423462961567377.Spec : Prop :=
  ∀ n, P17660423462961567377.a n = (A163307 n : ℝ)

theorem P17660423462961567377.correct : P17660423462961567377.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163307, Nat.add_sub_cancel, A163307.P17660423462961567377.a, A163307.P9550476794807558767.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163307, Nat.add_sub_cancel, A163307.P17660423462961567377.a, A163307.P9550476794807558767.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163307

/-! ## A163307.P17580933194380438098

`2^n*A081568(n)`
-/

namespace A163307.P17580933194380438098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A081568 n

end

end A163307.P17580933194380438098

namespace A163307

/-- `2^n*A081568(n)` -/
def P17580933194380438098.Spec : Prop :=
  ∀ n, P17580933194380438098.a n = A163307 n

end A163307

/-! ## A163307.P6760626941776986386

`A081568(n)*A143095(2*n)`
-/

namespace A163307.P6760626941776986386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081568 n * A143095 (2 * n)

end

end A163307.P6760626941776986386

namespace A163307

/-- `A081568(n)*A143095(2*n)` -/
def P6760626941776986386.Spec : Prop :=
  ∀ n, P6760626941776986386.a n = A163307 n

end A163307

/-! ## A163307.P7839748720841693014

`A017912(2*n)*A081568(n)*A014963(A008458(n))`
-/

namespace A163307.P7839748720841693014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017912 (2 * n) * A081568 n * A014963 (A008458 n).toNat

end

end A163307.P7839748720841693014

namespace A163307

/-- `A017912(2*n)*A081568(n)*A014963(A008458(n))` -/
def P7839748720841693014.Spec : Prop :=
  ∀ n, P7839748720841693014.a n = A163307 n

end A163307

/-!
# A163308: a(n) = 16*a(n-1) - 59*a(n-2) for n > 1; a(0) = 1, a(1) = 9.

The programs for A163308, the canonical program `A163308.P17043910963904176173` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163308 has offset 0).

The definition of A163308 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)-59*a(n-2)` (program `A163308.P17043910963904176173`, by `A163308.P17043910963904176173.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163308.P17043910963904176173

`16*a(n-1)-59*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163308

/-- `16*a(n-1)-59*a(n-2)` -/
def P17043910963904176173.Spec : Prop :=
  ∀ n, P17043910963904176173.a n = A163308 n

theorem P17043910963904176173.correct : P17043910963904176173.Spec := by
  intro n
  simp only [A163308]

end A163308

/-! ## A163308.P14817195276165541393

`((5+sqrt(5))*(8+sqrt(5))^n+(5-sqrt(5))*(8-sqrt(5))^n)/10`
-/

namespace A163308.P14817195276165541393
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (5 : ℝ)) * (8 + Real.sqrt (5 : ℝ)) ^ n + (5 - Real.sqrt (5 : ℝ)) * (8 - Real.sqrt (5 : ℝ)) ^ n) / 10

end

end A163308.P14817195276165541393

namespace A163308

/-- `((5+sqrt(5))*(8+sqrt(5))^n+(5-sqrt(5))*(8-sqrt(5))^n)/10` -/
def P14817195276165541393.Spec : Prop :=
  ∀ n, P14817195276165541393.a n = (A163308 n : ℝ)

theorem P14817195276165541393.correct : P14817195276165541393.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163308, Nat.add_sub_cancel, A163308.P14817195276165541393.a, A163308.P17043910963904176173.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163308, Nat.add_sub_cancel, A163308.P14817195276165541393.a, A163308.P17043910963904176173.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163308

/-!
# A163309: a(n) = 18*a(n-1) - 76*a(n-2) for n > 1; a(0) = 1, a(1) = 10.

The programs for A163309, the canonical program `A163309.P2934234776102879070` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163309 has offset 0).

The definition of A163309 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `18*a(n-1)-76*a(n-2)` (program `A163309.P2934234776102879070`, by `A163309.P2934234776102879070.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163309.P2934234776102879070

`18*a(n-1)-76*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163309

/-- `18*a(n-1)-76*a(n-2)` -/
def P2934234776102879070.Spec : Prop :=
  ∀ n, P2934234776102879070.a n = A163309 n

theorem P2934234776102879070.correct : P2934234776102879070.Spec := by
  intro n
  simp only [A163309]

end A163309

/-! ## A163309.P7657775950589155048

`((5+sqrt(5))*(9+sqrt(5))^n+(5-sqrt(5))*(9-sqrt(5))^n)/10`
-/

namespace A163309.P7657775950589155048
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (5 : ℝ)) * (9 + Real.sqrt (5 : ℝ)) ^ n + (5 - Real.sqrt (5 : ℝ)) * (9 - Real.sqrt (5 : ℝ)) ^ n) / 10

end

end A163309.P7657775950589155048

namespace A163309

/-- `((5+sqrt(5))*(9+sqrt(5))^n+(5-sqrt(5))*(9-sqrt(5))^n)/10` -/
def P7657775950589155048.Spec : Prop :=
  ∀ n, P7657775950589155048.a n = (A163309 n : ℝ)

theorem P7657775950589155048.correct : P7657775950589155048.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163309, Nat.add_sub_cancel, A163309.P7657775950589155048.a, A163309.P2934234776102879070.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163309, Nat.add_sub_cancel, A163309.P7657775950589155048.a, A163309.P2934234776102879070.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163309

/-! ## A163309.P14510279738870237008

`2^n*A081569(n)`
-/

namespace A163309.P14510279738870237008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A081569 n

end

end A163309.P14510279738870237008

namespace A163309

/-- `2^n*A081569(n)` -/
def P14510279738870237008.Spec : Prop :=
  ∀ n, P14510279738870237008.a n = A163309 n

end A163309

/-! ## A163309.P3812338200842736725

`A081569(n)*A102363(∑[n])`
-/

namespace A163309.P3812338200842736725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081569 n * A102363 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163309.P3812338200842736725

namespace A163309

/-- `A081569(n)*A102363(∑[n])` -/
def P3812338200842736725.Spec : Prop :=
  ∀ n, P3812338200842736725.a n = A163309 n

end A163309

/-! ## A163309.P7434085904142533200

`abs(Δ[A168614(n)]*A081569(n))`
-/

namespace A163309.P7434085904142533200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A081569 n|

end

end A163309.P7434085904142533200

namespace A163309

/-- `abs(Δ[A168614(n)]*A081569(n))` -/
def P7434085904142533200.Spec : Prop :=
  ∀ n, P7434085904142533200.a n = A163309 n

end A163309

/-! ## A163309.P3778112190015715001

`A081569(n)/A081567(n)*A090041(n)`
-/

namespace A163309.P3778112190015715001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081569 n : ℚ) / (A081567 n : ℚ) * (A090041 n : ℚ)

end

end A163309.P3778112190015715001

namespace A163309

/-- `A081569(n)/A081567(n)*A090041(n)` -/
def P3778112190015715001.Spec : Prop :=
  ∀ n, P3778112190015715001.a n = (A163309 n : ℚ)

end A163309

/-! ## A163309.P8575158646639507517

`A081569(n)/A081557(n)*A081561(n)`
-/

namespace A163309.P8575158646639507517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081569 n : ℚ) / (A081557 n : ℚ) * (A081561 n : ℚ)

end

end A163309.P8575158646639507517

namespace A163309

/-- `A081569(n)/A081557(n)*A081561(n)` -/
def P8575158646639507517.Spec : Prop :=
  ∀ n, P8575158646639507517.a n = (A163309 n : ℚ)

end A163309

/-!
# A163310: a(n) = 20*a(n-1) - 95*a(n-2) for n > 1; a(0) = 1, a(1) = 11.

The programs for A163310, the canonical program `A163310.P6268689595123256021` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163310 has offset 0).

The definition of A163310 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-95*a(n-2)` (program `A163310.P6268689595123256021`, by `A163310.P6268689595123256021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163310.P6268689595123256021

`20*a(n-1)-95*a(n-2)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163310

/-- `20*a(n-1)-95*a(n-2)` -/
def P6268689595123256021.Spec : Prop :=
  ∀ n, P6268689595123256021.a n = A163310 n

theorem P6268689595123256021.correct : P6268689595123256021.Spec := by
  intro n
  simp only [A163310]

end A163310

/-! ## A163310.P17150448330059794429

`((5+sqrt(5))*(10+sqrt(5))^n+(5-sqrt(5))*(10-sqrt(5))^n)/10`
-/

namespace A163310.P17150448330059794429
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 + Real.sqrt (5 : ℝ)) * (10 + Real.sqrt (5 : ℝ)) ^ n + (5 - Real.sqrt (5 : ℝ)) * (10 - Real.sqrt (5 : ℝ)) ^ n) / 10

end

end A163310.P17150448330059794429

namespace A163310

/-- `((5+sqrt(5))*(10+sqrt(5))^n+(5-sqrt(5))*(10-sqrt(5))^n)/10` -/
def P17150448330059794429.Spec : Prop :=
  ∀ n, P17150448330059794429.a n = (A163310 n : ℝ)

theorem P17150448330059794429.correct : P17150448330059794429.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163310, Nat.add_sub_cancel, A163310.P17150448330059794429.a, A163310.P6268689595123256021.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163310, Nat.add_sub_cancel, A163310.P17150448330059794429.a, A163310.P6268689595123256021.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163310

/-! ## A163310.P569095373813214888

`Δ[A163166(n+1)/95]`
-/

namespace A163310.P569095373813214888
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163166 (n + 1) : ℚ) / 95

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163310.P569095373813214888

namespace A163310

/-- `Δ[A163166(n+1)/95]` -/
def P569095373813214888.Spec : Prop :=
  ∀ n, P569095373813214888.a n = (A163310 n : ℚ)

end A163310

/-!
# A163311: Triangle read by rows in which the diagonals give the infinite set of Toothpick sequences.

The programs for A163311, there is no canonical definition to state claims against.
-/

/-! ## A163311.P1009394031344393228

`A003056(A316502(A125092(n)))`
-/

namespace A163311.P1009394031344393228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A316502 (A125092 n).toNat).toNat

end

end A163311.P1009394031344393228

/-! ## A163311.P1412648095814897522

`A044941(A219676(n))+A002024(A259454(n))`
-/

namespace A163311.P1412648095814897522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A219676 n).toNat + A002024 (A259454 n).toNat

end

end A163311.P1412648095814897522

/-! ## A163311.P2578615545561653026

`A002024(A259454(n)%A112548(n+1))`
-/

namespace A163311.P2578615545561653026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.tmod (A259454 n) (A112548 (n + 1))).toNat

end

end A163311.P2578615545561653026

/-! ## A163311.P16492441765120390272

`A227186(A000740(n+1))+A074909(n)`
-/

namespace A163311.P16492441765120390272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227186 (A000740 (n + 1)).toNat + A074909 n

end

end A163311.P16492441765120390272

/-! ## A163311.P18272725428353191619

`A221671(A199530(n+1))`
-/

namespace A163311.P18272725428353191619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221671 (A199530 (n + 1)).toNat

end

end A163311.P18272725428353191619

/-!
# A163312: Row sums of triangle A163311.

The programs for A163312, there is no canonical definition to state claims against.
-/

/-! ## A163312.P7777320367812096294

`A305105(∑[A287378(n)])`
-/

namespace A163312.P7777320367812096294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305105 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A163312.P7777320367812096294

/-! ## A163312.P13193045963997267425

`A305105(A032555(n+1))`
-/

namespace A163312.P13193045963997267425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305105 (A032555 (n + 1)).toNat

end

end A163312.P13193045963997267425

/-! ## A163312.P6722821402364790393

`A305105(A032559(n+1))`
-/

namespace A163312.P6722821402364790393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305105 (A032559 (n + 1)).toNat

end

end A163312.P6722821402364790393

/-! ## A163312.P17999194072006732351

`A305105(A077739(n+1))`
-/

namespace A163312.P17999194072006732351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305105 (A077739 (n + 1)).toNat

end

end A163312.P17999194072006732351

/-! ## A163312.P6721200607930546369

`A305105(A078213(n+1))`
-/

namespace A163312.P6721200607930546369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305105 (A078213 (n + 1)).toNat

end

end A163312.P6721200607930546369

/-!
# A163313: Triangle read by rows, A010766 convolved with A014668 (diagonalized as an infinite lower triangular matrix).

The programs for A163313, there is no canonical definition to state claims against.
-/

/-! ## A163313.P4643730492474628677

`A010766(n+1)*A014668(A002260(n+1))`
-/

namespace A163313.P4643730492474628677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1) * A014668 (A002260 (n + 1)).toNat

end

end A163313.P4643730492474628677

/-! ## A163313.P15597543418266152964

`A010783(A038722(n+1))*A014668(A002260(n+1))`
-/

namespace A163313.P15597543418266152964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (A038722 (n + 1)).toNat * A014668 (A002260 (n + 1)).toNat

end

end A163313.P15597543418266152964

/-! ## A163313.P9228195033173366981

`A004736(A286235(n+1))*A014668(A002260(n+1))`
-/

namespace A163313.P9228195033173366981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286235 (n + 1)).toNat * A014668 (A002260 (n + 1)).toNat

end

end A163313.P9228195033173366981

/-! ## A163313.P7986191362814876350

`A004736(A286245(n+1))*A014668(A002260(n+1))`
-/

namespace A163313.P7986191362814876350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286245 (n + 1)).toNat * A014668 (A002260 (n + 1)).toNat

end

end A163313.P7986191362814876350

/-! ## A163313.P6820070761602336718

`A014668(A002260(n+1))*A025581(A286158(n+1))`
-/

namespace A163313.P6820070761602336718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014668 (A002260 (n + 1)).toNat * A025581 (A286158 (n + 1)).toNat

end

end A163313.P6820070761602336718

/-! ## A163313.P4898186914159614954

`A010783(A278818(n))*A014668(A002260(n+1))`
-/

namespace A163313.P4898186914159614954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010783 (A278818 n).toNat * A014668 (A002260 (n + 1)).toNat

end

end A163313.P4898186914159614954

/-! ## A163313.P8185413120086103611

`A014668(A002260(n+1))*A071912(A242114(n+1))`
-/

namespace A163313.P8185413120086103611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014668 (A002260 (n + 1)).toNat * A071912 (A242114 (n + 1)).toNat

end

end A163313.P8185413120086103611

/-! ## A163313.P5760472018644984091

`A013942(2*(n+1))*A014668(A002260(n+1))`
-/

namespace A163313.P5760472018644984091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013942 (2 * (n + 1)) * A014668 (A002260 (n + 1)).toNat

end

end A163313.P5760472018644984091

/-!
# A163314: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^5 = I.

The programs for A163314, the canonical program `A163314.P9497514139955598195` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163314 has offset 0).

The definition of A163314 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163314.P9497514139955598195

`2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=12, a(4)=24`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163314

/-- `2*a(n-1)-a(n-2)+2*a(n-3)-a(n-4)` -/
def P9497514139955598195.Spec : Prop :=
  ∀ n, P9497514139955598195.a n = A163314 n

theorem P9497514139955598195.correct : P9497514139955598195.Spec := by
  intro n
  simp only [A163314]

end A163314

/-! ## A163314.P1151881481645721690

`A049990(A002910(n+1)-1)`
-/

namespace A163314.P1151881481645721690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (A002910 (n + 1) - 1).toNat

end

end A163314.P1151881481645721690

namespace A163314

/-- `A049990(A002910(n+1)-1)` -/
def P1151881481645721690.Spec : Prop :=
  ∀ n, P1151881481645721690.a n = A163314 n

end A163314

/-! ## A163314.P3614819275925054745

`A157271(A002910(n+1)-1)`
-/

namespace A163314.P3614819275925054745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (A002910 (n + 1) - 1).toNat

end

end A163314.P3614819275925054745

namespace A163314

/-- `A157271(A002910(n+1)-1)` -/
def P3614819275925054745.Spec : Prop :=
  ∀ n, P3614819275925054745.a n = A163314 n

end A163314

/-! ## A163314.P10587284989829028316

`A006368(lcm(A164195(n), A164196(n)))`
-/

namespace A163314.P10587284989829028316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (Int.lcm (A164195 n) (A164196 n))

end

end A163314.P10587284989829028316

namespace A163314

/-- `A006368(lcm(A164195(n), A164196(n)))` -/
def P10587284989829028316.Spec : Prop :=
  ∀ n, P10587284989829028316.a n = A163314 n

end A163314

/-! ## A163314.P4954266723354617296

`A374517(n+2)-A359550(A126383(n))`
-/

namespace A163314.P4954266723354617296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374517 (n + 2) - A359550 (A126383 n).toNat

end

end A163314.P4954266723354617296

namespace A163314

/-- `A374517(n+2)-A359550(A126383(n))` -/
def P4954266723354617296.Spec : Prop :=
  ∀ n, P4954266723354617296.a n = A163314 n

end A163314

/-!
# A163315: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^5 = I.

The programs for A163315, there is no canonical definition to state claims against.
-/

/-! ## A163315.P8722699153541169076

`A294674(A016116(2*n))+A001047(n)`
-/

namespace A163315.P8722699153541169076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294674 (A016116 (2 * n)).toNat + A001047 n

end

end A163315.P8722699153541169076

/-! ## A163315.P12244524047196641220

`A335380(C(2*n+3, n))`
-/

namespace A163315.P12244524047196641220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335380 (Nat.choose (2 * n + 3) n)

end

end A163315.P12244524047196641220

/-!
# A163316: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^5 = I.

The programs for A163316, there is no canonical definition to state claims against.
-/

/-! ## A163316.P10890158853361599429

`floor(5*4^(n-1))-A185255(6*n)`
-/

namespace A163316.P10890158853361599429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (6 * n)

end

end A163316.P10890158853361599429

/-! ## A163316.P9064016736602104836

`4*a(n-1)-A350139(a(n-2))` with `a(0)=1, a(1)=5`
-/

namespace A163316.P9064016736602104836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  4 * a (n - 1) - A350139 (a (n - 2)).toNat

end

end A163316.P9064016736602104836

/-!
# A163317: Number of reduced words of length n in Coxeter group on 6 generators S_i with relations (S_i)^2 = (S_i S_j)^5 = I.

The programs for A163317, there is no canonical definition to state claims against.
-/

/-! ## A163317.P7811962185917433719

`A315405(A063932(a(n-1)))` with `a(0)=1, a(1)=6`
-/

namespace A163317.P7811962185917433719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A315405 (A063932 (a (n - 1)).toNat).toNat

end

end A163317.P7811962185917433719

/-! ## A163317.P5099593910072791028

`A163922(n+1)-A250120(5^n)`
-/

namespace A163317.P5099593910072791028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163922 (n + 1) - A250120 (5 ^ n)

end

end A163317.P5099593910072791028

/-!
# A163318: Expansion of g.f.: Product_{k>=1} 1+k*x^k/(1-x^k)^2.

The programs for A163318, there is no canonical definition to state claims against.
-/

/-! ## A163318.P15658072158336111049

`A056186(n)-A056169(record[A056189(n+1)])`
-/

namespace A163318.P15658072158336111049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056186 n - A056169 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A163318.P15658072158336111049

/-! ## A163318.P3922512556962690775

`A082447(A136775(n+1))-A051953(n+1)`
-/

namespace A163318.P3922512556962690775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082447 (A136775 (n + 1)).toNat - A051953 (n + 1)

end

end A163318.P3922512556962690775

/-!
# A163322: The 3rd Hermite Polynomial evaluated at n: H_3(n) = 8*n^3 - 12*n.

The programs for A163322, the canonical program `A163322.P8200039314108068235` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163322 has offset 0).

The definition of A163322 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n^3-12*n` (program `A163322.P8200039314108068235`, by `A163322.P8200039314108068235.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163322.P8200039314108068235

`8*n^3-12*n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163322

/-- `8*n^3-12*n` -/
def P8200039314108068235.Spec : Prop :=
  ∀ n, P8200039314108068235.a n = A163322 n

theorem P8200039314108068235.correct : P8200039314108068235.Spec := by
  intro n
  simp only [A163322]

end A163322

/-! ## A163322.P16716319925312824727

`4*(A377663(n)-1)`
-/

namespace A163322.P16716319925312824727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A377663 n - 1)

end

end A163322.P16716319925312824727

namespace A163322

/-- `4*(A377663(n)-1)` -/
def P16716319925312824727.Spec : Prop :=
  ∀ n, P16716319925312824727.a n = A163322 n

theorem P16716319925312824727.correct : P16716319925312824727.Spec := by
  intro n
  simp only [A163322, Nat.add_sub_cancel, A163322.P16716319925312824727.a, A163322.P8200039314108068235.a, A377663, A377663.P14362438416029704129.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163322

/-! ## A163322.P14396392615419532213

`4*(A007588(n)-2*n)`
-/

namespace A163322.P14396392615419532213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A007588 n - (2 * n : ℤ))

end

end A163322.P14396392615419532213

namespace A163322

/-- `4*(A007588(n)-2*n)` -/
def P14396392615419532213.Spec : Prop :=
  ∀ n, P14396392615419532213.a n = A163322 n

theorem P14396392615419532213.correct : P14396392615419532213.Spec := by
  intro n
  simp only [A163322, Nat.add_sub_cancel, A163322.P14396392615419532213.a, A163322.P8200039314108068235.a, A007588, A007588.P13302891266756921093.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163322

/-! ## A163322.P11356828317070799136

`(A056220(n)-2)*4*n`
-/

namespace A163322.P11356828317070799136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056220 n - 2) * (4 * n : ℤ)

end

end A163322.P11356828317070799136

namespace A163322

/-- `(A056220(n)-2)*4*n` -/
def P11356828317070799136.Spec : Prop :=
  ∀ n, P11356828317070799136.a n = A163322 n

theorem P11356828317070799136.correct : P11356828317070799136.Spec := by
  intro n
  simp only [A163322, Nat.add_sub_cancel, A163322.P11356828317070799136.a, A163322.P8200039314108068235.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163322

/-! ## A163322.P3362467823911800309

`4*n*or(5, A001105(n)-7)`
-/

namespace A163322.P3362467823911800309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) * Int.lor 5 (A001105 n - 7)

end

end A163322.P3362467823911800309

namespace A163322

/-- `4*n*or(5, A001105(n)-7)` -/
def P3362467823911800309.Spec : Prop :=
  ∀ n, P3362467823911800309.a n = A163322 n

end A163322

/-! ## A163322.P6486850361134974688

`(A000217(2*n)-(n+3))*8*n/2`
-/

namespace A163322.P6486850361134974688
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000217 (2 * n) - (n + 3 : ℤ)) * (8 * n : ℤ) : ℚ) / 2

end

end A163322.P6486850361134974688

namespace A163322

/-- `(A000217(2*n)-(n+3))*8*n/2` -/
def P6486850361134974688.Spec : Prop :=
  ∀ n, P6486850361134974688.a n = (A163322 n : ℚ)

theorem P6486850361134974688.correct : P6486850361134974688.Spec := by
  intro n
  simp only [A163322, Nat.add_sub_cancel, A163322.P6486850361134974688.a, A163322.P8200039314108068235.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163322

/-!
# A163323: The 4th Hermite polynomial evaluated at n: H_4(n) = 16*n^4 - 48*n^2 + 12.

The programs for A163323, the canonical program `A163323.P2701393104860694698` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163323 has offset 0).

The definition of A163323 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*n^4-48*n²+12` (program `A163323.P2701393104860694698`, by `A163323.P2701393104860694698.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163323.P2701393104860694698

`16*n^4-48*n²+12`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163323

/-- `16*n^4-48*n²+12` -/
def P2701393104860694698.Spec : Prop :=
  ∀ n, P2701393104860694698.a n = A163323 n

theorem P2701393104860694698.correct : P2701393104860694698.Spec := by
  intro n
  simp only [A163323]

end A163323

/-!
# A163324: Numbers n such that n^3 can be represented as a sum of (at least two) consecutive primes.

The programs for A163324, there is no canonical definition to state claims against.
-/

/-! ## A163324.P2838600833517292237

`root(A163289(n+1), 3)`
-/

namespace A163324.P2838600833517292237
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A163289 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A163324.P2838600833517292237

/-!
# A163325: Pick digits at the even distance from the least significant end of the ternary expansion of n, then convert back to decimal.

The programs for A163325, the canonical program `A163325.P6103091774135699919` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163325 has offset 0).

The definition of A163325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163325.P6103091774135699919

`n%3+3*a(floor(n/9))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=0`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163325

/-- `n%3+3*a(floor(n/9))` -/
def P6103091774135699919.Spec : Prop :=
  ∀ n, (P6103091774135699919.a n : ℤ) = A163325 n

theorem P6103091774135699919.correct : P6103091774135699919.Spec := by
  intro n
  simp only [A163325]

end A163325

/-! ## A163325.P1857758942755240563

`A163528(A105186(n))`
-/

namespace A163325.P1857758942755240563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A105186 n).toNat

end

end A163325.P1857758942755240563

namespace A163325

/-- `A163528(A105186(n))` -/
def P1857758942755240563.Spec : Prop :=
  ∀ n, P1857758942755240563.a n = A163325 n

end A163325

/-! ## A163325.P13341440104766627368

`A163528(A163332(n))`
-/

namespace A163325.P13341440104766627368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A163332 n).toNat

end

end A163325.P13341440104766627368

namespace A163325

/-- `A163528(A163332(n))` -/
def P13341440104766627368.Spec : Prop :=
  ∀ n, P13341440104766627368.a n = A163325 n

end A163325

/-! ## A163325.P979076578980378175

`A163529(A163332(3*n))`
-/

namespace A163325.P979076578980378175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A163332 (3 * n)).toNat

end

end A163325.P979076578980378175

namespace A163325

/-- `A163529(A163332(3*n))` -/
def P979076578980378175.Spec : Prop :=
  ∀ n, P979076578980378175.a n = A163325 n

end A163325

/-! ## A163325.P13802998516394741819

`A163326(A163327(n))`
-/

namespace A163325.P13802998516394741819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163326 (A163327 n).toNat

end

end A163325.P13802998516394741819

namespace A163325

/-- `A163326(A163327(n))` -/
def P13802998516394741819.Spec : Prop :=
  ∀ n, P13802998516394741819.a n = A163325 n

end A163325

/-! ## A163325.P9018035676582256104

`A163528(A163334(A163329(n)))`
-/

namespace A163325.P9018035676582256104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A163334 (A163329 n).toNat).toNat

end

end A163325.P9018035676582256104

namespace A163325

/-- `A163528(A163334(A163329(n)))` -/
def P9018035676582256104.Spec : Prop :=
  ∀ n, P9018035676582256104.a n = A163325 n

end A163325

/-! ## A163325.P4833913134285745352

`A163326(n)+A163331(n)-A163329(n)`
-/

namespace A163325.P4833913134285745352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163326 n + (A163331 n - A163329 n)

end

end A163325.P4833913134285745352

namespace A163325

/-- `A163326(n)+A163331(n)-A163329(n)` -/
def P4833913134285745352.Spec : Prop :=
  ∀ n, P4833913134285745352.a n = A163325 n

end A163325

/-! ## A163325.P9648014506541684265

`A002262(A163331(n))`
-/

namespace A163325.P9648014506541684265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A163331 n).toNat

end

end A163325.P9648014506541684265

namespace A163325

/-- `A002262(A163331(n))` -/
def P9648014506541684265.Spec : Prop :=
  ∀ n, P9648014506541684265.a n = A163325 n

end A163325

/-! ## A163325.P9312294544201322677

`A025581(A163329(n))`
-/

namespace A163325.P9312294544201322677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A163329 n).toNat

end

end A163325.P9312294544201322677

namespace A163325

/-- `A025581(A163329(n))` -/
def P9312294544201322677.Spec : Prop :=
  ∀ n, P9312294544201322677.a n = A163325 n

end A163325

/-! ## A163325.P1833887271986097342

`A163326(3*n)`
-/

namespace A163325.P1833887271986097342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163326 (3 * n)

end

end A163325.P1833887271986097342

namespace A163325

/-- `A163326(3*n)` -/
def P1833887271986097342.Spec : Prop :=
  ∀ n, P1833887271986097342.a n = A163325 n

end A163325

/-! ## A163325.P12816040250076265131

`A002262(A163329(3*n))`
-/

namespace A163325.P12816040250076265131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A163329 (3 * n)).toNat

end

end A163325.P12816040250076265131

namespace A163325

/-- `A002262(A163329(3*n))` -/
def P12816040250076265131.Spec : Prop :=
  ∀ n, P12816040250076265131.a n = A163325 n

end A163325

/-! ## A163325.P11353338990685363551

`A025581(A163331(3*n))`
-/

namespace A163325.P11353338990685363551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A163331 (3 * n)).toNat

end

end A163325.P11353338990685363551

namespace A163325

/-- `A025581(A163331(3*n))` -/
def P11353338990685363551.Spec : Prop :=
  ∀ n, P11353338990685363551.a n = A163325 n

end A163325

/-! ## A163325.P824100287559342086

`A163529(A163333(A163336(A163335(n))))`
-/

namespace A163325.P824100287559342086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A163333 (A163336 (A163335 n).toNat).toNat).toNat

end

end A163325.P824100287559342086

namespace A163325

/-- `A163529(A163333(A163336(A163335(n))))` -/
def P824100287559342086.Spec : Prop :=
  ∀ n, P824100287559342086.a n = A163325 n

end A163325

/-! ## A163325.P10988559172385017444

`A163528(A338086(A163528(A163528(A338086(n)))))`
-/

namespace A163325.P10988559172385017444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A338086 (A163528 (A163528 (A338086 n).toNat).toNat).toNat).toNat

end

end A163325.P10988559172385017444

namespace A163325

/-- `A163528(A338086(A163528(A163528(A338086(n)))))` -/
def P10988559172385017444.Spec : Prop :=
  ∀ n, P10988559172385017444.a n = A163325 n

end A163325

/-!
# A163326: Pick digits at the odd distance from the least significant end of the ternary expansion of n, then convert back to decimal.

The programs for A163326, the canonical program `A163326.P13554713311581923438` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163326 has offset 0).

The definition of A163326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163326.P13554713311581923438

`A163325(floor(n/3))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A163326

/-- `A163325(floor(n/3))` -/
def P13554713311581923438.Spec : Prop :=
  ∀ n, P13554713311581923438.a n = A163326 n

theorem P13554713311581923438.correct : P13554713311581923438.Spec := by
  intro n
  simp only [A163326]

end A163326

/-! ## A163326.P2202681329879677195

`A163529(A163332(n))`
-/

namespace A163326.P2202681329879677195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A163332 n).toNat

end

end A163326.P2202681329879677195

namespace A163326

/-- `A163529(A163332(n))` -/
def P2202681329879677195.Spec : Prop :=
  ∀ n, P2202681329879677195.a n = A163326 n

end A163326

/-! ## A163326.P9158179548770554706

`A163529(n-A105186(n))`
-/

namespace A163326.P9158179548770554706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 ((n : ℤ) - A105186 n).toNat

end

end A163326.P9158179548770554706

namespace A163326

/-- `A163529(n-A105186(n))` -/
def P9158179548770554706.Spec : Prop :=
  ∀ n, P9158179548770554706.a n = A163326 n

end A163326

/-! ## A163326.P9948648248649231636

`A163529(n-A037314(A163325(n)))`
-/

namespace A163326.P9948648248649231636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 ((n : ℤ) - A037314 (A163325 n).toNat).toNat

end

end A163326.P9948648248649231636

namespace A163326

/-- `A163529(n-A037314(A163325(n)))` -/
def P9948648248649231636.Spec : Prop :=
  ∀ n, P9948648248649231636.a n = A163326 n

end A163326

/-! ## A163326.P14713606395136898487

`A163528(A163327(n-A105186(n)))`
-/

namespace A163326.P14713606395136898487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A163327 ((n : ℤ) - A105186 n).toNat).toNat

end

end A163326.P14713606395136898487

namespace A163326

/-- `A163528(A163327(n-A105186(n)))` -/
def P14713606395136898487.Spec : Prop :=
  ∀ n, P14713606395136898487.a n = A163326 n

end A163326

/-! ## A163326.P16311451625975331877

`A163528(A105186(A163327(n)))`
-/

namespace A163326.P16311451625975331877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A105186 (A163327 n).toNat).toNat

end

end A163326.P16311451625975331877

namespace A163326

/-- `A163528(A105186(A163327(n)))` -/
def P16311451625975331877.Spec : Prop :=
  ∀ n, P16311451625975331877.a n = A163326 n

end A163326

/-! ## A163326.P15173722065703751233

`A163528(A163334(A163331(n)))`
-/

namespace A163326.P15173722065703751233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A163334 (A163331 n).toNat).toNat

end

end A163326.P15173722065703751233

namespace A163326

/-- `A163528(A163334(A163331(n)))` -/
def P15173722065703751233.Spec : Prop :=
  ∀ n, P15173722065703751233.a n = A163326 n

end A163326

/-! ## A163326.P8744698969723948311

`A163528(A163327(A163333(n)))`
-/

namespace A163326.P8744698969723948311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A163327 (A163333 n).toNat).toNat

end

end A163326.P8744698969723948311

namespace A163326

/-- `A163528(A163327(A163333(n)))` -/
def P8744698969723948311.Spec : Prop :=
  ∀ n, P8744698969723948311.a n = A163326 n

end A163326

/-! ## A163326.P6541443578679096584

`A163325(n)+A163329(n)-A163331(n)`
-/

namespace A163326.P6541443578679096584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163325 n + (A163329 n - A163331 n)

end

end A163326.P6541443578679096584

namespace A163326

/-- `A163325(n)+A163329(n)-A163331(n)` -/
def P6541443578679096584.Spec : Prop :=
  ∀ n, P6541443578679096584.a n = A163326 n

end A163326

/-! ## A163326.P719631561893246307

`A002262(A163329(n))`
-/

namespace A163326.P719631561893246307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A163329 n).toNat

end

end A163326.P719631561893246307

namespace A163326

/-- `A002262(A163329(n))` -/
def P719631561893246307.Spec : Prop :=
  ∀ n, P719631561893246307.a n = A163326 n

end A163326

/-! ## A163326.P11695417898147585780

`A025581(A163331(n))`
-/

namespace A163326.P11695417898147585780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A163331 n).toNat

end

end A163326.P11695417898147585780

namespace A163326

/-- `A025581(A163331(n))` -/
def P11695417898147585780.Spec : Prop :=
  ∀ n, P11695417898147585780.a n = A163326 n

end A163326

/-! ## A163326.P4894373691088062573

`A163325(A163327(n)+n)-A163325(n)`
-/

namespace A163326.P4894373691088062573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163325 (A163327 n + (n : ℤ)).toNat - A163325 n

end

end A163326.P4894373691088062573

namespace A163326

/-- `A163325(A163327(n)+n)-A163325(n)` -/
def P4894373691088062573.Spec : Prop :=
  ∀ n, P4894373691088062573.a n = A163326 n

end A163326

/-! ## A163326.P14521677886457299197

`A163325(3*n)/3`
-/

namespace A163326.P14521677886457299197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163325 (3 * n) : ℚ) / 3

end

end A163326.P14521677886457299197

namespace A163326

/-- `A163325(3*n)/3` -/
def P14521677886457299197.Spec : Prop :=
  ∀ n, P14521677886457299197.a n = (A163326 n : ℚ)

end A163326

/-! ## A163326.P6720171200082579605

`A025581(A163337(A163332(A163337(A163336(n)))))`
-/

namespace A163326.P6720171200082579605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A163337 (A163332 (A163337 (A163336 n).toNat).toNat).toNat).toNat

end

end A163326.P6720171200082579605

namespace A163326

/-- `A025581(A163337(A163332(A163337(A163336(n)))))` -/
def P6720171200082579605.Spec : Prop :=
  ∀ n, P6720171200082579605.a n = A163326 n

end A163326

/-! ## A163326.P3339223439284185081

`A163529(A163328(A163335(n)))`
-/

namespace A163326.P3339223439284185081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A163328 (A163335 n).toNat).toNat

end

end A163326.P3339223439284185081

namespace A163326

/-- `A163529(A163328(A163335(n)))` -/
def P3339223439284185081.Spec : Prop :=
  ∀ n, P3339223439284185081.a n = A163326 n

end A163326

/-! ## A163326.P4706342120413863427

`A002262(A163335(A163330(A163337(n))))`
-/

namespace A163326.P4706342120413863427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A163335 (A163330 (A163337 n).toNat).toNat).toNat

end

end A163326.P4706342120413863427

namespace A163326

/-- `A002262(A163335(A163330(A163337(n))))` -/
def P4706342120413863427.Spec : Prop :=
  ∀ n, P4706342120413863427.a n = A163326 n

end A163326

/-! ## A163326.P5104862520196278147

`A163529(A163328(A163358(A166041(n))))`
-/

namespace A163326.P5104862520196278147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A163328 (A163358 (A166041 n).toNat).toNat).toNat

end

end A163326.P5104862520196278147

namespace A163326

/-- `A163529(A163328(A163358(A166041(n))))` -/
def P5104862520196278147.Spec : Prop :=
  ∀ n, P5104862520196278147.a n = A163326 n

end A163326

/-! ## A163326.P3927043050916885769

`A163528(A338086(A163529(A163528(A338086(n)))))`
-/

namespace A163326.P3927043050916885769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A338086 (A163529 (A163528 (A338086 n).toNat).toNat).toNat).toNat

end

end A163326.P3927043050916885769

namespace A163326

/-- `A163528(A338086(A163529(A163528(A338086(n)))))` -/
def P3927043050916885769.Spec : Prop :=
  ∀ n, P3927043050916885769.a n = A163326 n

end A163326

/-!
# A163327: Self-inverse permutation of integers: swap the odd- and even-positioned digits in the ternary expansion of n, then convert back to decimal.

The programs for A163327, the canonical program `A163327.P8461444291336420103` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163327 has offset 0).

The definition of A163327 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163327.P8461444291336420103

`A037314(A163326(n))+3*A037314(A163325(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163327

/-- `A037314(A163326(n))+3*A037314(A163325(n))` -/
def P8461444291336420103.Spec : Prop :=
  ∀ n, P8461444291336420103.a n = A163327 n

theorem P8461444291336420103.correct : P8461444291336420103.Spec := by
  intro n
  simp only [A163327]

end A163327

/-! ## A163327.P5066279300376887255

`A163332(A163334(A163331(n)))`
-/

namespace A163327.P5066279300376887255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (A163334 (A163331 n).toNat).toNat

end

end A163327.P5066279300376887255

namespace A163327

/-- `A163332(A163334(A163331(n)))` -/
def P5066279300376887255.Spec : Prop :=
  ∀ n, P5066279300376887255.a n = A163327 n

end A163327

/-! ## A163327.P11066745265678017058

`A128173(A342218(A128173(n)))`
-/

namespace A163327.P11066745265678017058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128173 (A342218 (A128173 n).toNat).toNat

end

end A163327.P11066745265678017058

namespace A163327

/-- `A128173(A342218(A128173(n)))` -/
def P11066745265678017058.Spec : Prop :=
  ∀ n, P11066745265678017058.a n = A163327 n

end A163327

/-! ## A163327.P8029789273566301700

`A163330(A163329(n))`
-/

namespace A163327.P8029789273566301700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163330 (A163329 n).toNat

end

end A163327.P8029789273566301700

namespace A163327

/-- `A163330(A163329(n))` -/
def P8029789273566301700.Spec : Prop :=
  ∀ n, P8029789273566301700.a n = A163327 n

end A163327

/-! ## A163327.P14963112539144471346

`A163328(A163331(n))`
-/

namespace A163327.P14963112539144471346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163328 (A163331 n).toNat

end

end A163327.P14963112539144471346

namespace A163327

/-- `A163328(A163331(n))` -/
def P14963112539144471346.Spec : Prop :=
  ∀ n, P14963112539144471346.a n = A163327 n

end A163327

/-! ## A163327.P3531728301980211217

`A163330(A163335(A163332(n)))`
-/

namespace A163327.P3531728301980211217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163330 (A163335 (A163332 n).toNat).toNat

end

end A163327.P3531728301980211217

namespace A163327

/-- `A163330(A163335(A163332(n)))` -/
def P3531728301980211217.Spec : Prop :=
  ∀ n, P3531728301980211217.a n = A163327 n

end A163327

/-! ## A163327.P8531835985709801589

`A163332(A163336(A163329(A163329(A163328(n)))))`
-/

namespace A163327.P8531835985709801589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (A163336 (A163329 (A163329 (A163328 n).toNat).toNat).toNat).toNat

end

end A163327.P8531835985709801589

namespace A163327

/-- `A163332(A163336(A163329(A163329(A163328(n)))))` -/
def P8531835985709801589.Spec : Prop :=
  ∀ n, P8531835985709801589.a n = A163327 n

end A163327

/-! ## A163327.P10169886884812861792

`A163328(A163337(A163332(A163335(A163334(n)))))`
-/

namespace A163327.P10169886884812861792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163328 (A163337 (A163332 (A163335 (A163334 n).toNat).toNat).toNat).toNat

end

end A163327.P10169886884812861792

namespace A163327

/-- `A163328(A163337(A163332(A163335(A163334(n)))))` -/
def P10169886884812861792.Spec : Prop :=
  ∀ n, P10169886884812861792.a n = A163327 n

end A163327

/-! ## A163327.P15019375013582523985

`A163328(A163337(A163332(A163337(A163336(n)))))`
-/

namespace A163327.P15019375013582523985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163328 (A163337 (A163332 (A163337 (A163336 n).toNat).toNat).toNat).toNat

end

end A163327.P15019375013582523985

namespace A163327

/-- `A163328(A163337(A163332(A163337(A163336(n)))))` -/
def P15019375013582523985.Spec : Prop :=
  ∀ n, P15019375013582523985.a n = A163327 n

end A163327

/-! ## A163327.P18073448739721353702

`A163333(A163330(A163335(n)))`
-/

namespace A163327.P18073448739721353702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163333 (A163330 (A163335 n).toNat).toNat

end

end A163327.P18073448739721353702

namespace A163327

/-- `A163333(A163330(A163335(n)))` -/
def P18073448739721353702.Spec : Prop :=
  ∀ n, P18073448739721353702.a n = A163327 n

end A163327

/-! ## A163327.P9867134033745101141

`A163333(A163328(A163337(n)))`
-/

namespace A163327.P9867134033745101141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163333 (A163328 (A163337 n).toNat).toNat

end

end A163327.P9867134033745101141

namespace A163327

/-- `A163333(A163328(A163337(n)))` -/
def P9867134033745101141.Spec : Prop :=
  ∀ n, P9867134033745101141.a n = A163327 n

end A163327

/-! ## A163327.P8712092088200655798

`A163336(A163335(A163332(A163333(n))))`
-/

namespace A163327.P8712092088200655798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A163335 (A163332 (A163333 n).toNat).toNat).toNat

end

end A163327.P8712092088200655798

namespace A163327

/-- `A163336(A163335(A163332(A163333(n))))` -/
def P8712092088200655798.Spec : Prop :=
  ∀ n, P8712092088200655798.a n = A163327 n

end A163327

/-!
# A163328: Square array A, where entry A(y,x) has the ternary digits of x interleaved with the ternary digits of y, converted back to decimal. Listed by antidiagonals: A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

The programs for A163328, the canonical program `A163328.P953906288300287245` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163328 has offset 0).

The definition of A163328 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163328.P6496467743731520879

`A163327(A163330(n))`
-/

namespace A163328.P6496467743731520879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 (A163330 n).toNat

end

end A163328.P6496467743731520879

namespace A163328

/-- `A163327(A163330(n))` -/
def P6496467743731520879.Spec : Prop :=
  ∀ n, P6496467743731520879.a n = A163328 n

end A163328

/-! ## A163328.P953906288300287245

`A037314(A025581(n))+3*A037314(A002262(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163328

/-- `A037314(A025581(n))+3*A037314(A002262(n))` -/
def P953906288300287245.Spec : Prop :=
  ∀ n, P953906288300287245.a n = A163328 n

theorem P953906288300287245.correct : P953906288300287245.Spec := by
  intro n
  simp only [A163328]

end A163328

/-! ## A163328.P14262682881877039964

`A163330(A061579(n))`
-/

namespace A163328.P14262682881877039964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163330 (A061579 n).toNat

end

end A163328.P14262682881877039964

namespace A163328

/-- `A163330(A061579(n))` -/
def P14262682881877039964.Spec : Prop :=
  ∀ n, P14262682881877039964.a n = A163328 n

end A163328

/-! ## A163328.P17918406586020918503

`A163332(A163334(n))`
-/

namespace A163328.P17918406586020918503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (A163334 n).toNat

end

end A163328.P17918406586020918503

namespace A163328

/-- `A163332(A163334(n))` -/
def P17918406586020918503.Spec : Prop :=
  ∀ n, P17918406586020918503.a n = A163328 n

end A163328

/-! ## A163328.P3503785370472460762

`A163332(A163338(n+1)-1)`
-/

namespace A163328.P3503785370472460762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (A163338 (n + 1) - 1).toNat

end

end A163328.P3503785370472460762

namespace A163328

/-- `A163332(A163338(n+1)-1)` -/
def P3503785370472460762.Spec : Prop :=
  ∀ n, P3503785370472460762.a n = A163328 n

end A163328

/-! ## A163328.P11127398120118401105

`A163333(A163327(A163336(n)))`
-/

namespace A163328.P11127398120118401105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163333 (A163327 (A163336 n).toNat).toNat

end

end A163328.P11127398120118401105

namespace A163328

/-- `A163333(A163327(A163336(n)))` -/
def P11127398120118401105.Spec : Prop :=
  ∀ n, P11127398120118401105.a n = A163328 n

end A163328

/-! ## A163328.P6469766945337640524

`A163332(A166044(A163359(n)))`
-/

namespace A163328.P6469766945337640524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (A166044 (A163359 n).toNat).toNat

end

end A163328.P6469766945337640524

namespace A163328

/-- `A163332(A166044(A163359(n)))` -/
def P6469766945337640524.Spec : Prop :=
  ∀ n, P6469766945337640524.a n = A163328 n

end A163328

/-! ## A163328.P11871748708429860915

`A163327(A163332(A163336(2*n-n)))`
-/

namespace A163328.P11871748708429860915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 (A163332 (A163336 (2 * n - n)).toNat).toNat

end

end A163328.P11871748708429860915

namespace A163328

/-- `A163327(A163332(A163336(2*n-n)))` -/
def P11871748708429860915.Spec : Prop :=
  ∀ n, P11871748708429860915.a n = A163328 n

end A163328

/-! ## A163328.P12612010225832357190

`A163334(A163329(A163334(A163327(A163327(n)))))`
-/

namespace A163328.P12612010225832357190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (A163329 (A163334 (A163327 (A163327 n).toNat).toNat).toNat).toNat

end

end A163328.P12612010225832357190

namespace A163328

/-- `A163334(A163329(A163334(A163327(A163327(n)))))` -/
def P12612010225832357190.Spec : Prop :=
  ∀ n, P12612010225832357190.a n = A163328 n

end A163328

/-! ## A163328.P6155924652370265291

`A163330(A163329(A163330(A163332(A163332(n)))))`
-/

namespace A163328.P6155924652370265291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163330 (A163329 (A163330 (A163332 (A163332 n).toNat).toNat).toNat).toNat

end

end A163328.P6155924652370265291

namespace A163328

/-- `A163330(A163329(A163330(A163332(A163332(n)))))` -/
def P6155924652370265291.Spec : Prop :=
  ∀ n, P6155924652370265291.a n = A163328 n

end A163328

/-! ## A163328.P18158652305428637826

`A163334(A163329(A163334(A163334(A163335(n)))))`
-/

namespace A163328.P18158652305428637826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (A163329 (A163334 (A163334 (A163335 n).toNat).toNat).toNat).toNat

end

end A163328.P18158652305428637826

namespace A163328

/-- `A163334(A163329(A163334(A163334(A163335(n)))))` -/
def P18158652305428637826.Spec : Prop :=
  ∀ n, P18158652305428637826.a n = A163328 n

end A163328

/-! ## A163328.P689707465007707567

`A163330(A163329(A163330(A163330(A163331(n)))))`
-/

namespace A163328.P689707465007707567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163330 (A163329 (A163330 (A163330 (A163331 n).toNat).toNat).toNat).toNat

end

end A163328.P689707465007707567

namespace A163328

/-- `A163330(A163329(A163330(A163330(A163331(n)))))` -/
def P689707465007707567.Spec : Prop :=
  ∀ n, P689707465007707567.a n = A163328 n

end A163328

/-! ## A163328.P10735531534844122692

`A163336(A163331(A163334(A163336(A163337(n)))))`
-/

namespace A163328.P10735531534844122692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A163331 (A163334 (A163336 (A163337 n).toNat).toNat).toNat).toNat

end

end A163328.P10735531534844122692

namespace A163328

/-- `A163336(A163331(A163334(A163336(A163337(n)))))` -/
def P10735531534844122692.Spec : Prop :=
  ∀ n, P10735531534844122692.a n = A163328 n

end A163328

/-!
# A163329: Inverse permutation to A163328.

The programs for A163329, there is no canonical definition to state claims against.
-/

/-! ## A163329.P3205048069447089496

`A163331(A163327(n))`
-/

namespace A163329.P3205048069447089496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163331 (A163327 n).toNat

end

end A163329.P3205048069447089496

/-! ## A163329.P5568068753905486509

`A163335(A163332(n))`
-/

namespace A163329.P5568068753905486509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 (A163332 n).toNat

end

end A163329.P5568068753905486509

/-! ## A163329.P789943632077293353

`A163337(A163334(A163331(n)))`
-/

namespace A163329.P789943632077293353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163337 (A163334 (A163331 n).toNat).toNat

end

end A163329.P789943632077293353

/-! ## A163329.P6811334697290161701

`A163337(A163327(A163333(n)))`
-/

namespace A163329.P6811334697290161701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163337 (A163327 (A163333 n).toNat).toNat

end

end A163329.P6811334697290161701

/-! ## A163329.P17334589325580224673

`A163326(n)+A163331(n)-A163325(n)`
-/

namespace A163329.P17334589325580224673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163326 n + (A163331 n - A163325 n)

end

end A163329.P17334589325580224673

/-! ## A163329.P2679922107940264608

`A061579(A163331(n))`
-/

namespace A163329.P2679922107940264608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163331 n).toNat

end

end A163329.P2679922107940264608

/-! ## A163329.P3343103234866244945

`A061579(A163337(A163332(A061579(A061579(n)))))`
-/

namespace A163329.P3343103234866244945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163337 (A163332 (A061579 (A061579 n).toNat).toNat).toNat).toNat

end

end A163329.P3343103234866244945

/-! ## A163329.P11425614736526391987

`A163335(A163336(A163331(2*n-n)))`
-/

namespace A163329.P11425614736526391987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 (A163336 (A163331 (2 * n - n)).toNat).toNat

end

end A163329.P11425614736526391987

/-! ## A163329.P6086719632575948185

`A163331(A163328(A163331(A163331(A163330(n)))))`
-/

namespace A163329.P6086719632575948185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163331 (A163328 (A163331 (A163331 (A163330 n).toNat).toNat).toNat).toNat

end

end A163329.P6086719632575948185

/-! ## A163329.P13464840535257232620

`A163335(A163328(A163335(n)))`
-/

namespace A163329.P13464840535257232620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 (A163328 (A163335 n).toNat).toNat

end

end A163329.P13464840535257232620

/-! ## A163329.P15465201097941463225

`A163335(A163330(A163337(n)))`
-/

namespace A163329.P15465201097941463225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 (A163330 (A163337 n).toNat).toNat

end

end A163329.P15465201097941463225

/-! ## A163329.P1204682462569273386

`A163358(A166041(A163328(A163358(A166041(n)))))`
-/

namespace A163329.P1204682462569273386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A166041 (A163328 (A163358 (A166041 n).toNat).toNat).toNat).toNat

end

end A163329.P1204682462569273386

/-!
# A163330: Square array A, where entry A(y,x) has the ternary digits of y interleaved with the ternary digits of x, converted back to decimal. Listed by antidiagonals: A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

The programs for A163330, the canonical program `A163330.P8412886999285810611` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163330 has offset 0).

The definition of A163330 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163330.P8412886999285810611

`3*A037314(A025581(n))+A037314(A002262(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163330

/-- `3*A037314(A025581(n))+A037314(A002262(n))` -/
def P8412886999285810611.Spec : Prop :=
  ∀ n, P8412886999285810611.a n = A163330 n

theorem P8412886999285810611.correct : P8412886999285810611.Spec := by
  intro n
  simp only [A163330]

end A163330

/-! ## A163330.P2003338273553135016

`A163328(A061579(n))`
-/

namespace A163330.P2003338273553135016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163328 (A061579 n).toNat

end

end A163330.P2003338273553135016

namespace A163330

/-- `A163328(A061579(n))` -/
def P2003338273553135016.Spec : Prop :=
  ∀ n, P2003338273553135016.a n = A163330 n

end A163330

/-! ## A163330.P17932207798617706174

`A163327(A163328(n))`
-/

namespace A163330.P17932207798617706174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 (A163328 n).toNat

end

end A163330.P17932207798617706174

namespace A163330

/-- `A163327(A163328(n))` -/
def P17932207798617706174.Spec : Prop :=
  ∀ n, P17932207798617706174.a n = A163330 n

end A163330

/-! ## A163330.P16869478498856503272

`A163332(A163336(n))`
-/

namespace A163330.P16869478498856503272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (A163336 n).toNat

end

end A163330.P16869478498856503272

namespace A163330

/-- `A163332(A163336(n))` -/
def P16869478498856503272.Spec : Prop :=
  ∀ n, P16869478498856503272.a n = A163330 n

end A163330

/-! ## A163330.P16156561839312030834

`A163332(A163340(n+1)-1)`
-/

namespace A163330.P16156561839312030834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (A163340 (n + 1) - 1).toNat

end

end A163330.P16156561839312030834

namespace A163330

/-- `A163332(A163340(n+1)-1)` -/
def P16156561839312030834.Spec : Prop :=
  ∀ n, P16156561839312030834.a n = A163330 n

end A163330

/-! ## A163330.P2013068149184828250

`A163333(A163327(A163334(n)))`
-/

namespace A163330.P2013068149184828250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163333 (A163327 (A163334 n).toNat).toNat

end

end A163330.P2013068149184828250

namespace A163330

/-- `A163333(A163327(A163334(n)))` -/
def P2013068149184828250.Spec : Prop :=
  ∀ n, P2013068149184828250.a n = A163330 n

end A163330

/-! ## A163330.P8822771033356134775

`A163327(A163332(A163334(2*n-n)))`
-/

namespace A163330.P8822771033356134775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 (A163332 (A163334 (2 * n - n)).toNat).toNat

end

end A163330.P8822771033356134775

namespace A163330

/-- `A163327(A163332(A163334(2*n-n)))` -/
def P8822771033356134775.Spec : Prop :=
  ∀ n, P8822771033356134775.a n = A163330 n

end A163330

/-! ## A163330.P15114052908395420062

`A163328(A163331(A163328(A163332(A163332(n)))))`
-/

namespace A163330.P15114052908395420062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163328 (A163331 (A163328 (A163332 (A163332 n).toNat).toNat).toNat).toNat

end

end A163330.P15114052908395420062

namespace A163330

/-- `A163328(A163331(A163328(A163332(A163332(n)))))` -/
def P15114052908395420062.Spec : Prop :=
  ∀ n, P15114052908395420062.a n = A163330 n

end A163330

/-! ## A163330.P1609384014808746117

`A163328(A163335(A163336(A163334(A163335(n)))))`
-/

namespace A163330.P1609384014808746117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163328 (A163335 (A163336 (A163334 (A163335 n).toNat).toNat).toNat).toNat

end

end A163330.P1609384014808746117

namespace A163330

/-- `A163328(A163335(A163336(A163334(A163335(n)))))` -/
def P1609384014808746117.Spec : Prop :=
  ∀ n, P1609384014808746117.a n = A163330 n

end A163330

/-! ## A163330.P12343340218259764669

`A163328(A163331(A163328(A163328(A163329(n)))))`
-/

namespace A163330.P12343340218259764669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163328 (A163331 (A163328 (A163328 (A163329 n).toNat).toNat).toNat).toNat

end

end A163330.P12343340218259764669

namespace A163330

/-- `A163328(A163331(A163328(A163328(A163329(n)))))` -/
def P12343340218259764669.Spec : Prop :=
  ∀ n, P12343340218259764669.a n = A163330 n

end A163330

/-! ## A163330.P1992914950568664297

`A163336(A163331(A163336(A163336(A163337(n)))))`
-/

namespace A163330.P1992914950568664297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A163331 (A163336 (A163336 (A163337 n).toNat).toNat).toNat).toNat

end

end A163330.P1992914950568664297

namespace A163330

/-- `A163336(A163331(A163336(A163336(A163337(n)))))` -/
def P1992914950568664297.Spec : Prop :=
  ∀ n, P1992914950568664297.a n = A163330 n

end A163330

/-!
# A163331: Inverse permutation to A163330.

The programs for A163331, there is no canonical definition to state claims against.
-/

/-! ## A163331.P18177931282721502889

`A163329(A163327(n))`
-/

namespace A163331.P18177931282721502889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163329 (A163327 n).toNat

end

end A163331.P18177931282721502889

/-! ## A163331.P6912561750025193804

`A163337(A163332(n))`
-/

namespace A163331.P6912561750025193804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163337 (A163332 n).toNat

end

end A163331.P6912561750025193804

/-! ## A163331.P15083800072390056977

`A163337(A163334(A163329(n)))`
-/

namespace A163331.P15083800072390056977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163337 (A163334 (A163329 n).toNat).toNat

end

end A163331.P15083800072390056977

/-! ## A163331.P15871695065805129492

`A163325(n)+A163329(n)-A163326(n)`
-/

namespace A163331.P15871695065805129492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163325 n + (A163329 n - A163326 n)

end

end A163331.P15871695065805129492

/-! ## A163331.P7593709817641227713

`A061579(A163329(n))`
-/

namespace A163331.P7593709817641227713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163329 n).toNat

end

end A163331.P7593709817641227713

/-! ## A163331.P8969491826630524112

`A061579(A163337(A163327(A163333(n))))`
-/

namespace A163331.P8969491826630524112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163337 (A163327 (A163333 n).toNat).toNat).toNat

end

end A163331.P8969491826630524112

/-! ## A163331.P770026499140825096

`A061579(A163335(A163332(A061579(A061579(n)))))`
-/

namespace A163331.P770026499140825096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163335 (A163332 (A061579 (A061579 n).toNat).toNat).toNat).toNat

end

end A163331.P770026499140825096

/-! ## A163331.P5551402227933591861

`A163337(A163328(A163335(n)))`
-/

namespace A163331.P5551402227933591861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163337 (A163328 (A163335 n).toNat).toNat

end

end A163331.P5551402227933591861

/-! ## A163331.P10559712336857553354

`A163337(A163330(A163337(n)))`
-/

namespace A163331.P10559712336857553354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163337 (A163330 (A163337 n).toNat).toNat

end

end A163331.P10559712336857553354

/-!
# A163332: Self-inverse permutation of the integers for constructing the Peano curve in an N X N grid.

The programs for A163332, there is no canonical definition to state claims against.
-/

/-! ## A163332.P1628725947912155525

`A163327(A163333(A163327(n)))`
-/

namespace A163332.P1628725947912155525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 (A163333 (A163327 n).toNat).toNat

end

end A163332.P1628725947912155525

/-! ## A163332.P4300025752176984678

`A163334(A163329(n))`
-/

namespace A163332.P4300025752176984678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (A163329 n).toNat

end

end A163332.P4300025752176984678

/-! ## A163332.P16515318492938801814

`A163336(A163331(n))`
-/

namespace A163332.P16515318492938801814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A163331 n).toNat

end

end A163332.P16515318492938801814

/-! ## A163332.P5287773527965422582

`A163328(A163335(n))`
-/

namespace A163332.P5287773527965422582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163328 (A163335 n).toNat

end

end A163332.P5287773527965422582

/-! ## A163332.P9716791244454736702

`A163330(A163337(n))`
-/

namespace A163332.P9716791244454736702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163330 (A163337 n).toNat

end

end A163332.P9716791244454736702

/-! ## A163332.P16905772521561584193

`A163328(A163339(n+1)-1)`
-/

namespace A163332.P16905772521561584193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163328 (A163339 (n + 1) - 1).toNat

end

end A163332.P16905772521561584193

/-! ## A163332.P3806035214273465825

`A163330(A163341(n+1)-1)`
-/

namespace A163332.P3806035214273465825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163330 (A163341 (n + 1) - 1).toNat

end

end A163332.P3806035214273465825

/-! ## A163332.P14423105307003207896

`A163328(A163358(A166041(n)))`
-/

namespace A163332.P14423105307003207896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163328 (A163358 (A166041 n).toNat).toNat

end

end A163332.P14423105307003207896

/-!
# A163333: Self-inverse permutation of integers: A163327-conjugate of A163332.

The programs for A163333, there is no canonical definition to state claims against.
-/

/-! ## A163333.P3768660860123005713

`A163327(A163332(A163327(n)))`
-/

namespace A163333.P3768660860123005713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 (A163332 (A163327 n).toNat).toNat

end

end A163333.P3768660860123005713

/-! ## A163333.P14785149810190310171

`A163327(A163334(A163331(n)))`
-/

namespace A163333.P14785149810190310171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 (A163334 (A163331 n).toNat).toNat

end

end A163333.P14785149810190310171

/-! ## A163333.P9791701750050365436

`A342218(A163332(A342218(n)))`
-/

namespace A163333.P9791701750050365436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342218 (A163332 (A342218 n).toNat).toNat

end

end A163333.P9791701750050365436

/-! ## A163333.P17997963018080926654

`A163327(A163336(A163329(n)))`
-/

namespace A163333.P17997963018080926654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163327 (A163336 (A163329 n).toNat).toNat

end

end A163333.P17997963018080926654

/-! ## A163333.P9783739036558122114

`A163334(A163331(A163336(A163335(n))))`
-/

namespace A163333.P9783739036558122114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (A163331 (A163336 (A163335 n).toNat).toNat).toNat

end

end A163333.P9783739036558122114

/-! ## A163333.P13680061862192605065

`A163334(A163337(A163328(A163337(n))))`
-/

namespace A163333.P13680061862192605065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (A163337 (A163328 (A163337 n).toNat).toNat).toNat

end

end A163333.P13680061862192605065

/-! ## A163333.P14178384262898519980

`A163330(A163335(A163327(A163331(A163330(n)))))`
-/

namespace A163333.P14178384262898519980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163330 (A163335 (A163327 (A163331 (A163330 n).toNat).toNat).toNat).toNat

end

end A163333.P14178384262898519980

/-! ## A163333.P10874517092137350927

`A163336(A163329(A163336(A163329(A163332(n)))))`
-/

namespace A163333.P10874517092137350927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A163329 (A163336 (A163329 (A163332 n).toNat).toNat).toNat).toNat

end

end A163333.P10874517092137350927

/-!
# A163334: Peano curve in an n X n grid, starting rightwards from the top left corner, listed antidiagonally as A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ... .

The programs for A163334, there is no canonical definition to state claims against.
-/

/-! ## A163334.P17935917786126786225

`A163332(A163328(n))`
-/

namespace A163334.P17935917786126786225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (A163328 n).toNat

end

end A163334.P17935917786126786225

/-! ## A163334.P223295159356486235

`A166042(A163357(n))`
-/

namespace A163334.P223295159356486235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166042 (A163357 n).toNat

end

end A163334.P223295159356486235

/-! ## A163334.P17774189298114566351

`A166044(A163359(n))`
-/

namespace A163334.P17774189298114566351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 (A163359 n).toNat

end

end A163334.P17774189298114566351

/-! ## A163334.P14175040212009309983

`A166042(A163361(n+1)-1)`
-/

namespace A163334.P14175040212009309983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166042 (A163361 (n + 1) - 1).toNat

end

end A163334.P14175040212009309983

/-! ## A163334.P4199891551095807246

`A166044(A163363(n+1)-1)`
-/

namespace A163334.P4199891551095807246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 (A163363 (n + 1) - 1).toNat

end

end A163334.P4199891551095807246

/-! ## A163334.P8714550109851147642

`A166042(A163359(A061579(n)))`
-/

namespace A163334.P8714550109851147642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166042 (A163359 (A061579 n).toNat).toNat

end

end A163334.P8714550109851147642

/-! ## A163334.P6051838835599463104

`A163338(n+1)-1`
-/

namespace A163334.P6051838835599463104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163338 (n + 1) - 1

end

end A163334.P6051838835599463104

/-! ## A163334.P16824907009077008991

`A163336(A061579(n))`
-/

namespace A163334.P16824907009077008991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A061579 n).toNat

end

end A163334.P16824907009077008991

/-! ## A163334.P1032721797916913132

`A342218(A163336(n))`
-/

namespace A163334.P1032721797916913132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342218 (A163336 n).toNat

end

end A163334.P1032721797916913132

/-! ## A163334.P1020185647115353811

`A023443(A163338(n+1))`
-/

namespace A163334.P1020185647115353811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A163338 (n + 1)).toNat

end

end A163334.P1020185647115353811

/-! ## A163334.P11244383738279618226

`A163336(A038722(n+1)-1)`
-/

namespace A163334.P11244383738279618226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A038722 (n + 1) - 1).toNat

end

end A163334.P11244383738279618226

/-! ## A163334.P17864165551457527118

`A163340(A061579(n)+1)-1`
-/

namespace A163334.P17864165551457527118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163340 (A061579 n + 1).toNat - 1

end

end A163334.P17864165551457527118

/-! ## A163334.P12612212018277159084

`A342218(A163340(n+1)-1)`
-/

namespace A163334.P12612212018277159084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342218 (A163340 (n + 1) - 1).toNat

end

end A163334.P12612212018277159084

/-! ## A163334.P12500261710754069320

`A163332(A163327(A163330(n)))`
-/

namespace A163334.P12500261710754069320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (A163327 (A163330 n).toNat).toNat

end

end A163334.P12500261710754069320

/-! ## A163334.P15717026751520649665

`A163336(A163331(A163328(A163327(A163327(n)))))`
-/

namespace A163334.P15717026751520649665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A163331 (A163328 (A163327 (A163327 n).toNat).toNat).toNat).toNat

end

end A163334.P15717026751520649665

/-! ## A163334.P4909184299823005156

`A163336(A163329(A163330(A163332(A163332(n)))))`
-/

namespace A163334.P4909184299823005156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A163329 (A163330 (A163332 (A163332 n).toNat).toNat).toNat).toNat

end

end A163334.P4909184299823005156

/-! ## A163334.P14349589840518594683

`A163336(A163335(A163336(A163333(A163333(n)))))`
-/

namespace A163334.P14349589840518594683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A163335 (A163336 (A163333 (A163333 n).toNat).toNat).toNat).toNat

end

end A163334.P14349589840518594683

/-! ## A163334.P10553559224955131188

`A163336(A163358(A163359(A163357(A163358(n)))))`
-/

namespace A163334.P10553559224955131188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A163358 (A163359 (A163357 (A163358 n).toNat).toNat).toNat).toNat

end

end A163334.P10553559224955131188

/-! ## A163334.P416429318717526722

`A166044(A166041(A163336(A166042(A166041(n)))))`
-/

namespace A163334.P416429318717526722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 (A166041 (A163336 (A166042 (A166041 n).toNat).toNat).toNat).toNat

end

end A163334.P416429318717526722

/-! ## A163334.P2245903642305335404

`A166044(A166041(A163336(A166044(A166043(n)))))`
-/

namespace A163334.P2245903642305335404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 (A166041 (A163336 (A166044 (A166043 n).toNat).toNat).toNat).toNat

end

end A163334.P2245903642305335404

/-!
# A163335: Inverse permutation to A163334.

The programs for A163335, there is no canonical definition to state claims against.
-/

/-! ## A163335.P6090791856653241481

`A163358(A166041(n))`
-/

namespace A163335.P6090791856653241481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A166041 n).toNat

end

end A163335.P6090791856653241481

/-! ## A163335.P3861338606465215447

`A163360(A166043(n))`
-/

namespace A163335.P3861338606465215447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163360 (A166043 n).toNat

end

end A163335.P3861338606465215447

/-! ## A163335.P15970878470856476178

`A163362(A166041(n)+1)-1`
-/

namespace A163335.P15970878470856476178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163362 (A166041 n + 1).toNat - 1

end

end A163335.P15970878470856476178

/-! ## A163335.P8674108788377495286

`A163364(A166043(n)+1)-1`
-/

namespace A163335.P8674108788377495286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163364 (A166043 n + 1).toNat - 1

end

end A163335.P8674108788377495286

/-! ## A163335.P2941556364091043482

`A163339(n+1)-1`
-/

namespace A163335.P2941556364091043482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163339 (n + 1) - 1

end

end A163335.P2941556364091043482

/-! ## A163335.P8244470513964238624

`A163329(A163332(n))`
-/

namespace A163335.P8244470513964238624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163329 (A163332 n).toNat

end

end A163335.P8244470513964238624

/-! ## A163335.P15909995686357452379

`A163337(A342218(n))`
-/

namespace A163335.P15909995686357452379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163337 (A342218 n).toNat

end

end A163335.P15909995686357452379

/-! ## A163335.P11834839494908220384

`A163329(A163334(A163329(n)))`
-/

namespace A163335.P11834839494908220384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163329 (A163334 (A163329 n).toNat).toNat

end

end A163335.P11834839494908220384

/-! ## A163335.P3076615845464981048

`A163337(A163334(A163337(n)))`
-/

namespace A163335.P3076615845464981048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163337 (A163334 (A163337 n).toNat).toNat

end

end A163335.P3076615845464981048

/-! ## A163335.P3171973629779895985

`A163337(n)+A163529(n)-A163528(n)`
-/

namespace A163335.P3171973629779895985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163337 n + (A163529 n - A163528 n)

end

end A163335.P3171973629779895985

/-! ## A163335.P2900309343200268705

`A163331(A163327(A163332(A163327(A163327(n)))))`
-/

namespace A163335.P2900309343200268705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163331 (A163327 (A163332 (A163327 (A163327 n).toNat).toNat).toNat).toNat

end

end A163335.P2900309343200268705

/-! ## A163335.P14133379634088410064

`A163337(A166042(A166043(A166041(A166042(n)))))`
-/

namespace A163335.P14133379634088410064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163337 (A166042 (A166043 (A166041 (A166042 n).toNat).toNat).toNat).toNat

end

end A163335.P14133379634088410064

/-! ## A163335.P12932254707686321522

`A163337(A166044(A166041(A166043(A166044(n)))))`
-/

namespace A163335.P12932254707686321522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163337 (A166044 (A166041 (A166043 (A166044 n).toNat).toNat).toNat).toNat

end

end A163335.P12932254707686321522

/-! ## A163335.P7273481037508776636

`A038722(A163341(n+1))-1`
-/

namespace A163335.P7273481037508776636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A163341 (n + 1)).toNat - 1

end

end A163335.P7273481037508776636

/-! ## A163335.P11760285388628645440

`A061579(A163337(n))`
-/

namespace A163335.P11760285388628645440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163337 n).toNat

end

end A163335.P11760285388628645440

/-! ## A163335.P7349279509614846559

`A023443(A163339(n+1))`
-/

namespace A163335.P7349279509614846559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A163339 (n + 1)).toNat

end

end A163335.P7349279509614846559

/-! ## A163335.P18080506526703130572

`A061579(A163341(n+1)-1)`
-/

namespace A163335.P18080506526703130572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163341 (n + 1) - 1).toNat

end

end A163335.P18080506526703130572

/-! ## A163335.P8762781197393257258

`A061579(A163358(A166043(A061579(A061579(n)))))`
-/

namespace A163335.P8762781197393257258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163358 (A166043 (A061579 (A061579 n).toNat).toNat).toNat).toNat

end

end A163335.P8762781197393257258

/-! ## A163335.P5332693171983469126

`A163329(A163336(A163331(n)))`
-/

namespace A163335.P5332693171983469126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163329 (A163336 (A163331 n).toNat).toNat

end

end A163335.P5332693171983469126

/-! ## A163335.P15170981733245868180

`A163329(A163330(A163337(2*n-n)))`
-/

namespace A163335.P15170981733245868180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163329 (A163330 (A163337 (2 * n - n)).toNat).toNat

end

end A163335.P15170981733245868180

/-!
# A163336: Peano curve in an n X n grid, starting downwards from the top left corner, listed antidiagonally as A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

The programs for A163336, there is no canonical definition to state claims against.
-/

/-! ## A163336.P5859176389158319855

`A163340(n+1)-1`
-/

namespace A163336.P5859176389158319855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163340 (n + 1) - 1

end

end A163336.P5859176389158319855

/-! ## A163336.P16812237076697409834

`A163334(∑[char[∑[n]]]²-(n+1))`
-/

namespace A163336.P16812237076697409834
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A163336.P16812237076697409834

/-! ## A163336.P14829308013197559480

`A163332(A163330(n))`
-/

namespace A163336.P14829308013197559480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (A163330 n).toNat

end

end A163336.P14829308013197559480

/-! ## A163336.P13136204181814729535

`A166044(A163357(n))`
-/

namespace A163336.P13136204181814729535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 (A163357 n).toNat

end

end A163336.P13136204181814729535

/-! ## A163336.P1012405725121681815

`A166042(A163359(n))`
-/

namespace A163336.P1012405725121681815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166042 (A163359 n).toNat

end

end A163336.P1012405725121681815

/-! ## A163336.P14367606993844516817

`A342218(A163334(n))`
-/

namespace A163336.P14367606993844516817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342218 (A163334 n).toNat

end

end A163336.P14367606993844516817

/-! ## A163336.P2516698397319050688

`A023443(A163340(n+1))`
-/

namespace A163336.P2516698397319050688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A163340 (n + 1)).toNat

end

end A163336.P2516698397319050688

/-! ## A163336.P8147664129158587899

`A163338(A038722(n+1))-1`
-/

namespace A163336.P8147664129158587899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163338 (A038722 (n + 1)).toNat - 1

end

end A163336.P8147664129158587899

/-! ## A163336.P11621783655744017960

`A163338(A061579(n)+1)-1`
-/

namespace A163336.P11621783655744017960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163338 (A061579 n + 1).toNat - 1

end

end A163336.P11621783655744017960

/-! ## A163336.P3732197402554660291

`A166044(A163361(n+1)-1)`
-/

namespace A163336.P3732197402554660291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 (A163361 (n + 1) - 1).toNat

end

end A163336.P3732197402554660291

/-! ## A163336.P15001246631423545100

`A166042(A163363(n+1)-1)`
-/

namespace A163336.P15001246631423545100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166042 (A163363 (n + 1) - 1).toNat

end

end A163336.P15001246631423545100

/-! ## A163336.P12041579284927091012

`A342218(A163338(n+1)-1)`
-/

namespace A163336.P12041579284927091012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342218 (A163338 (n + 1) - 1).toNat

end

end A163336.P12041579284927091012

/-! ## A163336.P13241980567499803992

`A166044(A163355(A054238(n)))`
-/

namespace A163336.P13241980567499803992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 (A163355 (A054238 n).toNat).toNat

end

end A163336.P13241980567499803992

/-! ## A163336.P14356623594133131415

`A166044(A163359(A061579(n)))`
-/

namespace A163336.P14356623594133131415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 (A163359 (A061579 n).toNat).toNat

end

end A163336.P14356623594133131415

/-! ## A163336.P9963842631234161561

`A163332(A163327(A163328(n)))`
-/

namespace A163336.P9963842631234161561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (A163327 (A163328 n).toNat).toNat

end

end A163336.P9963842631234161561

/-! ## A163336.P17951553560136642283

`A166042(A166043(A163334(A163357(A163358(n)))))`
-/

namespace A163336.P17951553560136642283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166042 (A166043 (A163334 (A163357 (A163358 n).toNat).toNat).toNat).toNat

end

end A163336.P17951553560136642283

/-! ## A163336.P3713922000389072613

`A166044(A166041(A163334(A166042(A166041(n)))))`
-/

namespace A163336.P3713922000389072613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 (A166041 (A163334 (A166042 (A166041 n).toNat).toNat).toNat).toNat

end

end A163336.P3713922000389072613

/-! ## A163336.P666924663813654781

`A166042(A166043(A163334(A166044(A166043(n)))))`
-/

namespace A163336.P666924663813654781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166042 (A166043 (A163334 (A166044 (A166043 n).toNat).toNat).toNat).toNat

end

end A163336.P666924663813654781

/-! ## A163336.P8349277615473736633

`A163330(A163337(A163330(A163327(A163327(n)))))`
-/

namespace A163336.P8349277615473736633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163330 (A163337 (A163330 (A163327 (A163327 n).toNat).toNat).toNat).toNat

end

end A163336.P8349277615473736633

/-!
# A163337: Inverse permutation to A163336.

The programs for A163337, there is no canonical definition to state claims against.
-/

/-! ## A163337.P5118770827593773842

`A163341(n+1)-1`
-/

namespace A163337.P5118770827593773842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163341 (n + 1) - 1

end

end A163337.P5118770827593773842

/-! ## A163337.P2347607872434396190

`A163331(A163332(n))`
-/

namespace A163337.P2347607872434396190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163331 (A163332 n).toNat

end

end A163337.P2347607872434396190

/-! ## A163337.P7026380926815947630

`A163360(A166041(n))`
-/

namespace A163337.P7026380926815947630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163360 (A166041 n).toNat

end

end A163337.P7026380926815947630

/-! ## A163337.P10208294850809768992

`A163358(A166043(n))`
-/

namespace A163337.P10208294850809768992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A166043 n).toNat

end

end A163337.P10208294850809768992

/-! ## A163337.P10128841931092851010

`A163335(A342218(n))`
-/

namespace A163337.P10128841931092851010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 (A342218 n).toNat

end

end A163337.P10128841931092851010

/-! ## A163337.P13461740857973162065

`A163364(A166041(n)+1)-1`
-/

namespace A163337.P13461740857973162065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163364 (A166041 n + 1).toNat - 1

end

end A163337.P13461740857973162065

/-! ## A163337.P5267451251441976267

`A163362(A166043(n)+1)-1`
-/

namespace A163337.P5267451251441976267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163362 (A166043 n + 1).toNat - 1

end

end A163337.P5267451251441976267

/-! ## A163337.P7583339543094708445

`A163339(A342218(n)+1)-1`
-/

namespace A163337.P7583339543094708445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163339 (A342218 n + 1).toNat - 1

end

end A163337.P7583339543094708445

/-! ## A163337.P1409891556312485491

`A163329(A163333(A163327(n)))`
-/

namespace A163337.P1409891556312485491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163329 (A163333 (A163327 n).toNat).toNat

end

end A163337.P1409891556312485491

/-! ## A163337.P12861569385098654088

`A163331(A163334(A163329(n)))`
-/

namespace A163337.P12861569385098654088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163331 (A163334 (A163329 n).toNat).toNat

end

end A163337.P12861569385098654088

/-! ## A163337.P17698870949177923362

`A163335(n)+A163528(n)-A163529(n)`
-/

namespace A163337.P17698870949177923362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 n + (A163528 n - A163529 n)

end

end A163337.P17698870949177923362

/-! ## A163337.P14031567631850832719

`A038722(A163339(n+1))-1`
-/

namespace A163337.P14031567631850832719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A163339 (n + 1)).toNat - 1

end

end A163337.P14031567631850832719

/-! ## A163337.P4602200687326235555

`A061579(A163335(n))`
-/

namespace A163337.P4602200687326235555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163335 n).toNat

end

end A163337.P4602200687326235555

/-! ## A163337.P6072206708703423899

`A023443(A163341(n+1))`
-/

namespace A163337.P6072206708703423899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A163341 (n + 1)).toNat

end

end A163337.P6072206708703423899

/-! ## A163337.P17524310145252526673

`A163331(A163336(A163331(n)))`
-/

namespace A163337.P17524310145252526673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163331 (A163336 (A163331 n).toNat).toNat

end

end A163337.P17524310145252526673

/-! ## A163337.P11850519264752454467

`A163329(A163330(A163335(2*n-n)))`
-/

namespace A163337.P11850519264752454467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163329 (A163330 (A163335 (2 * n - n)).toNat).toNat

end

end A163337.P11850519264752454467

/-! ## A163337.P8662295098672042079

`A163331(A163328(A163335(A163331(A163330(n)))))`
-/

namespace A163337.P8662295098672042079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163331 (A163328 (A163335 (A163331 (A163330 n).toNat).toNat).toNat).toNat

end

end A163337.P8662295098672042079

/-! ## A163337.P12327813188860801017

`A163335(A163336(A163335(A163333(A163333(n)))))`
-/

namespace A163337.P12327813188860801017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 (A163336 (A163335 (A163333 (A163333 n).toNat).toNat).toNat).toNat

end

end A163337.P12327813188860801017

/-! ## A163337.P96233410228748132

`A163335(A163336(A163335(A163335(A163334(n)))))`
-/

namespace A163337.P96233410228748132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 (A163336 (A163335 (A163335 (A163334 n).toNat).toNat).toNat).toNat

end

end A163337.P96233410228748132

/-! ## A163337.P18022435648653797445

`A163335(A163330(A163335(A163333(n))))`
-/

namespace A163337.P18022435648653797445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 (A163330 (A163335 (A163333 n).toNat).toNat).toNat

end

end A163337.P18022435648653797445

/-!
# A163338: Peano curve in an N x N grid, one-based, starting rightwards from the top-left corner.

The programs for A163338, there is no canonical definition to state claims against.
-/

/-! ## A163338.P1255550402779740995

`A163334(n)+1`
-/

namespace A163338.P1255550402779740995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 n + 1

end

end A163338.P1255550402779740995

/-! ## A163338.P6848182150832724794

`A163340(∑[char[∑[n]]]²-n)`
-/

namespace A163338.P6848182150832724794
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163340 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A163338.P6848182150832724794

/-! ## A163338.P18441504750576400916

`A163336(A061579(n))+1`
-/

namespace A163338.P18441504750576400916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A061579 n).toNat + 1

end

end A163338.P18441504750576400916

/-! ## A163338.P7141724426567440389

`A163332(A163328(n))+1`
-/

namespace A163338.P7141724426567440389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (A163328 n).toNat + 1

end

end A163338.P7141724426567440389

/-! ## A163338.P3662741825555832691

`A166042(A163357(n))+1`
-/

namespace A163338.P3662741825555832691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166042 (A163357 n).toNat + 1

end

end A163338.P3662741825555832691

/-! ## A163338.P11492261975261349896

`A166044(A163359(n))+1`
-/

namespace A163338.P11492261975261349896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 (A163359 n).toNat + 1

end

end A163338.P11492261975261349896

/-! ## A163338.P5505526558284075814

`A342218(A163336(n))+1`
-/

namespace A163338.P5505526558284075814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342218 (A163336 n).toNat + 1

end

end A163338.P5505526558284075814

/-! ## A163338.P4073934072118509621

`A163336(A038722(n+1)-1)+1`
-/

namespace A163338.P4073934072118509621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 (A038722 (n + 1) - 1).toNat + 1

end

end A163338.P4073934072118509621

/-! ## A163338.P8175164677267799791

`A166042(A163361(n+1)-1)+1`
-/

namespace A163338.P8175164677267799791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166042 (A163361 (n + 1) - 1).toNat + 1

end

end A163338.P8175164677267799791

/-! ## A163338.P6516017003075428354

`A166044(A163363(n+1)-1)+1`
-/

namespace A163338.P6516017003075428354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 (A163363 (n + 1) - 1).toNat + 1

end

end A163338.P6516017003075428354

/-! ## A163338.P2165359720042298331

`A342218(A163340(n+1)-1)+1`
-/

namespace A163338.P2165359720042298331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342218 (A163340 (n + 1) - 1).toNat + 1

end

end A163338.P2165359720042298331

/-!
# A163339: Inverse permutation to A163338.

The programs for A163339, there is no canonical definition to state claims against.
-/

/-! ## A163339.P1779431901608682016

`A163335(n)+1`
-/

namespace A163339.P1779431901608682016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 n + 1

end

end A163339.P1779431901608682016

/-! ## A163339.P12431602931619592521

`A163329(A163332(n))+1`
-/

namespace A163339.P12431602931619592521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163329 (A163332 n).toNat + 1

end

end A163339.P12431602931619592521

/-! ## A163339.P17676335458775885186

`A163362(A166041(n)+1)`
-/

namespace A163339.P17676335458775885186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163362 (A166041 n + 1).toNat

end

end A163339.P17676335458775885186

/-! ## A163339.P3508071628427599937

`A163364(A166043(n)+1)`
-/

namespace A163339.P3508071628427599937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163364 (A166043 n + 1).toNat

end

end A163339.P3508071628427599937

/-! ## A163339.P1019536824413529722

`A163337(A342218(n))+1`
-/

namespace A163339.P1019536824413529722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163337 (A342218 n).toNat + 1

end

end A163339.P1019536824413529722

/-! ## A163339.P10555417468321310992

`(A163530(n)+1)²-A163337(n)`
-/

namespace A163339.P10555417468321310992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A163530 n + 1) ^ 2 - A163337 n

end

end A163339.P10555417468321310992

/-! ## A163339.P16739124154269458148

`A163341(n+1)+A163529(n)-A163528(n)`
-/

namespace A163339.P16739124154269458148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163341 (n + 1) + (A163529 n - A163528 n)

end

end A163339.P16739124154269458148

/-! ## A163339.P6496654407497497657

`A038722(A163341(n+1))`
-/

namespace A163339.P6496654407497497657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A163341 (n + 1)).toNat

end

end A163339.P6496654407497497657

/-! ## A163339.P15274870027099007667

`A061579(A163337(n))+1`
-/

namespace A163339.P15274870027099007667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163337 n).toNat + 1

end

end A163339.P15274870027099007667

/-! ## A163339.P2739676633374977624

`A061579(A163341(n+1)-1)+1`
-/

namespace A163339.P2739676633374977624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163341 (n + 1) - 1).toNat + 1

end

end A163339.P2739676633374977624

/-!
# A163340: Peano curve in an N x N grid, one-based, starting downwards from the top-left corner.

The programs for A163340, there is no canonical definition to state claims against.
-/

/-! ## A163340.P18271527316041855801

`A163336(n)+1`
-/

namespace A163340.P18271527316041855801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163336 n + 1

end

end A163340.P18271527316041855801

/-! ## A163340.P2620264926482514796

`A163338(A038722(n+1))`
-/

namespace A163340.P2620264926482514796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163338 (A038722 (n + 1)).toNat

end

end A163340.P2620264926482514796

/-! ## A163340.P6751837139157072696

`A163338(A061579(n)+1)`
-/

namespace A163340.P6751837139157072696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163338 (A061579 n + 1).toNat

end

end A163340.P6751837139157072696

/-! ## A163340.P6182258723294901386

`A163332(A163330(n))+1`
-/

namespace A163340.P6182258723294901386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (A163330 n).toNat + 1

end

end A163340.P6182258723294901386

/-! ## A163340.P15251738772394823560

`A166044(A163357(n))+1`
-/

namespace A163340.P15251738772394823560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 (A163357 n).toNat + 1

end

end A163340.P15251738772394823560

/-! ## A163340.P13469483065450552054

`A166042(A163359(n))+1`
-/

namespace A163340.P13469483065450552054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166042 (A163359 n).toNat + 1

end

end A163340.P13469483065450552054

/-! ## A163340.P9097879826017893671

`A342218(A163334(n))+1`
-/

namespace A163340.P9097879826017893671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342218 (A163334 n).toNat + 1

end

end A163340.P9097879826017893671

/-! ## A163340.P595119114483222417

`A166044(A163361(n+1)-1)+1`
-/

namespace A163340.P595119114483222417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166044 (A163361 (n + 1) - 1).toNat + 1

end

end A163340.P595119114483222417

/-! ## A163340.P3940360179715608266

`A166042(A163363(n+1)-1)+1`
-/

namespace A163340.P3940360179715608266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166042 (A163363 (n + 1) - 1).toNat + 1

end

end A163340.P3940360179715608266

/-! ## A163340.P3924390872860496062

`A342218(A163338(n+1)-1)+1`
-/

namespace A163340.P3924390872860496062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342218 (A163338 (n + 1) - 1).toNat + 1

end

end A163340.P3924390872860496062

/-! ## A163340.P5011909516217202269

`A163338(A163341(A163338(n+1)))`
-/

namespace A163340.P5011909516217202269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163338 (A163341 (A163338 (n + 1)).toNat).toNat

end

end A163340.P5011909516217202269

/-!
# A163341: Inverse permutation to A163340.

The programs for A163341, there is no canonical definition to state claims against.
-/

/-! ## A163341.P15303506705796961632

`A163337(n)+1`
-/

namespace A163341.P15303506705796961632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163337 n + 1

end

end A163341.P15303506705796961632

/-! ## A163341.P774229612990107808

`A163331(A163332(n))+1`
-/

namespace A163341.P774229612990107808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163331 (A163332 n).toNat + 1

end

end A163341.P774229612990107808

/-! ## A163341.P15732066851886719944

`A163364(A166041(n)+1)`
-/

namespace A163341.P15732066851886719944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163364 (A166041 n + 1).toNat

end

end A163341.P15732066851886719944

/-! ## A163341.P17334632296989498634

`A163362(A166043(n)+1)`
-/

namespace A163341.P17334632296989498634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163362 (A166043 n + 1).toNat

end

end A163341.P17334632296989498634

/-! ## A163341.P14361723432629182175

`A163339(A342218(n)+1)`
-/

namespace A163341.P14361723432629182175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163339 (A342218 n + 1).toNat

end

end A163341.P14361723432629182175

/-! ## A163341.P11126418936794532038

`(A163530(n)+1)²-A163335(n)`
-/

namespace A163341.P11126418936794532038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A163530 n + 1) ^ 2 - A163335 n

end

end A163341.P11126418936794532038

/-! ## A163341.P843951295446942819

`A163339(n+1)+A163528(n)-A163529(n)`
-/

namespace A163341.P843951295446942819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163339 (n + 1) + (A163528 n - A163529 n)

end

end A163341.P843951295446942819

/-! ## A163341.P12767605476031883755

`A038722(A163339(n+1))`
-/

namespace A163341.P12767605476031883755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A163339 (n + 1)).toNat

end

end A163341.P12767605476031883755

/-! ## A163341.P15503012803696022780

`A061579(A163335(n))+1`
-/

namespace A163341.P15503012803696022780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163335 n).toNat + 1

end

end A163341.P15503012803696022780

/-!
# A163342: Row sums of A163334 and A163336.

The programs for A163342, there is no canonical definition to state claims against.
-/

/-! ## A163342.P15010533874137366755

`6*A163479(n)`
-/

namespace A163342.P15010533874137366755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A163479 n

end

end A163342.P15010533874137366755

/-! ## A163342.P16300523401394335877

`A008588(A163479(n))`
-/

namespace A163342.P16300523401394335877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A163479 n).toNat

end

end A163342.P16300523401394335877

/-! ## A163342.P11352622746582854766

`A008458(A163479(n))-A000007(n)`
-/

namespace A163342.P11352622746582854766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A163479 n).toNat - A000007 n

end

end A163342.P11352622746582854766

/-! ## A163342.P7048159807995351447

`A008458(A163479(n))-A151622(n)`
-/

namespace A163342.P7048159807995351447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A163479 n).toNat - A151622 n

end

end A163342.P7048159807995351447

/-!
# A163343: Central diagonal of A163334 and A163336.

The programs for A163343, the canonical program `A163343.P18183862503228985629` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163343 has offset 0).

The definition of A163343 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A128173, A338086, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163343.P4831415132329600451

`4*A163344(n)`
-/

namespace A163343.P4831415132329600451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A163344 n

end

end A163343.P4831415132329600451

namespace A163343

/-- `4*A163344(n)` -/
def P4831415132329600451.Spec : Prop :=
  ∀ n, P4831415132329600451.a n = A163343 n

end A163343

/-! ## A163343.P18183862503228985629

`A338086(A128173(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A163343

/-- `A338086(A128173(n))` -/
def P18183862503228985629.Spec : Prop :=
  ∀ n, P18183862503228985629.a n = A163343 n

theorem P18183862503228985629.correct : P18183862503228985629.Spec := by
  intro n
  simp only [A163343]

end A163343

/-! ## A163343.P18060017606580901700

`A163332(A338086(n))`
-/

namespace A163343.P18060017606580901700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163332 (A338086 n).toNat

end

end A163343.P18060017606580901700

namespace A163343

/-- `A163332(A338086(n))` -/
def P18060017606580901700.Spec : Prop :=
  ∀ n, P18060017606580901700.a n = A163343 n

end A163343

/-! ## A163343.P11240204128157282732

`A163334(∑[4*n])`
-/

namespace A163343.P11240204128157282732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163343.P11240204128157282732

namespace A163343

/-- `A163334(∑[4*n])` -/
def P11240204128157282732.Spec : Prop :=
  ∀ n, P11240204128157282732.a n = A163343 n

end A163343

/-! ## A163343.P13420179370704967676

`lcm(2, A163334(2*(n²+n)))`
-/

namespace A163343.P13420179370704967676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A163334 (2 * (n ^ 2 + n)))

end

end A163343.P13420179370704967676

namespace A163343

/-- `lcm(2, A163334(2*(n²+n)))` -/
def P13420179370704967676.Spec : Prop :=
  ∀ n, (P13420179370704967676.a n : ℤ) = A163343 n

end A163343

/-!
# A163344: Central diagonal of A163334 and A163336 divided by 4.

The programs for A163344, there is no canonical definition to state claims against.
-/

/-! ## A163344.P91453838254235548

`A163334(∑[4*n])/4`
-/

namespace A163344.P91453838254235548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163334 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A163344.P91453838254235548

/-! ## A163344.P11466112058092940244

`round(A163334(2*n²)/4)`
-/

namespace A163344.P11466112058092940244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A163334 (2 * n ^ 2) : ℚ) / 4)

end

end A163344.P11466112058092940244

/-! ## A163344.P14173235841308084300

`floor(A163334(2*(n²+n))/4)`
-/

namespace A163344.P14173235841308084300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A163334 (2 * (n ^ 2 + n)) : ℚ) / 4⌋

end

end A163344.P14173235841308084300

/-! ## A163344.P15523144023413958221

`A166042(2*(2*∑[and(n, -n)²]+n)/3)/4`
-/

namespace A163344.P15523144023413958221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166042 (SequenceMachineLib.roundAway (2 * (((2 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) : ℤ) : ℚ) / 3))).toNat : ℚ) / 4

end

end A163344.P15523144023413958221

/-! ## A163344.P11151540503956193172

`A037314(A128173(n))`
-/

namespace A163344.P11151540503956193172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037314 (A128173 n).toNat

end

end A163344.P11151540503956193172

/-! ## A163344.P6521324957263470904

`A128173(A163334(∑[n]))`
-/

namespace A163344.P6521324957263470904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128173 (A163334 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A163344.P6521324957263470904

/-! ## A163344.P15231512787932181804

`A166042(A062880(n))/4`
-/

namespace A163344.P15231512787932181804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166042 (A062880 n).toNat : ℚ) / 4

end

end A163344.P15231512787932181804

/-! ## A163344.P4336480434243407561

`A002265(A163334(∑[4*n]))`
-/

namespace A163344.P4336480434243407561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A163334 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A163344.P4336480434243407561

/-! ## A163344.P9452263476341757346

`A004525(A163334(2*(n²+n))/2)`
-/

namespace A163344.P9452263476341757346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A163334 (2 * (n ^ 2 + n)) : ℚ) / 2)).toNat

end

end A163344.P9452263476341757346

/-! ## A163344.P2599569500759288284

`A004526(A163334(2*(n²+n))/2)`
-/

namespace A163344.P2599569500759288284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A163334 (2 * (n ^ 2 + n)) : ℚ) / 2)).toNat

end

end A163344.P2599569500759288284

/-!
# A163345: Number of reduced words of length n in Coxeter group on 7 generators S_i with relations (S_i)^2 = (S_i S_j)^5 = I.

The programs for A163345, there is no canonical definition to state claims against.
-/

/-! ## A163345.P8777944573590993472

`A003949(n)-A257013(A361657(n))`
-/

namespace A163345.P8777944573590993472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003949 n - A257013 (A361657 n).toNat

end

end A163345.P8777944573590993472

/-! ## A163345.P859930038777091425

`A166878(n)-A307931(A166888(n))`
-/

namespace A163345.P859930038777091425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166878 n - A307931 (A166888 n).toNat

end

end A163345.P859930038777091425

/-!
# A163346: a(n) = 10*a(n-1) - 23*a(n-2) for n > 1; a(0) = 1, a(1) = 7.

The programs for A163346, the canonical program `A163346.P6694761611504199943` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163346 has offset 0).

The definition of A163346 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-23*a(n-2)` (program `A163346.P6694761611504199943`, by `A163346.P6694761611504199943.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163346.P6694761611504199943

`10*a(n-1)-23*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163346

/-- `10*a(n-1)-23*a(n-2)` -/
def P6694761611504199943.Spec : Prop :=
  ∀ n, P6694761611504199943.a n = A163346 n

theorem P6694761611504199943.correct : P6694761611504199943.Spec := by
  intro n
  simp only [A163346]

end A163346

/-! ## A163346.P16241685373926880901

`ogf((1-3x)/(1-10x+23x^2))`
-/

namespace A163346.P16241685373926880901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -10, 23] n

end

end A163346.P16241685373926880901

namespace A163346

/-- `ogf((1-3x)/(1-10x+23x^2))` -/
def P16241685373926880901.Spec : Prop :=
  ∀ n, P16241685373926880901.a n = A163346 n

end A163346

/-! ## A163346.P188264501371942701

`((1+sqrt(2))*(sqrt(2)+5)^n+(1-sqrt(2))*(5-sqrt(2))^n)/2`
-/

namespace A163346.P188264501371942701
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 5) ^ n + (1 - Real.sqrt (2 : ℝ)) * (5 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163346.P188264501371942701

namespace A163346

/-- `((1+sqrt(2))*(sqrt(2)+5)^n+(1-sqrt(2))*(5-sqrt(2))^n)/2` -/
def P188264501371942701.Spec : Prop :=
  ∀ n, P188264501371942701.a n = (A163346 n : ℝ)

theorem P188264501371942701.correct : P188264501371942701.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163346, Nat.add_sub_cancel, A163346.P188264501371942701.a, A163346.P6694761611504199943.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163346, Nat.add_sub_cancel, A163346.P188264501371942701.a, A163346.P6694761611504199943.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163346

/-! ## A163346.P14246150003174226203

`A161734(n)+A081182(n)`
-/

namespace A163346.P14246150003174226203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161734 n + A081182 n

end

end A163346.P14246150003174226203

namespace A163346

/-- `A161734(n)+A081182(n)` -/
def P14246150003174226203.Spec : Prop :=
  ∀ n, P14246150003174226203.a n = A163346 n

end A163346

/-! ## A163346.P15903892952301043771

`A164031(n)-A081182(n)`
-/

namespace A163346.P15903892952301043771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164031 n - A081182 n

end

end A163346.P15903892952301043771

namespace A163346

/-- `A164031(n)-A081182(n)` -/
def P15903892952301043771.Spec : Prop :=
  ∀ n, P15903892952301043771.a n = A163346 n

end A163346

/-! ## A163346.P16788486378627984314

`A164035(n)-A161734(n)`
-/

namespace A163346.P16788486378627984314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164035 n - A161734 n

end

end A163346.P16788486378627984314

namespace A163346

/-- `A164035(n)-A161734(n)` -/
def P16788486378627984314.Spec : Prop :=
  ∀ n, P16788486378627984314.a n = A163346 n

end A163346

/-! ## A163346.P635558702333754294

`A163349(n)-2*A081182(n)`
-/

namespace A163346.P635558702333754294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163349 n - 2 * A081182 n

end

end A163346.P635558702333754294

namespace A163346

/-- `A163349(n)-2*A081182(n)` -/
def P635558702333754294.Spec : Prop :=
  ∀ n, P635558702333754294.a n = A163346 n

end A163346

/-! ## A163346.P1798410071052522583

`A163605(n)-2*A161734(n)`
-/

namespace A163346.P1798410071052522583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163605 n - 2 * A161734 n

end

end A163346.P1798410071052522583

namespace A163346

/-- `A163605(n)-2*A161734(n)` -/
def P1798410071052522583.Spec : Prop :=
  ∀ n, P1798410071052522583.a n = A163346 n

end A163346

/-! ## A163346.P8850389715595900311

`2*A164035(n)-A163605(n)`
-/

namespace A163346.P8850389715595900311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164035 n - A163605 n

end

end A163346.P8850389715595900311

namespace A163346

/-- `2*A164035(n)-A163605(n)` -/
def P8850389715595900311.Spec : Prop :=
  ∀ n, P8850389715595900311.a n = A163346 n

end A163346

/-! ## A163346.P520711991350612997

`A081182(n)+A163605(n)-A164035(n)`
-/

namespace A163346.P520711991350612997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081182 n + (A163605 n - A164035 n)

end

end A163346.P520711991350612997

namespace A163346

/-- `A081182(n)+A163605(n)-A164035(n)` -/
def P520711991350612997.Spec : Prop :=
  ∀ n, P520711991350612997.a n = A163346 n

end A163346

/-! ## A163346.P5879938729356362023

`A081182(n+1)+A081182(n+1)-A164301(n)`
-/

namespace A163346.P5879938729356362023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081182 (n + 1) + (A081182 (n + 1) - A164301 n)

end

end A163346.P5879938729356362023

namespace A163346

/-- `A081182(n+1)+A081182(n+1)-A164301(n)` -/
def P5879938729356362023.Spec : Prop :=
  ∀ n, P5879938729356362023.a n = A163346 n

end A163346

/-! ## A163346.P15028343342324346088

`Δ[A163605(n)]%A163605(n)`
-/

namespace A163346.P15028343342324346088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A163605 n)

end

end A163346.P15028343342324346088

namespace A163346

/-- `Δ[A163605(n)]%A163605(n)` -/
def P15028343342324346088.Spec : Prop :=
  ∀ n, P15028343342324346088.a n = A163346 n

end A163346

/-! ## A163346.P539804784256026283

`A163605(n+1)%A163605(n)`
-/

namespace A163346.P539804784256026283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163605 (n + 1)) (A163605 n)

end

end A163346.P539804784256026283

namespace A163346

/-- `A163605(n+1)%A163605(n)` -/
def P539804784256026283.Spec : Prop :=
  ∀ n, P539804784256026283.a n = A163346 n

end A163346

/-!
# A163348: a(n) = 6*a(n-1) - 7*a(n-2) for n > 1; a(0) = 1, a(1) = 7.

The programs for A163348, the canonical program `A163348.P6387643395593519922` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163348 has offset 0).

The definition of A163348 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-7*a(n-2)` (program `A163348.P6387643395593519922`, by `A163348.P6387643395593519922.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163348.P6387643395593519922

`6*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163348

/-- `6*a(n-1)-7*a(n-2)` -/
def P6387643395593519922.Spec : Prop :=
  ∀ n, P6387643395593519922.a n = A163348 n

theorem P6387643395593519922.correct : P6387643395593519922.Spec := by
  intro n
  simp only [A163348]

end A163348

/-! ## A163348.P2463661772135061362

`((1+2*sqrt(2))*(3+sqrt(2))^n+(1-2*sqrt(2))*(3-sqrt(2))^n)/2`
-/

namespace A163348.P2463661772135061362
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 2 * Real.sqrt (2 : ℝ)) * (3 + Real.sqrt (2 : ℝ)) ^ n + (1 - 2 * Real.sqrt (2 : ℝ)) * (3 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163348.P2463661772135061362

namespace A163348

/-- `((1+2*sqrt(2))*(3+sqrt(2))^n+(1-2*sqrt(2))*(3-sqrt(2))^n)/2` -/
def P2463661772135061362.Spec : Prop :=
  ∀ n, P2463661772135061362.a n = (A163348 n : ℝ)

theorem P2463661772135061362.correct : P2463661772135061362.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163348, Nat.add_sub_cancel, A163348.P2463661772135061362.a, A163348.P6387643395593519922.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163348, Nat.add_sub_cancel, A163348.P2463661772135061362.a, A163348.P6387643395593519922.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163348

/-! ## A163348.P13416552982056133794

`A081179(n)+A081179(n+1)`
-/

namespace A163348.P13416552982056133794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 n + A081179 (n + 1)

end

end A163348.P13416552982056133794

namespace A163348

/-- `A081179(n)+A081179(n+1)` -/
def P13416552982056133794.Spec : Prop :=
  ∀ n, P13416552982056133794.a n = A163348 n

end A163348

/-! ## A163348.P7136597860505221588

`ogf((1+x)/(1-6x+7x^2))`
-/

namespace A163348.P7136597860505221588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -6, 7] n

end

end A163348.P7136597860505221588

namespace A163348

/-- `ogf((1+x)/(1-6x+7x^2))` -/
def P7136597860505221588.Spec : Prop :=
  ∀ n, P7136597860505221588.a n = A163348 n

end A163348

/-! ## A163348.P16417197903354492664

`A081179(n)+∑[A102285(n)]`
-/

namespace A163348.P16417197903354492664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081179 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163348.P16417197903354492664

namespace A163348

/-- `A081179(n)+∑[A102285(n)]` -/
def P16417197903354492664.Spec : Prop :=
  ∀ n, P16417197903354492664.a n = A163348 n

end A163348

/-! ## A163348.P12297897822675632970

`A163614(n)-2*A081179(n)`
-/

namespace A163348.P12297897822675632970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163614 n - 2 * A081179 n

end

end A163348.P12297897822675632970

namespace A163348

/-- `A163614(n)-2*A081179(n)` -/
def P12297897822675632970.Spec : Prop :=
  ∀ n, P12297897822675632970.a n = A163348 n

end A163348

/-! ## A163348.P2179638746030366379

`A164037(n)-2*A161944(n)`
-/

namespace A163348.P2179638746030366379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164037 n - 2 * A161944 n

end

end A163348.P2179638746030366379

namespace A163348

/-- `A164037(n)-2*A161944(n)` -/
def P2179638746030366379.Spec : Prop :=
  ∀ n, P2179638746030366379.a n = A163348 n

end A163348

/-! ## A163348.P11524714676387767032

`Δ[2*A081179(n)]-A083878(n)`
-/

namespace A163348.P11524714676387767032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A083878 n

end

end A163348.P11524714676387767032

namespace A163348

/-- `Δ[2*A081179(n)]-A083878(n)` -/
def P11524714676387767032.Spec : Prop :=
  ∀ n, P11524714676387767032.a n = A163348 n

end A163348

/-! ## A163348.P10248244681839018185

`Δ[A164037(n)]%A164037(n)`
-/

namespace A163348.P10248244681839018185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A164037 n)

end

end A163348.P10248244681839018185

namespace A163348

/-- `Δ[A164037(n)]%A164037(n)` -/
def P10248244681839018185.Spec : Prop :=
  ∀ n, P10248244681839018185.a n = A163348 n

end A163348

/-! ## A163348.P12163125849091247903

`A102285(n+1)-2*A034999(n+1)`
-/

namespace A163348.P12163125849091247903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102285 (n + 1) - 2 * A034999 (n + 1)

end

end A163348.P12163125849091247903

namespace A163348

/-- `A102285(n+1)-2*A034999(n+1)` -/
def P12163125849091247903.Spec : Prop :=
  ∀ n, P12163125849091247903.a n = A163348 n

end A163348

/-!
# A163349: a(n) = 10*a(n-1) - 23*a(n-2) for n > 1; a(0) = 1, a(1) = 9.

The programs for A163349, the canonical program `A163349.P16910989090411848669` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163349 has offset 0).

The definition of A163349 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)-23*a(n-2)` (program `A163349.P16910989090411848669`, by `A163349.P16910989090411848669.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163349.P16910989090411848669

`10*a(n-1)-23*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163349

/-- `10*a(n-1)-23*a(n-2)` -/
def P16910989090411848669.Spec : Prop :=
  ∀ n, P16910989090411848669.a n = A163349 n

theorem P16910989090411848669.correct : P16910989090411848669.Spec := by
  intro n
  simp only [A163349]

end A163349

/-! ## A163349.P8308696494001285530

`ogf((1-x)/(1-10x+23x^2))`
-/

namespace A163349.P8308696494001285530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -10, 23] n

end

end A163349.P8308696494001285530

namespace A163349

/-- `ogf((1-x)/(1-10x+23x^2))` -/
def P8308696494001285530.Spec : Prop :=
  ∀ n, P8308696494001285530.a n = A163349 n

end A163349

/-! ## A163349.P2662323034448661276

`((1+2*sqrt(2))*(sqrt(2)+5)^n+(1-2*sqrt(2))*(5-sqrt(2))^n)/2`
-/

namespace A163349.P2662323034448661276
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + 2 * Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 5) ^ n + (1 - 2 * Real.sqrt (2 : ℝ)) * (5 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163349.P2662323034448661276

namespace A163349

/-- `((1+2*sqrt(2))*(sqrt(2)+5)^n+(1-2*sqrt(2))*(5-sqrt(2))^n)/2` -/
def P2662323034448661276.Spec : Prop :=
  ∀ n, P2662323034448661276.a n = (A163349 n : ℝ)

theorem P2662323034448661276.correct : P2662323034448661276.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163349, Nat.add_sub_cancel, A163349.P2662323034448661276.a, A163349.P16910989090411848669.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163349, Nat.add_sub_cancel, A163349.P2662323034448661276.a, A163349.P16910989090411848669.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163349

/-! ## A163349.P3467364883737408582

`Δ[A081182(n)]`
-/

namespace A163349.P3467364883737408582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081182 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163349.P3467364883737408582

namespace A163349

/-- `Δ[A081182(n)]` -/
def P3467364883737408582.Spec : Prop :=
  ∀ n, P3467364883737408582.a n = A163349 n

end A163349

/-! ## A163349.P14520987961409781480

`A164031(n)+A081182(n)`
-/

namespace A163349.P14520987961409781480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164031 n + A081182 n

end

end A163349.P14520987961409781480

namespace A163349

/-- `A164031(n)+A081182(n)` -/
def P14520987961409781480.Spec : Prop :=
  ∀ n, P14520987961409781480.a n = A163349 n

end A163349

/-! ## A163349.P7036761076478856986

`A081182(n+1)-A081182(n)`
-/

namespace A163349.P7036761076478856986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081182 (n + 1) - A081182 n

end

end A163349.P7036761076478856986

namespace A163349

/-- `A081182(n+1)-A081182(n)` -/
def P7036761076478856986.Spec : Prop :=
  ∀ n, P7036761076478856986.a n = A163349 n

end A163349

/-! ## A163349.P9757366418221161750

`A163346(n)+2*A081182(n)`
-/

namespace A163349.P9757366418221161750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163346 n + 2 * A081182 n

end

end A163349.P9757366418221161750

namespace A163349

/-- `A163346(n)+2*A081182(n)` -/
def P9757366418221161750.Spec : Prop :=
  ∀ n, P9757366418221161750.a n = A163349 n

end A163349

/-! ## A163349.P6560826180776174111

`A163616(n)-2*A081182(n)`
-/

namespace A163349.P6560826180776174111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163616 n - 2 * A081182 n

end

end A163349.P6560826180776174111

namespace A163349

/-- `A163616(n)-2*A081182(n)` -/
def P6560826180776174111.Spec : Prop :=
  ∀ n, P6560826180776174111.a n = A163349 n

end A163349

/-! ## A163349.P10713446679791932277

`2*A164031(n)-A163346(n)`
-/

namespace A163349.P10713446679791932277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A164031 n - A163346 n

end

end A163349.P10713446679791932277

namespace A163349

/-- `2*A164031(n)-A163346(n)` -/
def P10713446679791932277.Spec : Prop :=
  ∀ n, P10713446679791932277.a n = A163349 n

end A163349

/-! ## A163349.P4122452899843601432

`Δ[A164035(n)%A161734(n)]`
-/

namespace A163349.P4122452899843601432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164035 n) (A161734 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163349.P4122452899843601432

namespace A163349

/-- `Δ[A164035(n)%A161734(n)]` -/
def P4122452899843601432.Spec : Prop :=
  ∀ n, P4122452899843601432.a n = A163349 n

end A163349

/-! ## A163349.P7158727140965497609

`Δ[A164035(n)]%A164038(n)`
-/

namespace A163349.P7158727140965497609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A164038 n)

end

end A163349.P7158727140965497609

namespace A163349

/-- `Δ[A164035(n)]%A164038(n)` -/
def P7158727140965497609.Spec : Prop :=
  ∀ n, P7158727140965497609.a n = A163349 n

end A163349

/-!
# A163350: a(n) = 8*a(n-1) - 14*a(n-2) for n > 1; a(0) = 1, a(1) = 6.

The programs for A163350, the canonical program `A163350.P994586948647026021` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163350 has offset 0).

The definition of A163350 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)-14*a(n-2)` (program `A163350.P994586948647026021`, by `A163350.P994586948647026021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163350.P994586948647026021

`8*a(n-1)-14*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163350

/-- `8*a(n-1)-14*a(n-2)` -/
def P994586948647026021.Spec : Prop :=
  ∀ n, P994586948647026021.a n = A163350 n

theorem P994586948647026021.correct : P994586948647026021.Spec := by
  intro n
  simp only [A163350]

end A163350

/-! ## A163350.P5243028400473201568

`ogf((1-2x)/(1-8x+14x^2))`
-/

namespace A163350.P5243028400473201568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -8, 14] n

end

end A163350.P5243028400473201568

namespace A163350

/-- `ogf((1-2x)/(1-8x+14x^2))` -/
def P5243028400473201568.Spec : Prop :=
  ∀ n, P5243028400473201568.a n = A163350 n

end A163350

/-! ## A163350.P11726549457586322024

`A161731(n)+A081180(n)`
-/

namespace A163350.P11726549457586322024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161731 n + A081180 n

end

end A163350.P11726549457586322024

namespace A163350

/-- `A161731(n)+A081180(n)` -/
def P11726549457586322024.Spec : Prop :=
  ∀ n, P11726549457586322024.a n = A163350 n

end A163350

/-! ## A163350.P9731826572912809823

`A164072(n)-A081180(n)`
-/

namespace A163350.P9731826572912809823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164072 n - A081180 n

end

end A163350.P9731826572912809823

namespace A163350

/-- `A164072(n)-A081180(n)` -/
def P9731826572912809823.Spec : Prop :=
  ∀ n, P9731826572912809823.a n = A163350 n

end A163350

/-! ## A163350.P4633924277570443168

`A083879(n)+2*A081180(n)`
-/

namespace A163350.P4633924277570443168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083879 n + 2 * A081180 n

end

end A163350.P4633924277570443168

namespace A163350

/-- `A083879(n)+2*A081180(n)` -/
def P4633924277570443168.Spec : Prop :=
  ∀ n, P4633924277570443168.a n = A163350 n

end A163350

/-! ## A163350.P6059500195645905226

`2*A161731(n)-A083879(n)`
-/

namespace A163350.P6059500195645905226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161731 n - A083879 n

end

end A163350.P6059500195645905226

namespace A163350

/-- `2*A161731(n)-A083879(n)` -/
def P6059500195645905226.Spec : Prop :=
  ∀ n, P6059500195645905226.a n = A163350 n

end A163350

/-! ## A163350.P8745268420798582621

`((1+sqrt(2))*(sqrt(2)+4)^n+(1-sqrt(2))*(4-sqrt(2))^n)/2`
-/

namespace A163350.P8745268420798582621
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (2 : ℝ)) * (Real.sqrt (2 : ℝ) + 4) ^ n + (1 - Real.sqrt (2 : ℝ)) * (4 - Real.sqrt (2 : ℝ)) ^ n) / 2

end

end A163350.P8745268420798582621

namespace A163350

/-- `((1+sqrt(2))*(sqrt(2)+4)^n+(1-sqrt(2))*(4-sqrt(2))^n)/2` -/
def P8745268420798582621.Spec : Prop :=
  ∀ n, P8745268420798582621.a n = (A163350 n : ℝ)

theorem P8745268420798582621.correct : P8745268420798582621.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163350, Nat.add_sub_cancel, A163350.P8745268420798582621.a, A163350.P994586948647026021.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163350, Nat.add_sub_cancel, A163350.P8745268420798582621.a, A163350.P994586948647026021.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A163350

/-! ## A163350.P16749056384919975718

`A163604(n)-2*A161731(n)`
-/

namespace A163350.P16749056384919975718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163604 n - 2 * A161731 n

end

end A163350.P16749056384919975718

namespace A163350

/-- `A163604(n)-2*A161731(n)` -/
def P16749056384919975718.Spec : Prop :=
  ∀ n, P16749056384919975718.a n = A163350 n

end A163350

/-! ## A163350.P11536290720753668208

`A081180(n+1)-2*A081180(n)`
-/

namespace A163350.P11536290720753668208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081180 (n + 1) - 2 * A081180 n

end

end A163350.P11536290720753668208

namespace A163350

/-- `A081180(n+1)-2*A081180(n)` -/
def P11536290720753668208.Spec : Prop :=
  ∀ n, P11536290720753668208.a n = A163350 n

end A163350

/-! ## A163350.P72363214212068231

`Δ[A163604(n)]%A163604(n)`
-/

namespace A163350.P72363214212068231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A163604 n)

end

end A163350.P72363214212068231

namespace A163350

/-- `Δ[A163604(n)]%A163604(n)` -/
def P72363214212068231.Spec : Prop :=
  ∀ n, P72363214212068231.a n = A163350 n

end A163350

/-!
# A163351: Triangle T(n,k) = m, 0<=k<=n, read by rows, where each decimal digit d of the integer m is the minimum of the corresponding decimal digits of n and k.

The programs for A163351, there is no canonical definition to state claims against.
-/

/-! ## A163351.P15768960873291475923

`A342955(A245300(n))`
-/

namespace A163351.P15768960873291475923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342955 (A245300 n).toNat

end

end A163351.P15768960873291475923

/-! ## A163351.P14403353758874904481

`A342955((A214661(n+1)-1)/2)`
-/

namespace A163351.P14403353758874904481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342955 (SequenceMachineLib.roundAway ((A214661 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A163351.P14403353758874904481

/-! ## A163351.P2184549948711244588

`A051162(n)-A087061(A245300(n))`
-/

namespace A163351.P2184549948711244588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n - A087061 (A245300 n).toNat

end

end A163351.P2184549948711244588

/-! ## A163351.P3177106953653153356

`A051162(n)-A163352(n)`
-/

namespace A163351.P3177106953653153356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n - A163352 n

end

end A163351.P3177106953653153356

/-! ## A163351.P8834078945030917590

`A094727(n+1)-(A163352(n)+1)`
-/

namespace A163351.P8834078945030917590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) - (A163352 n + 1)

end

end A163351.P8834078945030917590

/-! ## A163351.P5427625955783965476

`2*n-(A163352(n)+A063656(n))`
-/

namespace A163351.P5427625955783965476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (A163352 n + A063656 n)

end

end A163351.P5427625955783965476

/-! ## A163351.P8312654402750360073

`A014701(A099627(n))-A163352(n)`
-/

namespace A163351.P8312654402750360073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014701 (A099627 n).toNat - A163352 n

end

end A163351.P8312654402750360073

/-! ## A163351.P10354752004373653025

`A053186(A061885(n)-A163352(n))`
-/

namespace A163351.P10354752004373653025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A061885 n - A163352 n).toNat

end

end A163351.P10354752004373653025

/-! ## A163351.P16059025262243827761

`A134478(n)-A163352(A028310(n))`
-/

namespace A163351.P16059025262243827761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 n - A163352 (A028310 n).toNat

end

end A163351.P16059025262243827761

/-! ## A163351.P13609354641157759233

`A003056(A245300(n))-A163352(n)`
-/

namespace A163351.P13609354641157759233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A245300 n).toNat - A163352 n

end

end A163351.P13609354641157759233

/-!
# A163352: Triangle T(n,k) = m, 0<=k<=n, read by rows, where each decimal digit d of the integer m is the maximum of the corresponding decimal digits of n and k.

The programs for A163352, there is no canonical definition to state claims against.
-/

/-! ## A163352.P603616796792166286

`2*n-eq[0, floor(2*sqrt(n))%2]-A163351(n)`
-/

namespace A163352.P603616796792166286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊2 * Real.sqrt (n : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A163351 n

end

end A163352.P603616796792166286

/-! ## A163352.P15561353686247889898

`A087061(A245300(n))`
-/

namespace A163352.P15561353686247889898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (A245300 n).toNat

end

end A163352.P15561353686247889898

/-! ## A163352.P13383914584942457997

`A051162(n-A163351(n))`
-/

namespace A163352.P13383914584942457997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 ((n : ℤ) - A163351 n).toNat

end

end A163352.P13383914584942457997

/-! ## A163352.P2654895293830148230

`A094727(n+1)-1-A163351(n)`
-/

namespace A163352.P2654895293830148230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) - 1 - A163351 n

end

end A163352.P2654895293830148230

/-! ## A163352.P18331036875962308921

`ceil(sqrt(A214661(n+1)))-1-A163351(n)`
-/

namespace A163352.P18331036875962308921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A214661 (n + 1) : ℝ)⌉ - 1 - A163351 n

end

end A163352.P18331036875962308921

/-! ## A163352.P14589790990225118574

`abs(C(A002024(n+1)-1, 2)-n)-A163351(n)`
-/

namespace A163352.P14589790990225118574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (A002024 (n + 1) - 1).toNat 2 : ℤ) - (n : ℤ)| - A163351 n

end

end A163352.P14589790990225118574

/-! ## A163352.P17374022337439174547

`A051162(n)+A001489(A163351(n))`
-/

namespace A163352.P17374022337439174547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + A001489 (A163351 n).toNat

end

end A163352.P17374022337439174547

/-! ## A163352.P1417937424286321267

`A294317(A163351(n)+A061579(n))`
-/

namespace A163352.P1417937424286321267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (A163351 n + A061579 n).toNat

end

end A163352.P1417937424286321267

/-! ## A163352.P10885874377171166106

`A014701(A099627(n-A163351(n)))`
-/

namespace A163352.P10885874377171166106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014701 (A099627 ((n : ℤ) - A163351 n).toNat).toNat

end

end A163352.P10885874377171166106

/-! ## A163352.P7873897065507680911

`A053186(A061885(n)-A163351(n))`
-/

namespace A163352.P7873897065507680911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (A061885 n - A163351 n).toNat

end

end A163352.P7873897065507680911

/-!
# A163354: Divisors of 13237.

The programs for A163354, there is no canonical definition to state claims against.
-/

/-! ## A163354.P946836981796474699

`∏{p}[A018270(n+1), A006512(#)]`
-/

namespace A163354.P946836981796474699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006512 p

end

end A163354.P946836981796474699

/-! ## A163354.P17976257064788805140

`record[gcd(A067745(2*n+1), A206810(3*n+5))]`
-/

namespace A163354.P17976257064788805140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A067745 (2 * n + 1)) (A206810 (3 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163354.P17976257064788805140

/-! ## A163354.P6439837660181489325

`record[gcd(A130748(n+4), A130770(n))]`
-/

namespace A163354.P6439837660181489325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130748 (n + 4)) (A130770 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163354.P6439837660181489325

/-!
# A163355: Permutation of integers for constructing Hilbert curve in N x N grid.

The programs for A163355, there is no canonical definition to state claims against.
-/

/-! ## A163355.P10506348292794742862

`A163357(A054239(n))`
-/

namespace A163355.P10506348292794742862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A054239 n).toNat

end

end A163355.P10506348292794742862

/-! ## A163355.P12115858137821876553

`A302843(A003188(n))`
-/

namespace A163355.P12115858137821876553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302843 (A003188 n).toNat

end

end A163355.P12115858137821876553

/-! ## A163355.P8518238866935014176

`A163905(A163356(n))`
-/

namespace A163355.P8518238866935014176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163905 (A163356 n).toNat

end

end A163355.P8518238866935014176

/-! ## A163355.P13022986011939484340

`A163907(A163358(n))`
-/

namespace A163355.P13022986011939484340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163907 (A163358 n).toNat

end

end A163355.P13022986011939484340

/-! ## A163355.P6378673618604804709

`A163915(A163906(n))`
-/

namespace A163355.P6378673618604804709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163915 (A163906 n).toNat

end

end A163355.P6378673618604804709

/-! ## A163355.P15916649474740159333

`A163917(A163908(n))`
-/

namespace A163355.P15916649474740159333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163917 (A163908 n).toNat

end

end A163355.P15916649474740159333

/-! ## A163355.P226824890222742829

`A302845(A064706(n))`
-/

namespace A163355.P226824890222742829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (A064706 n).toNat

end

end A163355.P226824890222742829

/-! ## A163355.P4105385306124921358

`A302843(A286548(n)+n)`
-/

namespace A163355.P4105385306124921358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302843 (A286548 n + (n : ℤ)).toNat

end

end A163355.P4105385306124921358

/-! ## A163355.P2296480930954834421

`A163357(A163908(A163905(n)))`
-/

namespace A163355.P2296480930954834421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163908 (A163905 n).toNat).toNat

end

end A163355.P2296480930954834421

/-! ## A163355.P16490527335884873210

`A163357(A163918(A163915(n)))`
-/

namespace A163355.P16490527335884873210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163918 (A163915 n).toNat).toNat

end

end A163355.P16490527335884873210

/-! ## A163355.P3448129510179856284

`A163905(A163905(A163916(n)))`
-/

namespace A163355.P3448129510179856284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163905 (A163905 (A163916 n).toNat).toNat

end

end A163355.P3448129510179856284

/-! ## A163355.P11786463229461626657

`A302843(A302846(A302843(n)))`
-/

namespace A163355.P11786463229461626657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302843 (A302846 (A302843 n).toNat).toNat

end

end A163355.P11786463229461626657

/-! ## A163355.P3981920113618704343

`A302845(A003188(A003188(A003188(A006068(n)))))`
-/

namespace A163355.P3981920113618704343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (A003188 (A003188 (A003188 (A006068 n).toNat).toNat).toNat).toNat

end

end A163355.P3981920113618704343

/-! ## A163355.P3314430351872383481

`A302845(A057300(A003188(A003188(A057300(n)))))`
-/

namespace A163355.P3314430351872383481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (A057300 (A003188 (A003188 (A057300 n).toNat).toNat).toNat).toNat

end

end A163355.P3314430351872383481

/-! ## A163355.P2134816954919764769

`A302845(A003188(A003188(A302846(A302845(n)))))`
-/

namespace A163355.P2134816954919764769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (A003188 (A003188 (A302846 (A302845 n).toNat).toNat).toNat).toNat

end

end A163355.P2134816954919764769

/-! ## A163355.P655879863706699780

`A163356(A163907(A054239(A163908(A163907(n)))))`
-/

namespace A163355.P655879863706699780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A163907 (A054239 (A163908 (A163907 n).toNat).toNat).toNat).toNat

end

end A163355.P655879863706699780

/-! ## A163355.P12620028297756556070

`A163356(A163907(A054239(A163918(A163917(n)))))`
-/

namespace A163355.P12620028297756556070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A163907 (A054239 (A163918 (A163917 n).toNat).toNat).toNat).toNat

end

end A163355.P12620028297756556070

/-! ## A163355.P791742128447432433

`A163357(A163546(A163485(n)))`
-/

namespace A163355.P791742128447432433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163546 (A163485 n).toNat).toNat

end

end A163355.P791742128447432433

/-!
# A163356: Inverse permutation to A163355, related to Hilbert's curve in N x N grid.

The programs for A163356, there is no canonical definition to state claims against.
-/

/-! ## A163356.P553239804430791795

`A000695(A059253(n))+2*A000695(A059252(n))`
-/

namespace A163356.P553239804430791795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A059253 n).toNat + 2 * A000695 (A059252 n).toNat

end

end A163356.P553239804430791795

/-! ## A163356.P484656000300884789

`A163906(A163355(n))`
-/

namespace A163356.P484656000300884789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163906 (A163355 n).toNat

end

end A163356.P484656000300884789

/-! ## A163356.P17022299223254815571

`A163357(A163908(n))`
-/

namespace A163356.P17022299223254815571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163908 n).toNat

end

end A163356.P17022299223254815571

/-! ## A163356.P3619912556061119518

`A163916(A163905(n))`
-/

namespace A163356.P3619912556061119518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163916 (A163905 n).toNat

end

end A163356.P3619912556061119518

/-! ## A163356.P7399637747148085936

`A163907(A163918(n))`
-/

namespace A163356.P7399637747148085936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163907 (A163918 n).toNat

end

end A163356.P7399637747148085936

/-! ## A163356.P5459352664599329199

`A163906(A163357(A054239(n)))`
-/

namespace A163356.P5459352664599329199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163906 (A163357 (A054239 n).toNat).toNat

end

end A163356.P5459352664599329199

/-! ## A163356.P143411866169645236

`A163355(A163355(A163916(n)))`
-/

namespace A163356.P143411866169645236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A163355 (A163916 n).toNat).toNat

end

end A163356.P143411866169645236

/-! ## A163356.P8728054238038462882

`A163906(A163907(A163358(n)))`
-/

namespace A163356.P8728054238038462882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163906 (A163907 (A163358 n).toNat).toNat

end

end A163356.P8728054238038462882

/-! ## A163356.P15123705302261190608

`A163915(A163906(A163906(n)))`
-/

namespace A163356.P15123705302261190608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163915 (A163906 (A163906 n).toNat).toNat

end

end A163356.P15123705302261190608

/-! ## A163356.P636657345348180014

`A302844(A302845(A302844(n)))`
-/

namespace A163356.P636657345348180014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302844 (A302845 (A302844 n).toNat).toNat

end

end A163356.P636657345348180014

/-! ## A163356.P6644348851527816293

`A163357(A163918(A163357(A163918(A163915(n)))))`
-/

namespace A163356.P6644348851527816293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163918 (A163357 (A163918 (A163915 n).toNat).toNat).toNat).toNat

end

end A163356.P6644348851527816293

/-! ## A163356.P302335201786518989

`A163916(A163917(A163358(A163908(A163907(n)))))`
-/

namespace A163356.P302335201786518989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163916 (A163917 (A163358 (A163908 (A163907 n).toNat).toNat).toNat).toNat

end

end A163356.P302335201786518989

/-! ## A163356.P13617821605084253005

`A006068(A302844(n))`
-/

namespace A163356.P13617821605084253005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A302844 n).toNat

end

end A163356.P13617821605084253005

/-! ## A163356.P15256531574714812330

`A064707(A302846(n))`
-/

namespace A163356.P15256531574714812330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064707 (A302846 n).toNat

end

end A163356.P15256531574714812330

/-! ## A163356.P10653347407179612620

`A006068(A006068(A302846(A006068(A003188(n)))))`
-/

namespace A163356.P10653347407179612620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A006068 (A302846 (A006068 (A003188 n).toNat).toNat).toNat).toNat

end

end A163356.P10653347407179612620

/-! ## A163356.P15525753389149284063

`A006068(A006068(A302846(A302846(A302845(n)))))`
-/

namespace A163356.P15525753389149284063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A006068 (A302846 (A302846 (A302845 n).toNat).toNat).toNat).toNat

end

end A163356.P15525753389149284063

/-! ## A163356.P15443392114821493178

`A054238(A163358(n))`
-/

namespace A163356.P15443392114821493178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (A163358 n).toNat

end

end A163356.P15443392114821493178

/-! ## A163356.P3864553352197636369

`A346453(A163360(n))`
-/

namespace A163356.P3864553352197636369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346453 (A163360 n).toNat

end

end A163356.P3864553352197636369

/-! ## A163356.P6867385831827220254

`A054238(A163362(n+1)-1)`
-/

namespace A163356.P6867385831827220254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (A163362 (n + 1) - 1).toNat

end

end A163356.P6867385831827220254

/-! ## A163356.P14623851150488063613

`A054238(A163918(A163905(A163918(A163917(n)))))`
-/

namespace A163356.P14623851150488063613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054238 (A163918 (A163905 (A163918 (A163917 n).toNat).toNat).toNat).toNat

end

end A163356.P14623851150488063613

/-!
# A163357: Hilbert curve in N X N grid, starting rightwards from the top-left corner, listed by descending antidiagonals.

The programs for A163357, there is no canonical definition to state claims against.
-/

/-! ## A163357.P1250986005090344921

`A163355(A054238(n))`
-/

namespace A163357.P1250986005090344921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A054238 n).toNat

end

end A163357.P1250986005090344921

/-! ## A163357.P5023178649096270964

`A163361(n+1)-1`
-/

namespace A163357.P5023178649096270964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163361 (n + 1) - 1

end

end A163357.P5023178649096270964

/-! ## A163357.P16216731395192416775

`A163359(A061579(n))`
-/

namespace A163357.P16216731395192416775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163359 (A061579 n).toNat

end

end A163357.P16216731395192416775

/-! ## A163357.P18390516021040119297

`A163356(A163907(n))`
-/

namespace A163357.P18390516021040119297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A163907 n).toNat

end

end A163357.P18390516021040119297

/-! ## A163357.P2105177143751864875

`A166041(A163334(n))`
-/

namespace A163357.P2105177143751864875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166041 (A163334 n).toNat

end

end A163357.P2105177143751864875

/-! ## A163357.P16193326035476833199

`A163359(A038722(n+1)-1)`
-/

namespace A163357.P16193326035476833199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163359 (A038722 (n + 1) - 1).toNat

end

end A163357.P16193326035476833199

/-! ## A163357.P2139450777010745117

`A163363(A061579(n)+1)-1`
-/

namespace A163357.P2139450777010745117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163363 (A061579 n + 1).toNat - 1

end

end A163357.P2139450777010745117

/-! ## A163357.P4428423965843752947

`A163359(A163358(A163359(n)))`
-/

namespace A163357.P4428423965843752947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163359 (A163358 (A163359 n).toNat).toNat

end

end A163357.P4428423965843752947

/-! ## A163357.P5953011454810620275

`A163356(A163356(A163917(n)))`
-/

namespace A163357.P5953011454810620275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A163356 (A163917 n).toNat).toNat

end

end A163357.P5953011454810620275

/-! ## A163357.P8714983512902204243

`A163906(A163917(n))`
-/

namespace A163357.P8714983512902204243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163906 (A163917 n).toNat

end

end A163357.P8714983512902204243

/-! ## A163357.P5601697174367224893

`A163916(A163355(A163917(2*n-n)))`
-/

namespace A163357.P5601697174367224893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163916 (A163355 (A163917 (2 * n - n)).toNat).toNat

end

end A163357.P5601697174367224893

/-! ## A163357.P18285857087907695819

`A163907(A163918(A163907(2*n-n)))`
-/

namespace A163357.P18285857087907695819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163907 (A163918 (A163907 (2 * n - n)).toNat).toNat

end

end A163357.P18285857087907695819

/-! ## A163357.P2060745583469166326

`A163355(A057300(A163486(A147995(n))))`
-/

namespace A163357.P2060745583469166326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A057300 (A163486 (A147995 n).toNat).toNat).toNat

end

end A163357.P2060745583469166326

/-! ## A163357.P12199623206626095250

`A163917(A163908(A054238(A163907(A163908(n)))))`
-/

namespace A163357.P12199623206626095250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163917 (A163908 (A054238 (A163907 (A163908 n).toNat).toNat).toNat).toNat

end

end A163357.P12199623206626095250

/-! ## A163357.P956371335359672599

`A163917(A163908(A054238(A163917(A163918(n)))))`
-/

namespace A163357.P956371335359672599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163917 (A163908 (A054238 (A163917 (A163918 n).toNat).toNat).toNat).toNat

end

end A163357.P956371335359672599

/-! ## A163357.P13997216197283913574

`A163906(A163355(A163907(A163906(A163905(n)))))`
-/

namespace A163357.P13997216197283913574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163906 (A163355 (A163907 (A163906 (A163905 n).toNat).toNat).toNat).toNat

end

end A163357.P13997216197283913574

/-! ## A163357.P6318700574133699239

`A166043(A163336(n))`
-/

namespace A163357.P6318700574133699239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A163336 n).toNat

end

end A163357.P6318700574133699239

/-! ## A163357.P16545022993400289581

`A166041(A163338(n+1)-1)`
-/

namespace A163357.P16545022993400289581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166041 (A163338 (n + 1) - 1).toNat

end

end A163357.P16545022993400289581

/-! ## A163357.P16464166975122590557

`A166043(A163340(n+1)-1)`
-/

namespace A163357.P16464166975122590557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A163340 (n + 1) - 1).toNat

end

end A163357.P16464166975122590557

/-! ## A163357.P3024014778828543357

`A163359(A163337(A163332(A163328(n))))`
-/

namespace A163357.P3024014778828543357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163359 (A163337 (A163332 (A163328 n).toNat).toNat).toNat

end

end A163357.P3024014778828543357

/-!
# A163358: Inverse permutation to A163357.

The programs for A163358, there is no canonical definition to state claims against.
-/

/-! ## A163358.P17236210813690720255

`A163362(n+1)-1`
-/

namespace A163358.P17236210813690720255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163362 (n + 1) - 1

end

end A163358.P17236210813690720255

/-! ## A163358.P4159274955852669048

`A163908(A163355(n))`
-/

namespace A163358.P4159274955852669048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A163355 n).toNat

end

end A163358.P4159274955852669048

/-! ## A163358.P3991460642422895872

`A163918(A163905(n))`
-/

namespace A163358.P3991460642422895872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163918 (A163905 n).toNat

end

end A163358.P3991460642422895872

/-! ## A163358.P8390897890055653503

`A163335(A166042(n))`
-/

namespace A163358.P8390897890055653503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 (A166042 n).toNat

end

end A163358.P8390897890055653503

/-! ## A163358.P12441883691575202201

`A163360(n)-A059285(n)`
-/

namespace A163358.P12441883691575202201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163360 n - A059285 n

end

end A163358.P12441883691575202201

/-! ## A163358.P6433425650800705601

`A163364(n+1)-(A059285(n)+1)`
-/

namespace A163358.P6433425650800705601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163364 (n + 1) - (A059285 n + 1)

end

end A163358.P6433425650800705601

/-! ## A163358.P9958543079112520450

`A163908(A163357(A054239(n)))`
-/

namespace A163358.P9958543079112520450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A163357 (A054239 n).toNat).toNat

end

end A163358.P9958543079112520450

/-! ## A163358.P8483164920441122170

`A163360(A163357(A163360(n)))`
-/

namespace A163358.P8483164920441122170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163360 (A163357 (A163360 n).toNat).toNat

end

end A163358.P8483164920441122170

/-! ## A163358.P1358680532158705540

`A163908(A163905(A163356(n)))`
-/

namespace A163358.P1358680532158705540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A163905 (A163356 n).toNat).toNat

end

end A163358.P1358680532158705540

/-! ## A163358.P8256930430272064518

`A163918(A163356(A163915(n)))`
-/

namespace A163358.P8256930430272064518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163918 (A163356 (A163915 n).toNat).toNat

end

end A163358.P8256930430272064518

/-! ## A163358.P7204244299197612391

`A163908(A163915(A163906(n)))`
-/

namespace A163358.P7204244299197612391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A163915 (A163906 n).toNat).toNat

end

end A163358.P7204244299197612391

/-! ## A163358.P830493068124369968

`A163908(A163917(A163908(n)))`
-/

namespace A163358.P830493068124369968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A163917 (A163908 n).toNat).toNat

end

end A163358.P830493068124369968

/-! ## A163358.P11458313809091133451

`A163918(A163355(A163355(2*n-n)))`
-/

namespace A163358.P11458313809091133451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163918 (A163355 (A163355 (2 * n - n)).toNat).toNat

end

end A163358.P11458313809091133451

/-! ## A163358.P15657459985741749185

`A059252(n)+A163360(n)-A059253(n)`
-/

namespace A163358.P15657459985741749185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n + (A163360 n - A059253 n)

end

end A163358.P15657459985741749185

/-! ## A163358.P13372954517272714205

`A163908(A163915(A163357(A163918(n))))`
-/

namespace A163358.P13372954517272714205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A163915 (A163357 (A163918 n).toNat).toNat).toNat

end

end A163358.P13372954517272714205

/-! ## A163358.P110899558456484145

`A163908(A163905(A163905(A163916(n))))`
-/

namespace A163358.P110899558456484145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A163905 (A163905 (A163916 n).toNat).toNat).toNat

end

end A163358.P110899558456484145

/-! ## A163358.P3527277829164435986

`A163908(A302843(A302846(A302843(n))))`
-/

namespace A163358.P3527277829164435986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A302843 (A302846 (A302843 n).toNat).toNat).toNat

end

end A163358.P3527277829164435986

/-! ## A163358.P3654565952304572668

`A054239(A163356(n))`
-/

namespace A163358.P3654565952304572668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A163356 n).toNat

end

end A163358.P3654565952304572668

/-! ## A163358.P17171840890177669997

`A054239(A163907(A163918(n)))`
-/

namespace A163358.P17171840890177669997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A163907 (A163918 n).toNat).toNat

end

end A163358.P17171840890177669997

/-! ## A163358.P5768463791744423972

`A038722(A163364(n+1))-1`
-/

namespace A163358.P5768463791744423972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A163364 (n + 1)).toNat - 1

end

end A163358.P5768463791744423972

/-!
# A163359: Hilbert curve in N x N grid, starting downwards from the top-left corner, listed by descending antidiagonals.

The programs for A163359, there is no canonical definition to state claims against.
-/

/-! ## A163359.P8185523972180605443

`A163363(n+1)-1`
-/

namespace A163359.P8185523972180605443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163363 (n + 1) - 1

end

end A163359.P8185523972180605443

/-! ## A163359.P16836239868869954108

`A163357(∑[2*n]%comp[∑[n]])`
-/

namespace A163359.P16836239868869954108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A163359.P16836239868869954108

/-! ## A163359.P67045081841645634

`A163357(∑[char[∑[n]]]²-n-1)`
-/

namespace A163359.P67045081841645634
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A163359.P67045081841645634

/-! ## A163359.P13572640637540783223

`A163361(∑[char[∑[n]]]²-n)-1`
-/

namespace A163359.P13572640637540783223
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163361 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) - 1

end

end A163359.P13572640637540783223

/-! ## A163359.P4914637499379603482

`A166043(A163334(n))`
-/

namespace A163359.P4914637499379603482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A163334 n).toNat

end

end A163359.P4914637499379603482

/-! ## A163359.P6694107594691068906

`A163355(A346453(n))`
-/

namespace A163359.P6694107594691068906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A346453 n).toNat

end

end A163359.P6694107594691068906

/-! ## A163359.P5684746892556742829

`A163355(A057300(A054238(n)))`
-/

namespace A163359.P5684746892556742829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A057300 (A054238 n).toNat).toNat

end

end A163359.P5684746892556742829

/-! ## A163359.P17171467799660528193

`A163355(A163486(A147995(n)))`
-/

namespace A163359.P17171467799660528193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A163486 (A147995 n).toNat).toNat

end

end A163359.P17171467799660528193

/-! ## A163359.P15825271572984060568

`A166043(A166042(A163357(n)))`
-/

namespace A163359.P15825271572984060568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A166042 (A163357 n).toNat).toNat

end

end A163359.P15825271572984060568

/-! ## A163359.P5552205488120005881

`A166041(A166044(A163357(A166041(A166042(n)))))`
-/

namespace A163359.P5552205488120005881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166041 (A166044 (A163357 (A166041 (A166042 n).toNat).toNat).toNat).toNat

end

end A163359.P5552205488120005881

/-! ## A163359.P1187359874466478897

`A166041(A166044(A163357(A166043(A166044(n)))))`
-/

namespace A163359.P1187359874466478897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166041 (A166044 (A163357 (A166043 (A166044 n).toNat).toNat).toNat).toNat

end

end A163359.P1187359874466478897

/-! ## A163359.P11218830937376240762

`A166041(A163336(n))`
-/

namespace A163359.P11218830937376240762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166041 (A163336 n).toNat

end

end A163359.P11218830937376240762

/-! ## A163359.P6934325923203337641

`A166043(A163338(n+1)-1)`
-/

namespace A163359.P6934325923203337641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A163338 (n + 1) - 1).toNat

end

end A163359.P6934325923203337641

/-! ## A163359.P6506188218569231151

`A166041(A163340(n+1)-1)`
-/

namespace A163359.P6506188218569231151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166041 (A163340 (n + 1) - 1).toNat

end

end A163359.P6506188218569231151

/-! ## A163359.P8856408034541254728

`A166043(A163336(A061579(n)))`
-/

namespace A163359.P8856408034541254728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A163336 (A061579 n).toNat).toNat

end

end A163359.P8856408034541254728

/-! ## A163359.P9766021773402408391

`A166043(A163332(A163328(n)))`
-/

namespace A163359.P9766021773402408391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A163332 (A163328 n).toNat).toNat

end

end A163359.P9766021773402408391

/-! ## A163359.P2483167205649325665

`A302845(A163235(n))`
-/

namespace A163359.P2483167205649325665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (A163235 n).toNat

end

end A163359.P2483167205649325665

/-! ## A163359.P4138860080346879986

`A342217(A163357(n))`
-/

namespace A163359.P4138860080346879986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342217 (A163357 n).toNat

end

end A163359.P4138860080346879986

/-! ## A163359.P3509953336284383319

`A023443(A163363(n+1))`
-/

namespace A163359.P3509953336284383319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A163363 (n + 1)).toNat

end

end A163359.P3509953336284383319

/-! ## A163359.P10755332484072582278

`A163355(A057300(A163486(A163545(n))))`
-/

namespace A163359.P10755332484072582278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A057300 (A163486 (A163545 n).toNat).toNat).toNat

end

end A163359.P10755332484072582278

/-!
# A163360: Inverse permutation to A163359.

The programs for A163360, there is no canonical definition to state claims against.
-/

/-! ## A163360.P16475213315473617829

`A163364(n+1)-1`
-/

namespace A163360.P16475213315473617829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163364 (n + 1) - 1

end

end A163360.P16475213315473617829

/-! ## A163360.P4231357766824494531

`A163335(A166044(n))`
-/

namespace A163360.P4231357766824494531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 (A166044 n).toNat

end

end A163360.P4231357766824494531

/-! ## A163360.P11685223422733557033

`A163358(n)+A059285(n)`
-/

namespace A163360.P11685223422733557033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 n + A059285 n

end

end A163360.P11685223422733557033

/-! ## A163360.P3670884766103890464

`A163362(n+1)+A059285(n)-1`
-/

namespace A163360.P3670884766103890464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163362 (n + 1) + (A059285 n - 1)

end

end A163360.P3670884766103890464

/-! ## A163360.P12579754805316156003

`A163358(A163359(A163358(n)))`
-/

namespace A163360.P12579754805316156003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A163359 (A163358 n).toNat).toNat

end

end A163360.P12579754805316156003

/-! ## A163360.P5347591302857670196

`A163358(A166043(A166042(n)))`
-/

namespace A163360.P5347591302857670196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A166043 (A166042 n).toNat).toNat

end

end A163360.P5347591302857670196

/-! ## A163360.P11272680593534758693

`A059253(n)+A163358(n)-A059252(n)`
-/

namespace A163360.P11272680593534758693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n + (A163358 n - A059252 n)

end

end A163360.P11272680593534758693

/-! ## A163360.P14767610392879372351

`A163358(A166041(A166044(A166042(A166041(n)))))`
-/

namespace A163360.P14767610392879372351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A166041 (A166044 (A166042 (A166041 n).toNat).toNat).toNat).toNat

end

end A163360.P14767610392879372351

/-! ## A163360.P11518198335909553961

`A038722(A163362(n+1))-1`
-/

namespace A163360.P11518198335909553961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A163362 (n + 1)).toNat - 1

end

end A163360.P11518198335909553961

/-! ## A163360.P12545771765269428481

`A061579(A163358(n))`
-/

namespace A163360.P12545771765269428481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163358 n).toNat

end

end A163360.P12545771765269428481

/-! ## A163360.P9737262834508823357

`A023443(A163364(n+1))`
-/

namespace A163360.P9737262834508823357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A163364 (n + 1)).toNat

end

end A163360.P9737262834508823357

/-! ## A163360.P10389120814242848348

`A163337(A166042(n))`
-/

namespace A163360.P10389120814242848348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163337 (A166042 n).toNat

end

end A163360.P10389120814242848348

/-! ## A163360.P2329667187594241097

`A163337(A163334(A054239(A163356(n))))`
-/

namespace A163360.P2329667187594241097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163337 (A163334 (A054239 (A163356 n).toNat).toNat).toNat

end

end A163360.P2329667187594241097

/-! ## A163360.P10288841820988153314

`A163337(A163334(A163358(A163335(A163334(n)))))`
-/

namespace A163360.P10288841820988153314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163337 (A163334 (A163358 (A163335 (A163334 n).toNat).toNat).toNat).toNat

end

end A163360.P10288841820988153314

/-! ## A163360.P14287585369553672895

`A163236(A302846(n))`
-/

namespace A163360.P14287585369553672895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163236 (A302846 n).toNat

end

end A163360.P14287585369553672895

/-! ## A163360.P8848039758182661607

`A163358(A342217(n))`
-/

namespace A163360.P8848039758182661607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A342217 n).toNat

end

end A163360.P8848039758182661607

/-! ## A163360.P9596466168122718854

`A163335(A163336(A163358(A163332(A163332(n)))))`
-/

namespace A163360.P9596466168122718854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 (A163336 (A163358 (A163332 (A163332 n).toNat).toNat).toNat).toNat

end

end A163360.P9596466168122718854

/-! ## A163360.P15379647745267553051

`A163335(A163336(A163358(A163337(A163336(n)))))`
-/

namespace A163360.P15379647745267553051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 (A163336 (A163358 (A163337 (A163336 n).toNat).toNat).toNat).toNat

end

end A163360.P15379647745267553051

/-!
# A163361: Hilbert curve in N x N grid, one-based, starting rightwards from the top-left corner.

The programs for A163361, there is no canonical definition to state claims against.
-/

/-! ## A163361.P1803196193509828016

`A163357(n)+1`
-/

namespace A163361.P1803196193509828016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 n + 1

end

end A163361.P1803196193509828016

/-! ## A163361.P5092779940865753082

`A163363(A038722(n+1))`
-/

namespace A163361.P5092779940865753082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163363 (A038722 (n + 1)).toNat

end

end A163361.P5092779940865753082

/-! ## A163361.P6189058226557102197

`A163355(A054238(n))+1`
-/

namespace A163361.P6189058226557102197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A054238 n).toNat + 1

end

end A163361.P6189058226557102197

/-! ## A163361.P17483780247370072198

`A163363(A061579(n)+1)`
-/

namespace A163361.P17483780247370072198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163363 (A061579 n + 1).toNat

end

end A163361.P17483780247370072198

/-! ## A163361.P10489694887110928055

`A163356(A163907(n))+1`
-/

namespace A163361.P10489694887110928055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A163907 n).toNat + 1

end

end A163361.P10489694887110928055

/-! ## A163361.P1063270173470214549

`A166041(A163334(n))+1`
-/

namespace A163361.P1063270173470214549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166041 (A163334 n).toNat + 1

end

end A163361.P1063270173470214549

/-! ## A163361.P4450189829453094987

`A163363(A163362(A163363(n+1)))`
-/

namespace A163361.P4450189829453094987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163363 (A163362 (A163363 (n + 1)).toNat).toNat

end

end A163361.P4450189829453094987

/-! ## A163361.P6665520650356937269

`A163906(A163917(n))+1`
-/

namespace A163361.P6665520650356937269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163906 (A163917 n).toNat + 1

end

end A163361.P6665520650356937269

/-! ## A163361.P10250717803172109190

`A166043(A163336(n))+1`
-/

namespace A163361.P10250717803172109190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A163336 n).toNat + 1

end

end A163361.P10250717803172109190

/-! ## A163361.P6275666512829174006

`A166041(A163338(n+1)-1)+1`
-/

namespace A163361.P6275666512829174006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166041 (A163338 (n + 1) - 1).toNat + 1

end

end A163361.P6275666512829174006

/-! ## A163361.P11834443908070225027

`A166043(A163340(n+1)-1)+1`
-/

namespace A163361.P11834443908070225027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A163340 (n + 1) - 1).toNat + 1

end

end A163361.P11834443908070225027

/-! ## A163361.P10595016386922075028

`A302845(A163233(n))+1`
-/

namespace A163361.P10595016386922075028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (A163233 n).toNat + 1

end

end A163361.P10595016386922075028

/-! ## A163361.P13591483665718380056

`A342217(A163359(n))+1`
-/

namespace A163361.P13591483665718380056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342217 (A163359 n).toNat + 1

end

end A163361.P13591483665718380056

/-!
# A163362: Inverse permutation to A163361.

The programs for A163362, there is no canonical definition to state claims against.
-/

/-! ## A163362.P16648292006935158960

`A163358(n)+1`
-/

namespace A163362.P16648292006935158960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 n + 1

end

end A163362.P16648292006935158960

/-! ## A163362.P4654665217179930041

`A163908(A163355(n))+1`
-/

namespace A163362.P4654665217179930041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163908 (A163355 n).toNat + 1

end

end A163362.P4654665217179930041

/-! ## A163362.P14281353022837708321

`A163918(A163905(n))+1`
-/

namespace A163362.P14281353022837708321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163918 (A163905 n).toNat + 1

end

end A163362.P14281353022837708321

/-! ## A163362.P5742692852755295929

`A163335(A166042(n))+1`
-/

namespace A163362.P5742692852755295929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 (A166042 n).toNat + 1

end

end A163362.P5742692852755295929

/-! ## A163362.P13373245805230304449

`A163364(n+1)-A059285(n)`
-/

namespace A163362.P13373245805230304449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163364 (n + 1) - A059285 n

end

end A163362.P13373245805230304449

/-! ## A163362.P14254046660865057551

`A163360(n)+1-A059285(n)`
-/

namespace A163362.P14254046660865057551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163360 n + (1 - A059285 n)

end

end A163362.P14254046660865057551

/-! ## A163362.P17884537275833425336

`A163360(A163357(A163360(n)))+1`
-/

namespace A163362.P17884537275833425336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163360 (A163357 (A163360 n).toNat).toNat + 1

end

end A163362.P17884537275833425336

/-! ## A163362.P4939449348284556858

`A163364(A163361(A163364(n+1)))`
-/

namespace A163362.P4939449348284556858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163364 (A163361 (A163364 (n + 1)).toNat).toNat

end

end A163362.P4939449348284556858

/-! ## A163362.P1171588463396100964

`A163364(n+1)+A059252(n)-A059253(n)`
-/

namespace A163362.P1171588463396100964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163364 (n + 1) + (A059252 n - A059253 n)

end

end A163362.P1171588463396100964

/-! ## A163362.P1256106236841269514

`A054239(A163356(n))+1`
-/

namespace A163362.P1256106236841269514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A163356 n).toNat + 1

end

end A163362.P1256106236841269514

/-! ## A163362.P9788414840153274571

`A038722(A163364(n+1))`
-/

namespace A163362.P9788414840153274571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A163364 (n + 1)).toNat

end

end A163362.P9788414840153274571

/-! ## A163362.P482528544698155681

`A061579(A163360(n))+1`
-/

namespace A163362.P482528544698155681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163360 n).toNat + 1

end

end A163362.P482528544698155681

/-! ## A163362.P4212294671355345075

`A061579(A163364(n+1)-1)+1`
-/

namespace A163362.P4212294671355345075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163364 (n + 1) - 1).toNat + 1

end

end A163362.P4212294671355345075

/-! ## A163362.P14032245762444975046

`A163341(A166044(n)+1)`
-/

namespace A163362.P14032245762444975046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163341 (A166044 n + 1).toNat

end

end A163362.P14032245762444975046

/-! ## A163362.P13592737424783683672

`A163234(A302846(n))+1`
-/

namespace A163362.P13592737424783683672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163234 (A302846 n).toNat + 1

end

end A163362.P13592737424783683672

/-! ## A163362.P18173454690288270592

`A163360(A342217(n))+1`
-/

namespace A163362.P18173454690288270592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163360 (A342217 n).toNat + 1

end

end A163362.P18173454690288270592

/-!
# A163363: Hilbert curve in N X N grid, one-based, starting downwards from the top-left corner.

The programs for A163363, there is no canonical definition to state claims against.
-/

/-! ## A163363.P4870940937030285758

`A163359(n)+1`
-/

namespace A163363.P4870940937030285758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163359 n + 1

end

end A163363.P4870940937030285758

/-! ## A163363.P11733749428755317914

`A163361(∑[char[∑[n]]]²-n)`
-/

namespace A163363.P11733749428755317914
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163361 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A163363.P11733749428755317914

/-! ## A163363.P5927706378104046695

`A163357(∑[2*n]%comp[∑[n]])+1`
-/

namespace A163363.P5927706378104046695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) + 1

end

end A163363.P5927706378104046695

/-! ## A163363.P3495877184065578346

`A163357(A061579(n))+1`
-/

namespace A163363.P3495877184065578346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A061579 n).toNat + 1

end

end A163363.P3495877184065578346

/-! ## A163363.P6971498381369320186

`A166043(A163334(n))+1`
-/

namespace A163363.P6971498381369320186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A163334 n).toNat + 1

end

end A163363.P6971498381369320186

/-! ## A163363.P3373766297202605789

`A163355(A346453(n))+1`
-/

namespace A163363.P3373766297202605789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A346453 n).toNat + 1

end

end A163363.P3373766297202605789

/-! ## A163363.P6479107789792893495

`A163361((n²+1+n)%comp[∑[n]])%A046332(n+1)`
-/

namespace A163363.P6479107789792893495
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163361 ((n ^ 2 + 1 + n) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A046332 (n + 1))

end

end A163363.P6479107789792893495

/-! ## A163363.P7000024696019507657

`A163357(A163360(A163357(n)))+1`
-/

namespace A163363.P7000024696019507657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163357 (A163360 (A163357 n).toNat).toNat + 1

end

end A163363.P7000024696019507657

/-! ## A163363.P7197179014707931678

`A166041(A163336(n))+1`
-/

namespace A163363.P7197179014707931678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166041 (A163336 n).toNat + 1

end

end A163363.P7197179014707931678

/-! ## A163363.P12049930261672428988

`A166043(A163338(n+1)-1)+1`
-/

namespace A163363.P12049930261672428988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166043 (A163338 (n + 1) - 1).toNat + 1

end

end A163363.P12049930261672428988

/-! ## A163363.P6334029448841710785

`A166041(A163340(n+1)-1)+1`
-/

namespace A163363.P6334029448841710785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166041 (A163340 (n + 1) - 1).toNat + 1

end

end A163363.P6334029448841710785

/-! ## A163363.P4536348894941244126

`A302845(A163235(n))+1`
-/

namespace A163363.P4536348894941244126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (A163235 n).toNat + 1

end

end A163363.P4536348894941244126

/-! ## A163363.P6442749297578506331

`A342217(A163357(n))+1`
-/

namespace A163363.P6442749297578506331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342217 (A163357 n).toNat + 1

end

end A163363.P6442749297578506331

/-!
# A163364: Inverse permutation to A163363.

The programs for A163364, there is no canonical definition to state claims against.
-/

/-! ## A163364.P8287976338067203698

`A163360(n)+1`
-/

namespace A163364.P8287976338067203698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163360 n + 1

end

end A163364.P8287976338067203698

/-! ## A163364.P17051025236566936208

`A163335(A166044(n))+1`
-/

namespace A163364.P17051025236566936208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 (A166044 n).toNat + 1

end

end A163364.P17051025236566936208

/-! ## A163364.P9570314510299263240

`A163362(n+1)+A059285(n)`
-/

namespace A163364.P9570314510299263240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163362 (n + 1) + A059285 n

end

end A163364.P9570314510299263240

/-! ## A163364.P1408453368500701727

`A059285(n)+A163358(n)+1`
-/

namespace A163364.P1408453368500701727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059285 n + (A163358 n + 1)

end

end A163364.P1408453368500701727

/-! ## A163364.P13868824253458566069

`A163358(A163359(A163358(n)))+1`
-/

namespace A163364.P13868824253458566069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A163359 (A163358 n).toNat).toNat + 1

end

end A163364.P13868824253458566069

/-! ## A163364.P14612760644672433364

`A163362(A163363(A163362(n+1)))`
-/

namespace A163364.P14612760644672433364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163362 (A163363 (A163362 (n + 1)).toNat).toNat

end

end A163364.P14612760644672433364

/-! ## A163364.P3465148715668983812

`A163362(n+1)+A059253(n)-A059252(n)`
-/

namespace A163364.P3465148715668983812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163362 (n + 1) + (A059253 n - A059252 n)

end

end A163364.P3465148715668983812

/-! ## A163364.P9552403357125803722

`A038722(A163362(n+1))`
-/

namespace A163364.P9552403357125803722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A163362 (n + 1)).toNat

end

end A163364.P9552403357125803722

/-! ## A163364.P6661946203574767274

`A061579(A163358(n))+1`
-/

namespace A163364.P6661946203574767274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163358 n).toNat + 1

end

end A163364.P6661946203574767274

/-! ## A163364.P5334874871288216905

`A163337(A166042(n))+1`
-/

namespace A163364.P5334874871288216905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163337 (A166042 n).toNat + 1

end

end A163364.P5334874871288216905

/-! ## A163364.P13096483411217216851

`A163339(A166044(n)+1)`
-/

namespace A163364.P13096483411217216851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163339 (A166044 n + 1).toNat

end

end A163364.P13096483411217216851

/-! ## A163364.P9122449246288371388

`A163236(A302846(n))+1`
-/

namespace A163364.P9122449246288371388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163236 (A302846 n).toNat + 1

end

end A163364.P9122449246288371388

/-! ## A163364.P14160499767027091696

`A163358(A342217(n))+1`
-/

namespace A163364.P14160499767027091696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163358 (A342217 n).toNat + 1

end

end A163364.P14160499767027091696

/-!
# A163365: Row sums of A163357 and A163359.

The programs for A163365, there is no canonical definition to state claims against.
-/

/-! ## A163365.P2363394635226527193

`4*A163477(n)`
-/

namespace A163365.P2363394635226527193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A163477 n

end

end A163365.P2363394635226527193

/-! ## A163365.P7987809847033414028

`∑[2*(A163233(∑[n])+∑[n])]`
-/

namespace A163365.P7987809847033414028
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A163233 (∑ j ∈ Finset.range (n + 1), f2 j) + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163365.P7987809847033414028

/-! ## A163365.P16195066458680000402

`∑[A163235(∑[n])+∑[2*n]]`
-/

namespace A163365.P16195066458680000402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163235 (∑ j ∈ Finset.range (n + 1), f2 j) + ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163365.P16195066458680000402

/-! ## A163365.P5851127596346483094

`2*(A163478(n)+A000292(n))`
-/

namespace A163365.P5851127596346483094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A163478 n + A000292 n)

end

end A163365.P5851127596346483094

/-! ## A163365.P17673990093979073214

`A163477(n)/(A033999(n)/2)²`
-/

namespace A163365.P17673990093979073214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163477 n : ℚ) / ((A033999 n : ℚ) / 2) ^ 2

end

end A163365.P17673990093979073214

/-!
# A163366: a(n) = (-1)^floor((prime(n)+2)/2) mod prime(n).

The programs for A163366, the canonical program `A163366.P615774482122360828` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163366 has offset 1).

The definition of A163366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163366.P615774482122360828

`A260611(n+1)²%A000040(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A163366

/-- `A260611(n+1)²%A000040(n+1)` -/
def P615774482122360828.Spec : Prop :=
  ∀ n, P615774482122360828.a n = A163366 (n + 1)

theorem P615774482122360828.correct : P615774482122360828.Spec := by
  intro n
  simp only [A163366, Nat.add_sub_cancel]

end A163366

/-! ## A163366.P3798059872179590537

`gcd(A006093(n+1), A008683(A058384(n+1)))`
-/

namespace A163366.P3798059872179590537
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006093 (n + 1)) (A008683 (A058384 (n + 1)).toNat)

end

end A163366.P3798059872179590537

namespace A163366

/-- `gcd(A006093(n+1), A008683(A058384(n+1)))` -/
def P3798059872179590537.Spec : Prop :=
  ∀ n, (P3798059872179590537.a n : ℤ) = A163366 (n + 1)

end A163366

/-! ## A163366.P3782856911201429622

`A088440(A006093(n+1))`
-/

namespace A163366.P3782856911201429622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A006093 (n + 1)).toNat

end

end A163366.P3782856911201429622

namespace A163366

/-- `A088440(A006093(n+1))` -/
def P3782856911201429622.Spec : Prop :=
  ∀ n, P3782856911201429622.a n = A163366 (n + 1)

end A163366

/-! ## A163366.P4750387967179540525

`A088440(A039915(n+1))`
-/

namespace A163366.P4750387967179540525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A039915 (n + 1)).toNat

end

end A163366.P4750387967179540525

namespace A163366

/-- `A088440(A039915(n+1))` -/
def P4750387967179540525.Spec : Prop :=
  ∀ n, P4750387967179540525.a n = A163366 (n + 1)

end A163366

/-! ## A163366.P3194189525920963607

`A088440(A156037(n+1))`
-/

namespace A163366.P3194189525920963607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A156037 (n + 1)).toNat

end

end A163366.P3194189525920963607

namespace A163366

/-- `A088440(A156037(n+1))` -/
def P3194189525920963607.Spec : Prop :=
  ∀ n, P3194189525920963607.a n = A163366 (n + 1)

end A163366

/-! ## A163366.P2208039229206304384

`A088440(A068499(n+2))`
-/

namespace A163366.P2208039229206304384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A068499 (n + 2)).toNat

end

end A163366.P2208039229206304384

namespace A163366

/-- `A088440(A068499(n+2))` -/
def P2208039229206304384.Spec : Prop :=
  ∀ n, P2208039229206304384.a n = A163366 (n + 1)

end A163366

/-! ## A163366.P1320986120940451927

`A088440(record[A000010(n+1)])`
-/

namespace A163366.P1320986120940451927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A163366.P1320986120940451927

namespace A163366

/-- `A088440(record[A000010(n+1)])` -/
def P1320986120940451927.Spec : Prop :=
  ∀ n, P1320986120940451927.a n = A163366 (n + 1)

end A163366

/-! ## A163366.P3441194596351235025

`A088440(A000040(n+1)-1)`
-/

namespace A163366.P3441194596351235025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A000040 (n + 1) - 1).toNat

end

end A163366.P3441194596351235025

namespace A163366

/-- `A088440(A000040(n+1)-1)` -/
def P3441194596351235025.Spec : Prop :=
  ∀ n, P3441194596351235025.a n = A163366 (n + 1)

end A163366

/-! ## A163366.P12974245615853758252

`A088440(A008578(n+2)-1)`
-/

namespace A163366.P12974245615853758252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A008578 (n + 2) - 1).toNat

end

end A163366.P12974245615853758252

namespace A163366

/-- `A088440(A008578(n+2)-1)` -/
def P12974245615853758252.Spec : Prop :=
  ∀ n, P12974245615853758252.a n = A163366 (n + 1)

end A163366

/-! ## A163366.P14539964498857191456

`A019425(A111333(n+1))`
-/

namespace A163366.P14539964498857191456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A111333 (n + 1)).toNat

end

end A163366.P14539964498857191456

namespace A163366

/-- `A019425(A111333(n+1))` -/
def P14539964498857191456.Spec : Prop :=
  ∀ n, P14539964498857191456.a n = A163366 (n + 1)

end A163366

/-! ## A163366.P1946935767035510062

`A019425(A130291(n+1))`
-/

namespace A163366.P1946935767035510062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A130291 (n + 1)).toNat

end

end A163366.P1946935767035510062

namespace A163366

/-- `A019425(A130291(n+1))` -/
def P1946935767035510062.Spec : Prop :=
  ∀ n, P1946935767035510062.a n = A163366 (n + 1)

end A163366

/-! ## A163366.P6582491821972090324

`A020639(2^and(2, A000040(n+1))*A000040(n+1))-1`
-/

namespace A163366.P6582491821972090324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.land 2 (A000040 (n + 1)) : ℤ) * (A000040 (n + 1) : ℚ))).toNat - 1

end

end A163366.P6582491821972090324

namespace A163366

/-- `A020639(2^and(2, A000040(n+1))*A000040(n+1))-1` -/
def P6582491821972090324.Spec : Prop :=
  ∀ n, P6582491821972090324.a n = A163366 (n + 1)

end A163366

/-! ## A163366.P10283025316826675636

`A019425(A306591(n+1))`
-/

namespace A163366.P10283025316826675636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A306591 (n + 1)).toNat

end

end A163366.P10283025316826675636

namespace A163366

/-- `A019425(A306591(n+1))` -/
def P10283025316826675636.Spec : Prop :=
  ∀ n, P10283025316826675636.a n = A163366 (n + 1)

end A163366

/-! ## A163366.P312578777757127733

`A057237(A072900(n+1))`
-/

namespace A163366.P312578777757127733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (A072900 (n + 1)).toNat

end

end A163366.P312578777757127733

namespace A163366

/-- `A057237(A072900(n+1))` -/
def P312578777757127733.Spec : Prop :=
  ∀ n, P312578777757127733.a n = A163366 (n + 1)

end A163366

/-! ## A163366.P1486240676156672843

`A232195(A000040(n+1))`
-/

namespace A163366.P1486240676156672843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232195 (A000040 (n + 1)).toNat

end

end A163366.P1486240676156672843

namespace A163366

/-- `A232195(A000040(n+1))` -/
def P1486240676156672843.Spec : Prop :=
  ∀ n, P1486240676156672843.a n = A163366 (n + 1)

end A163366

/-! ## A163366.P17797021896446020076

`A232195(A008578(n+2))`
-/

namespace A163366.P17797021896446020076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232195 (A008578 (n + 2)).toNat

end

end A163366.P17797021896446020076

namespace A163366

/-- `A232195(A008578(n+2))` -/
def P17797021896446020076.Spec : Prop :=
  ∀ n, P17797021896446020076.a n = A163366 (n + 1)

end A163366

/-! ## A163366.P8072196173207887338

`A232195(A175787(n+2))`
-/

namespace A163366.P8072196173207887338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232195 (A175787 (n + 2)).toNat

end

end A163366.P8072196173207887338

namespace A163366

/-- `A232195(A175787(n+2))` -/
def P8072196173207887338.Spec : Prop :=
  ∀ n, P8072196173207887338.a n = A163366 (n + 1)

end A163366

/-! ## A163366.P16822811824211289842

`A232195(record[A006530(n+2)])`
-/

namespace A163366.P16822811824211289842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232195 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A163366.P16822811824211289842

namespace A163366

/-- `A232195(record[A006530(n+2)])` -/
def P16822811824211289842.Spec : Prop :=
  ∀ n, P16822811824211289842.a n = A163366 (n + 1)

end A163366

/-! ## A163366.P6763377868116712415

`A232195(record[A014963(n+2)])`
-/

namespace A163366.P6763377868116712415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232195 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A163366.P6763377868116712415

namespace A163366

/-- `A232195(record[A014963(n+2)])` -/
def P6763377868116712415.Spec : Prop :=
  ∀ n, P6763377868116712415.a n = A163366 (n + 1)

end A163366

/-! ## A163366.P6188339227395787813

`A232195(record[A020639(n+2)])`
-/

namespace A163366.P6188339227395787813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232195 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A163366.P6188339227395787813

namespace A163366

/-- `A232195(record[A020639(n+2)])` -/
def P6188339227395787813.Spec : Prop :=
  ∀ n, P6188339227395787813.a n = A163366 (n + 1)

end A163366

/-!
# A163367: a(n) = phi(tau(sigma(n))).

The programs for A163367, the canonical program `A163367.P15952926791181661414` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163367 has offset 1).

The definition of A163367 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163367.P12441280212646491345

`A000010(A062068(n+1))`
-/

namespace A163367.P12441280212646491345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A062068 (n + 1)).toNat

end

end A163367.P12441280212646491345

namespace A163367

/-- `A000010(A062068(n+1))` -/
def P12441280212646491345.Spec : Prop :=
  ∀ n, P12441280212646491345.a n = A163367 (n + 1)

end A163367

/-! ## A163367.P15952926791181661414

`A000010(A000005(A000203(n+1)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163367

/-- `A000010(A000005(A000203(n+1)))` -/
def P15952926791181661414.Spec : Prop :=
  ∀ n, P15952926791181661414.a n = A163367 (n + 1)

theorem P15952926791181661414.correct : P15952926791181661414.Spec := by
  intro n
  simp only [A163367, Nat.add_sub_cancel]

end A163367

/-! ## A163367.P9673601605386703646

`A163109(A000203(n+1))`
-/

namespace A163367.P9673601605386703646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (A000203 (n + 1)).toNat

end

end A163367.P9673601605386703646

namespace A163367

/-- `A163109(A000203(n+1))` -/
def P9673601605386703646.Spec : Prop :=
  ∀ n, P9673601605386703646.a n = A163367 (n + 1)

end A163367

/-! ## A163367.P744308493484004689

`A000010(∏{e}[∑{d}[n+1, #], #+1])`
-/

namespace A163367.P744308493484004689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A163367.P744308493484004689

namespace A163367

/-- `A000010(∏{e}[∑{d}[n+1, #], #+1])` -/
def P744308493484004689.Spec : Prop :=
  ∀ n, P744308493484004689.a n = A163367 (n + 1)

end A163367

/-! ## A163367.P5948321664685736431

`A109606(∏{e}[∑{d}[n+1, #], #+1])+1`
-/

namespace A163367.P5948321664685736431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) + 1

end

end A163367.P5948321664685736431

namespace A163367

/-- `A109606(∏{e}[∑{d}[n+1, #], #+1])+1` -/
def P5948321664685736431.Spec : Prop :=
  ∀ n, P5948321664685736431.a n = A163367 (n + 1)

end A163367

/-! ## A163367.P17649462480284422771

`A039649(∏{e}[∑{d}[n+1, #], #+1])-1`
-/

namespace A163367.P17649462480284422771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) - 1

end

end A163367.P17649462480284422771

namespace A163367

/-- `A039649(∏{e}[∑{d}[n+1, #], #+1])-1` -/
def P17649462480284422771.Spec : Prop :=
  ∀ n, P17649462480284422771.a n = A163367 (n + 1)

end A163367

/-! ## A163367.P16681353954450372623

`A000010(A000005(∑{d}[n+1, #]))`
-/

namespace A163367.P16681353954450372623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A163367.P16681353954450372623

namespace A163367

/-- `A000010(A000005(∑{d}[n+1, #]))` -/
def P16681353954450372623.Spec : Prop :=
  ∀ n, P16681353954450372623.a n = A163367 (n + 1)

end A163367

/-! ## A163367.P10847181629124914768

`A000010(∏{e}[A000203(n+1), #+1])`
-/

namespace A163367.P10847181629124914768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A163367.P10847181629124914768

namespace A163367

/-- `A000010(∏{e}[A000203(n+1), #+1])` -/
def P10847181629124914768.Spec : Prop :=
  ∀ n, P10847181629124914768.a n = A163367 (n + 1)

end A163367

/-! ## A163367.P15735466764783498204

`A000010(∏{e}[A001065(n+1)+n+1, #+1])`
-/

namespace A163367.P15735466764783498204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A163367.P15735466764783498204

namespace A163367

/-- `A000010(∏{e}[A001065(n+1)+n+1, #+1])` -/
def P15735466764783498204.Spec : Prop :=
  ∀ n, P15735466764783498204.a n = A163367 (n + 1)

end A163367

/-! ## A163367.P10158845309156034711

`A000010(A000005(A276528(n+1)))`
-/

namespace A163367.P10158845309156034711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (A276528 (n + 1)).toNat).toNat

end

end A163367.P10158845309156034711

namespace A163367

/-- `A000010(A000005(A276528(n+1)))` -/
def P10158845309156034711.Spec : Prop :=
  ∀ n, P10158845309156034711.a n = A163367 (n + 1)

end A163367

/-! ## A163367.P15106911521851133675

`A000010(A000005(A245092(2*n+1)))`
-/

namespace A163367.P15106911521851133675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (A245092 (2 * n + 1)).toNat).toNat

end

end A163367.P15106911521851133675

namespace A163367

/-- `A000010(A000005(A245092(2*n+1)))` -/
def P15106911521851133675.Spec : Prop :=
  ∀ n, P15106911521851133675.a n = A163367 (n + 1)

end A163367

/-! ## A163367.P14103485129130151571

`A000010(A000005(A001065(n+1)+n+1))`
-/

namespace A163367.P14103485129130151571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (A001065 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A163367.P14103485129130151571

namespace A163367

/-- `A000010(A000005(A001065(n+1)+n+1))` -/
def P14103485129130151571.Spec : Prop :=
  ∀ n, P14103485129130151571.a n = A163367 (n + 1)

end A163367

/-! ## A163367.P9566749330593689860

`A000010(A000005(A173455(n+1)+n+1))`
-/

namespace A163367.P9566749330593689860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (A173455 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A163367.P9566749330593689860

namespace A163367

/-- `A000010(A000005(A173455(n+1)+n+1))` -/
def P9566749330593689860.Spec : Prop :=
  ∀ n, P9566749330593689860.a n = A163367 (n + 1)

end A163367

/-! ## A163367.P5108127059444857813

`A000010(A000005(A155085(n+1)-(n+1)))`
-/

namespace A163367.P5108127059444857813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (A155085 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A163367.P5108127059444857813

namespace A163367

/-- `A000010(A000005(A155085(n+1)-(n+1)))` -/
def P5108127059444857813.Spec : Prop :=
  ∀ n, P5108127059444857813.a n = A163367 (n + 1)

end A163367

/-! ## A163367.P8780005268190353467

`A000010(A000005(A064987(n+1)/(n+1)))`
-/

namespace A163367.P8780005268190353467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A163367.P8780005268190353467

namespace A163367

/-- `A000010(A000005(A064987(n+1)/(n+1)))` -/
def P8780005268190353467.Spec : Prop :=
  ∀ n, P8780005268190353467.a n = A163367 (n + 1)

end A163367

/-! ## A163367.P17126674045653315629

`A000010(A000005(A326065(2*(n+1))))`
-/

namespace A163367.P17126674045653315629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (A326065 (2 * (n + 1))).toNat).toNat

end

end A163367.P17126674045653315629

namespace A163367

/-- `A000010(A000005(A326065(2*(n+1))))` -/
def P17126674045653315629.Spec : Prop :=
  ∀ n, P17126674045653315629.a n = A163367 (n + 1)

end A163367

/-! ## A163367.P13716973398480779729

`A000010(A000005(A262610(2*n+1)))`
-/

namespace A163367.P13716973398480779729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (A262610 (2 * n + 1)).toNat).toNat

end

end A163367.P13716973398480779729

namespace A163367

/-- `A000010(A000005(A262610(2*n+1)))` -/
def P13716973398480779729.Spec : Prop :=
  ∀ n, P13716973398480779729.a n = A163367 (n + 1)

end A163367

/-! ## A163367.P549848754715360533

`A163109(A276528(n+1))`
-/

namespace A163367.P549848754715360533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (A276528 (n + 1)).toNat

end

end A163367.P549848754715360533

namespace A163367

/-- `A163109(A276528(n+1))` -/
def P549848754715360533.Spec : Prop :=
  ∀ n, P549848754715360533.a n = A163367 (n + 1)

end A163367

/-! ## A163367.P987913213335169552

`A163109(∑{d}[n+1, #])`
-/

namespace A163367.P987913213335169552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A163367.P987913213335169552

namespace A163367

/-- `A163109(∑{d}[n+1, #])` -/
def P987913213335169552.Spec : Prop :=
  ∀ n, P987913213335169552.a n = A163367 (n + 1)

end A163367

/-! ## A163367.P17927363423297965882

`A000010(A069157(A074400(n+1)))`
-/

namespace A163367.P17927363423297965882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A069157 (A074400 (n + 1)).toNat).toNat

end

end A163367.P17927363423297965882

namespace A163367

/-- `A000010(A069157(A074400(n+1)))` -/
def P17927363423297965882.Spec : Prop :=
  ∀ n, P17927363423297965882.a n = A163367 (n + 1)

end A163367

/-!
# A163368: a(n) = phi(sigma(tau(n))).

The programs for A163368, the canonical program `A163368.P9680519141476713225` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163368 has offset 1).

The definition of A163368 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163368.P2070462197677030160

`A000010(A062069(n+1))`
-/

namespace A163368.P2070462197677030160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A062069 (n + 1)).toNat

end

end A163368.P2070462197677030160

namespace A163368

/-- `A000010(A062069(n+1))` -/
def P2070462197677030160.Spec : Prop :=
  ∀ n, P2070462197677030160.a n = A163368 (n + 1)

end A163368

/-! ## A163368.P14912234892460896645

`A062401(A000005(n+1))`
-/

namespace A163368.P14912234892460896645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (A000005 (n + 1)).toNat

end

end A163368.P14912234892460896645

namespace A163368

/-- `A062401(A000005(n+1))` -/
def P14912234892460896645.Spec : Prop :=
  ∀ n, P14912234892460896645.a n = A163368 (n + 1)

end A163368

/-! ## A163368.P9680519141476713225

`A000010(A000203(A000005(n+1)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163368

/-- `A000010(A000203(A000005(n+1)))` -/
def P9680519141476713225.Spec : Prop :=
  ∀ n, P9680519141476713225.a n = A163368 (n + 1)

theorem P9680519141476713225.correct : P9680519141476713225.Spec := by
  intro n
  simp only [A163368, Nat.add_sub_cancel]

end A163368

/-! ## A163368.P13316081141302167131

`A000010(∑{d}[∏{e}[n+1, #+1], #])`
-/

namespace A163368.P13316081141302167131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A163368.P13316081141302167131

namespace A163368

/-- `A000010(∑{d}[∏{e}[n+1, #+1], #])` -/
def P13316081141302167131.Spec : Prop :=
  ∀ n, P13316081141302167131.a n = A163368 (n + 1)

end A163368

/-! ## A163368.P2599218972838403369

`A062401(Δ[A006218(n)])`
-/

namespace A163368.P2599218972838403369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (f1 (n + 1) - f1 n).toNat

end

end A163368.P2599218972838403369

namespace A163368

/-- `A062401(Δ[A006218(n)])` -/
def P2599218972838403369.Spec : Prop :=
  ∀ n, P2599218972838403369.a n = A163368 (n + 1)

end A163368

/-! ## A163368.P7602894069900550259

`A000010(∑{d}[Δ[A006218(n)], #])`
-/

namespace A163368.P7602894069900550259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A163368.P7602894069900550259

namespace A163368

/-- `A000010(∑{d}[Δ[A006218(n)], #])` -/
def P7602894069900550259.Spec : Prop :=
  ∀ n, P7602894069900550259.a n = A163368 (n + 1)

end A163368

/-! ## A163368.P1086581449917712230

`A000010(∑{d}[A000005(n+1), #])`
-/

namespace A163368.P1086581449917712230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A163368.P1086581449917712230

namespace A163368

/-- `A000010(∑{d}[A000005(n+1), #])` -/
def P1086581449917712230.Spec : Prop :=
  ∀ n, P1086581449917712230.a n = A163368 (n + 1)

end A163368

/-! ## A163368.P7884166914677999422

`A109606(∑{d}[A000005(n+1), #])+1`
-/

namespace A163368.P7884166914677999422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (∑ d ∈ Nat.divisors (f1 n).natAbs, d) + 1

end

end A163368.P7884166914677999422

namespace A163368

/-- `A109606(∑{d}[A000005(n+1), #])+1` -/
def P7884166914677999422.Spec : Prop :=
  ∀ n, P7884166914677999422.a n = A163368 (n + 1)

end A163368

/-! ## A163368.P17113356770814301985

`A039649(∑{d}[A000005(n+1), #])-1`
-/

namespace A163368.P17113356770814301985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (∑ d ∈ Nat.divisors (f1 n).natAbs, d) - 1

end

end A163368.P17113356770814301985

namespace A163368

/-- `A039649(∑{d}[A000005(n+1), #])-1` -/
def P17113356770814301985.Spec : Prop :=
  ∀ n, P17113356770814301985.a n = A163368 (n + 1)

end A163368

/-! ## A163368.P318479932217320597

`A000010(A000203(∏{e}[n+1, #+1]))`
-/

namespace A163368.P318479932217320597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A163368.P318479932217320597

namespace A163368

/-- `A000010(A000203(∏{e}[n+1, #+1]))` -/
def P318479932217320597.Spec : Prop :=
  ∀ n, P318479932217320597.a n = A163368 (n + 1)

end A163368

/-! ## A163368.P18034898483952530747

`∑{d}[∑{d}[A000005(n+1), #], A007431(#)]`
-/

namespace A163368.P18034898483952530747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d

end

end A163368.P18034898483952530747

namespace A163368

/-- `∑{d}[∑{d}[A000005(n+1), #], A007431(#)]` -/
def P18034898483952530747.Spec : Prop :=
  ∀ n, P18034898483952530747.a n = A163368 (n + 1)

end A163368

/-! ## A163368.P11972889591784357500

`A000010(∑{d}[A038040(n+1)/(n+1), #])`
-/

namespace A163368.P11972889591784357500
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d)

end

end A163368.P11972889591784357500

namespace A163368

/-- `A000010(∑{d}[A038040(n+1)/(n+1), #])` -/
def P11972889591784357500.Spec : Prop :=
  ∀ n, P11972889591784357500.a n = A163368 (n + 1)

end A163368

/-! ## A163368.P13908666544180039825

`A000010(A069290(A000005(n+1)²))`
-/

namespace A163368.P13908666544180039825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A069290 (A000005 (n + 1) ^ 2).toNat).toNat

end

end A163368.P13908666544180039825

namespace A163368

/-- `A000010(A069290(A000005(n+1)²))` -/
def P13908666544180039825.Spec : Prop :=
  ∀ n, P13908666544180039825.a n = A163368 (n + 1)

end A163368

/-! ## A163368.P2667657891980221775

`A000010(A000203(A320111(2*(n+1))))`
-/

namespace A163368.P2667657891980221775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (A320111 (2 * (n + 1))).toNat).toNat

end

end A163368.P2667657891980221775

namespace A163368

/-- `A000010(A000203(A320111(2*(n+1))))` -/
def P2667657891980221775.Spec : Prop :=
  ∀ n, P2667657891980221775.a n = A163368 (n + 1)

end A163368

/-! ## A163368.P10831507405602154558

`A000010(A000203(n+1-A049820(n+1)))`
-/

namespace A163368.P10831507405602154558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 ((n + 1 : ℤ) - A049820 (n + 1)).toNat).toNat

end

end A163368.P10831507405602154558

namespace A163368

/-- `A000010(A000203(n+1-A049820(n+1)))` -/
def P10831507405602154558.Spec : Prop :=
  ∀ n, P10831507405602154558.a n = A163368 (n + 1)

end A163368

/-! ## A163368.P6832621586319293427

`A000010(A000203(A062249(n+1)-(n+1)))`
-/

namespace A163368.P6832621586319293427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (A062249 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A163368.P6832621586319293427

namespace A163368

/-- `A000010(A000203(A062249(n+1)-(n+1)))` -/
def P6832621586319293427.Spec : Prop :=
  ∀ n, P6832621586319293427.a n = A163368 (n + 1)

end A163368

/-! ## A163368.P15031963796258379982

`A000010(A000203(A038040(n+1)/(n+1)))`
-/

namespace A163368.P15031963796258379982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A163368.P15031963796258379982

namespace A163368

/-- `A000010(A000203(A038040(n+1)/(n+1)))` -/
def P15031963796258379982.Spec : Prop :=
  ∀ n, P15031963796258379982.a n = A163368 (n + 1)

end A163368

/-! ## A163368.P13299947915662770673

`A000010(∑{d}[∑{d}[n+1, A057427(#)], #])`
-/

namespace A163368.P13299947915662770673
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A057427 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A163368.P13299947915662770673

namespace A163368

/-- `A000010(∑{d}[∑{d}[n+1, A057427(#)], #])` -/
def P13299947915662770673.Spec : Prop :=
  ∀ n, P13299947915662770673.a n = A163368 (n + 1)

end A163368

/-! ## A163368.P6953885856935263446

`A000010(A000203(A069157(2*(n+1))))`
-/

namespace A163368.P6953885856935263446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (A069157 (2 * (n + 1))).toNat).toNat

end

end A163368.P6953885856935263446

namespace A163368

/-- `A000010(A000203(A069157(2*(n+1))))` -/
def P6953885856935263446.Spec : Prop :=
  ∀ n, P6953885856935263446.a n = A163368 (n + 1)

end A163368

/-! ## A163368.P11350982103376632990

`A000010(A000203(A183063(2*(n+1))))`
-/

namespace A163368.P11350982103376632990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (A183063 (2 * (n + 1))).toNat).toNat

end

end A163368.P11350982103376632990

namespace A163368

/-- `A000010(A000203(A183063(2*(n+1))))` -/
def P11350982103376632990.Spec : Prop :=
  ∀ n, P11350982103376632990.a n = A163368 (n + 1)

end A163368

/-!
# A163369: a(n) = sigma(sigma(phi(n))).

The programs for A163369, the canonical program `A163369.P6880856874196380414` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163369 has offset 1).

The definition of A163369 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163369.P1954825037667072212

`A051027(A000010(n+1))`
-/

namespace A163369.P1954825037667072212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A000010 (n + 1)).toNat

end

end A163369.P1954825037667072212

namespace A163369

/-- `A051027(A000010(n+1))` -/
def P1954825037667072212.Spec : Prop :=
  ∀ n, P1954825037667072212.a n = A163369 (n + 1)

end A163369

/-! ## A163369.P14747559561079042345

`A000203(A062402(n+1))`
-/

namespace A163369.P14747559561079042345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A062402 (n + 1)).toNat

end

end A163369.P14747559561079042345

namespace A163369

/-- `A000203(A062402(n+1))` -/
def P14747559561079042345.Spec : Prop :=
  ∀ n, P14747559561079042345.a n = A163369 (n + 1)

end A163369

/-! ## A163369.P6880856874196380414

`A000203(A000203(A000010(n+1)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163369

/-- `A000203(A000203(A000010(n+1)))` -/
def P6880856874196380414.Spec : Prop :=
  ∀ n, P6880856874196380414.a n = A163369 (n + 1)

theorem P6880856874196380414.correct : P6880856874196380414.Spec := by
  intro n
  simp only [A163369, Nat.add_sub_cancel]

end A163369

/-! ## A163369.P5603226673412840903

`A000203(∑{d}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #])`
-/

namespace A163369.P5603226673412840903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d)

end

end A163369.P5603226673412840903

namespace A163369

/-- `A000203(∑{d}[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], #])` -/
def P5603226673412840903.Spec : Prop :=
  ∀ n, P5603226673412840903.a n = A163369 (n + 1)

end A163369

/-! ## A163369.P1000150812463547289

`A051027(Δ[A002088(n)])`
-/

namespace A163369.P1000150812463547289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (f1 (n + 1) - f1 n).toNat

end

end A163369.P1000150812463547289

namespace A163369

/-- `A051027(Δ[A002088(n)])` -/
def P1000150812463547289.Spec : Prop :=
  ∀ n, P1000150812463547289.a n = A163369 (n + 1)

end A163369

/-! ## A163369.P8437832282710018873

`A051027(Δ[A005728(n)])`
-/

namespace A163369.P8437832282710018873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (f1 (n + 1) - f1 n).toNat

end

end A163369.P8437832282710018873

namespace A163369

/-- `A051027(Δ[A005728(n)])` -/
def P8437832282710018873.Spec : Prop :=
  ∀ n, P8437832282710018873.a n = A163369 (n + 1)

end A163369

/-! ## A163369.P3289851649968703594

`A000203(A295302(n+1)+1+n)`
-/

namespace A163369.P3289851649968703594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A295302 (n + 1) + 1 + (n : ℤ)).toNat

end

end A163369.P3289851649968703594

namespace A163369

/-- `A000203(A295302(n+1)+1+n)` -/
def P3289851649968703594.Spec : Prop :=
  ∀ n, P3289851649968703594.a n = A163369 (n + 1)

end A163369

/-! ## A163369.P15485664105902468361

`A000203(∑{d}[A109606(n+1)+1, #])`
-/

namespace A163369.P15485664105902468361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A163369.P15485664105902468361

namespace A163369

/-- `A000203(∑{d}[A109606(n+1)+1, #])` -/
def P15485664105902468361.Spec : Prop :=
  ∀ n, P15485664105902468361.a n = A163369 (n + 1)

end A163369

/-! ## A163369.P14569061205893965396

`A000203(∑{d}[A219428(n+1)-n, #])`
-/

namespace A163369.P14569061205893965396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A163369.P14569061205893965396

namespace A163369

/-- `A000203(∑{d}[A219428(n+1)-n, #])` -/
def P14569061205893965396.Spec : Prop :=
  ∀ n, P14569061205893965396.a n = A163369 (n + 1)

end A163369

/-! ## A163369.P12097759109337163766

`A000203(A000203(Δ[A002088(n)]))`
-/

namespace A163369.P12097759109337163766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (f1 (n + 1) - f1 n).toNat).toNat

end

end A163369.P12097759109337163766

namespace A163369

/-- `A000203(A000203(Δ[A002088(n)]))` -/
def P12097759109337163766.Spec : Prop :=
  ∀ n, P12097759109337163766.a n = A163369 (n + 1)

end A163369

/-! ## A163369.P3045076475689328338

`A000203(A000203(Δ[A005728(n)]))`
-/

namespace A163369.P3045076475689328338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (f1 (n + 1) - f1 n).toNat).toNat

end

end A163369.P3045076475689328338

namespace A163369

/-- `A000203(A000203(Δ[A005728(n)]))` -/
def P3045076475689328338.Spec : Prop :=
  ∀ n, P3045076475689328338.a n = A163369 (n + 1)

end A163369

/-! ## A163369.P17682530541101149165

`A000203(A000203(sqrt(A127473(n+1))))`
-/

namespace A163369.P17682530541101149165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat).toNat

end

end A163369.P17682530541101149165

namespace A163369

/-- `A000203(A000203(sqrt(A127473(n+1))))` -/
def P17682530541101149165.Spec : Prop :=
  ∀ n, P17682530541101149165.a n = A163369 (n + 1)

end A163369

/-! ## A163369.P10629228850662472361

`A000203(A000203(A039649(n+1)-1))`
-/

namespace A163369.P10629228850662472361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (A039649 (n + 1) - 1).toNat).toNat

end

end A163369.P10629228850662472361

namespace A163369

/-- `A000203(A000203(A039649(n+1)-1))` -/
def P10629228850662472361.Spec : Prop :=
  ∀ n, P10629228850662472361.a n = A163369 (n + 1)

end A163369

/-! ## A163369.P1919217520365508747

`A000203(A000203(A349137(2*n+1)))`
-/

namespace A163369.P1919217520365508747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 (A349137 (2 * n + 1)).toNat).toNat

end

end A163369.P1919217520365508747

namespace A163369

/-- `A000203(A000203(A349137(2*n+1)))` -/
def P1919217520365508747.Spec : Prop :=
  ∀ n, P1919217520365508747.a n = A163369 (n + 1)

end A163369

/-! ## A163369.P17099622970188283017

`A000203(A065395(n+1)+A062401(n+1))`
-/

namespace A163369.P17099622970188283017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A065395 (n + 1) + A062401 (n + 1)).toNat

end

end A163369.P17099622970188283017

namespace A163369

/-- `A000203(A065395(n+1)+A062401(n+1))` -/
def P17099622970188283017.Spec : Prop :=
  ∀ n, P17099622970188283017.a n = A163369 (n + 1)

end A163369

/-! ## A163369.P2309121737972102489

`A000203(A193454(n+1)+A193388(n+1))`
-/

namespace A163369.P2309121737972102489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A193454 (n + 1) + A193388 (n + 1)).toNat

end

end A163369.P2309121737972102489

namespace A163369

/-- `A000203(A193454(n+1)+A193388(n+1))` -/
def P2309121737972102489.Spec : Prop :=
  ∀ n, P2309121737972102489.a n = A163369 (n + 1)

end A163369

/-! ## A163369.P17296184439083577696

`A000203(A000203(n+1-A051953(n+1)))`
-/

namespace A163369.P17296184439083577696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000203 ((n + 1 : ℤ) - A051953 (n + 1)).toNat).toNat

end

end A163369.P17296184439083577696

namespace A163369

/-- `A000203(A000203(n+1-A051953(n+1)))` -/
def P17296184439083577696.Spec : Prop :=
  ∀ n, P17296184439083577696.a n = A163369 (n + 1)

end A163369

/-! ## A163369.P11187207180698232017

`A051027(A000203(n+1)-A051612(n+1))`
-/

namespace A163369.P11187207180698232017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A000203 (n + 1) - A051612 (n + 1)).toNat

end

end A163369.P11187207180698232017

namespace A163369

/-- `A051027(A000203(n+1)-A051612(n+1))` -/
def P11187207180698232017.Spec : Prop :=
  ∀ n, P11187207180698232017.a n = A163369 (n + 1)

end A163369

/-! ## A163369.P9370091685816212989

`A051027(A065387(n+1)-A000203(n+1))`
-/

namespace A163369.P9370091685816212989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A065387 (n + 1) - A000203 (n + 1)).toNat

end

end A163369.P9370091685816212989

namespace A163369

/-- `A051027(A065387(n+1)-A000203(n+1))` -/
def P9370091685816212989.Spec : Prop :=
  ∀ n, P9370091685816212989.a n = A163369 (n + 1)

end A163369

/-! ## A163369.P15798724078081220566

`A051027(A249353(n+1)-A051027(n+1))`
-/

namespace A163369.P15798724078081220566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051027 (A249353 (n + 1) - A051027 (n + 1)).toNat

end

end A163369.P15798724078081220566

namespace A163369

/-- `A051027(A249353(n+1)-A051027(n+1))` -/
def P15798724078081220566.Spec : Prop :=
  ∀ n, P15798724078081220566.a n = A163369 (n + 1)

end A163369

/-!
# A163370: a(n) = phi(sigma(phi(n))).

The programs for A163370, the canonical program `A163370.P4114165764519939780` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163370 has offset 1).

The definition of A163370 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163370.P4114165764519939780

`A000010(A000203(A000010(n+1)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163370

/-- `A000010(A000203(A000010(n+1)))` -/
def P4114165764519939780.Spec : Prop :=
  ∀ n, P4114165764519939780.a n = A163370 (n + 1)

theorem P4114165764519939780.correct : P4114165764519939780.Spec := by
  intro n
  simp only [A163370, Nat.add_sub_cancel]

end A163370

/-! ## A163370.P12104747462105857956

`A062401(Δ[A002088(n)])`
-/

namespace A163370.P12104747462105857956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (f1 (n + 1) - f1 n).toNat

end

end A163370.P12104747462105857956

namespace A163370

/-- `A062401(Δ[A002088(n)])` -/
def P12104747462105857956.Spec : Prop :=
  ∀ n, P12104747462105857956.a n = A163370 (n + 1)

end A163370

/-! ## A163370.P1665708365715534195

`A062401(Δ[A005728(n)])`
-/

namespace A163370.P1665708365715534195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (f1 (n + 1) - f1 n).toNat

end

end A163370.P1665708365715534195

namespace A163370

/-- `A062401(Δ[A005728(n)])` -/
def P1665708365715534195.Spec : Prop :=
  ∀ n, P1665708365715534195.a n = A163370 (n + 1)

end A163370

/-! ## A163370.P2435431605138504799

`A062401(A000010(n+1))`
-/

namespace A163370.P2435431605138504799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (A000010 (n + 1)).toNat

end

end A163370.P2435431605138504799

namespace A163370

/-- `A062401(A000010(n+1))` -/
def P2435431605138504799.Spec : Prop :=
  ∀ n, P2435431605138504799.a n = A163370 (n + 1)

end A163370

/-! ## A163370.P10747997680497059112

`A000010(A062402(n+1))`
-/

namespace A163370.P10747997680497059112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A062402 (n + 1)).toNat

end

end A163370.P10747997680497059112

namespace A163370

/-- `A000010(A062402(n+1))` -/
def P10747997680497059112.Spec : Prop :=
  ∀ n, P10747997680497059112.a n = A163370 (n + 1)

end A163370

/-! ## A163370.P16546472580191233686

`A062401(sqrt(A127473(n+1)))`
-/

namespace A163370.P16546472580191233686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A163370.P16546472580191233686

namespace A163370

/-- `A062401(sqrt(A127473(n+1)))` -/
def P16546472580191233686.Spec : Prop :=
  ∀ n, P16546472580191233686.a n = A163370 (n + 1)

end A163370

/-! ## A163370.P1831094311540008282

`A000010(∑{d}[Δ[A002088(n)], #])`
-/

namespace A163370.P1831094311540008282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A163370.P1831094311540008282

namespace A163370

/-- `A000010(∑{d}[Δ[A002088(n)], #])` -/
def P1831094311540008282.Spec : Prop :=
  ∀ n, P1831094311540008282.a n = A163370 (n + 1)

end A163370

/-! ## A163370.P11762099451292338826

`A000010(∑{d}[Δ[A005728(n)], #])`
-/

namespace A163370.P11762099451292338826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A163370.P11762099451292338826

namespace A163370

/-- `A000010(∑{d}[Δ[A005728(n)], #])` -/
def P11762099451292338826.Spec : Prop :=
  ∀ n, P11762099451292338826.a n = A163370 (n + 1)

end A163370

/-! ## A163370.P2909445908132349980

`A062401(A109606(n+1)+1)`
-/

namespace A163370.P2909445908132349980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (A109606 (n + 1) + 1).toNat

end

end A163370.P2909445908132349980

namespace A163370

/-- `A062401(A109606(n+1)+1)` -/
def P2909445908132349980.Spec : Prop :=
  ∀ n, P2909445908132349980.a n = A163370 (n + 1)

end A163370

/-! ## A163370.P5271907429686065690

`A062401(A039649(n+1)-1)`
-/

namespace A163370.P5271907429686065690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (A039649 (n + 1) - 1).toNat

end

end A163370.P5271907429686065690

namespace A163370

/-- `A062401(A039649(n+1)-1)` -/
def P5271907429686065690.Spec : Prop :=
  ∀ n, P5271907429686065690.a n = A163370 (n + 1)

end A163370

/-! ## A163370.P17439933333253778531

`A000010(∑{d}[A000010(n+1), #])`
-/

namespace A163370.P17439933333253778531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A163370.P17439933333253778531

namespace A163370

/-- `A000010(∑{d}[A000010(n+1), #])` -/
def P17439933333253778531.Spec : Prop :=
  ∀ n, P17439933333253778531.a n = A163370 (n + 1)

end A163370

/-! ## A163370.P6346384475470838704

`A000010(A295302(n+1)+1+n)`
-/

namespace A163370.P6346384475470838704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A295302 (n + 1) + 1 + (n : ℤ)).toNat

end

end A163370.P6346384475470838704

namespace A163370

/-- `A000010(A295302(n+1)+1+n)` -/
def P6346384475470838704.Spec : Prop :=
  ∀ n, P6346384475470838704.a n = A163370 (n + 1)

end A163370

/-! ## A163370.P14808315578124804127

`A062401(1-A051953(n+1)+n)`
-/

namespace A163370.P14808315578124804127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A163370.P14808315578124804127

namespace A163370

/-- `A062401(1-A051953(n+1)+n)` -/
def P14808315578124804127.Spec : Prop :=
  ∀ n, P14808315578124804127.a n = A163370 (n + 1)

end A163370

/-! ## A163370.P12198068145801369857

`A000010(abs(A143348(A000010(n+1))))`
-/

namespace A163370.P12198068145801369857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |A143348 (A000010 (n + 1)).toNat|.toNat

end

end A163370.P12198068145801369857

namespace A163370

/-- `A000010(abs(A143348(A000010(n+1))))` -/
def P12198068145801369857.Spec : Prop :=
  ∀ n, P12198068145801369857.a n = A163370 (n + 1)

end A163370

/-! ## A163370.P11467116691710188406

`A000010(A039653(A000010(n+1))+1)`
-/

namespace A163370.P11467116691710188406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A039653 (A000010 (n + 1)).toNat + 1).toNat

end

end A163370.P11467116691710188406

namespace A163370

/-- `A000010(A039653(A000010(n+1))+1)` -/
def P11467116691710188406.Spec : Prop :=
  ∀ n, P11467116691710188406.a n = A163370 (n + 1)

end A163370

/-! ## A163370.P3312901533660764702

`A000010(A088580(A000010(n+1))-1)`
-/

namespace A163370.P3312901533660764702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A088580 (A000010 (n + 1)).toNat - 1).toNat

end

end A163370.P3312901533660764702

namespace A163370

/-- `A000010(A088580(A000010(n+1))-1)` -/
def P3312901533660764702.Spec : Prop :=
  ∀ n, P3312901533660764702.a n = A163370 (n + 1)

end A163370

/-! ## A163370.P1754065360778888893

`A000010(A074400(A000010(n+1))/2)`
-/

namespace A163370.P1754065360778888893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A074400 (A000010 (n + 1)).toNat : ℚ) / 2)).toNat

end

end A163370.P1754065360778888893

namespace A163370

/-- `A000010(A074400(A000010(n+1))/2)` -/
def P1754065360778888893.Spec : Prop :=
  ∀ n, P1754065360778888893.a n = A163370 (n + 1)

end A163370

/-! ## A163370.P6557337472523542528

`A062401(A002088(n+1)-A002088(n))`
-/

namespace A163370.P6557337472523542528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (A002088 (n + 1) - A002088 n).toNat

end

end A163370.P6557337472523542528

namespace A163370

/-- `A062401(A002088(n+1)-A002088(n))` -/
def P6557337472523542528.Spec : Prop :=
  ∀ n, P6557337472523542528.a n = A163370 (n + 1)

end A163370

/-! ## A163370.P8370741272499027893

`A353636(A000010(n+1))+A010554(n+1)`
-/

namespace A163370.P8370741272499027893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (A000010 (n + 1)).toNat + A010554 (n + 1)

end

end A163370.P8370741272499027893

namespace A163370

/-- `A353636(A000010(n+1))+A010554(n+1)` -/
def P8370741272499027893.Spec : Prop :=
  ∀ n, P8370741272499027893.a n = A163370 (n + 1)

end A163370

/-! ## A163370.P15130041220529769652

`A000010(A193454(n+1)+A193388(n+1))`
-/

namespace A163370.P15130041220529769652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A193454 (n + 1) + A193388 (n + 1)).toNat

end

end A163370.P15130041220529769652

namespace A163370

/-- `A000010(A193454(n+1)+A193388(n+1))` -/
def P15130041220529769652.Spec : Prop :=
  ∀ n, P15130041220529769652.a n = A163370 (n + 1)

end A163370

/-!
# A163371: a(n) = tau(phi(sigma(n))).

The programs for A163371, the canonical program `A163371.P10998090504912762373` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163371 has offset 1).

The definition of A163371 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163371.P774471832577745826

`A000005(A062401(n+1))`
-/

namespace A163371.P774471832577745826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A062401 (n + 1)).toNat

end

end A163371.P774471832577745826

namespace A163371

/-- `A000005(A062401(n+1))` -/
def P774471832577745826.Spec : Prop :=
  ∀ n, P774471832577745826.a n = A163371 (n + 1)

end A163371

/-! ## A163371.P10998090504912762373

`A000005(A000010(A000203(n+1)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163371

/-- `A000005(A000010(A000203(n+1)))` -/
def P10998090504912762373.Spec : Prop :=
  ∀ n, P10998090504912762373.a n = A163371 (n + 1)

theorem P10998090504912762373.correct : P10998090504912762373.Spec := by
  intro n
  simp only [A163371, Nat.add_sub_cancel]

end A163371

/-! ## A163371.P16183247952537498985

`A062821(A000203(n+1))`
-/

namespace A163371.P16183247952537498985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A000203 (n + 1)).toNat

end

end A163371.P16183247952537498985

namespace A163371

/-- `A062821(A000203(n+1))` -/
def P16183247952537498985.Spec : Prop :=
  ∀ n, P16183247952537498985.a n = A163371 (n + 1)

end A163371

/-! ## A163371.P1689698726835785070

`∏{e}[A000010(∑{d}[n-1-2*n, #]), #+1]`
-/

namespace A163371.P1689698726835785070
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (2 * n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f2 n).natAbs, d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A163371.P1689698726835785070

namespace A163371

/-- `∏{e}[A000010(∑{d}[n-1-2*n, #]), #+1]` -/
def P1689698726835785070.Spec : Prop :=
  ∀ n, (P1689698726835785070.a n : ℤ) = A163371 (n + 1)

end A163371

/-! ## A163371.P1889257417844974790

`A000005(A000010(∑{d}[n+1, #]))`
-/

namespace A163371.P1889257417844974790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A163371.P1889257417844974790

namespace A163371

/-- `A000005(A000010(∑{d}[n+1, #]))` -/
def P1889257417844974790.Spec : Prop :=
  ∀ n, P1889257417844974790.a n = A163371 (n + 1)

end A163371

/-! ## A163371.P16275417029984567301

`A000005(1-A295301(n+1)+n)`
-/

namespace A163371.P16275417029984567301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (1 - A295301 (n + 1) + (n : ℤ)).toNat

end

end A163371.P16275417029984567301

namespace A163371

/-- `A000005(1-A295301(n+1)+n)` -/
def P16275417029984567301.Spec : Prop :=
  ∀ n, P16275417029984567301.a n = A163371 (n + 1)

end A163371

/-! ## A163371.P17738042277551873456

`A000005(A000010(A245092(2*n+1)))`
-/

namespace A163371.P17738042277551873456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (A245092 (2 * n + 1)).toNat).toNat

end

end A163371.P17738042277551873456

namespace A163371

/-- `A000005(A000010(A245092(2*n+1)))` -/
def P17738042277551873456.Spec : Prop :=
  ∀ n, P17738042277551873456.a n = A163371 (n + 1)

end A163371

/-! ## A163371.P15331527887421122932

`A000005(A000010(A001065(n+1)+n+1))`
-/

namespace A163371.P15331527887421122932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (A001065 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A163371.P15331527887421122932

namespace A163371

/-- `A000005(A000010(A001065(n+1)+n+1))` -/
def P15331527887421122932.Spec : Prop :=
  ∀ n, P15331527887421122932.a n = A163371 (n + 1)

end A163371

/-! ## A163371.P4894865269926023406

`A000005(A000010(A173455(n+1)+n+1))`
-/

namespace A163371.P4894865269926023406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (A173455 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A163371.P4894865269926023406

namespace A163371

/-- `A000005(A000010(A173455(n+1)+n+1))` -/
def P4894865269926023406.Spec : Prop :=
  ∀ n, P4894865269926023406.a n = A163371 (n + 1)

end A163371

/-! ## A163371.P3627420283876836335

`A000005(A000010(A155085(n+1)-(n+1)))`
-/

namespace A163371.P3627420283876836335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (A155085 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A163371.P3627420283876836335

namespace A163371

/-- `A000005(A000010(A155085(n+1)-(n+1)))` -/
def P3627420283876836335.Spec : Prop :=
  ∀ n, P3627420283876836335.a n = A163371 (n + 1)

end A163371

/-! ## A163371.P13490687246087974507

`A000005(A353643(n+1)*A353646(n+1))`
-/

namespace A163371.P13490687246087974507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A353643 (n + 1) * A353646 (n + 1)).toNat

end

end A163371.P13490687246087974507

namespace A163371

/-- `A000005(A353643(n+1)*A353646(n+1))` -/
def P13490687246087974507.Spec : Prop :=
  ∀ n, P13490687246087974507.a n = A163371 (n + 1)

end A163371

/-! ## A163371.P1011312160963320941

`A000005(A000010(A064987(n+1)/(n+1)))`
-/

namespace A163371.P1011312160963320941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A163371.P1011312160963320941

namespace A163371

/-- `A000005(A000010(A064987(n+1)/(n+1)))` -/
def P1011312160963320941.Spec : Prop :=
  ∀ n, P1011312160963320941.a n = A163371 (n + 1)

end A163371

/-! ## A163371.P1057742779413614860

`A000005(A000010(A326065(2*(n+1))))`
-/

namespace A163371.P1057742779413614860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (A326065 (2 * (n + 1))).toNat).toNat

end

end A163371.P1057742779413614860

namespace A163371

/-- `A000005(A000010(A326065(2*(n+1))))` -/
def P1057742779413614860.Spec : Prop :=
  ∀ n, P1057742779413614860.a n = A163371 (n + 1)

end A163371

/-! ## A163371.P10418041458527205535

`A000005(A000010(A262610(2*n+1)))`
-/

namespace A163371.P10418041458527205535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000010 (A262610 (2 * n + 1)).toNat).toNat

end

end A163371.P10418041458527205535

namespace A163371

/-- `A000005(A000010(A262610(2*n+1)))` -/
def P10418041458527205535.Spec : Prop :=
  ∀ n, P10418041458527205535.a n = A163371 (n + 1)

end A163371

/-! ## A163371.P9157268604475739427

`A062821(∑{d}[n+1, #])`
-/

namespace A163371.P9157268604475739427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A163371.P9157268604475739427

namespace A163371

/-- `A062821(∑{d}[n+1, #])` -/
def P9157268604475739427.Spec : Prop :=
  ∀ n, P9157268604475739427.a n = A163371 (n + 1)

end A163371

/-! ## A163371.P289202524054174841

`A062821(A039653(n+1)+1)`
-/

namespace A163371.P289202524054174841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A039653 (n + 1) + 1).toNat

end

end A163371.P289202524054174841

namespace A163371

/-- `A062821(A039653(n+1)+1)` -/
def P289202524054174841.Spec : Prop :=
  ∀ n, P289202524054174841.a n = A163371 (n + 1)

end A163371

/-! ## A163371.P17975905575997084024

`A062821(A001065(n+1)+1+n)`
-/

namespace A163371.P17975905575997084024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A163371.P17975905575997084024

namespace A163371

/-- `A062821(A001065(n+1)+1+n)` -/
def P17975905575997084024.Spec : Prop :=
  ∀ n, P17975905575997084024.a n = A163371 (n + 1)

end A163371

/-! ## A163371.P15010359406156083608

`A000005(A109606(∑{d}[n+1, #])+1)`
-/

namespace A163371.P15010359406156083608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A109606 (∑ d ∈ Nat.divisors (f1 n), d) + 1).toNat

end

end A163371.P15010359406156083608

namespace A163371

/-- `A000005(A109606(∑{d}[n+1, #])+1)` -/
def P15010359406156083608.Spec : Prop :=
  ∀ n, P15010359406156083608.a n = A163371 (n + 1)

end A163371

/-! ## A163371.P11527073241730258741

`∏{e}[A109606(abs(A000203(n+1)-1)+1)+1, #+1]`
-/

namespace A163371.P11527073241730258741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (|A000203 (n + 1) - 1| + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A163371.P11527073241730258741

namespace A163371

/-- `∏{e}[A109606(abs(A000203(n+1)-1)+1)+1, #+1]` -/
def P11527073241730258741.Spec : Prop :=
  ∀ n, (P11527073241730258741.a n : ℤ) = A163371 (n + 1)

end A163371

/-! ## A163371.P15974495350525417407

`A183063(A319998(A074400(n+1)))`
-/

namespace A163371.P15974495350525417407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A319998 (A074400 (n + 1)).toNat).toNat

end

end A163371.P15974495350525417407

namespace A163371

/-- `A183063(A319998(A074400(n+1)))` -/
def P15974495350525417407.Spec : Prop :=
  ∀ n, P15974495350525417407.a n = A163371 (n + 1)

end A163371

/-!
# A163372: a(n) = sigma(phi(sigma(n))).

The programs for A163372, the canonical program `A163372.P17836874955926531341` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163372 has offset 1).

The definition of A163372 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163372.P1074381028542616312

`A000203(A062401(n+1))`
-/

namespace A163372.P1074381028542616312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A062401 (n + 1)).toNat

end

end A163372.P1074381028542616312

namespace A163372

/-- `A000203(A062401(n+1))` -/
def P1074381028542616312.Spec : Prop :=
  ∀ n, P1074381028542616312.a n = A163372 (n + 1)

end A163372

/-! ## A163372.P17836874955926531341

`A000203(A000010(A000203(n+1)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163372

/-- `A000203(A000010(A000203(n+1)))` -/
def P17836874955926531341.Spec : Prop :=
  ∀ n, P17836874955926531341.a n = A163372 (n + 1)

theorem P17836874955926531341.correct : P17836874955926531341.Spec := by
  intro n
  simp only [A163372, Nat.add_sub_cancel]

end A163372

/-! ## A163372.P2384357725536949515

`A062402(A000203(n+1))`
-/

namespace A163372.P2384357725536949515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (A000203 (n + 1)).toNat

end

end A163372.P2384357725536949515

namespace A163372

/-- `A062402(A000203(n+1))` -/
def P2384357725536949515.Spec : Prop :=
  ∀ n, P2384357725536949515.a n = A163372 (n + 1)

end A163372

/-! ## A163372.P1212238822195186684

`∑{d}[A000010(∑{d}[n+1, #]), #]`
-/

namespace A163372.P1212238822195186684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163372.P1212238822195186684

namespace A163372

/-- `∑{d}[A000010(∑{d}[n+1, #]), #]` -/
def P1212238822195186684.Spec : Prop :=
  ∀ n, (P1212238822195186684.a n : ℤ) = A163372 (n + 1)

end A163372

/-! ## A163372.P10579334237847322618

`A000203(1-A295301(n+1)+n)`
-/

namespace A163372.P10579334237847322618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (1 - A295301 (n + 1) + (n : ℤ)).toNat

end

end A163372.P10579334237847322618

namespace A163372

/-- `A000203(1-A295301(n+1)+n)` -/
def P10579334237847322618.Spec : Prop :=
  ∀ n, P10579334237847322618.a n = A163372 (n + 1)

end A163372

/-! ## A163372.P15783237411403508945

`A000203(A353753(n+1)+A353752(n+1))`
-/

namespace A163372.P15783237411403508945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A353753 (n + 1) + A353752 (n + 1)).toNat

end

end A163372.P15783237411403508945

namespace A163372

/-- `A000203(A353753(n+1)+A353752(n+1))` -/
def P15783237411403508945.Spec : Prop :=
  ∀ n, P15783237411403508945.a n = A163372 (n + 1)

end A163372

/-! ## A163372.P16984432600232538595

`A000203(A295310(n+1)*A295312(n+1))`
-/

namespace A163372.P16984432600232538595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A295310 (n + 1) * A295312 (n + 1)).toNat

end

end A163372.P16984432600232538595

namespace A163372

/-- `A000203(A295310(n+1)*A295312(n+1))` -/
def P16984432600232538595.Spec : Prop :=
  ∀ n, P16984432600232538595.a n = A163372 (n + 1)

end A163372

/-! ## A163372.P11804375270508718258

`A000203(A295313(n+1)*A295315(n+1))`
-/

namespace A163372.P11804375270508718258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A295313 (n + 1) * A295315 (n + 1)).toNat

end

end A163372.P11804375270508718258

namespace A163372

/-- `A000203(A295313(n+1)*A295315(n+1))` -/
def P11804375270508718258.Spec : Prop :=
  ∀ n, P11804375270508718258.a n = A163372 (n + 1)

end A163372

/-! ## A163372.P8852367446488312460

`A000203(A353643(n+1)*A353646(n+1))`
-/

namespace A163372.P8852367446488312460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A353643 (n + 1) * A353646 (n + 1)).toNat

end

end A163372.P8852367446488312460

namespace A163372

/-- `A000203(A353643(n+1)*A353646(n+1))` -/
def P8852367446488312460.Spec : Prop :=
  ∀ n, P8852367446488312460.a n = A163372 (n + 1)

end A163372

/-! ## A163372.P5612272092705323927

`A000203(A353754(n+1)*A353755(n+1))`
-/

namespace A163372.P5612272092705323927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A353754 (n + 1) * A353755 (n + 1)).toNat

end

end A163372.P5612272092705323927

namespace A163372

/-- `A000203(A353754(n+1)*A353755(n+1))` -/
def P5612272092705323927.Spec : Prop :=
  ∀ n, P5612272092705323927.a n = A163372 (n + 1)

end A163372

/-! ## A163372.P7504691712242004033

`A000203(A387156(n+1)*A387157(n+1))`
-/

namespace A163372.P7504691712242004033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A387156 (n + 1) * A387157 (n + 1)).toNat

end

end A163372.P7504691712242004033

namespace A163372

/-- `A000203(A387156(n+1)*A387157(n+1))` -/
def P7504691712242004033.Spec : Prop :=
  ∀ n, P7504691712242004033.a n = A163372 (n + 1)

end A163372

/-! ## A163372.P17685668751918627254

`A000203(∑{d}[A000203(n+1), A007431(#)])`
-/

namespace A163372.P17685668751918627254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d).toNat

end

end A163372.P17685668751918627254

namespace A163372

/-- `A000203(∑{d}[A000203(n+1), A007431(#)])` -/
def P17685668751918627254.Spec : Prop :=
  ∀ n, P17685668751918627254.a n = A163372 (n + 1)

end A163372

/-! ## A163372.P14508454209853868095

`A062402(∑{d}[n+1, #])`
-/

namespace A163372.P14508454209853868095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A163372.P14508454209853868095

namespace A163372

/-- `A062402(∑{d}[n+1, #])` -/
def P14508454209853868095.Spec : Prop :=
  ∀ n, P14508454209853868095.a n = A163372 (n + 1)

end A163372

/-! ## A163372.P15554136989863662294

`A062402(Δ[A160664(n)])`
-/

namespace A163372.P15554136989863662294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (f1 (n + 1) - f1 n).toNat

end

end A163372.P15554136989863662294

namespace A163372

/-- `A062402(Δ[A160664(n)])` -/
def P15554136989863662294.Spec : Prop :=
  ∀ n, P15554136989863662294.a n = A163372 (n + 1)

end A163372

/-! ## A163372.P15498942947223102837

`A062402(A039653(n+1)+1)`
-/

namespace A163372.P15498942947223102837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (A039653 (n + 1) + 1).toNat

end

end A163372.P15498942947223102837

namespace A163372

/-- `A062402(A039653(n+1)+1)` -/
def P15498942947223102837.Spec : Prop :=
  ∀ n, P15498942947223102837.a n = A163372 (n + 1)

end A163372

/-! ## A163372.P16560100633159888834

`A062402(A074400(n+1)/2)`
-/

namespace A163372.P16560100633159888834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A163372.P16560100633159888834

namespace A163372

/-- `A062402(A074400(n+1)/2)` -/
def P16560100633159888834.Spec : Prop :=
  ∀ n, P16560100633159888834.a n = A163372 (n + 1)

end A163372

/-! ## A163372.P16429814437755885620

`A062402((A002659(n+1)+1)/2)`
-/

namespace A163372.P16429814437755885620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (SequenceMachineLib.roundAway ((A002659 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A163372.P16429814437755885620

namespace A163372

/-- `A062402((A002659(n+1)+1)/2)` -/
def P16429814437755885620.Spec : Prop :=
  ∀ n, P16429814437755885620.a n = A163372 (n + 1)

end A163372

/-!
# A163373: a(n) = phi(phi(sigma(n))).

The programs for A163373, the canonical program `A163373.P4463186571228454000` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163373 has offset 1).

The definition of A163373 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163373.P3735278863106384041

`A000010(A062401(n+1))`
-/

namespace A163373.P3735278863106384041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A062401 (n + 1)).toNat

end

end A163373.P3735278863106384041

namespace A163373

/-- `A000010(A062401(n+1))` -/
def P3735278863106384041.Spec : Prop :=
  ∀ n, P3735278863106384041.a n = A163373 (n + 1)

end A163373

/-! ## A163373.P4463186571228454000

`A000010(A000010(A000203(n+1)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163373

/-- `A000010(A000010(A000203(n+1)))` -/
def P4463186571228454000.Spec : Prop :=
  ∀ n, P4463186571228454000.a n = A163373 (n + 1)

theorem P4463186571228454000.correct : P4463186571228454000.Spec := by
  intro n
  simp only [A163373, Nat.add_sub_cancel]

end A163373

/-! ## A163373.P3167301519653918687

`A010554(A000203(n+1))`
-/

namespace A163373.P3167301519653918687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A000203 (n + 1)).toNat

end

end A163373.P3167301519653918687

namespace A163373

/-- `A010554(A000203(n+1))` -/
def P3167301519653918687.Spec : Prop :=
  ∀ n, P3167301519653918687.a n = A163373 (n + 1)

end A163373

/-! ## A163373.P9128709117406083648

`A000010(A000010(∑{d}[n+1, #]))`
-/

namespace A163373.P9128709117406083648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A163373.P9128709117406083648

namespace A163373

/-- `A000010(A000010(∑{d}[n+1, #]))` -/
def P9128709117406083648.Spec : Prop :=
  ∀ n, P9128709117406083648.a n = A163373 (n + 1)

end A163373

/-! ## A163373.P14388268956887634716

`A000010(1-A295301(n+1)+n)`
-/

namespace A163373.P14388268956887634716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (1 - A295301 (n + 1) + (n : ℤ)).toNat

end

end A163373.P14388268956887634716

namespace A163373

/-- `A000010(1-A295301(n+1)+n)` -/
def P14388268956887634716.Spec : Prop :=
  ∀ n, P14388268956887634716.a n = A163373 (n + 1)

end A163373

/-! ## A163373.P8419460698818793139

`A000010(A000010(Δ[A160664(n)]))`
-/

namespace A163373.P8419460698818793139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (f1 (n + 1) - f1 n).toNat).toNat

end

end A163373.P8419460698818793139

namespace A163373

/-- `A000010(A000010(Δ[A160664(n)]))` -/
def P8419460698818793139.Spec : Prop :=
  ∀ n, P8419460698818793139.a n = A163373 (n + 1)

end A163373

/-! ## A163373.P3368847670342946771

`A000010(A000010(abs(A143348(n+1))))`
-/

namespace A163373.P3368847670342946771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 |A143348 (n + 1)|.toNat).toNat

end

end A163373.P3368847670342946771

namespace A163373

/-- `A000010(A000010(abs(A143348(n+1))))` -/
def P3368847670342946771.Spec : Prop :=
  ∀ n, P3368847670342946771.a n = A163373 (n + 1)

end A163373

/-! ## A163373.P13740024716718902931

`A000010(A000010(sqrt(A072861(n+1))))`
-/

namespace A163373.P13740024716718902931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat).toNat

end

end A163373.P13740024716718902931

namespace A163373

/-- `A000010(A000010(sqrt(A072861(n+1))))` -/
def P13740024716718902931.Spec : Prop :=
  ∀ n, P13740024716718902931.a n = A163373 (n + 1)

end A163373

/-! ## A163373.P5764787952594841568

`A000010(A000010(A039653(n+1)+1))`
-/

namespace A163373.P5764787952594841568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A039653 (n + 1) + 1).toNat).toNat

end

end A163373.P5764787952594841568

namespace A163373

/-- `A000010(A000010(A039653(n+1)+1))` -/
def P5764787952594841568.Spec : Prop :=
  ∀ n, P5764787952594841568.a n = A163373 (n + 1)

end A163373

/-! ## A163373.P12830760007269770788

`A000010(A000010(A088580(n+1)-1))`
-/

namespace A163373.P12830760007269770788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A088580 (n + 1) - 1).toNat).toNat

end

end A163373.P12830760007269770788

namespace A163373

/-- `A000010(A000010(A088580(n+1)-1))` -/
def P12830760007269770788.Spec : Prop :=
  ∀ n, P12830760007269770788.a n = A163373 (n + 1)

end A163373

/-! ## A163373.P2096198117400953252

`A000010(A000010(A245092(2*n+1)))`
-/

namespace A163373.P2096198117400953252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A245092 (2 * n + 1)).toNat).toNat

end

end A163373.P2096198117400953252

namespace A163373

/-- `A000010(A000010(A245092(2*n+1)))` -/
def P2096198117400953252.Spec : Prop :=
  ∀ n, P2096198117400953252.a n = A163373 (n + 1)

end A163373

/-! ## A163373.P1605635244396710039

`A000010(A000010(A074400(n+1)/2))`
-/

namespace A163373.P1605635244396710039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat).toNat

end

end A163373.P1605635244396710039

namespace A163373

/-- `A000010(A000010(A074400(n+1)/2))` -/
def P1605635244396710039.Spec : Prop :=
  ∀ n, P1605635244396710039.a n = A163373 (n + 1)

end A163373

/-! ## A163373.P4377891438982826830

`A000010(A000010(A001065(n+1)+n+1))`
-/

namespace A163373.P4377891438982826830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A001065 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A163373.P4377891438982826830

namespace A163373

/-- `A000010(A000010(A001065(n+1)+n+1))` -/
def P4377891438982826830.Spec : Prop :=
  ∀ n, P4377891438982826830.a n = A163373 (n + 1)

end A163373

/-! ## A163373.P12374394438510734212

`A000010(A353636(n+1)+A000010(n+1))`
-/

namespace A163373.P12374394438510734212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A353636 (n + 1) + A000010 (n + 1)).toNat

end

end A163373.P12374394438510734212

namespace A163373

/-- `A000010(A353636(n+1)+A000010(n+1))` -/
def P12374394438510734212.Spec : Prop :=
  ∀ n, P12374394438510734212.a n = A163373 (n + 1)

end A163373

/-! ## A163373.P15191796000728747666

`A000010(A000010(A155085(n+1)-(n+1)))`
-/

namespace A163373.P15191796000728747666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A155085 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A163373.P15191796000728747666

namespace A163373

/-- `A000010(A000010(A155085(n+1)-(n+1)))` -/
def P15191796000728747666.Spec : Prop :=
  ∀ n, P15191796000728747666.a n = A163373 (n + 1)

end A163373

/-! ## A163373.P16487851486089848799

`A000010(A295310(n+1)*A295312(n+1))`
-/

namespace A163373.P16487851486089848799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A295310 (n + 1) * A295312 (n + 1)).toNat

end

end A163373.P16487851486089848799

namespace A163373

/-- `A000010(A295310(n+1)*A295312(n+1))` -/
def P16487851486089848799.Spec : Prop :=
  ∀ n, P16487851486089848799.a n = A163373 (n + 1)

end A163373

/-! ## A163373.P6427914274656830594

`A000010(A295313(n+1)*A295315(n+1))`
-/

namespace A163373.P6427914274656830594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A295313 (n + 1) * A295315 (n + 1)).toNat

end

end A163373.P6427914274656830594

namespace A163373

/-- `A000010(A295313(n+1)*A295315(n+1))` -/
def P6427914274656830594.Spec : Prop :=
  ∀ n, P6427914274656830594.a n = A163373 (n + 1)

end A163373

/-! ## A163373.P15545242807049045029

`A000010(A353643(n+1)*A353646(n+1))`
-/

namespace A163373.P15545242807049045029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A353643 (n + 1) * A353646 (n + 1)).toNat

end

end A163373.P15545242807049045029

namespace A163373

/-- `A000010(A353643(n+1)*A353646(n+1))` -/
def P15545242807049045029.Spec : Prop :=
  ∀ n, P15545242807049045029.a n = A163373 (n + 1)

end A163373

/-! ## A163373.P11109642039977068156

`A000010(A000010(A064987(n+1)/(n+1)))`
-/

namespace A163373.P11109642039977068156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A163373.P11109642039977068156

namespace A163373

/-- `A000010(A000010(A064987(n+1)/(n+1)))` -/
def P11109642039977068156.Spec : Prop :=
  ∀ n, P11109642039977068156.a n = A163373 (n + 1)

end A163373

/-! ## A163373.P9855473652340499577

`A000010(A000010(A262610(2*n+1)))`
-/

namespace A163373.P9855473652340499577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A262610 (2 * n + 1)).toNat).toNat

end

end A163373.P9855473652340499577

namespace A163373

/-- `A000010(A000010(A262610(2*n+1)))` -/
def P9855473652340499577.Spec : Prop :=
  ∀ n, P9855473652340499577.a n = A163373 (n + 1)

end A163373

/-!
# A163374: a(n) = tau(tau(phi(n))).

The programs for A163374, the canonical program `A163374.P15707926758281421446` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163374 has offset 1).

The definition of A163374 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163374.P2119250653527873176

`A010553(A000010(n+1))`
-/

namespace A163374.P2119250653527873176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A000010 (n + 1)).toNat

end

end A163374.P2119250653527873176

namespace A163374

/-- `A010553(A000010(n+1))` -/
def P2119250653527873176.Spec : Prop :=
  ∀ n, P2119250653527873176.a n = A163374 (n + 1)

end A163374

/-! ## A163374.P7637100482057342679

`A000005(A062821(n+1))`
-/

namespace A163374.P7637100482057342679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A062821 (n + 1)).toNat

end

end A163374.P7637100482057342679

namespace A163374

/-- `A000005(A062821(n+1))` -/
def P7637100482057342679.Spec : Prop :=
  ∀ n, P7637100482057342679.a n = A163374 (n + 1)

end A163374

/-! ## A163374.P15707926758281421446

`A000005(A000005(A000010(n+1)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163374

/-- `A000005(A000005(A000010(n+1)))` -/
def P15707926758281421446.Spec : Prop :=
  ∀ n, P15707926758281421446.a n = A163374 (n + 1)

theorem P15707926758281421446.correct : P15707926758281421446.Spec := by
  intro n
  simp only [A163374, Nat.add_sub_cancel]

end A163374

/-! ## A163374.P2327379677130580062

`∏{e}[∏{e}[1-A039649(n+1), #+1], #+1]`
-/

namespace A163374.P2327379677130580062
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A039649 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A163374.P2327379677130580062

namespace A163374

/-- `∏{e}[∏{e}[1-A039649(n+1), #+1], #+1]` -/
def P2327379677130580062.Spec : Prop :=
  ∀ n, (P2327379677130580062.a n : ℤ) = A163374 (n + 1)

end A163374

/-! ## A163374.P3562501762435389640

`A010553(A277906(n+1))`
-/

namespace A163374.P3562501762435389640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (A277906 (n + 1)).toNat

end

end A163374.P3562501762435389640

namespace A163374

/-- `A010553(A277906(n+1))` -/
def P3562501762435389640.Spec : Prop :=
  ∀ n, P3562501762435389640.a n = A163374 (n + 1)

end A163374

/-! ## A163374.P11170794526186417607

`A183063(2*A062821(n+1))`
-/

namespace A163374.P11170794526186417607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A062821 (n + 1)).toNat

end

end A163374.P11170794526186417607

namespace A163374

/-- `A183063(2*A062821(n+1))` -/
def P11170794526186417607.Spec : Prop :=
  ∀ n, P11170794526186417607.a n = A163374 (n + 1)

end A163374

/-! ## A163374.P11222245415482660341

`A010553(1-A051953(n+1)+n)`
-/

namespace A163374.P11222245415482660341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010553 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A163374.P11222245415482660341

namespace A163374

/-- `A010553(1-A051953(n+1)+n)` -/
def P11222245415482660341.Spec : Prop :=
  ∀ n, P11222245415482660341.a n = A163374 (n + 1)

end A163374

/-! ## A163374.P17383967354836146480

`A322483(∏{e}[A000010(n+1), #+1]²)`
-/

namespace A163374.P17383967354836146480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)) ^ 2)

end

end A163374.P17383967354836146480

namespace A163374

/-- `A322483(∏{e}[A000010(n+1), #+1]²)` -/
def P17383967354836146480.Spec : Prop :=
  ∀ n, P17383967354836146480.a n = A163374 (n + 1)

end A163374

/-! ## A163374.P2090629157909642499

`A000005(∏{e}[A109606(n+1)+1, #+1])`
-/

namespace A163374.P2090629157909642499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A163374.P2090629157909642499

namespace A163374

/-- `A000005(∏{e}[A109606(n+1)+1, #+1])` -/
def P2090629157909642499.Spec : Prop :=
  ∀ n, P2090629157909642499.a n = A163374 (n + 1)

end A163374

/-! ## A163374.P17149860295564583967

`∏{e}[A032741(A109606(n+1)+1)+1, #+1]`
-/

namespace A163374.P17149860295564583967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A109606 (n + 1) + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A163374.P17149860295564583967

namespace A163374

/-- `∏{e}[A032741(A109606(n+1)+1)+1, #+1]` -/
def P17149860295564583967.Spec : Prop :=
  ∀ n, (P17149860295564583967.a n : ℤ) = A163374 (n + 1)

end A163374

/-! ## A163374.P11335311030045244785

`A000005(A000005((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))`
-/

namespace A163374.P11335311030045244785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat).toNat

end

end A163374.P11335311030045244785

namespace A163374

/-- `A000005(A000005((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))` -/
def P11335311030045244785.Spec : Prop :=
  ∀ n, P11335311030045244785.a n = A163374 (n + 1)

end A163374

/-! ## A163374.P1363424487425495341

`A000005(A000005(Δ[A002088(n)]))`
-/

namespace A163374.P1363424487425495341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (f1 (n + 1) - f1 n).toNat).toNat

end

end A163374.P1363424487425495341

namespace A163374

/-- `A000005(A000005(Δ[A002088(n)]))` -/
def P1363424487425495341.Spec : Prop :=
  ∀ n, P1363424487425495341.a n = A163374 (n + 1)

end A163374

/-! ## A163374.P10820391568191158204

`A000005(A000005(Δ[A005728(n)]))`
-/

namespace A163374.P10820391568191158204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (f1 (n + 1) - f1 n).toNat).toNat

end

end A163374.P10820391568191158204

namespace A163374

/-- `A000005(A000005(Δ[A005728(n)]))` -/
def P10820391568191158204.Spec : Prop :=
  ∀ n, P10820391568191158204.a n = A163374 (n + 1)

end A163374

/-! ## A163374.P15342906991542318327

`A000005(A000005(A349137(2*n+1)))`
-/

namespace A163374.P15342906991542318327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A349137 (2 * n + 1)).toNat).toNat

end

end A163374.P15342906991542318327

namespace A163374

/-- `A000005(A000005(A349137(2*n+1)))` -/
def P15342906991542318327.Spec : Prop :=
  ∀ n, P15342906991542318327.a n = A163374 (n + 1)

end A163374

/-! ## A163374.P1154306697811400381

`A000005(A193453(n+1)+A193386(n+1))`
-/

namespace A163374.P1154306697811400381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A193453 (n + 1) + A193386 (n + 1)).toNat

end

end A163374.P1154306697811400381

namespace A163374

/-- `A000005(A193453(n+1)+A193386(n+1))` -/
def P1154306697811400381.Spec : Prop :=
  ∀ n, P1154306697811400381.a n = A163374 (n + 1)

end A163374

/-! ## A163374.P1494726373133305062

`A000005(A385122(n+1)+A163109(n+1))`
-/

namespace A163374.P1494726373133305062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A385122 (n + 1) + A163109 (n + 1)).toNat

end

end A163374.P1494726373133305062

namespace A163374

/-- `A000005(A385122(n+1)+A163109(n+1))` -/
def P1494726373133305062.Spec : Prop :=
  ∀ n, P1494726373133305062.a n = A163374 (n + 1)

end A163374

/-! ## A163374.P76234912936868538

`A000005(A000005(n+1-A051953(n+1)))`
-/

namespace A163374.P76234912936868538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 ((n + 1 : ℤ) - A051953 (n + 1)).toNat).toNat

end

end A163374.P76234912936868538

namespace A163374

/-- `A000005(A000005(n+1-A051953(n+1)))` -/
def P76234912936868538.Spec : Prop :=
  ∀ n, P76234912936868538.a n = A163374 (n + 1)

end A163374

/-! ## A163374.P5308339414299034848

`A000005(A000005(A002618(n+1)/(n+1)))`
-/

namespace A163374.P5308339414299034848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A163374.P5308339414299034848

namespace A163374

/-- `A000005(A000005(A002618(n+1)/(n+1)))` -/
def P5308339414299034848.Spec : Prop :=
  ∀ n, P5308339414299034848.a n = A163374 (n + 1)

end A163374

/-! ## A163374.P16461489565996344890

`A000005(A000005(A062355(n+1)/A000005(n+1)))`
-/

namespace A163374.P16461489565996344890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (SequenceMachineLib.roundAway ((A062355 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ))).toNat).toNat

end

end A163374.P16461489565996344890

namespace A163374

/-- `A000005(A000005(A062355(n+1)/A000005(n+1)))` -/
def P16461489565996344890.Spec : Prop :=
  ∀ n, P16461489565996344890.a n = A163374 (n + 1)

end A163374

/-! ## A163374.P2336923892296718813

`A000005(A000005(A067541(2*n+1)))`
-/

namespace A163374.P2336923892296718813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A067541 (2 * n + 1)).toNat).toNat

end

end A163374.P2336923892296718813

namespace A163374

/-- `A000005(A000005(A067541(2*n+1)))` -/
def P2336923892296718813.Spec : Prop :=
  ∀ n, P2336923892296718813.a n = A163374 (n + 1)

end A163374

/-!
# A163375: a(n) = sigma(tau(phi(n))).

The programs for A163375, the canonical program `A163375.P9377041068603477864` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163375 has offset 1).

The definition of A163375 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163375.P7716460347823859183

`A062069(A000010(n+1))`
-/

namespace A163375.P7716460347823859183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (A000010 (n + 1)).toNat

end

end A163375.P7716460347823859183

namespace A163375

/-- `A062069(A000010(n+1))` -/
def P7716460347823859183.Spec : Prop :=
  ∀ n, P7716460347823859183.a n = A163375 (n + 1)

end A163375

/-! ## A163375.P7213339150146037673

`A000203(A062821(n+1))`
-/

namespace A163375.P7213339150146037673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A062821 (n + 1)).toNat

end

end A163375.P7213339150146037673

namespace A163375

/-- `A000203(A062821(n+1))` -/
def P7213339150146037673.Spec : Prop :=
  ∀ n, P7213339150146037673.a n = A163375 (n + 1)

end A163375

/-! ## A163375.P9377041068603477864

`A000203(A000005(A000010(n+1)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163375

/-- `A000203(A000005(A000010(n+1)))` -/
def P9377041068603477864.Spec : Prop :=
  ∀ n, P9377041068603477864.a n = A163375 (n + 1)

theorem P9377041068603477864.correct : P9377041068603477864.Spec := by
  intro n
  simp only [A163375, Nat.add_sub_cancel]

end A163375

/-! ## A163375.P14954031755768053367

`A062069(A277906(n+1))`
-/

namespace A163375.P14954031755768053367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (A277906 (n + 1)).toNat

end

end A163375.P14954031755768053367

namespace A163375

/-- `A062069(A277906(n+1))` -/
def P14954031755768053367.Spec : Prop :=
  ∀ n, P14954031755768053367.a n = A163375 (n + 1)

end A163375

/-! ## A163375.P9208265517030044554

`∑{d}[A000005(A109606(n+1)+1), #]`
-/

namespace A163375.P9208265517030044554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A109606 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163375.P9208265517030044554

namespace A163375

/-- `∑{d}[A000005(A109606(n+1)+1), #]` -/
def P9208265517030044554.Spec : Prop :=
  ∀ n, (P9208265517030044554.a n : ℤ) = A163375 (n + 1)

end A163375

/-! ## A163375.P822571750860989053

`∑{d}[A000005(A039649(n+1)-1), #]`
-/

namespace A163375.P822571750860989053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A039649 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163375.P822571750860989053

namespace A163375

/-- `∑{d}[A000005(A039649(n+1)-1), #]` -/
def P822571750860989053.Spec : Prop :=
  ∀ n, (P822571750860989053.a n : ℤ) = A163375 (n + 1)

end A163375

/-! ## A163375.P8357141352614856565

`A000203(∏{e}[A000010(n+1), #+1])`
-/

namespace A163375.P8357141352614856565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A163375.P8357141352614856565

namespace A163375

/-- `A000203(∏{e}[A000010(n+1), #+1])` -/
def P8357141352614856565.Spec : Prop :=
  ∀ n, P8357141352614856565.a n = A163375 (n + 1)

end A163375

/-! ## A163375.P11907059068793360986

`∑{d}[A000005(n-A219428(n+1)), #]`
-/

namespace A163375.P11907059068793360986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n : ℤ) - A219428 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163375.P11907059068793360986

namespace A163375

/-- `∑{d}[A000005(n-A219428(n+1)), #]` -/
def P11907059068793360986.Spec : Prop :=
  ∀ n, (P11907059068793360986.a n : ℤ) = A163375 (n + 1)

end A163375

/-! ## A163375.P14471831174501563751

`∑{d}[∑{d}[A000010(n+1), A054977(#)], #]`
-/

namespace A163375.P14471831174501563751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A054977 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163375.P14471831174501563751

namespace A163375

/-- `∑{d}[∑{d}[A000010(n+1), A054977(#)], #]` -/
def P14471831174501563751.Spec : Prop :=
  ∀ n, (P14471831174501563751.a n : ℤ) = A163375 (n + 1)

end A163375

/-! ## A163375.P280320166174131661

`∑{d}[∑{d}[A000010(n+1), A057427(#)], #]`
-/

namespace A163375.P280320166174131661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A057427 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163375.P280320166174131661

namespace A163375

/-- `∑{d}[∑{d}[A000010(n+1), A057427(#)], #]` -/
def P280320166174131661.Spec : Prop :=
  ∀ n, (P280320166174131661.a n : ℤ) = A163375 (n + 1)

end A163375

/-! ## A163375.P6566693017808147045

`∑{d}[A000005(1-A051953(n+1)+n), #]`
-/

namespace A163375.P6566693017808147045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (1 - A051953 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163375.P6566693017808147045

namespace A163375

/-- `∑{d}[A000005(1-A051953(n+1)+n), #]` -/
def P6566693017808147045.Spec : Prop :=
  ∀ n, (P6566693017808147045.a n : ℤ) = A163375 (n + 1)

end A163375

/-! ## A163375.P16373159260323993801

`∑{d}[A000005((n+1)/∏{p}[n+1, #]*A173557(n+1)), #]`
-/

namespace A163375.P16373159260323993801
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163375.P16373159260323993801

namespace A163375

/-- `∑{d}[A000005((n+1)/∏{p}[n+1, #]*A173557(n+1)), #]` -/
def P16373159260323993801.Spec : Prop :=
  ∀ n, (P16373159260323993801.a n : ℤ) = A163375 (n + 1)

end A163375

/-! ## A163375.P6945868577423602653

`A000203(A000005((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))`
-/

namespace A163375.P6945868577423602653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat).toNat

end

end A163375.P6945868577423602653

namespace A163375

/-- `A000203(A000005((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))` -/
def P6945868577423602653.Spec : Prop :=
  ∀ n, P6945868577423602653.a n = A163375 (n + 1)

end A163375

/-! ## A163375.P12749936864817019721

`A069290(A000005(A000010(n+1))²)`
-/

namespace A163375.P12749936864817019721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A000005 (A000010 (n + 1)).toNat ^ 2).toNat

end

end A163375.P12749936864817019721

namespace A163375

/-- `A069290(A000005(A000010(n+1))²)` -/
def P12749936864817019721.Spec : Prop :=
  ∀ n, P12749936864817019721.a n = A163375 (n + 1)

end A163375

/-! ## A163375.P7177996784652453349

`A000203(A000005(A349137(2*n+1)))`
-/

namespace A163375.P7177996784652453349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000005 (A349137 (2 * n + 1)).toNat).toNat

end

end A163375.P7177996784652453349

namespace A163375

/-- `A000203(A000005(A349137(2*n+1)))` -/
def P7177996784652453349.Spec : Prop :=
  ∀ n, P7177996784652453349.a n = A163375 (n + 1)

end A163375

/-! ## A163375.P12659837887470144773

`A000203(A000005(n+1-A051953(n+1)))`
-/

namespace A163375.P12659837887470144773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000005 ((n + 1 : ℤ) - A051953 (n + 1)).toNat).toNat

end

end A163375.P12659837887470144773

namespace A163375

/-- `A000203(A000005(n+1-A051953(n+1)))` -/
def P12659837887470144773.Spec : Prop :=
  ∀ n, P12659837887470144773.a n = A163375 (n + 1)

end A163375

/-! ## A163375.P13711184986290499184

`A062069(A249353(n+1)-A051027(n+1))`
-/

namespace A163375.P13711184986290499184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (A249353 (n + 1) - A051027 (n + 1)).toNat

end

end A163375.P13711184986290499184

namespace A163375

/-- `A062069(A249353(n+1)-A051027(n+1))` -/
def P13711184986290499184.Spec : Prop :=
  ∀ n, P13711184986290499184.a n = A163375 (n + 1)

end A163375

/-! ## A163375.P17125281539376308732

`A000203(A000005(A002618(n+1)/(n+1)))`
-/

namespace A163375.P17125281539376308732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000005 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A163375.P17125281539376308732

namespace A163375

/-- `A000203(A000005(A002618(n+1)/(n+1)))` -/
def P17125281539376308732.Spec : Prop :=
  ∀ n, P17125281539376308732.a n = A163375 (n + 1)

end A163375

/-! ## A163375.P10643219493059448621

`∑{d}[A000005(A062355(n+1)/A000005(n+1)), #]`
-/

namespace A163375.P10643219493059448621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A062355 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163375.P10643219493059448621

namespace A163375

/-- `∑{d}[A000005(A062355(n+1)/A000005(n+1)), #]` -/
def P10643219493059448621.Spec : Prop :=
  ∀ n, (P10643219493059448621.a n : ℤ) = A163375 (n + 1)

end A163375

/-! ## A163375.P946519589794789178

`A000203(A299480(A002246(n+1)))`
-/

namespace A163375.P946519589794789178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A299480 (A002246 (n + 1)).toNat).toNat

end

end A163375.P946519589794789178

namespace A163375

/-- `A000203(A299480(A002246(n+1)))` -/
def P946519589794789178.Spec : Prop :=
  ∀ n, P946519589794789178.a n = A163375 (n + 1)

end A163375

/-!
# A163376: a(n) = phi(tau(phi(n))).

The programs for A163376, the canonical program `A163376.P6895278780957745168` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163376 has offset 1).

The definition of A163376 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163376.P15642499836636086910

`A000010(A062821(n+1))`
-/

namespace A163376.P15642499836636086910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A062821 (n + 1)).toNat

end

end A163376.P15642499836636086910

namespace A163376

/-- `A000010(A062821(n+1))` -/
def P15642499836636086910.Spec : Prop :=
  ∀ n, P15642499836636086910.a n = A163376 (n + 1)

end A163376

/-! ## A163376.P1916051874338040551

`A163109(A000010(n+1))`
-/

namespace A163376.P1916051874338040551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (A000010 (n + 1)).toNat

end

end A163376.P1916051874338040551

namespace A163376

/-- `A163109(A000010(n+1))` -/
def P1916051874338040551.Spec : Prop :=
  ∀ n, P1916051874338040551.a n = A163376 (n + 1)

end A163376

/-! ## A163376.P6895278780957745168

`A000010(A000005(A000010(n+1)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163376

/-- `A000010(A000005(A000010(n+1)))` -/
def P6895278780957745168.Spec : Prop :=
  ∀ n, P6895278780957745168.a n = A163376 (n + 1)

theorem P6895278780957745168.correct : P6895278780957745168.Spec := by
  intro n
  simp only [A163376, Nat.add_sub_cancel]

end A163376

/-! ## A163376.P13523054904363209403

`A163109(Δ[A002088(n)])`
-/

namespace A163376.P13523054904363209403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (f1 (n + 1) - f1 n).toNat

end

end A163376.P13523054904363209403

namespace A163376

/-- `A163109(Δ[A002088(n)])` -/
def P13523054904363209403.Spec : Prop :=
  ∀ n, P13523054904363209403.a n = A163376 (n + 1)

end A163376

/-! ## A163376.P7866723534738172532

`A163109(A277906(n+1))`
-/

namespace A163376.P7866723534738172532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (A277906 (n + 1)).toNat

end

end A163376.P7866723534738172532

namespace A163376

/-- `A163109(A277906(n+1))` -/
def P7866723534738172532.Spec : Prop :=
  ∀ n, P7866723534738172532.a n = A163376 (n + 1)

end A163376

/-! ## A163376.P17262418503578618334

`A163109(A109606(n+1)+1)`
-/

namespace A163376.P17262418503578618334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (A109606 (n + 1) + 1).toNat

end

end A163376.P17262418503578618334

namespace A163376

/-- `A163109(A109606(n+1)+1)` -/
def P17262418503578618334.Spec : Prop :=
  ∀ n, P17262418503578618334.a n = A163376 (n + 1)

end A163376

/-! ## A163376.P5365515957140068010

`A163109(A039649(n+1)-1)`
-/

namespace A163376.P5365515957140068010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (A039649 (n + 1) - 1).toNat

end

end A163376.P5365515957140068010

namespace A163376

/-- `A163109(A039649(n+1)-1)` -/
def P5365515957140068010.Spec : Prop :=
  ∀ n, P5365515957140068010.a n = A163376 (n + 1)

end A163376

/-! ## A163376.P17450318761601807828

`A163109(1-A051953(n+1)+n)`
-/

namespace A163376.P17450318761601807828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163109 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A163376.P17450318761601807828

namespace A163376

/-- `A163109(1-A051953(n+1)+n)` -/
def P17450318761601807828.Spec : Prop :=
  ∀ n, P17450318761601807828.a n = A163376 (n + 1)

end A163376

/-! ## A163376.P4765890843467860647

`A000010(∏{e}[A000010(n+1), #+1])`
-/

namespace A163376.P4765890843467860647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A163376.P4765890843467860647

namespace A163376

/-- `A000010(∏{e}[A000010(n+1), #+1])` -/
def P4765890843467860647.Spec : Prop :=
  ∀ n, P4765890843467860647.a n = A163376 (n + 1)

end A163376

/-! ## A163376.P10820257063844067474

`A000010(A032741(A000010(n+1))+1)`
-/

namespace A163376.P10820257063844067474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A032741 (A000010 (n + 1)).toNat + 1).toNat

end

end A163376.P10820257063844067474

namespace A163376

/-- `A000010(A032741(A000010(n+1))+1)` -/
def P10820257063844067474.Spec : Prop :=
  ∀ n, P10820257063844067474.a n = A163376 (n + 1)

end A163376

/-! ## A163376.P7923202598226297461

`A000010(A023645(A000010(n+1))+2)`
-/

namespace A163376.P7923202598226297461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A023645 (A000010 (n + 1)).toNat + 2).toNat

end

end A163376.P7923202598226297461

namespace A163376

/-- `A000010(A023645(A000010(n+1))+2)` -/
def P7923202598226297461.Spec : Prop :=
  ∀ n, P7923202598226297461.a n = A163376 (n + 1)

end A163376

/-! ## A163376.P7280499490343773181

`A000010(A070824(A000010(n+1))+2)`
-/

namespace A163376.P7280499490343773181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A070824 (A000010 (n + 1)).toNat + 2).toNat

end

end A163376.P7280499490343773181

namespace A163376

/-- `A000010(A070824(A000010(n+1))+2)` -/
def P7280499490343773181.Spec : Prop :=
  ∀ n, P7280499490343773181.a n = A163376 (n + 1)

end A163376

/-! ## A163376.P2492172176948219912

`A000010(A320111(2*A000010(n+1)))`
-/

namespace A163376.P2492172176948219912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A320111 (2 * A000010 (n + 1)).toNat).toNat

end

end A163376.P2492172176948219912

namespace A163376

/-- `A000010(A320111(2*A000010(n+1)))` -/
def P2492172176948219912.Spec : Prop :=
  ∀ n, P2492172176948219912.a n = A163376 (n + 1)

end A163376

/-! ## A163376.P7856014448417741491

`A000010(∑{d}[A000010(n+1), A054977(#)])`
-/

namespace A163376.P7856014448417741491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 d).toNat

end

end A163376.P7856014448417741491

namespace A163376

/-- `A000010(∑{d}[A000010(n+1), A054977(#)])` -/
def P7856014448417741491.Spec : Prop :=
  ∀ n, P7856014448417741491.a n = A163376 (n + 1)

end A163376

/-! ## A163376.P16734641277770004412

`A000010(∑{d}[A000010(n+1), A057427(#)])`
-/

namespace A163376.P16734641277770004412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d).toNat

end

end A163376.P16734641277770004412

namespace A163376

/-- `A000010(∑{d}[A000010(n+1), A057427(#)])` -/
def P16734641277770004412.Spec : Prop :=
  ∀ n, P16734641277770004412.a n = A163376 (n + 1)

end A163376

/-! ## A163376.P229787712759730883

`A000010(∑{d}[A000010(n+1), A008836(#)²])`
-/

namespace A163376.P229787712759730883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, A008836 d ^ 2).toNat

end

end A163376.P229787712759730883

namespace A163376

/-- `A000010(∑{d}[A000010(n+1), A008836(#)²])` -/
def P229787712759730883.Spec : Prop :=
  ∀ n, P229787712759730883.a n = A163376 (n + 1)

end A163376

/-! ## A163376.P7783038156953642506

`A000010(∑{d}[A000010(n+1), A057428(#)²])`
-/

namespace A163376.P7783038156953642506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, A057428 d ^ 2).toNat

end

end A163376.P7783038156953642506

namespace A163376

/-- `A000010(∑{d}[A000010(n+1), A057428(#)²])` -/
def P7783038156953642506.Spec : Prop :=
  ∀ n, P7783038156953642506.a n = A163376 (n + 1)

end A163376

/-! ## A163376.P11395457421882639900

`A000010(∑{d}[A000010(n+1), A062157(#)²])`
-/

namespace A163376.P11395457421882639900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, A062157 d ^ 2).toNat

end

end A163376.P11395457421882639900

namespace A163376

/-- `A000010(∑{d}[A000010(n+1), A062157(#)²])` -/
def P11395457421882639900.Spec : Prop :=
  ∀ n, P11395457421882639900.a n = A163376 (n + 1)

end A163376

/-! ## A163376.P4691249673270007251

`A000010(∑{d}[A000010(n+1), A076479(#)²])`
-/

namespace A163376.P4691249673270007251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, A076479 d ^ 2).toNat

end

end A163376.P4691249673270007251

namespace A163376

/-- `A000010(∑{d}[A000010(n+1), A076479(#)²])` -/
def P4691249673270007251.Spec : Prop :=
  ∀ n, P4691249673270007251.a n = A163376 (n + 1)

end A163376

/-! ## A163376.P183089442583913054

`A000010(∑{d}[A000010(n+1), A153881(#)²])`
-/

namespace A163376.P183089442583913054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n).natAbs, A153881 d ^ 2).toNat

end

end A163376.P183089442583913054

namespace A163376

/-- `A000010(∑{d}[A000010(n+1), A153881(#)²])` -/
def P183089442583913054.Spec : Prop :=
  ∀ n, P183089442583913054.a n = A163376 (n + 1)

end A163376

/-!
# A163377: a(n) = tau(phi(tau(n))).

The programs for A163377, the canonical program `A163377.P15752887626135507846` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163377 has offset 1).

The definition of A163377 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163377.P12471734662578435157

`A062821(A000005(n+1))`
-/

namespace A163377.P12471734662578435157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A000005 (n + 1)).toNat

end

end A163377.P12471734662578435157

namespace A163377

/-- `A062821(A000005(n+1))` -/
def P12471734662578435157.Spec : Prop :=
  ∀ n, P12471734662578435157.a n = A163377 (n + 1)

end A163377

/-! ## A163377.P3373265399443744543

`A000005(A163109(n+1))`
-/

namespace A163377.P3373265399443744543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A163109 (n + 1)).toNat

end

end A163377.P3373265399443744543

namespace A163377

/-- `A000005(A163109(n+1))` -/
def P3373265399443744543.Spec : Prop :=
  ∀ n, P3373265399443744543.a n = A163377 (n + 1)

end A163377

/-! ## A163377.P15752887626135507846

`A000005(A000010(A000005(n+1)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163377

/-- `A000005(A000010(A000005(n+1)))` -/
def P15752887626135507846.Spec : Prop :=
  ∀ n, P15752887626135507846.a n = A163377 (n + 1)

theorem P15752887626135507846.correct : P15752887626135507846.Spec := by
  intro n
  simp only [A163377, Nat.add_sub_cancel]

end A163377

/-! ## A163377.P3277230798692918123

`∏{e}[A000010(∏{e}[n+1, #+1]), #+1]`
-/

namespace A163377.P3277230798692918123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A163377.P3277230798692918123

namespace A163377

/-- `∏{e}[A000010(∏{e}[n+1, #+1]), #+1]` -/
def P3277230798692918123.Spec : Prop :=
  ∀ n, (P3277230798692918123.a n : ℤ) = A163377 (n + 1)

end A163377

/-! ## A163377.P7846377469974759532

`∏{e}[A039649(∏{e}[n+1, #+1])-1, #+1]`
-/

namespace A163377.P7846377469974759532
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A163377.P7846377469974759532

namespace A163377

/-- `∏{e}[A039649(∏{e}[n+1, #+1])-1, #+1]` -/
def P7846377469974759532.Spec : Prop :=
  ∀ n, (P7846377469974759532.a n : ℤ) = A163377 (n + 1)

end A163377

/-! ## A163377.P15361457821622653694

`∏{e}[A000010(Δ[A006218(n)]), #+1]`
-/

namespace A163377.P15361457821622653694
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A163377.P15361457821622653694

namespace A163377

/-- `∏{e}[A000010(Δ[A006218(n)]), #+1]` -/
def P15361457821622653694.Spec : Prop :=
  ∀ n, (P15361457821622653694.a n : ℤ) = A163377 (n + 1)

end A163377

/-! ## A163377.P11472125313246095347

`A000005(A109606(∏{e}[n+1, #+1])+1)`
-/

namespace A163377.P11472125313246095347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A109606 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) + 1).toNat

end

end A163377.P11472125313246095347

namespace A163377

/-- `A000005(A109606(∏{e}[n+1, #+1])+1)` -/
def P11472125313246095347.Spec : Prop :=
  ∀ n, P11472125313246095347.a n = A163377 (n + 1)

end A163377

/-! ## A163377.P5480127208903324444

`A000005(A057828(A000005(n+1)²))`
-/

namespace A163377.P5480127208903324444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A057828 (A000005 (n + 1) ^ 2).toNat).toNat

end

end A163377.P5480127208903324444

namespace A163377

/-- `A000005(A057828(A000005(n+1)²))` -/
def P5480127208903324444.Spec : Prop :=
  ∀ n, P5480127208903324444.a n = A163377 (n + 1)

end A163377

/-! ## A163377.P7347035198601223795

`A000005(∑{d}[A000005(n+1), A007431(#)])`
-/

namespace A163377.P7347035198601223795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d).toNat

end

end A163377.P7347035198601223795

namespace A163377

/-- `A000005(∑{d}[A000005(n+1), A007431(#)])` -/
def P7347035198601223795.Spec : Prop :=
  ∀ n, P7347035198601223795.a n = A163377 (n + 1)

end A163377

/-! ## A163377.P5483604321191714451

`A000005(A054522(2*A000005(n+1)²))`
-/

namespace A163377.P5483604321191714451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A054522 (2 * A000005 (n + 1) ^ 2).toNat).toNat

end

end A163377.P5483604321191714451

namespace A163377

/-- `A000005(A054522(2*A000005(n+1)²))` -/
def P5483604321191714451.Spec : Prop :=
  ∀ n, P5483604321191714451.a n = A163377 (n + 1)

end A163377

/-! ## A163377.P16326023059187911168

`A062821(A183063(n+1)+A001227(n+1))`
-/

namespace A163377.P16326023059187911168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A183063 (n + 1) + A001227 (n + 1)).toNat

end

end A163377.P16326023059187911168

namespace A163377

/-- `A062821(A183063(n+1)+A001227(n+1))` -/
def P16326023059187911168.Spec : Prop :=
  ∀ n, P16326023059187911168.a n = A163377 (n + 1)

end A163377

/-! ## A163377.P5075079046223257267

`A000005(A000005(n+1)-A051953(A000005(n+1)))`
-/

namespace A163377.P5075079046223257267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1) - A051953 (A000005 (n + 1)).toNat).toNat

end

end A163377.P5075079046223257267

namespace A163377

/-- `A000005(A000005(n+1)-A051953(A000005(n+1)))` -/
def P5075079046223257267.Spec : Prop :=
  ∀ n, P5075079046223257267.a n = A163377 (n + 1)

end A163377

/-! ## A163377.P10286840378885882568

`A000005(A002618(A000005(n+1))/A000005(n+1))`
-/

namespace A163377.P10286840378885882568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A002618 (A000005 (n + 1)).toNat : ℚ) / (A000005 (n + 1) : ℚ))).toNat

end

end A163377.P10286840378885882568

namespace A163377

/-- `A000005(A002618(A000005(n+1))/A000005(n+1))` -/
def P10286840378885882568.Spec : Prop :=
  ∀ n, P10286840378885882568.a n = A163377 (n + 1)

end A163377

/-! ## A163377.P15456581919225505309

`A062821(A183063(2*(n+1)))`
-/

namespace A163377.P15456581919225505309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (A183063 (2 * (n + 1))).toNat

end

end A163377.P15456581919225505309

namespace A163377

/-- `A062821(A183063(2*(n+1)))` -/
def P15456581919225505309.Spec : Prop :=
  ∀ n, P15456581919225505309.a n = A163377 (n + 1)

end A163377

/-! ## A163377.P9520523187885065810

`A000005(A000005(A066781(A000005(n+1))/2))`
-/

namespace A163377.P9520523187885065810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (SequenceMachineLib.roundAway ((A066781 (A000005 (n + 1)).toNat : ℚ) / 2)).toNat).toNat

end

end A163377.P9520523187885065810

namespace A163377

/-- `A000005(A000005(A066781(A000005(n+1))/2))` -/
def P9520523187885065810.Spec : Prop :=
  ∀ n, P9520523187885065810.a n = A163377 (n + 1)

end A163377

/-!
# A163378: a(n) = sigma(phi(tau(n))).

The programs for A163378, the canonical program `A163378.P13784000735218118010` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163378 has offset 1).

The definition of A163378 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163378.P17396357428840585755

`A062402(A000005(n+1))`
-/

namespace A163378.P17396357428840585755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (A000005 (n + 1)).toNat

end

end A163378.P17396357428840585755

namespace A163378

/-- `A062402(A000005(n+1))` -/
def P17396357428840585755.Spec : Prop :=
  ∀ n, P17396357428840585755.a n = A163378 (n + 1)

end A163378

/-! ## A163378.P15969249080825138108

`A000203(A163109(n+1))`
-/

namespace A163378.P15969249080825138108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A163109 (n + 1)).toNat

end

end A163378.P15969249080825138108

namespace A163378

/-- `A000203(A163109(n+1))` -/
def P15969249080825138108.Spec : Prop :=
  ∀ n, P15969249080825138108.a n = A163378 (n + 1)

end A163378

/-! ## A163378.P13784000735218118010

`A000203(A000010(A000005(n+1)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163378

/-- `A000203(A000010(A000005(n+1)))` -/
def P13784000735218118010.Spec : Prop :=
  ∀ n, P13784000735218118010.a n = A163378 (n + 1)

theorem P13784000735218118010.correct : P13784000735218118010.Spec := by
  intro n
  simp only [A163378, Nat.add_sub_cancel]

end A163378

/-! ## A163378.P17946377337428452320

`∑{d}[A000010(∏{e}[n+1, #+1]), #]`
-/

namespace A163378.P17946377337428452320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163378.P17946377337428452320

namespace A163378

/-- `∑{d}[A000010(∏{e}[n+1, #+1]), #]` -/
def P17946377337428452320.Spec : Prop :=
  ∀ n, (P17946377337428452320.a n : ℤ) = A163378 (n + 1)

end A163378

/-! ## A163378.P12124713850931385482

`A062402(Δ[A006218(n)])`
-/

namespace A163378.P12124713850931385482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (f1 (n + 1) - f1 n).toNat

end

end A163378.P12124713850931385482

namespace A163378

/-- `A062402(Δ[A006218(n)])` -/
def P12124713850931385482.Spec : Prop :=
  ∀ n, P12124713850931385482.a n = A163378 (n + 1)

end A163378

/-! ## A163378.P397498203509799141

`∑{d}[A000010(Δ[A006218(n)]), #]`
-/

namespace A163378.P397498203509799141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163378.P397498203509799141

namespace A163378

/-- `∑{d}[A000010(Δ[A006218(n)]), #]` -/
def P397498203509799141.Spec : Prop :=
  ∀ n, (P397498203509799141.a n : ℤ) = A163378 (n + 1)

end A163378

/-! ## A163378.P12545787469963153215

`∑{d}[A000010(A325765(n)+1), #]`
-/

namespace A163378.P12545787469963153215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A325765 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163378.P12545787469963153215

namespace A163378

/-- `∑{d}[A000010(A325765(n)+1), #]` -/
def P12545787469963153215.Spec : Prop :=
  ∀ n, (P12545787469963153215.a n : ℤ) = A163378 (n + 1)

end A163378

/-! ## A163378.P770389247760412226

`∑{d}[A000010(A070824(n+1)+2), #]`
-/

namespace A163378.P770389247760412226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A070824 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163378.P770389247760412226

namespace A163378

/-- `∑{d}[A000010(A070824(n+1)+2), #]` -/
def P770389247760412226.Spec : Prop :=
  ∀ n, (P770389247760412226.a n : ℤ) = A163378 (n + 1)

end A163378

/-! ## A163378.P10633375388486828553

`A000203(A000010(∏{e}[n+1, #+1]))`
-/

namespace A163378.P10633375388486828553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A163378.P10633375388486828553

namespace A163378

/-- `A000203(A000010(∏{e}[n+1, #+1]))` -/
def P10633375388486828553.Spec : Prop :=
  ∀ n, P10633375388486828553.a n = A163378 (n + 1)

end A163378

/-! ## A163378.P5611455298095572533

`∑{d}[∑{d}[A000005(n+1), A007431(#)], #]`
-/

namespace A163378.P5611455298095572533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A007431 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163378.P5611455298095572533

namespace A163378

/-- `∑{d}[∑{d}[A000005(n+1), A007431(#)], #]` -/
def P5611455298095572533.Spec : Prop :=
  ∀ n, (P5611455298095572533.a n : ℤ) = A163378 (n + 1)

end A163378

/-! ## A163378.P8216345907415305140

`∑{d}[A000010(A038040(n+1)/(n+1)), #]`
-/

namespace A163378.P8216345907415305140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163378.P8216345907415305140

namespace A163378

/-- `∑{d}[A000010(A038040(n+1)/(n+1)), #]` -/
def P8216345907415305140.Spec : Prop :=
  ∀ n, (P8216345907415305140.a n : ℤ) = A163378 (n + 1)

end A163378

/-! ## A163378.P12583861857356320502

`A069290(A000010(A000005(n+1))²)`
-/

namespace A163378.P12583861857356320502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069290 (A000010 (A000005 (n + 1)).toNat ^ 2).toNat

end

end A163378.P12583861857356320502

namespace A163378

/-- `A069290(A000010(A000005(n+1))²)` -/
def P12583861857356320502.Spec : Prop :=
  ∀ n, P12583861857356320502.a n = A163378 (n + 1)

end A163378

/-! ## A163378.P1506247392728528040

`A000203(A000010(A320111(2*(n+1))))`
-/

namespace A163378.P1506247392728528040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 (A320111 (2 * (n + 1))).toNat).toNat

end

end A163378.P1506247392728528040

namespace A163378

/-- `A000203(A000010(A320111(2*(n+1))))` -/
def P1506247392728528040.Spec : Prop :=
  ∀ n, P1506247392728528040.a n = A163378 (n + 1)

end A163378

/-! ## A163378.P8182312306274993470

`A000203(A000010(n+1-A049820(n+1)))`
-/

namespace A163378.P8182312306274993470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 ((n + 1 : ℤ) - A049820 (n + 1)).toNat).toNat

end

end A163378.P8182312306274993470

namespace A163378

/-- `A000203(A000010(n+1-A049820(n+1)))` -/
def P8182312306274993470.Spec : Prop :=
  ∀ n, P8182312306274993470.a n = A163378 (n + 1)

end A163378

/-! ## A163378.P11098699091762114743

`A000203(A000010(A038040(n+1)/(n+1)))`
-/

namespace A163378.P11098699091762114743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 (SequenceMachineLib.roundAway ((A038040 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A163378.P11098699091762114743

namespace A163378

/-- `A000203(A000010(A038040(n+1)/(n+1)))` -/
def P11098699091762114743.Spec : Prop :=
  ∀ n, P11098699091762114743.a n = A163378 (n + 1)

end A163378

/-! ## A163378.P6048846204049268989

`∑{d}[A000010(∑{d}[n+1, A057427(#)]), #]`
-/

namespace A163378.P6048846204049268989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f2 n), A057427 d).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163378.P6048846204049268989

namespace A163378

/-- `∑{d}[A000010(∑{d}[n+1, A057427(#)]), #]` -/
def P6048846204049268989.Spec : Prop :=
  ∀ n, (P6048846204049268989.a n : ℤ) = A163378 (n + 1)

end A163378

/-! ## A163378.P3457081909312100195

`A062402(A183063(2*(n+1)))`
-/

namespace A163378.P3457081909312100195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062402 (A183063 (2 * (n + 1))).toNat

end

end A163378.P3457081909312100195

namespace A163378

/-- `A062402(A183063(2*(n+1)))` -/
def P3457081909312100195.Spec : Prop :=
  ∀ n, P3457081909312100195.a n = A163378 (n + 1)

end A163378

/-! ## A163378.P17943490769347913820

`A000203(A000010(A069157(2*(n+1))))`
-/

namespace A163378.P17943490769347913820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 (A069157 (2 * (n + 1))).toNat).toNat

end

end A163378.P17943490769347913820

namespace A163378

/-- `A000203(A000010(A069157(2*(n+1))))` -/
def P17943490769347913820.Spec : Prop :=
  ∀ n, P17943490769347913820.a n = A163378 (n + 1)

end A163378

/-! ## A163378.P2681476286200527153

`∑{d}[A000010(A238353(∑[n+1])), #]`
-/

namespace A163378.P2681476286200527153
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A238353 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163378.P2681476286200527153

namespace A163378

/-- `∑{d}[A000010(A238353(∑[n+1])), #]` -/
def P2681476286200527153.Spec : Prop :=
  ∀ n, (P2681476286200527153.a n : ℤ) = A163378 (n + 1)

end A163378

/-! ## A163378.P1175329830035451343

`A000203(A000010(A046951((n+1)²)))`
-/

namespace A163378.P1175329830035451343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A000010 (A046951 ((n + 1) ^ 2)).toNat).toNat

end

end A163378.P1175329830035451343

namespace A163378

/-- `A000203(A000010(A046951((n+1)²)))` -/
def P1175329830035451343.Spec : Prop :=
  ∀ n, P1175329830035451343.a n = A163378 (n + 1)

end A163378

/-!
# A163379: a(n) = phi(phi(tau(n))).

The programs for A163379, the canonical program `A163379.P17513264851460552106` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163379 has offset 1).

The definition of A163379 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163379.P3742580953202349781

`A010554(A000005(n+1))`
-/

namespace A163379.P3742580953202349781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A000005 (n + 1)).toNat

end

end A163379.P3742580953202349781

namespace A163379

/-- `A010554(A000005(n+1))` -/
def P3742580953202349781.Spec : Prop :=
  ∀ n, P3742580953202349781.a n = A163379 (n + 1)

end A163379

/-! ## A163379.P13518678973797289166

`A000010(A163109(n+1))`
-/

namespace A163379.P13518678973797289166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A163109 (n + 1)).toNat

end

end A163379.P13518678973797289166

namespace A163379

/-- `A000010(A163109(n+1))` -/
def P13518678973797289166.Spec : Prop :=
  ∀ n, P13518678973797289166.a n = A163379 (n + 1)

end A163379

/-! ## A163379.P17513264851460552106

`A000010(A000010(A000005(n+1)))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163379

/-- `A000010(A000010(A000005(n+1)))` -/
def P17513264851460552106.Spec : Prop :=
  ∀ n, P17513264851460552106.a n = A163379 (n + 1)

theorem P17513264851460552106.correct : P17513264851460552106.Spec := by
  intro n
  simp only [A163379, Nat.add_sub_cancel]

end A163379

/-! ## A163379.P15408117569321078889

`A010554(A325765(n)+1)`
-/

namespace A163379.P15408117569321078889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A325765 n + 1).toNat

end

end A163379.P15408117569321078889

namespace A163379

/-- `A010554(A325765(n)+1)` -/
def P15408117569321078889.Spec : Prop :=
  ∀ n, P15408117569321078889.a n = A163379 (n + 1)

end A163379

/-! ## A163379.P12266000934051102830

`A049099(3*A000005(n+1))`
-/

namespace A163379.P12266000934051102830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (3 * A000005 (n + 1)).toNat

end

end A163379.P12266000934051102830

namespace A163379

/-- `A049099(3*A000005(n+1))` -/
def P12266000934051102830.Spec : Prop :=
  ∀ n, P12266000934051102830.a n = A163379 (n + 1)

end A163379

/-! ## A163379.P2609458976414243473

`A000010(A000010(∏{e}[n+1, #+1]))`
-/

namespace A163379.P2609458976414243473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A163379.P2609458976414243473

namespace A163379

/-- `A000010(A000010(∏{e}[n+1, #+1]))` -/
def P2609458976414243473.Spec : Prop :=
  ∀ n, P2609458976414243473.a n = A163379 (n + 1)

end A163379

/-! ## A163379.P4367484295249720443

`A000010(A000010(∑{d}[n+1, gcd(n, #)]))`
-/

namespace A163379.P4367484295249720443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)).toNat

end

end A163379.P4367484295249720443

namespace A163379

/-- `A000010(A000010(∑{d}[n+1, gcd(n, #)]))` -/
def P4367484295249720443.Spec : Prop :=
  ∀ n, P4367484295249720443.a n = A163379 (n + 1)

end A163379

/-! ## A163379.P4148556562958367047

`A000010(A000010(∑{d}[n+1, ((#+1)%2)!]))`
-/

namespace A163379.P4148556562958367047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (∑ d ∈ Nat.divisors (f1 n), Nat.factorial ((d + 1) % 2))).toNat

end

end A163379.P4148556562958367047

namespace A163379

/-- `A000010(A000010(∑{d}[n+1, ((#+1)%2)!]))` -/
def P4148556562958367047.Spec : Prop :=
  ∀ n, P4148556562958367047.a n = A163379 (n + 1)

end A163379

/-! ## A163379.P5886153822035560227

`A109606(A109606(∏{e}[n+1, #+1])+1)+1`
-/

namespace A163379.P5886153822035560227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (A109606 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) + 1).toNat + 1

end

end A163379.P5886153822035560227

namespace A163379

/-- `A109606(A109606(∏{e}[n+1, #+1])+1)+1` -/
def P5886153822035560227.Spec : Prop :=
  ∀ n, P5886153822035560227.a n = A163379 (n + 1)

end A163379

/-! ## A163379.P17319578907916848926

`A039649(A039649(∏{e}[n+1, #+1])-1)-1`
-/

namespace A163379.P17319578907916848926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (A039649 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) - 1).toNat - 1

end

end A163379.P17319578907916848926

namespace A163379

/-- `A039649(A039649(∏{e}[n+1, #+1])-1)-1` -/
def P17319578907916848926.Spec : Prop :=
  ∀ n, P17319578907916848926.a n = A163379 (n + 1)

end A163379

/-! ## A163379.P7703132731591509198

`A000010(A000010(∑{d}[n+1, #+1]-∑{d}[n+1, #]))`
-/

namespace A163379.P7703132731591509198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d)).toNat

end

end A163379.P7703132731591509198

namespace A163379

/-- `A000010(A000010(∑{d}[n+1, #+1]-∑{d}[n+1, #]))` -/
def P7703132731591509198.Spec : Prop :=
  ∀ n, P7703132731591509198.a n = A163379 (n + 1)

end A163379

/-! ## A163379.P6156459382228186659

`A000010(A000010(∑{d}[n+1, (((#+1)*(n+1))²+1)%2]))`
-/

namespace A163379.P6156459382228186659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (∑ d ∈ Nat.divisors (f1 n), (((d + 1) * (n + 1)) ^ 2 + 1) % 2)).toNat

end

end A163379.P6156459382228186659

namespace A163379

/-- `A000010(A000010(∑{d}[n+1, (((#+1)*(n+1))²+1)%2]))` -/
def P6156459382228186659.Spec : Prop :=
  ∀ n, P6156459382228186659.a n = A163379 (n + 1)

end A163379

/-! ## A163379.P12078029069650260821

`A010554(A096737(n+1))`
-/

namespace A163379.P12078029069650260821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A096737 (n + 1)).toNat

end

end A163379.P12078029069650260821

namespace A163379

/-- `A010554(A096737(n+1))` -/
def P12078029069650260821.Spec : Prop :=
  ∀ n, P12078029069650260821.a n = A163379 (n + 1)

end A163379

/-! ## A163379.P1052619119146171557

`A020639(A069740(∏{e}[n+1, #+1]))`
-/

namespace A163379.P1052619119146171557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A069740 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))).toNat

end

end A163379.P1052619119146171557

namespace A163379

/-- `A020639(A069740(∏{e}[n+1, #+1]))` -/
def P1052619119146171557.Spec : Prop :=
  ∀ n, P1052619119146171557.a n = A163379 (n + 1)

end A163379

/-! ## A163379.P8987899709664022679

`A337531(A282146(∏{e}[n+1, #+1])+1)`
-/

namespace A163379.P8987899709664022679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337531 (A282146 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) + 1).toNat

end

end A163379.P8987899709664022679

namespace A163379

/-- `A337531(A282146(∏{e}[n+1, #+1])+1)` -/
def P8987899709664022679.Spec : Prop :=
  ∀ n, P8987899709664022679.a n = A163379 (n + 1)

end A163379

/-!
# A163380: a(n) = the (decimal equivalent of the) largest integer that can be made by rotating the binary digits of n any number of positions to the left or right.

The programs for A163380, there is no canonical definition to state claims against.
-/

/-! ## A163380.P3528543287407720995

`A257697(2*n+3)`
-/

namespace A163380.P3528543287407720995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 (2 * n + 3)

end

end A163380.P3528543287407720995

/-! ## A163380.P7564926583170153581

`A053645(A256999(2*n+3))`
-/

namespace A163380.P7564926583170153581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A256999 (2 * n + 3)).toNat

end

end A163380.P7564926583170153581

/-! ## A163380.P12615864303025285841

`gcd(A000038(n), A257697(Δ[(n+1)²]))`
-/

namespace A163380.P12615864303025285841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A257697 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A163380.P12615864303025285841

/-! ## A163380.P3187742959985733796

`A257697(Δ[(n+1)²])%A193974(n)²`
-/

namespace A163380.P3187742959985733796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257697 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A193974 n ^ 2)

end

end A163380.P3187742959985733796

/-! ## A163380.P7315217151809144763

`A257697(Δ[(n+1)²])+A000007(n+1)`
-/

namespace A163380.P7315217151809144763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257697 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A000007 (n + 1)

end

end A163380.P7315217151809144763

/-! ## A163380.P1938714601576359452

`A256999(2*n+3)-A053644(2*(n+1))`
-/

namespace A163380.P1938714601576359452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 (2 * n + 3) - A053644 (2 * (n + 1))

end

end A163380.P1938714601576359452

/-! ## A163380.P4195508496623038505

`A257697(A144396(n+1))%A001248(n+1)`
-/

namespace A163380.P4195508496623038505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257697 (A144396 (n + 1)).toNat) (A001248 (n + 1))

end

end A163380.P4195508496623038505

/-! ## A163380.P1289534987730790890

`A257697(Δ[(n+1)²])/A014963(A008458(n))`
-/

namespace A163380.P1289534987730790890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257697 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / (A014963 (A008458 n).toNat : ℚ)

end

end A163380.P1289534987730790890

/-! ## A163380.P11380039201231465951

`A262689(A257697(Δ[(n+1)²])²)`
-/

namespace A163380.P11380039201231465951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A257697 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2).toNat

end

end A163380.P11380039201231465951

/-!
# A163381: a(n) = the (decimal equivalent of the) smallest integer that can be made by rotating the binary digits of n any number of positions to the left or right. a(n) in binary may contain fewer digits, after leading 0's are removed, than n written in binary has.

The programs for A163381, there is no canonical definition to state claims against.
-/

/-! ## A163381.P10109628573757626180

`A006257(A163382(n+1))`
-/

namespace A163381.P10109628573757626180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A163382 (n + 1)).toNat

end

end A163381.P10109628573757626180

/-! ## A163381.P666796893292958350

`A005408(A053645(A163382(n+1))%A005408(n))`
-/

namespace A163381.P666796893292958350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.tmod (A053645 (A163382 (n + 1)).toNat) (A005408 n)).toNat

end

end A163381.P666796893292958350

/-! ## A163381.P5309912327329901699

`A053645(2*A163382(n+1)+1)`
-/

namespace A163381.P5309912327329901699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (2 * A163382 (n + 1) + 1).toNat

end

end A163381.P5309912327329901699

/-! ## A163381.P2497956376659861140

`A053645(A163382(n+1)+A163382(n+1)+1)`
-/

namespace A163381.P2497956376659861140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A163382 (n + 1) + (A163382 (n + 1) + 1)).toNat

end

end A163381.P2497956376659861140

/-! ## A163381.P9701163786381335709

`A246591(2*A163382(n+1))`
-/

namespace A163381.P9701163786381335709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246591 (2 * A163382 (n + 1)).toNat

end

end A163381.P9701163786381335709

/-!
# A163382: a(n) = the (decimal equivalent of the) smallest integer that can be made by rotating the binary digits of n any number of positions to the left or right, where a(n) in binary must contain the same number of digits (without any leading 0's) as n written in binary.

The programs for A163382, there is no canonical definition to state claims against.
-/

/-! ## A163382.P9367500492263361648

`A004526(A163381(n+1)+A062383(n+1))`
-/

namespace A163382.P9367500492263361648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A163381 (n + 1) + A062383 (n + 1)).toNat

end

end A163382.P9367500492263361648

/-! ## A163382.P13794891273160434479

`A123108(A163381(n+1)+A062383(n+1))`
-/

namespace A163382.P13794891273160434479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A163381 (n + 1) + A062383 (n + 1)).toNat

end

end A163382.P13794891273160434479

/-! ## A163382.P13244497618115959200

`A267508(n+1)+A185284(A026741(n))`
-/

namespace A163382.P13244497618115959200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267508 (n + 1) + A185284 (A026741 n).toNat

end

end A163382.P13244497618115959200

/-! ## A163382.P5314279329004299059

`A267508(n+1)+A185284(A029579(n))`
-/

namespace A163382.P5314279329004299059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267508 (n + 1) + A185284 (A029579 n).toNat

end

end A163382.P5314279329004299059

/-! ## A163382.P1407252831245494453

`A267508(n+1)+A185284(A093178(n))`
-/

namespace A163382.P1407252831245494453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267508 (n + 1) + A185284 (A093178 n).toNat

end

end A163382.P1407252831245494453

/-!
# A163383: a(n) = (n-1)*2^n - 1.

The programs for A163383, the canonical program `A163383.P5653016590045004014` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163383 has offset 1).

The definition of A163383 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*2^(n+1)-1` (program `A163383.P5653016590045004014`, by `A163383.P5653016590045004014.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163383.P5653016590045004014

`n*2^(n+1)-1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163383

/-- `n*2^(n+1)-1` -/
def P5653016590045004014.Spec : Prop :=
  ∀ n, P5653016590045004014.a n = A163383 (n + 1)

theorem P5653016590045004014.correct : P5653016590045004014.Spec := by
  intro n
  simp only [A163383, Nat.add_sub_cancel]

end A163383

/-! ## A163383.P16812217377037081929

`ogf((1-8x+8x^2)/(-1+5x-8x^2+4x^3))`
-/

namespace A163383.P16812217377037081929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 8, -8] [1, -5, 8, -4] n

end

end A163383.P16812217377037081929

namespace A163383

/-- `ogf((1-8x+8x^2)/(-1+5x-8x^2+4x^3))` -/
def P16812217377037081929.Spec : Prop :=
  ∀ n, P16812217377037081929.a n = A163383 (n + 1)

end A163383

/-! ## A163383.P4349053867304273479

`or(n-1, n*∑[2^n])`
-/

namespace A163383.P4349053867304273479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A163383.P4349053867304273479

namespace A163383

/-- `or(n-1, n*∑[2^n])` -/
def P4349053867304273479.Spec : Prop :=
  ∀ n, P4349053867304273479.a n = A163383 (n + 1)

end A163383

/-! ## A163383.P13119100146727328961

`xor(n-1, n*∑[2^n])`
-/

namespace A163383.P13119100146727328961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A163383.P13119100146727328961

namespace A163383

/-- `xor(n-1, n*∑[2^n])` -/
def P13119100146727328961.Spec : Prop :=
  ∀ n, P13119100146727328961.a n = A163383 (n + 1)

end A163383

/-! ## A163383.P15165312250855844505

`∑[(n+1)*∑[2*a(n-1)]]` with `a(0)=-1, a(1)=3, a(2)=2`
-/

namespace A163383.P15165312250855844505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1, 3, 2] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163383.P15165312250855844505

namespace A163383

/-- `∑[(n+1)*∑[2*a(n-1)]]` -/
def P15165312250855844505.Spec : Prop :=
  ∀ n, P15165312250855844505.a n = A163383 (n + 1)

end A163383

/-! ## A163383.P8758603914310424955

`∑[(n+1)*A171449(n)]`
-/

namespace A163383.P8758603914310424955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A171449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163383.P8758603914310424955

namespace A163383

/-- `∑[(n+1)*A171449(n)]` -/
def P8758603914310424955.Spec : Prop :=
  ∀ n, P8758603914310424955.a n = A163383 (n + 1)

end A163383

/-! ## A163383.P6405664542623658359

`record[n*A077957(n)-1]`
-/

namespace A163383.P6405664542623658359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A077957 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163383.P6405664542623658359

namespace A163383

/-- `record[n*A077957(n)-1]` -/
def P6405664542623658359.Spec : Prop :=
  ∀ n, P6405664542623658359.a n = A163383 (n + 1)

end A163383

/-! ## A163383.P15990906501009258633

`record[n*A152166(n)-1]`
-/

namespace A163383.P15990906501009258633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A152166 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163383.P15990906501009258633

namespace A163383

/-- `record[n*A152166(n)-1]` -/
def P15990906501009258633.Spec : Prop :=
  ∀ n, P15990906501009258633.a n = A163383 (n + 1)

end A163383

/-! ## A163383.P3734377763189219100

`∑[∑[A001792(n)]-A000038(n)]`
-/

namespace A163383.P3734377763189219100
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163383.P3734377763189219100

namespace A163383

/-- `∑[∑[A001792(n)]-A000038(n)]` -/
def P3734377763189219100.Spec : Prop :=
  ∀ n, P3734377763189219100.a n = A163383 (n + 1)

end A163383

/-! ## A163383.P6128249113685762556

`(A048479(n)-3)/2`
-/

namespace A163383.P6128249113685762556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048479 n - 3 : ℚ) / 2

end

end A163383.P6128249113685762556

namespace A163383

/-- `(A048479(n)-3)/2` -/
def P6128249113685762556.Spec : Prop :=
  ∀ n, P6128249113685762556.a n = (A163383 (n + 1) : ℚ)

end A163383

/-! ## A163383.P6895149464774130666

`Δ[(n-2)*A126646(n)]`
-/

namespace A163383.P6895149464774130666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A126646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163383.P6895149464774130666

namespace A163383

/-- `Δ[(n-2)*A126646(n)]` -/
def P6895149464774130666.Spec : Prop :=
  ∀ n, P6895149464774130666.a n = A163383 (n + 1)

theorem P6895149464774130666.correct : P6895149464774130666.Spec := by
  intro n
  simp only [A163383, Nat.add_sub_cancel, A163383.P6895149464774130666.f1, A163383.P6895149464774130666.a, A163383.P5653016590045004014.a, A126646, A126646.P3746310572697910447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163383

/-! ## A163383.P18440172676176888076

`Δ[(n-2)*A286521(n)]`
-/

namespace A163383.P18440172676176888076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A286521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163383.P18440172676176888076

namespace A163383

/-- `Δ[(n-2)*A286521(n)]` -/
def P18440172676176888076.Spec : Prop :=
  ∀ n, P18440172676176888076.a n = A163383 (n + 1)

end A163383

/-! ## A163383.P10956113039586834630

`(4*A036289(n)-2)/2`
-/

namespace A163383.P10956113039586834630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A036289 n - 2 : ℚ) / 2

end

end A163383.P10956113039586834630

namespace A163383

/-- `(4*A036289(n)-2)/2` -/
def P10956113039586834630.Spec : Prop :=
  ∀ n, P10956113039586834630.a n = (A163383 (n + 1) : ℚ)

theorem P10956113039586834630.correct : P10956113039586834630.Spec := by
  intro n
  simp only [A163383, Nat.add_sub_cancel, A163383.P10956113039586834630.a, A163383.P5653016590045004014.a, A036289, A036289.P13525419631139213940.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163383

/-! ## A163383.P6563229278542729781

`Δ[(n-2)*∑[A000079(n)]]`
-/

namespace A163383.P6563229278542729781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163383.P6563229278542729781

namespace A163383

/-- `Δ[(n-2)*∑[A000079(n)]]` -/
def P6563229278542729781.Spec : Prop :=
  ∀ n, P6563229278542729781.a n = A163383 (n + 1)

end A163383

/-! ## A163383.P9876331902641984192

`Δ[∑[A000337(n)]-n-n]`
-/

namespace A163383.P9876331902641984192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163383.P9876331902641984192

namespace A163383

/-- `Δ[∑[A000337(n)]-n-n]` -/
def P9876331902641984192.Spec : Prop :=
  ∀ n, P9876331902641984192.a n = A163383 (n + 1)

end A163383

/-! ## A163383.P421954516042358088

`Δ[(n-2)*A000225(n+1)]`
-/

namespace A163383.P421954516042358088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A000225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163383.P421954516042358088

namespace A163383

/-- `Δ[(n-2)*A000225(n+1)]` -/
def P421954516042358088.Spec : Prop :=
  ∀ n, P421954516042358088.a n = A163383 (n + 1)

theorem P421954516042358088.correct : P421954516042358088.Spec := by
  intro n
  simp only [A163383, Nat.add_sub_cancel, A163383.P421954516042358088.f1, A163383.P421954516042358088.a, A163383.P5653016590045004014.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163383

/-! ## A163383.P2787521266264474990

`Δ[(n-2)*A255047(n+1)]`
-/

namespace A163383.P2787521266264474990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A255047 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163383.P2787521266264474990

namespace A163383

/-- `Δ[(n-2)*A255047(n+1)]` -/
def P2787521266264474990.Spec : Prop :=
  ∀ n, P2787521266264474990.a n = A163383 (n + 1)

end A163383

/-! ## A163383.P3121847430406564528

`Δ[(n-2)*A239678(n+3)]`
-/

namespace A163383.P3121847430406564528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A239678 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163383.P3121847430406564528

namespace A163383

/-- `Δ[(n-2)*A239678(n+3)]` -/
def P3121847430406564528.Spec : Prop :=
  ∀ n, P3121847430406564528.a n = A163383 (n + 1)

end A163383

/-! ## A163383.P9218000485952917679

`(n*A000079(n+2)-2)/2`
-/

namespace A163383.P9218000485952917679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000079 (n + 2) - 2 : ℚ) / 2

end

end A163383.P9218000485952917679

namespace A163383

/-- `(n*A000079(n+2)-2)/2` -/
def P9218000485952917679.Spec : Prop :=
  ∀ n, P9218000485952917679.a n = (A163383 (n + 1) : ℚ)

theorem P9218000485952917679.correct : P9218000485952917679.Spec := by
  intro n
  simp only [A163383, Nat.add_sub_cancel, A163383.P9218000485952917679.a, A163383.P5653016590045004014.a, A000079, A000079.P10855139691139572931.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163383

/-! ## A163383.P16010011274034531525

`(A192021(n+1)-A000079(n+1))/A000079(n)`
-/

namespace A163383.P16010011274034531525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192021 (n + 1) - A000079 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A163383.P16010011274034531525

namespace A163383

/-- `(A192021(n+1)-A000079(n+1))/A000079(n)` -/
def P16010011274034531525.Spec : Prop :=
  ∀ n, P16010011274034531525.a n = (A163383 (n + 1) : ℚ)

end A163383

/-!
# A163384: Values of n for which the ratio A161865/A161867 is greater than 1/2.

The programs for A163384, there is no canonical definition to state claims against.
-/

/-! ## A163384.P6661610055772699505

`lt[A014085(n)+1, A104481(n+1)]`
-/

namespace A163384.P6661610055772699505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A163384.P6661610055772699505

/-! ## A163384.P10147379840576069640

`lt[A014085(n)+2, A014085(n+1)]`
-/

namespace A163384.P10147379840576069640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A163384.P10147379840576069640

/-! ## A163384.P1213345747506266316

`lt[A161182(n+2), A161182(n+1)]`
-/

namespace A163384.P1213345747506266316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161182 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161182 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A163384.P1213345747506266316

/-! ## A163384.P14642120136047092532

`lt[A014085(n), A023443(A104481(n+1))]`
-/

namespace A163384.P14642120136047092532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A104481 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A163384.P14642120136047092532

/-! ## A163384.P3349118511788431194

`lt[A014085(n), A289207(A014085(n+1))]`
-/

namespace A163384.P3349118511788431194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A014085 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A163384.P3349118511788431194

/-!
# A163385: Primes p such that 3(p-3)-1 and 3(p-3)+1 are twin primes.

The programs for A163385, the canonical program `A163385.P13495843705850652275` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163385 has offset 1).

The definition of A163385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1864 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163385.P7381778569244486855

`p?[A177139(n+1)+2]`
-/

namespace A163385.P7381778569244486855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177139 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163385.P7381778569244486855

namespace A163385

/-- `p?[A177139(n+1)+2]` -/
def P7381778569244486855.Spec : Prop :=
  ∀ n, P7381778569244486855.a n = A163385 (n + 1)

theorem P7381778569244486855.correct : P7381778569244486855.Spec := by
  intro n
  simp only [A163385, Nat.add_sub_cancel, A163385.P7381778569244486855.f1, A163385.P7381778569244486855.a, A163385.P13495843705850652275.f1, A163385.P13495843705850652275.a, A002822, A002822.P1649574763564528316.a, A177139, A177139.P7505367858712148291.a, A014574, A014574.P4587706211531852143.a, A167379, A167379.P16470544176518882026.a, A129297, A129297.P6596998359982084627.f1, A129297.P6596998359982084627.f2, A129297.P6596998359982084627.a, A000010, A000010.P4673923239450215316.a, A063919, A063919.P11181265949704613022.a, A166597, A166597.P14552351031517696526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163385

/-! ## A163385.P15587695097291773533

`p?[A167379(n+1)+3]`
-/

namespace A163385.P15587695097291773533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167379 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163385.P15587695097291773533

namespace A163385

/-- `p?[A167379(n+1)+3]` -/
def P15587695097291773533.Spec : Prop :=
  ∀ n, P15587695097291773533.a n = A163385 (n + 1)

end A163385

/-! ## A163385.P13495843705850652275

`p?[2*A002822(n+1)+3]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A163385

/-- `p?[2*A002822(n+1)+3]` -/
def P13495843705850652275.Spec : Prop :=
  ∀ n, P13495843705850652275.a n = A163385 (n + 1)

theorem P13495843705850652275.correct : P13495843705850652275.Spec := by
  intro n
  simp only [A163385, Nat.add_sub_cancel]

end A163385

/-! ## A163385.P15707151264368927948

`record[A006530(2*A002822(n+1)+3)]`
-/

namespace A163385.P15707151264368927948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A002822 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163385.P15707151264368927948

namespace A163385

/-- `record[A006530(2*A002822(n+1)+3)]` -/
def P15707151264368927948.Spec : Prop :=
  ∀ n, P15707151264368927948.a n = A163385 (n + 1)

end A163385

/-! ## A163385.P16075015607804982995

`record[A020639(2*A002822(n+1)+3)]`
-/

namespace A163385.P16075015607804982995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A002822 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163385.P16075015607804982995

namespace A163385

/-- `record[A020639(2*A002822(n+1)+3)]` -/
def P16075015607804982995.Spec : Prop :=
  ∀ n, P16075015607804982995.a n = A163385 (n + 1)

end A163385

/-! ## A163385.P8349403657324168528

`record[A020639(2*(A014574(n+2)/6+1)+1)]`
-/

namespace A163385.P8349403657324168528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (2 * ((A014574 (n + 2) : ℚ) / 6 + 1) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163385.P8349403657324168528

namespace A163385

/-- `record[A020639(2*(A014574(n+2)/6+1)+1)]` -/
def P8349403657324168528.Spec : Prop :=
  ∀ n, P8349403657324168528.a n = A163385 (n + 1)

end A163385

/-! ## A163385.P15886538176751110754

`p?[record[A117563(n+1)+3]+1]`
-/

namespace A163385.P15886538176751110754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117563 (n + 1) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163385.P15886538176751110754

namespace A163385

/-- `p?[record[A117563(n+1)+3]+1]` -/
def P15886538176751110754.Spec : Prop :=
  ∀ n, P15886538176751110754.a n = A163385 (n + 1)

end A163385

/-! ## A163385.P7905117597663396794

`record[A006530(A001359(n+2)+10)]`
-/

namespace A163385.P7905117597663396794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001359 (n + 2) + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163385.P7905117597663396794

namespace A163385

/-- `record[A006530(A001359(n+2)+10)]` -/
def P7905117597663396794.Spec : Prop :=
  ∀ n, P7905117597663396794.a n = A163385 (n + 1)

end A163385

/-! ## A163385.P6863240475893590798

`record[A006530(A001097(2*(n+1))+10)]`
-/

namespace A163385.P6863240475893590798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A001097 (2 * (n + 1)) + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163385.P6863240475893590798

namespace A163385

/-- `record[A006530(A001097(2*(n+1))+10)]` -/
def P6863240475893590798.Spec : Prop :=
  ∀ n, P6863240475893590798.a n = A163385 (n + 1)

end A163385

/-! ## A163385.P2591467099069070793

`record[A014963(A177139(n+1)+2)]`
-/

namespace A163385.P2591467099069070793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A177139 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163385.P2591467099069070793

namespace A163385

/-- `record[A014963(A177139(n+1)+2)]` -/
def P2591467099069070793.Spec : Prop :=
  ∀ n, P2591467099069070793.a n = A163385 (n + 1)

end A163385

/-! ## A163385.P173113626297178427

`record[A014963(2*A002822(n+1)+3)]`
-/

namespace A163385.P173113626297178427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A002822 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163385.P173113626297178427

namespace A163385

/-- `record[A014963(2*A002822(n+1)+3)]` -/
def P173113626297178427.Spec : Prop :=
  ∀ n, P173113626297178427.a n = A163385 (n + 1)

end A163385

/-!
# A163386: Primes p such that 4(p-4)-1 and 4(p-4)+1 are twin primes.

The programs for A163386, the canonical program `A163386.P14689619579502846118` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163386 has offset 1).

The definition of A163386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163386.P14689619579502846118

`p?[A045753(n+1)+4]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A163386

/-- `p?[A045753(n+1)+4]` -/
def P14689619579502846118.Spec : Prop :=
  ∀ n, P14689619579502846118.a n = A163386 (n + 1)

theorem P14689619579502846118.correct : P14689619579502846118.Spec := by
  intro n
  simp only [A163386, Nat.add_sub_cancel]

end A163386

/-! ## A163386.P8242359702325795054

`p?[ceil(A071698(n+1)/4)+4]`
-/

namespace A163386.P8242359702325795054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A071698 (n + 1) : ℚ) / 4⌉ + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163386.P8242359702325795054

namespace A163386

/-- `p?[ceil(A071698(n+1)/4)+4]` -/
def P8242359702325795054.Spec : Prop :=
  ∀ n, P8242359702325795054.a n = A163386 (n + 1)

end A163386

/-! ## A163386.P14271556300423744578

`record[A006530(A045753(n+1)+4)]`
-/

namespace A163386.P14271556300423744578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A045753 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163386.P14271556300423744578

namespace A163386

/-- `record[A006530(A045753(n+1)+4)]` -/
def P14271556300423744578.Spec : Prop :=
  ∀ n, P14271556300423744578.a n = A163386 (n + 1)

end A163386

/-! ## A163386.P17938858818021567052

`record[A008472(A045753(n+1)+4)]`
-/

namespace A163386.P17938858818021567052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A045753 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163386.P17938858818021567052

namespace A163386

/-- `record[A008472(A045753(n+1)+4)]` -/
def P17938858818021567052.Spec : Prop :=
  ∀ n, P17938858818021567052.a n = A163386 (n + 1)

end A163386

/-! ## A163386.P10679004136748820093

`record[A020639(A045753(n+1)+4)]`
-/

namespace A163386.P10679004136748820093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A045753 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163386.P10679004136748820093

namespace A163386

/-- `record[A020639(A045753(n+1)+4)]` -/
def P10679004136748820093.Spec : Prop :=
  ∀ n, P10679004136748820093.a n = A163386 (n + 1)

end A163386

/-! ## A163386.P3090250381990477234

`record[A006530(A071698(n+1)+17)]`
-/

namespace A163386.P3090250381990477234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A071698 (n + 1) + 17).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163386.P3090250381990477234

namespace A163386

/-- `record[A006530(A071698(n+1)+17)]` -/
def P3090250381990477234.Spec : Prop :=
  ∀ n, P3090250381990477234.a n = A163386 (n + 1)

end A163386

/-! ## A163386.P16888385745783095769

`p?[A005408(A124192(n+1)+2)]`
-/

namespace A163386.P16888385745783095769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A124192 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163386.P16888385745783095769

namespace A163386

/-- `p?[A005408(A124192(n+1)+2)]` -/
def P16888385745783095769.Spec : Prop :=
  ∀ n, P16888385745783095769.a n = A163386 (n + 1)

end A163386

/-! ## A163386.P5576118909266695910

`p?[A004273(A124192(n+1)+3)]`
-/

namespace A163386.P5576118909266695910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A124192 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163386.P5576118909266695910

namespace A163386

/-- `p?[A004273(A124192(n+1)+3)]` -/
def P5576118909266695910.Spec : Prop :=
  ∀ n, P5576118909266695910.a n = A163386 (n + 1)

end A163386

/-! ## A163386.P17872835576036767018

`record[A014963(A045753(n+1)+4)]`
-/

namespace A163386.P17872835576036767018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A045753 (n + 1) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163386.P17872835576036767018

namespace A163386

/-- `record[A014963(A045753(n+1)+4)]` -/
def P17872835576036767018.Spec : Prop :=
  ∀ n, P17872835576036767018.a n = A163386 (n + 1)

end A163386

/-!
# A163387: Primes p such that 5(p-5)-1 and 5(p-5)+1 are twin primes.

The programs for A163387, the canonical program `A163387.P15529446580264566935` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163387 has offset 1).

The definition of A163387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 302 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163387.P15529446580264566935

`p?[A153877(n+1)+5]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A163387

/-- `p?[A153877(n+1)+5]` -/
def P15529446580264566935.Spec : Prop :=
  ∀ n, P15529446580264566935.a n = A163387 (n + 1)

theorem P15529446580264566935.correct : P15529446580264566935.Spec := by
  intro n
  simp only [A163387, Nat.add_sub_cancel]

end A163387

/-! ## A163387.P4227512077161081089

`record[A006530(A153877(n+1)+5)]`
-/

namespace A163387.P4227512077161081089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A153877 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163387.P4227512077161081089

namespace A163387

/-- `record[A006530(A153877(n+1)+5)]` -/
def P4227512077161081089.Spec : Prop :=
  ∀ n, P4227512077161081089.a n = A163387 (n + 1)

end A163387

/-! ## A163387.P2484754060277357375

`record[A008472(A153877(n+1)+5)]`
-/

namespace A163387.P2484754060277357375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A153877 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163387.P2484754060277357375

namespace A163387

/-- `record[A008472(A153877(n+1)+5)]` -/
def P2484754060277357375.Spec : Prop :=
  ∀ n, P2484754060277357375.a n = A163387 (n + 1)

end A163387

/-! ## A163387.P11657533242688664295

`record[A020639(A153877(n+1)+5)]`
-/

namespace A163387.P11657533242688664295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A153877 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163387.P11657533242688664295

namespace A163387

/-- `record[A020639(A153877(n+1)+5)]` -/
def P11657533242688664295.Spec : Prop :=
  ∀ n, P11657533242688664295.a n = A163387 (n + 1)

end A163387

/-! ## A163387.P14126488053669576281

`p?[A016969(A176114(n+1))]`
-/

namespace A163387.P14126488053669576281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (A176114 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163387.P14126488053669576281

namespace A163387

/-- `p?[A016969(A176114(n+1))]` -/
def P14126488053669576281.Spec : Prop :=
  ∀ n, P14126488053669576281.a n = A163387 (n + 1)

end A163387

/-! ## A163387.P6876499919259320082

`record[A090368(A124518(n+1)+3)]`
-/

namespace A163387.P6876499919259320082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A124518 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163387.P6876499919259320082

namespace A163387

/-- `record[A090368(A124518(n+1)+3)]` -/
def P6876499919259320082.Spec : Prop :=
  ∀ n, P6876499919259320082.a n = A163387 (n + 1)

end A163387

/-! ## A163387.P11698418946936335757

`record[A006530(A282326(n+1)+24)]`
-/

namespace A163387.P11698418946936335757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A282326 (n + 1) + 24).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163387.P11698418946936335757

namespace A163387

/-- `record[A006530(A282326(n+1)+24)]` -/
def P11698418946936335757.Spec : Prop :=
  ∀ n, P11698418946936335757.a n = A163387 (n + 1)

end A163387

/-! ## A163387.P10951033666667105533

`record[A014963(A153877(n+1)+5)]`
-/

namespace A163387.P10951033666667105533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A153877 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163387.P10951033666667105533

namespace A163387

/-- `record[A014963(A153877(n+1)+5)]` -/
def P10951033666667105533.Spec : Prop :=
  ∀ n, P10951033666667105533.a n = A163387 (n + 1)

end A163387

/-!
# A163388: Primes p such that 6*(p-6) is an average of a twin prime pair.

The programs for A163388, the canonical program `A163388.P9489065136633939199` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163388 has offset 1).

The definition of A163388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4175 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163388.P9489065136633939199

`p?[ceil(A001359(n+2)/6)+6]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A163388

/-- `p?[ceil(A001359(n+2)/6)+6]` -/
def P9489065136633939199.Spec : Prop :=
  ∀ n, P9489065136633939199.a n = A163388 (n + 1)

theorem P9489065136633939199.correct : P9489065136633939199.Spec := by
  intro n
  simp only [A163388, Nat.add_sub_cancel]

end A163388

/-! ## A163388.P17134838354482596457

`p?[A002822(n+1)+6]`
-/

namespace A163388.P17134838354482596457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163388.P17134838354482596457

namespace A163388

/-- `p?[A002822(n+1)+6]` -/
def P17134838354482596457.Spec : Prop :=
  ∀ n, P17134838354482596457.a n = A163388 (n + 1)

end A163388

/-! ## A163388.P2503629064039884448

`p?[floor(A177139(n+1)/2)+6]`
-/

namespace A163388.P2503629064039884448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A177139 (n + 1) : ℚ) / 2⌋ + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163388.P2503629064039884448

namespace A163388

/-- `p?[floor(A177139(n+1)/2)+6]` -/
def P2503629064039884448.Spec : Prop :=
  ∀ n, P2503629064039884448.a n = A163388 (n + 1)

end A163388

/-! ## A163388.P374101023427723171

`p?[round(A006512(n+2)/6)+6]`
-/

namespace A163388.P374101023427723171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A006512 (n + 2) : ℚ) / 6) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163388.P374101023427723171

namespace A163388

/-- `p?[round(A006512(n+2)/6)+6]` -/
def P374101023427723171.Spec : Prop :=
  ∀ n, P374101023427723171.a n = A163388 (n + 1)

end A163388

/-! ## A163388.P8302674396847730509

`record[A006530(A002822(n+1)+6)]`
-/

namespace A163388.P8302674396847730509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002822 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163388.P8302674396847730509

namespace A163388

/-- `record[A006530(A002822(n+1)+6)]` -/
def P8302674396847730509.Spec : Prop :=
  ∀ n, P8302674396847730509.a n = A163388 (n + 1)

end A163388

/-! ## A163388.P2408476572537895883

`record[A020639(A002822(n+1)+6)]`
-/

namespace A163388.P2408476572537895883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002822 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163388.P2408476572537895883

namespace A163388

/-- `record[A020639(A002822(n+1)+6)]` -/
def P2408476572537895883.Spec : Prop :=
  ∀ n, P2408476572537895883.a n = A163388 (n + 1)

end A163388

/-! ## A163388.P7698940320507792806

`p?[A153196(n+1)+7]`
-/

namespace A163388.P7698940320507792806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153196 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163388.P7698940320507792806

namespace A163388

/-- `p?[A153196(n+1)+7]` -/
def P7698940320507792806.Spec : Prop :=
  ∀ n, P7698940320507792806.a n = A163388 (n + 1)

end A163388

/-! ## A163388.P5845833961686986443

`record[A014963(A002822(n+1)+6)]`
-/

namespace A163388.P5845833961686986443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A002822 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163388.P5845833961686986443

namespace A163388

/-- `record[A014963(A002822(n+1)+6)]` -/
def P5845833961686986443.Spec : Prop :=
  ∀ n, P5845833961686986443.a n = A163388 (n + 1)

end A163388

/-! ## A163388.P11552188590121969437

`record[A061397(A002822(n+1)+6)]`
-/

namespace A163388.P11552188590121969437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A002822 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163388.P11552188590121969437

namespace A163388

/-- `record[A061397(A002822(n+1)+6)]` -/
def P11552188590121969437.Spec : Prop :=
  ∀ n, P11552188590121969437.a n = A163388 (n + 1)

end A163388

/-! ## A163388.P9800054203775028017

`p?[A182481(A182483(n+2))*A182483(n+2)+6]`
-/

namespace A163388.P9800054203775028017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A182483 (n + 2)).toNat * A182483 (n + 2) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163388.P9800054203775028017

namespace A163388

/-- `p?[A182481(A182483(n+2))*A182483(n+2)+6]` -/
def P9800054203775028017.Spec : Prop :=
  ∀ n, P9800054203775028017.a n = A163388 (n + 1)

end A163388

/-!
# A163389: The position of first occurrence of n-th prime in A014085.

The programs for A163389, there is no canonical definition to state claims against.
-/

/-! ## A163389.P6272671909591142441

`A076957(p?[comp[n²]])`
-/

namespace A163389.P6272671909591142441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076957 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A163389.P6272671909591142441

/-! ## A163389.P6709558497655010012

`A076957(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A163389.P6709558497655010012
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076957 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A163389.P6709558497655010012

/-! ## A163389.P12584589708292805488

`A076957(Δ[A007504(n)])`
-/

namespace A163389.P12584589708292805488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076957 (f1 (n + 1) - f1 n).toNat

end

end A163389.P12584589708292805488

/-! ## A163389.P11887933047096420105

`A076957(comp[A103164(n)])`
-/

namespace A163389.P11887933047096420105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076957 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A163389.P11887933047096420105

/-! ## A163389.P15952807218055778101

`A076957(A000040(n+1))`
-/

namespace A163389.P15952807218055778101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076957 (A000040 (n + 1)).toNat

end

end A163389.P15952807218055778101

/-! ## A163389.P5745109070683083942

`A076957(A095320(n+1))`
-/

namespace A163389.P5745109070683083942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076957 (A095320 (n + 1)).toNat

end

end A163389.P5745109070683083942

/-! ## A163389.P15424137234659659720

`A076957(A216883(n+1))`
-/

namespace A163389.P15424137234659659720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076957 (A216883 (n + 1)).toNat

end

end A163389.P15424137234659659720

/-! ## A163389.P3528834238650957724

`A076957(A216884(n+1))`
-/

namespace A163389.P3528834238650957724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076957 (A216884 (n + 1)).toNat

end

end A163389.P3528834238650957724

/-! ## A163389.P607366954470850758

`A076957(A216885(n+1))`
-/

namespace A163389.P607366954470850758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076957 (A216885 (n + 1)).toNat

end

end A163389.P607366954470850758

/-!
# A163390: Numbers n such that n^3 can be represented as sum of (at least two) consecutive squares.

The programs for A163390, there is no canonical definition to state claims against.
-/

/-! ## A163390.P2292786136794046651

`A136312(n+1)^(1/3)`
-/

namespace A163390.P2292786136794046651
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A136312 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A163390.P2292786136794046651

/-! ## A163390.P8841991495445404189

`root(A136312(n+1), 3)`
-/

namespace A163390.P8841991495445404189
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A136312 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A163390.P8841991495445404189

/-!
# A163391: Number of reduced words of length n in Coxeter group on 9 generators S_i with relations (S_i)^2 = (S_i S_j)^5 = I.

The programs for A163391, there is no canonical definition to state claims against.
-/

/-! ## A163391.P13545229556666553519

`A065547(A367766(n+1))+A003951(n)`
-/

namespace A163391.P13545229556666553519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065547 (A367766 (n + 1)).toNat + A003951 n

end

end A163391.P13545229556666553519

/-! ## A163391.P3168086707564816348

`A003951(n)-A038146(A218090(n+1))`
-/

namespace A163391.P3168086707564816348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003951 n - A038146 (A218090 (n + 1)).toNat

end

end A163391.P3168086707564816348

/-!
# A163392: Squares which can be represented as sum of (at least two) consecutive cubes and are not triangular numbers squared.

The programs for A163392, there is no canonical definition to state claims against.
-/

/-! ## A163392.P12072161433920218654

`A163393(n+1)²`
-/

namespace A163392.P12072161433920218654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163393 (n + 1) ^ 2

end

end A163392.P12072161433920218654

/-! ## A163392.P350938428786130337

`A163393(2*(n+1)-(n+1))^2`
-/

namespace A163392.P350938428786130337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163393 (2 * (n + 1) - (n + 1)) ^ 2

end

end A163392.P350938428786130337

/-! ## A163392.P18410737350369522693

`A163393(A000027(n+1))*A163393(n+1)`
-/

namespace A163392.P18410737350369522693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163393 (A000027 (n + 1)).toNat * A163393 (n + 1)

end

end A163392.P18410737350369522693

/-! ## A163392.P16792676270519030967

`A163393(A008619(2*n))*A163393(n+1)`
-/

namespace A163392.P16792676270519030967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163393 (A008619 (2 * n)).toNat * A163393 (n + 1)

end

end A163392.P16792676270519030967

/-! ## A163392.P6734584128541289584

`(A163393(n+1)+A099313(A014963(n+1)))*A163393(n+1)`
-/

namespace A163392.P6734584128541289584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A163393 (n + 1) + A099313 (A014963 (n + 1)).toNat) * A163393 (n + 1)

end

end A163392.P6734584128541289584

/-! ## A163392.P2657541106641988190

`A163393(n+1)%A163393(n+2)*A163393(n+1)`
-/

namespace A163392.P2657541106641988190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163393 (n + 1)) (A163393 (n + 2)) * A163393 (n + 1)

end

end A163392.P2657541106641988190

/-!
# A163393: Numbers n such that n^2 can be represented as sum of (at least two) consecutive cubes and n is not a triangular number.

The programs for A163393, there is no canonical definition to state claims against.
-/

/-! ## A163393.P3258475166653195062

`sqrt(A163392(n+1))`
-/

namespace A163393.P3258475166653195062
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A163392 (n + 1) : ℝ)

end

end A163393.P3258475166653195062

/-! ## A163393.P11686412192355691045

`root(A163392(n+1), and(2, A142463(n)))`
-/

namespace A163393.P11686412192355691045
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A163392 (n + 1) : ℝ) ^ (1 / (Int.land 2 (A142463 n) : ℝ))

end

end A163393.P11686412192355691045

/-! ## A163393.P13591830176674680261

`root(A163392(n+1), 2%A126200(n+1))`
-/

namespace A163393.P13591830176674680261
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A163392 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A126200 (n + 1)) : ℝ))

end

end A163393.P13591830176674680261

/-! ## A163393.P2272247393216364264

`root(A163392(n+1), A133265(A133265(n)))`
-/

namespace A163393.P2272247393216364264
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A163392 (n + 1) : ℝ) ^ (1 / (A133265 (A133265 n).toNat : ℝ))

end

end A163393.P2272247393216364264

/-! ## A163393.P9267556259551627409

`root(A163392(n+1), A001844(n)-A142463(n))`
-/

namespace A163393.P9267556259551627409
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A163392 (n + 1) : ℝ) ^ (1 / (A001844 n - A142463 n : ℝ))

end

end A163393.P9267556259551627409

/-!
# A163394: The odd part of Minkowski(n)/n!

The programs for A163394, there is no canonical definition to state claims against.
-/

/-! ## A163394.P9234130821619953955

`gcd(A163176(A028310(n)), A290030(n))`
-/

namespace A163394.P9234130821619953955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A163176 (A028310 n).toNat) (A290030 n)

end

end A163394.P9234130821619953955

/-! ## A163394.P3457609148416096280

`gcd(A133221(2*n), A163176(A065033(2*n)))`
-/

namespace A163394.P3457609148416096280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133221 (2 * n)) (A163176 (A065033 (2 * n)).toNat)

end

end A163394.P3457609148416096280

/-!
# A163395: a(n) = (n-th even nonprime)^(n-th even number).

The programs for A163395, the canonical program `A163395.P14222380856025125144` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163395 has offset 1).

The definition of A163395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163395.P16251839534004303244

`(2*(n+(n+2)%(n+1)))^(2*(n+1)-2)`
-/

namespace A163395.P16251839534004303244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + (n + 2) % (n + 1)) : ℕ) : ℚ) ^ ((2 * (n + 1) : ℤ) - 2 : ℤ)

end

end A163395.P16251839534004303244

namespace A163395

/-- `(2*(n+(n+2)%(n+1)))^(2*(n+1)-2)` -/
def P16251839534004303244.Spec : Prop :=
  ∀ n, P16251839534004303244.a n = (A163395 (n + 1) : ℚ)

end A163395

/-! ## A163395.P14222380856025125144

`A163300(n+1)^A005843(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A163395

/-- `A163300(n+1)^A005843(n)` -/
def P14222380856025125144.Spec : Prop :=
  ∀ n, P14222380856025125144.a n = (A163395 (n + 1) : ℚ)

end A163395

/-! ## A163395.P4242988499069594673

`record[(-(n+2))^n]`
-/

namespace A163395.P4242988499069594673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-(n + 2 : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163395.P4242988499069594673

namespace A163395

/-- `record[(-(n+2))^n]` -/
def P4242988499069594673.Spec : Prop :=
  ∀ n, P4242988499069594673.a n = A163395 (n + 1)

end A163395

/-! ## A163395.P2995709393092764689

`((2*(n+1))^n)²`
-/

namespace A163395.P2995709393092764689
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1)) ^ n) ^ 2

end

end A163395.P2995709393092764689

namespace A163395

/-- `((2*(n+1))^n)²` -/
def P2995709393092764689.Spec : Prop :=
  ∀ n, (P2995709393092764689.a n : ℤ) = A163395 (n + 1)

end A163395

/-! ## A163395.P9796297977028026986

`∑[or(4, 8*n)]^n`
-/

namespace A163395.P9796297977028026986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (8 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ n

end

end A163395.P9796297977028026986

namespace A163395

/-- `∑[or(4, 8*n)]^n` -/
def P9796297977028026986.Spec : Prop :=
  ∀ n, (P9796297977028026986.a n : ℤ) = A163395 (n + 1)

end A163395

/-!
# A163396: Primes in carryless arithmetic mod 10 in which all digits except the rightmost are even.

The programs for A163396, there is no canonical definition to state claims against.
-/

/-! ## A163396.P18401377874546688896

`∩[A169887(n+1), A024657(n)]`
-/

namespace A163396.P18401377874546688896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163396.P18401377874546688896

/-! ## A163396.P2759796872365797472

`∩[A007929(n+1), A169887(n+1)]`
-/

namespace A163396.P2759796872365797472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163396.P2759796872365797472

/-! ## A163396.P12116601251042007619

`∩[A007930(n+1), A169887(n+1)]`
-/

namespace A163396.P12116601251042007619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163396.P12116601251042007619

/-! ## A163396.P12777858934275916481

`∩[A143712(n+1), A169887(n+1)]`
-/

namespace A163396.P12777858934275916481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163396.P12777858934275916481

/-! ## A163396.P4974686810476057919

`∩[A169887(n+1), A273892(n+1)]`
-/

namespace A163396.P4974686810476057919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169887 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273892 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163396.P4974686810476057919

/-! ## A163396.P2824689601124697521

`∩[A014263(n+1)+1, A169887(n+1)]`
-/

namespace A163396.P2824689601124697521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014263 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163396.P2824689601124697521

/-! ## A163396.P16812483493927554598

`record[A169887(n+1)%A000040(A169907(n+1))]`
-/

namespace A163396.P16812483493927554598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169887 (n + 1)) (A000040 (A169907 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163396.P16812483493927554598

/-!
# A163397: Number of reduced words of length n in Coxeter group on 10 generators S_i with relations (S_i)^2 = (S_i S_j)^5 = I.

The programs for A163397, there is no canonical definition to state claims against.
-/

/-! ## A163397.P15319532522510623572

`floor(10*9^(n-1))-A037042(A144399(n))`
-/

namespace A163397.P15319532522510623572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊10 * (9 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A037042 (A144399 n).toNat

end

end A163397.P15319532522510623572

/-! ## A163397.P14038679160198140109

`A003952(n)-A326457(A030268(n))`
-/

namespace A163397.P14038679160198140109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003952 n - A326457 (A030268 n).toNat

end

end A163397.P14038679160198140109

/-!
# A163399: a(n) = (the binary order of n)^sigma(n).

The programs for A163399, the canonical program `A163399.P14596577159278331732` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163399 has offset 1).

The definition of A163399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163399.P14596577159278331732

`A029837(n+1)^A000203(n+1)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A163399

/-- `A029837(n+1)^A000203(n+1)` -/
def P14596577159278331732.Spec : Prop :=
  ∀ n, P14596577159278331732.a n = (A163399 (n + 1) : ℚ)

end A163399

/-! ## A163399.P1334536985185875310

`ceil(log2(n+1))^∑{d}[n+1, #]`
-/

namespace A163399.P1334536985185875310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (n + 1 : ℝ)⌉ ^ (∑ d ∈ Nat.divisors (f1 n), d)

end

end A163399.P1334536985185875310

namespace A163399

/-- `ceil(log2(n+1))^∑{d}[n+1, #]` -/
def P1334536985185875310.Spec : Prop :=
  ∀ n, P1334536985185875310.a n = A163399 (n + 1)

end A163399

/-! ## A163399.P3046622435820230249

`log2(A062383(n))^Δ[A160664(n)]`
-/

namespace A163399.P3046622435820230249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A062383 n : ℝ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A163399.P3046622435820230249

namespace A163399

/-- `log2(A062383(n))^Δ[A160664(n)]` -/
def P3046622435820230249.Spec : Prop :=
  ∀ n, P3046622435820230249.a n = (A163399 (n + 1) : ℝ)

end A163399

/-! ## A163399.P4797476446617449886

`∑[A209229(n)]^A097012(n+1)`
-/

namespace A163399.P4797476446617449886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A097012 (n + 1) : ℤ)

end

end A163399.P4797476446617449886

namespace A163399

/-- `∑[A209229(n)]^A097012(n+1)` -/
def P4797476446617449886.Spec : Prop :=
  ∀ n, P4797476446617449886.a n = (A163399 (n + 1) : ℚ)

end A163399

/-! ## A163399.P4625835917935281859

`A029837(n+1)^sqrt(A072861(n+1))`
-/

namespace A163399.P4625835917935281859
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A029837 (n + 1) : ℝ) ^ (Real.sqrt (A072861 (n + 1) : ℝ))

end

end A163399.P4625835917935281859

namespace A163399

/-- `A029837(n+1)^sqrt(A072861(n+1))` -/
def P4625835917935281859.Spec : Prop :=
  ∀ n, P4625835917935281859.a n = (A163399 (n + 1) : ℝ)

end A163399

/-! ## A163399.P547632199181414891

`sqrt(A029837(n+1))^A074400(n+1)`
-/

namespace A163399.P547632199181414891
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A029837 (n + 1) : ℝ) ^ (A074400 (n + 1) : ℤ)

end

end A163399.P547632199181414891

namespace A163399

/-- `sqrt(A029837(n+1))^A074400(n+1)` -/
def P547632199181414891.Spec : Prop :=
  ∀ n, P547632199181414891.a n = (A163399 (n + 1) : ℝ)

end A163399

/-! ## A163399.P4620760064992608617

`A000523(2*n+1)^(A088580(n+1)-1)`
-/

namespace A163399.P4620760064992608617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000523 (2 * n + 1) : ℚ) ^ (A088580 (n + 1) - 1 : ℤ)

end

end A163399.P4620760064992608617

namespace A163399

/-- `A000523(2*n+1)^(A088580(n+1)-1)` -/
def P4620760064992608617.Spec : Prop :=
  ∀ n, P4620760064992608617.a n = (A163399 (n + 1) : ℚ)

end A163399

/-! ## A163399.P18092306485651238868

`A001222(A062383(n))^A245093(∑[n+1])`
-/

namespace A163399.P18092306485651238868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A062383 n).toNat : ℚ) ^ (A245093 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A163399.P18092306485651238868

namespace A163399

/-- `A001222(A062383(n))^A245093(∑[n+1])` -/
def P18092306485651238868.Spec : Prop :=
  ∀ n, P18092306485651238868.a n = (A163399 (n + 1) : ℚ)

end A163399

/-! ## A163399.P3775678031860601119

`A001222(A062383(n))^(A155085(n+1)-(n+1))`
-/

namespace A163399.P3775678031860601119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A062383 n).toNat : ℚ) ^ (A155085 (n + 1) - (n + 1 : ℤ) : ℤ)

end

end A163399.P3775678031860601119

namespace A163399

/-- `A001222(A062383(n))^(A155085(n+1)-(n+1))` -/
def P3775678031860601119.Spec : Prop :=
  ∀ n, P3775678031860601119.a n = (A163399 (n + 1) : ℚ)

end A163399

/-! ## A163399.P15643670918977118054

`A001222(A062383(n))^(A064987(n+1)/(n+1))`
-/

namespace A163399.P15643670918977118054
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001222 (A062383 n).toNat : ℝ) ^ ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A163399.P15643670918977118054

namespace A163399

/-- `A001222(A062383(n))^(A064987(n+1)/(n+1))` -/
def P15643670918977118054.Spec : Prop :=
  ∀ n, P15643670918977118054.a n = (A163399 (n + 1) : ℝ)

end A163399

