import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A378500: a(1) = 2, then a(n) = a(n-1) - 2 for n even, a(n) = a(n-1) + 3 for n an odd prime or odd prime power, and a(n) = a(n-1) + 2 otherwise.

The programs for A378500, the canonical program `A378500.P6528699867994276169` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378500 has offset 1).

The definition of A378500 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378500.P6528699867994276169

`∑[A174275(n+1)+A123725(2*n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A378500

/-- `∑[A174275(n+1)+A123725(2*n+1)]` -/
def P6528699867994276169.Spec : Prop :=
  ∀ n, P6528699867994276169.a n = A378500 (n + 1)

theorem P6528699867994276169.correct : P6528699867994276169.Spec := by
  intro n
  simp only [A378500, Nat.add_sub_cancel]

end A378500

/-! ## A378500.P10805732602654468092

`A238263(n+2)+A153881(A027642(n+3))`
-/

namespace A378500.P10805732602654468092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238263 (n + 2) + A153881 (A027642 (n + 3)).toNat

end

end A378500.P10805732602654468092

namespace A378500

/-- `A238263(n+2)+A153881(A027642(n+3))` -/
def P10805732602654468092.Spec : Prop :=
  ∀ n, P10805732602654468092.a n = A378500 (n + 1)

end A378500

/-! ## A378500.P12867152574346689480

`A084964(n)-A018843(A008643(n))`
-/

namespace A378500.P12867152574346689480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 n - A018843 (A008643 n).toNat

end

end A378500.P12867152574346689480

namespace A378500

/-- `A084964(n)-A018843(A008643(n))` -/
def P12867152574346689480.Spec : Prop :=
  ∀ n, P12867152574346689480.a n = A378500 (n + 1)

end A378500

/-! ## A378500.P6342254821368480330

`A084964(n)+1-A043281(A364463(n))`
-/

namespace A378500.P6342254821368480330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 n + 1 - A043281 (A364463 n).toNat

end

end A378500.P6342254821368480330

namespace A378500

/-- `A084964(n)+1-A043281(A364463(n))` -/
def P6342254821368480330.Spec : Prop :=
  ∀ n, P6342254821368480330.a n = A378500 (n + 1)

end A378500

/-! ## A378500.P13099076654918352096

`A205295(A205295(n+1))+A097065(n)`
-/

namespace A378500.P13099076654918352096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205295 (A205295 (n + 1)).toNat + A097065 n

end

end A378500.P13099076654918352096

namespace A378500

/-- `A205295(A205295(n+1))+A097065(n)` -/
def P13099076654918352096.Spec : Prop :=
  ∀ n, P13099076654918352096.a n = A378500 (n + 1)

end A378500

/-!
# A378501: Integers m such that A379816(m) = A379815(m) + m.

The programs for A378501, there is no canonical definition to state claims against.
-/

/-! ## A378501.P17319118120828427932

`lt[A037213(n), A124761(3*n+4)]`
-/

namespace A378501.P17319118120828427932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378501.P17319118120828427932

/-! ## A378501.P9501877376489719124

`lt[A000122(n), log2(A124766(3*n+4))]`
-/

namespace A378501.P9501877376489719124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A124766 (3 * n + 4) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A378501.P9501877376489719124

/-! ## A378501.P7120836874098429289

`lt[A098108(n), A124766(3*n+4)-1]`
-/

namespace A378501.P7120836874098429289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098108 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (3 * n + 4) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378501.P7120836874098429289

/-! ## A378501.P2701079838183469037

`lt[char[A264003(n+1)], A124761(3*n+4)]`
-/

namespace A378501.P2701079838183469037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264003 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A378501.P2701079838183469037

/-! ## A378501.P694095884831914800

`lt[A003242(A258256(n)), A124766(3*n+4)]`
-/

namespace A378501.P694095884831914800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 (A258256 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378501.P694095884831914800

/-!
# A378502: a(n) is the number whose base-4 digits are 1 followed by the first n-1 terms of the periodic sequence with initial period 3,2,0.

The programs for A378502, the canonical program `A378502.P13988772316725232668` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378502 has offset 1).

The definition of A378502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378502.P13988772316725232668

`floor(17/36*4^(n+1))`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A378502

/-- `floor(17/36*4^(n+1))` -/
def P13988772316725232668.Spec : Prop :=
  ∀ n, P13988772316725232668.a n = A378502 (n + 1)

theorem P13988772316725232668.correct : P13988772316725232668.Spec := by
  intro n
  simp only [A378502, Nat.add_sub_cancel]

end A378502

/-! ## A378502.P2344026937233343333

`ogf((1+3x+2x^2-x^3)/(1-4x-x^3+4x^4))`
-/

namespace A378502.P2344026937233343333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2, -1] [1, -4, 0, -1, 4] n

end

end A378502.P2344026937233343333

namespace A378502

/-- `ogf((1+3x+2x^2-x^3)/(1-4x-x^3+4x^4))` -/
def P2344026937233343333.Spec : Prop :=
  ∀ n, P2344026937233343333.a n = A378502 (n + 1)

end A378502

/-! ## A378502.P16744939667565733858

`A378497(n+1)+A191597(n)`
-/

namespace A378502.P16744939667565733858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378497 (n + 1) + A191597 n

end

end A378502.P16744939667565733858

namespace A378502

/-- `A378497(n+1)+A191597(n)` -/
def P16744939667565733858.Spec : Prop :=
  ∀ n, P16744939667565733858.a n = A378502 (n + 1)

end A378502

/-! ## A378502.P15905492587740358602

`A037618(n+1)-A387843(n)`
-/

namespace A378502.P15905492587740358602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037618 (n + 1) - A387843 n

end

end A378502.P15905492587740358602

namespace A378502

/-- `A037618(n+1)-A387843(n)` -/
def P15905492587740358602.Spec : Prop :=
  ∀ n, P15905492587740358602.a n = A378502 (n + 1)

end A378502

/-! ## A378502.P15040433425008118341

`xor(A002450(n), A037604(n+1))`
-/

namespace A378502.P15040433425008118341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002450 n) (A037604 (n + 1))

end

end A378502.P15040433425008118341

namespace A378502

/-- `xor(A002450(n), A037604(n+1))` -/
def P15040433425008118341.Spec : Prop :=
  ∀ n, P15040433425008118341.a n = A378502 (n + 1)

end A378502

/-! ## A378502.P15381966764249667829

`xor(A037646(n+1), A198693(n))`
-/

namespace A378502.P15381966764249667829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037646 (n + 1)) (A198693 n)

end

end A378502.P15381966764249667829

namespace A378502

/-- `xor(A037646(n+1), A198693(n))` -/
def P15381966764249667829.Spec : Prop :=
  ∀ n, P15381966764249667829.a n = A378502 (n + 1)

end A378502

/-! ## A378502.P17405562104864614931

`A000225(2*n+1)-A153234(2*n)`
-/

namespace A378502.P17405562104864614931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * n + 1) - A153234 (2 * n)

end

end A378502.P17405562104864614931

namespace A378502

/-- `A000225(2*n+1)-A153234(2*n)` -/
def P17405562104864614931.Spec : Prop :=
  ∀ n, P17405562104864614931.a n = A378502 (n + 1)

end A378502

/-! ## A378502.P2731030696750409510

`A000079(2*n+1)-A328881(2*n)`
-/

namespace A378502.P2731030696750409510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - A328881 (2 * n)

end

end A378502.P2731030696750409510

namespace A378502

/-- `A000079(2*n+1)-A328881(2*n)` -/
def P2731030696750409510.Spec : Prop :=
  ∀ n, P2731030696750409510.a n = A378502 (n + 1)

end A378502

/-! ## A378502.P10906775400306361202

`A113405(2*n+1)+A084214(2*n+1)`
-/

namespace A378502.P10906775400306361202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (2 * n + 1) + A084214 (2 * n + 1)

end

end A378502.P10906775400306361202

namespace A378502

/-- `A113405(2*n+1)+A084214(2*n+1)` -/
def P10906775400306361202.Spec : Prop :=
  ∀ n, P10906775400306361202.a n = A378502 (n + 1)

end A378502

/-! ## A378502.P14689273878066410218

`A156760(n)-A037646(n+1)`
-/

namespace A378502.P14689273878066410218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156760 n - A037646 (n + 1)

end

end A378502.P14689273878066410218

namespace A378502

/-- `A156760(n)-A037646(n+1)` -/
def P14689273878066410218.Spec : Prop :=
  ∀ n, P14689273878066410218.a n = A378502 (n + 1)

end A378502

/-! ## A378502.P11771328086273129301

`A378499(n+2)-A164346(n)`
-/

namespace A378502.P11771328086273129301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378499 (n + 2) - A164346 n

end

end A378502.P11771328086273129301

namespace A378502

/-- `A378499(n+2)-A164346(n)` -/
def P11771328086273129301.Spec : Prop :=
  ∀ n, P11771328086273129301.a n = A378502 (n + 1)

end A378502

/-!
# A378503: Expansion of (Sum_{k>=0} binomial(4*k,k) * x^k)^3.

The programs for A378503, the canonical program `A378503.P5660370809186787988` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378503 has offset 0).

The definition of A378503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378503.P5660370809186787988

`∑{#}[n, (#+1)*3^#*C(4*n+2, n-#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A378503

/-- `∑{#}[n, (#+1)*3^#*C(4*n+2, n-#)]` -/
def P5660370809186787988.Spec : Prop :=
  ∀ n, (P5660370809186787988.a n : ℤ) = A378503 n

theorem P5660370809186787988.correct : P5660370809186787988.Spec := by
  intro n
  simp only [A378503]

end A378503

/-!
# A378504: Expansion of (Sum_{k>=0} binomial(3*k,k) * x^k)^4.

The programs for A378504, the canonical program `A378504.P1143173921598661810` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378504 has offset 0).

The definition of A378504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378504.P1143173921598661810

`∑{#}[n, 2^#*C(#+2, 2)*C(3*n+3, n-#)]`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A378504

/-- `∑{#}[n, 2^#*C(#+2, 2)*C(3*n+3, n-#)]` -/
def P1143173921598661810.Spec : Prop :=
  ∀ n, (P1143173921598661810.a n : ℤ) = A378504 n

theorem P1143173921598661810.correct : P1143173921598661810.Spec := by
  intro n
  simp only [A378504]

end A378504

/-! ## A378504.P332649548971803526

`(n+1)*A395655(n)`
-/

namespace A378504.P332649548971803526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A395655 n

end

end A378504.P332649548971803526

namespace A378504

/-- `(n+1)*A395655(n)` -/
def P332649548971803526.Spec : Prop :=
  ∀ n, P332649548971803526.a n = A378504 n

end A378504

/-! ## A378504.P15495397080302746970

`∑{#}[n, A006256(#)*A006256(n-#)]`
-/

namespace A378504.P15495397080302746970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A006256 k * A006256 (n - k)

end

end A378504.P15495397080302746970

namespace A378504

/-- `∑{#}[n, A006256(#)*A006256(n-#)]` -/
def P15495397080302746970.Spec : Prop :=
  ∀ n, P15495397080302746970.a n = A378504 n

end A378504

/-!
# A378505: a(0) = 0, a(n) = 0 where a(n-1) is nonzero and divisible by n. Otherwise a(n) = n + a(n-1).

The programs for A378505, there is no canonical definition to state claims against.
-/

/-! ## A378505.P505710623770395748

`A068627(n)%A013610(A092538(n+1))`
-/

namespace A378505.P505710623770395748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068627 n) (A013610 (A092538 (n + 1)).toNat)

end

end A378505.P505710623770395748

/-! ## A378505.P3264623058540228065

`A357884(n+1)%A357896(A263776(n))`
-/

namespace A378505.P3264623058540228065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357884 (n + 1)) (A357896 (A263776 n).toNat)

end

end A378505.P3264623058540228065

/-! ## A378505.P10353164983421301892

`A068627(n)*A244250(A237984(2*n+1))`
-/

namespace A378505.P10353164983421301892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068627 n * A244250 (A237984 (2 * n + 1)).toNat

end

end A378505.P10353164983421301892

/-!
# A378508: Values taken by phi(phi(m)) (A010554).

The programs for A378508, the canonical program `A378508.P9814380838425537592` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378508 has offset 1).

The definition of A378508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378508.P8600449120131603166

`lt[1, A378506(n+1)]+1`
-/

namespace A378508.P8600449120131603166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A378508.P8600449120131603166

namespace A378508

/-- `lt[1, A378506(n+1)]+1` -/
def P8600449120131603166.Spec : Prop :=
  ∀ n, (P8600449120131603166.a n : ℤ) = A378508 (n + 1)

end A378508

/-! ## A378508.P9814380838425537592

`eq[1, char[A000010(A000010(n+1))]]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A378508

/-- `eq[1, char[A000010(A000010(n+1))]]` -/
def P9814380838425537592.Spec : Prop :=
  ∀ n, (P9814380838425537592.a n : ℤ) = A378508 (n + 1)

theorem P9814380838425537592.correct : P9814380838425537592.Spec := by
  intro n
  simp only [A378508, Nat.add_sub_cancel]

end A378508

/-! ## A378508.P14899498879457694447

`eq[1, char[A010554(n+1)]]`
-/

namespace A378508.P14899498879457694447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378508.P14899498879457694447

namespace A378508

/-- `eq[1, char[A010554(n+1)]]` -/
def P14899498879457694447.Spec : Prop :=
  ∀ n, (P14899498879457694447.a n : ℤ) = A378508 (n + 1)

end A378508

/-! ## A378508.P3934773443997831776

`∑[A034444(A000288(n+2))]`
-/

namespace A378508.P3934773443997831776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A000288 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378508.P3934773443997831776

namespace A378508

/-- `∑[A034444(A000288(n+2))]` -/
def P3934773443997831776.Spec : Prop :=
  ∀ n, P3934773443997831776.a n = A378508 (n + 1)

end A378508

/-! ## A378508.P13905168005703964215

`lt[A181734(A324533(n)), A324554(n+1)]`
-/

namespace A378508.P13905168005703964215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181734 (A324533 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324554 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378508.P13905168005703964215

namespace A378508

/-- `lt[A181734(A324533(n)), A324554(n+1)]` -/
def P13905168005703964215.Spec : Prop :=
  ∀ n, (P13905168005703964215.a n : ℤ) = A378508 (n + 1)

end A378508

/-!
# A378509: Totient numbers k for which there is no solution to the equation phi(phi(x)) = k.

The programs for A378509, there is no canonical definition to state claims against.
-/

/-! ## A378509.P4458577239518965205

`eq[A050291(A320115(n+1)), A088936(n+1)]`
-/

namespace A378509.P4458577239518965205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050291 (A320115 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378509.P4458577239518965205

/-!
# A378512: Numbers k such that 6^sigma(k) - k is a prime.

The programs for A378512, there is no canonical definition to state claims against.
-/

/-! ## A378512.P11952267181925275510

`A201459(A249937(n+1))`
-/

namespace A378512.P11952267181925275510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201459 (A249937 (n + 1)).toNat

end

end A378512.P11952267181925275510

/-!
# A378514: Number of partitions of 2^n-1 into two summands >= 0 having a common divisor > 1.

The programs for A378514, the canonical program `A378514.P5051623705849836862` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378514 has offset 1).

The definition of A378514 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378514.P5051623705849836862

`ceil((2^(n+1)-1-A000010(2^(n+1)-1))/2)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A378514

/-- `ceil((2^(n+1)-1-A000010(2^(n+1)-1))/2)` -/
def P5051623705849836862.Spec : Prop :=
  ∀ n, P5051623705849836862.a n = A378514 (n + 1)

theorem P5051623705849836862.correct : P5051623705849836862.Spec := by
  intro n
  simp only [A378514, Nat.add_sub_cancel]

end A378514

/-! ## A378514.P11753686854475562039

`ceil(A053288(n+1)/2)`
-/

namespace A378514.P11753686854475562039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053288 (n + 1) : ℚ) / 2⌉

end

end A378514.P11753686854475562039

namespace A378514

/-- `ceil(A053288(n+1)/2)` -/
def P11753686854475562039.Spec : Prop :=
  ∀ n, P11753686854475562039.a n = A378514 (n + 1)

end A378514

/-! ## A378514.P11161419943088938583

`floor((A155559(n)-(A092589(n)+1))/2)+1`
-/

namespace A378514.P11161419943088938583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155559 n - (A092589 n + 1) : ℚ) / 2⌋ + 1

end

end A378514.P11161419943088938583

namespace A378514

/-- `floor((A155559(n)-(A092589(n)+1))/2)+1` -/
def P11161419943088938583.Spec : Prop :=
  ∀ n, P11161419943088938583.a n = A378514 (n + 1)

end A378514

/-! ## A378514.P17406484254685689867

`A000079(n)-ceil(A053287(n+1)/2)`
-/

namespace A378514.P17406484254685689867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ⌈(A053287 (n + 1) : ℚ) / 2⌉

end

end A378514.P17406484254685689867

namespace A378514

/-- `A000079(n)-ceil(A053287(n+1)/2)` -/
def P17406484254685689867.Spec : Prop :=
  ∀ n, P17406484254685689867.a n = A378514 (n + 1)

end A378514

/-! ## A378514.P9503790421616826698

`A001057(A053288(n+1))`
-/

namespace A378514.P9503790421616826698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A053288 (n + 1)).toNat

end

end A378514.P9503790421616826698

namespace A378514

/-- `A001057(A053288(n+1))` -/
def P9503790421616826698.Spec : Prop :=
  ∀ n, P9503790421616826698.a n = A378514 (n + 1)

end A378514

/-!
# A378516: Number of dominating unique simple graphs on n nodes.

The programs for A378516, there is no canonical definition to state claims against.
-/

/-! ## A378516.P17505136954419977808

`A000088(n+1)-A378517(n+1)`
-/

namespace A378516.P17505136954419977808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A378517 (n + 1)

end

end A378516.P17505136954419977808

/-! ## A378516.P7336065751199521051

`A379554(A371789(n)^A064094(n))`
-/

namespace A378516.P7336065751199521051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379554 (SequenceMachineLib.roundAway ((A371789 n : ℚ) ^ (A064094 n : ℤ))).toNat

end

end A378516.P7336065751199521051

/-!
# A378517: Number of dominating nonunique simple graphs on n nodes.

The programs for A378517, there is no canonical definition to state claims against.
-/

/-! ## A378517.P7109583743659420957

`A000088(n+1)-A378516(n+1)`
-/

namespace A378517.P7109583743659420957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - A378516 (n + 1)

end

end A378517.P7109583743659420957

/-! ## A378517.P3620155928326788501

`A004526(A151823(n+1))-A091226(n)`
-/

namespace A378517.P3620155928326788501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A151823 (n + 1)).toNat - A091226 n

end

end A378517.P3620155928326788501

/-!
# A378518: a(n) = n - A019565(A048675(n)), where A019565 and A048675 are base-2 exp and log-functions.

The programs for A378518, there is no canonical definition to state claims against.
-/

/-! ## A378518.P3007120664340511645

`n+1-A097248(n+1)`
-/

namespace A378518.P3007120664340511645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A097248 (n + 1)

end

end A378518.P3007120664340511645

/-! ## A378518.P7413360065567721291

`n+1-A019565(A048675(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A378518.P7413360065567721291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A019565 (A048675 (n + 1)).toNat

end

end A378518.P7413360065567721291

/-! ## A378518.P6219018148275752472

`1-A097248(n+1)+n`
-/

namespace A378518.P6219018148275752472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A097248 (n + 1) + (n : ℤ)

end

end A378518.P6219018148275752472

/-! ## A378518.P4557729265653977457

`A024000(A097248(n+1))+n`
-/

namespace A378518.P4557729265653977457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A097248 (n + 1)).toNat + (n : ℤ)

end

end A378518.P4557729265653977457

/-! ## A378518.P2956220096873572710

`1-A005117(A322815(n+1))+n`
-/

namespace A378518.P2956220096873572710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A005117 (A322815 (n + 1)).toNat + (n : ℤ)

end

end A378518.P2956220096873572710

/-! ## A378518.P59391757918199081

`A001478(A097248(n+1))+A000027(n+1)`
-/

namespace A378518.P59391757918199081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A097248 (n + 1)).toNat + A000027 (n + 1)

end

end A378518.P59391757918199081

/-! ## A378518.P11382996072135946981

`abs(A097248(n+1)+A022958(n+3))`
-/

namespace A378518.P11382996072135946981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A097248 (n + 1) + A022958 (n + 3)|

end

end A378518.P11382996072135946981

/-! ## A378518.P9009924802330710709

`n+1-A097247(A277886(n+1))`
-/

namespace A378518.P9009924802330710709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A097247 (A277886 (n + 1)).toNat

end

end A378518.P9009924802330710709

/-! ## A378518.P15929936623930804184

`n+1-A097247(A097247(n+1))`
-/

namespace A378518.P15929936623930804184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A097247 (A097247 (n + 1)).toNat

end

end A378518.P15929936623930804184

/-!
# A378519: Numbers which can be written in precisely one way as sum of a subset of their proper divisors but are not Zumkeller numbers, i.e., have no subsets of their divisors such that the complement has the same sum.

The programs for A378519, there is no canonical definition to state claims against.
-/

/-! ## A378519.P14439952497756897839

`A376879(∏{d}[record[∑{p}[n, #]], #])`
-/

namespace A378519.P14439952497756897839
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376879 (∏ d ∈ Nat.divisors (f1 n), d)

end

end A378519.P14439952497756897839

/-!
# A378520: Dirichlet inverse of A336840, where A336840 is the inverse Möbius transform of A048673.

The programs for A378520, there is no canonical definition to state claims against.
-/

/-! ## A378520.P11539320726503508388

`∑{d}[n+1, A008683((n+1)/#)*A323893(#)]`
-/

namespace A378520.P11539320726503508388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A323893 d

end

end A378520.P11539320726503508388

/-! ## A378520.P4790995002276416574

`A349915(A003961(n+1))`
-/

namespace A378520.P4790995002276416574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349915 (A003961 (n + 1)).toNat

end

end A378520.P4790995002276416574

/-! ## A378520.P8400529213504027662

`∑{d}[n+1, A046692(#)*A349572((n+1)/#)]`
-/

namespace A378520.P8400529213504027662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A349572 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378520.P8400529213504027662

/-! ## A378520.P15412402314427581228

`∑{d}[n+1, A349384(#)*A378221((n+1)/#)]`
-/

namespace A378520.P15412402314427581228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349384 d * A378221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378520.P15412402314427581228

/-! ## A378520.P8443485108113203699

`A349915(A048673(2*(n+1))-A048673(n+1))`
-/

namespace A378520.P8443485108113203699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349915 (A048673 (2 * (n + 1)) - A048673 (n + 1)).toNat

end

end A378520.P8443485108113203699

/-!
# A378521: Möbius transform of A048673.

The programs for A378521, the canonical program `A378521.P3747435219911459199` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378521 has offset 1).

The definition of A378521 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A378521.P3747435219911459199

`∑{d}[n+1, A008683((n+1)/#)*A048673(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A378521

/-- `∑{d}[n+1, A008683((n+1)/#)*A048673(#)]` -/
def P3747435219911459199.Spec : Prop :=
  ∀ n, P3747435219911459199.a n = A378521 (n + 1)

theorem P3747435219911459199.correct : P3747435219911459199.Spec := by
  intro n
  simp only [A378521, Nat.add_sub_cancel]

end A378521

/-! ## A378521.P13111043884927909752

`A072451(A048673(n+1))`
-/

namespace A378521.P13111043884927909752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (A048673 (n + 1)).toNat

end

end A378521.P13111043884927909752

namespace A378521

/-- `A072451(A048673(n+1))` -/
def P13111043884927909752.Spec : Prop :=
  ∀ n, P13111043884927909752.a n = A378521 (n + 1)

end A378521

/-! ## A378521.P14110732239357402779

`A055034(A003961(n+1))`
-/

namespace A378521.P14110732239357402779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A003961 (n + 1)).toNat

end

end A378521.P14110732239357402779

namespace A378521

/-- `A055034(A003961(n+1))` -/
def P14110732239357402779.Spec : Prop :=
  ∀ n, P14110732239357402779.a n = A378521 (n + 1)

end A378521

/-! ## A378521.P9994184478323095663

`ceil(A003972(n+1)/2)`
-/

namespace A378521.P9994184478323095663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A003972 (n + 1) : ℚ) / 2⌉

end

end A378521.P9994184478323095663

namespace A378521

/-- `ceil(A003972(n+1)/2)` -/
def P9994184478323095663.Spec : Prop :=
  ∀ n, P9994184478323095663.a n = A378521 (n + 1)

end A378521

/-! ## A378521.P13321745330779632210

`A003972(n+1)/A040000(n)`
-/

namespace A378521.P13321745330779632210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003972 (n + 1) : ℚ) / (A040000 n : ℚ)

end

end A378521.P13321745330779632210

namespace A378521

/-- `A003972(n+1)/A040000(n)` -/
def P13321745330779632210.Spec : Prop :=
  ∀ n, P13321745330779632210.a n = (A378521 (n + 1) : ℚ)

end A378521

/-! ## A378521.P11066668724847791199

`A353789(n+1)/A103517(n)`
-/

namespace A378521.P11066668724847791199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353789 (n + 1) : ℚ) / (A103517 n : ℚ)

end

end A378521.P11066668724847791199

namespace A378521

/-- `A353789(n+1)/A103517(n)` -/
def P11066668724847791199.Spec : Prop :=
  ∀ n, P11066668724847791199.a n = (A378521 (n + 1) : ℚ)

end A378521

/-! ## A378521.P4845757796841608564

`A378748(n+1)+A051953(n+1)`
-/

namespace A378521.P4845757796841608564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378748 (n + 1) + A051953 (n + 1)

end

end A378521.P4845757796841608564

namespace A378521

/-- `A378748(n+1)+A051953(n+1)` -/
def P4845757796841608564.Spec : Prop :=
  ∀ n, P4845757796841608564.a n = A378521 (n + 1)

theorem P4845757796841608564.correct : P4845757796841608564.Spec := by
  intro n
  simp only [A378521, Nat.add_sub_cancel, A378521.P4845757796841608564.a, A378521.P3747435219911459199.f1, A378521.P3747435219911459199.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A048673, A048673.P3613002930333742504.a, A051953, A051953.P11179276897610979764.a, A378748, A378748.P8742583333347776614.a, A000010, A000010.P4673923239450215316.a, A249745, A249745.P11390172490975782238.a, A249824, A249824.P7083060918856720053.a, A003557, A003557.P6364735403900941810.a, A007310, A007310.P9946423629536973135.a, A064989, A064989.P13349672914146769936.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A243071, A243071.P12484383641158862297.a, A275716, A275716.P7951773903952206727.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A163511, A163511.P5635496813650871695.a, A253566, A253566.P9103107584596957047.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378521

/-! ## A378521.P12986750652767099285

`lcm(A339904(n+1), A349385(n+1))`
-/

namespace A378521.P12986750652767099285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A339904 (n + 1)) (A349385 (n + 1))

end

end A378521.P12986750652767099285

namespace A378521

/-- `lcm(A339904(n+1), A349385(n+1))` -/
def P12986750652767099285.Spec : Prop :=
  ∀ n, (P12986750652767099285.a n : ℤ) = A378521 (n + 1)

end A378521

/-! ## A378521.P2135619985071993315

`∑{d}[n+1, A007427(#)*A336840((n+1)/#)]`
-/

namespace A378521.P2135619985071993315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A336840 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378521.P2135619985071993315

namespace A378521

/-- `∑{d}[n+1, A007427(#)*A336840((n+1)/#)]` -/
def P2135619985071993315.Spec : Prop :=
  ∀ n, P2135619985071993315.a n = A378521 (n + 1)

end A378521

/-! ## A378521.P6674605048646871168

`∑{d}[n+1, A000010(#)*A349571((n+1)/#)]`
-/

namespace A378521.P6674605048646871168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A349571 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378521.P6674605048646871168

namespace A378521

/-- `∑{d}[n+1, A000010(#)*A349571((n+1)/#)]` -/
def P6674605048646871168.Spec : Prop :=
  ∀ n, P6674605048646871168.a n = A378521 (n + 1)

end A378521

/-! ## A378521.P9678159214371317632

`∑{d}[n+1, A003972(#)*A349385((n+1)/#)]`
-/

namespace A378521.P9678159214371317632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d * A349385 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378521.P9678159214371317632

namespace A378521

/-- `∑{d}[n+1, A003972(#)*A349385((n+1)/#)]` -/
def P9678159214371317632.Spec : Prop :=
  ∀ n, P9678159214371317632.a n = A378521 (n + 1)

end A378521

/-! ## A378521.P10942162666445930213

`A003972(n+1)/A020639(A347376(n+1))`
-/

namespace A378521.P10942162666445930213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003972 (n + 1) : ℚ) / (A020639 (A347376 (n + 1)).toNat : ℚ)

end

end A378521.P10942162666445930213

namespace A378521

/-- `A003972(n+1)/A020639(A347376(n+1))` -/
def P10942162666445930213.Spec : Prop :=
  ∀ n, P10942162666445930213.a n = (A378521 (n + 1) : ℚ)

end A378521

/-! ## A378521.P14487752196775619307

`A349136(A003961(2*n+1-n))`
-/

namespace A378521.P14487752196775619307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349136 (A003961 (2 * n + 1 - n)).toNat

end

end A378521.P14487752196775619307

namespace A378521

/-- `A349136(A003961(2*n+1-n))` -/
def P14487752196775619307.Spec : Prop :=
  ∀ n, P14487752196775619307.a n = A378521 (n + 1)

end A378521

/-! ## A378521.P1033777532693627467

`A004525(A003972(n+1))`
-/

namespace A378521.P1033777532693627467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003972 (n + 1)).toNat

end

end A378521.P1033777532693627467

namespace A378521

/-- `A004525(A003972(n+1))` -/
def P1033777532693627467.Spec : Prop :=
  ∀ n, P1033777532693627467.a n = A378521 (n + 1)

end A378521

/-! ## A378521.P18024306314498878316

`A023022(A045965(n+1))`
-/

namespace A378521.P18024306314498878316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A045965 (n + 1)).toNat

end

end A378521.P18024306314498878316

namespace A378521

/-- `A023022(A045965(n+1))` -/
def P18024306314498878316.Spec : Prop :=
  ∀ n, P18024306314498878316.a n = A378521 (n + 1)

end A378521

/-!
# A378522: Lexicographically earliest infinite sequence such that a(i) = a(j) => A378518(i) = A378518(j), for all i, j >= 1.

The programs for A378522, there is no canonical definition to state claims against.
-/

/-! ## A378522.P15643640134152522793

`A305980(n+1)-A131576(A000043(n+1))`
-/

namespace A378522.P15643640134152522793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1) - A131576 (A000043 (n + 1)).toNat

end

end A378522.P15643640134152522793

/-! ## A378522.P12822097038902544424

`A305980(n+1)-A267116(A283425(n+4))`
-/

namespace A378522.P12822097038902544424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305980 (n + 1) - A267116 (A283425 (n + 4)).toNat

end

end A378522.P12822097038902544424

/-! ## A378522.P9215996132315071552

`A133622(A243352(n+1)%A002274(2*n+1))`
-/

namespace A378522.P9215996132315071552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (Int.tmod (A243352 (n + 1)) (A002274 (2 * n + 1))).toNat

end

end A378522.P9215996132315071552

/-! ## A378522.P7735897206525363276

`A188510(A244408(2*(n+2)))+A158416(A243352(n+1))`
-/

namespace A378522.P7735897206525363276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188510 (A244408 (2 * (n + 2))).toNat + A158416 (A243352 (n + 1)).toNat

end

end A378522.P7735897206525363276

/-! ## A378522.P10707036531869370974

`gcd(A008683(n+1), A130255(A000930(n)))`
-/

namespace A378522.P10707036531869370974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (n + 1)) (A130255 (A000930 n).toNat)

end

end A378522.P10707036531869370974

/-!
# A378525: Dirichlet inverse of A378542, where A378542 is the sum of divisors d of n such that n/d has an even number of prime factors (counted with multiplicity).

The programs for A378525, there is no canonical definition to state claims against.
-/

/-! ## A378525.P14432513273848383363

`∑{d}[n+1, A008683(#)*A378536((n+1)/#)]`
-/

namespace A378525.P14432513273848383363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378536 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378525.P14432513273848383363

/-! ## A378525.P4669301183319311554

`∑{d}[n+1, A023900(#)*A369453((n+1)/#)]`
-/

namespace A378525.P4669301183319311554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A369453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378525.P4669301183319311554

/-! ## A378525.P10244082309402704720

`∑{d}[n+1, A055615(#)*A359763((n+1)/#)]`
-/

namespace A378525.P10244082309402704720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A359763 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378525.P10244082309402704720

/-! ## A378525.P14440522287604890808

`∑{d}[n+1, A130054(#)*A378213((n+1)/#)]`
-/

namespace A378525.P14440522287604890808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A378213 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378525.P14440522287604890808

/-! ## A378525.P11122710598862655073

`∑{d}[n+1, A323910(#)*A378534((n+1)/#)]`
-/

namespace A378525.P11122710598862655073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323910 d * A378534 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378525.P11122710598862655073

/-! ## A378525.P8416616187168503846

`∑{d}[n+1, A328729(#)*A378452((n+1)/#)]`
-/

namespace A378525.P8416616187168503846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328729 d * A378452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378525.P8416616187168503846

/-! ## A378525.P5395629592892972834

`∑{d}[n+1, A378432(#)*A378532((n+1)/#)]`
-/

namespace A378525.P5395629592892972834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378432 d * A378532 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378525.P5395629592892972834

/-!
# A378526: Dirichlet inverse of A378548, where A378548 is the sum of divisors d of n such that n/d is odd with an even number of prime factors (counted with multiplicity).

The programs for A378526, there is no canonical definition to state claims against.
-/

/-! ## A378526.P11123779031351977711

`∑{d}[n+1, A023900(#)*A369454((n+1)/#)]`
-/

namespace A378526.P11123779031351977711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A369454 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378526.P11123779031351977711

/-! ## A378526.P1032371838601055883

`∑{d}[n+1, A055615(#)*A358777((n+1)/#)]`
-/

namespace A378526.P1032371838601055883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A358777 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378526.P1032371838601055883

/-! ## A378526.P7878033578143313034

`A358839(n+1)²*A378527(n+1)`
-/

namespace A378526.P7878033578143313034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358839 (n + 1) ^ 2 * A378527 (n + 1)

end

end A378526.P7878033578143313034

/-! ## A378526.P2920447473054903407

`∑{d}[n+1, A349341(#)*A359773((n+1)/#)]`
-/

namespace A378526.P2920447473054903407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349341 d * A359773 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378526.P2920447473054903407

/-! ## A378526.P13023442628246965775

`A378527(n+1)%A075554(n+1)`
-/

namespace A378526.P13023442628246965775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378527 (n + 1)) (A075554 (n + 1))

end

end A378526.P13023442628246965775

/-!
# A378527: Dirichlet inverse of A378546.

The programs for A378527, there is no canonical definition to state claims against.
-/

/-! ## A378527.P16848337536039927637

`∑{d}[n+1, A023900(#)*A378528((n+1)/#)]`
-/

namespace A378527.P16848337536039927637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A378528 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378527.P16848337536039927637

/-! ## A378527.P13780877440308082031

`∑{d}[n+1, A055615(#)*A369974((n+1)/#)]`
-/

namespace A378527.P13780877440308082031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A369974 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378527.P13780877440308082031

/-! ## A378527.P3776206262805995574

`A055615(n+1)-A353477(A275423(n))`
-/

namespace A378527.P3776206262805995574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) - A353477 (A275423 n).toNat

end

end A378527.P3776206262805995574

/-! ## A378527.P10045664177991742479

`A055615(n+1)-A129360(A305416(n+1))`
-/

namespace A378527.P10045664177991742479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) - A129360 (A305416 (n + 1)).toNat

end

end A378527.P10045664177991742479

/-! ## A378527.P8794766448802898585

`A055615(n+1)-A055641(A244081(2*(n+2)))`
-/

namespace A378527.P8794766448802898585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1) - A055641 (A244081 (2 * (n + 2))).toNat

end

end A378527.P8794766448802898585

/-!
# A378528: Dirichlet inverse of A378444.

The programs for A378528, there is no canonical definition to state claims against.
-/

/-! ## A378528.P5540884547092865049

`∑{d}[n+1, A000010((n+1)/#)*A378527(#)]`
-/

namespace A378528.P5540884547092865049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A378527 d

end

end A378528.P5540884547092865049

/-! ## A378528.P9415299101988608647

`∑{d}[n+1, A008683((n+1)/#)*A369974(#)]`
-/

namespace A378528.P9415299101988608647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A369974 d

end

end A378528.P9415299101988608647

/-! ## A378528.P6882049086037005535

`A008683(or(A000120(n+1), A357487(3*n+4)))`
-/

namespace A378528.P6882049086037005535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.lor (A000120 (n + 1)) (A357487 (3 * n + 4))).toNat

end

end A378528.P6882049086037005535

/-! ## A378528.P14410478269922573653

`A301850(A076375(∑{d}[n+1, #]-n))`
-/

namespace A378528.P14410478269922573653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301850 (A076375 (∑ d ∈ Nat.divisors (f1 n), d - n)).toNat

end

end A378528.P14410478269922573653

/-! ## A378528.P9468802171136170149

`A008683(A338649(3*(n+1))+A046212(n+1))`
-/

namespace A378528.P9468802171136170149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A338649 (3 * (n + 1)) + A046212 (n + 1)).toNat

end

end A378528.P9468802171136170149

/-!
# A378529: Characteristic function of A378530.

The programs for A378529, there is no canonical definition to state claims against.
-/

/-! ## A378529.P11396867638989781782

`A378448(n+1)*A378449(n+1)`
-/

namespace A378529.P11396867638989781782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378448 (n + 1) * A378449 (n + 1)

end

end A378529.P11396867638989781782

/-! ## A378529.P6579222805462603108

`char[A378530(n+1)-1]`
-/

namespace A378529.P6579222805462603108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378530 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A378529.P6579222805462603108

/-! ## A378529.P3137707501259487410

`A219254(C(4, A378604(n+1)))`
-/

namespace A378529.P3137707501259487410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219254 (Nat.choose 4 (A378604 (n + 1)).toNat)

end

end A378529.P3137707501259487410

/-! ## A378529.P13221659468085659803

`A302048(A054844(n+1)*A065205(n+1))`
-/

namespace A378529.P13221659468085659803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A054844 (n + 1) * A065205 (n + 1)).toNat

end

end A378529.P13221659468085659803

/-! ## A378529.P10496063816117620744

`and(A026336(n), A378537(n+1))`
-/

namespace A378529.P10496063816117620744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026336 n) (A378537 (n + 1))

end

end A378529.P10496063816117620744

/-! ## A378529.P3897355139584129935

`A083893(A147298(n+2))*A341619(n+1)`
-/

namespace A378529.P3897355139584129935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083893 (A147298 (n + 2)).toNat * A341619 (n + 1)

end

end A378529.P3897355139584129935

/-! ## A378529.P731312451772637717

`A010054(A130403(n))*A378537(n+1)`
-/

namespace A378529.P731312451772637717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A130403 n).toNat * A378537 (n + 1)

end

end A378529.P731312451772637717

/-! ## A378529.P1690105524289148780

`A226463(A127797(2*n+3)*A378537(n+1))`
-/

namespace A378529.P1690105524289148780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226463 (A127797 (2 * n + 3) * A378537 (n + 1)).toNat

end

end A378529.P1690105524289148780

/-! ## A378529.P13926079499889591200

`A284793(A116608(2*n+5))*A378537(n+1)`
-/

namespace A378529.P13926079499889591200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284793 (A116608 (2 * n + 5)).toNat * A378537 (n + 1)

end

end A378529.P13926079499889591200

/-! ## A378529.P4088151602583417215

`and(A027423(A109673(n)), A337690(n+1))`
-/

namespace A378529.P4088151602583417215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027423 (A109673 n).toNat) (A337690 (n + 1))

end

end A378529.P4088151602583417215

/-!
# A378530: Numbers which can be written in precisely one way as sum of a subset of their proper divisors and that have exactly one subset of their divisors such that the complement has the same sum.

The programs for A378530, there is no canonical definition to state claims against.
-/

/-! ## A378530.P11892227050185845675

`eq[1, A378529(n+1)]+1`
-/

namespace A378530.P11892227050185845675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378529 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A378530.P11892227050185845675

/-! ## A378530.P11432829670871544749

`eq[2, A378604(n+1)]+1`
-/

namespace A378530.P11432829670871544749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378604 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A378530.P11432829670871544749

/-! ## A378530.P18344936774049103326

`filter[A344180(n), A378529(#)]`
-/

namespace A378530.P18344936774049103326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378529 (f1 j).toNat = 1) n)

end

end A378530.P18344936774049103326

/-! ## A378530.P4115475721119168516

`filter[A001284(n+1), A378529(#)]`
-/

namespace A378530.P4115475721119168516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378529 (f1 j).toNat = 1) n)

end

end A378530.P4115475721119168516

/-! ## A378530.P1538099068599281070

`filter[A005279(n+1), A378529(#)]`
-/

namespace A378530.P1538099068599281070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378529 (f1 j).toNat = 1) n)

end

end A378530.P1538099068599281070

/-! ## A378530.P14397736195974676210

`filter[A005835(n+1), A378529(#)]`
-/

namespace A378530.P14397736195974676210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378529 (f1 j).toNat = 1) n)

end

end A378530.P14397736195974676210

/-! ## A378530.P2029003023191747965

`filter[A006036(n+1), A378529(#)]`
-/

namespace A378530.P2029003023191747965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378529 (f1 j).toNat = 1) n)

end

end A378530.P2029003023191747965

/-! ## A378530.P12324907590642002200

`filter[A006039(n+1), A378529(#)]`
-/

namespace A378530.P12324907590642002200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378529 (f1 j).toNat = 1) n)

end

end A378530.P12324907590642002200

/-! ## A378530.P7356967607460904581

`filter[A023196(n+1), A378529(#)]`
-/

namespace A378530.P7356967607460904581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378529 (f1 j).toNat = 1) n)

end

end A378530.P7356967607460904581

/-! ## A378530.P17623746960052311927

`filter[A051774(n+1), A378529(#)]`
-/

namespace A378530.P17623746960052311927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378529 (f1 j).toNat = 1) n)

end

end A378530.P17623746960052311927

/-!
# A378531: Dirichlet convolution of A378432 and A378542.

The programs for A378531, there is no canonical definition to state claims against.
-/

/-! ## A378531.P10735774392935272084

`∑{d}[n+1, A008683(#)*A378533((n+1)/#)]`
-/

namespace A378531.P10735774392935272084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378531.P10735774392935272084

/-! ## A378531.P7147288713205641527

`∑{d}[n+1, A378432(#)*A378542((n+1)/#)]`
-/

namespace A378531.P7147288713205641527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378432 d * A378542 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378531.P7147288713205641527

/-! ## A378531.P673856607444575095

`∑{d}[n+1, A065043(#)*A174725((n+1)/#)]`
-/

namespace A378531.P673856607444575095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065043 d * A174725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378531.P673856607444575095

/-! ## A378531.P14678509679016423721

`∑{d}[n+1, A323910(#)*A378535((n+1)/#)]`
-/

namespace A378531.P14678509679016423721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323910 d * A378535 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378531.P14678509679016423721

/-! ## A378531.P12526790123891071408

`xor(1, A334033(∏{e}[n+1, C(#+4, 4)]))`
-/

namespace A378531.P12526790123891071408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A334033 (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (Nat.factorization (f1 n) p + 4) 4))

end

end A378531.P12526790123891071408

/-!
# A378532: Dirichlet convolution of A296075 and A378525.

The programs for A378532, there is no canonical definition to state claims against.
-/

/-! ## A378532.P17717682528610409128

`∑{d}[n+1, A378534(#)]`
-/

namespace A378532.P17717682528610409128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378534 d

end

end A378532.P17717682528610409128

/-! ## A378532.P414694926421605025

`∑{d}[n+1, A296075(#)*A378525((n+1)/#)]`
-/

namespace A378532.P414694926421605025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296075 d * A378525 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378532.P414694926421605025

/-! ## A378532.P15247588813434696655

`∑{d}[n+1, A033879(#)*A378536((n+1)/#)]`
-/

namespace A378532.P15247588813434696655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A378536 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378532.P15247588813434696655

/-! ## A378532.P3250724968091413236

`∑{d}[n+1, A359763(#)*A378216((n+1)/#)]`
-/

namespace A378532.P3250724968091413236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359763 d * A378216 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378532.P3250724968091413236

/-! ## A378532.P10326409623974993459

`A010056(A300834(n+1))-A323014(n+1)`
-/

namespace A378532.P10326409623974993459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A300834 (n + 1)).toNat - A323014 (n + 1)

end

end A378532.P10326409623974993459

/-!
# A378533: Dirichlet convolution of A323910 and A378542.

The programs for A378533, there is no canonical definition to state claims against.
-/

/-! ## A378533.P5748510570065160967

`∑{d}[n+1, A378531(#)]`
-/

namespace A378533.P5748510570065160967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378531 d

end

end A378533.P5748510570065160967

/-! ## A378533.P15342091003214021307

`∑{d}[n+1, A323910(#)*A378542((n+1)/#)]`
-/

namespace A378533.P15342091003214021307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323910 d * A378542 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378533.P15342091003214021307

/-! ## A378533.P12144498480014348063

`∑{d}[n+1, A038548(#)*A174725((n+1)/#)]`
-/

namespace A378533.P12144498480014348063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038548 d * A174725 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378533.P12144498480014348063

/-! ## A378533.P6292898996718959047

`∑{d}[n+1, A323912(#)*A378535((n+1)/#)]`
-/

namespace A378533.P6292898996718959047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323912 d * A378535 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378533.P6292898996718959047

/-! ## A378533.P9900992280867231664

`∑{d}[n+1, A002033(#-1)*A065043((n+1)/#)]`
-/

namespace A378533.P9900992280867231664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1) * A065043 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378533.P9900992280867231664

/-!
# A378534: Dirichlet convolution of A033879 and A378525.

The programs for A378534, there is no canonical definition to state claims against.
-/

/-! ## A378534.P11551637849492344455

`∑{d}[n+1, A008683(#)*A378532((n+1)/#)]`
-/

namespace A378534.P11551637849492344455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378532 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378534.P11551637849492344455

/-! ## A378534.P7039339920478013668

`∑{d}[n+1, A033879(#)*A378525((n+1)/#)]`
-/

namespace A378534.P7039339920478013668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A378525 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378534.P7039339920478013668

/-! ## A378534.P3983296942980655379

`∑{d}[n+1, A083254(#)*A378536((n+1)/#)]`
-/

namespace A378534.P3983296942980655379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A083254 d * A378536 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378534.P3983296942980655379

/-! ## A378534.P4946855762391214219

`∑{d}[n+1, A369453(#)*A378216((n+1)/#)]`
-/

namespace A378534.P4946855762391214219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369453 d * A378216 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378534.P4946855762391214219

/-! ## A378534.P15203283874320656985

`A002321(∏{p}[A318843(n+1), #])`
-/

namespace A378534.P15203283874320656985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002321 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A378534.P15203283874320656985

/-!
# A378535: Möbius transform of A378542, where A378542 is the sum of divisors d of n such that n/d has an even number of prime factors (counted with multiplicity).

The programs for A378535, the canonical program `A378535.P2163637067217421247` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378535 has offset 1).

The definition of A378535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378535.P2163637067217421247

`∑{d}[n+1, A008683(#)*A378542((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A378535

/-- `∑{d}[n+1, A008683(#)*A378542((n+1)/#)]` -/
def P2163637067217421247.Spec : Prop :=
  ∀ n, P2163637067217421247.a n = A378535 (n + 1)

theorem P2163637067217421247.correct : P2163637067217421247.Spec := by
  intro n
  simp only [A378535, Nat.add_sub_cancel]

end A378535

/-! ## A378535.P6218946312386172264

`(A074722(n+1)+n+1)/2`
-/

namespace A378535.P6218946312386172264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074722 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A378535.P6218946312386172264

namespace A378535

/-- `(A074722(n+1)+n+1)/2` -/
def P6218946312386172264.Spec : Prop :=
  ∀ n, P6218946312386172264.a n = (A378535 (n + 1) : ℚ)

end A378535

/-! ## A378535.P8316255958576374235

`∑{d}[n+1, A000010(#)*A065043((n+1)/#)]`
-/

namespace A378535.P8316255958576374235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A065043 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378535.P8316255958576374235

namespace A378535

/-- `∑{d}[n+1, A000010(#)*A065043((n+1)/#)]` -/
def P8316255958576374235.Spec : Prop :=
  ∀ n, P8316255958576374235.a n = A378535 (n + 1)

end A378535

/-! ## A378535.P8597671808653799331

`∑{d}[n+1, A007432(#)*A140773((n+1)/#)]`
-/

namespace A378535.P8597671808653799331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A140773 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378535.P8597671808653799331

namespace A378535

/-- `∑{d}[n+1, A007432(#)*A140773((n+1)/#)]` -/
def P8597671808653799331.Spec : Prop :=
  ∀ n, P8597671808653799331.a n = A378535 (n + 1)

end A378535

/-! ## A378535.P2870841173153787950

`∑{d}[n+1, A008836(#)*A291784((n+1)/#)]`
-/

namespace A378535.P2870841173153787950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A291784 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378535.P2870841173153787950

namespace A378535

/-- `∑{d}[n+1, A008836(#)*A291784((n+1)/#)]` -/
def P2870841173153787950.Spec : Prop :=
  ∀ n, P2870841173153787950.a n = A378535 (n + 1)

end A378535

/-! ## A378535.P1359554196285806109

`∑{d}[n+1, A033879(#)*A378531((n+1)/#)]`
-/

namespace A378535.P1359554196285806109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A378531 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378535.P1359554196285806109

namespace A378535

/-- `∑{d}[n+1, A033879(#)*A378531((n+1)/#)]` -/
def P1359554196285806109.Spec : Prop :=
  ∀ n, P1359554196285806109.a n = A378535 (n + 1)

end A378535

/-! ## A378535.P7438756112777356166

`∑{d}[n+1, A083254(#)*A378533((n+1)/#)]`
-/

namespace A378535.P7438756112777356166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A083254 d * A378533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378535.P7438756112777356166

namespace A378535

/-- `∑{d}[n+1, A083254(#)*A378533((n+1)/#)]` -/
def P7438756112777356166.Spec : Prop :=
  ∀ n, P7438756112777356166.a n = A378535 (n + 1)

end A378535

/-! ## A378535.P3773108521183252438

`∑{d}[n+1, A206369(#)*A353629((n+1)/#)]`
-/

namespace A378535.P3773108521183252438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A353629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378535.P3773108521183252438

namespace A378535

/-- `∑{d}[n+1, A206369(#)*A353629((n+1)/#)]` -/
def P3773108521183252438.Spec : Prop :=
  ∀ n, P3773108521183252438.a n = A378535 (n + 1)

end A378535

/-!
# A378536: Inverse Möbius transform of A378525.

The programs for A378536, there is no canonical definition to state claims against.
-/

/-! ## A378536.P1446318079555884483

`∑{d}[n+1, A378525(#)]`
-/

namespace A378536.P1446318079555884483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378525 d

end

end A378536.P1446318079555884483

/-! ## A378536.P1457563265841665056

`∑{d}[n+1, A023900(#)*A359763((n+1)/#)]`
-/

namespace A378536.P1457563265841665056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A359763 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378536.P1457563265841665056

/-! ## A378536.P3460929672794805422

`∑{d}[n+1, A130054(#)*A369453((n+1)/#)]`
-/

namespace A378536.P3460929672794805422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A369453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378536.P3460929672794805422

/-! ## A378536.P14260433010252210649

`∑{d}[n+1, A323910(#)*A378532((n+1)/#)]`
-/

namespace A378536.P14260433010252210649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323910 d * A378532 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378536.P14260433010252210649

/-! ## A378536.P5928521579546805739

`∑{d}[n+1, A323912(#)*A378534((n+1)/#)]`
-/

namespace A378536.P5928521579546805739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323912 d * A378534 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378536.P5928521579546805739

/-!
# A378537: Characteristic function for primitive Zumkeller numbers.

The programs for A378537, there is no canonical definition to state claims against.
-/

/-! ## A378537.P18420050044452117787

`char[A180332(n+1)-1]`
-/

namespace A378537.P18420050044452117787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180332 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A378537.P18420050044452117787

/-!
# A378538: Symmetric difference of the primitive non-deficient numbers and the primitive Zumkeller numbers.

The programs for A378538, there is no canonical definition to state claims against.
-/

/-! ## A378538.P7303043492996307459

`∪[A376879(n+1), A378657(n+1)]`
-/

namespace A378538.P7303043492996307459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378538.P7303043492996307459

/-! ## A378538.P18400054408299134941

`∪[A378656(n+1), A378657(n+1)]`
-/

namespace A378538.P18400054408299134941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A378538.P18400054408299134941

/-!
# A378540: a(n) = 1 if n is a practical number (A005153) that is neither a square or twice a square, otherwise a(n) = 0.

The programs for A378540, there is no canonical definition to state claims against.
-/

/-! ## A378540.P2000577785795064031

`(1-A053866(n+1))*A322860(n+1)`
-/

namespace A378540.P2000577785795064031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A053866 (n + 1)) * A322860 (n + 1)

end

end A378540.P2000577785795064031

/-! ## A378540.P1910311202656757277

`char[A378541(n+1)-1]`
-/

namespace A378540.P1910311202656757277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378541 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A378540.P1910311202656757277

/-! ## A378540.P7026188765116134164

`and(A000203(n+1)+1, A322860(n+1))`
-/

namespace A378540.P7026188765116134164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (n + 1) + 1) (A322860 (n + 1))

end

end A378540.P7026188765116134164

/-! ## A378540.P9945292177104226470

`and(char[A005153(n+1)-1], A030057(n+1))`
-/

namespace A378540.P9945292177104226470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A030057 (n + 1))

end

end A378540.P9945292177104226470

/-! ## A378540.P12607456277266310254

`and(A030057(n+1), A063524(A210445(n+1)))`
-/

namespace A378540.P12607456277266310254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A030057 (n + 1)) (A063524 (A210445 (n + 1)).toNat)

end

end A378540.P12607456277266310254

/-! ## A378540.P5672861738718960180

`and(char[A327832(n+1)-1], A030057(n+1))`
-/

namespace A378540.P5672861738718960180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327832 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A030057 (n + 1))

end

end A378540.P5672861738718960180

/-! ## A378540.P14910322782563704770

`and(A000007(A279048(n+1)), A030057(n+1))`
-/

namespace A378540.P14910322782563704770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000007 (A279048 (n + 1)).toNat) (A030057 (n + 1))

end

end A378540.P14910322782563704770

/-! ## A378540.P644154157048877520

`and(A002522(A000203(n+1)), A322860(n+1))`
-/

namespace A378540.P644154157048877520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002522 (A000203 (n + 1)).toNat) (A322860 (n + 1))

end

end A378540.P644154157048877520

/-! ## A378540.P11598701072297694899

`A030057(n+1)%A000120(A366688(n))`
-/

namespace A378540.P11598701072297694899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030057 (n + 1)) (A000120 (A366688 n).toNat)

end

end A378540.P11598701072297694899

/-! ## A378540.P8920353695746118516

`A294937(C(A119347(n+1), A014709(n)))`
-/

namespace A378540.P8920353695746118516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (Nat.choose (A119347 (n + 1)).toNat (A014709 n).toNat)

end

end A378540.P8920353695746118516

/-!
# A378541: Practical numbers whose sum of divisors is even.

The programs for A378541, there is no canonical definition to state claims against.
-/

/-! ## A378541.P465984811371247743

`filter[A005153(n+1), A378540(#)]`
-/

namespace A378541.P465984811371247743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378540 (f1 j).toNat = 1) n)

end

end A378541.P465984811371247743

/-! ## A378541.P9262578393398502649

`filter[A093891(n+1), A378540(#)]`
-/

namespace A378541.P9262578393398502649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378540 (f1 j).toNat = 1) n)

end

end A378541.P9262578393398502649

/-! ## A378541.P9925478264963905223

`filter[A326133(n+1), A378540(#)]`
-/

namespace A378541.P9925478264963905223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378540 (f1 j).toNat = 1) n)

end

end A378541.P9925478264963905223

/-! ## A378541.P6004189409091621033

`filter[A196149(n+1), A378540(#)]`
-/

namespace A378541.P6004189409091621033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378540 (f1 j).toNat = 1) n)

end

end A378541.P6004189409091621033

/-! ## A378541.P4780750816326652887

`filter[A319701(n+1), A378540(#)]`
-/

namespace A378541.P4780750816326652887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378540 (f1 j).toNat = 1) n)

end

end A378541.P4780750816326652887

/-! ## A378541.P81275715408324987

`filter[A319702(n+2), A378540(#)]`
-/

namespace A378541.P81275715408324987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378540 (f1 j).toNat = 1) n)

end

end A378541.P81275715408324987

/-! ## A378541.P4488277386809450127

`filter[A377929(n+1), A378540(#)]`
-/

namespace A378541.P4488277386809450127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378540 (f1 j).toNat = 1) n)

end

end A378541.P4488277386809450127

/-! ## A378541.P11989645958143551633

`filter[A083207(n+1), A322860(#)]`
-/

namespace A378541.P11989645958143551633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A378541.P11989645958143551633

/-! ## A378541.P4280061277238872581

`filter[A083207(n+1), A378540(#)]`
-/

namespace A378541.P4280061277238872581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378540 (f1 j).toNat = 1) n)

end

end A378541.P4280061277238872581

/-! ## A378541.P3013322158178474514

`∩[A005153(n+1), A083207(n+1)]`
-/

namespace A378541.P3013322158178474514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378541.P3013322158178474514

/-! ## A378541.P17635005003461406813

`∩[A083207(n+1), A377929(n+1)]`
-/

namespace A378541.P17635005003461406813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378541.P17635005003461406813

/-! ## A378541.P17807740787845347256

`filter[A363227(n+1), A378540(#)]`
-/

namespace A378541.P17807740787845347256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378540 (f1 j).toNat = 1) n)

end

end A378541.P17807740787845347256

/-! ## A378541.P11911214917205181552

`filter[A005835(n+1), A378540(#)]`
-/

namespace A378541.P11911214917205181552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378540 (f1 j).toNat = 1) n)

end

end A378541.P11911214917205181552

/-! ## A378541.P2944079194728952484

`filter[A376880(n+1), A378540(#)]`
-/

namespace A378541.P2944079194728952484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378540 (f1 j).toNat = 1) n)

end

end A378541.P2944079194728952484

/-! ## A378541.P15839343125764861694

`filter[A023196(n+1), A378540(#)]`
-/

namespace A378541.P15839343125764861694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378540 (f1 j).toNat = 1) n)

end

end A378541.P15839343125764861694

/-! ## A378541.P2659799772947172146

`filter[A177052(n+1), A378540(#)]`
-/

namespace A378541.P2659799772947172146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177052 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378540 (f1 j).toNat = 1) n)

end

end A378541.P2659799772947172146

/-! ## A378541.P5630314976956335619

`filter[A246198(n+1), A322860(#)]`
-/

namespace A378541.P5630314976956335619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322860 (f1 j).toNat = 1) n)

end

end A378541.P5630314976956335619

/-! ## A378541.P5426103255313531964

`filter[A246198(n+1), A378540(#)]`
-/

namespace A378541.P5426103255313531964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378540 (f1 j).toNat = 1) n)

end

end A378541.P5426103255313531964

/-! ## A378541.P6808624255949910274

`∩[A005153(n+1), A246198(n+1)]`
-/

namespace A378541.P6808624255949910274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378541.P6808624255949910274

/-! ## A378541.P11093842698942500217

`∩[A246198(n+1), A377929(n+1)]`
-/

namespace A378541.P11093842698942500217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246198 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378541.P11093842698942500217

/-!
# A378542: Sum of divisors d of n such that n/d has an even number of prime factors (counted with multiplicity).

The programs for A378542, the canonical program `A378542.P16518719972786175247` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378542 has offset 1).

The definition of A378542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378542.P14841122176227413992

`∑{d}[n+1, A065043((n+1)/#)*#]`
-/

namespace A378542.P14841122176227413992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065043 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d : ℤ)

end

end A378542.P14841122176227413992

namespace A378542

/-- `∑{d}[n+1, A065043((n+1)/#)*#]` -/
def P14841122176227413992.Spec : Prop :=
  ∀ n, P14841122176227413992.a n = A378542 (n + 1)

end A378542

/-! ## A378542.P16518719972786175247

`A000203(n+1)-A378543(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A378542

/-- `A000203(n+1)-A378543(n+1)` -/
def P16518719972786175247.Spec : Prop :=
  ∀ n, P16518719972786175247.a n = A378542 (n + 1)

theorem P16518719972786175247.correct : P16518719972786175247.Spec := by
  intro n
  simp only [A378542, Nat.add_sub_cancel]

end A378542

/-! ## A378542.P5935614728506394271

`∑{d}[n+1, A000010((n+1)/#)*A038548(#)]`
-/

namespace A378542.P5935614728506394271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A038548 d

end

end A378542.P5935614728506394271

namespace A378542

/-- `∑{d}[n+1, A000010((n+1)/#)*A038548(#)]` -/
def P5935614728506394271.Spec : Prop :=
  ∀ n, P5935614728506394271.a n = A378542 (n + 1)

end A378542

/-! ## A378542.P17818536090153411108

`∑{d}[n+1, A378535(#)]`
-/

namespace A378542.P17818536090153411108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378535 d

end

end A378542.P17818536090153411108

namespace A378542

/-- `∑{d}[n+1, A378535(#)]` -/
def P17818536090153411108.Spec : Prop :=
  ∀ n, P17818536090153411108.a n = A378542 (n + 1)

end A378542

/-! ## A378542.P4743731527991848467

`A378543(n+1)+A206369(n+1)`
-/

namespace A378542.P4743731527991848467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378543 (n + 1) + A206369 (n + 1)

end

end A378542.P4743731527991848467

namespace A378542

/-- `A378543(n+1)+A206369(n+1)` -/
def P4743731527991848467.Spec : Prop :=
  ∀ n, P4743731527991848467.a n = A378542 (n + 1)

end A378542

/-! ## A378542.P5536819640408580986

`∑{d}[n+1, A018892(#)*A074722((n+1)/#)]`
-/

namespace A378542.P5536819640408580986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018892 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378542.P5536819640408580986

namespace A378542

/-- `∑{d}[n+1, A018892(#)*A074722((n+1)/#)]` -/
def P5536819640408580986.Spec : Prop :=
  ∀ n, P5536819640408580986.a n = A378542 (n + 1)

end A378542

/-! ## A378542.P7328246628220911859

`∑{d}[n+1, A007875(#)*A206369((n+1)/#)]`
-/

namespace A378542.P7328246628220911859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007875 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378542.P7328246628220911859

namespace A378542

/-- `∑{d}[n+1, A007875(#)*A206369((n+1)/#)]` -/
def P7328246628220911859.Spec : Prop :=
  ∀ n, P7328246628220911859.a n = A378542 (n + 1)

end A378542

/-! ## A378542.P296695290089725162

`∑{d}[n+1, A033879(#)*A378533((n+1)/#)]`
-/

namespace A378542.P296695290089725162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A033879 d * A378533 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378542.P296695290089725162

namespace A378542

/-- `∑{d}[n+1, A033879(#)*A378533((n+1)/#)]` -/
def P296695290089725162.Spec : Prop :=
  ∀ n, P296695290089725162.a n = A378542 (n + 1)

end A378542

/-! ## A378542.P9799681106360386520

`∑{d}[n+1, A076752(#)*A353629((n+1)/#)]`
-/

namespace A378542.P9799681106360386520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d * A353629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378542.P9799681106360386520

namespace A378542

/-- `∑{d}[n+1, A076752(#)*A353629((n+1)/#)]` -/
def P9799681106360386520.Spec : Prop :=
  ∀ n, P9799681106360386520.a n = A378542 (n + 1)

end A378542

/-! ## A378542.P8369942095663388025

`∑{d}[n+1, A296075(#)*A378531((n+1)/#)]`
-/

namespace A378542.P8369942095663388025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296075 d * A378531 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378542.P8369942095663388025

namespace A378542

/-- `∑{d}[n+1, A296075(#)*A378531((n+1)/#)]` -/
def P8369942095663388025.Spec : Prop :=
  ∀ n, P8369942095663388025.a n = A378542 (n + 1)

end A378542

/-! ## A378542.P12268112771828615232

`∑{d}[n+1, A359370(#)*A373188((n+1)/#)]`
-/

namespace A378542.P12268112771828615232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359370 d * A373188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378542.P12268112771828615232

namespace A378542

/-- `∑{d}[n+1, A359370(#)*A373188((n+1)/#)]` -/
def P12268112771828615232.Spec : Prop :=
  ∀ n, P12268112771828615232.a n = A378542 (n + 1)

end A378542

/-! ## A378542.P14760516431953894697

`A378548(n+1)+A378549(n+1)-A378543(n+1)`
-/

namespace A378542.P14760516431953894697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378548 (n + 1) + (A378549 (n + 1) - A378543 (n + 1))

end

end A378542.P14760516431953894697

namespace A378542

/-- `A378548(n+1)+A378549(n+1)-A378543(n+1)` -/
def P14760516431953894697.Spec : Prop :=
  ∀ n, P14760516431953894697.a n = A378542 (n + 1)

theorem P14760516431953894697.correct : P14760516431953894697.Spec := by
  intro n
  simp only [A378542, Nat.add_sub_cancel, A378542.P14760516431953894697.a, A378542.P16518719972786175247.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A378543, A378543.P8833094378512870217.f1, A378543.P8833094378512870217.a, A378548, A378548.P2736405864805168493.f1, A378548.P2736405864805168493.a, A378549, A378549.P13326407963315648607.a, A066829, A066829.P3721516859256189271.a, A353557, A353557.P3482545693705023104.a, A059841, A059841.P7264174615531153985.a, A065043, A065043.P15027714353296076488.a, A095112, A095112.P8729457893508808626.f1, A095112.P8729457893508808626.a, A000010, A000010.P4673923239450215316.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A007421, A007421.P6096517627125049268.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378542

/-!
# A378543: Sum of divisors d of n such that n/d has an odd number of prime factors (counted with multiplicity).

The programs for A378543, the canonical program `A378543.P8833094378512870217` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378543 has offset 1).

The definition of A378543 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378543.P8833094378512870217

`∑{d}[n+1, A066829((n+1)/#)*#]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A378543

/-- `∑{d}[n+1, A066829((n+1)/#)*#]` -/
def P8833094378512870217.Spec : Prop :=
  ∀ n, P8833094378512870217.a n = A378543 (n + 1)

theorem P8833094378512870217.correct : P8833094378512870217.Spec := by
  intro n
  simp only [A378543, Nat.add_sub_cancel]

end A378543

/-! ## A378543.P14794277914542783310

`∑{d}[n+1, A000010((n+1)/#)*A056924(#)]`
-/

namespace A378543.P14794277914542783310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A056924 d

end

end A378543.P14794277914542783310

namespace A378543

/-- `∑{d}[n+1, A000010((n+1)/#)*A056924(#)]` -/
def P14794277914542783310.Spec : Prop :=
  ∀ n, P14794277914542783310.a n = A378543 (n + 1)

end A378543

/-! ## A378543.P17586226492373655237

`Δ[A160664(n)]-A378542(n+1)`
-/

namespace A378543.P17586226492373655237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A378542 (n + 1)

end

end A378543.P17586226492373655237

namespace A378543

/-- `Δ[A160664(n)]-A378542(n+1)` -/
def P17586226492373655237.Spec : Prop :=
  ∀ n, P17586226492373655237.a n = A378543 (n + 1)

end A378543

/-! ## A378543.P14939477515757480358

`A000203(n+1)-A378542(n+1)`
-/

namespace A378543.P14939477515757480358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A378542 (n + 1)

end

end A378543.P14939477515757480358

namespace A378543

/-- `A000203(n+1)-A378542(n+1)` -/
def P14939477515757480358.Spec : Prop :=
  ∀ n, P14939477515757480358.a n = A378543 (n + 1)

theorem P14939477515757480358.correct : P14939477515757480358.Spec := by
  intro n
  simp only [A378543, Nat.add_sub_cancel, A378543.P14939477515757480358.a, A378543.P8833094378512870217.f1, A378543.P8833094378512870217.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A066829, A066829.P3721516859256189271.a, A378542, A378542.P16518719972786175247.a, A065043, A065043.P15027714353296076488.a, A007421, A007421.P6096517627125049268.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378543

/-! ## A378543.P8976976302333167722

`A378542(n+1)-A206369(n+1)`
-/

namespace A378543.P8976976302333167722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378542 (n + 1) - A206369 (n + 1)

end

end A378543.P8976976302333167722

namespace A378543

/-- `A378542(n+1)-A206369(n+1)` -/
def P8976976302333167722.Spec : Prop :=
  ∀ n, P8976976302333167722.a n = A378543 (n + 1)

end A378543

/-! ## A378543.P6386702039491015600

`A245092(Δ[n²])-A378542(n+1)`
-/

namespace A378543.P6386702039491015600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A378542 (n + 1)

end

end A378543.P6386702039491015600

namespace A378543

/-- `A245092(Δ[n²])-A378542(n+1)` -/
def P6386702039491015600.Spec : Prop :=
  ∀ n, P6386702039491015600.a n = A378543 (n + 1)

end A378543

/-! ## A378543.P193134445137246663

`(A000203(n+1)-A206369(n+1))/2`
-/

namespace A378543.P193134445137246663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A206369 (n + 1) : ℚ) / 2

end

end A378543.P193134445137246663

namespace A378543

/-- `(A000203(n+1)-A206369(n+1))/2` -/
def P193134445137246663.Spec : Prop :=
  ∀ n, P193134445137246663.a n = (A378543 (n + 1) : ℚ)

end A378543

/-! ## A378543.P5569270384796927197

`A378542(2*(n+1))-A378548(2*(n+1))`
-/

namespace A378543.P5569270384796927197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378542 (2 * (n + 1)) - A378548 (2 * (n + 1))

end

end A378543.P5569270384796927197

namespace A378543

/-- `A378542(2*(n+1))-A378548(2*(n+1))` -/
def P5569270384796927197.Spec : Prop :=
  ∀ n, P5569270384796927197.a n = A378543 (n + 1)

end A378543

/-! ## A378543.P13102672514384283650

`∑{d}[n+1, A063647(#)*A074722((n+1)/#)]`
-/

namespace A378543.P13102672514384283650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063647 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378543.P13102672514384283650

namespace A378543

/-- `∑{d}[n+1, A063647(#)*A074722((n+1)/#)]` -/
def P13102672514384283650.Spec : Prop :=
  ∀ n, P13102672514384283650.a n = A378543 (n + 1)

end A378543

/-! ## A378543.P7508461153586055107

`∑{d}[n+1, A076752(#)*A252233((n+1)/#)]`
-/

namespace A378543.P7508461153586055107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d * A252233 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378543.P7508461153586055107

namespace A378543

/-- `∑{d}[n+1, A076752(#)*A252233((n+1)/#)]` -/
def P7508461153586055107.Spec : Prop :=
  ∀ n, P7508461153586055107.a n = A378543 (n + 1)

end A378543

/-! ## A378543.P6639748164419676182

`∑{d}[n+1, A154269(#)*A378549((n+1)/#)]`
-/

namespace A378543.P6639748164419676182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154269 d * A378549 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378543.P6639748164419676182

namespace A378543

/-- `∑{d}[n+1, A154269(#)*A378549((n+1)/#)]` -/
def P6639748164419676182.Spec : Prop :=
  ∀ n, P6639748164419676182.a n = A378543 (n + 1)

end A378543

/-! ## A378543.P12831466803385793164

`∑{d}[n+1, A359372(#)*A373188((n+1)/#)]`
-/

namespace A378543.P12831466803385793164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359372 d * A373188 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378543.P12831466803385793164

namespace A378543

/-- `∑{d}[n+1, A359372(#)*A373188((n+1)/#)]` -/
def P12831466803385793164.Spec : Prop :=
  ∀ n, P12831466803385793164.a n = A378543 (n + 1)

end A378543

/-! ## A378543.P12070020484205550655

`A378546(n+1)+A378547(n+1)-A378542(n+1)`
-/

namespace A378543.P12070020484205550655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378546 (n + 1) + (A378547 (n + 1) - A378542 (n + 1))

end

end A378543.P12070020484205550655

namespace A378543

/-- `A378546(n+1)+A378547(n+1)-A378542(n+1)` -/
def P12070020484205550655.Spec : Prop :=
  ∀ n, P12070020484205550655.a n = A378543 (n + 1)

theorem P12070020484205550655.correct : P12070020484205550655.Spec := by
  intro n
  simp only [A378543, Nat.add_sub_cancel, A378543.P12070020484205550655.a, A378543.P8833094378512870217.f1, A378543.P8833094378512870217.a, A066829, A066829.P3721516859256189271.a, A378542, A378542.P16518719972786175247.a, A378546, A378546.P16383405044815034035.f1, A378546.P16383405044815034035.a, A378547, A378547.P2663532345835006432.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A065043, A065043.P15027714353296076488.a, A369001, A369001.P2904300838152435751.a, A007421, A007421.P6096517627125049268.a, A059841, A059841.P7264174615531153985.a, A083345, A083345.P17056663291398447745.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A342001, A342001.P4805983025243635594.a, A369008, A369008.P206606723966136315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378543

/-!
# A378544: a(n) is the sum of those divisors d of n for which A083345(d) is even, where A083345(n) is the numerator of Sum(e/p: n=Product(p^e)).

The programs for A378544, the canonical program `A378544.P9360697851165105411` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378544 has offset 1).

The definition of A378544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378544.P9360697851165105411

`∑{d}[n+1, #*A369001(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A378544

/-- `∑{d}[n+1, #*A369001(#)]` -/
def P9360697851165105411.Spec : Prop :=
  ∀ n, P9360697851165105411.a n = A378544 (n + 1)

theorem P9360697851165105411.correct : P9360697851165105411.Spec := by
  intro n
  simp only [A378544, Nat.add_sub_cancel]

end A378544

/-! ## A378544.P17662829211269965331

`A000203(n+1)-A378545(n+1)`
-/

namespace A378544.P17662829211269965331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A378545 (n + 1)

end

end A378544.P17662829211269965331

namespace A378544

/-- `A000203(n+1)-A378545(n+1)` -/
def P17662829211269965331.Spec : Prop :=
  ∀ n, P17662829211269965331.a n = A378544 (n + 1)

theorem P17662829211269965331.correct : P17662829211269965331.Spec := by
  intro n
  simp only [A378544, Nat.add_sub_cancel, A378544.P17662829211269965331.a, A378544.P9360697851165105411.f1, A378544.P9360697851165105411.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A369001, A369001.P2904300838152435751.a, A378545, A378545.P5757208280459240376.a, A059841, A059841.P7264174615531153985.a, A083345, A083345.P17056663291398447745.a, A342001, A342001.P4805983025243635594.a, A369008, A369008.P206606723966136315.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003557, A003557.P6364735403900941810.a, A085731, A085731.P17818604226734037125.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378544

/-! ## A378544.P3212235615775514639

`A088580(n+1)-1-∑{d}[n+1, #*A377874(#)]`
-/

namespace A378544.P3212235615775514639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - 1 - ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A377874 d

end

end A378544.P3212235615775514639

namespace A378544

/-- `A088580(n+1)-1-∑{d}[n+1, #*A377874(#)]` -/
def P3212235615775514639.Spec : Prop :=
  ∀ n, P3212235615775514639.a n = A378544 (n + 1)

end A378544

/-! ## A378544.P2813489946043686225

`A274535(n+1)/5-∑{d}[n+1, #*A377874(#)]`
-/

namespace A378544.P2813489946043686225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274535 (n + 1) : ℚ) / 5 - ((∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A377874 d : ℤ) : ℚ)

end

end A378544.P2813489946043686225

namespace A378544

/-- `A274535(n+1)/5-∑{d}[n+1, #*A377874(#)]` -/
def P2813489946043686225.Spec : Prop :=
  ∀ n, P2813489946043686225.a n = (A378544 (n + 1) : ℚ)

end A378544

/-! ## A378544.P3566583337761533265

`A378546(n+1)+A378547(n+1)-A378545(n+1)`
-/

namespace A378544.P3566583337761533265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378546 (n + 1) + (A378547 (n + 1) - A378545 (n + 1))

end

end A378544.P3566583337761533265

namespace A378544

/-- `A378546(n+1)+A378547(n+1)-A378545(n+1)` -/
def P3566583337761533265.Spec : Prop :=
  ∀ n, P3566583337761533265.a n = A378544 (n + 1)

theorem P3566583337761533265.correct : P3566583337761533265.Spec := by
  intro n
  simp only [A378544, Nat.add_sub_cancel, A378544.P3566583337761533265.a, A378544.P9360697851165105411.f1, A378544.P9360697851165105411.a, A369001, A369001.P2904300838152435751.a, A378545, A378545.P5757208280459240376.a, A378546, A378546.P16383405044815034035.f1, A378546.P16383405044815034035.a, A378547, A378547.P2663532345835006432.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A059841, A059841.P7264174615531153985.a, A083345, A083345.P17056663291398447745.a, A342001, A342001.P4805983025243635594.a, A369008, A369008.P206606723966136315.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003557, A003557.P6364735403900941810.a, A085731, A085731.P17818604226734037125.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378544

/-! ## A378544.P4626329755128434019

`A092261(n+1)*A295294(n+1)-∑{d}[n+1, #*A377874(#)]`
-/

namespace A378544.P4626329755128434019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (n + 1) * A295294 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A377874 d

end

end A378544.P4626329755128434019

namespace A378544

/-- `A092261(n+1)*A295294(n+1)-∑{d}[n+1, #*A377874(#)]` -/
def P4626329755128434019.Spec : Prop :=
  ∀ n, P4626329755128434019.a n = A378544 (n + 1)

end A378544

/-!
# A378545: a(n) is the sum of those divisors d of n for which A083345(d) is odd, where A083345(n) is the numerator of Sum(e/p: n=Product(p^e)).

The programs for A378545, the canonical program `A378545.P5757208280459240376` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378545 has offset 1).

The definition of A378545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378545.P4451350561220554811

`∑{d}[n+1, #*A377874(#)]`
-/

namespace A378545.P4451350561220554811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A377874 d

end

end A378545.P4451350561220554811

namespace A378545

/-- `∑{d}[n+1, #*A377874(#)]` -/
def P4451350561220554811.Spec : Prop :=
  ∀ n, P4451350561220554811.a n = A378545 (n + 1)

end A378545

/-! ## A378545.P5757208280459240376

`A000203(n+1)-A378544(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A378545

/-- `A000203(n+1)-A378544(n+1)` -/
def P5757208280459240376.Spec : Prop :=
  ∀ n, P5757208280459240376.a n = A378545 (n + 1)

theorem P5757208280459240376.correct : P5757208280459240376.Spec := by
  intro n
  simp only [A378545, Nat.add_sub_cancel]

end A378545

/-! ## A378545.P9555240898265123432

`Δ[A160664(n)]-A378544(n+1)`
-/

namespace A378545.P9555240898265123432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A378544 (n + 1)

end

end A378545.P9555240898265123432

namespace A378545

/-- `Δ[A160664(n)]-A378544(n+1)` -/
def P9555240898265123432.Spec : Prop :=
  ∀ n, P9555240898265123432.a n = A378545 (n + 1)

end A378545

/-! ## A378545.P1392216756829071615

`abs(Δ[A330725(n)])-A378544(n+1)`
-/

namespace A378545.P1392216756829071615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A378544 (n + 1)

end

end A378545.P1392216756829071615

namespace A378545

/-- `abs(Δ[A330725(n)])-A378544(n+1)` -/
def P1392216756829071615.Spec : Prop :=
  ∀ n, P1392216756829071615.a n = A378545 (n + 1)

end A378545

/-! ## A378545.P17803414140771691859

`A245092(Δ[n²])-A378544(n+1)`
-/

namespace A378545.P17803414140771691859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A378544 (n + 1)

end

end A378545.P17803414140771691859

namespace A378545

/-- `A245092(Δ[n²])-A378544(n+1)` -/
def P17803414140771691859.Spec : Prop :=
  ∀ n, P17803414140771691859.a n = A378545 (n + 1)

end A378545

/-! ## A378545.P13521476848162409828

`sqrt(A072861(n+1))-A378544(n+1)`
-/

namespace A378545.P13521476848162409828
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A378544 (n + 1) : ℝ)

end

end A378545.P13521476848162409828

namespace A378545

/-- `sqrt(A072861(n+1))-A378544(n+1)` -/
def P13521476848162409828.Spec : Prop :=
  ∀ n, P13521476848162409828.a n = (A378545 (n + 1) : ℝ)

end A378545

/-! ## A378545.P14264437598321201192

`∑[A340793(n+1)]-A378544(n+1)`
-/

namespace A378545.P14264437598321201192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A378544 (n + 1)

end

end A378545.P14264437598321201192

namespace A378545

/-- `∑[A340793(n+1)]-A378544(n+1)` -/
def P14264437598321201192.Spec : Prop :=
  ∀ n, P14264437598321201192.a n = A378545 (n + 1)

end A378545

/-! ## A378545.P13924373654723637600

`A274536(n+1)/6-A378544(n+1)`
-/

namespace A378545.P13924373654723637600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274536 (n + 1) : ℚ) / 6 - (A378544 (n + 1) : ℚ)

end

end A378545.P13924373654723637600

namespace A378545

/-- `A274536(n+1)/6-A378544(n+1)` -/
def P13924373654723637600.Spec : Prop :=
  ∀ n, P13924373654723637600.a n = (A378545 (n + 1) : ℚ)

theorem P13924373654723637600.correct : P13924373654723637600.Spec := by
  intro n
  simp only [A378545, Nat.add_sub_cancel, A378545.P13924373654723637600.a, A378545.P5757208280459240376.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A274536, A274536.P12250643141026633019.a, A378544, A378544.P9360697851165105411.f1, A378544.P9360697851165105411.a, A369001, A369001.P2904300838152435751.a, A059841, A059841.P7264174615531153985.a, A083345, A083345.P17056663291398447745.a, A342001, A342001.P4805983025243635594.a, A369008, A369008.P206606723966136315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378545

/-! ## A378545.P1437220996331061324

`A065475(n+1)+A048050(n+1)-A378544(n+1)`
-/

namespace A378545.P1437220996331061324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) + A048050 (n + 1) - A378544 (n + 1)

end

end A378545.P1437220996331061324

namespace A378545

/-- `A065475(n+1)+A048050(n+1)-A378544(n+1)` -/
def P1437220996331061324.Spec : Prop :=
  ∀ n, P1437220996331061324.a n = A378545 (n + 1)

theorem P1437220996331061324.correct : P1437220996331061324.Spec := by
  intro n
  simp only [A378545, Nat.add_sub_cancel, A378545.P1437220996331061324.a, A378545.P5757208280459240376.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048050, A048050.P12972569362416034982.a, A065475, A065475.P2637304413385993180.a, A378544, A378544.P9360697851165105411.f1, A378544.P9360697851165105411.a, A369001, A369001.P2904300838152435751.a, A059841, A059841.P7264174615531153985.a, A083345, A083345.P17056663291398447745.a, A342001, A342001.P4805983025243635594.a, A369008, A369008.P206606723966136315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378545

/-! ## A378545.P7671904940207930938

`A378546(n+1)+A378547(n+1)-A378544(n+1)`
-/

namespace A378545.P7671904940207930938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378546 (n + 1) + (A378547 (n + 1) - A378544 (n + 1))

end

end A378545.P7671904940207930938

namespace A378545

/-- `A378546(n+1)+A378547(n+1)-A378544(n+1)` -/
def P7671904940207930938.Spec : Prop :=
  ∀ n, P7671904940207930938.a n = A378545 (n + 1)

theorem P7671904940207930938.correct : P7671904940207930938.Spec := by
  intro n
  simp only [A378545, Nat.add_sub_cancel, A378545.P7671904940207930938.a, A378545.P5757208280459240376.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A378544, A378544.P9360697851165105411.f1, A378544.P9360697851165105411.a, A378546, A378546.P16383405044815034035.f1, A378546.P16383405044815034035.a, A378547, A378547.P2663532345835006432.a, A369001, A369001.P2904300838152435751.a, A059841, A059841.P7264174615531153985.a, A083345, A083345.P17056663291398447745.a, A342001, A342001.P4805983025243635594.a, A369008, A369008.P206606723966136315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378545

/-!
# A378546: a(n) is the sum of the divisors d of n for which A083345(n/d) is even, where A083345(n) is the numerator of Sum(e/p: n=Product(p^e)).

The programs for A378546, the canonical program `A378546.P16383405044815034035` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378546 has offset 1).

The definition of A378546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378546.P16383405044815034035

`∑{d}[n+1, A369001((n+1)/#)*#]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A378546

/-- `∑{d}[n+1, A369001((n+1)/#)*#]` -/
def P16383405044815034035.Spec : Prop :=
  ∀ n, P16383405044815034035.a n = A378546 (n + 1)

theorem P16383405044815034035.correct : P16383405044815034035.Spec := by
  intro n
  simp only [A378546, Nat.add_sub_cancel]

end A378546

/-! ## A378546.P10443210402375678346

`A000203(n+1)-A378547(n+1)`
-/

namespace A378546.P10443210402375678346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A378547 (n + 1)

end

end A378546.P10443210402375678346

namespace A378546

/-- `A000203(n+1)-A378547(n+1)` -/
def P10443210402375678346.Spec : Prop :=
  ∀ n, P10443210402375678346.a n = A378546 (n + 1)

theorem P10443210402375678346.correct : P10443210402375678346.Spec := by
  intro n
  simp only [A378546, Nat.add_sub_cancel, A378546.P10443210402375678346.a, A378546.P16383405044815034035.f1, A378546.P16383405044815034035.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A369001, A369001.P2904300838152435751.a, A378547, A378547.P2663532345835006432.a, A059841, A059841.P7264174615531153985.a, A083345, A083345.P17056663291398447745.a, A342001, A342001.P4805983025243635594.a, A369008, A369008.P206606723966136315.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003557, A003557.P6364735403900941810.a, A085731, A085731.P17818604226734037125.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378546

/-! ## A378546.P3904033650248369307

`∑{d}[n+1, A000010((n+1)/#)*A378444(#)]`
-/

namespace A378546.P3904033650248369307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A378444 d

end

end A378546.P3904033650248369307

namespace A378546

/-- `∑{d}[n+1, A000010((n+1)/#)*A378444(#)]` -/
def P3904033650248369307.Spec : Prop :=
  ∀ n, P3904033650248369307.a n = A378546 (n + 1)

end A378546

/-! ## A378546.P11010861227518524882

`Δ[A160664(n)]-∑{d}[n+1, A377874((n+1)/#)*#]`
-/

namespace A378546.P11010861227518524882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ d ∈ Nat.divisors (f2 n), A377874 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d : ℤ)

end

end A378546.P11010861227518524882

namespace A378546

/-- `Δ[A160664(n)]-∑{d}[n+1, A377874((n+1)/#)*#]` -/
def P11010861227518524882.Spec : Prop :=
  ∀ n, P11010861227518524882.a n = A378546 (n + 1)

end A378546

/-! ## A378546.P1827817243500035153

`A000203(n+1)-∑{d}[n+1, A377874((n+1)/#)*#]`
-/

namespace A378546.P1827817243500035153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - ∑ d ∈ Nat.divisors (f1 n), A377874 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d : ℤ)

end

end A378546.P1827817243500035153

namespace A378546

/-- `A000203(n+1)-∑{d}[n+1, A377874((n+1)/#)*#]` -/
def P1827817243500035153.Spec : Prop :=
  ∀ n, P1827817243500035153.a n = A378546 (n + 1)

end A378546

/-! ## A378546.P10835939410884190816

`A245092(Δ[n²])-∑{d}[n+1, A377874((n+1)/#)*#]`
-/

namespace A378546.P10835939410884190816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - ∑ d ∈ Nat.divisors (f2 n), A377874 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d : ℤ)

end

end A378546.P10835939410884190816

namespace A378546

/-- `A245092(Δ[n²])-∑{d}[n+1, A377874((n+1)/#)*#]` -/
def P10835939410884190816.Spec : Prop :=
  ∀ n, P10835939410884190816.a n = A378546 (n + 1)

end A378546

/-! ## A378546.P13293030570563094033

`A378542(n+1)+A378543(n+1)-A378547(n+1)`
-/

namespace A378546.P13293030570563094033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378542 (n + 1) + (A378543 (n + 1) - A378547 (n + 1))

end

end A378546.P13293030570563094033

namespace A378546

/-- `A378542(n+1)+A378543(n+1)-A378547(n+1)` -/
def P13293030570563094033.Spec : Prop :=
  ∀ n, P13293030570563094033.a n = A378546 (n + 1)

theorem P13293030570563094033.correct : P13293030570563094033.Spec := by
  intro n
  simp only [A378546, Nat.add_sub_cancel, A378546.P13293030570563094033.a, A378546.P16383405044815034035.f1, A378546.P16383405044815034035.a, A369001, A369001.P2904300838152435751.a, A378542, A378542.P16518719972786175247.a, A378543, A378543.P8833094378512870217.f1, A378543.P8833094378512870217.a, A378547, A378547.P2663532345835006432.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A059841, A059841.P7264174615531153985.a, A066829, A066829.P3721516859256189271.a, A083345, A083345.P17056663291398447745.a, A065043, A065043.P15027714353296076488.a, A342001, A342001.P4805983025243635594.a, A369008, A369008.P206606723966136315.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003557, A003557.P6364735403900941810.a, A007421, A007421.P6096517627125049268.a, A085731, A085731.P17818604226734037125.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378546

/-! ## A378546.P6407266260575238640

`A378544(n+1)+A378545(n+1)-A378547(n+1)`
-/

namespace A378546.P6407266260575238640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378544 (n + 1) + (A378545 (n + 1) - A378547 (n + 1))

end

end A378546.P6407266260575238640

namespace A378546

/-- `A378544(n+1)+A378545(n+1)-A378547(n+1)` -/
def P6407266260575238640.Spec : Prop :=
  ∀ n, P6407266260575238640.a n = A378546 (n + 1)

theorem P6407266260575238640.correct : P6407266260575238640.Spec := by
  intro n
  simp only [A378546, Nat.add_sub_cancel, A378546.P6407266260575238640.a, A378546.P16383405044815034035.f1, A378546.P16383405044815034035.a, A369001, A369001.P2904300838152435751.a, A378544, A378544.P9360697851165105411.f1, A378544.P9360697851165105411.a, A378545, A378545.P5757208280459240376.a, A378547, A378547.P2663532345835006432.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A059841, A059841.P7264174615531153985.a, A083345, A083345.P17056663291398447745.a, A342001, A342001.P4805983025243635594.a, A369008, A369008.P206606723966136315.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003557, A003557.P6364735403900941810.a, A085731, A085731.P17818604226734037125.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378546

/-! ## A378546.P1148421760317211792

`A378548(n+1)+A378549(n+1)-A378547(n+1)`
-/

namespace A378546.P1148421760317211792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378548 (n + 1) + (A378549 (n + 1) - A378547 (n + 1))

end

end A378546.P1148421760317211792

namespace A378546

/-- `A378548(n+1)+A378549(n+1)-A378547(n+1)` -/
def P1148421760317211792.Spec : Prop :=
  ∀ n, P1148421760317211792.a n = A378546 (n + 1)

theorem P1148421760317211792.correct : P1148421760317211792.Spec := by
  intro n
  simp only [A378546, Nat.add_sub_cancel, A378546.P1148421760317211792.a, A378546.P16383405044815034035.f1, A378546.P16383405044815034035.a, A369001, A369001.P2904300838152435751.a, A378547, A378547.P2663532345835006432.a, A378548, A378548.P2736405864805168493.f1, A378548.P2736405864805168493.a, A378549, A378549.P13326407963315648607.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A059841, A059841.P7264174615531153985.a, A083345, A083345.P17056663291398447745.a, A353557, A353557.P3482545693705023104.a, A095112, A095112.P8729457893508808626.f1, A095112.P8729457893508808626.a, A342001, A342001.P4805983025243635594.a, A369008, A369008.P206606723966136315.a, A000010, A000010.P4673923239450215316.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A003415, A003415.P13310047267010681054.f1, A003415.P13310047267010681054.a, A003557, A003557.P6364735403900941810.a, A085731, A085731.P17818604226734037125.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378546

/-!
# A378547: a(n) is the sum of the divisors d of n for which A083345(n/d) is odd, where A083345(n) is the numerator of Sum(e/p: n=Product(p^e)).

The programs for A378547, the canonical program `A378547.P2663532345835006432` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378547 has offset 1).

The definition of A378547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378547.P10444127370313336433

`∑{d}[n+1, A377874((n+1)/#)*#]`
-/

namespace A378547.P10444127370313336433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A377874 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * (d : ℤ)

end

end A378547.P10444127370313336433

namespace A378547

/-- `∑{d}[n+1, A377874((n+1)/#)*#]` -/
def P10444127370313336433.Spec : Prop :=
  ∀ n, P10444127370313336433.a n = A378547 (n + 1)

end A378547

/-! ## A378547.P2663532345835006432

`A000203(n+1)-A378546(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A378547

/-- `A000203(n+1)-A378546(n+1)` -/
def P2663532345835006432.Spec : Prop :=
  ∀ n, P2663532345835006432.a n = A378547 (n + 1)

theorem P2663532345835006432.correct : P2663532345835006432.Spec := by
  intro n
  simp only [A378547, Nat.add_sub_cancel]

end A378547

/-! ## A378547.P11741494395372798944

`∑{d}[n+1, A000010((n+1)/#)*A378445(#)]`
-/

namespace A378547.P11741494395372798944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A378445 d

end

end A378547.P11741494395372798944

namespace A378547

/-- `∑{d}[n+1, A000010((n+1)/#)*A378445(#)]` -/
def P11741494395372798944.Spec : Prop :=
  ∀ n, P11741494395372798944.a n = A378547 (n + 1)

end A378547

/-! ## A378547.P6141022976007563659

`Δ[A160664(n)]-A378546(n+1)`
-/

namespace A378547.P6141022976007563659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A378546 (n + 1)

end

end A378547.P6141022976007563659

namespace A378547

/-- `Δ[A160664(n)]-A378546(n+1)` -/
def P6141022976007563659.Spec : Prop :=
  ∀ n, P6141022976007563659.a n = A378547 (n + 1)

end A378547

/-! ## A378547.P776618530216471152

`abs(Δ[A330725(n)])-A378546(n+1)`
-/

namespace A378547.P776618530216471152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A378546 (n + 1)

end

end A378547.P776618530216471152

namespace A378547

/-- `abs(Δ[A330725(n)])-A378546(n+1)` -/
def P776618530216471152.Spec : Prop :=
  ∀ n, P776618530216471152.a n = A378547 (n + 1)

end A378547

/-! ## A378547.P5836616247125196170

`A245092(Δ[n²])-A378546(n+1)`
-/

namespace A378547.P5836616247125196170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A378546 (n + 1)

end

end A378547.P5836616247125196170

namespace A378547

/-- `A245092(Δ[n²])-A378546(n+1)` -/
def P5836616247125196170.Spec : Prop :=
  ∀ n, P5836616247125196170.a n = A378547 (n + 1)

end A378547

/-! ## A378547.P8439419080133043354

`sqrt(A072861(n+1))-A378546(n+1)`
-/

namespace A378547.P8439419080133043354
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) - (A378546 (n + 1) : ℝ)

end

end A378547.P8439419080133043354

namespace A378547

/-- `sqrt(A072861(n+1))-A378546(n+1)` -/
def P8439419080133043354.Spec : Prop :=
  ∀ n, P8439419080133043354.a n = (A378547 (n + 1) : ℝ)

end A378547

/-! ## A378547.P12772226385639190741

`A000593(n+1)+A146076(n+1)-A378546(n+1)`
-/

namespace A378547.P12772226385639190741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + A146076 (n + 1) - A378546 (n + 1)

end

end A378547.P12772226385639190741

namespace A378547

/-- `A000593(n+1)+A146076(n+1)-A378546(n+1)` -/
def P12772226385639190741.Spec : Prop :=
  ∀ n, P12772226385639190741.a n = A378547 (n + 1)

theorem P12772226385639190741.correct : P12772226385639190741.Spec := by
  intro n
  simp only [A378547, Nat.add_sub_cancel, A378547.P12772226385639190741.a, A378547.P2663532345835006432.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000593, A000593.P10331878810394225172.f1, A000593.P10331878810394225172.a, A146076, A146076.P5513778411624192836.a, A378546, A378546.P16383405044815034035.f1, A378546.P16383405044815034035.a, A369001, A369001.P2904300838152435751.a, A059841, A059841.P7264174615531153985.a, A083345, A083345.P17056663291398447745.a, A342001, A342001.P4805983025243635594.a, A369008, A369008.P206606723966136315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378547

/-! ## A378547.P2657246645250551093

`A378544(n+1)+A378545(n+1)-A378546(n+1)`
-/

namespace A378547.P2657246645250551093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378544 (n + 1) + (A378545 (n + 1) - A378546 (n + 1))

end

end A378547.P2657246645250551093

namespace A378547

/-- `A378544(n+1)+A378545(n+1)-A378546(n+1)` -/
def P2657246645250551093.Spec : Prop :=
  ∀ n, P2657246645250551093.a n = A378547 (n + 1)

theorem P2657246645250551093.correct : P2657246645250551093.Spec := by
  intro n
  simp only [A378547, Nat.add_sub_cancel, A378547.P2657246645250551093.a, A378547.P2663532345835006432.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A378544, A378544.P9360697851165105411.f1, A378544.P9360697851165105411.a, A378545, A378545.P5757208280459240376.a, A378546, A378546.P16383405044815034035.f1, A378546.P16383405044815034035.a, A369001, A369001.P2904300838152435751.a, A059841, A059841.P7264174615531153985.a, A083345, A083345.P17056663291398447745.a, A342001, A342001.P4805983025243635594.a, A369008, A369008.P206606723966136315.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378547

/-! ## A378547.P2195175313253053018

`A092261(n+1)*A295294(n+1)-A378546(n+1)`
-/

namespace A378547.P2195175313253053018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (n + 1) * A295294 (n + 1) - A378546 (n + 1)

end

end A378547.P2195175313253053018

namespace A378547

/-- `A092261(n+1)*A295294(n+1)-A378546(n+1)` -/
def P2195175313253053018.Spec : Prop :=
  ∀ n, P2195175313253053018.a n = A378547 (n + 1)

end A378547

/-!
# A378548: Sum of divisors d of n such that n/d is odd with an even number of prime factors (counted with multiplicity).

The programs for A378548, the canonical program `A378548.P2736405864805168493` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378548 has offset 1).

The definition of A378548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378548.P2736405864805168493

`∑{d}[n+1, A353557((n+1)/#)*#]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A378548

/-- `∑{d}[n+1, A353557((n+1)/#)*#]` -/
def P2736405864805168493.Spec : Prop :=
  ∀ n, P2736405864805168493.a n = A378548 (n + 1)

theorem P2736405864805168493.correct : P2736405864805168493.Spec := by
  intro n
  simp only [A378548, Nat.add_sub_cancel]

end A378548

/-! ## A378548.P12039494107860812583

`A000203(n+1)-A378549(n+1)`
-/

namespace A378548.P12039494107860812583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A378549 (n + 1)

end

end A378548.P12039494107860812583

namespace A378548

/-- `A000203(n+1)-A378549(n+1)` -/
def P12039494107860812583.Spec : Prop :=
  ∀ n, P12039494107860812583.a n = A378548 (n + 1)

theorem P12039494107860812583.correct : P12039494107860812583.Spec := by
  intro n
  simp only [A378548, Nat.add_sub_cancel, A378548.P12039494107860812583.a, A378548.P2736405864805168493.f1, A378548.P2736405864805168493.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A353557, A353557.P3482545693705023104.a, A378549, A378549.P13326407963315648607.a, A059841, A059841.P7264174615531153985.a, A095112, A095112.P8729457893508808626.f1, A095112.P8729457893508808626.a, A000010, A000010.P4673923239450215316.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378548

/-! ## A378548.P3750459133251536064

`∑{d}[n+1, A000010((n+1)/#)*A369257(#)]`
-/

namespace A378548.P3750459133251536064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A369257 d

end

end A378548.P3750459133251536064

namespace A378548

/-- `∑{d}[n+1, A000010((n+1)/#)*A369257(#)]` -/
def P3750459133251536064.Spec : Prop :=
  ∀ n, P3750459133251536064.a n = A378548 (n + 1)

end A378548

/-! ## A378548.P2653327941927035455

`Δ[A160664(n)]-A378549(n+1)`
-/

namespace A378548.P2653327941927035455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A378549 (n + 1)

end

end A378548.P2653327941927035455

namespace A378548

/-- `Δ[A160664(n)]-A378549(n+1)` -/
def P2653327941927035455.Spec : Prop :=
  ∀ n, P2653327941927035455.a n = A378548 (n + 1)

end A378548

/-! ## A378548.P3233457151774886965

`abs(Δ[A330725(n)])-A378549(n+1)`
-/

namespace A378548.P3233457151774886965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| - A378549 (n + 1)

end

end A378548.P3233457151774886965

namespace A378548

/-- `abs(Δ[A330725(n)])-A378549(n+1)` -/
def P3233457151774886965.Spec : Prop :=
  ∀ n, P3233457151774886965.a n = A378548 (n + 1)

end A378548

/-! ## A378548.P2805834739718880441

`A245092(Δ[n²])-A378549(n+1)`
-/

namespace A378548.P2805834739718880441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A378549 (n + 1)

end

end A378548.P2805834739718880441

namespace A378548

/-- `A245092(Δ[n²])-A378549(n+1)` -/
def P2805834739718880441.Spec : Prop :=
  ∀ n, P2805834739718880441.a n = A378548 (n + 1)

end A378548

/-! ## A378548.P11417826889474475062

`∑[A340793(n+1)]-A378549(n+1)`
-/

namespace A378548.P11417826889474475062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A378549 (n + 1)

end

end A378548.P11417826889474475062

namespace A378548

/-- `∑[A340793(n+1)]-A378549(n+1)` -/
def P11417826889474475062.Spec : Prop :=
  ∀ n, P11417826889474475062.a n = A378548 (n + 1)

end A378548

/-! ## A378548.P4263073375475994146

`A039653(n+1)+1-A378549(n+1)`
-/

namespace A378548.P4263073375475994146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) + 1 - A378549 (n + 1)

end

end A378548.P4263073375475994146

namespace A378548

/-- `A039653(n+1)+1-A378549(n+1)` -/
def P4263073375475994146.Spec : Prop :=
  ∀ n, P4263073375475994146.a n = A378548 (n + 1)

end A378548

/-! ## A378548.P14600601251754350818

`A378542(n+1)+A378543(n+1)-A378549(n+1)`
-/

namespace A378548.P14600601251754350818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378542 (n + 1) + (A378543 (n + 1) - A378549 (n + 1))

end

end A378548.P14600601251754350818

namespace A378548

/-- `A378542(n+1)+A378543(n+1)-A378549(n+1)` -/
def P14600601251754350818.Spec : Prop :=
  ∀ n, P14600601251754350818.a n = A378548 (n + 1)

theorem P14600601251754350818.correct : P14600601251754350818.Spec := by
  intro n
  simp only [A378548, Nat.add_sub_cancel, A378548.P14600601251754350818.a, A378548.P2736405864805168493.f1, A378548.P2736405864805168493.a, A353557, A353557.P3482545693705023104.a, A378542, A378542.P16518719972786175247.a, A378543, A378543.P8833094378512870217.f1, A378543.P8833094378512870217.a, A378549, A378549.P13326407963315648607.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A059841, A059841.P7264174615531153985.a, A066829, A066829.P3721516859256189271.a, A095112, A095112.P8729457893508808626.f1, A095112.P8729457893508808626.a, A000010, A000010.P4673923239450215316.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A065043, A065043.P15027714353296076488.a, A003557, A003557.P6364735403900941810.a, A007421, A007421.P6096517627125049268.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378548

/-!
# A378549: Sum of divisors d of n such that n/d is not an odd number with an even number of prime factors (counted with multiplicity).

The programs for A378549, the canonical program `A378549.P13326407963315648607` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378549 has offset 1).

The definition of A378549 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A378549.P4933589761000508810

`∑{d}[n+1, (1-A353557(#))*(n+1)/#]`
-/

namespace A378549.P4933589761000508810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - A353557 d : ℚ) * ((n + 1 : ℚ) / (d : ℚ))

end

end A378549.P4933589761000508810

namespace A378549

/-- `∑{d}[n+1, (1-A353557(#))*(n+1)/#]` -/
def P4933589761000508810.Spec : Prop :=
  ∀ n, P4933589761000508810.a n = (A378549 (n + 1) : ℚ)

end A378549

/-! ## A378549.P13326407963315648607

`A000203(n+1)-A378548(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A378549

/-- `A000203(n+1)-A378548(n+1)` -/
def P13326407963315648607.Spec : Prop :=
  ∀ n, P13326407963315648607.a n = A378549 (n + 1)

theorem P13326407963315648607.correct : P13326407963315648607.Spec := by
  intro n
  simp only [A378549, Nat.add_sub_cancel]

end A378549

/-! ## A378549.P2091463511618154969

`∑{d}[n+1, A066829(#)*A080512((n+1)/#)]`
-/

namespace A378549.P2091463511618154969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A066829 d * A080512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378549.P2091463511618154969

namespace A378549

/-- `∑{d}[n+1, A066829(#)*A080512((n+1)/#)]` -/
def P2091463511618154969.Spec : Prop :=
  ∀ n, P2091463511618154969.a n = A378549 (n + 1)

end A378549

/-! ## A378549.P2113281772609299123

`∑{d}[n+1, A056924(#)*A126246((n+1)/#)]`
-/

namespace A378549.P2113281772609299123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056924 d * A126246 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378549.P2113281772609299123

namespace A378549

/-- `∑{d}[n+1, A056924(#)*A126246((n+1)/#)]` -/
def P2113281772609299123.Spec : Prop :=
  ∀ n, P2113281772609299123.a n = A378549 (n + 1)

end A378549

/-! ## A378549.P9310990307002873518

`∑{d}[n+1, A053866(#)*A318320((n+1)/#)]`
-/

namespace A378549.P9310990307002873518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053866 d * A318320 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378549.P9310990307002873518

namespace A378549

/-- `∑{d}[n+1, A053866(#)*A318320((n+1)/#)]` -/
def P9310990307002873518.Spec : Prop :=
  ∀ n, P9310990307002873518.a n = A378549 (n + 1)

end A378549

/-! ## A378549.P12971880388750062956

`∑{d}[n+1, A157226(#)*A206369((n+1)/#)]`
-/

namespace A378549.P12971880388750062956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157226 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378549.P12971880388750062956

namespace A378549

/-- `∑{d}[n+1, A157226(#)*A206369((n+1)/#)]` -/
def P12971880388750062956.Spec : Prop :=
  ∀ n, P12971880388750062956.a n = A378549 (n + 1)

end A378549

/-!
# A378550: a(n) = 1 if sigma(n) >= 2*n-1, otherwise 0.

The programs for A378550, the canonical program `A378550.P4167956203035324663` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378550 has offset 1).

The definition of A378550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A378550.P4167956203035324663

`1-round(n/∑{d}[n+1, #])`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A378550

/-- `1-round(n/∑{d}[n+1, #])` -/
def P4167956203035324663.Spec : Prop :=
  ∀ n, P4167956203035324663.a n = A378550 (n + 1)

theorem P4167956203035324663.correct : P4167956203035324663.Spec := by
  intro n
  simp only [A378550, Nat.add_sub_cancel]

end A378550

/-! ## A378550.P15679653982679179047

`char[lt[2*n, ∑{d}[n+1, #]]]`
-/

namespace A378550.P15679653982679179047
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A378550.P15679653982679179047

namespace A378550

/-- `char[lt[2*n, ∑{d}[n+1, #]]]` -/
def P15679653982679179047.Spec : Prop :=
  ∀ n, (P15679653982679179047.a n : ℤ) = A378550 (n + 1)

end A378550

/-! ## A378550.P2937968523234639663

`floor(∑{d}[n+1, #/(2*n+1)])`
-/

namespace A378550.P2937968523234639663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (2 * n + 1 : ℚ)⌋

end

end A378550.P2937968523234639663

namespace A378550

/-- `floor(∑{d}[n+1, #/(2*n+1)])` -/
def P2937968523234639663.Spec : Prop :=
  ∀ n, P2937968523234639663.a n = A378550 (n + 1)

end A378550

/-! ## A378550.P3397900722091503472

`round(∑{d}[n+1, #]/(4*n+1))`
-/

namespace A378550.P3397900722091503472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (4 * n + 1 : ℚ))

end

end A378550.P3397900722091503472

namespace A378550

/-- `round(∑{d}[n+1, #]/(4*n+1))` -/
def P3397900722091503472.Spec : Prop :=
  ∀ n, P3397900722091503472.a n = A378550 (n + 1)

end A378550

/-! ## A378550.P10940082053062571576

`floor(∑{d}[n+1, #]/(n+1+n))`
-/

namespace A378550.P10940082053062571576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 + n : ℚ)⌋

end

end A378550.P10940082053062571576

namespace A378550

/-- `floor(∑{d}[n+1, #]/(n+1+n))` -/
def P10940082053062571576.Spec : Prop :=
  ∀ n, P10940082053062571576.a n = A378550 (n + 1)

end A378550

/-! ## A378550.P9521161057702001908

`C((2*n)%∑{d}[n+1, #], 2*n)`
-/

namespace A378550.P9521161057702001908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n % (∑ d ∈ Nat.divisors (f1 n), d)) (2 * n)

end

end A378550.P9521161057702001908

namespace A378550

/-- `C((2*n)%∑{d}[n+1, #], 2*n)` -/
def P9521161057702001908.Spec : Prop :=
  ∀ n, (P9521161057702001908.a n : ℤ) = A378550 (n + 1)

end A378550

/-! ## A378550.P15182435292337735710

`2-ceil((2*n+1)/∑{d}[n+1, #])`
-/

namespace A378550.P15182435292337735710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌈(2 * n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)⌉

end

end A378550.P15182435292337735710

namespace A378550

/-- `2-ceil((2*n+1)/∑{d}[n+1, #])` -/
def P15182435292337735710.Spec : Prop :=
  ∀ n, P15182435292337735710.a n = A378550 (n + 1)

end A378550

/-! ## A378550.P4762421641855206909

`ceil(∑{d}[n+1, -(#/(2*n+1))])²`
-/

namespace A378550.P4762421641855206909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), (-((d : ℚ) / (2 * n + 1 : ℚ)))⌉ ^ 2

end

end A378550.P4762421641855206909

namespace A378550

/-- `ceil(∑{d}[n+1, -(#/(2*n+1))])²` -/
def P4762421641855206909.Spec : Prop :=
  ∀ n, P4762421641855206909.a n = A378550 (n + 1)

end A378550

/-! ## A378550.P10058551093400851425

`A294936(n+1)+A036987(n)`
-/

namespace A378550.P10058551093400851425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (n + 1) + A036987 n

end

end A378550.P10058551093400851425

namespace A378550

/-- `A294936(n+1)+A036987(n)` -/
def P10058551093400851425.Spec : Prop :=
  ∀ n, P10058551093400851425.a n = A378550 (n + 1)

end A378550

/-! ## A378550.P12133565409440697792

`gcd(A060862(n+1), A085491(n))`
-/

namespace A378550.P12133565409440697792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A060862 (n + 1)) (A085491 n)

end

end A378550.P12133565409440697792

namespace A378550

/-- `gcd(A060862(n+1), A085491(n))` -/
def P12133565409440697792.Spec : Prop :=
  ∀ n, (P12133565409440697792.a n : ℤ) = A378550 (n + 1)

end A378550

/-! ## A378550.P5066767267680968242

`A209229(n+1)+A294936(n+1)`
-/

namespace A378550.P5066767267680968242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n + 1) + A294936 (n + 1)

end

end A378550.P5066767267680968242

namespace A378550

/-- `A209229(n+1)+A294936(n+1)` -/
def P5066767267680968242.Spec : Prop :=
  ∀ n, P5066767267680968242.a n = A378550 (n + 1)

end A378550

/-! ## A378550.P8504585499625460155

`A297382(n+1)-A294934(n+1)`
-/

namespace A378550.P8504585499625460155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297382 (n + 1) - A294934 (n + 1)

end

end A378550.P8504585499625460155

namespace A378550

/-- `A297382(n+1)-A294934(n+1)` -/
def P8504585499625460155.Spec : Prop :=
  ∀ n, P8504585499625460155.a n = A378550 (n + 1)

end A378550

/-! ## A378550.P16268969447321912595

`A336916(2*(n+1))-A336915(n+1)`
-/

namespace A378550.P16268969447321912595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336916 (2 * (n + 1)) - A336915 (n + 1)

end

end A378550.P16268969447321912595

namespace A378550

/-- `A336916(2*(n+1))-A336915(n+1)` -/
def P16268969447321912595.Spec : Prop :=
  ∀ n, P16268969447321912595.a n = A378550 (n + 1)

end A378550

/-!
# A378551: a(n) = Sum_{k=0..n} 4^k * binomial(n/2+k-1,k) * binomial(n-1,n-k).

The programs for A378551, there is no canonical definition to state claims against.
-/

/-! ## A378551.P863767883496911005

`A400348(∑[n+1]+1)`
-/

namespace A378551.P863767883496911005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400348 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A378551.P863767883496911005

/-!
# A378554: a(n) = Sum_{k=0..n} 4^(n-k) * binomial(n+k-1,k) * binomial(k/2,n-k).

The programs for A378554, there is no canonical definition to state claims against.
-/

/-! ## A378554.P9006340744592967986

`∑[xor(n, A324748(∑[5*n]))]`
-/

namespace A378554.P9006340744592967986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A324748 (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378554.P9006340744592967986

/-!
# A378555: a(n) = Sum_{k=0..n} 9^(n-k) * binomial(n+k-1,k) * binomial(k/3,n-k).

The programs for A378555, there is no canonical definition to state claims against.
-/

/-! ## A378555.P5843558175866144832

`A242273(2*a(n-1)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=9, a(3)=19`
-/

namespace A378555.P5843558175866144832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 9, 19] fun n a =>
  A242273 (2 * a (n - 1) - a (n - 2)).toNat

end

end A378555.P5843558175866144832

/-!
# A378556: Powers of 2 that do not include the digit 2.

The programs for A378556, there is no canonical definition to state claims against.
-/

/-! ## A378556.P1008944854833057481

`2^A034293(n+1)`
-/

namespace A378556.P1008944854833057481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A034293 (n + 1) : ℤ)

end

end A378556.P1008944854833057481

/-! ## A378556.P12015857430877785602

`2^A136291(n+2)`
-/

namespace A378556.P12015857430877785602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A136291 (n + 2) : ℤ)

end

end A378556.P12015857430877785602

/-! ## A378556.P12239974584712044051

`A000079(A136291(n+2))`
-/

namespace A378556.P12239974584712044051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A136291 (n + 2)).toNat

end

end A378556.P12239974584712044051

/-! ## A378556.P5243640957909030181

`A000079(eq[0, A065710(n)])`
-/

namespace A378556.P5243640957909030181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A378556.P5243640957909030181

/-! ## A378556.P17391270969416853828

`A000079(lt[A065710(n), 1])`
-/

namespace A378556.P17391270969416853828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065710 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A378556.P17391270969416853828

/-!
# A378557: Powers of 3 that do not contain the digit 3.

The programs for A378557, there is no canonical definition to state claims against.
-/

/-! ## A378557.P17610482007362513782

`3^A131629(n+1)`
-/

namespace A378557.P17610482007362513782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A131629 (n + 1) : ℤ)

end

end A378557.P17610482007362513782

/-! ## A378557.P16492422210515298205

`A000244(A131629(n+1))`
-/

namespace A378557.P16492422210515298205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A131629 (n + 1)).toNat

end

end A378557.P16492422210515298205

/-! ## A378557.P11546179832940669513

`A000244(eq[0, A126205(n)])`
-/

namespace A378557.P11546179832940669513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A378557.P11546179832940669513

/-! ## A378557.P16077312877649315004

`A000244(lt[A126205(n), 1])`
-/

namespace A378557.P16077312877649315004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126205 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A378557.P16077312877649315004

/-! ## A378557.P16275441669700489741

`A133494(A131629(n+1)+1)`
-/

namespace A378557.P16275441669700489741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 (A131629 (n + 1) + 1).toNat

end

end A378557.P16275441669700489741

/-!
# A378558: Powers of 4 that do not include the digit 4.

The programs for A378558, there is no canonical definition to state claims against.
-/

/-! ## A378558.P3672886071973449797

`record[16^∑{p}[n, #-1]]`
-/

namespace A378558.P3672886071973449797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378558.P3672886071973449797

/-!
# A378559: a(n) = t is the smallest prime t > p = prime(n) for which t == p (mod k) for all k = 2,...,p-1.

The programs for A378559, there is no canonical definition to state claims against.
-/

/-! ## A378559.P9793457678883388540

`p?[A195507(n+2)]`
-/

namespace A378559.P9793457678883388540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195507 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A378559.P9793457678883388540

/-! ## A378559.P14508891336688328361

`p?[A060401(n+1)+1]`
-/

namespace A378559.P14508891336688328361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060401 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A378559.P14508891336688328361

/-!
# A378560: Numbers with the median of the digits equal to one of the digits.

The programs for A378560, there is no canonical definition to state claims against.
-/

/-! ## A378560.P5718600515782988076

`eq[A007953(n), A177895(n)]`
-/

namespace A378560.P5718600515782988076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A378560.P5718600515782988076

/-! ## A378560.P17465355703561135456

`lt[C(10, A347689(n)), 5]`
-/

namespace A378560.P17465355703561135456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 10 (A347689 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378560.P17465355703561135456

/-! ## A378560.P496923377238329927

`lt[0, A017887(A347689(n))]`
-/

namespace A378560.P496923377238329927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017887 (A347689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A378560.P496923377238329927

/-! ## A378560.P9546516544790999859

`lt[A001221(A213217(n)), A055642(n)]`
-/

namespace A378560.P9546516544790999859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378560.P9546516544790999859

/-! ## A378560.P4260280765660814380

`lt[A001221(A213217(n)), A073053(n)%5]`
-/

namespace A378560.P4260280765660814380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A213217 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073053 n) 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378560.P4260280765660814380

/-!
# A378562: a(n) is the number of steps to reach 1 by reversing digits of n in the lowest base where reversal reduces the number.

The programs for A378562, there is no canonical definition to state claims against.
-/

/-! ## A378562.P3466038398766196102

`A353835(A029879(n)+n)`
-/

namespace A378562.P3466038398766196102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353835 (A029879 n + (n : ℤ)).toNat

end

end A378562.P3466038398766196102

/-!
# A378563: Primes that remain prime if any three of their digits are deleted.

The programs for A378563, there is no canonical definition to state claims against.
-/

/-! ## A378563.P16953273317306778487

`∩[A019546(n+1), A092625(n+1)-1]`
-/

namespace A378563.P16953273317306778487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092625 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378563.P16953273317306778487

/-! ## A378563.P15414582179959402556

`∩[A019546(n+1), A037344(A004767(n))]`
-/

namespace A378563.P15414582179959402556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (A004767 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A378563.P15414582179959402556

/-!
# A378565: a(n) = Sum_{k=0..n} binomial(n+k-1,k) * binomial(n+k-1,n-k).

The programs for A378565, there is no canonical definition to state claims against.
-/

/-! ## A378565.P2567455829594603902

`A204533(∑[4*n])`
-/

namespace A378565.P2567455829594603902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204533 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378565.P2567455829594603902

/-! ## A378565.P15177893926858209876

`A063967(A004273(n²))`
-/

namespace A378565.P15177893926858209876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063967 (A004273 (n ^ 2)).toNat

end

end A378565.P15177893926858209876

/-! ## A378565.P4351139779040807652

`A063967(A056220(n)+A000007(n))`
-/

namespace A378565.P4351139779040807652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063967 (A056220 n + A000007 n).toNat

end

end A378565.P4351139779040807652

/-! ## A378565.P7135757215782683643

`A063967(A151909(n)+A056220(n))`
-/

namespace A378565.P7135757215782683643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063967 (A151909 n + A056220 n).toNat

end

end A378565.P7135757215782683643

/-! ## A378565.P16362020319038553024

`A063967(A056220(n)%A001671(n))`
-/

namespace A378565.P16362020319038553024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063967 (Int.tmod (A056220 n) (A001671 n)).toNat

end

end A378565.P16362020319038553024

/-!
# A378566: a(n) = Sum_{k=0..n} binomial(n+k-1,k) * binomial(n+2*k-1,n-k).

The programs for A378566, there is no canonical definition to state claims against.
-/

/-! ## A378566.P16456606008093207071

`A226908(A329887(n))`
-/

namespace A378566.P16456606008093207071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226908 (A329887 n).toNat

end

end A378566.P16456606008093207071

/-!
# A378567: a(n) = Sum_{k=0..n} binomial(n+k-1,k) * binomial(n+3*k-1,n-k).

The programs for A378567, there is no canonical definition to state claims against.
-/

/-! ## A378567.P14704269653367243418

`A008615(A041025(n)+1)`
-/

namespace A378567.P14704269653367243418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A041025 n + 1).toNat

end

end A378567.P14704269653367243418

/-!
# A378568: Lowest weight of rational fraction with denominator n.

The programs for A378568, there is no canonical definition to state claims against.
-/

/-! ## A378568.P3124864914191675939

`A178031(A020639(1+n))`
-/

namespace A378568.P3124864914191675939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178031 (A020639 (1 + n)).toNat

end

end A378568.P3124864914191675939

/-! ## A378568.P4655901193512410553

`A171626(A088377(n+1))`
-/

namespace A378568.P4655901193512410553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171626 (A088377 (n + 1)).toNat

end

end A378568.P4655901193512410553

/-! ## A378568.P15609538040895014555

`A178047(A020639(n+1))+1`
-/

namespace A378568.P15609538040895014555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178047 (A020639 (n + 1)).toNat + 1

end

end A378568.P15609538040895014555

/-! ## A378568.P1678104079221914476

`A131234(A020639(n+1)%A080892(n+1))`
-/

namespace A378568.P1678104079221914476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131234 (Int.tmod (A020639 (n + 1)) (A080892 (n + 1))).toNat

end

end A378568.P1678104079221914476

/-! ## A378568.P15371418637562560179

`A131234(A020639(n+1))%A095101(n+1)`
-/

namespace A378568.P15371418637562560179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131234 (A020639 (n + 1)).toNat) (A095101 (n + 1))

end

end A378568.P15371418637562560179

/-!
# A378569: a(n) = 3*n*(n+1) + 7.

The programs for A378569, the canonical program `A378569.P3280406852489029443` is in `Seq.B000.C048`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A378569 has offset 0).

The definition of A378569 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(n+1)+7` (program `A378569.P3280406852489029443`, by `A378569.P3280406852489029443.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A378569.P3280406852489029443

`3*n*(n+1)+7`

The canonical program, it is in `Seq.B000.C048`.
-/

namespace A378569

/-- `3*n*(n+1)+7` -/
def P3280406852489029443.Spec : Prop :=
  ∀ n, (P3280406852489029443.a n : ℤ) = A378569 n

theorem P3280406852489029443.correct : P3280406852489029443.Spec := by
  intro n
  simp only [A378569]

end A378569

/-! ## A378569.P3723236089294811674

`ogf((7-8x+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A378569.P3723236089294811674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -8, 7] [1, -3, 3, -1] n

end

end A378569.P3723236089294811674

namespace A378569

/-- `ogf((7-8x+7x^2)/(1-3x+3x^2-x^3))` -/
def P3723236089294811674.Spec : Prop :=
  ∀ n, P3723236089294811674.a n = A378569 n

end A378569

/-! ## A378569.P9664160919267928658

`or(1, ∑[6*n])+6`
-/

namespace A378569.P9664160919267928658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 6

end

end A378569.P9664160919267928658

namespace A378569

/-- `or(1, ∑[6*n])+6` -/
def P9664160919267928658.Spec : Prop :=
  ∀ n, (P9664160919267928658.a n : ℤ) = A378569 n

end A378569

/-! ## A378569.P4107945875625578244

`xor(1, ∑[6*n])+6`
-/

namespace A378569.P4107945875625578244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) + 6

end

end A378569.P4107945875625578244

namespace A378569

/-- `xor(1, ∑[6*n])+6` -/
def P4107945875625578244.Spec : Prop :=
  ∀ n, (P4107945875625578244.a n : ℤ) = A378569 n

end A378569

/-! ## A378569.P17210969638211819527

`or(1, Δ[n^3]+5)`
-/

namespace A378569.P17210969638211819527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 5)

end

end A378569.P17210969638211819527

namespace A378569

/-- `or(1, Δ[n^3]+5)` -/
def P17210969638211819527.Spec : Prop :=
  ∀ n, P17210969638211819527.a n = A378569 n

end A378569

/-! ## A378569.P3907987257147797731

`xor(1, Δ[n^3]+5)`
-/

namespace A378569.P3907987257147797731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 5)

end

end A378569.P3907987257147797731

namespace A378569

/-- `xor(1, Δ[n^3]+5)` -/
def P3907987257147797731.Spec : Prop :=
  ∀ n, P3907987257147797731.a n = A378569 n

end A378569

/-! ## A378569.P17599943152585793082

`Δ[Δ[(C(n, 2)+3)²]]`
-/

namespace A378569.P17599943152585793082
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 3) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378569.P17599943152585793082

namespace A378569

/-- `Δ[Δ[(C(n, 2)+3)²]]` -/
def P17599943152585793082.Spec : Prop :=
  ∀ n, P17599943152585793082.a n = A378569 n

theorem P17599943152585793082.correct : P17599943152585793082.Spec := by
  intro n
  simp only [A378569, Nat.add_sub_cancel, A378569.P17599943152585793082.f2, A378569.P17599943152585793082.f1, A378569.P17599943152585793082.a, A378569.P3280406852489029443.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A378569

/-! ## A378569.P9773466015202892216

`∑[a(n-1)+6]` with `a(0)=7, a(1)=6`
-/

namespace A378569.P9773466015202892216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 6] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378569.P9773466015202892216

namespace A378569

/-- `∑[a(n-1)+6]` -/
def P9773466015202892216.Spec : Prop :=
  ∀ n, (P9773466015202892216.a n : ℤ) = A378569 n

end A378569

/-! ## A378569.P12136172517732933567

`∑[ogf((7-8x+7x^2)/(1-2x+x^2))]`
-/

namespace A378569.P12136172517732933567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, -8, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378569.P12136172517732933567

namespace A378569

/-- `∑[ogf((7-8x+7x^2)/(1-2x+x^2))]` -/
def P12136172517732933567.Spec : Prop :=
  ∀ n, P12136172517732933567.a n = A378569 n

end A378569

/-! ## A378569.P17446253825097043022

`∑[6*n%a(n-1)]` with `a(0)=7`
-/

namespace A378569.P17446253825097043022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  6 * (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378569.P17446253825097043022

namespace A378569

/-- `∑[6*n%a(n-1)]` -/
def P17446253825097043022.Spec : Prop :=
  ∀ n, (P17446253825097043022.a n : ℤ) = A378569 n

end A378569

/-! ## A378569.P9071002555516308800

`floor(7*n-(n-a(n-1)))` with `a(0)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A378569.P9071002555516308800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  (7 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A378569.P9071002555516308800

namespace A378569

/-- `floor(7*n-(n-a(n-1)))` -/
def P9071002555516308800.Spec : Prop :=
  ∀ n, P9071002555516308800.a n = A378569 n

theorem P9071002555516308800.correct : P9071002555516308800.Spec := by
  intro n
  induction n with
  | zero => simp [A378569, A378569.P9071002555516308800.a, A378569.P3280406852489029443.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A378569, Nat.add_sub_cancel, A378569.P9071002555516308800.a, A378569.P3280406852489029443.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A378569

/-! ## A378569.P14303584606349735962

`Δ[lcm(n-1, n²)+(n+3)²]`
-/

namespace A378569.P14303584606349735962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (n ^ 2 : ℤ) + (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A378569.P14303584606349735962

namespace A378569

/-- `Δ[lcm(n-1, n²)+(n+3)²]` -/
def P14303584606349735962.Spec : Prop :=
  ∀ n, P14303584606349735962.a n = A378569 n

end A378569

/-! ## A378569.P4184626743978285759

`A165806(n+1)%A372025(n+3)`
-/

namespace A378569.P4184626743978285759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165806 (n + 1)) (A372025 (n + 3))

end

end A378569.P4184626743978285759

namespace A378569

/-- `A165806(n+1)%A372025(n+3)` -/
def P4184626743978285759.Spec : Prop :=
  ∀ n, P4184626743978285759.a n = A378569 n

end A378569

/-! ## A378569.P6130541347772132309

`Δ[n*A114949(n)]`
-/

namespace A378569.P6130541347772132309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A114949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378569.P6130541347772132309

namespace A378569

/-- `Δ[n*A114949(n)]` -/
def P6130541347772132309.Spec : Prop :=
  ∀ n, P6130541347772132309.a n = A378569 n

theorem P6130541347772132309.correct : P6130541347772132309.Spec := by
  intro n
  simp only [A378569, Nat.add_sub_cancel, A378569.P6130541347772132309.f1, A378569.P6130541347772132309.a, A378569.P3280406852489029443.a, A114949, A114949.P2861877640951518410.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A378569

/-! ## A378569.P13556819279438649788

`Δ[Δ[A152949(n+1)²]]`
-/

namespace A378569.P13556819279438649788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152949 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378569.P13556819279438649788

namespace A378569

/-- `Δ[Δ[A152949(n+1)²]]` -/
def P13556819279438649788.Spec : Prop :=
  ∀ n, P13556819279438649788.a n = A378569 n

theorem P13556819279438649788.correct : P13556819279438649788.Spec := by
  intro n
  simp only [A378569, Nat.add_sub_cancel, A378569.P13556819279438649788.f2, A378569.P13556819279438649788.f1, A378569.P13556819279438649788.a, A378569.P3280406852489029443.a, A152949, A152949.P6392678402352572629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A378569

/-! ## A378569.P7322710536551470063

`A016921(∑[n]+1)`
-/

namespace A378569.P7322710536551470063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A378569.P7322710536551470063

namespace A378569

/-- `A016921(∑[n]+1)` -/
def P7322710536551470063.Spec : Prop :=
  ∀ n, P7322710536551470063.a n = A378569 n

end A378569

/-! ## A378569.P8908214812470097728

`A271114(∑[n]+1)`
-/

namespace A378569.P8908214812470097728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A378569.P8908214812470097728

namespace A378569

/-- `A271114(∑[n]+1)` -/
def P8908214812470097728.Spec : Prop :=
  ∀ n, P8908214812470097728.a n = A378569 n

end A378569

/-! ## A378569.P7722509178143371783

`A100764(∑[n]+4)`
-/

namespace A378569.P7722509178143371783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100764 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A378569.P7722509178143371783

namespace A378569

/-- `A100764(∑[n]+4)` -/
def P7722509178143371783.Spec : Prop :=
  ∀ n, P7722509178143371783.a n = A378569 n

end A378569

/-! ## A378569.P10831504005842685835

`A019426(n²+n+3)`
-/

namespace A378569.P10831504005842685835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (n ^ 2 + n + 3)

end

end A378569.P10831504005842685835

namespace A378569

/-- `A019426(n²+n+3)` -/
def P10831504005842685835.Spec : Prop :=
  ∀ n, P10831504005842685835.a n = A378569 n

end A378569

/-! ## A378569.P7155697155928331521

`A371094(n²+n+2)`
-/

namespace A378569.P7155697155928331521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371094 (n ^ 2 + n + 2)

end

end A378569.P7155697155928331521

namespace A378569

/-- `A371094(n²+n+2)` -/
def P7155697155928331521.Spec : Prop :=
  ∀ n, P7155697155928331521.a n = A378569 n

end A378569

/-!
# A378570: Smallest integer m for which A378568(m) = n.

The programs for A378570, there is no canonical definition to state claims against.
-/

/-! ## A378570.P5228082645213763376

`A056813(A033304(n))`
-/

namespace A378570.P5228082645213763376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A033304 n).toNat

end

end A378570.P5228082645213763376

/-! ## A378570.P7920831767019547976

`A056813(A047859(n))`
-/

namespace A378570.P7920831767019547976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A047859 n).toNat

end

end A378570.P7920831767019547976

/-! ## A378570.P9763461045134557281

`A056813(Δ[A001792(n)])`
-/

namespace A378570.P9763461045134557281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (f1 (n + 1) - f1 n).toNat

end

end A378570.P9763461045134557281

/-! ## A378570.P15366204352716523678

`A056813(A026668(n+1))`
-/

namespace A378570.P15366204352716523678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A026668 (n + 1)).toNat

end

end A378570.P15366204352716523678

/-! ## A378570.P9108321469962997710

`A056813(A026767(n+1))`
-/

namespace A378570.P9108321469962997710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056813 (A026767 (n + 1)).toNat

end

end A378570.P9108321469962997710

/-!
# A378571: G.f. A(x) satisfies 1/x = Sum_{n=-oo..+oo} A(x)^(2*n) * (A(x)^n + 1)^(2*n+1).

The programs for A378571, there is no canonical definition to state claims against.
-/

/-! ## A378571.P16291636344054039525

`A194640(A121650(n))`
-/

namespace A378571.P16291636344054039525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A121650 n).toNat

end

end A378571.P16291636344054039525

/-! ## A378571.P9219467829516890213

`A194640(A148815(n))`
-/

namespace A378571.P9219467829516890213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194640 (A148815 n).toNat

end

end A378571.P9219467829516890213

/-! ## A378571.P9542392619853293035

`A024417(A362595(n))`
-/

namespace A378571.P9542392619853293035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A362595 n).toNat

end

end A378571.P9542392619853293035

/-!
# A378572: G.f. A(x) satisfies 1/x = Sum_{n=-oo..+oo} A(x)^(2*n) * (A(x)^n + 2)^(2*n+1).

The programs for A378572, there is no canonical definition to state claims against.
-/

/-! ## A378572.P10376308924670172139

`A123399(A174171(n))`
-/

namespace A378572.P10376308924670172139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123399 (A174171 n).toNat

end

end A378572.P10376308924670172139

/-! ## A378572.P11113618367438192679

`A335001(A191827(n)-A000001(n))`
-/

namespace A378572.P11113618367438192679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335001 (A191827 n - A000001 n).toNat

end

end A378572.P11113618367438192679

/-!
# A378573: G.f. A(x) = Sum_{n=-oo..+oo} x^n * (1 + x^(3*n+1))^(2*n).

The programs for A378573, there is no canonical definition to state claims against.
-/

/-! ## A378573.P17040043268328382583

`A025487(runs[runs[A133721(n+1)]])`
-/

namespace A378573.P17040043268328382583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133721 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n)

end

end A378573.P17040043268328382583

/-! ## A378573.P12924079278976208873

`gcd(A326978(3*n)², A350390(n+1))`
-/

namespace A378573.P12924079278976208873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A326978 (3 * n) ^ 2) (A350390 (n + 1))

end

end A378573.P12924079278976208873

/-! ## A378573.P11716157020390771109

`gcd(∑[A157358(2*(n+1))], A375124(n+2))`
-/

namespace A378573.P11716157020390771109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157358 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A375124 (n + 2))

end

end A378573.P11716157020390771109

/-! ## A378573.P11752864054945456092

`gcd((n+1)*∏{p}[n+1, #], A000120(A090597(n+3)))`
-/

namespace A378573.P11752864054945456092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℤ) (A000120 (A090597 (n + 3)).toNat)

end

end A378573.P11752864054945456092

/-! ## A378573.P3301431419707381218

`A375124(A291168(2*n+1)^n+1+n)^(n%2)`
-/

namespace A378573.P3301431419707381218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375124 (A291168 (2 * n + 1) ^ n + 1 + (n : ℤ)).toNat ^ (n % 2)

end

end A378573.P3301431419707381218

/-!
# A378574: G.f. A(x) satisfies 1/x = Sum_{n=-oo..+oo} A(x)^(3*n) * (A(x)^n - 1)^(2*n).

The programs for A378574, there is no canonical definition to state claims against.
-/

/-! ## A378574.P13423338217480146176

`A077773(A228066(n+1)+A194959(n+1))`
-/

namespace A378574.P13423338217480146176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077773 (A228066 (n + 1) + A194959 (n + 1)).toNat

end

end A378574.P13423338217480146176

/-!
# A378575: G.f. A(x) satisfies A(x) = x + x*A(A(A(A(A(x))))), so that this sequence shifts left under the 5th self-COMPOSE.

The programs for A378575, there is no canonical definition to state claims against.
-/

/-! ## A378575.P760217145798511942

`A396994(∑[n+2])`
-/

namespace A378575.P760217145798511942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396994 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378575.P760217145798511942

/-!
# A378576: G.f. A(x) satisfies A(x) = x + x*A(A(A(A(A(A(x)))))), so that this sequence shifts left under the 6th self-COMPOSE.

The programs for A378576, there is no canonical definition to state claims against.
-/

/-! ## A378576.P5768795500430015589

`A396995(∑[n+2])`
-/

namespace A378576.P5768795500430015589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396995 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A378576.P5768795500430015589

/-!
# A378580: G.f. A(x) satisfies: A(x/A(x)) = theta_3(x) = 1 + 2*Sum_{n>=1} x^(n^2).

The programs for A378580, there is no canonical definition to state claims against.
-/

/-! ## A378580.P9887031810565843845

`A212831(A318976(n))`
-/

namespace A378580.P9887031810565843845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (A318976 n).toNat

end

end A378580.P9887031810565843845

/-! ## A378580.P5827226121026330476

`A275328(2*A370638(n))`
-/

namespace A378580.P5827226121026330476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275328 (2 * A370638 n).toNat

end

end A378580.P5827226121026330476

/-!
# A378583: G.f. A(x) satisfies 1 + 3*A(x) = Sum_{n=-oo..+oo} (x + A(x)^n)^n.

The programs for A378583, there is no canonical definition to state claims against.
-/

/-! ## A378583.P8920732345696466132

`A295218(A132390(n+1))`
-/

namespace A378583.P8920732345696466132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295218 (A132390 (n + 1)).toNat

end

end A378583.P8920732345696466132

/-! ## A378583.P1080367783456759720

`A356874(A196711(n+1))`
-/

namespace A378583.P1080367783456759720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356874 (A196711 (n + 1)).toNat

end

end A378583.P1080367783456759720

/-! ## A378583.P1764819515698845623

`∑[A212010(A000219(n))-n]`
-/

namespace A378583.P1764819515698845623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212010 (A000219 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A378583.P1764819515698845623

/-!
# A378584: G.f. A(x) satisfies 1 + 4*A(x) = Sum_{n=-oo..+oo} (2*x + A(x)^n)^n.

The programs for A378584, there is no canonical definition to state claims against.
-/

/-! ## A378584.P7342932902820451857

`A008624(A000930(n+3)*A055086(∏[n+1]))`
-/

namespace A378584.P7342932902820451857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A000930 (n + 3) * A055086 (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A378584.P7342932902820451857

/-! ## A378584.P3500489560017017621

`A008624((A000267((n+1)!)-1)*A000930(n+3))`
-/

namespace A378584.P3500489560017017621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 ((A000267 (Nat.factorial (n + 1)) - 1) * A000930 (n + 3)).toNat

end

end A378584.P3500489560017017621

/-!
# A378586: Number of distinct domination roots among all simple graphs on n vertices.

The programs for A378586, there is no canonical definition to state claims against.
-/

/-! ## A378586.P16982403641805057506

`A398582(A150468(n))`
-/

namespace A378586.P16982403641805057506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398582 (A150468 n).toNat

end

end A378586.P16982403641805057506

/-! ## A378586.P2153566802579691674

`A126207(A297578(n+1))`
-/

namespace A378586.P2153566802579691674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126207 (A297578 (n + 1)).toNat

end

end A378586.P2153566802579691674

/-!
# A378593: Number of squarefree k between consecutive powerful numbers (inclusive).

The programs for A378593, there is no canonical definition to state claims against.
-/

/-! ## A378593.P6141209886153635942

`Δ[A013928(A001694(n+1))]`
-/

namespace A378593.P6141209886153635942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A001694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378593.P6141209886153635942

/-! ## A378593.P1080637093532924758

`Δ[A013928(record[A057521(n+1)])]`
-/

namespace A378593.P1080637093532924758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A378593.P1080637093532924758

/-!
# A378594: First set of a unique partition of the positive integers into two sets whose distinct pair-sums avoid the Lucas numbers.

The programs for A378594, there is no canonical definition to state claims against.
-/

/-! ## A378594.P10666685970467874895

`record[(n+1)*A182760(2*(n+1))%2]`
-/

namespace A378594.P10666685970467874895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A182760 (2 * (n + 1))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378594.P10666685970467874895

/-! ## A378594.P8389789292613783000

`lt[1, A190427(2*floor(n/sqrt(5))+2+n)]`
-/

namespace A378594.P8389789292613783000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190427 (2 * ⌊(n : ℝ) / Real.sqrt (5 : ℝ)⌋ + 2 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A378594.P8389789292613783000

/-! ## A378594.P10509036274693059929

`lt[1, A190440(2*floor(n/sqrt(5))+2+n)]`
-/

namespace A378594.P10509036274693059929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190440 (2 * ⌊(n : ℝ) / Real.sqrt (5 : ℝ)⌋ + 2 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A378594.P10509036274693059929

/-! ## A378594.P3911871545787514460

`lt[2, A190445(A188190(n+1))]`
-/

namespace A378594.P3911871545787514460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190445 (A188190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A378594.P3911871545787514460

/-! ## A378594.P4363877253124543430

`record[A064579(n+1)-A054082(n+2)]`
-/

namespace A378594.P4363877253124543430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064579 (n + 1) - A054082 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A378594.P4363877253124543430

/-!
# A378595: Second set of a unique partition of the positive integers into two sets whose distinct pair-sums avoid the Lucas numbers.

The programs for A378595, there is no canonical definition to state claims against.
-/

/-! ## A378595.P17451742732176468267

`comp[A378594(n+1)-1]+1`
-/

namespace A378595.P17451742732176468267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378594 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A378595.P17451742732176468267

/-! ## A378595.P15400623574851797293

`lt[A248160(A248188(n+5)), A248145(2*n+3)]`
-/

namespace A378595.P15400623574851797293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248160 (A248188 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248145 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A378595.P15400623574851797293

/-! ## A378595.P8682241250696800128

`A291154(n+1)+A284588(n+1)`
-/

namespace A378595.P8682241250696800128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291154 (n + 1) + A284588 (n + 1)

end

end A378595.P8682241250696800128

/-! ## A378595.P17450775522845707000

`A366766(n+1)+A291154(n+1)`
-/

namespace A378595.P17450775522845707000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366766 (n + 1) + A291154 (n + 1)

end

end A378595.P17450775522845707000

/-! ## A378595.P8196188222468311305

`A291154(n+1)+A010060(A275281(n))`
-/

namespace A378595.P8196188222468311305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291154 (n + 1) + A010060 (A275281 n).toNat

end

end A378595.P8196188222468311305

/-!
# A378596: Möbius transform of A119347, where A119347(n) is the number of distinct sums of nonempty subsets of divisors of n.

The programs for A378596, there is no canonical definition to state claims against.
-/

/-! ## A378596.P4879506952930101065

`n+1-A378597(n+1)`
-/

namespace A378596.P4879506952930101065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A378597 (n + 1)

end

end A378596.P4879506952930101065

/-! ## A378596.P8092808950526491699

`∑{d}[n+1, A008683(#)*A119347((n+1)/#)]`
-/

namespace A378596.P8092808950526491699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A119347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378596.P8092808950526491699

/-! ## A378596.P1337902817891259776

`A348717(n+1)+A010054(A154286(n))`
-/

namespace A378596.P1337902817891259776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (n + 1) + A010054 (A154286 n).toNat

end

end A378596.P1337902817891259776

/-! ## A378596.P5155672168526823831

`A348717(n+1)+A045698(A122748(n))`
-/

namespace A378596.P5155672168526823831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (n + 1) + A045698 (A122748 n).toNat

end

end A378596.P5155672168526823831

/-! ## A378596.P14730166998846958495

`A348717(n+1)+A122840(A167750(n))`
-/

namespace A378596.P14730166998846958495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348717 (n + 1) + A122840 (A167750 n).toNat

end

end A378596.P14730166998846958495

/-!
# A378597: Möbius transform of A378450, where A378450 is the number of positive numbers k <= sigma(n) that are not a sum of any subset of distinct divisors of n.

The programs for A378597, there is no canonical definition to state claims against.
-/

/-! ## A378597.P4636585900923627827

`n+1-A378596(n+1)`
-/

namespace A378597.P4636585900923627827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A378596 (n + 1)

end

end A378597.P4636585900923627827

/-! ## A378597.P10421841621076196658

`∑{d}[n+1, A008683(#)*A378450((n+1)/#)]`
-/

namespace A378597.P10421841621076196658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378450 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378597.P10421841621076196658

/-! ## A378597.P13017901876665769627

`1-A378596(n+1)+n`
-/

namespace A378597.P13017901876665769627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A378596 (n + 1) + (n : ℤ)

end

end A378597.P13017901876665769627

/-! ## A378597.P16634107520657836360

`n-A023443(A378596(n+1))`
-/

namespace A378597.P16634107520657836360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A378596 (n + 1)).toNat

end

end A378597.P16634107520657836360

/-! ## A378597.P1808486376038317694

`n-A023443(∑{d}[n+1, A008683(#)*A119347((n+1)/#)])`
-/

namespace A378597.P1808486376038317694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (∑ d ∈ Nat.divisors (f1 n), A008683 d * A119347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat

end

end A378597.P1808486376038317694

/-!
# A378598: Parity of A083206, where A083206 is the number of ways of partitioning the divisors of n into two disjoint sets with equal sum.

The programs for A378598, there is no canonical definition to state claims against.
-/

/-! ## A378598.P4492164574802394819

`A083206(n+1)%2`
-/

namespace A378598.P4492164574802394819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083206 (n + 1)) 2

end

end A378598.P4492164574802394819

/-! ## A378598.P6035815801583306748

`A000035(A083206(n+1))`
-/

namespace A378598.P6035815801583306748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A083206 (n + 1)).toNat

end

end A378598.P6035815801583306748

/-! ## A378598.P9587870768007842703

`and(1, A083206(A000027(n+1)))`
-/

namespace A378598.P9587870768007842703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A083206 (A000027 (n + 1)).toNat)

end

end A378598.P9587870768007842703

/-! ## A378598.P4060532141496665043

`A166486(2*A083206(n+1))`
-/

namespace A378598.P4060532141496665043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (2 * A083206 (n + 1)).toNat

end

end A378598.P4060532141496665043

/-! ## A378598.P7124076265885655169

`and(A083206(n+1), A174692(n))`
-/

namespace A378598.P7124076265885655169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083206 (n + 1)) (A174692 n)

end

end A378598.P7124076265885655169

/-! ## A378598.P13039037317568676424

`A059841(A083206(n+1)+1)`
-/

namespace A378598.P13039037317568676424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A083206 (n + 1) + 1).toNat

end

end A378598.P13039037317568676424

/-! ## A378598.P5737430219518724558

`A266070(A083206(n+1)+8)`
-/

namespace A378598.P5737430219518724558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 (A083206 (n + 1) + 8).toNat

end

end A378598.P5737430219518724558

/-! ## A378598.P4079628587917716975

`A163805(A083206(n+1)+2)²`
-/

namespace A378598.P4079628587917716975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (A083206 (n + 1) + 2).toNat ^ 2

end

end A378598.P4079628587917716975

/-! ## A378598.P15649228917731437898

`and(A000051(n), A083206(n+1))`
-/

namespace A378598.P15649228917731437898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000051 n) (A083206 (n + 1))

end

end A378598.P15649228917731437898

/-! ## A378598.P17080871943254167230

`and(A083206(n+1), A170881(n))`
-/

namespace A378598.P17080871943254167230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083206 (n + 1)) (A170881 n)

end

end A378598.P17080871943254167230

/-! ## A378598.P4260032907958532523

`and(A083206(n+1), A196657(n))`
-/

namespace A378598.P4260032907958532523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083206 (n + 1)) (A196657 n)

end

end A378598.P4260032907958532523

/-! ## A378598.P12385922938505195053

`and(A005183(n), A083206(n+1))`
-/

namespace A378598.P12385922938505195053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005183 n) (A083206 (n + 1))

end

end A378598.P12385922938505195053

/-! ## A378598.P249998127832721275

`and(A005985(n), A083206(n+1))`
-/

namespace A378598.P249998127832721275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005985 n) (A083206 (n + 1))

end

end A378598.P249998127832721275

/-! ## A378598.P180234032613616597

`and(A057775(n), A083206(n+1))`
-/

namespace A378598.P180234032613616597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057775 n) (A083206 (n + 1))

end

end A378598.P180234032613616597

/-! ## A378598.P16161785835735641213

`and(A083206(n+1), A115618(n))`
-/

namespace A378598.P16161785835735641213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083206 (n + 1)) (A115618 n)

end

end A378598.P16161785835735641213

/-! ## A378598.P15623700286632791423

`and(A083206(n+1), A132750(n))`
-/

namespace A378598.P15623700286632791423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083206 (n + 1)) (A132750 n)

end

end A378598.P15623700286632791423

/-! ## A378598.P3006491797500327794

`and(A000337(n), A083206(n+1))`
-/

namespace A378598.P3006491797500327794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000337 n) (A083206 (n + 1))

end

end A378598.P3006491797500327794

/-! ## A378598.P12412224777850410301

`and(A002064(n), A083206(n+1))`
-/

namespace A378598.P12412224777850410301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002064 n) (A083206 (n + 1))

end

end A378598.P12412224777850410301

/-! ## A378598.P1011163611166811943

`and(A048474(n), A083206(n+1))`
-/

namespace A378598.P1011163611166811943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048474 n) (A083206 (n + 1))

end

end A378598.P1011163611166811943

/-! ## A378598.P13041808874560508554

`and(A048476(n), A083206(n+1))`
-/

namespace A378598.P13041808874560508554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048476 n) (A083206 (n + 1))

end

end A378598.P13041808874560508554

/-!
# A378599: Numbers whose divisors can be partitioned into two disjoint sets with the same sum in an odd number of ways.

The programs for A378599, there is no canonical definition to state claims against.
-/

/-! ## A378599.P7630277928025214540

`filter[A094229(n+1), A378598(#)]`
-/

namespace A378599.P7630277928025214540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P7630277928025214540

/-! ## A378599.P13460849877517789854

`filter[A305811(n+1), A378598(#)]`
-/

namespace A378599.P13460849877517789854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P13460849877517789854

/-! ## A378599.P17757448530342000964

`filter[A305810(n+1), A378598(#)]`
-/

namespace A378599.P17757448530342000964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P17757448530342000964

/-! ## A378599.P5451300373654442325

`filter[A305894(n+1), A378598(#)]`
-/

namespace A378599.P5451300373654442325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P5451300373654442325

/-! ## A378599.P4341654370074824192

`filter[A305904(n+1), A378598(#)]`
-/

namespace A378599.P4341654370074824192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P4341654370074824192

/-! ## A378599.P3366749959799416694

`filter[A305903(n+1), A378598(#)]`
-/

namespace A378599.P3366749959799416694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P3366749959799416694

/-! ## A378599.P1582290954159004733

`filter[A305800(n+1), A378598(#)]`
-/

namespace A378599.P1582290954159004733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P1582290954159004733

/-! ## A378599.P8456265714130757697

`filter[A305801(n+1), A378598(#)]`
-/

namespace A378599.P8456265714130757697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P8456265714130757697

/-! ## A378599.P8721957491576279978

`filter[A305900(n+1), A378598(#)]`
-/

namespace A378599.P8721957491576279978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P8721957491576279978

/-! ## A378599.P11360682749895919482

`filter[A319704(n+1), A378598(#)]`
-/

namespace A378599.P11360682749895919482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P11360682749895919482

/-! ## A378599.P5251969701091806065

`filter[A319707(n+1), A378598(#)]`
-/

namespace A378599.P5251969701091806065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P5251969701091806065

/-! ## A378599.P16957183246932106053

`filter[A331304(n+1), A378598(#)]`
-/

namespace A378599.P16957183246932106053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P16957183246932106053

/-! ## A378599.P13156316316191178055

`filter[A379000(n+1), A378598(#)]`
-/

namespace A378599.P13156316316191178055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P13156316316191178055

/-! ## A378599.P8346807655594812951

`filter[A305890(n+1), A378598(#)]`
-/

namespace A378599.P8346807655594812951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305890 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P8346807655594812951

/-! ## A378599.P15637800754757130655

`filter[A305976(n+1), A378598(#)]`
-/

namespace A378599.P15637800754757130655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P15637800754757130655

/-! ## A378599.P2370449342318099198

`filter[A305979(n+1), A378598(#)]`
-/

namespace A378599.P2370449342318099198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P2370449342318099198

/-! ## A378599.P15917765465882313570

`filter[A305901(n+1), A378598(#)]`
-/

namespace A378599.P15917765465882313570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P15917765465882313570

/-! ## A378599.P666377293876174425

`filter[A324400(n+1), A378598(#)]`
-/

namespace A378599.P666377293876174425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P666377293876174425

/-! ## A378599.P9860554926625680056

`filter[A326133(n+1), A378598(#)]`
-/

namespace A378599.P9860554926625680056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P9860554926625680056

/-! ## A378599.P3334847102287884959

`filter[A332900(n+1), A378598(#)]`
-/

namespace A378599.P3334847102287884959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378598 (f1 j).toNat = 1) n)

end

end A378599.P3334847102287884959

