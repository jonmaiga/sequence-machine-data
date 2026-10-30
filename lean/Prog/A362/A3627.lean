import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
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
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A362700: Expansion of e.g.f. 1/(1 + LambertW(-x * exp(x^2/2))).

The programs for A362700, the canonical program `A362700.P2352806436582760365` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362700 has offset 0).

The definition of A362700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362700.P2352806436582760365

`n!*∑{#}[floor(n/2), (n-2*#)^(n-#)/(2^#*#!*(n-2*#)!)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362700

/-- `n!*∑{#}[floor(n/2), (n-2*#)^(n-#)/(2^#*#!*(n-2*#)!)]` -/
def P2352806436582760365.Spec : Prop :=
  ∀ n, P2352806436582760365.a n = (A362700 n : ℚ)

end A362700

/-! ## A362700.P2674537817410612676

`A328603(A328358(n))*A369365(n+1)`
-/

namespace A362700.P2674537817410612676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328603 (A328358 n).toNat * A369365 (n + 1)

end

end A362700.P2674537817410612676

namespace A362700

/-- `A328603(A328358(n))*A369365(n+1)` -/
def P2674537817410612676.Spec : Prop :=
  ∀ n, P2674537817410612676.a n = A362700 n

end A362700

/-!
# A362701: Expansion of e.g.f. 1/(1 + LambertW(-x * exp(x^3/6))).

The programs for A362701, there is no canonical definition to state claims against.
-/

/-! ## A362701.P10061967121357246997

`A280866(A280741(n^n))`
-/

namespace A362701.P10061967121357246997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280866 (A280741 (n ^ n)).toNat

end

end A362701.P10061967121357246997

/-! ## A362701.P10681993944300448384

`A353013(n)-A292108(n!)`
-/

namespace A362701.P10681993944300448384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353013 n - A292108 (Nat.factorial n)

end

end A362701.P10681993944300448384

/-!
# A362702: Expansion of e.g.f. 1/(1 + LambertW(-x^2 * exp(x))).

The programs for A362702, the canonical program `A362702.P10174864202880130027` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362702 has offset 0).

The definition of A362702 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362702.P10174864202880130027

`n!*∑{#}[floor(n/2), #^(n-#)/(#!*(n-2*#)!)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362702

/-- `n!*∑{#}[floor(n/2), #^(n-#)/(#!*(n-2*#)!)]` -/
def P10174864202880130027.Spec : Prop :=
  ∀ n, P10174864202880130027.a n = (A362702 n : ℚ)

end A362702

/-! ## A362702.P5540083466659480602

`A004526(2*A390646(n))`
-/

namespace A362702.P5540083466659480602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A390646 n).toNat

end

end A362702.P5540083466659480602

namespace A362702

/-- `A004526(2*A390646(n))` -/
def P5540083466659480602.Spec : Prop :=
  ∀ n, P5540083466659480602.a n = A362702 n

end A362702

/-!
# A362703: Expansion of e.g.f. 1/(1 + LambertW(-x^3 * exp(x))).

The programs for A362703, the canonical program `A362703.P1896213441441302284` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362703 has offset 0).

The definition of A362703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362703.P1896213441441302284

`n!*∑{#}[floor(n/3), #^(n-2*#)/(#!*(n-3*#)!)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362703

/-- `n!*∑{#}[floor(n/3), #^(n-2*#)/(#!*(n-3*#)!)]` -/
def P1896213441441302284.Spec : Prop :=
  ∀ n, P1896213441441302284.a n = (A362703 n : ℚ)

end A362703

/-! ## A362703.P14843336610112617165

`A390648(n^A195852(n))`
-/

namespace A362703.P14843336610112617165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390648 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A195852 n : ℤ))).toNat

end

end A362703.P14843336610112617165

namespace A362703

/-- `A390648(n^A195852(n))` -/
def P14843336610112617165.Spec : Prop :=
  ∀ n, P14843336610112617165.a n = A362703 n

end A362703

/-! ## A362703.P12579349905839050989

`A390648(n)+A185255(A000045(n))`
-/

namespace A362703.P12579349905839050989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390648 n + A185255 (A000045 n).toNat

end

end A362703.P12579349905839050989

namespace A362703

/-- `A390648(n)+A185255(A000045(n))` -/
def P12579349905839050989.Spec : Prop :=
  ∀ n, P12579349905839050989.a n = A362703 n

end A362703

/-! ## A362703.P9111636795670425733

`A390648(n)+A000007(A390658(n))`
-/

namespace A362703.P9111636795670425733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390648 n + A000007 (A390658 n).toNat

end

end A362703.P9111636795670425733

namespace A362703

/-- `A390648(n)+A000007(A390658(n))` -/
def P9111636795670425733.Spec : Prop :=
  ∀ n, P9111636795670425733.a n = A362703 n

end A362703

/-! ## A362703.P16755807885757816109

`A390648(n)+A000007(A390659(n))`
-/

namespace A362703.P16755807885757816109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390648 n + A000007 (A390659 n).toNat

end

end A362703.P16755807885757816109

namespace A362703

/-- `A390648(n)+A000007(A390659(n))` -/
def P16755807885757816109.Spec : Prop :=
  ∀ n, P16755807885757816109.a n = A362703 n

end A362703

/-!
# A362704: Expansion of e.g.f. 1/(1 + LambertW(-x^2/2 * exp(x))).

The programs for A362704, the canonical program `A362704.P7893421188377522892` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362704 has offset 0).

The definition of A362704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362704.P7893421188377522892

`n!*∑{#}[floor(n/2), #^(n-#)/(2^#*#!*(n-2*#)!)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362704

/-- `n!*∑{#}[floor(n/2), #^(n-#)/(2^#*#!*(n-2*#)!)]` -/
def P7893421188377522892.Spec : Prop :=
  ∀ n, P7893421188377522892.a n = (A362704 n : ℚ)

end A362704

/-! ## A362704.P15642115483936657587

`A078898(A058830(n)+A351825(n)+A209229(2^n+5^n-1))`
-/

namespace A362704.P15642115483936657587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A058830 n + (A351825 n + A209229 ((2 ^ n : ℤ) + ((5 ^ n : ℤ) - 1)).toNat)).toNat

end

end A362704.P15642115483936657587

namespace A362704

/-- `A078898(A058830(n)+A351825(n)+A209229(2^n+5^n-1))` -/
def P15642115483936657587.Spec : Prop :=
  ∀ n, P15642115483936657587.a n = A362704 n

end A362704

/-!
# A362705: Expansion of e.g.f. 1/(1 + LambertW(-x^3/6 * exp(x))).

The programs for A362705, the canonical program `A362705.P2984224349798640376` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362705 has offset 0).

The definition of A362705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362705.P2984224349798640376

`n!*∑{#}[floor(n/3), #^(n-2*#)/(6^#*#!*(n-3*#)!)]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362705

/-- `n!*∑{#}[floor(n/3), #^(n-2*#)/(6^#*#!*(n-3*#)!)]` -/
def P2984224349798640376.Spec : Prop :=
  ∀ n, P2984224349798640376.a n = (A362705 n : ℚ)

end A362705

/-!
# A362707: a(n) = Sum_{d|n, phi(d)|sigma(d)} (n-d).

The programs for A362707, the canonical program `A362707.P3299096256826437275` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362707 has offset 1).

The definition of A362707 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351112, A351113, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362707.P15560707523798980009

`∑{d}[n+1, (n+1-#)*A351114(#)]`
-/

namespace A362707.P15560707523798980009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℤ) - (d : ℤ)) * A351114 d

end

end A362707.P15560707523798980009

namespace A362707

/-- `∑{d}[n+1, (n+1-#)*A351114(#)]` -/
def P15560707523798980009.Spec : Prop :=
  ∀ n, P15560707523798980009.a n = A362707 (n + 1)

end A362707

/-! ## A362707.P3299096256826437275

`(n+1)*A351112(n+1)-A351113(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A362707

/-- `(n+1)*A351112(n+1)-A351113(n+1)` -/
def P3299096256826437275.Spec : Prop :=
  ∀ n, P3299096256826437275.a n = A362707 (n + 1)

theorem P3299096256826437275.correct : P3299096256826437275.Spec := by
  intro n
  simp only [A362707, Nat.add_sub_cancel]

end A362707

/-! ## A362707.P9832996964805476475

`A386622(n+1)-A386589(n+1)`
-/

namespace A362707.P9832996964805476475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386622 (n + 1) - A386589 (n + 1)

end

end A362707.P9832996964805476475

namespace A362707

/-- `A386622(n+1)-A386589(n+1)` -/
def P9832996964805476475.Spec : Prop :=
  ∀ n, P9832996964805476475.a n = A362707 (n + 1)

theorem P9832996964805476475.correct : P9832996964805476475.Spec := by
  intro n
  simp only [A362707, Nat.add_sub_cancel, A362707.P9832996964805476475.a, A362707.P3299096256826437275.a, A351112, A351112.P18121164159424966537.f1, A351112.P18121164159424966537.a, A351113, A351113.P14871538275720612314.f1, A351113.P14871538275720612314.a, A386589, A386589.P14364682863583384821.a, A386622, A386622.P1574536080220516373.a, A000005, A000005.P16091521709108585461.a, A351114, A351114.P13024542866936842174.a, A386591, A386591.P14499915022508730926.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A063524, A063524.P5631347671191003537.a, A289412, A289412.P16736095440430260150.a, A000007, A000007.P6599383543502402472.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A009223, A009223.P16138447125390320102.a, A051731, A051731.P11318043630102858095.a, A062354, A062354.P12090896162141185075.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A362707

/-!
# A362710: Numbers m such that the decimal expansion of 1/m contains no digit 0, ignoring leading and trailing 0's.

The programs for A362710, there is no canonical definition to state claims against.
-/

/-! ## A362710.P7038689329532669268

`comp[A023443(A352154(n+1))]+1`
-/

namespace A362710.P7038689329532669268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A352154 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A362710.P7038689329532669268

/-! ## A362710.P15955704406937438024

`lt[char[A352154(n+1)], A057427(n)]`
-/

namespace A362710.P15955704406937438024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352154 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A362710.P15955704406937438024

/-! ## A362710.P17324669432941526840

`lt[0, A352153(n+1)]+1`
-/

namespace A362710.P17324669432941526840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A362710.P17324669432941526840

/-! ## A362710.P11505293240769877574

`lt[A000007(n), A352153(A028310(n))]`
-/

namespace A362710.P11505293240769877574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352153 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362710.P11505293240769877574

/-! ## A362710.P4212723565182625418

`lt[A000038(n), A352153(A028310(n))]`
-/

namespace A362710.P4212723565182625418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352153 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A362710.P4212723565182625418

/-!
# A362712: Number of n-colorings of the Goldner-Harary graph.

The programs for A362712, the canonical program `A362712.P8244155926508418268` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362712 has offset 0).

The definition of A362712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362712.P8244155926508418268

`6*C(n, 3)*(3-n)^8`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362712

/-- `6*C(n, 3)*(3-n)^8` -/
def P8244155926508418268.Spec : Prop :=
  ∀ n, P8244155926508418268.a n = A362712 n

theorem P8244155926508418268.correct : P8244155926508418268.Spec := by
  intro n
  simp only [A362712]

end A362712

/-! ## A362712.P15837829559616361825

`(3-n)²²²*A007531(n)`
-/

namespace A362712.P15837829559616361825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((3 - (n : ℤ)) ^ 2) ^ 2) ^ 2 * A007531 n

end

end A362712.P15837829559616361825

namespace A362712

/-- `(3-n)²²²*A007531(n)` -/
def P15837829559616361825.Spec : Prop :=
  ∀ n, P15837829559616361825.a n = A362712 n

theorem P15837829559616361825.correct : P15837829559616361825.Spec := by
  intro n
  simp only [A362712, Nat.add_sub_cancel, A362712.P15837829559616361825.a, A362712.P8244155926508418268.a, A007531, A007531.P15538264737483534371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A362712

/-!
# A362716: Sum of the bits of the "integer part" of the base-phi representation of n.

The programs for A362716, there is no canonical definition to state claims against.
-/

/-! ## A362716.P4633256395967483489

`dr(A105424(n))`
-/

namespace A362716.P4633256395967483489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A105424 n)

end

end A362716.P4633256395967483489

/-! ## A362716.P672075562419423245

`A000120(A105425(n))`
-/

namespace A362716.P672075562419423245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A105425 n).toNat

end

end A362716.P672075562419423245

/-! ## A362716.P5729694707338997633

`A139351(3*A105425(n))`
-/

namespace A362716.P5729694707338997633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (3 * A105425 n).toNat

end

end A362716.P5729694707338997633

/-! ## A362716.P14089056515894298811

`A069010(lcm(2, A105425(n)))`
-/

namespace A362716.P14089056515894298811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (Int.lcm 2 (A105425 n))

end

end A362716.P14089056515894298811

/-! ## A362716.P2971230947432849919

`A055778(n)-A362756(n)`
-/

namespace A362716.P2971230947432849919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 n - A362756 n

end

end A362716.P2971230947432849919

/-! ## A362716.P11093516643173948988

`A105424(n)%A100401(n)`
-/

namespace A362716.P11093516643173948988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105424 n) (A100401 n)

end

end A362716.P11093516643173948988

/-! ## A362716.P8969035988055428504

`∑{digits}[A105424(n), A000035(#)]`
-/

namespace A362716.P8969035988055428504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000035 x).sum

end

end A362716.P8969035988055428504

/-! ## A362716.P15024511185724902403

`∑{digits}[A105424(n), A000045(#)]`
-/

namespace A362716.P15024511185724902403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 x).sum

end

end A362716.P15024511185724902403

/-! ## A362716.P11194236076562137238

`A007895(A188015(n+1)-1)`
-/

namespace A362716.P11194236076562137238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A188015 (n + 1) - 1).toNat

end

end A362716.P11194236076562137238

/-!
# A362717: Number of ways to write a + b + c = d + e = f with {a,b,c,d,e,f} a subset of [n] of size 6 and a < b < c and d < e.

The programs for A362717, there is no canonical definition to state claims against.
-/

/-! ## A362717.P4882736927629872387

`A335469(A113032(n))`
-/

namespace A362717.P4882736927629872387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (A113032 n).toNat

end

end A362717.P4882736927629872387

/-! ## A362717.P10673844781202832870

`A319413(A293637(n+1))`
-/

namespace A362717.P10673844781202832870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319413 (A293637 (n + 1)).toNat

end

end A362717.P10673844781202832870

/-! ## A362717.P1208496387346257214

`∑[∑[A000989(A137744(n))]]`
-/

namespace A362717.P1208496387346257214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 (A137744 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362717.P1208496387346257214

/-! ## A362717.P10555687925965096249

`∑[∑[A342676(A000041(n))]]`
-/

namespace A362717.P10555687925965096249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342676 (A000041 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A362717.P10555687925965096249

/-! ## A362717.P14992536903052303771

`A000034(A000749(n+3))*A000749(A285758(n+1))`
-/

namespace A362717.P14992536903052303771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A000749 (n + 3)).toNat * A000749 (A285758 (n + 1)).toNat

end

end A362717.P14992536903052303771

/-!
# A362718: Expansion of e.g.f. cos(x)*exp(x^2/2) = Sum_{n>=0} a(n)*x^(2*n)/(2*n)!.

The programs for A362718, the canonical program `A362718.P6767903697936617572` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362718 has offset 0).

The definition of A362718 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001464, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362718.P6767903697936617572

`(-1)^n*A001464(2*n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A362718

/-- `(-1)^n*A001464(2*n)` -/
def P6767903697936617572.Spec : Prop :=
  ∀ n, P6767903697936617572.a n = A362718 n

theorem P6767903697936617572.correct : P6767903697936617572.Spec := by
  intro n
  simp only [A362718]

end A362718

/-! ## A362718.P18318665760145779398

`A001464(2*n)*A033999(n)`
-/

namespace A362718.P18318665760145779398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001464 (2 * n) * A033999 n

end

end A362718.P18318665760145779398

namespace A362718

/-- `A001464(2*n)*A033999(n)` -/
def P18318665760145779398.Spec : Prop :=
  ∀ n, P18318665760145779398.a n = A362718 n

theorem P18318665760145779398.correct : P18318665760145779398.Spec := by
  intro n
  simp only [A362718, Nat.add_sub_cancel, A362718.P18318665760145779398.a, A362718.P6767903697936617572.a, A001464, A001464.P11249083225092603948.a, A033999, A033999.P17703899380244199787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362718

/-! ## A362718.P9203417279983590482

`A001464(n+n)/A033999(n)`
-/

namespace A362718.P9203417279983590482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001464 (n + n) : ℚ) / (A033999 n : ℚ)

end

end A362718.P9203417279983590482

namespace A362718

/-- `A001464(n+n)/A033999(n)` -/
def P9203417279983590482.Spec : Prop :=
  ∀ n, P9203417279983590482.a n = (A362718 n : ℚ)

end A362718

/-! ## A362718.P1430288740973050193

`A001464(2*n)*A062157(n+1)`
-/

namespace A362718.P1430288740973050193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001464 (2 * n) * A062157 (n + 1)

end

end A362718.P1430288740973050193

namespace A362718

/-- `A001464(2*n)*A062157(n+1)` -/
def P1430288740973050193.Spec : Prop :=
  ∀ n, P1430288740973050193.a n = A362718 n

theorem P1430288740973050193.correct : P1430288740973050193.Spec := by
  intro n
  simp only [A362718, Nat.add_sub_cancel, A362718.P1430288740973050193.a, A362718.P6767903697936617572.a, A001464, A001464.P11249083225092603948.a, A062157, A062157.P13834877263571195293.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362718

/-! ## A362718.P17662227573179633407

`A001464(2*n)*A056594(2*n)`
-/

namespace A362718.P17662227573179633407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001464 (2 * n) * A056594 (2 * n)

end

end A362718.P17662227573179633407

namespace A362718

/-- `A001464(2*n)*A056594(2*n)` -/
def P17662227573179633407.Spec : Prop :=
  ∀ n, P17662227573179633407.a n = A362718 n

end A362718

/-! ## A362718.P14430140449844518377

`A001464(2*n)*A057077(2*n)`
-/

namespace A362718.P14430140449844518377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001464 (2 * n) * A057077 (2 * n)

end

end A362718.P14430140449844518377

namespace A362718

/-- `A001464(2*n)*A057077(2*n)` -/
def P14430140449844518377.Spec : Prop :=
  ∀ n, P14430140449844518377.a n = A362718 n

end A362718

/-!
# A362719: Number of numbers k, 1 <= k <= n, such that phi(k) = phi(n-k+1).

The programs for A362719, there is no canonical definition to state claims against.
-/

/-! ## A362719.P1727397535542235354

`A153881(A059966(n+1))+A053735(n)`
-/

namespace A362719.P1727397535542235354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A059966 (n + 1)).toNat + A053735 n

end

end A362719.P1727397535542235354

/-! ## A362719.P13942613572472134559

`A053735(n)-A033999(A163714(n+1))`
-/

namespace A362719.P13942613572472134559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n - A033999 (A163714 (n + 1)).toNat

end

end A362719.P13942613572472134559

/-! ## A362719.P12961634374927515357

`A053735(n)+A023900(ceil(2^(n-1)))`
-/

namespace A362719.P12961634374927515357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n + A023900 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A362719.P12961634374927515357

/-! ## A362719.P2618180264942745485

`A115607(A011782(n))+A053735(n)`
-/

namespace A362719.P2618180264942745485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115607 (A011782 n).toNat + A053735 n

end

end A362719.P2618180264942745485

/-! ## A362719.P1789464739974608282

`A153881(A001405(n))+A053735(n)`
-/

namespace A362719.P1789464739974608282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A001405 n).toNat + A053735 n

end

end A362719.P1789464739974608282

/-!
# A362720: a(n) is the smallest k > 0 such that b(n) = b(n-1) + A007504(k) is prime, with b(0) = 1.

The programs for A362720, there is no canonical definition to state claims against.
-/

/-! ## A362720.P18215222569598655702

`gcd(A000051(n), A326078(A151551(n)))`
-/

namespace A362720.P18215222569598655702
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000051 n) (A326078 (A151551 n).toNat)

end

end A362720.P18215222569598655702

/-! ## A362720.P17243083468490410714

`gcd(A008619(A000079(n+1)), A295920(2^n))`
-/

namespace A362720.P17243083468490410714
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008619 (A000079 (n + 1)).toNat) (A295920 (2 ^ n))

end

end A362720.P17243083468490410714

/-! ## A362720.P17523341835870435992

`gcd(A000051(n), A229173(A027642(n)))`
-/

namespace A362720.P17523341835870435992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000051 n) (A229173 (A027642 n).toNat)

end

end A362720.P17523341835870435992

/-! ## A362720.P6949084470089481053

`gcd(A082841(n), A088803(A284466(n)))`
-/

namespace A362720.P6949084470089481053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082841 n) (A088803 (A284466 n).toNat)

end

end A362720.P6949084470089481053

/-! ## A362720.P7791900511267009128

`gcd(A118534(A258616(n+5)), A176634(n))`
-/

namespace A362720.P7791900511267009128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A118534 (A258616 (n + 5)).toNat) (A176634 n)

end

end A362720.P7791900511267009128

/-!
# A362721: Number of numbers k, 1 <= k <= n, such that pi(k) = pi(n-k+1).

The programs for A362721, the canonical program `A362721.P12493911172926708372` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362721 has offset 1).

The definition of A362721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362721.P12493911172926708372

`abs(∑[A065357(A076272(n+1))])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A362721

/-- `abs(∑[A065357(A076272(n+1))])` -/
def P12493911172926708372.Spec : Prop :=
  ∀ n, P12493911172926708372.a n = A362721 (n + 1)

theorem P12493911172926708372.correct : P12493911172926708372.Spec := by
  intro n
  simp only [A362721, Nat.add_sub_cancel]

end A362721

/-! ## A362721.P11836761871171492600

`A056737(A036441(n+1))`
-/

namespace A362721.P11836761871171492600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A036441 (n + 1)).toNat

end

end A362721.P11836761871171492600

namespace A362721

/-- `A056737(A036441(n+1))` -/
def P11836761871171492600.Spec : Prop :=
  ∀ n, P11836761871171492600.a n = A362721 (n + 1)

end A362721

/-! ## A362721.P1088559755330808203

`A056737(A076271(n+2))`
-/

namespace A362721.P1088559755330808203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (A076271 (n + 2)).toNat

end

end A362721.P1088559755330808203

namespace A362721

/-- `A056737(A076271(n+2))` -/
def P1088559755330808203.Spec : Prop :=
  ∀ n, P1088559755330808203.a n = A362721 (n + 1)

end A362721

/-! ## A362721.P4612700937978058843

`abs(∑[A011582(A184003(n+1))])`
-/

namespace A362721.P4612700937978058843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011582 (A184003 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A362721.P4612700937978058843

namespace A362721

/-- `abs(∑[A011582(A184003(n+1))])` -/
def P4612700937978058843.Spec : Prop :=
  ∀ n, P4612700937978058843.a n = A362721 (n + 1)

end A362721

/-!
# A362726: a(n) = [x^n] E(x)^n where E(x) = exp( Sum_{k >= 1} A208675(k)*x^k/k ).

The programs for A362726, there is no canonical definition to state claims against.
-/

/-! ## A362726.P11990082559237386658

`A323956(A217900(n))`
-/

namespace A362726.P11990082559237386658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323956 (A217900 n).toNat

end

end A362726.P11990082559237386658

/-!
# A362727: a(n) = [x^n] ( E(x)/E(-x) )^n where E(x) = exp( Sum_{k >= 1} A208675(k)*x^k/k ).

The programs for A362727, there is no canonical definition to state claims against.
-/

/-! ## A362727.P8029021015431798177

`A000010((A005439(n)+n)²)`
-/

namespace A362727.P8029021015431798177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((A005439 n + (n : ℤ)) ^ 2).toNat

end

end A362727.P8029021015431798177

/-!
# A362728: a(n) = [x^n] E(x)^n where E(x) = exp( Sum_{k >= 1} A108628(k-1)*x^k/k ).

The programs for A362728, there is no canonical definition to state claims against.
-/

/-! ## A362728.P6565948886545226851

`A244234(floor(10^(n-1))+3)`
-/

namespace A362728.P6565948886545226851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244234 (⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + 3).toNat

end

end A362728.P6565948886545226851

/-!
# A362729: a(n) = [x^n] ( E(x)/E(-x) )^n where E(x) = exp( Sum_{k >= 1} A108628(k-1)*x^k/k ).

The programs for A362729, there is no canonical definition to state claims against.
-/

/-! ## A362729.P14134061084180950205

`A163334(A203013(n))+A002088(n)`
-/

namespace A362729.P14134061084180950205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163334 (A203013 n).toNat + A002088 n

end

end A362729.P14134061084180950205

/-!
# A362731: a(n) = [x^n] E(x)^n where E(x) = exp( Sum_{k >= 1} A000172(k)*x^k/k ).

The programs for A362731, there is no canonical definition to state claims against.
-/

/-! ## A362731.P14570219301497129110

`A063656(A326237(n))`
-/

namespace A362731.P14570219301497129110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063656 (A326237 n).toNat

end

end A362731.P14570219301497129110

/-!
# A362734: E.g.f. satisfies A(x) = exp(x + x * A(x)^3).

The programs for A362734, the canonical program `A362734.P3640640496656574391` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362734 has offset 0).

The definition of A362734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362734.P6119159060690444590

`∑{#}[n, (3*#+1)^(n-1)*C(n, #)]`
-/

namespace A362734.P6119159060690444590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (3 * k + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose n k : ℚ)

end

end A362734.P6119159060690444590

namespace A362734

/-- `∑{#}[n, (3*#+1)^(n-1)*C(n, #)]` -/
def P6119159060690444590.Spec : Prop :=
  ∀ n, P6119159060690444590.a n = (A362734 n : ℚ)

end A362734

/-! ## A362734.P3640640496656574391

`2^n*A349714(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A362734

/-- `2^n*A349714(n)` -/
def P3640640496656574391.Spec : Prop :=
  ∀ n, P3640640496656574391.a n = A362734 n

theorem P3640640496656574391.correct : P3640640496656574391.Spec := by
  intro n
  simp only [A362734]

end A362734

/-! ## A362734.P2805929204781490542

`A020639(A004277(n))*A218305(n)`
-/

namespace A362734.P2805929204781490542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A218305 n

end

end A362734.P2805929204781490542

namespace A362734

/-- `A020639(A004277(n))*A218305(n)` -/
def P2805929204781490542.Spec : Prop :=
  ∀ n, P2805929204781490542.a n = A362734 n

end A362734

/-! ## A362734.P6044363917129430864

`A000005(A006530(n+1))*A218305(n)`
-/

namespace A362734.P6044363917129430864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006530 (n + 1)).toNat * A218305 n

end

end A362734.P6044363917129430864

namespace A362734

/-- `A000005(A006530(n+1))*A218305(n)` -/
def P6044363917129430864.Spec : Prop :=
  ∀ n, P6044363917129430864.a n = A362734 n

end A362734

/-! ## A362734.P7799215021664397434

`A020639(A128209(n))*A218305(n)`
-/

namespace A362734.P7799215021664397434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A128209 n).toNat * A218305 n

end

end A362734.P7799215021664397434

namespace A362734

/-- `A020639(A128209(n))*A218305(n)` -/
def P7799215021664397434.Spec : Prop :=
  ∀ n, P7799215021664397434.a n = A362734 n

end A362734

/-!
# A362735: E.g.f. satisfies A(x) = exp(x + x / A(x)^2).

The programs for A362735, there is no canonical definition to state claims against.
-/

/-! ## A362735.P13445596867791957053

`2^n*A349720(n)`
-/

namespace A362735.P13445596867791957053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A349720 n

end

end A362735.P13445596867791957053

/-! ## A362735.P12440415021121452276

`A349720(n)*A353847(A000079(n))`
-/

namespace A362735.P12440415021121452276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349720 n * A353847 (A000079 n).toNat

end

end A362735.P12440415021121452276

/-!
# A362739: The smallest integer with three (not necessarily distinct) divisors that add to n.

The programs for A362739, there is no canonical definition to state claims against.
-/

/-! ## A362739.P16138160354299485436

`A108514(n+3)/2`
-/

namespace A362739.P16138160354299485436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108514 (n + 3) : ℚ) / 2

end

end A362739.P16138160354299485436

/-! ## A362739.P16135793602072361606

`A004526(A108514(n+3))`
-/

namespace A362739.P16135793602072361606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A108514 (n + 3)).toNat

end

end A362739.P16135793602072361606

/-! ## A362739.P11796567514909106186

`A008619(A108514(n+3)-1)`
-/

namespace A362739.P11796567514909106186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A108514 (n + 3) - 1).toNat

end

end A362739.P11796567514909106186

/-! ## A362739.P8247878580124338112

`A159481(A108514(n+3)-1)`
-/

namespace A362739.P8247878580124338112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (A108514 (n + 3) - 1).toNat

end

end A362739.P8247878580124338112

/-! ## A362739.P7117373118622835252

`A097140(lcm(2, A108514(n+3)))`
-/

namespace A362739.P7117373118622835252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (Int.lcm 2 (A108514 (n + 3)))

end

end A362739.P7117373118622835252

/-! ## A362739.P1169807985898495935

`Δ[A004525(∑[A108514(n+2)])]`
-/

namespace A362739.P1169807985898495935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108514 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A362739.P1169807985898495935

/-!
# A362740: Dimension of the vector space of 4-invariants on simple 01-labeled graphs on n vertices.

The programs for A362740, there is no canonical definition to state claims against.
-/

/-! ## A362740.P10707622240029770450

`ogf((2-x-2x^2+2x^3+x^4+5x^5)/(1-3x+x^2+2x^3))`
-/

namespace A362740.P10707622240029770450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -2, 2, 1, 5] [1, -3, 1, 2] n

end

end A362740.P10707622240029770450

/-! ## A362740.P8174796508281936122

`A121928(A030009(n+1))`
-/

namespace A362740.P8174796508281936122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121928 (A030009 (n + 1)).toNat

end

end A362740.P8174796508281936122

/-! ## A362740.P990195091463878340

`A037143(A133649(n)+1)`
-/

namespace A362740.P990195091463878340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (A133649 n + 1).toNat

end

end A362740.P990195091463878340

/-!
# A362741: Number of parking functions of size n avoiding the pattern 123.

The programs for A362741, the canonical program `A362741.P625655958039882843` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362741 has offset 0).

The definition of A362741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362741.P625655958039882843

`∑{#}[n, (-1)^(n-#)*C(n, #)*A128088(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A362741

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A128088(#)]` -/
def P625655958039882843.Spec : Prop :=
  ∀ n, P625655958039882843.a n = (A362741 n : ℚ)

end A362741

/-! ## A362741.P8497712926079921347

`A034887(A006013(n)+A000108(n))`
-/

namespace A362741.P8497712926079921347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A006013 n + A000108 n).toNat

end

end A362741.P8497712926079921347

namespace A362741

/-- `A034887(A006013(n)+A000108(n))` -/
def P8497712926079921347.Spec : Prop :=
  ∀ n, P8497712926079921347.a n = A362741 n

end A362741

/-! ## A362741.P2433885158411241879

`A004526(A004148(2*n)+A000108(n))`
-/

namespace A362741.P2433885158411241879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004148 (2 * n) + A000108 n).toNat

end

end A362741.P2433885158411241879

namespace A362741

/-- `A004526(A004148(2*n)+A000108(n))` -/
def P2433885158411241879.Spec : Prop :=
  ∀ n, P2433885158411241879.a n = A362741 n

end A362741

/-!
# A362744: Number of parking functions of size n avoiding the patterns 312 and 321.

The programs for A362744, there is no canonical definition to state claims against.
-/

/-! ## A362744.P3349529361725966741

`A132270(8*A226316(n))`
-/

namespace A362744.P3349529361725966741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (8 * A226316 n).toNat

end

end A362744.P3349529361725966741

/-! ## A362744.P4483761521353123659

`A110656(∑[∑[A001850(n)]])`
-/

namespace A362744.P4483761521353123659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362744.P4483761521353123659

/-!
# A362746: a(1)=a(2)=1; a(n)=The count of all occurrences in the list so far where integer a(n-1) appears adjacent to integer a(n-2).

The programs for A362746, there is no canonical definition to state claims against.
-/

/-! ## A362746.P9617283612952774008

`A001221(A349933(3*n+1)+A000203(n+3))`
-/

namespace A362746.P9617283612952774008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A349933 (3 * n + 1) + A000203 (n + 3)).toNat

end

end A362746.P9617283612952774008

/-! ## A362746.P12749610326125864442

`A181591(A130707(n))+A086017(A029905(n+1))`
-/

namespace A362746.P12749610326125864442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181591 (A130707 n).toNat + A086017 (A029905 (n + 1)).toNat

end

end A362746.P12749610326125864442

/-! ## A362746.P8079603102803010101

`gcd(∑{d}[n+1, #], A102669(A283543(2*(n+2))))`
-/

namespace A362746.P8079603102803010101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A102669 (A283543 (2 * (n + 2))).toNat)

end

end A362746.P8079603102803010101

/-! ## A362746.P630127285586999826

`∑{e}[∏{p}[A273873(n+1)+A034691(n+3), #], #]`
-/

namespace A362746.P630127285586999826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273873 (n + 1) + A034691 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A362746.P630127285586999826

/-! ## A362746.P2775635543139913999

`A066099(A055259(n+1)-(n+1)/2^val(n+1, 2))`
-/

namespace A362746.P2775635543139913999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (SequenceMachineLib.roundAway ((A055259 (n + 1) : ℚ) - (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A362746.P2775635543139913999

/-!
# A362747: E.g.f. satisfies A(x) = exp(x^2/2 + x * A(x)).

The programs for A362747, there is no canonical definition to state claims against.
-/

/-! ## A362747.P3053954779369738143

`A085062(A308861(n)+A000325(n))`
-/

namespace A362747.P3053954779369738143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085062 (A308861 n + A000325 n).toNat

end

end A362747.P3053954779369738143

/-! ## A362747.P17108019075320343708

`A054429(A102687(n))*A136690(n)`
-/

namespace A362747.P17108019075320343708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A102687 n).toNat * A136690 n

end

end A362747.P17108019075320343708

/-!
# A362748: E.g.f. satisfies A(x) = exp(x^3/6 + x * A(x)).

The programs for A362748, there is no canonical definition to state claims against.
-/

/-! ## A362748.P16021616104182394041

`A324161(A116956(n))`
-/

namespace A362748.P16021616104182394041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324161 (A116956 n).toNat

end

end A362748.P16021616104182394041

/-! ## A362748.P4957500368145613307

`A027868(A005012(n))+A011782(n)`
-/

namespace A362748.P4957500368145613307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (A005012 n).toNat + A011782 n

end

end A362748.P4957500368145613307

/-!
# A362749: Run length transform of A362240.

The programs for A362749, there is no canonical definition to state claims against.
-/

/-! ## A362749.P2563211468524506526

`runs[A362240(n+1)]`
-/

namespace A362749.P2563211468524506526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362240 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A362749.P2563211468524506526

/-! ## A362749.P16762134487342682318

`runs[Δ[A362598(n)]]`
-/

namespace A362749.P16762134487342682318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362598 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A362749.P16762134487342682318

/-!
# A362750: Number of total dominating sets in the n-double cone graph.

The programs for A362750, the canonical program `A362750.P9025024006486323099` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362750 has offset 1).

The definition of A362750 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362750.P9025024006486323099

`A001638(n+1)²+4^(n+1)-1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A362750

/-- `A001638(n+1)²+4^(n+1)-1` -/
def P9025024006486323099.Spec : Prop :=
  ∀ n, P9025024006486323099.a n = A362750 (n + 1)

theorem P9025024006486323099.correct : P9025024006486323099.Spec := by
  intro n
  simp only [A362750, Nat.add_sub_cancel]

end A362750

/-! ## A362750.P9334553790599669499

`(A000032(n+1)+2*A056594(n+1))²+4^(n+1)-1`
-/

namespace A362750.P9334553790599669499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 (n + 1) + 2 * A056594 (n + 1)) ^ 2 + (4 ^ (n + 1) : ℤ) - 1

end

end A362750.P9334553790599669499

namespace A362750

/-- `(A000032(n+1)+2*A056594(n+1))²+4^(n+1)-1` -/
def P9334553790599669499.Spec : Prop :=
  ∀ n, P9334553790599669499.a n = A362750 (n + 1)

end A362750

/-! ## A362750.P18087491302716967332

`A000225(2*(n+1))+A001638(n+1)²`
-/

namespace A362750.P18087491302716967332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * (n + 1)) + A001638 (n + 1) ^ 2

end

end A362750.P18087491302716967332

namespace A362750

/-- `A000225(2*(n+1))+A001638(n+1)²` -/
def P18087491302716967332.Spec : Prop :=
  ∀ n, P18087491302716967332.a n = A362750 (n + 1)

end A362750

/-! ## A362750.P13559689469530826327

`A126646(2*n+1)+A001638(n+1)²`
-/

namespace A362750.P13559689469530826327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (2 * n + 1) + A001638 (n + 1) ^ 2

end

end A362750.P13559689469530826327

namespace A362750

/-- `A126646(2*n+1)+A001638(n+1)²` -/
def P13559689469530826327.Spec : Prop :=
  ∀ n, P13559689469530826327.a n = A362750 (n + 1)

end A362750

/-!
# A362751: Number of total dominating sets in the n-trapezohedral graph.

The programs for A362751, the canonical program `A362751.P2430546139976229584` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362751 has offset 1).

The definition of A362751 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362751.P2430546139976229584

`(A000032(n+1)+2^(n+1)-1)²`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A362751

/-- `(A000032(n+1)+2^(n+1)-1)²` -/
def P2430546139976229584.Spec : Prop :=
  ∀ n, P2430546139976229584.a n = A362751 (n + 1)

theorem P2430546139976229584.correct : P2430546139976229584.Spec := by
  intro n
  simp only [A362751, Nat.add_sub_cancel]

end A362751

/-! ## A362751.P6873435722706175897

`(A000045(n+2)+A000045(n)+2^(n+1)-1)²`
-/

namespace A362751.P6873435722706175897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) + A000045 n + (2 ^ (n + 1) : ℤ) - 1) ^ 2

end

end A362751.P6873435722706175897

namespace A362751

/-- `(A000045(n+2)+A000045(n)+2^(n+1)-1)²` -/
def P6873435722706175897.Spec : Prop :=
  ∀ n, P6873435722706175897.a n = A362751 (n + 1)

end A362751

/-! ## A362751.P8131981370189381545

`(1-A088859(n+1))²`
-/

namespace A362751.P8131981370189381545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A088859 (n + 1)) ^ 2

end

end A362751.P8131981370189381545

namespace A362751

/-- `(1-A088859(n+1))²` -/
def P8131981370189381545.Spec : Prop :=
  ∀ n, P8131981370189381545.a n = A362751 (n + 1)

end A362751

/-! ## A362751.P3167703392817845425

`(A101353(n)+A001611(n))²`
-/

namespace A362751.P3167703392817845425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A101353 n + A001611 n) ^ 2

end

end A362751.P3167703392817845425

namespace A362751

/-- `(A101353(n)+A001611(n))²` -/
def P3167703392817845425.Spec : Prop :=
  ∀ n, P3167703392817845425.a n = A362751 (n + 1)

end A362751

/-! ## A362751.P16286485005028027286

`(A126646(n)+A000032(n+1))²`
-/

namespace A362751.P16286485005028027286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126646 n + A000032 (n + 1)) ^ 2

end

end A362751.P16286485005028027286

namespace A362751

/-- `(A126646(n)+A000032(n+1))²` -/
def P16286485005028027286.Spec : Prop :=
  ∀ n, P16286485005028027286.a n = A362751 (n + 1)

theorem P16286485005028027286.correct : P16286485005028027286.Spec := by
  intro n
  simp only [A362751, Nat.add_sub_cancel, A362751.P16286485005028027286.a, A362751.P2430546139976229584.a, A000032, A000032.P8352177345629330861.a, A126646, A126646.P3746310572697910447.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A362751

/-! ## A362751.P5114248481220918387

`(A126646(n)+A000204(n+1))²`
-/

namespace A362751.P5114248481220918387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126646 n + A000204 (n + 1)) ^ 2

end

end A362751.P5114248481220918387

namespace A362751

/-- `(A126646(n)+A000204(n+1))²` -/
def P5114248481220918387.Spec : Prop :=
  ∀ n, P5114248481220918387.a n = A362751 (n + 1)

end A362751

/-! ## A362751.P10549933389731886592

`(A000225(n+1)+A000032(n+1))²`
-/

namespace A362751.P10549933389731886592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) + A000032 (n + 1)) ^ 2

end

end A362751.P10549933389731886592

namespace A362751

/-- `(A000225(n+1)+A000032(n+1))²` -/
def P10549933389731886592.Spec : Prop :=
  ∀ n, P10549933389731886592.a n = A362751 (n + 1)

theorem P10549933389731886592.correct : P10549933389731886592.Spec := by
  intro n
  simp only [A362751, Nat.add_sub_cancel, A362751.P10549933389731886592.a, A362751.P2430546139976229584.a, A000032, A000032.P8352177345629330861.a, A000225, A000225.P6535533121115206393.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A362751

/-! ## A362751.P13837343385998490595

`(A099036(n+1)+A001595(n+1))²`
-/

namespace A362751.P13837343385998490595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A099036 (n + 1) + A001595 (n + 1)) ^ 2

end

end A362751.P13837343385998490595

namespace A362751

/-- `(A099036(n+1)+A001595(n+1))²` -/
def P13837343385998490595.Spec : Prop :=
  ∀ n, P13837343385998490595.a n = A362751 (n + 1)

end A362751

/-! ## A362751.P6546408394435796078

`(A052955(2*n)+A000032(n+1))²`
-/

namespace A362751.P6546408394435796078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052955 (2 * n) + A000032 (n + 1)) ^ 2

end

end A362751.P6546408394435796078

namespace A362751

/-- `(A052955(2*n)+A000032(n+1))²` -/
def P6546408394435796078.Spec : Prop :=
  ∀ n, P6546408394435796078.a n = A362751 (n + 1)

end A362751

/-!
# A362756: Sum of the bits of the "fractional part" of the base-phi representation of n.

The programs for A362756, there is no canonical definition to state claims against.
-/

/-! ## A362756.P12566650670941277377

`dr(A341722(n))`
-/

namespace A362756.P12566650670941277377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A341722 n)

end

end A362756.P12566650670941277377

/-! ## A362756.P5971714485332384822

`A055778(n)-A362716(n)`
-/

namespace A362756.P5971714485332384822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 n - A362716 n

end

end A362756.P5971714485332384822

/-! ## A362756.P18047471209156734653

`A341722(n)%A100401(n)`
-/

namespace A362756.P18047471209156734653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341722 n) (A100401 n)

end

end A362756.P18047471209156734653

/-! ## A362756.P10307209940893142270

`∑{digits}[A341722(n), A000035(#)]`
-/

namespace A362756.P10307209940893142270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000035 x).sum

end

end A362756.P10307209940893142270

/-! ## A362756.P13793455545549029921

`∑{digits}[A341722(n), A000045(#)]`
-/

namespace A362756.P13793455545549029921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 x).sum

end

end A362756.P13793455545549029921

/-! ## A362756.P11814833966490825310

`∑{digits}[A341722(n), A002450(#)]`
-/

namespace A362756.P11814833966490825310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A002450 x).sum

end

end A362756.P11814833966490825310

/-! ## A362756.P642297661925397304

`∑{digits}[A341722(n), A035608(#)]`
-/

namespace A362756.P642297661925397304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A035608 x).sum

end

end A362756.P642297661925397304

/-! ## A362756.P8789450453121917209

`∑{digits}[A341722(n), A057162(#)]`
-/

namespace A362756.P8789450453121917209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341722 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A057162 x).sum

end

end A362756.P8789450453121917209

/-! ## A362756.P11163382335118265697

`dr(A215023(∑[A284749(n+1)-A286746(n+1)]))`
-/

namespace A362756.P11163382335118265697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284749 (n + 1) - A286746 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A215023 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A362756.P11163382335118265697

/-!
# A362757: The number of integers in the set f^n({0}), where f is a variant of the Collatz function that replaces any element x in the argument set with both x/2 and 3*x+1.

The programs for A362757, there is no canonical definition to state claims against.
-/

/-! ## A362757.P5887822578976858884

`A003059(A157029(n+1))`
-/

namespace A362757.P5887822578976858884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A157029 (n + 1)).toNat

end

end A362757.P5887822578976858884

/-! ## A362757.P8740218110504965485

`A376138(A291248(n+1))`
-/

namespace A362757.P8740218110504965485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376138 (A291248 (n + 1)).toNat

end

end A362757.P8740218110504965485

/-! ## A362757.P16661096583894636281

`A000196(A003429(n+1)-2)`
-/

namespace A362757.P16661096583894636281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A003429 (n + 1) - 2).toNat

end

end A362757.P16661096583894636281

/-! ## A362757.P13435153701861352448

`A000196(A033484(n)+A001006(n))`
-/

namespace A362757.P13435153701861352448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A033484 n + A001006 n).toNat

end

end A362757.P13435153701861352448

/-! ## A362757.P1284485974311939815

`A000196(A271087(n)+A001787(n))`
-/

namespace A362757.P1284485974311939815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A271087 n + A001787 n).toNat

end

end A362757.P1284485974311939815

/-!
# A362758: Triangular numbers which are products of six distinct primes.

The programs for A362758, there is no canonical definition to state claims against.
-/

/-! ## A362758.P2442765427710673561

`∩[A067885(n+1), A076580(n+1)]`
-/

namespace A362758.P2442765427710673561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362758.P2442765427710673561

/-!
# A362759: Array read by antidiagonals: T(n,k) is the number of nonisomorphic multisets of derangements of an n-set with k derangements.

The programs for A362759, there is no canonical definition to state claims against.
-/

/-! ## A362759.P6258250054729827482

`A178692(A090030(n))`
-/

namespace A362759.P6258250054729827482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178692 (A090030 n).toNat

end

end A362759.P6258250054729827482

/-! ## A362759.P4444346403440863219

`A118458(A362899(n))`
-/

namespace A362759.P4444346403440863219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118458 (A362899 n).toNat

end

end A362759.P4444346403440863219

/-! ## A362759.P17478049481321036079

`A332761(A334548(n))`
-/

namespace A362759.P17478049481321036079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332761 (A334548 n).toNat

end

end A362759.P17478049481321036079

/-! ## A362759.P15781049284370721762

`A060128(A266867(n+1))`
-/

namespace A362759.P15781049284370721762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (A266867 (n + 1)).toNat

end

end A362759.P15781049284370721762

/-! ## A362759.P10207956344224503876

`A060128(A266994(n+1))`
-/

namespace A362759.P10207956344224503876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (A266994 (n + 1)).toNat

end

end A362759.P10207956344224503876

/-!
# A362760: Number of nonisomorphic unordered pairs of derangements of an n-set.

The programs for A362760, there is no canonical definition to state claims against.
-/

/-! ## A362760.P9193405050146902112

`A362759(∑[n+3])`
-/

namespace A362760.P9193405050146902112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362759 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362760.P9193405050146902112

/-! ## A362760.P5313049070810892554

`A362759(A141214(n))/A119335(n)`
-/

namespace A362760.P5313049070810892554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362759 (A141214 n).toNat : ℚ) / (A119335 n : ℚ)

end

end A362760.P5313049070810892554

/-! ## A362760.P464741762773506722

`lcm(A033999(n), A362759(A141214(n)))`
-/

namespace A362760.P464741762773506722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A362759 (A141214 n).toNat)

end

end A362760.P464741762773506722

/-! ## A362760.P3862474540282030040

`A362759(A141214(n))%A005651(n+3)`
-/

namespace A362760.P3862474540282030040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362759 (A141214 n).toNat) (A005651 (n + 3))

end

end A362760.P3862474540282030040

/-! ## A362760.P12319686416894712033

`A362759(A141214(n))+A000007(2*n+3)`
-/

namespace A362760.P12319686416894712033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362759 (A141214 n).toNat + A000007 (2 * n + 3)

end

end A362760.P12319686416894712033

/-!
# A362761: Number of nonisomorphic unordered triples of derangements of an n-set.

The programs for A362761, there is no canonical definition to state claims against.
-/

/-! ## A362761.P8669286739821406194

`A362759(3*n+∑[n+1]+5)`
-/

namespace A362761.P8669286739821406194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362759 (3 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 5))

end

end A362761.P8669286739821406194

/-! ## A362761.P1681379417317668453

`A172311(A353255(n))`
-/

namespace A362761.P1681379417317668453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172311 (A353255 n).toNat

end

end A362761.P1681379417317668453

/-!
# A362762: Number of nonisomorphic multisets of derangements of an n-set with n derangements.

The programs for A362762, there is no canonical definition to state claims against.
-/

/-! ## A362762.P18184408814425961267

`A362759(∑[4*n])`
-/

namespace A362762.P18184408814425961267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362759 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A362762.P18184408814425961267

/-! ## A362762.P1691041437725691444

`A362759(A046092(n))^A178487(n)`
-/

namespace A362762.P1691041437725691444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A362759 (A046092 n).toNat : ℚ) ^ (A178487 n : ℤ)

end

end A362762.P1691041437725691444

/-! ## A362762.P1303438774596845946

`A362759(A046092(n))+A335462(n+1)`
-/

namespace A362762.P1303438774596845946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362759 (A046092 n).toNat + A335462 (n + 1)

end

end A362762.P1303438774596845946

/-! ## A362762.P10936885582829400440

`A362759(A046092(n))+A083206(2*n+1)`
-/

namespace A362762.P10936885582829400440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362759 (A046092 n).toNat + A083206 (2 * n + 1)

end

end A362762.P10936885582829400440

/-! ## A362762.P15395986686774334319

`A362759(A007590(2*n+1))+A035363(2*n+3)`
-/

namespace A362762.P15395986686774334319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362759 (A007590 (2 * n + 1)).toNat + A035363 (2 * n + 3)

end

end A362762.P15395986686774334319

/-!
# A362763: Array read by antidiagonals: T(n,k) is the number of nonisomorphic k-sets of permutations of an n-set.

The programs for A362763, there is no canonical definition to state claims against.
-/

/-! ## A362763.P11415744402423821600

`C(A152157(n+4), A062931(A104766(n+1)))`
-/

namespace A362763.P11415744402423821600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A152157 (n + 4)).toNat (A062931 (A104766 (n + 1)).toNat).toNat

end

end A362763.P11415744402423821600

/-! ## A362763.P14960625912819159239

`A026729(n%A029726(n))`
-/

namespace A362763.P14960625912819159239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (Int.tmod (n : ℤ) (A029726 n)).toNat

end

end A362763.P14960625912819159239

/-! ## A362763.P7565494240474380689

`A026729(n)^A061395(ceil(2^(n-1)))`
-/

namespace A362763.P7565494240474380689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026729 n : ℚ) ^ (A061395 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat : ℤ)

end

end A362763.P7565494240474380689

/-! ## A362763.P15129720015757201888

`gcd(A008683(ceil(2^(n-1))), A026729(n))`
-/

namespace A362763.P15129720015757201888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (A026729 n)

end

end A362763.P15129720015757201888

/-! ## A362763.P14776082192745923815

`or(A026729(n), A036987(ceil(2^(n-1))))`
-/

namespace A362763.P14776082192745923815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026729 n) (A036987 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat)

end

end A362763.P14776082192745923815

/-!
# A362764: Number of nonisomorphic 2-sets of permutations of an n-set.

The programs for A362764, there is no canonical definition to state claims against.
-/

/-! ## A362764.P3814832870644898946

`A362645(n+1)-A000041(n+1)`
-/

namespace A362764.P3814832870644898946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362645 (n + 1) - A000041 (n + 1)

end

end A362764.P3814832870644898946

/-! ## A362764.P10802059332002327803

`A362763(A141214(n+1))`
-/

namespace A362764.P10802059332002327803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362763 (A141214 (n + 1)).toNat

end

end A362764.P10802059332002327803

/-! ## A362764.P15709994223818526668

`A362763(A027379(n+2))`
-/

namespace A362764.P15709994223818526668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362763 (A027379 (n + 2)).toNat

end

end A362764.P15709994223818526668

/-! ## A362764.P8311982195941410700

`A362763(A055998(n+2))`
-/

namespace A362764.P8311982195941410700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362763 (A055998 (n + 2)).toNat

end

end A362764.P8311982195941410700

/-! ## A362764.P16377252254340327967

`A362763(A056000(n)+7)`
-/

namespace A362764.P16377252254340327967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362763 (A056000 n + 7).toNat

end

end A362764.P16377252254340327967

/-!
# A362765: Number of nonisomorphic 3-sets of permutations of an n-set.

The programs for A362765, there is no canonical definition to state claims against.
-/

/-! ## A362765.P16817010038572802329

`A362763(Δ[A264443(n)])`
-/

namespace A362765.P16817010038572802329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362763 (f1 (n + 1) - f1 n).toNat

end

end A362765.P16817010038572802329

/-! ## A362765.P10523515575754331014

`A362763(A056115(n)+11)`
-/

namespace A362765.P10523515575754331014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362763 (A056115 n + 11).toNat

end

end A362765.P10523515575754331014

/-! ## A362765.P12293054348843400250

`A362763(eq[2, A092921(n)])`
-/

namespace A362765.P12293054348843400250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362765.P12293054348843400250

/-! ## A362765.P1069474276202124623

`A362763(eq[3, A152157(n)])`
-/

namespace A362765.P1069474276202124623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362763 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A362765.P1069474276202124623

/-! ## A362765.P14503976184545421611

`A362763(A027379(n+3)-1)`
-/

namespace A362765.P14503976184545421611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362763 (A027379 (n + 3) - 1).toNat

end

end A362765.P14503976184545421611

/-!
# A362767: Number of multisets of permutations with a combined total of n moved points spanning an initial interval of positive integers.

The programs for A362767, there is no canonical definition to state claims against.
-/

/-! ## A362767.P1181444715381156486

`A288952(A265635(n+1))+A288952(n)`
-/

namespace A362767.P1181444715381156486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288952 (A265635 (n + 1)).toNat + A288952 n

end

end A362767.P1181444715381156486

/-!
# A362770: a(n) is the least prime p that ends an increasing sequence x(1), ..., x(n) = p of primes such that x(i) + x(i+1) + 1 is prime for 1 <= i <= n-1.

The programs for A362770, there is no canonical definition to state claims against.
-/

/-! ## A362770.P7196799573262058813

`A112786(n)-A000007(A236914(n))`
-/

namespace A362770.P7196799573262058813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112786 n - A000007 (A236914 n).toNat

end

end A362770.P7196799573262058813

/-! ## A362770.P15392812705855525848

`A112786(n)-A271102(A112835(n))`
-/

namespace A362770.P15392812705855525848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112786 n - A271102 (A112835 n).toNat

end

end A362770.P15392812705855525848

/-! ## A362770.P17909913966136728316

`A112786(n)+A010815(A029494(n+1))`
-/

namespace A362770.P17909913966136728316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112786 n + A010815 (A029494 (n + 1)).toNat

end

end A362770.P17909913966136728316

/-! ## A362770.P10987421976222257613

`A112786(n)-A121373(A094196(n+1))`
-/

namespace A362770.P10987421976222257613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112786 n - A121373 (A094196 (n + 1)).toNat

end

end A362770.P10987421976222257613

/-! ## A362770.P12531898405432177292

`A112786(n)-A351114(A061256(n+1))`
-/

namespace A362770.P12531898405432177292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112786 n - A351114 (A061256 (n + 1)).toNat

end

end A362770.P12531898405432177292

/-!
# A362771: E.g.f. satisfies A(x) = exp( x * (1+x) * A(x) ).

The programs for A362771, the canonical program `A362771.P8954687839956225735` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362771 has offset 0).

The definition of A362771 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362771.P8954687839956225735

`n!*∑{#}[n, (#+1)^(#-1)*C(#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362771

/-- `n!*∑{#}[n, (#+1)^(#-1)*C(#, n-#)/#!]` -/
def P8954687839956225735.Spec : Prop :=
  ∀ n, P8954687839956225735.a n = (A362771 n : ℚ)

end A362771

/-! ## A362771.P1973573445375790085

`A377826(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A362771.P1973573445375790085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A377826 n - (n : ℤ) * a (n - 1)

end

end A362771.P1973573445375790085

namespace A362771

/-- `A377826(n)-n*a(n-1)` -/
def P1973573445375790085.Spec : Prop :=
  ∀ n, P1973573445375790085.a n = A362771 n

end A362771

/-!
# A362772: E.g.f. satisfies A(x) = exp( x * (1+x)^2 * A(x) ).

The programs for A362772, the canonical program `A362772.P15019915527067312571` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362772 has offset 0).

The definition of A362772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362772.P15019915527067312571

`n!*∑{#}[n, (#+1)^(#-1)*C(2*#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362772

/-- `n!*∑{#}[n, (#+1)^(#-1)*C(2*#, n-#)/#!]` -/
def P15019915527067312571.Spec : Prop :=
  ∀ n, P15019915527067312571.a n = (A362772 n : ℚ)

end A362772

/-!
# A362773: E.g.f. satisfies A(x) = exp( x * (1+x) * A(x)^2 ).

The programs for A362773, the canonical program `A362773.P5094471447097283564` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362773 has offset 0).

The definition of A362773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362773.P5094471447097283564

`n!*∑{#}[n, (2*#+1)^(#-1)*C(#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362773

/-- `n!*∑{#}[n, (2*#+1)^(#-1)*C(#, n-#)/#!]` -/
def P5094471447097283564.Spec : Prop :=
  ∀ n, P5094471447097283564.a n = (A362773 n : ℚ)

end A362773

/-!
# A362774: E.g.f. satisfies A(x) = exp( x * (1+x)^2 * A(x)^2 ).

The programs for A362774, the canonical program `A362774.P6949864627576877708` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362774 has offset 0).

The definition of A362774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362774.P6949864627576877708

`n!*∑{#}[n, (2*#+1)^(#-1)*C(2*#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362774

/-- `n!*∑{#}[n, (2*#+1)^(#-1)*C(2*#, n-#)/#!]` -/
def P6949864627576877708.Spec : Prop :=
  ∀ n, P6949864627576877708.a n = (A362774 n : ℚ)

end A362774

/-!
# A362775: E.g.f. satisfies A(x) = exp( x/(1-x)^2 * A(x) ).

The programs for A362775, there is no canonical definition to state claims against.
-/

/-! ## A362775.P3812836795623912674

`A094798(ceil(11^n/10)+floor(n/2))`
-/

namespace A362775.P3812836795623912674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094798 (⌈(11 ^ n : ℚ) / 10⌉ + ⌊(n : ℚ) / 2⌋).toNat

end

end A362775.P3812836795623912674

/-!
# A362776: E.g.f. satisfies A(x) = exp( x/(1-x)^2 * A(x)^2 ).

The programs for A362776, there is no canonical definition to state claims against.
-/

/-! ## A362776.P12853097488449941388

`A035262(A121251(n))`
-/

namespace A362776.P12853097488449941388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035262 (A121251 n).toNat

end

end A362776.P12853097488449941388

/-!
# A362777: Triangular array read by rows: T(n,k) = n!*k + 1, n >= 1, 1 <= k <= n.

The programs for A362777, the canonical program `A362777.P3933289125081350178` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362777 has offset 1).

The definition of A362777 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1)!*(col(n)+1)+1` (program `A362777.P3933289125081350178`, by `A362777.P3933289125081350178.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A362777.P3933289125081350178

`(row(n)+1)!*(col(n)+1)+1`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362777

/-- `(row(n)+1)!*(col(n)+1)+1` -/
def P3933289125081350178.Spec : Prop :=
  ∀ n, (P3933289125081350178.a n : ℤ) = A362777 (n + 1)

theorem P3933289125081350178.correct : P3933289125081350178.Spec := by
  intro n
  simp only [A362777, Nat.add_sub_cancel]

end A362777

/-! ## A362777.P6067826718877442020

`∑[round(sqrt(2*n))!]+1`
-/

namespace A362777.P6067826718877442020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A362777.P6067826718877442020

namespace A362777

/-- `∑[round(sqrt(2*n))!]+1` -/
def P6067826718877442020.Spec : Prop :=
  ∀ n, (P6067826718877442020.a n : ℤ) = A362777 (n + 1)

end A362777

/-! ## A362777.P12499298225610171802

`-xor(∑[round(sqrt(2*n))!], -1)`
-/

namespace A362777.P12499298225610171802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (-1)

end

end A362777.P12499298225610171802

namespace A362777

/-- `-xor(∑[round(sqrt(2*n))!], -1)` -/
def P12499298225610171802.Spec : Prop :=
  ∀ n, P12499298225610171802.a n = A362777 (n + 1)

end A362777

/-! ## A362777.P5102401542465330618

`a(n-1)+round(sqrt(2*n))!` with `a(0)=2`
-/

namespace A362777.P5102401542465330618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

end

end A362777.P5102401542465330618

namespace A362777

/-- `a(n-1)+round(sqrt(2*n))!` -/
def P5102401542465330618.Spec : Prop :=
  ∀ n, (P5102401542465330618.a n : ℤ) = A362777 (n + 1)

end A362777

/-! ## A362777.P924059356560533687

`1+(row(n)+1)!*(col(n)+1)`
-/

namespace A362777.P924059356560533687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + Nat.factorial (SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triCol n + 1)

end

end A362777.P924059356560533687

namespace A362777

/-- `1+(row(n)+1)!*(col(n)+1)` -/
def P924059356560533687.Spec : Prop :=
  ∀ n, (P924059356560533687.a n : ℤ) = A362777 (n + 1)

theorem P924059356560533687.correct : P924059356560533687.Spec := by
  intro n
  simp only [A362777, Nat.add_sub_cancel, A362777.P924059356560533687.a, A362777.P3933289125081350178.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A362777

/-!
# A362778: Triangular array read by rows: T(n,k) is the least prime factor of n!*k + 1, n >= 1, 1 <= k <= n.

The programs for A362778, there is no canonical definition to state claims against.
-/

/-! ## A362778.P13573543218002614683

`A020639(A362777(n+1))`
-/

namespace A362778.P13573543218002614683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A362777 (n + 1)).toNat

end

end A362778.P13573543218002614683

/-! ## A362778.P11400720630118589535

`A020639(∑[round(sqrt(2*n))!]+1)`
-/

namespace A362778.P11400720630118589535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A362778.P11400720630118589535

/-! ## A362778.P7835171491761502717

`A020639(A200748(n)+2)`
-/

namespace A362778.P7835171491761502717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A200748 n + 2).toNat

end

end A362778.P7835171491761502717

/-! ## A362778.P17959272713129458909

`A020639(A051683(n+1)+1)`
-/

namespace A362778.P17959272713129458909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A051683 (n + 1) + 1).toNat

end

end A362778.P17959272713129458909

/-! ## A362778.P13872520863163997242

`A138221(∑[round(sqrt(2*n))!]+1)`
-/

namespace A362778.P13872520863163997242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138221 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A362778.P13872520863163997242

/-!
# A362779: Triangular array read by rows: T(n,k) is the greatest prime factor of n!*k + 1, n >= 1, 1 <= k <= n.

The programs for A362779, the canonical program `A362779.P13111923122008329492` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362779 has offset 1).

The definition of A362779 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A362779.P13111923122008329492

`A006530(A362777(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A362779

/-- `A006530(A362777(n+1))` -/
def P13111923122008329492.Spec : Prop :=
  ∀ n, P13111923122008329492.a n = A362779 (n + 1)

theorem P13111923122008329492.correct : P13111923122008329492.Spec := by
  intro n
  simp only [A362779, Nat.add_sub_cancel]

end A362779

/-! ## A362779.P16820822239023102769

`A006530(∑[round(sqrt(2*n))!]+1)`
-/

namespace A362779.P16820822239023102769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A362779.P16820822239023102769

namespace A362779

/-- `A006530(∑[round(sqrt(2*n))!]+1)` -/
def P16820822239023102769.Spec : Prop :=
  ∀ n, P16820822239023102769.a n = A362779 (n + 1)

end A362779

/-! ## A362779.P14272773457870057957

`A006530(A200748(n)+2)`
-/

namespace A362779.P14272773457870057957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A200748 n + 2).toNat

end

end A362779.P14272773457870057957

namespace A362779

/-- `A006530(A200748(n)+2)` -/
def P14272773457870057957.Spec : Prop :=
  ∀ n, P14272773457870057957.a n = A362779 (n + 1)

theorem P14272773457870057957.correct : P14272773457870057957.Spec := by
  intro n
  simp only [A362779, Nat.add_sub_cancel, A362779.P14272773457870057957.a, A362779.P13111923122008329492.a, A006530, A006530.P13372528560459906635.a, A200748, A200748.P9894556090439625934.a, A362777, A362777.P3933289125081350178.a, A051683, A051683.P10231824397598348514.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362779

/-! ## A362779.P7373771371745582292

`A006530(A051683(n+1)+1)`
-/

namespace A362779.P7373771371745582292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A051683 (n + 1) + 1).toNat

end

end A362779.P7373771371745582292

namespace A362779

/-- `A006530(A051683(n+1)+1)` -/
def P7373771371745582292.Spec : Prop :=
  ∀ n, P7373771371745582292.a n = A362779 (n + 1)

theorem P7373771371745582292.correct : P7373771371745582292.Spec := by
  intro n
  simp only [A362779, Nat.add_sub_cancel, A362779.P7373771371745582292.a, A362779.P13111923122008329492.a, A006530, A006530.P13372528560459906635.a, A051683, A051683.P10231824397598348514.a, A362777, A362777.P3933289125081350178.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A362779

/-! ## A362779.P1259198830524294730

`A006530(A003991(n+1)*A077012(n+1)+1)`
-/

namespace A362779.P1259198830524294730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003991 (n + 1) * A077012 (n + 1) + 1).toNat

end

end A362779.P1259198830524294730

namespace A362779

/-- `A006530(A003991(n+1)*A077012(n+1)+1)` -/
def P1259198830524294730.Spec : Prop :=
  ∀ n, P1259198830524294730.a n = A362779 (n + 1)

end A362779

/-!
# A362782: a(n) is the smallest number k whose symmetric representation of sigma(k) shares sections of its border with those of n other numbers.

The programs for A362782, there is no canonical definition to state claims against.
-/

/-! ## A362782.P7168797298398365985

`∩[A168267(n+1), A179834(n+1)]`
-/

namespace A362782.P7168797298398365985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362782.P7168797298398365985

/-! ## A362782.P16407885210870754305

`∩[A179834(n+1), A308912(n+1)]`
-/

namespace A362782.P16407885210870754305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A362782.P16407885210870754305

/-! ## A362782.P6765576310753135351

`A000005(∏[∑[A331161(n)]])`
-/

namespace A362782.P6765576310753135351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331161 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362782.P6765576310753135351

/-! ## A362782.P15292631638966905728

`A000005(∏[∑[A331278(n)]])`
-/

namespace A362782.P15292631638966905728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331278 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A362782.P15292631638966905728

/-! ## A362782.P3148938862932254918

`record[A083261(A005940(n+1))]`
-/

namespace A362782.P3148938862932254918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083261 (A005940 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A362782.P3148938862932254918

/-!
# A362783: Square array A(n,k) = (n^(2*k + 1) + 1)/(n + 1), n >= 0, k >= 0, read by antidiagonals.

The programs for A362783, the canonical program `A362783.P2921106970592532857` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362783 has offset 0).

The definition of A362783 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A362783.P2921106970592532857

`(col(n)^(2*(row(n)-col(n))+1)+1)/(col(n)+1)`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A362783

/-- `(col(n)^(2*(row(n)-col(n))+1)+1)/(col(n)+1)` -/
def P2921106970592532857.Spec : Prop :=
  ∀ n, P2921106970592532857.a n = (A362783 n : ℚ)

end A362783

/-! ## A362783.P14013478167983732083

`A352431(n)+A325649(A102480(n))`
-/

namespace A362783.P14013478167983732083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352431 n + A325649 (A102480 n).toNat

end

end A362783.P14013478167983732083

namespace A362783

/-- `A352431(n)+A325649(A102480(n))` -/
def P14013478167983732083.Spec : Prop :=
  ∀ n, P14013478167983732083.a n = A362783 n

end A362783

/-! ## A362783.P4696602025129374220

`A336699(A294756(n)+A193739(n))`
-/

namespace A362783.P4696602025129374220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336699 (A294756 n + A193739 n).toNat

end

end A362783.P4696602025129374220

namespace A362783

/-- `A336699(A294756(n)+A193739(n))` -/
def P4696602025129374220.Spec : Prop :=
  ∀ n, P4696602025129374220.a n = A362783 n

end A362783

/-! ## A362783.P1227942294423486520

`A352431(n)+A112765(A269479(n+1))`
-/

namespace A362783.P1227942294423486520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352431 n + A112765 (A269479 (n + 1)).toNat

end

end A362783.P1227942294423486520

namespace A362783

/-- `A352431(n)+A112765(A269479(n+1))` -/
def P1227942294423486520.Spec : Prop :=
  ∀ n, P1227942294423486520.a n = A362783 n

end A362783

/-! ## A362783.P2061617178836096110

`A352431(n)+A319330(A253055(n+1))`
-/

namespace A362783.P2061617178836096110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352431 n + A319330 (A253055 (n + 1)).toNat

end

end A362783.P2061617178836096110

namespace A362783

/-- `A352431(n)+A319330(A253055(n+1))` -/
def P2061617178836096110.Spec : Prop :=
  ∀ n, P2061617178836096110.a n = A362783 n

end A362783

/-!
# A362784: Least positive integer k with k primitive practical and k*n practical.

The programs for A362784, there is no canonical definition to state claims against.
-/

/-! ## A362784.P3371780953682170608

`A040795(A083720(n+1))`
-/

namespace A362784.P3371780953682170608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040795 (A083720 (n + 1)).toNat

end

end A362784.P3371780953682170608

/-! ## A362784.P10654953711466165324

`A350764(2*A210445(n+1))`
-/

namespace A362784.P10654953711466165324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350764 (2 * A210445 (n + 1)).toNat

end

end A362784.P10654953711466165324

/-! ## A362784.P3199462028650560510

`A179651(A210445(n+1)^A279048(n+1))`
-/

namespace A362784.P3199462028650560510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179651 (SequenceMachineLib.roundAway ((A210445 (n + 1) : ℚ) ^ (A279048 (n + 1) : ℤ))).toNat

end

end A362784.P3199462028650560510

/-! ## A362784.P14797380282790124366

`A179651(A210445(n+1)^A336915(n+1))`
-/

namespace A362784.P14797380282790124366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179651 (SequenceMachineLib.roundAway ((A210445 (n + 1) : ℚ) ^ (A336915 (n + 1) : ℤ))).toNat

end

end A362784.P14797380282790124366

/-! ## A362784.P597613588027942596

`A179651((A275121(n+1)/(n+1))^A279048(n+1))`
-/

namespace A362784.P597613588027942596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179651 (SequenceMachineLib.roundAway (((A275121 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ (A279048 (n + 1) : ℤ))).toNat

end

end A362784.P597613588027942596

/-!
# A362787: Triangle read by rows, T(n, k) = (-1)^k * RisingFactorial(n, k) * FallingFactorial(k - n, k).

The programs for A362787, the canonical program `A362787.P3515008906079128941` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362787 has offset 0).

The definition of A362787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 701 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362787.P3620539299545358333

`T(n-1,k)+2*(row(n)-col(n))*col(n)*T(n,k-1)` with `a(0)=1`
-/

namespace A362787.P3620539299545358333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triLeft a n

end

end A362787.P3620539299545358333

namespace A362787

/-- `T(n-1,k)+2*(row(n)-col(n))*col(n)*T(n,k-1)` -/
def P3620539299545358333.Spec : Prop :=
  ∀ n, P3620539299545358333.a n = A362787 n

end A362787

/-! ## A362787.P6829462032461625881

`T(n-1,k)-2*(col(n)-row(n))*col(n)*T(n,k-1)` with `a(0)=1`
-/

namespace A362787.P6829462032461625881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n - 2 * ((SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triRow n : ℤ)) * (SequenceMachineLib.triCol n : ℤ) * SequenceMachineLib.triLeft a n

end

end A362787.P6829462032461625881

namespace A362787

/-- `T(n-1,k)-2*(col(n)-row(n))*col(n)*T(n,k-1)` -/
def P6829462032461625881.Spec : Prop :=
  ∀ n, P6829462032461625881.a n = A362787 n

end A362787

/-! ## A362787.P13083732137897940197

`A124320(n)*A265609(n)`
-/

namespace A362787.P13083732137897940197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124320 n * A265609 n

end

end A362787.P13083732137897940197

namespace A362787

/-- `A124320(n)*A265609(n)` -/
def P13083732137897940197.Spec : Prop :=
  ∀ n, P13083732137897940197.a n = A362787 n

end A362787

/-! ## A362787.P2515602071814230821

`A130020(n)*A371767(n)`
-/

namespace A362787.P2515602071814230821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130020 n * A371767 n

end

end A362787.P2515602071814230821

namespace A362787

/-- `A130020(n)*A371767(n)` -/
def P2515602071814230821.Spec : Prop :=
  ∀ n, P2515602071814230821.a n = A362787 n

end A362787

/-! ## A362787.P3515008906079128941

`A265609(A245300(n))*A265609(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A362787

/-- `A265609(A245300(n))*A265609(n)` -/
def P3515008906079128941.Spec : Prop :=
  ∀ n, P3515008906079128941.a n = A362787 n

theorem P3515008906079128941.correct : P3515008906079128941.Spec := by
  intro n
  simp only [A362787]

end A362787

/-! ## A362787.P16056961096741496896

`A114219(n)!*A071919(n)*A124320(n)`
-/

namespace A362787.P16056961096741496896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A114219 n).toNat : ℤ) * A071919 n * A124320 n

end

end A362787.P16056961096741496896

namespace A362787

/-- `A114219(n)!*A071919(n)*A124320(n)` -/
def P16056961096741496896.Spec : Prop :=
  ∀ n, P16056961096741496896.a n = A362787 n

end A362787

/-! ## A362787.P14055945598888324722

`A303986(n)/A293600(n+1)*A265609(n)`
-/

namespace A362787.P14055945598888324722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303986 n : ℚ) / (A293600 (n + 1) : ℚ) * (A265609 n : ℚ)

end

end A362787.P14055945598888324722

namespace A362787

/-- `A303986(n)/A293600(n+1)*A265609(n)` -/
def P14055945598888324722.Spec : Prop :=
  ∀ n, P14055945598888324722.a n = (A362787 n : ℚ)

end A362787

/-! ## A362787.P1784429482231906771

`A059481(n)*A136494(A059268(n))*A265609(n)`
-/

namespace A362787.P1784429482231906771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n * A136494 (A059268 n).toNat * A265609 n

end

end A362787.P1784429482231906771

namespace A362787

/-- `A059481(n)*A136494(A059268(n))*A265609(n)` -/
def P1784429482231906771.Spec : Prop :=
  ∀ n, P1784429482231906771.a n = A362787 n

end A362787

/-!
# A362789: Triangle read by rows. T(n, k) = FallingFactorial(n - k, k) * Stirling2(n - k, k), for n >= 0 and 0 <= k <= n//2, where '//' denotes integer division.

The programs for A362789, the canonical program `A362789.P4013718917275567408` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A362789 has offset 0).

The definition of A362789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1868 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A362789.P4013718917275567408

`A011973(n)*A344392(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A362789

/-- `A011973(n)*A344392(n)` -/
def P4013718917275567408.Spec : Prop :=
  ∀ n, P4013718917275567408.a n = A362789 n

theorem P4013718917275567408.correct : P4013718917275567408.Spec := by
  intro n
  simp only [A362789]

end A362789

/-! ## A362789.P8587487210853891089

`A007318(A091018(n))*A344392(n)`
-/

namespace A362789.P8587487210853891089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A091018 n).toNat * A344392 n

end

end A362789.P8587487210853891089

namespace A362789

/-- `A007318(A091018(n))*A344392(n)` -/
def P8587487210853891089.Spec : Prop :=
  ∀ n, P8587487210853891089.a n = A362789 n

end A362789

/-! ## A362789.P5657455860418203680

`A090657(A091018(n))`
-/

namespace A362789.P5657455860418203680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090657 (A091018 n).toNat

end

end A362789.P5657455860418203680

namespace A362789

/-- `A090657(A091018(n))` -/
def P5657455860418203680.Spec : Prop :=
  ∀ n, P5657455860418203680.a n = A362789 n

end A362789

/-! ## A362789.P6103092061861090283

`A090657(A056536(n+1)-1)`
-/

namespace A362789.P6103092061861090283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090657 (A056536 (n + 1) - 1).toNat

end

end A362789.P6103092061861090283

namespace A362789

/-- `A090657(A056536(n+1)-1)` -/
def P6103092061861090283.Spec : Prop :=
  ∀ n, P6103092061861090283.a n = A362789 n

end A362789

/-!
# A362791: Triangle of numbers read by rows, T(n, k) = (n*(n-1)*(n-2))*Stirling2(k, 3), for n >= 1 and 1 <= k <= n.

The programs for A362791, there is no canonical definition to state claims against.
-/

/-! ## A362791.P14993568109309498350

`lcm(A102479(n+1), A309314(A102479(n+1)))`
-/

namespace A362791.P14993568109309498350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A102479 (n + 1)) (A309314 (A102479 (n + 1)).toNat)

end

end A362791.P14993568109309498350

/-! ## A362791.P8254500521518685541

`A049597(n)*A213618(A099785(n))`
-/

namespace A362791.P8254500521518685541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049597 n * A213618 (A099785 n).toNat

end

end A362791.P8254500521518685541

/-! ## A362791.P7765182482711475677

`A241810(n)*A325799(A005176(n))`
-/

namespace A362791.P7765182482711475677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241810 n * A325799 (A005176 n).toNat

end

end A362791.P7765182482711475677

/-! ## A362791.P15405673643367973214

`A010430(A336416(n))*A357645(n)`
-/

namespace A362791.P15405673643367973214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010430 (A336416 n).toNat * A357645 n

end

end A362791.P15405673643367973214

/-! ## A362791.P10692245408238062183

`A175099(A175148(n))*A175131(n+1)`
-/

namespace A362791.P10692245408238062183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175099 (A175148 n).toNat * A175131 (n + 1)

end

end A362791.P10692245408238062183

/-!
# A362793: Number of vertex cuts in the n-flower graph.

The programs for A362793, there is no canonical definition to state claims against.
-/

/-! ## A362793.P12523451269206284740

`16^(n+1)-A362807(n+1)-1`
-/

namespace A362793.P12523451269206284740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 ^ (n + 1) : ℤ) - A362807 (n + 1) - 1

end

end A362793.P12523451269206284740

/-!
# A362794: E.g.f. satisfies A(x) = (1+x)^(A(x)^x).

The programs for A362794, there is no canonical definition to state claims against.
-/

/-! ## A362794.P3032774636785577702

`A335162(∏[eq[n, ∏{d}[n, #]]]-1)`
-/

namespace A362794.P3032774636785577702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335162 (∏ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A362794.P3032774636785577702

/-! ## A362794.P9726883347232132225

`A061547(floor((a(n-1)-n)/2)²)` with `a(0)=1`
-/

namespace A362794.P9726883347232132225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A061547 (⌊(a (n - 1) - (n : ℤ) : ℚ) / 2⌋ ^ 2).toNat

end

end A362794.P9726883347232132225

/-!
# A362796: E.g.f. satisfies A(x) = 1/(1-x)^(A(x)^x).

The programs for A362796, there is no canonical definition to state claims against.
-/

/-! ## A362796.P2652337730871738985

`A302717(A392551(n))`
-/

namespace A362796.P2652337730871738985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302717 (A392551 n).toNat

end

end A362796.P2652337730871738985

/-! ## A362796.P4639259203390573880

`A302717(A201169(n+1))`
-/

namespace A362796.P4639259203390573880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302717 (A201169 (n + 1)).toNat

end

end A362796.P4639259203390573880

/-!
# A362797: Number of vertex cuts in the n X n torus grid graph.

The programs for A362797, there is no canonical definition to state claims against.
-/

/-! ## A362797.P17208211693549914078

`2^(n+3)²-A298124(n+3)-1`
-/

namespace A362797.P17208211693549914078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) ^ 2 : ℤ) - A298124 (n + 3) - 1

end

end A362797.P17208211693549914078

/-!
# A362798: E.g.f. satisfies A(x) = 1/(1-x)^(A(x)^(x^2)).

The programs for A362798, there is no canonical definition to state claims against.
-/

/-! ## A362798.P12115978893720103795

`A260436(A098131(n)*A223034(n))`
-/

namespace A362798.P12115978893720103795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260436 (A098131 n * A223034 n).toNat

end

end A362798.P12115978893720103795

/-! ## A362798.P569387937972184462

`A052586(n)-A061858(A113153(n+1))`
-/

namespace A362798.P569387937972184462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052586 n - A061858 (A113153 (n + 1)).toNat

end

end A362798.P569387937972184462

/-! ## A362798.P5005882142926603628

`A014591(n+1)*A248610(A000142(n))`
-/

namespace A362798.P5005882142926603628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014591 (n + 1) * A248610 (A000142 n).toNat

end

end A362798.P5005882142926603628

/-!
# A362799: E.g.f. satisfies A(x) = exp( (exp(x) - 1) * A(x)^x ).

The programs for A362799, there is no canonical definition to state claims against.
-/

/-! ## A362799.P5921139742520037914

`A177501(A193487(2*(n+1))+3)`
-/

namespace A362799.P5921139742520037914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177501 (A193487 (2 * (n + 1)) + 3).toNat

end

end A362799.P5921139742520037914

/-! ## A362799.P3291446741074983909

`A090930(A000670(n)-(n-floor(sqrt(n))²))`
-/

namespace A362799.P3291446741074983909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A000670 n - ((n : ℤ) - (Nat.sqrt n ^ 2 : ℤ))).toNat

end

end A362799.P3291446741074983909

