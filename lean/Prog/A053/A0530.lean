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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A053000: a(n) = (smallest prime > n^2) - n^2.

The programs for A053000, the canonical program `A053000.P7278427673394138104` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053000 has offset 0).

The definition of A053000 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013632, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053000.P7278427673394138104

`A013632(n²)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053000

/-- `A013632(n²)` -/
def P7278427673394138104.Spec : Prop :=
  ∀ n, P7278427673394138104.a n = A053000 n

theorem P7278427673394138104.correct : P7278427673394138104.Spec := by
  intro n
  simp only [A053000]

end A053000

/-! ## A053000.P16060219157784907373

`A007491(A028310(n))-n²`
-/

namespace A053000.P16060219157784907373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A028310 n).toNat - (n ^ 2 : ℤ)

end

end A053000.P16060219157784907373

namespace A053000

/-- `A007491(A028310(n))-n²` -/
def P16060219157784907373.Spec : Prop :=
  ∀ n, P16060219157784907373.a n = A053000 n

end A053000

/-! ## A053000.P3954413328241003304

`A007491(gcd(n, A008458(n)))-n²`
-/

namespace A053000.P3954413328241003304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (Int.gcd (n : ℤ) (A008458 n)) - (n ^ 2 : ℤ)

end

end A053000.P3954413328241003304

namespace A053000

/-- `A007491(gcd(n, A008458(n)))-n²` -/
def P3954413328241003304.Spec : Prop :=
  ∀ n, P3954413328241003304.a n = A053000 n

end A053000

/-! ## A053000.P13454711498925546115

`A007491(A065033(2*n))-n²`
-/

namespace A053000.P13454711498925546115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A065033 (2 * n)).toNat - (n ^ 2 : ℤ)

end

end A053000.P13454711498925546115

namespace A053000

/-- `A007491(A065033(2*n))-n²` -/
def P13454711498925546115.Spec : Prop :=
  ∀ n, P13454711498925546115.a n = A053000 n

end A053000

/-! ## A053000.P10592359566507899166

`A000040(A038107(n)+1)-n²`
-/

namespace A053000.P10592359566507899166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038107 n + 1).toNat - (n ^ 2 : ℤ)

end

end A053000.P10592359566507899166

namespace A053000

/-- `A000040(A038107(n)+1)-n²` -/
def P10592359566507899166.Spec : Prop :=
  ∀ n, P10592359566507899166.a n = A053000 n

end A053000

/-! ## A053000.P17578541844342130502

`A151800(n²)-n²`
-/

namespace A053000.P17578541844342130502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n ^ 2) - (n ^ 2 : ℤ)

end

end A053000.P17578541844342130502

namespace A053000

/-- `A151800(n²)-n²` -/
def P17578541844342130502.Spec : Prop :=
  ∀ n, P17578541844342130502.a n = A053000 n

end A053000

/-! ## A053000.P4354345407741207426

`A118753(A002620(n))-n²`
-/

namespace A053000.P4354345407741207426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118753 (A002620 n).toNat - (n ^ 2 : ℤ)

end

end A053000.P4354345407741207426

namespace A053000

/-- `A118753(A002620(n))-n²` -/
def P4354345407741207426.Spec : Prop :=
  ∀ n, P4354345407741207426.a n = A053000 n

end A053000

/-! ## A053000.P18056151344955096188

`A060264(A007590(n))-n²`
-/

namespace A053000.P18056151344955096188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (A007590 n).toNat - (n ^ 2 : ℤ)

end

end A053000.P18056151344955096188

namespace A053000

/-- `A060264(A007590(n))-n²` -/
def P18056151344955096188.Spec : Prop :=
  ∀ n, P18056151344955096188.a n = A053000 n

end A053000

/-! ## A053000.P3990160180545757978

`A007920(n²)`
-/

namespace A053000.P3990160180545757978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (n ^ 2)

end

end A053000.P3990160180545757978

namespace A053000

/-- `A007920(n²)` -/
def P3990160180545757978.Spec : Prop :=
  ∀ n, P3990160180545757978.a n = A053000 n

end A053000

/-! ## A053000.P14128397518157971862

`A007918(n²)-n²`
-/

namespace A053000.P14128397518157971862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n ^ 2) - (n ^ 2 : ℤ)

end

end A053000.P14128397518157971862

namespace A053000

/-- `A007918(n²)-n²` -/
def P14128397518157971862.Spec : Prop :=
  ∀ n, P14128397518157971862.a n = A053000 n

end A053000

/-! ## A053000.P16086127184809360734

`A000720(A000040(A007920(n*n)))`
-/

namespace A053000.P16086127184809360734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (A007920 (n * n)).toNat).toNat

end

end A053000.P16086127184809360734

namespace A053000

/-- `A000720(A000040(A007920(n*n)))` -/
def P16086127184809360734.Spec : Prop :=
  ∀ n, P16086127184809360734.a n = A053000 n

end A053000

/-! ## A053000.P719991371432737155

`A007920(A000290(n))%A001358(n+1)`
-/

namespace A053000.P719991371432737155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007920 (A000290 n).toNat) (A001358 (n + 1))

end

end A053000.P719991371432737155

namespace A053000

/-- `A007920(A000290(n))%A001358(n+1)` -/
def P719991371432737155.Spec : Prop :=
  ∀ n, P719991371432737155.a n = A053000 n

end A053000

/-! ## A053000.P3463726525009789412

`A007920(A000290(n))+A000007(3*n+1)`
-/

namespace A053000.P3463726525009789412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A000290 n).toNat + A000007 (3 * n + 1)

end

end A053000.P3463726525009789412

namespace A053000

/-- `A007920(A000290(n))+A000007(3*n+1)` -/
def P3463726525009789412.Spec : Prop :=
  ∀ n, P3463726525009789412.a n = A053000 n

end A053000

/-! ## A053000.P7744269671019530572

`A109400(A151800(n²)+n)`
-/

namespace A053000.P7744269671019530572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109400 (A151800 (n ^ 2) + (n : ℤ)).toNat

end

end A053000.P7744269671019530572

namespace A053000

/-- `A109400(A151800(n²)+n)` -/
def P7744269671019530572.Spec : Prop :=
  ∀ n, P7744269671019530572.a n = A053000 n

end A053000

/-! ## A053000.P7049430895184592938

`A075402(A075403(A013632(n*n)))`
-/

namespace A053000.P7049430895184592938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075402 (A075403 (A013632 (n * n)).toNat).toNat

end

end A053000.P7049430895184592938

namespace A053000

/-- `A075402(A075403(A013632(n*n)))` -/
def P7049430895184592938.Spec : Prop :=
  ∀ n, P7049430895184592938.a n = A053000 n

end A053000

/-!
# A053001: Largest prime < n^2.

The programs for A053001, the canonical program `A053001.P15315627047163016254` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053001 has offset 2).

The definition of A053001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053001.P15315627047163016254

`A000040(A000720((n+2)²))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053001

/-- `A000040(A000720((n+2)²))` -/
def P15315627047163016254.Spec : Prop :=
  ∀ n, P15315627047163016254.a n = A053001 (n + 2)

theorem P15315627047163016254.correct : P15315627047163016254.Spec := by
  intro n
  simp only [A053001, Nat.add_sub_cancel]

end A053001

/-! ## A053001.P8295851117049223089

`A007917((n+2)²)`
-/

namespace A053001.P8295851117049223089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 ((n + 2) ^ 2)

end

end A053001.P8295851117049223089

namespace A053001

/-- `A007917((n+2)²)` -/
def P8295851117049223089.Spec : Prop :=
  ∀ n, P8295851117049223089.a n = A053001 (n + 2)

end A053001

/-! ## A053001.P12573277392848105407

`(n+2)²-A056927(n+2)`
-/

namespace A053001.P12573277392848105407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A056927 (n + 2)

end

end A053001.P12573277392848105407

namespace A053001

/-- `(n+2)²-A056927(n+2)` -/
def P12573277392848105407.Spec : Prop :=
  ∀ n, P12573277392848105407.a n = A053001 (n + 2)

theorem P12573277392848105407.correct : P12573277392848105407.Spec := by
  intro n
  simp only [A053001, Nat.add_sub_cancel, A053001.P12573277392848105407.a, A053001.P15315627047163016254.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A056927, A056927.P15198729554865341557.a, A000290, A000290.P12206242496348924484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053001

/-! ## A053001.P14493531946134156389

`A180724(n+2)-(n+2)²`
-/

namespace A053001.P14493531946134156389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180724 (n + 2) - ((n + 2) ^ 2 : ℤ)

end

end A053001.P14493531946134156389

namespace A053001

/-- `A180724(n+2)-(n+2)²` -/
def P14493531946134156389.Spec : Prop :=
  ∀ n, P14493531946134156389.a n = A053001 (n + 2)

theorem P14493531946134156389.correct : P14493531946134156389.Spec := by
  intro n
  simp only [A053001, Nat.add_sub_cancel, A053001.P14493531946134156389.a, A053001.P15315627047163016254.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A180724, A180724.P9375854494318249923.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053001

/-! ## A053001.P17709000612974618557

`A132657(n+1)/A007491(n+1)`
-/

namespace A053001.P17709000612974618557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132657 (n + 1) : ℚ) / (A007491 (n + 1) : ℚ)

end

end A053001.P17709000612974618557

namespace A053001

/-- `A132657(n+1)/A007491(n+1)` -/
def P17709000612974618557.Spec : Prop :=
  ∀ n, P17709000612974618557.a n = (A053001 (n + 2) : ℚ)

end A053001

/-! ## A053001.P7359070159212724237

`A056928(n+2)+A056929(n+2)-A056927(n+2)`
-/

namespace A053001.P7359070159212724237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056928 (n + 2) + (A056929 (n + 2) - A056927 (n + 2))

end

end A053001.P7359070159212724237

namespace A053001

/-- `A056928(n+2)+A056929(n+2)-A056927(n+2)` -/
def P7359070159212724237.Spec : Prop :=
  ∀ n, P7359070159212724237.a n = A053001 (n + 2)

theorem P7359070159212724237.correct : P7359070159212724237.Spec := by
  intro n
  simp only [A053001, Nat.add_sub_cancel, A053001.P7359070159212724237.a, A053001.P15315627047163016254.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A056927, A056927.P15198729554865341557.a, A056928, A056928.P1059956196817698277.a, A056929, A056929.P6975652131116657014.a, A000290, A000290.P12206242496348924484.a, A053000, A053000.P7278427673394138104.a, A013632, A013632.P6559946879985956067.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A053001

/-! ## A053001.P1824923308834751075

`A132657(n+1)/gcd(A069639(n+1), A132657(n+1))`
-/

namespace A053001.P1824923308834751075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132657 (n + 1) : ℚ) / (Int.gcd (A069639 (n + 1)) (A132657 (n + 1)) : ℚ)

end

end A053001.P1824923308834751075

namespace A053001

/-- `A132657(n+1)/gcd(A069639(n+1), A132657(n+1))` -/
def P1824923308834751075.Spec : Prop :=
  ∀ n, P1824923308834751075.a n = (A053001 (n + 2) : ℚ)

end A053001

/-! ## A053001.P13568681188225884026

`A007491(n+2)-A058043(n+2)`
-/

namespace A053001.P13568681188225884026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 2) - A058043 (n + 2)

end

end A053001.P13568681188225884026

namespace A053001

/-- `A007491(n+2)-A058043(n+2)` -/
def P13568681188225884026.Spec : Prop :=
  ∀ n, P13568681188225884026.a n = A053001 (n + 2)

end A053001

/-! ## A053001.P12588770556569548957

`A056928(n+2)+A056928(n+2)-A007491(n+2)`
-/

namespace A053001.P12588770556569548957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056928 (n + 2) + (A056928 (n + 2) - A007491 (n + 2))

end

end A053001.P12588770556569548957

namespace A053001

/-- `A056928(n+2)+A056928(n+2)-A007491(n+2)` -/
def P12588770556569548957.Spec : Prop :=
  ∀ n, P12588770556569548957.a n = A053001 (n + 2)

end A053001

/-! ## A053001.P11912820048447765372

`A000040(A038107(n+2))`
-/

namespace A053001.P11912820048447765372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038107 (n + 2)).toNat

end

end A053001.P11912820048447765372

namespace A053001

/-- `A000040(A038107(n+2))` -/
def P11912820048447765372.Spec : Prop :=
  ∀ n, P11912820048447765372.a n = A053001 (n + 2)

end A053001

/-! ## A053001.P7436107507186684194

`A000040(∑[A014085(n+1)])`
-/

namespace A053001.P7436107507186684194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A053001.P7436107507186684194

namespace A053001

/-- `A000040(∑[A014085(n+1)])` -/
def P7436107507186684194.Spec : Prop :=
  ∀ n, P7436107507186684194.a n = A053001 (n + 2)

end A053001

/-! ## A053001.P16797934154461053568

`A000040(A220506(2*(n+2)))`
-/

namespace A053001.P16797934154461053568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A220506 (2 * (n + 2))).toNat

end

end A053001.P16797934154461053568

namespace A053001

/-- `A000040(A220506(2*(n+2)))` -/
def P16797934154461053568.Spec : Prop :=
  ∀ n, P16797934154461053568.a n = A053001 (n + 2)

end A053001

/-! ## A053001.P10772407328543716508

`A000040(A161187(n+2)-(n+2))`
-/

namespace A053001.P10772407328543716508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A161187 (n + 2) - (n + 2 : ℤ)).toNat

end

end A053001.P10772407328543716508

namespace A053001

/-- `A000040(A161187(n+2)-(n+2))` -/
def P10772407328543716508.Spec : Prop :=
  ∀ n, P10772407328543716508.a n = A053001 (n + 2)

end A053001

/-! ## A053001.P7753438990513167017

`A000040(∑[A104477(2*n+1)+1])`
-/

namespace A053001.P7753438990513167017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104477 (2 * n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A053001.P7753438990513167017

namespace A053001

/-- `A000040(∑[A104477(2*n+1)+1])` -/
def P7753438990513167017.Spec : Prop :=
  ∀ n, P7753438990513167017.a n = A053001 (n + 2)

end A053001

/-! ## A053001.P14826533318044057331

`p?[A000040(n+1)*A061265(n+1)]`
-/

namespace A053001.P14826533318044057331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A061265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053001.P14826533318044057331

namespace A053001

/-- `p?[A000040(n+1)*A061265(n+1)]` -/
def P14826533318044057331.Spec : Prop :=
  ∀ n, P14826533318044057331.a n = A053001 (n + 2)

end A053001

/-! ## A053001.P11011393397258534619

`p?[Δ[A000006(n+1)]*A000040(n+1)]`
-/

namespace A053001.P11011393397258534619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053001.P11011393397258534619

namespace A053001

/-- `p?[Δ[A000006(n+1)]*A000040(n+1)]` -/
def P11011393397258534619.Spec : Prop :=
  ∀ n, P11011393397258534619.a n = A053001 (n + 2)

end A053001

/-! ## A053001.P17083600539991387288

`p?[A000040(n+1)*Δ[A104103(n+1)]]`
-/

namespace A053001.P17083600539991387288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053001.P17083600539991387288

namespace A053001

/-- `p?[A000040(n+1)*Δ[A104103(n+1)]]` -/
def P17083600539991387288.Spec : Prop :=
  ∀ n, P17083600539991387288.a n = A053001 (n + 2)

end A053001

/-! ## A053001.P13728254197954250750

`A089237(A161187(n+2))`
-/

namespace A053001.P13728254197954250750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (A161187 (n + 2)).toNat

end

end A053001.P13728254197954250750

namespace A053001

/-- `A089237(A161187(n+2))` -/
def P13728254197954250750.Spec : Prop :=
  ∀ n, P13728254197954250750.a n = A053001 (n + 2)

end A053001

/-! ## A053001.P17309383896106106636

`p?[A089237(∑[A014085(n)+1])]`
-/

namespace A053001.P17309383896106106636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089237 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053001.P17309383896106106636

namespace A053001

/-- `p?[A089237(∑[A014085(n)+1])]` -/
def P17309383896106106636.Spec : Prop :=
  ∀ n, P17309383896106106636.a n = A053001 (n + 2)

end A053001

/-!
# A053003: Continued fraction for M(1,sqrt(2)).

The programs for A053003, there is no canonical definition to state claims against.
-/

/-! ## A053003.P13432173000816584351

`A053002(n+1)`
-/

namespace A053003.P13432173000816584351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053002 (n + 1)

end

end A053003.P13432173000816584351

/-!
# A053005: Denominator of beta(2n+1)/Pi^(2n+1), where beta(m) = Sum_{k>=0} (-1)^k/(2k+1)^m.

The programs for A053005, there is no canonical definition to state claims against.
-/

/-! ## A053005.P3331598050152449730

`4*A162445(n)`
-/

namespace A053005.P3331598050152449730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A162445 n

end

end A053005.P3331598050152449730

/-! ## A053005.P11917716803802645467

`A068205(Δ[n²])`
-/

namespace A053005.P11917716803802645467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068205 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053005.P11917716803802645467

/-! ## A053005.P3193910174059286833

`4*A050971(Δ[n²])`
-/

namespace A053005.P3193910174059286833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A050971 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053005.P3193910174059286833

/-! ## A053005.P12929776505587195904

`lcm(2, A068205(2*n+1))`
-/

namespace A053005.P12929776505587195904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A068205 (2 * n + 1))

end

end A053005.P12929776505587195904

/-! ## A053005.P9785540802842242703

`2*2*A050971(2*n+1)`
-/

namespace A053005.P9785540802842242703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A050971 (2 * n + 1))

end

end A053005.P9785540802842242703

/-!
# A053006: Numbers m for which there exist d(1),...,d(m), each in {0,1}, such that Sum_{i=1..m-k} d(i)*d(i+k) is odd for all k=0,...,m-1.

The programs for A053006, there is no canonical definition to state claims against.
-/

/-! ## A053006.P14414080500139740371

`(A036259(n+1)+1)/2`
-/

namespace A053006.P14414080500139740371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036259 (n + 1) + 1 : ℚ) / 2

end

end A053006.P14414080500139740371

/-! ## A053006.P7002819266404436945

`ceil(A036259(n+1)/2)`
-/

namespace A053006.P7002819266404436945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036259 (n + 1) : ℚ) / 2⌉

end

end A053006.P7002819266404436945

/-! ## A053006.P15902211044939225873

`eq[1, A002326(n)%2]+1`
-/

namespace A053006.P15902211044939225873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002326 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053006.P15902211044939225873

/-! ## A053006.P6286890427514886823

`eq[A002326(n), A053447(n)]+1`
-/

namespace A053006.P6286890427514886823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053006.P6286890427514886823

/-! ## A053006.P2721531251687421006

`eq[A002326(n), A302141(n)]+1`
-/

namespace A053006.P2721531251687421006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302141 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053006.P2721531251687421006

/-! ## A053006.P4043980369378703478

`eq[A000265(A003558(n)), A002326(n)]+1`
-/

namespace A053006.P4043980369378703478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003558 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053006.P4043980369378703478

/-! ## A053006.P17201419529070223755

`A000463(A036259(n+1))`
-/

namespace A053006.P17201419529070223755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A036259 (n + 1)).toNat

end

end A053006.P17201419529070223755

/-! ## A053006.P6032545918805129423

`A003602(A036259(Δ[n*n]-n))`
-/

namespace A053006.P6032545918805129423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A036259 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat

end

end A053006.P6032545918805129423

/-! ## A053006.P17336533878950166216

`A003602(A036259(n+1)+2)-1`
-/

namespace A053006.P17336533878950166216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A036259 (n + 1) + 2).toNat - 1

end

end A053006.P17336533878950166216

/-! ## A053006.P12817052877651331144

`A003602(2*A036259(n+1))`
-/

namespace A053006.P12817052877651331144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (2 * A036259 (n + 1)).toNat

end

end A053006.P12817052877651331144

/-!
# A053007: Repeated digits in decimal expansion of e associated with A053684.

The programs for A053007, there is no canonical definition to state claims against.
-/

/-! ## A053007.P4668758835376748465

`A001113(eq[A001113(n+1), A001113(n)])`
-/

namespace A053007.P4668758835376748465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A053007.P4668758835376748465

/-! ## A053007.P17515064176791977959

`A001113(A053684(n))`
-/

namespace A053007.P17515064176791977959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A053684 n).toNat + 1)

end

end A053007.P17515064176791977959

/-! ## A053007.P12600216481469718790

`A001113(eq[A121239(n), A153805(n)])`
-/

namespace A053007.P12600216481469718790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A053007.P12600216481469718790

/-! ## A053007.P13251253092511282290

`A091131(eq[A121239(n), A153805(n)])`
-/

namespace A053007.P13251253092511282290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A053007.P13251253092511282290

/-! ## A053007.P6458386246242717688

`A091131(eq[A091131(n+1), A091131(n)])`
-/

namespace A053007.P6458386246242717688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1 + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A053007.P6458386246242717688

/-!
# A053008: Primes from products of split even-digit primes.

The programs for A053008, there is no canonical definition to state claims against.
-/

/-! ## A053008.P9675834104549715374

`A069246(A228050(n+1)+A057077(n))`
-/

namespace A053008.P9675834104549715374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069246 (A228050 (n + 1) + A057077 n).toNat

end

end A053008.P9675834104549715374

/-! ## A053008.P6185034712550266440

`A077505(A056293(n+2))`
-/

namespace A053008.P6185034712550266440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077505 (A056293 (n + 2)).toNat

end

end A053008.P6185034712550266440

/-!
# A053009: Primes associated with A053008.

The programs for A053009, there is no canonical definition to state claims against.
-/

/-! ## A053009.P10714042262065289600

`A126808(A033554(n+1))`
-/

namespace A053009.P10714042262065289600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126808 (A033554 (n + 1)).toNat

end

end A053009.P10714042262065289600

/-!
# A053010: Products of split primes associated with A053008.

The programs for A053010, there is no canonical definition to state claims against.
-/

/-! ## A053010.P10210990777268303378

`A091264(A318032(n+1))`
-/

namespace A053010.P10210990777268303378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091264 (A318032 (n + 1)).toNat

end

end A053010.P10210990777268303378

/-!
# A053013: Positions in decimal expansion of Pi where next prime begins.

The programs for A053013, there is no canonical definition to state claims against.
-/

/-! ## A053013.P12303689012424821490

`A229181(n)+a(n-1)` with `a(0)=1`
-/

namespace A053013.P12303689012424821490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A229181 n + a (n - 1)

end

end A053013.P12303689012424821490

/-! ## A053013.P4470977554131317260

`∑[A229181(round(sqrt(n²+1)))]`
-/

namespace A053013.P4470977554131317260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229181 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053013.P4470977554131317260

/-! ## A053013.P1143091419521926230

`∑[A229181(n+1)]+1-A229181(n+1)`
-/

namespace A053013.P1143091419521926230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A229181 (n + 1))

end

end A053013.P1143091419521926230

/-!
# A053014: a(n) is the smallest number which has n consecutive divisors k, k+1, ..., k+n-1 such that the quotients all begin with the same digit.

The programs for A053014, there is no canonical definition to state claims against.
-/

/-! ## A053014.P11048530406445882689

`A093037(A284798(n+1))`
-/

namespace A053014.P11048530406445882689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093037 (A284798 (n + 1)).toNat

end

end A053014.P11048530406445882689

/-! ## A053014.P14964405490112279666

`A093037(eq[n, A284797(n)])`
-/

namespace A053014.P14964405490112279666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284797 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053014.P14964405490112279666

/-!
# A053015: 

The programs for A053015, there is no canonical definition to state claims against.
-/

/-! ## A053015.P945730896724702219

`n^n^A000045(n)`
-/

namespace A053015.P945730896724702219
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ ((n : ℚ) ^ (A000045 n : ℤ) : ℝ)

end

end A053015.P945730896724702219

/-!
# A053021: Number of divisors function applied twice to n!.

The programs for A053021, the canonical program `A053021.P11940680763512173238` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053021 has offset 1).

The definition of A053021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053021.P11940680763512173238

`A000005(A027423(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053021

/-- `A000005(A027423(n+1))` -/
def P11940680763512173238.Spec : Prop :=
  ∀ n, P11940680763512173238.a n = A053021 (n + 1)

theorem P11940680763512173238.correct : P11940680763512173238.Spec := by
  intro n
  simp only [A053021, Nat.add_sub_cancel]

end A053021

/-! ## A053021.P2128593632498633299

`∏{e}[∑[A038024(n+1)], #+1]`
-/

namespace A053021.P2128593632498633299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038024 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A053021.P2128593632498633299

namespace A053021

/-- `∏{e}[∑[A038024(n+1)], #+1]` -/
def P2128593632498633299.Spec : Prop :=
  ∀ n, (P2128593632498633299.a n : ℤ) = A053021 (n + 1)

end A053021

/-! ## A053021.P2754806133230320851

`∏{e}[A153823(n+1)+1, #+1]`
-/

namespace A053021.P2754806133230320851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153823 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A053021.P2754806133230320851

namespace A053021

/-- `∏{e}[A153823(n+1)+1, #+1]` -/
def P2754806133230320851.Spec : Prop :=
  ∀ n, (P2754806133230320851.a n : ℤ) = A053021 (n + 1)

end A053021

/-! ## A053021.P12493872710924363167

`∑{d}[A027423(n+1), A007318(val(#, 7))]`
-/

namespace A053021.P12493872710924363167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007318 (SequenceMachineLib.valuation d 7)

end

end A053021.P12493872710924363167

namespace A053021

/-- `∑{d}[A027423(n+1), A007318(val(#, 7))]` -/
def P12493872710924363167.Spec : Prop :=
  ∀ n, P12493872710924363167.a n = A053021 (n + 1)

end A053021

/-! ## A053021.P15927265576936266228

`∑{d}[A027423(n+1), A248763(ceil(3/#))]`
-/

namespace A053021.P15927265576936266228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027423 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A248763 ⌈3 / (d : ℚ)⌉.toNat

end

end A053021.P15927265576936266228

namespace A053021

/-- `∑{d}[A027423(n+1), A248763(ceil(3/#))]` -/
def P15927265576936266228.Spec : Prop :=
  ∀ n, P15927265576936266228.a n = A053021 (n + 1)

end A053021

/-!
# A053022: Number of subdiagonal directed diagonally-convex animals with given diagonal semiperimeter.

The programs for A053022, there is no canonical definition to state claims against.
-/

/-! ## A053022.P17235930174972052905

`A008621(A052988(n)+A002450(n))`
-/

namespace A053022.P17235930174972052905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A052988 n + A002450 n).toNat

end

end A053022.P17235930174972052905

/-! ## A053022.P5063398057916952269

`A130845(A002450(n))+A115324(n)`
-/

namespace A053022.P5063398057916952269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 (A002450 n).toNat + A115324 n

end

end A053022.P5063398057916952269

/-! ## A053022.P13985941468671854727

`A065033(A148969(n)+A148945(n))`
-/

namespace A053022.P13985941468671854727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A148969 n + A148945 n).toNat

end

end A053022.P13985941468671854727

/-! ## A053022.P740940980943333006

`or(A008953(A323789(n)), A357641(n))`
-/

namespace A053022.P740940980943333006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008953 (A323789 n).toNat) (A357641 n)

end

end A053022.P740940980943333006

/-!
# A053023: Divisor function applied thrice to n!.

The programs for A053023, the canonical program `A053023.P541668529944221178` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053023 has offset 1).

The definition of A053023 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 277 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053023.P541668529944221178

`∏{e}[A053021(n+1), #+1]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053023

/-- `∏{e}[A053021(n+1), #+1]` -/
def P541668529944221178.Spec : Prop :=
  ∀ n, (P541668529944221178.a n : ℤ) = A053023 (n + 1)

theorem P541668529944221178.correct : P541668529944221178.Spec := by
  intro n
  simp only [A053023, Nat.add_sub_cancel]

end A053023

/-! ## A053023.P8484199255503384992

`A000005(A053021(n+1))`
-/

namespace A053023.P8484199255503384992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053021 (n + 1)).toNat

end

end A053023.P8484199255503384992

namespace A053023

/-- `A000005(A053021(n+1))` -/
def P8484199255503384992.Spec : Prop :=
  ∀ n, P8484199255503384992.a n = A053023 (n + 1)

end A053023

/-! ## A053023.P6704601115711186933

`∑{d}[A053021(n+1), A296306(A000265(#))]`
-/

namespace A053023.P6704601115711186933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A296306 (A000265 d).toNat

end

end A053023.P6704601115711186933

namespace A053023

/-- `∑{d}[A053021(n+1), A296306(A000265(#))]` -/
def P6704601115711186933.Spec : Prop :=
  ∀ n, P6704601115711186933.a n = A053023 (n + 1)

end A053023

/-! ## A053023.P5392792313734493263

`∑{d}[A053021(n+1), A059268(A066446(#))]`
-/

namespace A053023.P5392792313734493263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059268 (A066446 d).toNat

end

end A053023.P5392792313734493263

namespace A053023

/-- `∑{d}[A053021(n+1), A059268(A066446(#))]` -/
def P5392792313734493263.Spec : Prop :=
  ∀ n, P5392792313734493263.a n = A053023 (n + 1)

end A053023

/-! ## A053023.P16079455582784921424

`∑{d}[A053021(n+1), A057427(A000010(#))]`
-/

namespace A053023.P16079455582784921424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 (A000010 d).toNat

end

end A053023.P16079455582784921424

namespace A053023

/-- `∑{d}[A053021(n+1), A057427(A000010(#))]` -/
def P16079455582784921424.Spec : Prop :=
  ∀ n, P16079455582784921424.a n = A053023 (n + 1)

end A053023

/-! ## A053023.P8325608003823517244

`∑{d}[A053021(n+1), A054977(#)]`
-/

namespace A053023.P8325608003823517244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A054977 d

end

end A053023.P8325608003823517244

namespace A053023

/-- `∑{d}[A053021(n+1), A054977(#)]` -/
def P8325608003823517244.Spec : Prop :=
  ∀ n, P8325608003823517244.a n = A053023 (n + 1)

end A053023

/-! ## A053023.P1432447039439604796

`∑{d}[A053021(n+1), A057427(#)]`
-/

namespace A053023.P1432447039439604796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A053023.P1432447039439604796

namespace A053023

/-- `∑{d}[A053021(n+1), A057427(#)]` -/
def P1432447039439604796.Spec : Prop :=
  ∀ n, P1432447039439604796.a n = A053023 (n + 1)

end A053023

/-! ## A053023.P16646795530508562163

`A057427(A008619(n))+A032741(A053021(n+1))`
-/

namespace A053023.P16646795530508562163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A008619 n).toNat + A032741 (A053021 (n + 1)).toNat

end

end A053023.P16646795530508562163

namespace A053023

/-- `A057427(A008619(n))+A032741(A053021(n+1))` -/
def P16646795530508562163.Spec : Prop :=
  ∀ n, P16646795530508562163.a n = A053023 (n + 1)

end A053023

/-! ## A053023.P2795262400287417365

`A057427(A134060(n))+A032741(A053021(n+1))`
-/

namespace A053023.P2795262400287417365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A134060 n).toNat + A032741 (A053021 (n + 1)).toNat

end

end A053023.P2795262400287417365

namespace A053023

/-- `A057427(A134060(n))+A032741(A053021(n+1))` -/
def P2795262400287417365.Spec : Prop :=
  ∀ n, P2795262400287417365.a n = A053023 (n + 1)

end A053023

/-! ## A053023.P15203000176850995642

`A057427(A046951(n+1))+A032741(A053021(n+1))`
-/

namespace A053023.P15203000176850995642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A046951 (n + 1)).toNat + A032741 (A053021 (n + 1)).toNat

end

end A053023.P15203000176850995642

namespace A053023

/-- `A057427(A046951(n+1))+A032741(A053021(n+1))` -/
def P15203000176850995642.Spec : Prop :=
  ∀ n, P15203000176850995642.a n = A053023 (n + 1)

end A053023

/-! ## A053023.P365259203876007316

`A057427(A062011(n+1))+A032741(A053021(n+1))`
-/

namespace A053023.P365259203876007316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A062011 (n + 1)).toNat + A032741 (A053021 (n + 1)).toNat

end

end A053023.P365259203876007316

namespace A053023

/-- `A057427(A062011(n+1))+A032741(A053021(n+1))` -/
def P365259203876007316.Spec : Prop :=
  ∀ n, P365259203876007316.a n = A053023 (n + 1)

end A053023

/-! ## A053023.P3676845221415140654

`A059268(A066446(n+1))+A032741(A053021(n+1))`
-/

namespace A053023.P3676845221415140654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (A066446 (n + 1)).toNat + A032741 (A053021 (n + 1)).toNat

end

end A053023.P3676845221415140654

namespace A053023

/-- `A059268(A066446(n+1))+A032741(A053021(n+1))` -/
def P3676845221415140654.Spec : Prop :=
  ∀ n, P3676845221415140654.a n = A053023 (n + 1)

end A053023

/-!
# A053024: a(n) = n*p where p is the next prime >= n.

The programs for A053024, the canonical program `A053024.P18092685684521864134` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053024 has offset 1).

The definition of A053024 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053024.P9078306222991888253

`(n+1)*A151800(n)`
-/

namespace A053024.P9078306222991888253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A151800 n

end

end A053024.P9078306222991888253

namespace A053024

/-- `(n+1)*A151800(n)` -/
def P9078306222991888253.Spec : Prop :=
  ∀ n, P9078306222991888253.a n = A053024 (n + 1)

end A053024

/-! ## A053024.P1370075321596563086

`(n+1)*Δ[A117842(n)]`
-/

namespace A053024.P1370075321596563086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A053024.P1370075321596563086

namespace A053024

/-- `(n+1)*Δ[A117842(n)]` -/
def P1370075321596563086.Spec : Prop :=
  ∀ n, P1370075321596563086.a n = A053024 (n + 1)

end A053024

/-! ## A053024.P12833921974763936466

`(n+1)*A007918(n+1)`
-/

namespace A053024.P12833921974763936466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007918 (n + 1)

end

end A053024.P12833921974763936466

namespace A053024

/-- `(n+1)*A007918(n+1)` -/
def P12833921974763936466.Spec : Prop :=
  ∀ n, P12833921974763936466.a n = A053024 (n + 1)

end A053024

/-! ## A053024.P1984910559054065812

`(n+1)*(A013632(n)+n)`
-/

namespace A053024.P1984910559054065812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A013632 n + (n : ℤ))

end

end A053024.P1984910559054065812

namespace A053024

/-- `(n+1)*(A013632(n)+n)` -/
def P1984910559054065812.Spec : Prop :=
  ∀ n, P1984910559054065812.a n = A053024 (n + 1)

end A053024

/-! ## A053024.P10956095086111763725

`(n+1)*(A013634(n)-n)`
-/

namespace A053024.P10956095086111763725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A013634 n - (n : ℤ))

end

end A053024.P10956095086111763725

namespace A053024

/-- `(n+1)*(A013634(n)-n)` -/
def P10956095086111763725.Spec : Prop :=
  ∀ n, P10956095086111763725.a n = A053024 (n + 1)

end A053024

/-! ## A053024.P17391760961340978355

`(n+1)*sqrt(A069549(n+1))`
-/

namespace A053024.P17391760961340978355
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A069549 (n + 1) : ℝ)

end

end A053024.P17391760961340978355

namespace A053024

/-- `(n+1)*sqrt(A069549(n+1))` -/
def P17391760961340978355.Spec : Prop :=
  ∀ n, P17391760961340978355.a n = (A053024 (n + 1) : ℝ)

end A053024

/-! ## A053024.P18092685684521864134

`(n+1)*A000040(∑[C(∑{p}[n, #], n)])`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053024

/-- `(n+1)*A000040(∑[C(∑{p}[n, #], n)])` -/
def P18092685684521864134.Spec : Prop :=
  ∀ n, P18092685684521864134.a n = A053024 (n + 1)

theorem P18092685684521864134.correct : P18092685684521864134.Spec := by
  intro n
  simp only [A053024, Nat.add_sub_cancel]

end A053024

/-! ## A053024.P9319395475489057601

`(n+1)*(A007920(n+1)+1+n)`
-/

namespace A053024.P9319395475489057601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A007920 (n + 1) + 1 + (n : ℤ))

end

end A053024.P9319395475489057601

namespace A053024

/-- `(n+1)*(A007920(n+1)+1+n)` -/
def P9319395475489057601.Spec : Prop :=
  ∀ n, P9319395475489057601.a n = A053024 (n + 1)

end A053024

/-! ## A053024.P15945017756117144439

`A151800(n)+A013636(n)`
-/

namespace A053024.P15945017756117144439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n + A013636 n

end

end A053024.P15945017756117144439

namespace A053024

/-- `A151800(n)+A013636(n)` -/
def P15945017756117144439.Spec : Prop :=
  ∀ n, P15945017756117144439.a n = A053024 (n + 1)

end A053024

/-! ## A053024.P10703932879581886497

`A013636(n)+A007918(n+1)`
-/

namespace A053024.P10703932879581886497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013636 n + A007918 (n + 1)

end

end A053024.P10703932879581886497

namespace A053024

/-- `A013636(n)+A007918(n+1)` -/
def P10703932879581886497.Spec : Prop :=
  ∀ n, P10703932879581886497.a n = A053024 (n + 1)

end A053024

/-! ## A053024.P11956559425692348067

`A013632(n)+A013636(n)+n`
-/

namespace A053024.P11956559425692348067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n + (A013636 n + (n : ℤ))

end

end A053024.P11956559425692348067

namespace A053024

/-- `A013632(n)+A013636(n)+n` -/
def P11956559425692348067.Spec : Prop :=
  ∀ n, P11956559425692348067.a n = A053024 (n + 1)

end A053024

/-! ## A053024.P3024607204952394395

`(n+1)*A000040(∑[char[comp[A018252(n+1)]]])`
-/

namespace A053024.P3024607204952394395
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A053024.P3024607204952394395

namespace A053024

/-- `(n+1)*A000040(∑[char[comp[A018252(n+1)]]])` -/
def P3024607204952394395.Spec : Prop :=
  ∀ n, P3024607204952394395.a n = A053024 (n + 1)

end A053024

/-! ## A053024.P12864978014293966827

`(n+1)*A000040(∑[char[A000040(n+1)]]+1)`
-/

namespace A053024.P12864978014293966827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A053024.P12864978014293966827

namespace A053024

/-- `(n+1)*A000040(∑[char[A000040(n+1)]]+1)` -/
def P12864978014293966827.Spec : Prop :=
  ∀ n, P12864978014293966827.a n = A053024 (n + 1)

end A053024

/-! ## A053024.P16819203883462369337

`A151800(n)+lcm(A038608(n), A151800(n))`
-/

namespace A053024.P16819203883462369337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n + (Int.lcm (A038608 n) (A151800 n) : ℤ)

end

end A053024.P16819203883462369337

namespace A053024

/-- `A151800(n)+lcm(A038608(n), A151800(n))` -/
def P16819203883462369337.Spec : Prop :=
  ∀ n, P16819203883462369337.a n = A053024 (n + 1)

end A053024

/-! ## A053024.P674921699480661470

`lcm(A103164(n+1), A151800(n))`
-/

namespace A053024.P674921699480661470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103164 (n + 1)) (A151800 n)

end

end A053024.P674921699480661470

namespace A053024

/-- `lcm(A103164(n+1), A151800(n))` -/
def P674921699480661470.Spec : Prop :=
  ∀ n, (P674921699480661470.a n : ℤ) = A053024 (n + 1)

end A053024

/-! ## A053024.P17183783966874737585

`(n+1)*A308052(Δ[n²])`
-/

namespace A053024.P17183783966874737585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A308052 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A053024.P17183783966874737585

namespace A053024

/-- `(n+1)*A308052(Δ[n²])` -/
def P17183783966874737585.Spec : Prop :=
  ∀ n, P17183783966874737585.a n = A053024 (n + 1)

end A053024

/-! ## A053024.P17287554222905389163

`A151800(n)*A242112(2*n)`
-/

namespace A053024.P17287554222905389163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n * A242112 (2 * n)

end

end A053024.P17287554222905389163

namespace A053024

/-- `A151800(n)*A242112(2*n)` -/
def P17287554222905389163.Spec : Prop :=
  ∀ n, P17287554222905389163.a n = A053024 (n + 1)

end A053024

/-! ## A053024.P539208573775810035

`A308052(2*n+1)+A013636(n)`
-/

namespace A053024.P539208573775810035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (2 * n + 1) + A013636 n

end

end A053024.P539208573775810035

namespace A053024

/-- `A308052(2*n+1)+A013636(n)` -/
def P539208573775810035.Spec : Prop :=
  ∀ n, P539208573775810035.a n = A053024 (n + 1)

end A053024

/-! ## A053024.P5920652280456895279

`A076271(A013634(n))`
-/

namespace A053024.P5920652280456895279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076271 (A013634 n).toNat

end

end A053024.P5920652280456895279

namespace A053024

/-- `A076271(A013634(n))` -/
def P5920652280456895279.Spec : Prop :=
  ∀ n, P5920652280456895279.a n = A053024 (n + 1)

end A053024

/-!
# A053025: Number of iterations of the number of divisors function (A000005) required to reach a fixed point (1 or 2) when started at n!.

The programs for A053025, there is no canonical definition to state claims against.
-/

/-! ## A053025.P17585547014789620121

`A045997(n+1)+1`
-/

namespace A053025.P17585547014789620121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045997 (n + 1) + 1

end

end A053025.P17585547014789620121

/-! ## A053025.P9548836457597901331

`1-∑[-Δ[A045997(n)]]`
-/

namespace A053025.P9548836457597901331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045997 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053025.P9548836457597901331

/-! ## A053025.P2252430588311927921

`∑[Δ[A045997(n)]^A165581(n)²]`
-/

namespace A053025.P2252430588311927921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045997 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A165581 n ^ 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053025.P2252430588311927921

/-! ## A053025.P5400685070882428589

`2-∑[A000007(n)-Δ[A045997(n)]]`
-/

namespace A053025.P5400685070882428589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045997 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053025.P5400685070882428589

/-! ## A053025.P3520138766035416164

`∑[Δ[A045997(n)]^A019430(2*n)]`
-/

namespace A053025.P3520138766035416164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045997 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A019430 (2 * n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053025.P3520138766035416164

/-!
# A053026: Maximum power of 2 arising when A000005 is applied repeatedly to n!.

The programs for A053026, there is no canonical definition to state claims against.
-/

/-! ## A053026.P7011880620297517314

`2^A380802(n+1)`
-/

namespace A053026.P7011880620297517314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A380802 (n + 1) : ℤ)

end

end A053026.P7011880620297517314

/-! ## A053026.P12958920463288717426

`A000079(A380802(n+1))`
-/

namespace A053026.P12958920463288717426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A380802 (n + 1)).toNat

end

end A053026.P12958920463288717426

/-! ## A053026.P3882475355007064261

`A011782(A380802(n+1)+1)`
-/

namespace A053026.P3882475355007064261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A380802 (n + 1) + 1).toNat

end

end A053026.P3882475355007064261

/-! ## A053026.P3604868609861559336

`gcd(A122803(A380802(n+1)), A122803(n))`
-/

namespace A053026.P3604868609861559336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A122803 (A380802 (n + 1)).toNat) (A122803 n)

end

end A053026.P3604868609861559336

/-!
# A053027: Odd primes p with 2 zeros in Fibonacci numbers mod p.

The programs for A053027, there is no canonical definition to state claims against.
-/

/-! ## A053027.P3791360783106524231

`p?[A053030(n+1)]`
-/

namespace A053027.P3791360783106524231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053027.P3791360783106524231

/-! ## A053027.P3629872178262203777

`record[A006530(A053030(n+2))]`
-/

namespace A053027.P3629872178262203777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A053030 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053027.P3629872178262203777

/-! ## A053027.P3796746025679855657

`∩[A000040(n+1), A053030(n+1)]`
-/

namespace A053027.P3796746025679855657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053027.P3796746025679855657

/-! ## A053027.P6416440569660615963

`∩[A004139(n+1), A053030(n+1)]`
-/

namespace A053027.P6416440569660615963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053027.P6416440569660615963

/-! ## A053027.P13871193779482610958

`∩[A006005(n+1), A053030(n+1)]`
-/

namespace A053027.P13871193779482610958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053027.P13871193779482610958

/-! ## A053027.P5994706337866253290

`∩[A008578(n+1), A053030(n+1)]`
-/

namespace A053027.P5994706337866253290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053027.P5994706337866253290

/-! ## A053027.P12934655165211440030

`∩[A045319(n+1), A053030(n+1)]`
-/

namespace A053027.P12934655165211440030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053027.P12934655165211440030

/-! ## A053027.P5234633241932142467

`∩[A045323(n+1), A053030(n+1)]`
-/

namespace A053027.P5234633241932142467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053027.P5234633241932142467

/-! ## A053027.P17506150292604553129

`∩[A045419(n+1), A053030(n+1)]`
-/

namespace A053027.P17506150292604553129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053027.P17506150292604553129

/-! ## A053027.P11836910625960333214

`∩[A046022(n+1), A053030(n+1)]`
-/

namespace A053027.P11836910625960333214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053030 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053027.P11836910625960333214

/-! ## A053027.P1410840327584120489

`∩[A053030(n+1), A065091(n+1)]`
-/

namespace A053027.P1410840327584120489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053027.P1410840327584120489

/-! ## A053027.P738428803129847883

`∩[A053030(n+1), A091727(n+1)]`
-/

namespace A053027.P738428803129847883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053030 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091727 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053027.P738428803129847883

/-! ## A053027.P7156101334958492634

`p?[(n+1)*(A001176(n+1)-1)]`
-/

namespace A053027.P7156101334958492634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A001176 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053027.P7156101334958492634

/-! ## A053027.P344183375144978843

`record[A014963(A217036(n+3)+1)]`
-/

namespace A053027.P344183375144978843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A217036 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053027.P344183375144978843

/-! ## A053027.P13042227650068167326

`p?[lcm(n+1, A237517(4*(n+1)))]`
-/

namespace A053027.P13042227650068167326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A237517 (4 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A053027.P13042227650068167326

/-! ## A053027.P5389077596391267516

`p?[A237517(A001749(n+1)%A261580(n+1))]`
-/

namespace A053027.P5389077596391267516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237517 (Int.tmod (A001749 (n + 1)) (A261580 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053027.P5389077596391267516

/-! ## A053027.P10584979740079274696

`p?[A171435(A124378(n+1))]`
-/

namespace A053027.P10584979740079274696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A124378 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053027.P10584979740079274696

/-!
# A053028: Odd primes p with 4 zeros in any period of the Fibonacci numbers mod p.

The programs for A053028, there is no canonical definition to state claims against.
-/

/-! ## A053028.P15519064677727015801

`p?[A053029(n+1)]`
-/

namespace A053028.P15519064677727015801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053028.P15519064677727015801

/-! ## A053028.P15793266835726699660

`∩[A002144(n+1), A053029(n+1)]`
-/

namespace A053028.P15793266835726699660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P15793266835726699660

/-! ## A053028.P12088096840312850655

`∩[A002313(n+1), A053029(n+1)]`
-/

namespace A053028.P12088096840312850655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P12088096840312850655

/-! ## A053028.P3673700411372113094

`∩[A042998(n+1), A053029(n+1)]`
-/

namespace A053028.P3673700411372113094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P3673700411372113094

/-! ## A053028.P2348119722427968949

`∩[A045352(n+1), A053029(n+1)]`
-/

namespace A053028.P2348119722427968949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P2348119722427968949

/-! ## A053028.P462145598712563429

`∩[A045403(n+1), A053029(n+1)]`
-/

namespace A053028.P462145598712563429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P462145598712563429

/-! ## A053028.P6792734384878726674

`∩[A045442(n+1), A053029(n+1)]`
-/

namespace A053028.P6792734384878726674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P6792734384878726674

/-! ## A053028.P8231025623649030360

`∩[A049092(n+1), A053029(n+1)]`
-/

namespace A053028.P8231025623649030360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P8231025623649030360

/-! ## A053028.P189550440021312670

`∩[A055025(n+1), A053029(n+1)]`
-/

namespace A053028.P189550440021312670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P189550440021312670

/-! ## A053028.P12038894573311762700

`∩[A000040(n+1), A053029(n+1)]`
-/

namespace A053028.P12038894573311762700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P12038894573311762700

/-! ## A053028.P7146892541075670397

`∩[A006005(n+1), A053029(n+1)]`
-/

namespace A053028.P7146892541075670397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P7146892541075670397

/-! ## A053028.P11090649164198217386

`∩[A008578(n+1), A053029(n+1)]`
-/

namespace A053028.P11090649164198217386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P11090649164198217386

/-! ## A053028.P4264244156016619214

`∩[A045344(n+1), A053029(n+1)]`
-/

namespace A053028.P4264244156016619214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P4264244156016619214

/-! ## A053028.P17298401955275473945

`∩[A046022(n+1), A053029(n+1)]`
-/

namespace A053028.P17298401955275473945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P17298401955275473945

/-! ## A053028.P8495334303518833773

`∩[A033946(n+1), A053029(n+1)]`
-/

namespace A053028.P8495334303518833773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P8495334303518833773

/-! ## A053028.P8783287175712073301

`∩[A051948(n+1), A053029(n+1)]`
-/

namespace A053028.P8783287175712073301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P8783287175712073301

/-! ## A053028.P11064900436183815713

`∩[A053029(n+1), A053813(n+1)]`
-/

namespace A053028.P11064900436183815713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P11064900436183815713

/-! ## A053028.P2788309830885496009

`∩[A053029(n+1), A062972(n+1)]`
-/

namespace A053028.P2788309830885496009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P2788309830885496009

/-! ## A053028.P16613724223503928617

`∩[A053029(n+1), A067126(n+1)]`
-/

namespace A053028.P16613724223503928617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P16613724223503928617

/-! ## A053028.P9751209552236906427

`∩[A075763(n+1), A053029(n+1)]`
-/

namespace A053028.P9751209552236906427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053028.P9751209552236906427

/-!
# A053029: Numbers with 4 zeros in Fibonacci numbers mod m.

The programs for A053029, there is no canonical definition to state claims against.
-/

/-! ## A053029.P2037195017753024398

`lt[2, A001176(n+1)]+1`
-/

namespace A053029.P2037195017753024398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A053029.P2037195017753024398

/-! ## A053029.P12484389880553309658

`A098180(eq[4, A001176(n+1)])`
-/

namespace A053029.P12484389880553309658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053029.P12484389880553309658

/-! ## A053029.P11951284868775665572

`A153152(eq[4, A001176(n+1)])`
-/

namespace A053029.P11951284868775665572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053029.P11951284868775665572

/-! ## A053029.P15682669631688175683

`eq[4, A001176(A138153(n+1))]`
-/

namespace A053029.P15682669631688175683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A138153 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053029.P15682669631688175683

/-! ## A053029.P4812041137439902491

`eq[4, A001176(A257174(n))]`
-/

namespace A053029.P4812041137439902491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A257174 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053029.P4812041137439902491

/-! ## A053029.P767258891329548312

`A080513(A005843(eq[4, A001176(n+1)]))`
-/

namespace A053029.P767258891329548312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A053029.P767258891329548312

/-! ## A053029.P14538984080444319778

`eq[4, A001176(A233583(n+1))]`
-/

namespace A053029.P14538984080444319778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053029.P14538984080444319778

/-!
# A053030: Numbers with 2 zeros in Fibonacci numbers mod m.

The programs for A053030, there is no canonical definition to state claims against.
-/

/-! ## A053030.P18030105056147717453

`eq[2, A001176(n+1)]+1`
-/

namespace A053030.P18030105056147717453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053030.P18030105056147717453

/-! ## A053030.P12477918534637644289

`eq[2, A001176(gcd(n, A008486(n)))]`
-/

namespace A053030.P12477918534637644289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (Int.gcd (n : ℤ) (A008486 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053030.P12477918534637644289

/-! ## A053030.P11253039291057675472

`eq[2, A001176(A000007(n)+n)]`
-/

namespace A053030.P11253039291057675472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053030.P11253039291057675472

/-! ## A053030.P8379104328807018792

`eq[2, A001176(A123108(2*n))]`
-/

namespace A053030.P8379104328807018792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053030.P8379104328807018792

/-! ## A053030.P13546975864680967786

`eq[2, A001176(A233583(n+1))]`
-/

namespace A053030.P13546975864680967786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053030.P13546975864680967786

/-! ## A053030.P9265776806571178321

`eq[2, A001176(A003056(A000124(n)))]`
-/

namespace A053030.P9265776806571178321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A003056 (A000124 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053030.P9265776806571178321

/-! ## A053030.P12846133185761670631

`eq[2, A001176(A134478(A000217(n)))]`
-/

namespace A053030.P12846133185761670631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A134478 (A000217 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053030.P12846133185761670631

/-!
# A053031: Numbers with 1 zero in Fibonacci numbers mod m.

The programs for A053031, there is no canonical definition to state claims against.
-/

/-! ## A053031.P9464451264297826003

`eq[1, A001176(n+1)]+1`
-/

namespace A053031.P9464451264297826003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A053031.P9464451264297826003

/-! ## A053031.P3872563938422830194

`record[A038502(n+1)/A001176(n+1)]`
-/

namespace A053031.P3872563938422830194
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038502 (n + 1) : ℚ) / (A001176 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053031.P3872563938422830194

/-! ## A053031.P1832556976999649282

`record[A305211(n+1)/A001176(n+1)]`
-/

namespace A053031.P1832556976999649282
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305211 (n + 1) : ℚ) / (A001176 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053031.P1832556976999649282

/-! ## A053031.P336072344879269860

`record[root(A000027(n+1), A001176(n+1))]`
-/

namespace A053031.P336072344879269860
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℝ) ^ (1 / (A001176 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053031.P336072344879269860

/-! ## A053031.P17434435100536960778

`record[1-A001489(n)^A001176(n+1)]`
-/

namespace A053031.P17434435100536960778
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (A001489 n : ℚ) ^ (A001176 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053031.P17434435100536960778

/-! ## A053031.P18169612885817241723

`record[A005408(n)-n*A001176(n+1)]`
-/

namespace A053031.P18169612885817241723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) * A001176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053031.P18169612885817241723

/-! ## A053031.P9702157172065223986

`eq[A001175(n+1), A001177(n+1)]+1`
-/

namespace A053031.P9702157172065223986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053031.P9702157172065223986

/-! ## A053031.P15826523970403216408

`eq[A001177(n+1), A106291(n+1)]+1`
-/

namespace A053031.P15826523970403216408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053031.P15826523970403216408

/-! ## A053031.P5503749705674353581

`record[gcd(n+1, A005563(n)+A001176(n+1))]`
-/

namespace A053031.P5503749705674353581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A005563 n + A001176 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053031.P5503749705674353581

/-! ## A053031.P9270071339645185971

`record[(n+1)/A001176(n+1)^A001176(n+2)]`
-/

namespace A053031.P9270071339645185971
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001176 (n + 1) : ℚ) ^ (A001176 (n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053031.P9270071339645185971

/-! ## A053031.P827165258745736261

`eq[n, A001176(A257174(n))*A257174(n)]`
-/

namespace A053031.P827165258745736261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (A257174 n).toNat * A257174 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A053031.P827165258745736261

/-! ## A053031.P12221352418564942464

`eq[A029579(A281230(n+1)), A281230(n+1)]+1`
-/

namespace A053031.P12221352418564942464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A281230 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281230 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A053031.P12221352418564942464

/-! ## A053031.P5059758083936711200

`record[A131732(A005408(n)-A001176(n+1))]`
-/

namespace A053031.P5059758083936711200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A005408 n - A001176 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053031.P5059758083936711200

/-! ## A053031.P10580226996593344479

`record[n+1-A004532(A001175(n+1))]`
-/

namespace A053031.P10580226996593344479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A004532 (A001175 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053031.P10580226996593344479

/-!
# A053032: Odd primes p with one zero in Fibonacci numbers mod p.

The programs for A053032, there is no canonical definition to state claims against.
-/

/-! ## A053032.P16578407261608217094

`A112860(n+2)`
-/

namespace A053032.P16578407261608217094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112860 (n + 2)

end

end A053032.P16578407261608217094

/-! ## A053032.P3409867254092598663

`p?[A053031(n+3)]`
-/

namespace A053032.P3409867254092598663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053032.P3409867254092598663

/-! ## A053032.P17267892898769438325

`∩[A038872(n+1), A053031(n+1)]`
-/

namespace A053032.P17267892898769438325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053032.P17267892898769438325

/-! ## A053032.P10891812938988548574

`∩[A045405(n+1), A053031(n+1)]`
-/

namespace A053032.P10891812938988548574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053032.P10891812938988548574

/-! ## A053032.P6882632042047261836

`∩[A045428(n+1), A053031(n+1)]`
-/

namespace A053032.P6882632042047261836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053032.P6882632042047261836

/-! ## A053032.P1335109287949688201

`∩[A045468(n+1), A053031(n+1)]`
-/

namespace A053032.P1335109287949688201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053032.P1335109287949688201

/-! ## A053032.P4577358665086733685

`∩[A045348(n+2), A053031(n+2)]`
-/

namespace A053032.P4577358665086733685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053032.P4577358665086733685

/-! ## A053032.P931605760963589651

`∩[A045371(n+2), A053031(n+2)]`
-/

namespace A053032.P931605760963589651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053032.P931605760963589651

/-! ## A053032.P11103333554021771945

`∩[A053031(n+2), A064739(n+2)]`
-/

namespace A053032.P11103333554021771945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064739 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053032.P11103333554021771945

/-! ## A053032.P17884082862030697304

`∩[A004139(n+1), A053031(n+1)]`
-/

namespace A053032.P17884082862030697304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053032.P17884082862030697304

/-! ## A053032.P1531968037934591309

`∩[A053031(n+1), A065091(n+1)]`
-/

namespace A053032.P1531968037934591309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053032.P1531968037934591309

/-! ## A053032.P2213619943262687670

`∩[A053031(n+1), A083249(n+1)]`
-/

namespace A053032.P2213619943262687670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053032.P2213619943262687670

/-! ## A053032.P9346710229428732701

`∩[A053031(n+1), A162788(n+1)]`
-/

namespace A053032.P9346710229428732701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053032.P9346710229428732701

/-! ## A053032.P12648854090746458664

`∩[A053031(n+1), A000040(n+2)]`
-/

namespace A053032.P12648854090746458664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053032.P12648854090746458664

/-! ## A053032.P13333714140537411165

`∩[A053031(n+1), A045319(n+2)]`
-/

namespace A053032.P13333714140537411165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053032.P13333714140537411165

/-! ## A053032.P4495306318772219253

`∩[A053031(n+1), A045344(n+2)]`
-/

namespace A053032.P4495306318772219253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053032.P4495306318772219253

/-! ## A053032.P7430652153989021434

`∩[A053031(n+2), A116974(n+2)]`
-/

namespace A053032.P7430652153989021434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053032.P7430652153989021434

/-! ## A053032.P18146110794467856830

`∩[A053031(n+1), A064728(n+1)]`
-/

namespace A053032.P18146110794467856830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053032.P18146110794467856830

/-! ## A053032.P5320070050662289282

`∩[A162787(n+1), A053031(n+1)]`
-/

namespace A053032.P5320070050662289282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053032.P5320070050662289282

/-! ## A053032.P354523287001572972

`∩[A053031(n+1), A053813(n+2)]`
-/

namespace A053032.P354523287001572972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053032.P354523287001572972

/-!
# A053033: Numbers which are the average of two primes in more ways than any smaller number.

The programs for A053033, there is no canonical definition to state claims against.
-/

/-! ## A053033.P18169597670532046256

`A109679(n+1)/2`
-/

namespace A053033.P18169597670532046256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109679 (n + 1) : ℚ) / 2

end

end A053033.P18169597670532046256

/-! ## A053033.P15319732483080613950

`2^A008683(A142644(n+1))*A109679(n+1)`
-/

namespace A053033.P15319732483080613950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A142644 (n + 1)).toNat : ℤ) * (A109679 (n + 1) : ℚ)

end

end A053033.P15319732483080613950

/-! ## A053033.P10078574979221217930

`A273943(A109679(n+1))`
-/

namespace A053033.P10078574979221217930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A109679 (n + 1)).toNat

end

end A053033.P10078574979221217930

/-! ## A053033.P16218190580045046276

`A014682(lcm(2, A109679(n+1)))`
-/

namespace A053033.P16218190580045046276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A109679 (n + 1)))

end

end A053033.P16218190580045046276

/-! ## A053033.P898569354416601597

`A014682(A109679(n+1)+2)-1`
-/

namespace A053033.P898569354416601597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A109679 (n + 1) + 2).toNat - 1

end

end A053033.P898569354416601597

/-! ## A053033.P5374877213925695703

`A014682(A109679(n+1)%A028965(n+1))`
-/

namespace A053033.P5374877213925695703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.tmod (A109679 (n + 1)) (A028965 (n + 1))).toNat

end

end A053033.P5374877213925695703

/-! ## A053033.P11465487509445711171

`A033999(2*n+1)+A014682(A109679(n+1)+2)`
-/

namespace A053033.P11465487509445711171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A014682 (A109679 (n + 1) + 2).toNat

end

end A053033.P11465487509445711171

/-! ## A053033.P10141407563234218764

`A057078(A055247(2*(n+1)))+A014682(A109679(n+1)+2)`
-/

namespace A053033.P10141407563234218764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (A055247 (2 * (n + 1))).toNat + A014682 (A109679 (n + 1) + 2).toNat

end

end A053033.P10141407563234218764

/-! ## A053033.P14887492039429874395

`A136244(record[A002375(n+1)])`
-/

namespace A053033.P14887492039429874395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136244 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053033.P14887492039429874395

/-! ## A053033.P9499721536718754741

`A136244(record[A045917(n+1)])`
-/

namespace A053033.P9499721536718754741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136244 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A053033.P9499721536718754741

/-!
# A053034: Length of sequence when A051953 (cototient function) is repeatedly applied starting with n!.

The programs for A053034, there is no canonical definition to state claims against.
-/

/-! ## A053034.P1516853543014291754

`A053036(n+1)+A053035(n+1)`
-/

namespace A053034.P1516853543014291754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053036 (n + 1) + A053035 (n + 1)

end

end A053034.P1516853543014291754

/-! ## A053034.P17601902942976768191

`A053036(n+1)+A053039(n+1)+1`
-/

namespace A053034.P17601902942976768191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053036 (n + 1) + (A053039 (n + 1) + 1)

end

end A053034.P17601902942976768191

/-! ## A053034.P16059449703760237037

`A053036(n+1)+log2(A053038(n+1))+1`
-/

namespace A053034.P16059449703760237037
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053036 (n + 1) : ℝ) + (Real.logb 2 (A053038 (n + 1) : ℝ) + 1)

end

end A053034.P16059449703760237037

/-! ## A053034.P2723718272486446736

`A020725(A053039(n+1)+A053036(n+1))`
-/

namespace A053034.P2723718272486446736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A053039 (n + 1) + A053036 (n + 1)).toNat

end

end A053034.P2723718272486446736

/-! ## A053034.P5333661460746473576

`A053036(n+1)+A028310(val(A053038(n+1), 2)+1)`
-/

namespace A053034.P5333661460746473576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053036 (n + 1) + A028310 (SequenceMachineLib.valuation (A053038 (n + 1)).toNat 2 + 1)

end

end A053034.P5333661460746473576

/-!
# A053035: Number of powers of 2 in the iteration-sequence when A051953 (cototient function) is repeatedly applied starting with n!.

The programs for A053035, there is no canonical definition to state claims against.
-/

/-! ## A053035.P10444552613364334362

`A053039(n+1)+1`
-/

namespace A053035.P10444552613364334362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053039 (n + 1) + 1

end

end A053035.P10444552613364334362

/-! ## A053035.P17814144958769755348

`log2(A053038(n+1))+1`
-/

namespace A053035.P17814144958769755348
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A053038 (n + 1) : ℝ) + 1

end

end A053035.P17814144958769755348

/-! ## A053035.P1576400956632907313

`A028310(val(A053038(n+1), 2)+1)`
-/

namespace A053035.P1576400956632907313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.valuation (A053038 (n + 1)).toNat 2 + 1)

end

end A053035.P1576400956632907313

/-! ## A053035.P7535256757116174576

`A023443(val(A053038(n+1), 2)+2)`
-/

namespace A053035.P7535256757116174576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.valuation (A053038 (n + 1)).toNat 2 + 2)

end

end A053035.P7535256757116174576

/-! ## A053035.P10516992709990308438

`A053034(n+1)-A053036(n+1)`
-/

namespace A053035.P10516992709990308438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053034 (n + 1) - A053036 (n + 1)

end

end A053035.P10516992709990308438

/-!
# A053036: Number of values which are not powers of 2 in the trajectory when A051953 (cototient function) is repeatedly applied starting with n!.

The programs for A053036, there is no canonical definition to state claims against.
-/

/-! ## A053036.P16582726290977724002

`A053034(n+1)-A053035(n+1)`
-/

namespace A053036.P16582726290977724002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053034 (n + 1) - A053035 (n + 1)

end

end A053036.P16582726290977724002

/-! ## A053036.P16160915364501851165

`A053034(n+1)-(A053039(n+1)+1)`
-/

namespace A053036.P16160915364501851165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053034 (n + 1) - (A053039 (n + 1) + 1)

end

end A053036.P16160915364501851165

/-! ## A053036.P11502137918890611798

`A053034(n+1)-(log2(A053038(n+1))+1)`
-/

namespace A053036.P11502137918890611798
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A053034 (n + 1) : ℝ) - (Real.logb 2 (A053038 (n + 1) : ℝ) + 1)

end

end A053036.P11502137918890611798

/-! ## A053036.P6289290138709191160

`A023443(A053034(n+1)-A053039(n+1))`
-/

namespace A053036.P6289290138709191160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053034 (n + 1) - A053039 (n + 1)).toNat

end

end A053036.P6289290138709191160

/-!
# A053037: Number of self-complementary types of Boolean functions of n variables under action of AG(n,2).

The programs for A053037, there is no canonical definition to state claims against.
-/

/-! ## A053037.P1619392075592653037

`A000214(n+1)-A049461(n+2)`
-/

namespace A053037.P1619392075592653037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000214 (n + 1) - A049461 (n + 2)

end

end A053037.P1619392075592653037

/-! ## A053037.P14747716829590598735

`2*A000614(n+1)-A000214(n+1)`
-/

namespace A053037.P14747716829590598735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000614 (n + 1) - A000214 (n + 1)

end

end A053037.P14747716829590598735

/-! ## A053037.P6942371954111532358

`A000614(n+1)-A049461(n+2)/2`
-/

namespace A053037.P6942371954111532358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000614 (n + 1) : ℚ) - (A049461 (n + 2) : ℚ) / 2

end

end A053037.P6942371954111532358

/-! ## A053037.P7007630621915459562

`A000214(A199343(n))%A049461(n+2)`
-/

namespace A053037.P7007630621915459562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000214 (A199343 n).toNat) (A049461 (n + 2))

end

end A053037.P7007630621915459562

/-!
# A053038: The first (largest) power of 2 arising in the iteration-sequence when A051953 (the cototient function) is repeatedly applied starting with n!.

The programs for A053038, there is no canonical definition to state claims against.
-/

/-! ## A053038.P16477999238374407674

`2^A053039(n+1)`
-/

namespace A053038.P16477999238374407674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A053039 (n + 1) : ℤ)

end

end A053038.P16477999238374407674

/-! ## A053038.P12455839116785035174

`2^(A053035(n+1)-1)`
-/

namespace A053038.P12455839116785035174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A053035 (n + 1) - 1 : ℤ)

end

end A053038.P12455839116785035174

/-! ## A053038.P16947434309203687518

`A000079(A053039(n+1))`
-/

namespace A053038.P16947434309203687518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A053039 (n + 1)).toNat

end

end A053038.P16947434309203687518

/-! ## A053038.P12702491027511217009

`A011782(A053035(n+1))`
-/

namespace A053038.P12702491027511217009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A053035 (n + 1)).toNat

end

end A053038.P12702491027511217009

/-! ## A053038.P7604945140119994769

`A011782(A053039(n+1)+1)`
-/

namespace A053038.P7604945140119994769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A053039 (n + 1) + 1).toNat

end

end A053038.P7604945140119994769

/-! ## A053038.P1102970060317772179

`A000079(A053035(n+1)-1)`
-/

namespace A053038.P1102970060317772179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A053035 (n + 1) - 1).toNat

end

end A053038.P1102970060317772179

/-!
# A053039: Exponent of largest power of 2 which appears in the cototient-iteration started with n!.

The programs for A053039, there is no canonical definition to state claims against.
-/

/-! ## A053039.P11010114840522719728

`A053035(n+1)-1`
-/

namespace A053039.P11010114840522719728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053035 (n + 1) - 1

end

end A053039.P11010114840522719728

/-! ## A053039.P395732860879220763

`A023443(A053035(n+1))`
-/

namespace A053039.P395732860879220763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053035 (n + 1)).toNat

end

end A053039.P395732860879220763

/-! ## A053039.P15159985357872889492

`A023444(A053035(n+1)+1)`
-/

namespace A053039.P15159985357872889492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A053035 (n + 1) + 1).toNat

end

end A053039.P15159985357872889492

/-! ## A053039.P18292729020979356291

`A289207(A053035(n+1)+1)`
-/

namespace A053039.P18292729020979356291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A053035 (n + 1) + 1).toNat

end

end A053039.P18292729020979356291

/-! ## A053039.P5289985471977141479

`A023446(A053035(n+1)+3)`
-/

namespace A053039.P5289985471977141479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A053035 (n + 1) + 3).toNat

end

end A053039.P5289985471977141479

/-! ## A053039.P6310931389883193798

`A065423(2*A053035(n+1))`
-/

namespace A053039.P6310931389883193798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A053035 (n + 1)).toNat

end

end A053039.P6310931389883193798

/-! ## A053039.P8725231469025863387

`A140106(2*A053035(n+1))`
-/

namespace A053039.P8725231469025863387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A053035 (n + 1)).toNat

end

end A053039.P8725231469025863387

/-! ## A053039.P4887234991676627334

`A023448(A053035(n+1)+5)`
-/

namespace A053039.P4887234991676627334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023448 (A053035 (n + 1) + 5).toNat

end

end A053039.P4887234991676627334

/-! ## A053039.P9219641136558332165

`A059169(4*A053035(n+1))`
-/

namespace A053039.P9219641136558332165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A053035 (n + 1)).toNat

end

end A053039.P9219641136558332165

/-! ## A053039.P3852070103574408416

`A057428(n+1)+A053035(n+1)`
-/

namespace A053039.P3852070103574408416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A053035 (n + 1)

end

end A053039.P3852070103574408416

/-!
# A053040: Number of self-complementary types of Boolean functions of n variables under action of affine self-dual group M(n,2).

The programs for A053040, there is no canonical definition to state claims against.
-/

/-! ## A053040.P10352388031526917167

`2*A028404(n+1)-A028405(n+1)`
-/

namespace A053040.P10352388031526917167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028404 (n + 1) - A028405 (n + 1)

end

end A053040.P10352388031526917167

/-! ## A053040.P9136495083278890246

`A028405(n+1)+A049461(n+2)-A000585(n+1)`
-/

namespace A053040.P9136495083278890246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028405 (n + 1) + (A049461 (n + 2) - A000585 (n + 1))

end

end A053040.P9136495083278890246

/-! ## A053040.P12475241512894980464

`(A049461(n+2)+A028405(n+1))%A000613(n+1)`
-/

namespace A053040.P12475241512894980464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049461 (n + 2) + A028405 (n + 1)) (A000613 (n + 1))

end

end A053040.P12475241512894980464

/-!
# A053041: Smallest n-digit number divisible by n.

The programs for A053041, the canonical program `A053041.P17038773599476847992` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053041 has offset 1).

The definition of A053041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053041.P17038773599476847992

`ceil(10^n/(n+1))*(n+1)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053041

/-- `ceil(10^n/(n+1))*(n+1)` -/
def P17038773599476847992.Spec : Prop :=
  ∀ n, P17038773599476847992.a n = A053041 (n + 1)

theorem P17038773599476847992.correct : P17038773599476847992.Spec := by
  intro n
  simp only [A053041, Nat.add_sub_cancel]

end A053041

/-! ## A053041.P13251827137186272220

`A066209(n+1)+A011557(n)`
-/

namespace A053041.P13251827137186272220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066209 (n + 1) + A011557 n

end

end A053041.P13251827137186272220

namespace A053041

/-- `A066209(n+1)+A011557(n)` -/
def P13251827137186272220.Spec : Prop :=
  ∀ n, P13251827137186272220.a n = A053041 (n + 1)

theorem P13251827137186272220.correct : P13251827137186272220.Spec := by
  intro n
  simp only [A053041, Nat.add_sub_cancel, A053041.P13251827137186272220.a, A053041.P17038773599476847992.a, A011557, A011557.P11220211478167790856.a, A066209, A066209.P1765855322789560175.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053041

/-! ## A053041.P11705839301614574995

`A066209(n+1)+Δ[A002275(n)]`
-/

namespace A053041.P11705839301614574995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066209 (n + 1) + (f1 (n + 1) - f1 n)

end

end A053041.P11705839301614574995

namespace A053041

/-- `A066209(n+1)+Δ[A002275(n)]` -/
def P11705839301614574995.Spec : Prop :=
  ∀ n, P11705839301614574995.a n = A053041 (n + 1)

end A053041

/-! ## A053041.P3762862259743069034

`A066559(n+1)+n*A066559(n+1)`
-/

namespace A053041.P3762862259743069034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066559 (n + 1) + (n : ℤ) * A066559 (n + 1)

end

end A053041.P3762862259743069034

namespace A053041

/-- `A066559(n+1)+n*A066559(n+1)` -/
def P3762862259743069034.Spec : Prop :=
  ∀ n, P3762862259743069034.a n = A053041 (n + 1)

theorem P3762862259743069034.correct : P3762862259743069034.Spec := by
  intro n
  simp only [A053041, Nat.add_sub_cancel, A053041.P3762862259743069034.a, A053041.P17038773599476847992.a, A066559, A066559.P5954974370800163633.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053041

/-! ## A053041.P6166166160489581684

`A081552(n+1)-A024118(n)%(n+1)`
-/

namespace A053041.P6166166160489581684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081552 (n + 1) - Int.tmod (A024118 n) (n + 1 : ℤ)

end

end A053041.P6166166160489581684

namespace A053041

/-- `A081552(n+1)-A024118(n)%(n+1)` -/
def P6166166160489581684.Spec : Prop :=
  ∀ n, P6166166160489581684.a n = A053041 (n + 1)

end A053041

/-! ## A053041.P3838136453627788472

`A081552(n+1)-A024120(n)%(n+1)`
-/

namespace A053041.P3838136453627788472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081552 (n + 1) - Int.tmod (A024120 n) (n + 1 : ℤ)

end

end A053041.P3838136453627788472

namespace A053041

/-- `A081552(n+1)-A024120(n)%(n+1)` -/
def P3838136453627788472.Spec : Prop :=
  ∀ n, P3838136453627788472.a n = A053041 (n + 1)

end A053041

/-!
# A053042: a(n) = n^n + n!.

The programs for A053042, the canonical program `A053042.P14016012683932968061` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053042 has offset 1).

The definition of A053042 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^(n+1)+(n+1)!` (program `A053042.P14016012683932968061`, by `A053042.P14016012683932968061.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053042.P14016012683932968061

`(n+1)^(n+1)+(n+1)!`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053042

/-- `(n+1)^(n+1)+(n+1)!` -/
def P14016012683932968061.Spec : Prop :=
  ∀ n, (P14016012683932968061.a n : ℤ) = A053042 (n + 1)

theorem P14016012683932968061.correct : P14016012683932968061.Spec := by
  intro n
  simp only [A053042, Nat.add_sub_cancel]

end A053042

/-! ## A053042.P16374664099048360041

`∏[n+1]+(n+1)^(n+1)`
-/

namespace A053042.P16374664099048360041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ (n + 1)

end

end A053042.P16374664099048360041

namespace A053042

/-- `∏[n+1]+(n+1)^(n+1)` -/
def P16374664099048360041.Spec : Prop :=
  ∀ n, (P16374664099048360041.a n : ℤ) = A053042 (n + 1)

theorem P16374664099048360041.correct : P16374664099048360041.Spec := by
  intro n
  simp only [A053042, Nat.add_sub_cancel, A053042.P16374664099048360041.f1, A053042.P16374664099048360041.a, A053042.P14016012683932968061.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A053042

/-! ## A053042.P2512366900294644065

`(n+1)*A301347(n+1)`
-/

namespace A053042.P2512366900294644065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A301347 (n + 1)

end

end A053042.P2512366900294644065

namespace A053042

/-- `(n+1)*A301347(n+1)` -/
def P2512366900294644065.Spec : Prop :=
  ∀ n, P2512366900294644065.a n = A053042 (n + 1)

end A053042

/-! ## A053042.P9912434847604176608

`(n+1)*(A000169(n+1)+n!)`
-/

namespace A053042.P9912434847604176608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000169 (n + 1) + (Nat.factorial n : ℤ))

end

end A053042.P9912434847604176608

namespace A053042

/-- `(n+1)*(A000169(n+1)+n!)` -/
def P9912434847604176608.Spec : Prop :=
  ∀ n, P9912434847604176608.a n = A053042 (n + 1)

end A053042

/-! ## A053042.P15094736069247555694

`(n+1)*(A000142(n)+(n+1)^n)`
-/

namespace A053042.P15094736069247555694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000142 n + ((n + 1) ^ n : ℤ))

end

end A053042.P15094736069247555694

namespace A053042

/-- `(n+1)*(A000142(n)+(n+1)^n)` -/
def P15094736069247555694.Spec : Prop :=
  ∀ n, P15094736069247555694.a n = A053042 (n + 1)

end A053042

/-! ## A053042.P6348189048303916250

`record[A174551(n)+A098361(n)]`
-/

namespace A053042.P6348189048303916250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 n + A098361 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053042.P6348189048303916250

namespace A053042

/-- `record[A174551(n)+A098361(n)]` -/
def P6348189048303916250.Spec : Prop :=
  ∀ n, P6348189048303916250.a n = A053042 (n + 1)

end A053042

/-! ## A053042.P6322591998820717994

`record[A048594(n+1)+A033918(n+1)]`
-/

namespace A053042.P6322591998820717994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048594 (n + 1) + A033918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053042.P6322591998820717994

namespace A053042

/-- `record[A048594(n+1)+A033918(n+1)]` -/
def P6322591998820717994.Spec : Prop :=
  ∀ n, P6322591998820717994.a n = A053042 (n + 1)

end A053042

/-! ## A053042.P8094394675114067946

`record[A166350(n+1)+A033918(n+1)]`
-/

namespace A053042.P8094394675114067946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1) + A033918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053042.P8094394675114067946

namespace A053042

/-- `record[A166350(n+1)+A033918(n+1)]` -/
def P8094394675114067946.Spec : Prop :=
  ∀ n, P8094394675114067946.a n = A053042 (n + 1)

end A053042

/-! ## A053042.P13315704824050835831

`record[A174551(A061579(n))+A174551(n)]`
-/

namespace A053042.P13315704824050835831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174551 (A061579 n).toNat + A174551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053042.P13315704824050835831

namespace A053042

/-- `record[A174551(A061579(n))+A174551(n)]` -/
def P13315704824050835831.Spec : Prop :=
  ∀ n, P13315704824050835831.a n = A053042 (n + 1)

end A053042

/-! ## A053042.P4732342454097532435

`(A095996(n+1)+A036505(n))*A051696(n+1)`
-/

namespace A053042.P4732342454097532435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A095996 (n + 1) + A036505 n) * A051696 (n + 1)

end

end A053042.P4732342454097532435

namespace A053042

/-- `(A095996(n+1)+A036505(n))*A051696(n+1)` -/
def P4732342454097532435.Spec : Prop :=
  ∀ n, P4732342454097532435.a n = A053042 (n + 1)

end A053042

/-!
# A053043: Number of facets of hypermetric correlation cone.

The programs for A053043, there is no canonical definition to state claims against.
-/

/-! ## A053043.P8471209655536001791

`A059897(A372073(2*n+1)+A000169(n+2))`
-/

namespace A053043.P8471209655536001791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (A372073 (2 * n + 1) + A000169 (n + 2)).toNat

end

end A053043.P8471209655536001791

/-!
# A053044: a(n) is the number of iterations of the Euler totient function to reach 1, starting at n!.

The programs for A053044, the canonical program `A053044.P12715760243015014670` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053044 has offset 1).

The definition of A053044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053044.P15864715770090848612

`∑[A064415(n+1)]`
-/

namespace A053044.P15864715770090848612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053044.P15864715770090848612

namespace A053044

/-- `∑[A064415(n+1)]` -/
def P15864715770090848612.Spec : Prop :=
  ∀ n, P15864715770090848612.a n = A053044 (n + 1)

end A053044

/-! ## A053044.P8057596989650702216

`∑[∑[A334195(n+1)]]`
-/

namespace A053044.P8057596989650702216
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334195 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053044.P8057596989650702216

namespace A053044

/-- `∑[∑[A334195(n+1)]]` -/
def P8057596989650702216.Spec : Prop :=
  ∀ n, P8057596989650702216.a n = A053044 (n + 1)

end A053044

/-! ## A053044.P7383302065236909696

`∑[A054725(n+1)]-1`
-/

namespace A053044.P7383302065236909696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A053044.P7383302065236909696

namespace A053044

/-- `∑[A054725(n+1)]-1` -/
def P7383302065236909696.Spec : Prop :=
  ∀ n, P7383302065236909696.a n = A053044 (n + 1)

end A053044

/-! ## A053044.P3232261480485894677

`∑[val(A309243(n+1), 2)]`
-/

namespace A053044.P3232261480485894677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A309243 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053044.P3232261480485894677

namespace A053044

/-- `∑[val(A309243(n+1), 2)]` -/
def P3232261480485894677.Spec : Prop :=
  ∀ n, (P3232261480485894677.a n : ℤ) = A053044 (n + 1)

end A053044

/-! ## A053044.P8002373204953258255

`∑[A003434(n+1)+(1-n)%2]-1`
-/

namespace A053044.P8002373204953258255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (n + 1) + Int.tmod (1 - (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A053044.P8002373204953258255

namespace A053044

/-- `∑[A003434(n+1)+(1-n)%2]-1` -/
def P8002373204953258255.Spec : Prop :=
  ∀ n, P8002373204953258255.a n = A053044 (n + 1)

end A053044

/-! ## A053044.P12715760243015014670

`A060606(n)-A004526(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A053044

/-- `A060606(n)-A004526(n)` -/
def P12715760243015014670.Spec : Prop :=
  ∀ n, P12715760243015014670.a n = A053044 (n + 1)

theorem P12715760243015014670.correct : P12715760243015014670.Spec := by
  intro n
  simp only [A053044, Nat.add_sub_cancel]

end A053044

/-! ## A053044.P32921867606707112

`∑[A003434(Δ[A049690(n)])]`
-/

namespace A053044.P32921867606707112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049690 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053044.P32921867606707112

namespace A053044

/-- `∑[A003434(Δ[A049690(n)])]` -/
def P32921867606707112.Spec : Prop :=
  ∀ n, P32921867606707112.a n = A053044 (n + 1)

end A053044

/-! ## A053044.P13491471028839982913

`∑[A003434(A062570(n+1))]`
-/

namespace A053044.P13491471028839982913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A062570 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053044.P13491471028839982913

namespace A053044

/-- `∑[A003434(A062570(n+1))]` -/
def P13491471028839982913.Spec : Prop :=
  ∀ n, P13491471028839982913.a n = A053044 (n + 1)

end A053044

/-! ## A053044.P16830607132354850444

`∑[A003434(A108514(n+1))]`
-/

namespace A053044.P16830607132354850444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A108514 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053044.P16830607132354850444

namespace A053044

/-- `∑[A003434(A108514(n+1))]` -/
def P16830607132354850444.Spec : Prop :=
  ∀ n, P16830607132354850444.a n = A053044 (n + 1)

end A053044

/-! ## A053044.P7295405074786633677

`∑[A003434(A333787(n+1))]`
-/

namespace A053044.P7295405074786633677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A333787 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053044.P7295405074786633677

namespace A053044

/-- `∑[A003434(A333787(n+1))]` -/
def P7295405074786633677.Spec : Prop :=
  ∀ n, P7295405074786633677.a n = A053044 (n + 1)

end A053044

/-! ## A053044.P9225574251987210981

`∑[A003434(A000010(2*(n+1)))]`
-/

namespace A053044.P9225574251987210981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A000010 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053044.P9225574251987210981

namespace A053044

/-- `∑[A003434(A000010(2*(n+1)))]` -/
def P9225574251987210981.Spec : Prop :=
  ∀ n, P9225574251987210981.a n = A053044 (n + 1)

end A053044

/-! ## A053044.P5318537220176289690

`A053048(n+1)+A053046(n+1)`
-/

namespace A053044.P5318537220176289690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053048 (n + 1) + A053046 (n + 1)

end

end A053044.P5318537220176289690

namespace A053044

/-- `A053048(n+1)+A053046(n+1)` -/
def P5318537220176289690.Spec : Prop :=
  ∀ n, P5318537220176289690.a n = A053044 (n + 1)

end A053044

/-! ## A053044.P14310932055548587678

`A060605(n+1)-A001651(n+1)`
-/

namespace A053044.P14310932055548587678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060605 (n + 1) - A001651 (n + 1)

end

end A053044.P14310932055548587678

namespace A053044

/-- `A060605(n+1)-A001651(n+1)` -/
def P14310932055548587678.Spec : Prop :=
  ∀ n, P14310932055548587678.a n = A053044 (n + 1)

end A053044

/-! ## A053044.P4587994811646773151

`A335860(n+1)-A335429(n+1)`
-/

namespace A053044.P4587994811646773151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335860 (n + 1) - A335429 (n + 1)

end

end A053044.P4587994811646773151

namespace A053044

/-- `A335860(n+1)-A335429(n+1)` -/
def P4587994811646773151.Spec : Prop :=
  ∀ n, P4587994811646773151.a n = A053044 (n + 1)

theorem P4587994811646773151.correct : P4587994811646773151.Spec := by
  intro n
  simp only [A053044, Nat.add_sub_cancel, A053044.P4587994811646773151.a, A053044.P12715760243015014670.a, A004526, A004526.P10084182425416171735.a, A060606, A060606.P8446617235737320077.a, A335429, A335429.P967647323544039556.a, A335860, A335860.P17749243859278538825.a, A060605, A060605.P5019509305243332605.f2, A060605.P5019509305243332605.f3, A060605.P5019509305243332605.f1, A060605.P5019509305243332605.a, A329697, A329697.P6355568551452954971.a, A064097, A064097.P8268505920434442649.a, A064415, A064415.P3438679109517359530.a, A052126, A052126.P1944428405920482243.a, A309243, A309243.P2615360336711731693.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053044

/-! ## A053044.P15007571692277911796

`∑[A054725(n+1)%A000015(n+1)]`
-/

namespace A053044.P15007571692277911796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054725 (n + 1)) (A000015 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053044.P15007571692277911796

namespace A053044

/-- `∑[A054725(n+1)%A000015(n+1)]` -/
def P15007571692277911796.Spec : Prop :=
  ∀ n, P15007571692277911796.a n = A053044 (n + 1)

end A053044

/-! ## A053044.P14825182709461338433

`∑[A032358(2*(n+1))]`
-/

namespace A053044.P14825182709461338433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032358 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053044.P14825182709461338433

namespace A053044

/-- `∑[A032358(2*(n+1))]` -/
def P14825182709461338433.Spec : Prop :=
  ∀ n, P14825182709461338433.a n = A053044 (n + 1)

end A053044

/-! ## A053044.P1340934799465399889

`∑[A003434(2*(n+1))-1]`
-/

namespace A053044.P1340934799465399889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053044.P1340934799465399889

namespace A053044

/-- `∑[A003434(2*(n+1))-1]` -/
def P1340934799465399889.Spec : Prop :=
  ∀ n, P1340934799465399889.a n = A053044 (n + 1)

end A053044

/-! ## A053044.P14338122965708498633

`∑[A049108(2*(n+1))-2]`
-/

namespace A053044.P14338122965708498633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (2 * (n + 1)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053044.P14338122965708498633

namespace A053044

/-- `∑[A049108(2*(n+1))-2]` -/
def P14338122965708498633.Spec : Prop :=
  ∀ n, P14338122965708498633.a n = A053044 (n + 1)

end A053044

/-! ## A053044.P13684758032513103346

`∑[A023443(A003434(2*(n+1)))]`
-/

namespace A053044.P13684758032513103346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003434 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053044.P13684758032513103346

namespace A053044

/-- `∑[A023443(A003434(2*(n+1)))]` -/
def P13684758032513103346.Spec : Prop :=
  ∀ n, P13684758032513103346.a n = A053044 (n + 1)

end A053044

/-! ## A053044.P13958680263347812283

`∑[A060681(A054725((n+1)²))]`
-/

namespace A053044.P13958680263347812283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A054725 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053044.P13958680263347812283

namespace A053044

/-- `∑[A060681(A054725((n+1)²))]` -/
def P13958680263347812283.Spec : Prop :=
  ∀ n, P13958680263347812283.a n = A053044 (n + 1)

end A053044

/-!
# A053045: a(n) is the number of powers of 2 among the iterates of the Euler phi function when it is iterated with initial value n!.

The programs for A053045, the canonical program `A053045.P10567594955266095024` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053045 has offset 1).

The definition of A053045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053045.P2229459290403229740

`A053048(n+1)+1`
-/

namespace A053045.P2229459290403229740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053048 (n + 1) + 1

end

end A053045.P2229459290403229740

namespace A053045

/-- `A053048(n+1)+1` -/
def P2229459290403229740.Spec : Prop :=
  ∀ n, P2229459290403229740.a n = A053045 (n + 1)

theorem P2229459290403229740.correct : P2229459290403229740.Spec := by
  intro n
  simp only [A053045, Nat.add_sub_cancel, A053045.P2229459290403229740.a, A053045.P10567594955266095024.f1, A053045.P10567594955266095024.a, A053046, A053046.P16166439811402405967.f1, A053046.P16166439811402405967.a, A053048, A053048.P5736952113252101638.a, A054725, A054725.P13629253926091839604.a, A309243, A309243.P2615360336711731693.a, A171462, A171462.P186066025836437895.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053045

/-! ## A053045.P10567594955266095024

`∑[A054725(n+1)]-A053046(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A053045

/-- `∑[A054725(n+1)]-A053046(n+1)` -/
def P10567594955266095024.Spec : Prop :=
  ∀ n, P10567594955266095024.a n = A053045 (n + 1)

theorem P10567594955266095024.correct : P10567594955266095024.Spec := by
  intro n
  simp only [A053045, Nat.add_sub_cancel]

end A053045

/-! ## A053045.P5732532999970772674

`A053044(n+1)+1-A053046(n+1)`
-/

namespace A053045.P5732532999970772674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053044 (n + 1) + (1 - A053046 (n + 1))

end

end A053045.P5732532999970772674

namespace A053045

/-- `A053044(n+1)+1-A053046(n+1)` -/
def P5732532999970772674.Spec : Prop :=
  ∀ n, P5732532999970772674.a n = A053045 (n + 1)

end A053045

/-! ## A053045.P11600528410406500021

`∑[A064415(n+1)]+1-A053046(n+1)`
-/

namespace A053045.P11600528410406500021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A053046 (n + 1))

end

end A053045.P11600528410406500021

namespace A053045

/-- `∑[A064415(n+1)]+1-A053046(n+1)` -/
def P11600528410406500021.Spec : Prop :=
  ∀ n, P11600528410406500021.a n = A053045 (n + 1)

end A053045

/-! ## A053045.P5465480481268627563

`∑[A028310(A064415(n+1))]-A053046(n+1)`
-/

namespace A053045.P5465480481268627563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A064415 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A053046 (n + 1)

end

end A053045.P5465480481268627563

namespace A053045

/-- `∑[A028310(A064415(n+1))]-A053046(n+1)` -/
def P5465480481268627563.Spec : Prop :=
  ∀ n, P5465480481268627563.a n = A053045 (n + 1)

end A053045

/-! ## A053045.P5193276947181177618

`A053044(n+1)+A024000(A053046(n+1))`
-/

namespace A053045.P5193276947181177618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053044 (n + 1) + A024000 (A053046 (n + 1)).toNat

end

end A053045.P5193276947181177618

namespace A053045

/-- `A053044(n+1)+A024000(A053046(n+1))` -/
def P5193276947181177618.Spec : Prop :=
  ∀ n, P5193276947181177618.a n = A053045 (n + 1)

end A053045

/-! ## A053045.P10420207229881600850

`log2(A053047(n+1))+1`
-/

namespace A053045.P10420207229881600850
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A053047 (n + 1) : ℝ) + 1

end

end A053045.P10420207229881600850

namespace A053045

/-- `log2(A053047(n+1))+1` -/
def P10420207229881600850.Spec : Prop :=
  ∀ n, P10420207229881600850.a n = (A053045 (n + 1) : ℝ)

end A053045

/-!
# A053046: a(n) is the number of terms that are not powers of 2 among the iterates of the Euler phi function when it is iterated with initial value n!.

The programs for A053046, the canonical program `A053046.P16166439811402405967` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053046 has offset 1).

The definition of A053046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053046.P14748125958820294731

`1+A053044(n+1)-A053045(n+1)`
-/

namespace A053046.P14748125958820294731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A053044 (n + 1) - A053045 (n + 1)

end

end A053046.P14748125958820294731

namespace A053046

/-- `1+A053044(n+1)-A053045(n+1)` -/
def P14748125958820294731.Spec : Prop :=
  ∀ n, P14748125958820294731.a n = A053046 (n + 1)

end A053046

/-! ## A053046.P16166439811402405967

`∑[val(A309243(n+1), 3)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A053046

/-- `∑[val(A309243(n+1), 3)]` -/
def P16166439811402405967.Spec : Prop :=
  ∀ n, (P16166439811402405967.a n : ℤ) = A053046 (n + 1)

theorem P16166439811402405967.correct : P16166439811402405967.Spec := by
  intro n
  simp only [A053046, Nat.add_sub_cancel]

end A053046

/-! ## A053046.P4598465123150688090

`A053044(n+1)-A053048(n+1)`
-/

namespace A053046.P4598465123150688090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053044 (n + 1) - A053048 (n + 1)

end

end A053046.P4598465123150688090

namespace A053046

/-- `A053044(n+1)-A053048(n+1)` -/
def P4598465123150688090.Spec : Prop :=
  ∀ n, P4598465123150688090.a n = A053046 (n + 1)

end A053046

/-! ## A053046.P18112259863598996103

`∑[A054725(n+1)]-A053045(n+1)`
-/

namespace A053046.P18112259863598996103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A053045 (n + 1)

end

end A053046.P18112259863598996103

namespace A053046

/-- `∑[A054725(n+1)]-A053045(n+1)` -/
def P18112259863598996103.Spec : Prop :=
  ∀ n, P18112259863598996103.a n = A053046 (n + 1)

theorem P18112259863598996103.correct : P18112259863598996103.Spec := by
  intro n
  simp only [A053046, Nat.add_sub_cancel, A053046.P18112259863598996103.f1, A053046.P18112259863598996103.a, A053046.P16166439811402405967.f1, A053046.P16166439811402405967.a, A053045, A053045.P10567594955266095024.f1, A053045.P10567594955266095024.a, A054725, A054725.P13629253926091839604.a, A309243, A309243.P2615360336711731693.a, A171462, A171462.P186066025836437895.a, A052126, A052126.P1944428405920482243.a, A006530, A006530.P13372528560459906635.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053046

/-! ## A053046.P18053900132581845315

`∑[A064415(n+1)]-A053048(n+1)`
-/

namespace A053046.P18053900132581845315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A053048 (n + 1)

end

end A053046.P18053900132581845315

namespace A053046

/-- `∑[A064415(n+1)]-A053048(n+1)` -/
def P18053900132581845315.Spec : Prop :=
  ∀ n, P18053900132581845315.a n = A053046 (n + 1)

end A053046

/-! ## A053046.P7394613950564435110

`∑[A054725(n+1)]-(A053048(n+1)+1)`
-/

namespace A053046.P7394613950564435110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A053048 (n + 1) + 1)

end

end A053046.P7394613950564435110

namespace A053046

/-- `∑[A054725(n+1)]-(A053048(n+1)+1)` -/
def P7394613950564435110.Spec : Prop :=
  ∀ n, P7394613950564435110.a n = A053046 (n + 1)

theorem P7394613950564435110.correct : P7394613950564435110.Spec := by
  intro n
  simp only [A053046, Nat.add_sub_cancel, A053046.P7394613950564435110.f1, A053046.P7394613950564435110.a, A053046.P16166439811402405967.f1, A053046.P16166439811402405967.a, A053048, A053048.P5736952113252101638.a, A054725, A054725.P13629253926091839604.a, A309243, A309243.P2615360336711731693.a, A053045, A053045.P10567594955266095024.f1, A053045.P10567594955266095024.a, A171462, A171462.P186066025836437895.a, A052126, A052126.P1944428405920482243.a, A006530, A006530.P13372528560459906635.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053046

/-! ## A053046.P9332665691476353775

`∑[A032358(2*(n+1))]-A053048(n+1)`
-/

namespace A053046.P9332665691476353775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032358 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A053048 (n + 1)

end

end A053046.P9332665691476353775

namespace A053046

/-- `∑[A032358(2*(n+1))]-A053048(n+1)` -/
def P9332665691476353775.Spec : Prop :=
  ∀ n, P9332665691476353775.a n = A053046 (n + 1)

end A053046

/-! ## A053046.P2398339522961727360

`A024000(A053045(n+1))+∑[A064415(n+1)]`
-/

namespace A053046.P2398339522961727360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A053045 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053046.P2398339522961727360

namespace A053046

/-- `A024000(A053045(n+1))+∑[A064415(n+1)]` -/
def P2398339522961727360.Spec : Prop :=
  ∀ n, P2398339522961727360.a n = A053046 (n + 1)

end A053046

/-! ## A053046.P5936648983103518610

`A024000(A053045(n+1))+∑[A032358(2*(n+1))]`
-/

namespace A053046.P5936648983103518610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032358 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A053045 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053046.P5936648983103518610

namespace A053046

/-- `A024000(A053045(n+1))+∑[A032358(2*(n+1))]` -/
def P5936648983103518610.Spec : Prop :=
  ∀ n, P5936648983103518610.a n = A053046 (n + 1)

end A053046

/-! ## A053046.P9357337452371325594

`∑[A003434(2*(n+1))-1]-A023443(A053045(n+1))`
-/

namespace A053046.P9357337452371325594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (2 * (n + 1)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023443 (A053045 (n + 1)).toNat

end

end A053046.P9357337452371325594

namespace A053046

/-- `∑[A003434(2*(n+1))-1]-A023443(A053045(n+1))` -/
def P9357337452371325594.Spec : Prop :=
  ∀ n, P9357337452371325594.a n = A053046 (n + 1)

end A053046

/-! ## A053046.P9759963723440954842

`∑[A003434(n+1)+(1-n)%2]-1-A023443(A053045(n+1))`
-/

namespace A053046.P9759963723440954842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (n + 1) + Int.tmod (1 - (n : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1 - A023443 (A053045 (n + 1)).toNat

end

end A053046.P9759963723440954842

namespace A053046

/-- `∑[A003434(n+1)+(1-n)%2]-1-A023443(A053045(n+1))` -/
def P9759963723440954842.Spec : Prop :=
  ∀ n, P9759963723440954842.a n = A053046 (n + 1)

end A053046

/-! ## A053046.P13245065540691567808

`A335860(n+1)-A335429(n+1)-A023443(A053045(n+1))`
-/

namespace A053046.P13245065540691567808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335860 (n + 1) - A335429 (n + 1) - A023443 (A053045 (n + 1)).toNat

end

end A053046.P13245065540691567808

namespace A053046

/-- `A335860(n+1)-A335429(n+1)-A023443(A053045(n+1))` -/
def P13245065540691567808.Spec : Prop :=
  ∀ n, P13245065540691567808.a n = A053046 (n + 1)

end A053046

/-!
# A053047: a(n) is the first (and maximal) power of 2 arising during iterations of the Euler phi function with initial value n!.

The programs for A053047, the canonical program `A053047.P4059544056433008088` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053047 has offset 1).

The definition of A053047 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053048, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A053047.P4059544056433008088

`2^A053048(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A053047

/-- `2^A053048(n+1)` -/
def P4059544056433008088.Spec : Prop :=
  ∀ n, P4059544056433008088.a n = (A053047 (n + 1) : ℚ)

end A053047

/-! ## A053047.P9566572521013810846

`2^(A053045(n+1)-1)`
-/

namespace A053047.P9566572521013810846
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A053045 (n + 1) - 1 : ℤ)

end

end A053047.P9566572521013810846

namespace A053047

/-- `2^(A053045(n+1)-1)` -/
def P9566572521013810846.Spec : Prop :=
  ∀ n, P9566572521013810846.a n = (A053047 (n + 1) : ℚ)

end A053047

/-! ## A053047.P2269572743196569197

`A000079(A053048(n+1))`
-/

namespace A053047.P2269572743196569197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A053048 (n + 1)).toNat

end

end A053047.P2269572743196569197

namespace A053047

/-- `A000079(A053048(n+1))` -/
def P2269572743196569197.Spec : Prop :=
  ∀ n, P2269572743196569197.a n = A053047 (n + 1)

end A053047

/-! ## A053047.P4874198791347577697

`A011782(A053045(n+1))`
-/

namespace A053047.P4874198791347577697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A053045 (n + 1)).toNat

end

end A053047.P4874198791347577697

namespace A053047

/-- `A011782(A053045(n+1))` -/
def P4874198791347577697.Spec : Prop :=
  ∀ n, P4874198791347577697.a n = A053047 (n + 1)

end A053047

/-! ## A053047.P7484868601167436421

`A000079(A053045(n+1)-1)`
-/

namespace A053047.P7484868601167436421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A053045 (n + 1) - 1).toNat

end

end A053047.P7484868601167436421

namespace A053047

/-- `A000079(A053045(n+1)-1)` -/
def P7484868601167436421.Spec : Prop :=
  ∀ n, P7484868601167436421.a n = A053047 (n + 1)

end A053047

/-! ## A053047.P2635445998974442671

`A000225(A053045(n+1)-1)+1`
-/

namespace A053047.P2635445998974442671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A053045 (n + 1) - 1).toNat + 1

end

end A053047.P2635445998974442671

namespace A053047

/-- `A000225(A053045(n+1)-1)+1` -/
def P2635445998974442671.Spec : Prop :=
  ∀ n, P2635445998974442671.a n = A053047 (n + 1)

end A053047

/-!
# A053048: a(n) is the number of terminal iterations applied to powers of 2 arising in the iterations of the Euler phi function with initial value n!.

The programs for A053048, the canonical program `A053048.P5736952113252101638` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053048 has offset 1).

The definition of A053048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053048.P9249735694923543896

`log2(A053047(n+1))`
-/

namespace A053048.P9249735694923543896
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A053047 (n + 1) : ℝ)

end

end A053048.P9249735694923543896

namespace A053048

/-- `log2(A053047(n+1))` -/
def P9249735694923543896.Spec : Prop :=
  ∀ n, P9249735694923543896.a n = (A053048 (n + 1) : ℝ)

end A053048

/-! ## A053048.P5736952113252101638

`A053045(n+1)-1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A053048

/-- `A053045(n+1)-1` -/
def P5736952113252101638.Spec : Prop :=
  ∀ n, P5736952113252101638.a n = A053048 (n + 1)

theorem P5736952113252101638.correct : P5736952113252101638.Spec := by
  intro n
  simp only [A053048, Nat.add_sub_cancel]

end A053048

/-! ## A053048.P551333329361959550

`A053044(n+1)-A053046(n+1)`
-/

namespace A053048.P551333329361959550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053044 (n + 1) - A053046 (n + 1)

end

end A053048.P551333329361959550

namespace A053048

/-- `A053044(n+1)-A053046(n+1)` -/
def P551333329361959550.Spec : Prop :=
  ∀ n, P551333329361959550.a n = A053048 (n + 1)

end A053048

/-! ## A053048.P7943847708623050676

`∑[A064415(n+1)]-A053046(n+1)`
-/

namespace A053048.P7943847708623050676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A053046 (n + 1)

end

end A053048.P7943847708623050676

namespace A053048

/-- `∑[A064415(n+1)]-A053046(n+1)` -/
def P7943847708623050676.Spec : Prop :=
  ∀ n, P7943847708623050676.a n = A053048 (n + 1)

end A053048

/-! ## A053048.P8542765563169357679

`∑[A054725(n+1)]-(A053046(n+1)+1)`
-/

namespace A053048.P8542765563169357679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A053046 (n + 1) + 1)

end

end A053048.P8542765563169357679

namespace A053048

/-- `∑[A054725(n+1)]-(A053046(n+1)+1)` -/
def P8542765563169357679.Spec : Prop :=
  ∀ n, P8542765563169357679.a n = A053048 (n + 1)

theorem P8542765563169357679.correct : P8542765563169357679.Spec := by
  intro n
  simp only [A053048, Nat.add_sub_cancel, A053048.P8542765563169357679.f1, A053048.P8542765563169357679.a, A053048.P5736952113252101638.a, A053045, A053045.P10567594955266095024.f1, A053045.P10567594955266095024.a, A053046, A053046.P16166439811402405967.f1, A053046.P16166439811402405967.a, A054725, A054725.P13629253926091839604.a, A309243, A309243.P2615360336711731693.a, A171462, A171462.P186066025836437895.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053048

/-! ## A053048.P16646256240058702619

`A057428(n+1)+A053045(n+1)`
-/

namespace A053048.P16646256240058702619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A053045 (n + 1)

end

end A053048.P16646256240058702619

namespace A053048

/-- `A057428(n+1)+A053045(n+1)` -/
def P16646256240058702619.Spec : Prop :=
  ∀ n, P16646256240058702619.a n = A053048 (n + 1)

theorem P16646256240058702619.correct : P16646256240058702619.Spec := by
  intro n
  simp only [A053048, Nat.add_sub_cancel, A053048.P16646256240058702619.a, A053048.P5736952113252101638.a, A053045, A053045.P10567594955266095024.f1, A053045.P10567594955266095024.a, A057428, A057428.P2999489532230392221.a, A053046, A053046.P16166439811402405967.f1, A053046.P16166439811402405967.a, A054725, A054725.P13629253926091839604.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, A309243, A309243.P2615360336711731693.a, A171462, A171462.P186066025836437895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053048

/-! ## A053048.P5409579227884089672

`A053044(n+1)+A024000(A053046(n+1)+1)`
-/

namespace A053048.P5409579227884089672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053044 (n + 1) + A024000 (A053046 (n + 1) + 1).toNat

end

end A053048.P5409579227884089672

namespace A053048

/-- `A053044(n+1)+A024000(A053046(n+1)+1)` -/
def P5409579227884089672.Spec : Prop :=
  ∀ n, P5409579227884089672.a n = A053048 (n + 1)

end A053048

/-! ## A053048.P12190221243695038540

`A023443(A053045(n+1))`
-/

namespace A053048.P12190221243695038540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053045 (n + 1)).toNat

end

end A053048.P12190221243695038540

namespace A053048

/-- `A023443(A053045(n+1))` -/
def P12190221243695038540.Spec : Prop :=
  ∀ n, P12190221243695038540.a n = A053048 (n + 1)

end A053048

/-! ## A053048.P9484041617136035488

`A023444(A053045(n+1)+1)`
-/

namespace A053048.P9484041617136035488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A053045 (n + 1) + 1).toNat

end

end A053048.P9484041617136035488

namespace A053048

/-- `A023444(A053045(n+1)+1)` -/
def P9484041617136035488.Spec : Prop :=
  ∀ n, P9484041617136035488.a n = A053048 (n + 1)

end A053048

/-! ## A053048.P602787000461276181

`A289207(A053045(n+1)+1)`
-/

namespace A053048.P602787000461276181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A053045 (n + 1) + 1).toNat

end

end A053048.P602787000461276181

namespace A053048

/-- `A289207(A053045(n+1)+1)` -/
def P602787000461276181.Spec : Prop :=
  ∀ n, P602787000461276181.a n = A053048 (n + 1)

end A053048

/-! ## A053048.P9724404947219814875

`A065423(2*A053045(n+1))`
-/

namespace A053048.P9724404947219814875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A053045 (n + 1)).toNat

end

end A053048.P9724404947219814875

namespace A053048

/-- `A065423(2*A053045(n+1))` -/
def P9724404947219814875.Spec : Prop :=
  ∀ n, P9724404947219814875.a n = A053048 (n + 1)

end A053048

/-! ## A053048.P15626353875126950988

`A140106(2*A053045(n+1))`
-/

namespace A053048.P15626353875126950988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A053045 (n + 1)).toNat

end

end A053048.P15626353875126950988

namespace A053048

/-- `A140106(2*A053045(n+1))` -/
def P15626353875126950988.Spec : Prop :=
  ∀ n, P15626353875126950988.a n = A053048 (n + 1)

end A053048

/-! ## A053048.P16126420244512776938

`A140106(A053045(n+1)+A053045(n+1)+1)`
-/

namespace A053048.P16126420244512776938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A053045 (n + 1) + (A053045 (n + 1) + 1)).toNat

end

end A053048.P16126420244512776938

namespace A053048

/-- `A140106(A053045(n+1)+A053045(n+1)+1)` -/
def P16126420244512776938.Spec : Prop :=
  ∀ n, P16126420244512776938.a n = A053048 (n + 1)

end A053048

/-! ## A053048.P13363053550938654147

`A059169(4*A053045(n+1))`
-/

namespace A053048.P13363053550938654147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A053045 (n + 1)).toNat

end

end A053048.P13363053550938654147

namespace A053048

/-- `A059169(4*A053045(n+1))` -/
def P13363053550938654147.Spec : Prop :=
  ∀ n, P13363053550938654147.a n = A053048 (n + 1)

end A053048

/-!
# A053052: Append n to the previous term, reverse alternate terms.

The programs for A053052, there is no canonical definition to state claims against.
-/

/-! ## A053052.P10613264537377227007

`A007908(n+1)+and(A019566(n+1), A033999(n))`
-/

namespace A053052.P10613264537377227007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (n + 1) + Int.land (A019566 (n + 1)) (A033999 n)

end

end A053052.P10613264537377227007

/-! ## A053052.P4420227650187481000

`∪[A000422(2*(n+1)), A007908(Δ[n²])]`
-/

namespace A053052.P4420227650187481000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (2 * (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A053052.P4420227650187481000

/-! ## A053052.P10520260187735255292

`∪[A007908(2*n+1), A000422(2*(n+1))]`
-/

namespace A053052.P10520260187735255292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007908 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000422 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A053052.P10520260187735255292

/-!
# A053053: Append n-th prime to previous term, reverse alternate terms.

The programs for A053053, there is no canonical definition to state claims against.
-/

/-! ## A053053.P1419964699921609306

`A000027(A053054(n+1))`
-/

namespace A053053.P1419964699921609306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A053054 (n + 1)).toNat

end

end A053053.P1419964699921609306

/-!
# A053056: Fibonacci numbers whose digit sum is also a Fibonacci number.

The programs for A053056, there is no canonical definition to state claims against.
-/

/-! ## A053056.P4005731871846172761

`A000045(floor((a(n-1)/(n+2))²+n+1))` with `a(0)=0`
-/

namespace A053056.P4005731871846172761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000045 ⌊((a (n - 1) : ℚ) / (n + 2 : ℚ)) ^ 2 + (n + 1 : ℚ)⌋.toNat

end

end A053056.P4005731871846172761

/-! ## A053056.P10979939569564009697

`record[A035516(A053267(∑[n]))]`
-/

namespace A053056.P10979939569564009697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035516 (A053267 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053056.P10979939569564009697

/-! ## A053056.P822663994670704080

`record[A000045(and(n, A050729(n)))]`
-/

namespace A053056.P822663994670704080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land (n : ℤ) (A050729 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053056.P822663994670704080

/-! ## A053056.P6355033060133545197

`record[A000045(∑{e}[A124418(n), #])]`
-/

namespace A053056.P6355033060133545197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124418 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053056.P6355033060133545197

/-!
# A053057: Squares whose digit sum is also a square.

The programs for A053057, the canonical program `A053057.P8917643215926025307` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053057 has offset 1).

The definition of A053057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053057.P8917643215926025307

`eq[1, A010052(A004159(n))]²`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A053057

/-- `eq[1, A010052(A004159(n))]²` -/
def P8917643215926025307.Spec : Prop :=
  ∀ n, (P8917643215926025307.a n : ℤ) = A053057 (n + 1)

theorem P8917643215926025307.correct : P8917643215926025307.Spec := by
  intro n
  simp only [A053057, Nat.add_sub_cancel]

end A053057

/-! ## A053057.P18426460702737814660

`A000290(eq[1, A010052(A004159(n))])`
-/

namespace A053057.P18426460702737814660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A004159 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053057.P18426460702737814660

namespace A053057

/-- `A000290(eq[1, A010052(A004159(n))])` -/
def P18426460702737814660.Spec : Prop :=
  ∀ n, P18426460702737814660.a n = A053057 (n + 1)

theorem P18426460702737814660.correct : P18426460702737814660.Spec := by
  intro n
  simp only [A053057, Nat.add_sub_cancel, A053057.P18426460702737814660.f1, A053057.P18426460702737814660.f2, A053057.P18426460702737814660.a, A053057.P8917643215926025307.f1, A053057.P8917643215926025307.f2, A053057.P8917643215926025307.a, A000290, A000290.P12206242496348924484.a, A004159, A004159.P12894520007403696170.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A053057

/-! ## A053057.P12327293095423242004

`record[A000290(n)*A010052(A004159(n))]`
-/

namespace A053057.P12327293095423242004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n * A010052 (A004159 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053057.P12327293095423242004

namespace A053057

/-- `record[A000290(n)*A010052(A004159(n))]` -/
def P12327293095423242004.Spec : Prop :=
  ∀ n, P12327293095423242004.a n = A053057 (n + 1)

end A053057

/-! ## A053057.P15730565329238254719

`record[char[A061910(n+1)]*n²]`
-/

namespace A053057.P15730565329238254719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061910 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053057.P15730565329238254719

namespace A053057

/-- `record[char[A061910(n+1)]*n²]` -/
def P15730565329238254719.Spec : Prop :=
  ∀ n, (P15730565329238254719.a n : ℤ) = A053057 (n + 1)

end A053057

/-! ## A053057.P13931581333607188801

`eq[char[A061910(n+1)], A057427(n)]²`
-/

namespace A053057.P13931581333607188801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061910 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n ^ 2

end

end A053057.P13931581333607188801

namespace A053057

/-- `eq[char[A061910(n+1)], A057427(n)]²` -/
def P13931581333607188801.Spec : Prop :=
  ∀ n, (P13931581333607188801.a n : ℤ) = A053057 (n + 1)

end A053057

/-!
# A053058: Cubes whose digit sum is also a cube.

The programs for A053058, there is no canonical definition to state claims against.
-/

/-! ## A053058.P12051520741116570864

`A237525(n+1)^3`
-/

namespace A053058.P12051520741116570864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237525 (n + 1) ^ 3

end

end A053058.P12051520741116570864

/-! ## A053058.P8422756964770464302

`A000578(A237525(n+1))`
-/

namespace A053058.P8422756964770464302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A237525 (n + 1)).toNat

end

end A053058.P8422756964770464302

/-! ## A053058.P16674783170113101451

`eq[1, A010057(A004164(n))]^3`
-/

namespace A053058.P16674783170113101451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A004164 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 3

end

end A053058.P16674783170113101451

/-! ## A053058.P4484003657693041930

`record[A000578(n*A010057(A004164(n)))]`
-/

namespace A053058.P4484003657693041930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 ((n : ℤ) * A010057 (A004164 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053058.P4484003657693041930

/-! ## A053058.P994780240384889514

`eq[1, A010057(A004164(n))]²*A237525(n+1)`
-/

namespace A053058.P994780240384889514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A004164 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 : ℤ) * A237525 (n + 1)

end

end A053058.P994780240384889514

/-! ## A053058.P15229115190515432556

`record[(n*A010057(A004164(n)))%A000203(n+1)]^3`
-/

namespace A053058.P15229115190515432556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A010057 (A004164 n).toNat) (A000203 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 3

end

end A053058.P15229115190515432556

/-! ## A053058.P9946014602612933270

`record[A000007(n+1)+n*A010057(A004164(n))]^3`
-/

namespace A053058.P9946014602612933270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (n : ℤ) * A010057 (A004164 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 3

end

end A053058.P9946014602612933270

/-! ## A053058.P4809435971808616500

`∩[A227227(n+1), n*n²]`
-/

namespace A053058.P4809435971808616500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227227 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A053058.P4809435971808616500

/-! ## A053058.P10121567813269368415

`∩[A000578(n), A227227(n+1)]`
-/

namespace A053058.P10121567813269368415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053058.P10121567813269368415

/-! ## A053058.P3931693927328092125

`∩[A109900(n), A227227(n+1)]`
-/

namespace A053058.P3931693927328092125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053058.P3931693927328092125

/-! ## A053058.P16221409404542902880

`∩[A210433(n+1), A227227(n+1)]`
-/

namespace A053058.P16221409404542902880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053058.P16221409404542902880

/-!
# A053059: Squares whose product of digits is also a nonzero square.

The programs for A053059, there is no canonical definition to state claims against.
-/

/-! ## A053059.P4799510871018991363

`A066733(n+1)²`
-/

namespace A053059.P4799510871018991363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066733 (n + 1) ^ 2

end

end A053059.P4799510871018991363

/-! ## A053059.P11073667813919924330

`A066733(n+1)^and(2, A284402(A341839(n)))`
-/

namespace A053059.P11073667813919924330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066733 (n + 1) : ℚ) ^ (Int.land 2 (A284402 (A341839 n).toNat) : ℤ)

end

end A053059.P11073667813919924330

/-! ## A053059.P1934201764294333265

`A066733(n+1)*A066733((n+1)%A292657(n+1))`
-/

namespace A053059.P1934201764294333265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066733 (n + 1) * A066733 (Int.tmod (n + 1 : ℤ) (A292657 (n + 1))).toNat

end

end A053059.P1934201764294333265

/-! ## A053059.P17508508255743697251

`A066733(gcd(n+1, A008587(n+1)))*A066733(n+1)`
-/

namespace A053059.P17508508255743697251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066733 (Int.gcd (n + 1 : ℤ) (A008587 (n + 1))) * A066733 (n + 1)

end

end A053059.P17508508255743697251

/-! ## A053059.P9372521365176046599

`∩[A052041(n+1), A061867(n+1)]`
-/

namespace A053059.P9372521365176046599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053059.P9372521365176046599

/-! ## A053059.P3339267291086770404

`∩[A052041(n+1), A066565(n+1)]`
-/

namespace A053059.P3339267291086770404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053059.P3339267291086770404

/-! ## A053059.P5465215474753033647

`A066733(n+1)^and(2, A284402(n))`
-/

namespace A053059.P5465215474753033647
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066733 (n + 1) : ℚ) ^ (Int.land 2 (A284402 n) : ℤ)

end

end A053059.P5465215474753033647

/-! ## A053059.P5896620954102093295

`A109614(3*A066733(n+1))`
-/

namespace A053059.P5896620954102093295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109614 (3 * A066733 (n + 1)).toNat

end

end A053059.P5896620954102093295

/-!
# A053060: Number of n X n invertible binary matrices A such that A^3+I is invertible.

The programs for A053060, there is no canonical definition to state claims against.
-/

/-! ## A053060.P5425684565040103369

`and(-A047701(2*(n+2)), A345463(n+1))`
-/

namespace A053060.P5425684565040103369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A047701 (2 * (n + 2))) (A345463 (n + 1))

end

end A053060.P5425684565040103369

/-!
# A053061: a(n) is the decimal concatenation of n and n^2.

The programs for A053061, the canonical program `A053061.P11538860489114276180` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053061 has offset 1).

The definition of A053061 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053061.P11538860489114276180

`(n+1)*(∏{digits}[(n+1)², floor(#/10)+10]+1+n)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053061

/-- `(n+1)*(∏{digits}[(n+1)², floor(#/10)+10]+1+n)` -/
def P11538860489114276180.Spec : Prop :=
  ∀ n, P11538860489114276180.a n = A053061 (n + 1)

theorem P11538860489114276180.correct : P11538860489114276180.Spec := by
  intro n
  simp only [A053061, Nat.add_sub_cancel]

end A053061

/-! ## A053061.P10099084478495872524

`(n+1)*A061082(n+1)`
-/

namespace A053061.P10099084478495872524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061082 (n + 1)

end

end A053061.P10099084478495872524

namespace A053061

/-- `(n+1)*A061082(n+1)` -/
def P10099084478495872524.Spec : Prop :=
  ∀ n, P10099084478495872524.a n = A053061 (n + 1)

end A053061

/-! ## A053061.P14076698728524963082

`A239464(n+1)+n*(n+2)`
-/

namespace A053061.P14076698728524963082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239464 (n + 1) + (n * (n + 2) : ℤ)

end

end A053061.P14076698728524963082

namespace A053061

/-- `A239464(n+1)+n*(n+2)` -/
def P14076698728524963082.Spec : Prop :=
  ∀ n, P14076698728524963082.a n = A053061 (n + 1)

end A053061

/-! ## A053061.P9120432216539879964

`A239464(n+1)+A002378(n)+n`
-/

namespace A053061.P9120432216539879964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239464 (n + 1) + A002378 n + (n : ℤ)

end

end A053061.P9120432216539879964

namespace A053061

/-- `A239464(n+1)+A002378(n)+n` -/
def P9120432216539879964.Spec : Prop :=
  ∀ n, P9120432216539879964.a n = A053061 (n + 1)

end A053061

/-! ## A053061.P3174637468138735576

`A000027(n+1)²+A239464(n+1)-1`
-/

namespace A053061.P3174637468138735576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) ^ 2 + (A239464 (n + 1) - 1)

end

end A053061.P3174637468138735576

namespace A053061

/-- `A000027(n+1)²+A239464(n+1)-1` -/
def P3174637468138735576.Spec : Prop :=
  ∀ n, P3174637468138735576.a n = A053061 (n + 1)

end A053061

/-! ## A053061.P16687592601182465014

`(A239464(n+1)+A005563(n))%A001561(n)`
-/

namespace A053061.P16687592601182465014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239464 (n + 1) + A005563 n) (A001561 n)

end

end A053061.P16687592601182465014

namespace A053061

/-- `(A239464(n+1)+A005563(n))%A001561(n)` -/
def P16687592601182465014.Spec : Prop :=
  ∀ n, P16687592601182465014.a n = A053061 (n + 1)

end A053061

/-! ## A053061.P8442327238510862946

`lcm(A239464(n+1)+A005563(n), A020639(n+1))`
-/

namespace A053061.P8442327238510862946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A239464 (n + 1) + A005563 n) (A020639 (n + 1))

end

end A053061.P8442327238510862946

namespace A053061

/-- `lcm(A239464(n+1)+A005563(n), A020639(n+1))` -/
def P8442327238510862946.Spec : Prop :=
  ∀ n, (P8442327238510862946.a n : ℤ) = A053061 (n + 1)

end A053061

/-! ## A053061.P2929910872969848095

`A239464(n+1)+A005563(n)-A000729(n)%((-1)^n)`
-/

namespace A053061.P2929910872969848095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239464 (n + 1) + A005563 n - Int.tmod (A000729 n) ((-1) ^ n)

end

end A053061.P2929910872969848095

namespace A053061

/-- `A239464(n+1)+A005563(n)-A000729(n)%((-1)^n)` -/
def P2929910872969848095.Spec : Prop :=
  ∀ n, P2929910872969848095.a n = A053061 (n + 1)

end A053061

/-! ## A053061.P13494346797718927144

`1-A007318(and(3, n-1))+A239464(n+1)+A005563(n)`
-/

namespace A053061.P13494346797718927144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007318 (Int.land 3 ((n : ℤ) - 1)).toNat + (A239464 (n + 1) + A005563 n)

end

end A053061.P13494346797718927144

namespace A053061

/-- `1-A007318(and(3, n-1))+A239464(n+1)+A005563(n)` -/
def P13494346797718927144.Spec : Prop :=
  ∀ n, P13494346797718927144.a n = A053061 (n + 1)

end A053061

/-! ## A053061.P4094107442874339364

`A239464(n+1)+A005563(n)-(A138494(n+1)+1)%((-1)^n)`
-/

namespace A053061.P4094107442874339364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239464 (n + 1) + A005563 n - Int.tmod (A138494 (n + 1) + 1) ((-1) ^ n)

end

end A053061.P4094107442874339364

namespace A053061

/-- `A239464(n+1)+A005563(n)-(A138494(n+1)+1)%((-1)^n)` -/
def P4094107442874339364.Spec : Prop :=
  ∀ n, P4094107442874339364.a n = A053061 (n + 1)

end A053061

/-! ## A053061.P17469447948739205346

`A335821(A000124(n+1))+A239464(n+1)`
-/

namespace A053061.P17469447948739205346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335821 (A000124 (n + 1)).toNat + A239464 (n + 1)

end

end A053061.P17469447948739205346

namespace A053061

/-- `A335821(A000124(n+1))+A239464(n+1)` -/
def P17469447948739205346.Spec : Prop :=
  ∀ n, P17469447948739205346.a n = A053061 (n + 1)

end A053061

/-! ## A053061.P14380419588550191584

`(n+1)*(n+1+10^(1+A004216((n+1)²)))`
-/

namespace A053061.P14380419588550191584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 1 : ℚ) + (10 : ℚ) ^ (1 + A004216 ((n + 1) ^ 2) : ℤ))

end

end A053061.P14380419588550191584

namespace A053061

/-- `(n+1)*(n+1+10^(1+A004216((n+1)²)))` -/
def P14380419588550191584.Spec : Prop :=
  ∀ n, P14380419588550191584.a n = (A053061 (n + 1) : ℚ)

end A053061

/-!
# A053062: Concatenate n, 2n, 3n, ... nn.

The programs for A053062, there is no canonical definition to state claims against.
-/

/-! ## A053062.P12017661762322004020

`(n+1)*A061088(n+1)`
-/

namespace A053062.P12017661762322004020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A061088 (n + 1)

end

end A053062.P12017661762322004020

/-! ## A053062.P5156853648601622621

`A061088(n+1)/tan(acot(A000027(n+1)))`
-/

namespace A053062.P5156853648601622621
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A061088 (n + 1) : ℝ) / Real.tan (SequenceMachineLib.acot (A000027 (n + 1) : ℝ))

end

end A053062.P5156853648601622621

/-! ## A053062.P1961116273256467985

`record[A020986(n)*A061088(A020986(n))]`
-/

namespace A053062.P1961116273256467985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020986 n * A061088 (A020986 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053062.P1961116273256467985

/-!
# A053064: Alternately append n to end or beginning of previous term.

The programs for A053064, there is no canonical definition to state claims against.
-/

/-! ## A053064.P4121446531684403204

`A281253(n+1)+A281254(n+1)-A053063(n+1)`
-/

namespace A053064.P4121446531684403204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281253 (n + 1) + (A281254 (n + 1) - A053063 (n + 1))

end

end A053064.P4121446531684403204

/-!
# A053067: a(n) is the concatenation of next n numbers (omit leading 0's).

The programs for A053067, there is no canonical definition to state claims against.
-/

/-! ## A053067.P7978172054437964002

`A095219(n+1)+a(n-1)` with `a(0)=1`
-/

namespace A053067.P7978172054437964002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095219 (n + 1) + a (n - 1)

end

end A053067.P7978172054437964002

/-!
# A053069: Numbers that in Italian begin with the letter "d".

The programs for A053069, there is no canonical definition to state claims against.
-/

/-! ## A053069.P12459586534526859433

`A060248(A293754(n+1))`
-/

namespace A053069.P12459586534526859433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060248 (A293754 (n + 1)).toNat

end

end A053069.P12459586534526859433

/-! ## A053069.P5221138374661874267

`A060248(round(acot(A060237(n+1)%2)+n))`
-/

namespace A053069.P5221138374661874267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060248 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (Int.tmod (A060237 (n + 1)) 2 : ℝ) + (n : ℝ))).toNat

end

end A053069.P5221138374661874267

/-! ## A053069.P2886044838719574397

`record[A060248(n+1)%A060262(n+1)]`
-/

namespace A053069.P2886044838719574397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060248 (n + 1)) (A060262 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053069.P2886044838719574397

/-!
# A053070: Primes p such that p-6, p and p+6 are consecutive primes.

The programs for A053070, there is no canonical definition to state claims against.
-/

/-! ## A053070.P7767069101370216461

`A047948(n+1)+6`
-/

namespace A053070.P7767069101370216461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047948 (n + 1) + 6

end

end A053070.P7767069101370216461

/-! ## A053070.P13022310747102242220

`∩[A006489(n+1), A006562(n+1)]`
-/

namespace A053070.P13022310747102242220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053070.P13022310747102242220

/-! ## A053070.P5437736040185262628

`∩[A006489(n+1), A225494(n+1)]`
-/

namespace A053070.P5437736040185262628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053070.P5437736040185262628

/-! ## A053070.P17718991274233777704

`∩[A006489(n+1), A353136(n+1)]`
-/

namespace A053070.P17718991274233777704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053070.P17718991274233777704

/-! ## A053070.P1001619722561308289

`p?[A122535(n+1)+6]`
-/

namespace A053070.P1001619722561308289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053070.P1001619722561308289

/-! ## A053070.P13849178196132628321

`p?[A181424(n+1)-6]`
-/

namespace A053070.P13849178196132628321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053070.P13849178196132628321

/-! ## A053070.P13390182007728933679

`p?[A037904(A117217(n+2))+A006562(n+2)]`
-/

namespace A053070.P13390182007728933679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037904 (A117217 (n + 2)).toNat + A006562 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053070.P13390182007728933679

/-! ## A053070.P10316577969649310584

`∩[A006489(n+1), A075540(n+1)]`
-/

namespace A053070.P10316577969649310584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053070.P10316577969649310584

/-! ## A053070.P13935261833665106185

`∩[A006562(n+1), A031924(n+1)]`
-/

namespace A053070.P13935261833665106185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053070.P13935261833665106185

/-! ## A053070.P2373562894415177102

`∩[A006562(n+1), A031925(n+1)]`
-/

namespace A053070.P2373562894415177102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053070.P2373562894415177102

/-! ## A053070.P10098546804641886589

`∩[A031924(n+1), A031925(n+1)]`
-/

namespace A053070.P10098546804641886589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053070.P10098546804641886589

/-! ## A053070.P13630482048672334563

`∩[A031924(n+1), A075540(n+1)]`
-/

namespace A053070.P13630482048672334563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053070.P13630482048672334563

/-! ## A053070.P8882927540071072947

`∩[A031925(n+1), A075540(n+1)]`
-/

namespace A053070.P8882927540071072947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053070.P8882927540071072947

/-! ## A053070.P401904493506117289

`∩[A031924(n+1), A225494(n+1)]`
-/

namespace A053070.P401904493506117289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031924 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053070.P401904493506117289

/-! ## A053070.P17402350562978702690

`∩[A031925(n+1), A225494(n+1)]`
-/

namespace A053070.P17402350562978702690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053070.P17402350562978702690

/-! ## A053070.P3567540523103168116

`∩[A006562(n+1), A087681(n+1)]`
-/

namespace A053070.P3567540523103168116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053070.P3567540523103168116

/-! ## A053070.P4964546492842350587

`∩[A075540(n+1), A087681(n+1)]`
-/

namespace A053070.P4964546492842350587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053070.P4964546492842350587

/-! ## A053070.P12673928890784793270

`∩[A087681(n+1), A353136(n+1)]`
-/

namespace A053070.P12673928890784793270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053070.P12673928890784793270

/-! ## A053070.P7268020587741965041

`∩[A006562(n+1), A046117(n+1)]`
-/

namespace A053070.P7268020587741965041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053070.P7268020587741965041

/-! ## A053070.P16187485610047332188

`∩[A006562(n+1), A067831(n+1)]`
-/

namespace A053070.P16187485610047332188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053070.P16187485610047332188

/-!
# A053072: Primes p such that p-12, p and p+12 are consecutive primes.

The programs for A053072, there is no canonical definition to state claims against.
-/

/-! ## A053072.P15493113427747360945

`A052188(n+1)+12`
-/

namespace A053072.P15493113427747360945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052188 (n + 1) + 12

end

end A053072.P15493113427747360945

/-! ## A053072.P2963435264141543395

`∩[A006562(n+1), A137796(n+1)]`
-/

namespace A053072.P2963435264141543395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053072.P2963435264141543395

/-! ## A053072.P4029598577626282274

`∩[A137796(n+1), A225494(n+1)]`
-/

namespace A053072.P4029598577626282274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053072.P4029598577626282274

/-! ## A053072.P10853918170424011405

`∩[A006562(n+1), A031930(n+1)]`
-/

namespace A053072.P10853918170424011405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053072.P10853918170424011405

/-! ## A053072.P16561168327741624214

`∩[A006562(n+1), A031931(n+1)]`
-/

namespace A053072.P16561168327741624214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053072.P16561168327741624214

/-! ## A053072.P12155188937950314217

`∩[A031930(n+1), A031931(n+1)]`
-/

namespace A053072.P12155188937950314217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053072.P12155188937950314217

/-! ## A053072.P3453183275314646145

`∩[A031930(n+1), A225494(n+1)]`
-/

namespace A053072.P3453183275314646145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053072.P3453183275314646145

/-! ## A053072.P1813853079521141292

`∩[A031931(n+1), A225494(n+1)]`
-/

namespace A053072.P1813853079521141292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053072.P1813853079521141292

/-! ## A053072.P9324237653781534324

`∩[A031930(n+1), A075540(n+1)]`
-/

namespace A053072.P9324237653781534324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053072.P9324237653781534324

/-! ## A053072.P11333884633893433775

`∩[A031931(n+1), A075540(n+1)]`
-/

namespace A053072.P11333884633893433775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053072.P11333884633893433775

/-! ## A053072.P13414945436862970794

`∩[A075540(n+1), A137796(n+1)]`
-/

namespace A053072.P13414945436862970794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053072.P13414945436862970794

/-! ## A053072.P9695623716804703734

`∩[A137796(n+1), A137872(n+1)]`
-/

namespace A053072.P9695623716804703734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053072.P9695623716804703734

/-! ## A053072.P16606098061196412099

`∩[A137796(n+1), A167839(n+1)]`
-/

namespace A053072.P16606098061196412099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167839 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053072.P16606098061196412099

/-! ## A053072.P14339613187742062951

`∩[A031930(n+1), A216124(n+1)]`
-/

namespace A053072.P14339613187742062951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053072.P14339613187742062951

/-! ## A053072.P16831151125554610926

`∩[A031931(n+1), A216124(n+1)]`
-/

namespace A053072.P16831151125554610926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053072.P16831151125554610926

/-! ## A053072.P14253706219997801293

`∩[A137796(n+1), A216124(n+1)]`
-/

namespace A053072.P14253706219997801293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053072.P14253706219997801293

/-! ## A053072.P6669057878880471098

`p?[A006562(n+1)*A037904(A117217(n+1))]`
-/

namespace A053072.P6669057878880471098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1) * A037904 (A117217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053072.P6669057878880471098

/-!
# A053073: Balanced primes separated from the next lower and next higher prime neighbors by 18.

The programs for A053073, there is no canonical definition to state claims against.
-/

/-! ## A053073.P11366588887980001576

`A052189(n+1)+18`
-/

namespace A053073.P11366588887980001576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052189 (n + 1) + 18

end

end A053073.P11366588887980001576

/-! ## A053073.P12844927239112208133

`A031937(eq[18, A053327(n+1)])`
-/

namespace A053073.P12844927239112208133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031937 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A053073.P12844927239112208133

/-! ## A053073.P10450602101700235535

`∩[A006562(n+1), A031937(n)]`
-/

namespace A053073.P10450602101700235535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031937 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053073.P10450602101700235535

/-! ## A053073.P17666943827024497697

`∩[A137875(n+1), A161723(n+1)]`
-/

namespace A053073.P17666943827024497697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137875 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053073.P17666943827024497697

/-! ## A053073.P12562944029390579815

`p?[gcd(A031936(n+2), A031937(n))]`
-/

namespace A053073.P12562944029390579815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031936 (n + 2)) (A031937 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A053073.P12562944029390579815

/-! ## A053073.P11166834337556115012

`p?[A291766(A117217(n+1))+A122535(n+1)]`
-/

namespace A053073.P11166834337556115012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291766 (A117217 (n + 1)).toNat + A122535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A053073.P11166834337556115012

/-!
# A053074: Primes p such that p-24, p and p+24 are consecutive primes.

The programs for A053074, there is no canonical definition to state claims against.
-/

/-! ## A053074.P14345527978515566001

`A052190(n+1)+24`
-/

namespace A053074.P14345527978515566001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052190 (n + 1) + 24

end

end A053074.P14345527978515566001

/-! ## A053074.P13506351849204183340

`∩[A098974(n+1), A126720(n+1)]`
-/

namespace A053074.P13506351849204183340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053074.P13506351849204183340

/-! ## A053074.P8290015961565656889

`p?[gcd(A098974(n+2), A126720(n+1))]`
-/

namespace A053074.P8290015961565656889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098974 (n + 2)) (A126720 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A053074.P8290015961565656889

/-! ## A053074.P4596161576583569913

`A128383(3*n+1)+24`
-/

namespace A053074.P4596161576583569913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128383 (3 * n + 1) + 24

end

end A053074.P4596161576583569913

/-! ## A053074.P7257467069251962420

`record[A128383(A087507(n))+24]`
-/

namespace A053074.P7257467069251962420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128383 (A087507 n).toNat + 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053074.P7257467069251962420

/-!
# A053075: Primes p such that p-30, p, p+30 are consecutive primes.

The programs for A053075, there is no canonical definition to state claims against.
-/

/-! ## A053075.P4061965290560846739

`A052195(n+1)+30`
-/

namespace A053075.P4061965290560846739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052195 (n + 1) + 30

end

end A053075.P4061965290560846739

/-!
# A053076: Balanced primes separated from the next lower and next higher prime neighbors by 36.

The programs for A053076, there is no canonical definition to state claims against.
-/

/-! ## A053076.P9492025702553940267

`A052197(n+1)+36`
-/

namespace A053076.P9492025702553940267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052197 (n + 1) + 36

end

end A053076.P9492025702553940267

/-!
# A053077: Balanced primes separated from the next lower and next higher prime neighbors by 42.

The programs for A053077, there is no canonical definition to state claims against.
-/

/-! ## A053077.P8147463978379764139

`A052198(n+1)+42`
-/

namespace A053077.P8147463978379764139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052198 (n + 1) + 42

end

end A053077.P8147463978379764139

/-!
# A053078: Balanced primes separated from the next lower and next higher prime neighbors by 48.

The programs for A053078, there is no canonical definition to state claims against.
-/

/-! ## A053078.P1345072454328155155

`A329578(n+1)+48`
-/

namespace A053078.P1345072454328155155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329578 (n + 1) + 48

end

end A053078.P1345072454328155155

/-!
# A053084: Number of ways of getting no pair, a pair, 2 pair, 3 of a kind, other straight, other flush, full house, 4 of a kind, other straight flush, royal flush or 5 of a kind in 5-card poker with two jokers wild.

The programs for A053084, there is no canonical definition to state claims against.
-/

/-! ## A053084.P10522392090327870927

`A053083(A145994(ceil((n+1)/6))-n)`
-/

namespace A053084.P10522392090327870927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053083 (A145994 ⌈(n + 1 : ℚ) / 6⌉.toNat - (n : ℤ)).toNat

end

end A053084.P10522392090327870927

/-!
# A053086: Number of ways of getting no pair, a pair, 2 pair, 3 of a kind, other straight, other flush, full house, 4 of a kind, other straight flush, royal flush or 5 of a kind in 5-card poker with deuces wild.

The programs for A053086, there is no canonical definition to state claims against.
-/

/-! ## A053086.P13933580153922741850

`A053085(13-A104414(n+3))`
-/

namespace A053086.P13933580153922741850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053085 (13 - A104414 (n + 3)).toNat

end

end A053086.P13933580153922741850

/-!
# A053087: a(n) is the smallest j for which 2^j kara n is defined (see A053405).

The programs for A053087, there is no canonical definition to state claims against.
-/

/-! ## A053087.P12899640559553422756

`floor(log2((n+1)*A053092(n+1)))`
-/

namespace A053087.P12899640559553422756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 ((n + 1 : ℤ) * A053092 (n + 1)).toNat

end

end A053087.P12899640559553422756

/-! ## A053087.P338131791556111291

`ceil(A000523(n+1)+log2(A053092(n+1)))`
-/

namespace A053087.P338131791556111291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000523 (n + 1) : ℝ) + Real.logb 2 (A053092 (n + 1) : ℝ)⌉

end

end A053087.P338131791556111291

/-! ## A053087.P14378442170590185994

`A000523(A053092(n+1))+∑[A209229(n)]`
-/

namespace A053087.P14378442170590185994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A053092 (n + 1)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053087.P14378442170590185994

/-! ## A053087.P16428287168089631837

`ceil(A059939(2*(n+1))+log2(A053092(n+1)))`
-/

namespace A053087.P16428287168089631837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059939 (2 * (n + 1)) : ℝ) + Real.logb 2 (A053092 (n + 1) : ℝ)⌉

end

end A053087.P16428287168089631837

/-! ## A053087.P2843022166316533617

`A000523(2*n+1)+A000523(A053092(n+1))`
-/

namespace A053087.P2843022166316533617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * n + 1) + A000523 (A053092 (n + 1)).toNat

end

end A053087.P2843022166316533617

/-! ## A053087.P144739841709500121

`A000523((n+1)*A053092(n+1))`
-/

namespace A053087.P144739841709500121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 ((n + 1 : ℤ) * A053092 (n + 1)).toNat

end

end A053087.P144739841709500121

/-! ## A053087.P9306630884012518583

`A000523(A053092(n+1)*A199343(n))`
-/

namespace A053087.P9306630884012518583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A053092 (n + 1) * A199343 n).toNat

end

end A053087.P9306630884012518583

/-!
# A053088: a(n) = 3*a(n-2) + 2*a(n-3) for n > 2, a(0)=1, a(1)=0, a(2)=3.

The programs for A053088, the canonical program `A053088.P18334695315146648361` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053088 has offset 0).

The definition of A053088 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-2)+2*a(n-3)` (program `A053088.P18334695315146648361`, by `A053088.P18334695315146648361.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A053088.P18334695315146648361

`3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053088

/-- `3*a(n-2)+2*a(n-3)` -/
def P18334695315146648361.Spec : Prop :=
  ∀ n, (P18334695315146648361.a n : ℤ) = A053088 n

theorem P18334695315146648361.correct : P18334695315146648361.Spec := by
  intro n
  simp only [A053088]

end A053088

/-! ## A053088.P3644455097554476914

`(2^(n+2)+(-1)^n*(3*n+5))/9`
-/

namespace A053088.P3644455097554476914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (n + 2) : ℤ) + (-1) ^ n * (3 * n + 5 : ℤ) : ℚ) / 9

end

end A053088.P3644455097554476914

namespace A053088

/-- `(2^(n+2)+(-1)^n*(3*n+5))/9` -/
def P3644455097554476914.Spec : Prop :=
  ∀ n, P3644455097554476914.a n = (A053088 n : ℚ)

theorem P3644455097554476914.correct : P3644455097554476914.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A053088, Nat.add_sub_cancel, A053088.P3644455097554476914.a, A053088.P18334695315146648361.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A053088, Nat.add_sub_cancel, A053088.P3644455097554476914.a, A053088.P18334695315146648361.a, SequenceMachineLib.memo_apply] at h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h2 h3 ⊢
      rw [← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A053088

/-! ## A053088.P2427985145356492590

`ogf(1/(1-3x^2-2x^3))`
-/

namespace A053088.P2427985145356492590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, -3, -2] n

end

end A053088.P2427985145356492590

namespace A053088

/-- `ogf(1/(1-3x^2-2x^3))` -/
def P2427985145356492590.Spec : Prop :=
  ∀ n, P2427985145356492590.a n = A053088 n

end A053088

/-! ## A053088.P13241321471853387577

`abs(Δ[∑[n]-2*a(n-1)])` with `a(0)=0`
-/

namespace A053088.P13241321471853387577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A053088.P13241321471853387577

namespace A053088

/-- `abs(Δ[∑[n]-2*a(n-1)])` -/
def P13241321471853387577.Spec : Prop :=
  ∀ n, P13241321471853387577.a n = A053088 n

end A053088

/-! ## A053088.P821227902304383054

`xor(1, a(n-1)+2*a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A053088.P821227902304383054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  Nat.xor 1 (a (n - 1) + 2 * a (n - 2))

end

end A053088.P821227902304383054

namespace A053088

/-- `xor(1, a(n-1)+2*a(n-2))` -/
def P821227902304383054.Spec : Prop :=
  ∀ n, (P821227902304383054.a n : ℤ) = A053088 n

end A053088

/-! ## A053088.P16350741427850293110

`2*a(n-1)+(n+1)*(-1)^n` with `a(0)=1`
-/

namespace A053088.P16350741427850293110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + (n + 1 : ℤ) * (-1) ^ n

end

end A053088.P16350741427850293110

namespace A053088

/-- `2*a(n-1)+(n+1)*(-1)^n` -/
def P16350741427850293110.Spec : Prop :=
  ∀ n, P16350741427850293110.a n = A053088 n

end A053088

/-! ## A053088.P2046463779192604210

`a(n-1)+a(n-1)+(n+1)/(-1)^n` with `a(0)=1`
-/

namespace A053088.P2046463779192604210
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (n + 1 : ℚ) / ((-1) ^ n : ℚ))

end

end A053088.P2046463779192604210

namespace A053088

/-- `a(n-1)+a(n-1)+(n+1)/(-1)^n` -/
def P2046463779192604210.Spec : Prop :=
  ∀ n, P2046463779192604210.a n = (A053088 n : ℚ)

end A053088

/-! ## A053088.P7635459304354699064

`2^(n-1)-a(n-1)-Δ[2*a(n-1)-n%2]` with `a(0)=1, a(1)=0`
-/

namespace A053088.P7635459304354699064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 * f1 (n - 1) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1) - (f1 (n + 1) - f1 n : ℚ)

end

end A053088.P7635459304354699064

namespace A053088

/-- `2^(n-1)-a(n-1)-Δ[2*a(n-1)-n%2]` -/
def P7635459304354699064.Spec : Prop :=
  ∀ n, P7635459304354699064.a n = (A053088 n : ℚ)

end A053088

/-! ## A053088.P2863319269048099783

`2^(n-1)-a(n-1)-Δ[2*a(n-1)-and(1, n)]` with `a(0)=1, a(1)=0`
-/

namespace A053088.P2863319269048099783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  2 * f1 (n - 1) - (Nat.land 1 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1) - (f1 (n + 1) - f1 n : ℚ)

end

end A053088.P2863319269048099783

namespace A053088

/-- `2^(n-1)-a(n-1)-Δ[2*a(n-1)-and(1, n)]` -/
def P2863319269048099783.Spec : Prop :=
  ∀ n, P2863319269048099783.a n = (A053088 n : ℚ)

end A053088

/-! ## A053088.P119744171214049749

`abs(A077898(n))`
-/

namespace A053088.P119744171214049749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077898 n|

end

end A053088.P119744171214049749

namespace A053088

/-- `abs(A077898(n))` -/
def P119744171214049749.Spec : Prop :=
  ∀ n, P119744171214049749.a n = A053088 n

end A053088

/-! ## A053088.P7710263398501893230

`xor(1, A113954(n+1))`
-/

namespace A053088.P7710263398501893230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A113954 (n + 1))

end

end A053088.P7710263398501893230

namespace A053088

/-- `xor(1, A113954(n+1))` -/
def P7710263398501893230.Spec : Prop :=
  ∀ n, P7710263398501893230.a n = A053088 n

end A053088

/-! ## A053088.P6334369825933884298

`A078008(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A053088.P6334369825933884298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A078008 n + a (n - 2)

end

end A053088.P6334369825933884298

namespace A053088

/-- `A078008(n)+a(n-2)` -/
def P6334369825933884298.Spec : Prop :=
  ∀ n, P6334369825933884298.a n = A053088 n

end A053088

/-! ## A053088.P623875053519150069

`2*A106157(n+1)+n+3`
-/

namespace A053088.P623875053519150069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A106157 (n + 1) + (n + 3 : ℤ)

end

end A053088.P623875053519150069

namespace A053088

/-- `2*A106157(n+1)+n+3` -/
def P623875053519150069.Spec : Prop :=
  ∀ n, P623875053519150069.a n = A053088 n

end A053088

/-! ## A053088.P7521881714633020252

`A133993(n)-A010673(n)`
-/

namespace A053088.P7521881714633020252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133993 n - A010673 n

end

end A053088.P7521881714633020252

namespace A053088

/-- `A133993(n)-A010673(n)` -/
def P7521881714633020252.Spec : Prop :=
  ∀ n, P7521881714633020252.a n = A053088 n

end A053088

/-! ## A053088.P15365820206629766993

`A033999(n)*A077898(n)`
-/

namespace A053088.P15365820206629766993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A077898 n

end

end A053088.P15365820206629766993

namespace A053088

/-- `A033999(n)*A077898(n)` -/
def P15365820206629766993.Spec : Prop :=
  ∀ n, P15365820206629766993.a n = A053088 n

end A053088

/-! ## A053088.P17072971769521323323

`gcd(A000038(n), A077898(n))`
-/

namespace A053088.P17072971769521323323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A077898 n)

end

end A053088.P17072971769521323323

namespace A053088

/-- `gcd(A000038(n), A077898(n))` -/
def P17072971769521323323.Spec : Prop :=
  ∀ n, (P17072971769521323323.a n : ℤ) = A053088 n

end A053088

/-! ## A053088.P8978754962057715888

`lcm(A000034(n), A077898(n))`
-/

namespace A053088.P8978754962057715888
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A077898 n)

end

end A053088.P8978754962057715888

namespace A053088

/-- `lcm(A000034(n), A077898(n))` -/
def P8978754962057715888.Spec : Prop :=
  ∀ n, (P8978754962057715888.a n : ℤ) = A053088 n

end A053088

/-! ## A053088.P3022846000076414426

`A113405(n+2)+A104581(n)`
-/

namespace A053088.P3022846000076414426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (n + 2) + A104581 n

end

end A053088.P3022846000076414426

namespace A053088

/-- `A113405(n+2)+A104581(n)` -/
def P3022846000076414426.Spec : Prop :=
  ∀ n, P3022846000076414426.a n = A053088 n

end A053088

/-! ## A053088.P9705205318040022894

`∑[A033999(n+1)*A140962(n+1)]`
-/

namespace A053088.P9705205318040022894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A140962 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053088.P9705205318040022894

namespace A053088

/-- `∑[A033999(n+1)*A140962(n+1)]` -/
def P9705205318040022894.Spec : Prop :=
  ∀ n, P9705205318040022894.a n = A053088 n

end A053088

/-! ## A053088.P15458971776785174666

`∑[a(n-2)+a(n-1)+a(n-2)]-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A053088.P15458971776785174666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A053088.P15458971776785174666

namespace A053088

/-- `∑[a(n-2)+a(n-1)+a(n-2)]-a(n-1)` -/
def P15458971776785174666.Spec : Prop :=
  ∀ n, P15458971776785174666.a n = A053088 n

end A053088

/-!
# A053089: a(n) = prime(n)^prime(n+1).

The programs for A053089, the canonical program `A053089.P7340105326366583281` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053089 has offset 1).

The definition of A053089 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053089.P7340105326366583281

`A000040(n+1)^A000040(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A053089

/-- `A000040(n+1)^A000040(n+2)` -/
def P7340105326366583281.Spec : Prop :=
  ∀ n, P7340105326366583281.a n = (A053089 (n + 1) : ℚ)

end A053089

/-! ## A053089.P8414710648995654102

`p?[comp[n²]]^p?[2*n+1]`
-/

namespace A053089.P8414710648995654102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

end

end A053089.P8414710648995654102

namespace A053089

/-- `p?[comp[n²]]^p?[2*n+1]` -/
def P8414710648995654102.Spec : Prop :=
  ∀ n, (P8414710648995654102.a n : ℤ) = A053089 (n + 1)

end A053089

/-! ## A053089.P10375908132487838704

`comp[n^C(2, ∑{e}[n, #])!]^p?[2*n+1]`
-/

namespace A053089.P10375908132487838704
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

end

end A053089.P10375908132487838704

namespace A053089

/-- `comp[n^C(2, ∑{e}[n, #])!]^p?[2*n+1]` -/
def P10375908132487838704.Spec : Prop :=
  ∀ n, (P10375908132487838704.a n : ℤ) = A053089 (n + 1)

end A053089

/-! ## A053089.P18232028289418671201

`record[A351367(n+2)]`
-/

namespace A053089.P18232028289418671201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351367 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A053089.P18232028289418671201

namespace A053089

/-- `record[A351367(n+2)]` -/
def P18232028289418671201.Spec : Prop :=
  ∀ n, P18232028289418671201.a n = A053089 (n + 1)

end A053089

/-! ## A053089.P1782222639430196413

`record[A006530(n+2)]^p?[2*n+1]`
-/

namespace A053089.P1782222639430196413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

end

end A053089.P1782222639430196413

namespace A053089

/-- `record[A006530(n+2)]^p?[2*n+1]` -/
def P1782222639430196413.Spec : Prop :=
  ∀ n, P1782222639430196413.a n = A053089 (n + 1)

end A053089

/-!
# A053090: Number of F^3-convex polyominoes on honeycomb lattice with given semiperimeter.

The programs for A053090, the canonical program `A053090.P4249177881490497809` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053090 has offset 3).

The definition of A053090 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A053090.P4249177881490497809

`round((n+3)*(2*(n+3)²-27*(-1)^(n+3)+3)/144)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A053090

/-- `round((n+3)*(2*(n+3)²-27*(-1)^(n+3)+3)/144)` -/
def P4249177881490497809.Spec : Prop :=
  ∀ n, P4249177881490497809.a n = A053090 (n + 3)

theorem P4249177881490497809.correct : P4249177881490497809.Spec := by
  intro n
  simp only [A053090, Nat.add_sub_cancel]

end A053090

/-! ## A053090.P12639586991229576362

`∑[ceil(∑[(n+1)/3])-a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A053090.P12639586991229576362
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉ - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A053090.P12639586991229576362

namespace A053090

/-- `∑[ceil(∑[(n+1)/3])-a(n-1)]-a(n-1)` -/
def P12639586991229576362.Spec : Prop :=
  ∀ n, P12639586991229576362.a n = A053090 (n + 3)

end A053090

/-! ## A053090.P14938189672624985414

`∑[∑[a(n-2)+1]-(a(n-2)+a(n-1))]-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A053090.P14938189672624985414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  f2 (n - 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (f1 (n - 2) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A053090.P14938189672624985414

namespace A053090

/-- `∑[∑[a(n-2)+1]-(a(n-2)+a(n-1))]-a(n-1)` -/
def P14938189672624985414.Spec : Prop :=
  ∀ n, P14938189672624985414.a n = A053090 (n + 3)

end A053090

/-! ## A053090.P13519397700344024768

`A001973(n)-a(n-1)` with `a(0)=1`
-/

namespace A053090.P13519397700344024768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001973 n - a (n - 1)

end

end A053090.P13519397700344024768

namespace A053090

/-- `A001973(n)-a(n-1)` -/
def P13519397700344024768.Spec : Prop :=
  ∀ n, P13519397700344024768.a n = A053090 (n + 3)

end A053090

/-! ## A053090.P14563100058163067019

`A008806(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A053090.P14563100058163067019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A008806 n + a (n - 2)

end

end A053090.P14563100058163067019

namespace A053090

/-- `A008806(n)+a(n-2)` -/
def P14563100058163067019.Spec : Prop :=
  ∀ n, P14563100058163067019.a n = A053090 (n + 3)

end A053090

/-! ## A053090.P4116204135243661014

`A008795(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=3`
-/

namespace A053090.P4116204135243661014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 3] fun n a =>
  A008795 n + a (n - 3)

end

end A053090.P4116204135243661014

namespace A053090

/-- `A008795(n)+a(n-3)` -/
def P4116204135243661014.Spec : Prop :=
  ∀ n, P4116204135243661014.a n = A053090 (n + 3)

end A053090

/-! ## A053090.P2391370117417873238

`A266769(n)-A114209(n+1)`
-/

namespace A053090.P2391370117417873238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n - A114209 (n + 1)

end

end A053090.P2391370117417873238

namespace A053090

/-- `A266769(n)-A114209(n+1)` -/
def P2391370117417873238.Spec : Prop :=
  ∀ n, P2391370117417873238.a n = A053090 (n + 3)

end A053090

/-! ## A053090.P7728263781055335845

`A008763(n+2)+A008731(n)`
-/

namespace A053090.P7728263781055335845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (n + 2) + A008731 n

end

end A053090.P7728263781055335845

namespace A053090

/-- `A008763(n+2)+A008731(n)` -/
def P7728263781055335845.Spec : Prop :=
  ∀ n, P7728263781055335845.a n = A053090 (n + 3)

end A053090

/-! ## A053090.P9980105210817288907

`A114209(n+2)+A008763(n+2)`
-/

namespace A053090.P9980105210817288907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114209 (n + 2) + A008763 (n + 2)

end

end A053090.P9980105210817288907

namespace A053090

/-- `A114209(n+2)+A008763(n+2)` -/
def P9980105210817288907.Spec : Prop :=
  ∀ n, P9980105210817288907.a n = A053090 (n + 3)

end A053090

/-! ## A053090.P1933734123617423863

`A266769(n)-A008799(A165754(n))`
-/

namespace A053090.P1933734123617423863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266769 n - A008799 (A165754 n).toNat

end

end A053090.P1933734123617423863

namespace A053090

/-- `A266769(n)-A008799(A165754(n))` -/
def P1933734123617423863.Spec : Prop :=
  ∀ n, P1933734123617423863.a n = A053090 (n + 3)

end A053090

/-!
# A053091: Number of F^3-convex polyominoes on the honeycomb lattice by number of cells.

The programs for A053091, the canonical program `A053091.P8742769929826108326` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053091 has offset 1).

The definition of A053091 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053091.P8742769929826108326

`A239053(n+1)/2-A363291(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A053091

/-- `A239053(n+1)/2-A363291(n+1)` -/
def P8742769929826108326.Spec : Prop :=
  ∀ n, P8742769929826108326.a n = (A053091 (n + 1) : ℚ)

end A053091

/-! ## A053091.P16160936435377975789

`A363359(n+1)-A239053(n+1)/2`
-/

namespace A053091.P16160936435377975789
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363359 (n + 1) : ℚ) - (A239053 (n + 1) : ℚ) / 2

end

end A053091.P16160936435377975789

namespace A053091

/-- `A363359(n+1)-A239053(n+1)/2` -/
def P16160936435377975789.Spec : Prop :=
  ∀ n, P16160936435377975789.a n = (A053091 (n + 1) : ℚ)

end A053091

/-! ## A053091.P3441730232084201999

`(A363359(n+1)-A363291(n+1))/2`
-/

namespace A053091.P3441730232084201999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363359 (n + 1) - A363291 (n + 1) : ℚ) / 2

end

end A053091.P3441730232084201999

namespace A053091

/-- `(A363359(n+1)-A363291(n+1))/2` -/
def P3441730232084201999.Spec : Prop :=
  ∀ n, P3441730232084201999.a n = (A053091 (n + 1) : ℚ)

end A053091

/-! ## A053091.P11641567082253276192

`A228443(Δ[n²])/2`
-/

namespace A053091.P11641567082253276192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228443 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A053091.P11641567082253276192

namespace A053091

/-- `A228443(Δ[n²])/2` -/
def P11641567082253276192.Spec : Prop :=
  ∀ n, P11641567082253276192.a n = (A053091 (n + 1) : ℚ)

end A053091

/-! ## A053091.P14870900386781861556

`A050469(4*n+3)/2`
-/

namespace A053091.P14870900386781861556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050469 (4 * n + 3) : ℚ) / 2

end

end A053091.P14870900386781861556

namespace A053091

/-- `A050469(4*n+3)/2` -/
def P14870900386781861556.Spec : Prop :=
  ∀ n, P14870900386781861556.a n = (A053091 (n + 1) : ℚ)

end A053091

/-! ## A053091.P9036796131050090921

`A001281(A228443(Δ[n²]))`
-/

namespace A053091.P9036796131050090921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A228443 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A053091.P9036796131050090921

namespace A053091

/-- `A001281(A228443(Δ[n²]))` -/
def P9036796131050090921.Spec : Prop :=
  ∀ n, P9036796131050090921.a n = A053091 (n + 1)

end A053091

/-! ## A053091.P8965351620170675580

`A004526(A228443(2*n+1))`
-/

namespace A053091.P8965351620170675580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A228443 (2 * n + 1)).toNat

end

end A053091.P8965351620170675580

namespace A053091

/-- `A004526(A228443(2*n+1))` -/
def P8965351620170675580.Spec : Prop :=
  ∀ n, P8965351620170675580.a n = A053091 (n + 1)

end A053091

/-! ## A053091.P6412387368483314961

`A004525(A050469(A004767(n)))`
-/

namespace A053091.P6412387368483314961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A050469 (A004767 n).toNat).toNat

end

end A053091.P6412387368483314961

namespace A053091

/-- `A004525(A050469(A004767(n)))` -/
def P6412387368483314961.Spec : Prop :=
  ∀ n, P6412387368483314961.a n = A053091 (n + 1)

end A053091

/-! ## A053091.P13075989972769939292

`A004526(-A050457(A004767(n)))`
-/

namespace A053091.P13075989972769939292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (-A050457 (A004767 n).toNat).toNat

end

end A053091.P13075989972769939292

namespace A053091

/-- `A004526(-A050457(A004767(n)))` -/
def P13075989972769939292.Spec : Prop :=
  ∀ n, P13075989972769939292.a n = A053091 (n + 1)

end A053091

/-! ## A053091.P13703436267337108117

`A006370(-A050457(A004767(n)))`
-/

namespace A053091.P13703436267337108117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (-A050457 (A004767 n).toNat).toNat

end

end A053091.P13703436267337108117

namespace A053091

/-- `A006370(-A050457(A004767(n)))` -/
def P13703436267337108117.Spec : Prop :=
  ∀ n, P13703436267337108117.a n = A053091 (n + 1)

end A053091

/-!
# A053092: 2^A053087 kara n.

The programs for A053092, there is no canonical definition to state claims against.
-/

/-! ## A053092.P14689083494851551565

`A036044(A335133(n))+A002718(A151840(n))`
-/

namespace A053092.P14689083494851551565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036044 (A335133 n).toNat + A002718 (A151840 n).toNat

end

end A053092.P14689083494851551565

/-!
# A053093: Smallest composite which when sum of prime factors is repeatedly subtracted reaches a prime after n iterations.

The programs for A053093, there is no canonical definition to state claims against.
-/

/-! ## A053093.P6697038916009379827

`A162425(A338450(n+2))`
-/

namespace A053093.P6697038916009379827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162425 (A338450 (n + 2)).toNat

end

end A053093.P6697038916009379827

/-!
# A053095: Number of primes having exactly the same digits as appear in first n primes.

The programs for A053095, there is no canonical definition to state claims against.
-/

/-! ## A053095.P8028982278056062874

`A080079(xor(n, A357662(n)))`
-/

namespace A053095.P8028982278056062874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (Int.xor (n : ℤ) (A357662 n)).toNat

end

end A053095.P8028982278056062874

/-! ## A053095.P18178193528166757878

`A116512(A325790(n)+A136221(n))`
-/

namespace A053095.P18178193528166757878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116512 (A325790 n + A136221 n).toNat

end

end A053095.P18178193528166757878

/-!
# A053096: When the Euler phi function is iterated with initial value A002110(n) = primorial, a(n) = number of iterations required to reach the fixed number = 1.

The programs for A053096, the canonical program `A053096.P15007582045720351273` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A053096 has offset 1).

The definition of A053096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A053096.P15007582045720351273

`∑[A060607(n+1)]-n`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A053096

/-- `∑[A060607(n+1)]-n` -/
def P15007582045720351273.Spec : Prop :=
  ∀ n, P15007582045720351273.a n = A053096 (n + 1)

theorem P15007582045720351273.correct : P15007582045720351273.Spec := by
  intro n
  simp only [A053096, Nat.add_sub_cancel]

end A053096

/-! ## A053096.P15489471026493435840

`∑[A049108(A000010(A006093(n+1)))]`
-/

namespace A053096.P15489471026493435840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (A000010 (A006093 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053096.P15489471026493435840

namespace A053096

/-- `∑[A049108(A000010(A006093(n+1)))]` -/
def P15489471026493435840.Spec : Prop :=
  ∀ n, P15489471026493435840.a n = A053096 (n + 1)

end A053096

/-! ## A053096.P6781549881284490737

`∑[A054725(Δ[A007504(n)])]`
-/

namespace A053096.P6781549881284490737
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053096.P6781549881284490737

namespace A053096

/-- `∑[A054725(Δ[A007504(n)])]` -/
def P6781549881284490737.Spec : Prop :=
  ∀ n, P6781549881284490737.a n = A053096 (n + 1)

end A053096

/-! ## A053096.P149658431685216849

`∑[A064415(Δ[A007504(n)])]`
-/

namespace A053096.P149658431685216849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053096.P149658431685216849

namespace A053096

/-- `∑[A064415(Δ[A007504(n)])]` -/
def P149658431685216849.Spec : Prop :=
  ∀ n, P149658431685216849.a n = A053096 (n + 1)

end A053096

/-! ## A053096.P18249081063515743682

`∑[A054725(p?[A004442(n)])]`
-/

namespace A053096.P18249081063515743682
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053096.P18249081063515743682

namespace A053096

/-- `∑[A054725(p?[A004442(n)])]` -/
def P18249081063515743682.Spec : Prop :=
  ∀ n, P18249081063515743682.a n = A053096 (n + 1)

end A053096

/-! ## A053096.P10942991202858843636

`∑[A064415(p?[A004442(n)])]`
-/

namespace A053096.P10942991202858843636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053096.P10942991202858843636

namespace A053096

/-- `∑[A064415(p?[A004442(n)])]` -/
def P10942991202858843636.Spec : Prop :=
  ∀ n, P10942991202858843636.a n = A053096 (n + 1)

end A053096

/-! ## A053096.P13727098427818971399

`∑[A064415(p?[A014681(n)])]`
-/

namespace A053096.P13727098427818971399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053096.P13727098427818971399

namespace A053096

/-- `∑[A064415(p?[A014681(n)])]` -/
def P13727098427818971399.Spec : Prop :=
  ∀ n, P13727098427818971399.a n = A053096 (n + 1)

end A053096

/-! ## A053096.P14109392978668890857

`∑[A054725(A000040(n+1))]`
-/

namespace A053096.P14109392978668890857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053096.P14109392978668890857

namespace A053096

/-- `∑[A054725(A000040(n+1))]` -/
def P14109392978668890857.Spec : Prop :=
  ∀ n, P14109392978668890857.a n = A053096 (n + 1)

end A053096

/-! ## A053096.P7892376247425729584

`∑[A064415(A008578(n+2))]`
-/

namespace A053096.P7892376247425729584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053096.P7892376247425729584

namespace A053096

/-- `∑[A064415(A008578(n+2))]` -/
def P7892376247425729584.Spec : Prop :=
  ∀ n, P7892376247425729584.a n = A053096 (n + 1)

end A053096

/-! ## A053096.P8349220668716395641

`∑[A049108(A000040(n+1)-1)]-n`
-/

namespace A053096.P8349220668716395641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A053096.P8349220668716395641

namespace A053096

/-- `∑[A049108(A000040(n+1)-1)]-n` -/
def P8349220668716395641.Spec : Prop :=
  ∀ n, P8349220668716395641.a n = A053096 (n + 1)

end A053096

/-! ## A053096.P14595709052668700690

`∑[A049108(A040976(n+1)+1)-1]+1`
-/

namespace A053096.P14595709052668700690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (A040976 (n + 1) + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A053096.P14595709052668700690

namespace A053096

/-- `∑[A049108(A040976(n+1)+1)-1]+1` -/
def P14595709052668700690.Spec : Prop :=
  ∀ n, P14595709052668700690.a n = A053096 (n + 1)

end A053096

/-! ## A053096.P3581566708138410105

`∑[A064415(p?[A090223(n)])]`
-/

namespace A053096.P3581566708138410105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053096.P3581566708138410105

namespace A053096

/-- `∑[A064415(p?[A090223(n)])]` -/
def P3581566708138410105.Spec : Prop :=
  ∀ n, P3581566708138410105.a n = A053096 (n + 1)

end A053096

/-! ## A053096.P17314662764903297448

`∑[A054725(p?[A006368(n)])]`
-/

namespace A053096.P17314662764903297448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053096.P17314662764903297448

namespace A053096

/-- `∑[A054725(p?[A006368(n)])]` -/
def P17314662764903297448.Spec : Prop :=
  ∀ n, P17314662764903297448.a n = A053096 (n + 1)

end A053096

/-! ## A053096.P14720518023344248314

`∑[A054725(p?[A166711(n)])]`
-/

namespace A053096.P14720518023344248314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166711 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A053096.P14720518023344248314

namespace A053096

/-- `∑[A054725(p?[A166711(n)])]` -/
def P14720518023344248314.Spec : Prop :=
  ∀ n, P14720518023344248314.a n = A053096 (n + 1)

end A053096

/-!
# A053097: a(n) is the number of powers of 2 among the iterates of the Euler phi function when it is iterated with initial value A002110(n), the n-th primorial number.

The programs for A053097, there is no canonical definition to state claims against.
-/

/-! ## A053097.P12982703703212579145

`A053099(n+1)+1`
-/

namespace A053097.P12982703703212579145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053099 (n + 1) + 1

end

end A053097.P12982703703212579145

/-! ## A053097.P8011695930503849963

`A020725(A053099(n+1))`
-/

namespace A053097.P8011695930503849963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A053099 (n + 1)).toNat

end

end A053097.P8011695930503849963

/-! ## A053097.P14084100192633001190

`log2(A053098(n+1))+1`
-/

namespace A053097.P14084100192633001190
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A053098 (n + 1) : ℝ) + 1

end

end A053097.P14084100192633001190

/-! ## A053097.P1231477475299134391

`A020725(log2(A053098(n+1)))`
-/

namespace A053097.P1231477475299134391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.roundAway (Real.logb 2 (A053098 (n + 1) : ℝ))).toNat

end

end A053097.P1231477475299134391

/-! ## A053097.P14379547658098727089

`A020725(val(A053098(n+1), 2))`
-/

namespace A053097.P14379547658098727089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.valuation (A053098 (n + 1)).toNat 2)

end

end A053097.P14379547658098727089

/-!
# A053098: When the Euler phi function is iterated with initial value primorial(n) = A002110(n), a(n)= first (maximum) power of 2 emerging during iteration.

The programs for A053098, there is no canonical definition to state claims against.
-/

/-! ## A053098.P9029959338707714651

`2^A053099(n+1)`
-/

namespace A053098.P9029959338707714651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A053099 (n + 1) : ℤ)

end

end A053098.P9029959338707714651

/-! ## A053098.P1915074393136377099

`2^(A053097(n+1)-1)`
-/

namespace A053098.P1915074393136377099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A053097 (n + 1) - 1 : ℤ)

end

end A053098.P1915074393136377099

/-! ## A053098.P6277241837627273622

`A000079(A053099(n+1))`
-/

namespace A053098.P6277241837627273622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A053099 (n + 1)).toNat

end

end A053098.P6277241837627273622

/-! ## A053098.P8805678378104161974

`A011782(A053097(n+1))`
-/

namespace A053098.P8805678378104161974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A053097 (n + 1)).toNat

end

end A053098.P8805678378104161974

/-! ## A053098.P6604002284281741396

`A000079(A053097(n+1)-1)`
-/

namespace A053098.P6604002284281741396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A053097 (n + 1) - 1).toNat

end

end A053098.P6604002284281741396

/-!
# A053099: When the Euler phi function is iterated with initial value A002110(n) = n-th primorial, a(n) = exponent of largest power of 2 arising in the iteration.

The programs for A053099, there is no canonical definition to state claims against.
-/

/-! ## A053099.P14465923224953275438

`log2(A053098(n+1))`
-/

namespace A053099.P14465923224953275438
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A053098 (n + 1) : ℝ)

end

end A053099.P14465923224953275438

/-! ## A053099.P13783890561256480394

`A053097(n+1)-1`
-/

namespace A053099.P13783890561256480394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053097 (n + 1) - 1

end

end A053099.P13783890561256480394

/-! ## A053099.P11263514090875513360

`A057428(n+1)+A053097(n+1)`
-/

namespace A053099.P11263514090875513360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A053097 (n + 1)

end

end A053099.P11263514090875513360

/-! ## A053099.P3660746912196744859

`abs(A053097(n+1)+(-1)^A000040(n+2))`
-/

namespace A053099.P3660746912196744859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A053097 (n + 1) : ℚ) + (-1 : ℚ) ^ (A000040 (n + 2) : ℤ)|

end

end A053099.P3660746912196744859

/-! ## A053099.P13930366163451376410

`A260196(n+2)+A053097(n+1)`
-/

namespace A053099.P13930366163451376410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A053097 (n + 1)

end

end A053099.P13930366163451376410

/-! ## A053099.P10170394838780550774

`A023443(A053097(n+1))`
-/

namespace A053099.P10170394838780550774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A053097 (n + 1)).toNat

end

end A053099.P10170394838780550774

/-! ## A053099.P10120392506617202873

`A023444(A053097(n+1)+1)`
-/

namespace A053099.P10120392506617202873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A053097 (n + 1) + 1).toNat

end

end A053099.P10120392506617202873

/-! ## A053099.P8366616851851096717

`A289207(A053097(n+1)+1)`
-/

namespace A053099.P8366616851851096717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A053097 (n + 1) + 1).toNat

end

end A053099.P8366616851851096717

/-! ## A053099.P17480416393816918679

`A065423(2*A053097(n+1))`
-/

namespace A053099.P17480416393816918679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065423 (2 * A053097 (n + 1)).toNat

end

end A053099.P17480416393816918679

/-! ## A053099.P6103816107569886103

`A140106(2*A053097(n+1))`
-/

namespace A053099.P6103816107569886103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A053097 (n + 1)).toNat

end

end A053099.P6103816107569886103

/-! ## A053099.P721463637767591973

`A058483(A007318(∑[n]))+A053097(n+1)`
-/

namespace A053099.P721463637767591973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058483 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A053097 (n + 1)

end

end A053099.P721463637767591973

