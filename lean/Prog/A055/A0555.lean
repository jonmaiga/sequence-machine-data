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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A055500: a(0)=1, a(1)=1, a(n) = largest prime <= a(n-1) + a(n-2).

The programs for A055500, there is no canonical definition to state claims against.
-/

/-! ## A055500.P10640790533868860470

`A007917(a(n-1)+a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A055500.P10640790533868860470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007917 (a (n - 1) + a (n - 2)).toNat

end

end A055500.P10640790533868860470

/-! ## A055500.P16464712204513726411

`A055501(n+1-C(2, n))`
-/

namespace A055500.P16464712204513726411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055501 (n + 1 - Nat.choose 2 n)

end

end A055500.P16464712204513726411

/-! ## A055500.P9707994091630568959

`A055501(A326178(n-char[1]))`
-/

namespace A055500.P9707994091630568959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055501 (A326178 (n - (if ∃ j, f1 j = n then 1 else 0))).toNat

end

end A055500.P9707994091630568959

/-! ## A055500.P12638636618232329905

`A055501(and(n+1, A326178(n)))`
-/

namespace A055500.P12638636618232329905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055501 (Int.land (n + 1 : ℤ) (A326178 n)).toNat

end

end A055500.P12638636618232329905

/-! ## A055500.P1062001357002452955

`A065435(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A055500.P1062001357002452955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A065435 (n + 2) - a (n - 1)

end

end A055500.P1062001357002452955

/-! ## A055500.P3832431253912955738

`A055498(n)-A362883(n)`
-/

namespace A055500.P3832431253912955738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055498 n - A362883 n

end

end A055500.P3832431253912955738

/-! ## A055500.P9312738476978749211

`A055501(n+1)+A055499(n)-A055498(n+1)`
-/

namespace A055500.P9312738476978749211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055501 (n + 1) + (A055499 n - A055498 (n + 1))

end

end A055500.P9312738476978749211

/-!
# A055502: a(0)=0, a(1)=2, a(n) = smallest prime > a(n-1)+a(n-2).

The programs for A055502, there is no canonical definition to state claims against.
-/

/-! ## A055502.P13993084185754785509

`A151800(a(n-1)+a(n-2))` with `a(0)=0, a(1)=2`
-/

namespace A055502.P13993084185754785509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A151800 (a (n - 1) + a (n - 2)).toNat

end

end A055502.P13993084185754785509

/-! ## A055502.P8475067326796861066

`A151800(a(n-1)-floor(-a(n-2)))` with `a(0)=0, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A055502.P8475067326796861066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A151800 (a (n - 1) - (-a (n - 2))).toNat

end

end A055502.P8475067326796861066

/-! ## A055502.P2698852055488347257

`A151800(a(n-1)-ceil(-a(n-2)))` with `a(0)=0, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A055502.P2698852055488347257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A151800 (a (n - 1) - (-a (n - 2))).toNat

end

end A055502.P2698852055488347257

/-! ## A055502.P5390486361030685175

`A151800(a(n-1)-round(-a(n-2)))` with `a(0)=0, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A055502.P5390486361030685175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A151800 (a (n - 1) - (-a (n - 2))).toNat

end

end A055502.P5390486361030685175

/-! ## A055502.P4382847811315418653

`A151800(a(n-1)-(char[1]-a(n-2)))` with `a(0)=0, a(1)=2`
-/

namespace A055502.P4382847811315418653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  A151800 (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))).toNat

end

end A055502.P4382847811315418653

/-!
# A055503: Take n points in general position in the plane; draw all the (infinite) straight lines joining them; sequence gives number of connected regions formed.

The programs for A055503, the canonical program `A055503.P17486773236987351294` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055503 has offset 0).

The definition of A055503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055503.P5109783872881114431

`ogf((1-4x+7x^2-3x^3-2x^4+5x^5-x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A055503.P5109783872881114431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 7, -3, -2, 5, -1] [1, -5, 10, -10, 5, -1] n

end

end A055503.P5109783872881114431

namespace A055503

/-- `ogf((1-4x+7x^2-3x^3-2x^4+5x^5-x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P5109783872881114431.Spec : Prop :=
  ∀ n, P5109783872881114431.a n = A055503 n

end A055503

/-! ## A055503.P16267440501748789363

`a(n-1)+C(n-2, 2)+2+(C(n-2, 2)+3)*(n-2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A055503.P16267440501748789363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) + (Nat.choose ((n : ℤ) - 2).toNat 2 + 2 : ℤ) + (Nat.choose ((n : ℤ) - 2).toNat 2 + 3 : ℤ) * ((n : ℤ) - 2)

end

end A055503.P16267440501748789363

namespace A055503

/-- `a(n-1)+C(n-2, 2)+2+(C(n-2, 2)+3)*(n-2)` -/
def P16267440501748789363.Spec : Prop :=
  ∀ n, P16267440501748789363.a n = A055503 n

end A055503

/-! ## A055503.P17486773236987351294

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=7, a(4)=18, a(5)=41, a(6)=85`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055503

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P17486773236987351294.Spec : Prop :=
  ∀ n, P17486773236987351294.a n = A055503 n

theorem P17486773236987351294.correct : P17486773236987351294.Spec := by
  intro n
  simp only [A055503]

end A055503

/-! ## A055503.P14127798209147307018

`A103505(n)+A002817(A289207(n))`
-/

namespace A055503.P14127798209147307018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 n + A002817 (A289207 n).toNat

end

end A055503.P14127798209147307018

namespace A055503

/-- `A103505(n)+A002817(A289207(n))` -/
def P14127798209147307018.Spec : Prop :=
  ∀ n, P14127798209147307018.a n = A055503 n

end A055503

/-! ## A055503.P11967519016296767458

`A103505(n)+A000217(∑[A289207(n)])`
-/

namespace A055503.P11967519016296767458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 n + A000217 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A055503.P11967519016296767458

namespace A055503

/-- `A103505(n)+A000217(∑[A289207(n)])` -/
def P11967519016296767458.Spec : Prop :=
  ∀ n, P11967519016296767458.a n = A055503 n

end A055503

/-! ## A055503.P4284270461931960847

`A004275(∑[n-1]+2)+A002817(A289207(n))`
-/

namespace A055503.P4284270461931960847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat + A002817 (A289207 n).toNat

end

end A055503.P4284270461931960847

namespace A055503

/-- `A004275(∑[n-1]+2)+A002817(A289207(n))` -/
def P4284270461931960847.Spec : Prop :=
  ∀ n, P4284270461931960847.a n = A055503 n

end A055503

/-!
# A055504: a(n) = n*(n-1)*(n-2)*(n-3)*(n-4)*(2*n-1)/72.

The programs for A055504, the canonical program `A055504.P15881757242857113247` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055504 has offset 0).

The definition of A055504 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*(n-2)*(n-3)*(n-4)*(2*n-1)/72` (program `A055504.P11894289478038622547`, by `A055504.P11894289478038622547.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055504.P14705066875163498640

`ogf((15x^5+5x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A055504.P14705066875163498640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 0, 15, 5] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A055504.P14705066875163498640

namespace A055504

/-- `ogf((15x^5+5x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P14705066875163498640.Spec : Prop :=
  ∀ n, P14705066875163498640.a n = A055504 n

end A055504

/-! ## A055504.P11894289478038622547

`n*(n-1)*(n-2)*(n-3)*(n-4)*(2*n-1)/72`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A055504.P11894289478038622547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n : ℤ) - 2) * ((n : ℤ) - 3) * ((n : ℤ) - 4) * ((2 * n : ℤ) - 1) : ℚ) / 72

end

end A055504.P11894289478038622547

namespace A055504

/-- `n*(n-1)*(n-2)*(n-3)*(n-4)*(2*n-1)/72` -/
def P11894289478038622547.Spec : Prop :=
  ∀ n, P11894289478038622547.a n = (A055504 n : ℚ)

theorem P11894289478038622547.correct : P11894289478038622547.Spec := by
  intro n
  simp only [A055504, Nat.add_sub_cancel, A055504.P11894289478038622547.a, A055504.P15881757242857113247.a, A000910, A000910.P14640695646812070873.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055504

/-! ## A055504.P16277069810883935123

`A000910(n)+A093566(n)-A000332(n)`
-/

namespace A055504.P16277069810883935123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000910 n + (A093566 n - A000332 n)

end

end A055504.P16277069810883935123

namespace A055504

/-- `A000910(n)+A093566(n)-A000332(n)` -/
def P16277069810883935123.Spec : Prop :=
  ∀ n, P16277069810883935123.a n = A055504 n

theorem P16277069810883935123.correct : P16277069810883935123.Spec := by
  intro n
  simp only [A055504, Nat.add_sub_cancel, A055504.P16277069810883935123.a, A055504.P15881757242857113247.a, A000332, A000332.P5946310388023661265.a, A000910, A000910.P14640695646812070873.a, A093566, A093566.P17843622386652552832.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055504

/-! ## A055504.P128457984612105999

`A000910(n)+A093566(n)-A060008(n)/9`
-/

namespace A055504.P128457984612105999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000910 n : ℚ) + ((A093566 n : ℚ) - (A060008 n : ℚ) / 9)

end

end A055504.P128457984612105999

namespace A055504

/-- `A000910(n)+A093566(n)-A060008(n)/9` -/
def P128457984612105999.Spec : Prop :=
  ∀ n, P128457984612105999.a n = (A055504 n : ℚ)

theorem P128457984612105999.correct : P128457984612105999.Spec := by
  intro n
  simp only [A055504, Nat.add_sub_cancel, A055504.P128457984612105999.a, A055504.P15881757242857113247.a, A000910, A000910.P14640695646812070873.a, A060008, A060008.P5269451932416479602.a, A093566, A093566.P17843622386652552832.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055504

/-! ## A055504.P15881757242857113247

`A000910(n)+3*A000910(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A055504

/-- `A000910(n)+3*A000910(n+1)` -/
def P15881757242857113247.Spec : Prop :=
  ∀ n, P15881757242857113247.a n = A055504 n

theorem P15881757242857113247.correct : P15881757242857113247.Spec := by
  intro n
  simp only [A055504]

end A055504

/-! ## A055504.P10676090477863077362

`A000910(n)+A093566(n)-Δ[A000389(n)]`
-/

namespace A055504.P10676090477863077362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000910 n + (A093566 n - (f1 (n + 1) - f1 n))

end

end A055504.P10676090477863077362

namespace A055504

/-- `A000910(n)+A093566(n)-Δ[A000389(n)]` -/
def P10676090477863077362.Spec : Prop :=
  ∀ n, P10676090477863077362.a n = A055504 n

theorem P10676090477863077362.correct : P10676090477863077362.Spec := by
  intro n
  simp only [A055504, Nat.add_sub_cancel, A055504.P10676090477863077362.f1, A055504.P10676090477863077362.a, A055504.P15881757242857113247.a, A000389, A000389.P15450220129395289428.a, A000910, A000910.P14640695646812070873.a, A093566, A093566.P17843622386652552832.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055504

/-!
# A055505: Numerators in expansion of (1-x)^(-1/x)/e.

The programs for A055505, there is no canonical definition to state claims against.
-/

/-! ## A055505.P92936231070889521

`A006530(A106827(n))`
-/

namespace A055505.P92936231070889521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A106827 n).toNat

end

end A055505.P92936231070889521

/-!
# A055507: a(n) = Sum_{k=1..n} d(k)*d(n+1-k), where d(k) is number of positive divisors of k.

The programs for A055507, there is no canonical definition to state claims against.
-/

/-! ## A055507.P2036931510445057437

`A212151(n+3)-A212151(n+2)`
-/

namespace A055507.P2036931510445057437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212151 (n + 3) - A212151 (n + 2)

end

end A055507.P2036931510445057437

/-! ## A055507.P11356503440256354504

`A002133(n+2)+A065608(n+2)+A002133(n+2)`
-/

namespace A055507.P11356503440256354504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002133 (n + 2) + (A065608 (n + 2) + A002133 (n + 2))

end

end A055507.P11356503440256354504

/-! ## A055507.P13491442887581946803

`A002133(n+2)+A274628(n+2)-A000203(n+2)`
-/

namespace A055507.P13491442887581946803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002133 (n + 2) + (A274628 (n + 2) - A000203 (n + 2))

end

end A055507.P13491442887581946803

/-! ## A055507.P7251913771757781380

`Δ[A212151(n+2)]`
-/

namespace A055507.P7251913771757781380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212151 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055507.P7251913771757781380

/-! ## A055507.P9176610210107938304

`abs(Δ[A212151(n-log2(1/4))])`
-/

namespace A055507.P9176610210107938304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212151 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 4 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A055507.P9176610210107938304

/-! ## A055507.P11737668833186430342

`Δ[A054977(n)*A212151(n-log2(1/4))]`
-/

namespace A055507.P11737668833186430342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A212151 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 4 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055507.P11737668833186430342

/-! ## A055507.P13533801870028897131

`Δ[A212151(n-log2(1/4))]%A017199(n)`
-/

namespace A055507.P13533801870028897131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212151 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 4 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A017199 n)

end

end A055507.P13533801870028897131

/-! ## A055507.P17072768477316912208

`Δ[A212151(n-log2(1/4))%A004403(n)]`
-/

namespace A055507.P17072768477316912208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212151 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 4 : ℝ))).toNat) (A004403 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055507.P17072768477316912208

/-! ## A055507.P17448495595451611176

`∑{#}[n, A000005(#+1)*A000005(n-#+1)]`
-/

namespace A055507.P17448495595451611176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000005 (k + 1) * A000005 ((n : ℤ) - (k : ℤ) + 1).toNat

end

end A055507.P17448495595451611176

/-! ## A055507.P7323219606268435587

`A189835(n+2)-A191822(n+2)`
-/

namespace A055507.P7323219606268435587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189835 (n + 2) - A191822 (n + 2)

end

end A055507.P7323219606268435587

/-! ## A055507.P6249977486075636698

`A001157(n+2)-(A191822(n+2)+A038040(n+2))`
-/

namespace A055507.P6249977486075636698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 2) - (A191822 (n + 2) + A038040 (n + 2))

end

end A055507.P6249977486075636698

/-! ## A055507.P12777825113528072595

`A212240(n+2)-A212241(n+2)`
-/

namespace A055507.P12777825113528072595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212240 (n + 2) - A212241 (n + 2)

end

end A055507.P12777825113528072595

/-! ## A055507.P905750574705474719

`A320019(∑[n+2]+3)`
-/

namespace A055507.P905750574705474719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320019 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A055507.P905750574705474719

/-!
# A055508: H is the first, fifth, sixteenth, ..., letter in the sequence not counting spaces and commas.

The programs for A055508, there is no canonical definition to state claims against.
-/

/-! ## A055508.P11013264120747837540

`A102045(n+1)+∑[A055641(A000204(n+1))]`
-/

namespace A055508.P11013264120747837540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A000204 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102045 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055508.P11013264120747837540

/-! ## A055508.P12518686160546407838

`A107846(A038754(n))+A102045(n+1)`
-/

namespace A055508.P12518686160546407838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A038754 n).toNat + A102045 (n + 1)

end

end A055508.P12518686160546407838

/-! ## A055508.P13782547417430614210

`A295883(A026010(n))+A102045(n+1)`
-/

namespace A055508.P13782547417430614210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (A026010 n).toNat + A102045 (n + 1)

end

end A055508.P13782547417430614210

/-! ## A055508.P16595416168591595851

`A102045(n+1)+∑[A055641(A005246(n))]`
-/

namespace A055508.P16595416168591595851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A005246 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102045 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055508.P16595416168591595851

/-! ## A055508.P17033638536411135133

`A102045(n+1)+∑[A107846(A187941(n))]`
-/

namespace A055508.P17033638536411135133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 (A187941 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102045 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055508.P17033638536411135133

/-!
# A055509: Number of odd primes in sequence obtained in 3x+1 (or Collatz) problem starting at n.

The programs for A055509, there is no canonical definition to state claims against.
-/

/-! ## A055509.P8647129245849059025

`(A078350(n+1)+n)%(n+1)`
-/

namespace A055509.P8647129245849059025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078350 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A055509.P8647129245849059025

/-! ## A055509.P14583584735605374381

`A078350(n+1)+A057428(n)`
-/

namespace A055509.P14583584735605374381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078350 (n + 1) + A057428 n

end

end A055509.P14583584735605374381

/-! ## A055509.P12663841933631068295

`A078350(n+1)-A057427(n)`
-/

namespace A055509.P12663841933631068295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078350 (n + 1) - A057427 n

end

end A055509.P12663841933631068295

/-! ## A055509.P1354821578416667998

`A078350(n+1)+A000007(n)-1`
-/

namespace A055509.P1354821578416667998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078350 (n + 1) + A000007 n - 1

end

end A055509.P1354821578416667998

/-! ## A055509.P13075068313257342589

`A006577(n+1)%A267830(n+1)`
-/

namespace A055509.P13075068313257342589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006577 (n + 1)) (A267830 (n + 1))

end

end A055509.P13075068313257342589

/-! ## A055509.P1330938001135980668

`floor(A078350(n+1)-A323022(n+1)/2)`
-/

namespace A055509.P1330938001135980668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A078350 (n + 1) : ℚ) - (A323022 (n + 1) : ℚ) / 2⌋

end

end A055509.P1330938001135980668

/-! ## A055509.P18272246123137581907

`A078350(n+1)-A032741(A020639(n+1))`
-/

namespace A055509.P18272246123137581907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078350 (n + 1) - A032741 (A020639 (n + 1)).toNat

end

end A055509.P18272246123137581907

/-! ## A055509.P10785652590602335182

`A078350(n+1)-A323022(A078350(n+1)+1)`
-/

namespace A055509.P10785652590602335182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078350 (n + 1) - A323022 (A078350 (n + 1) + 1).toNat

end

end A055509.P10785652590602335182

/-! ## A055509.P1798376013507544732

`A078350(n+1)-char[A278028(n+1)]`
-/

namespace A055509.P1798376013507544732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278028 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078350 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A055509.P1798376013507544732

/-! ## A055509.P13466658489006125014

`A078350(2*(n+1))-1`
-/

namespace A055509.P13466658489006125014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078350 (2 * (n + 1)) - 1

end

end A055509.P13466658489006125014

/-! ## A055509.P3916323042138322453

`A023443(A078350(2*(n+1)))`
-/

namespace A055509.P3916323042138322453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A078350 (2 * (n + 1))).toNat

end

end A055509.P3916323042138322453

/-! ## A055509.P8020551880700043951

`A008908(n+1)-A267830(2*(n+1))`
-/

namespace A055509.P8020551880700043951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A267830 (2 * (n + 1))

end

end A055509.P8020551880700043951

/-! ## A055509.P13145457361813163496

`A008908(n+1)%A267830(2*n+2)`
-/

namespace A055509.P13145457361813163496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008908 (n + 1)) (A267830 (2 * n + 2))

end

end A055509.P13145457361813163496

/-! ## A055509.P14536880898232173076

`A006577(n+1)+1-A267830(2*(n+1))`
-/

namespace A055509.P14536880898232173076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + 1 - A267830 (2 * (n + 1))

end

end A055509.P14536880898232173076

/-!
# A055510: Largest odd prime in sequence obtained in 3x+1 (or Collatz) problem starting at n, or 0 if no such prime is found.

The programs for A055510, there is no canonical definition to state claims against.
-/

/-! ## A055510.P14810854722161445198

`xor(1, A000010(A087272(2*(n+1))))`
-/

namespace A055510.P14810854722161445198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000010 (A087272 (2 * (n + 1))).toNat)

end

end A055510.P14810854722161445198

/-! ## A055510.P4228930837475372704

`A091685(A087272(2*(n+1)))`
-/

namespace A055510.P4228930837475372704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091685 (A087272 (2 * (n + 1))).toNat

end

end A055510.P4228930837475372704

/-! ## A055510.P17113345549712980048

`A004442(A087272(2*(n+1))-1)`
-/

namespace A055510.P17113345549712980048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A087272 (2 * (n + 1)) - 1).toNat

end

end A055510.P17113345549712980048

/-! ## A055510.P7284346213315804721

`A014681(A087272(2*n+2))-1`
-/

namespace A055510.P7284346213315804721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A087272 (2 * n + 2)).toNat - 1

end

end A055510.P7284346213315804721

/-! ## A055510.P586124078150338556

`(A291914(A000040(n+1))+A006370(A087272(2*n+2)))/3`
-/

namespace A055510.P586124078150338556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291914 (A000040 (n + 1)).toNat + A006370 (A087272 (2 * n + 2)).toNat : ℚ) / 3

end

end A055510.P586124078150338556

/-!
# A055512: Lattices with n labeled elements.

The programs for A055512, there is no canonical definition to state claims against.
-/

/-! ## A055512.P12867909304059396748

`A028310(n)*A058164(A028310(n))`
-/

namespace A055512.P12867909304059396748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A058164 (A028310 n).toNat

end

end A055512.P12867909304059396748

/-! ## A055512.P11922904104521335266

`A058164(A065033(2*n))*A065033(2*n)`
-/

namespace A055512.P11922904104521335266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058164 (A065033 (2 * n)).toNat * A065033 (2 * n)

end

end A055512.P11922904104521335266

/-! ## A055512.P12364277079101998568

`(A000007(n)+n)*A058164(A000007(n)+n)`
-/

namespace A055512.P12364277079101998568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) * A058164 (A000007 n + (n : ℤ)).toNat

end

end A055512.P12364277079101998568

/-! ## A055512.P4341350444067090291

`A058159(∑[n]^floor(atan(n)))`
-/

namespace A055512.P4341350444067090291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058159 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A055512.P4341350444067090291

/-! ## A055512.P4464861040526055069

`A058159(∑[n-char[1]]+1)`
-/

namespace A055512.P4464861040526055069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058159 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A055512.P4464861040526055069

/-!
# A055515: a(n) = (2^n - 1)/product(2^p - 1) where the product is over all distinct primes p that divide n.

The programs for A055515, the canonical program `A055515.P9776461718281868796` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055515 has offset 1).

The definition of A055515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055515.P1988280074433630770

`∑[2^n]/A064084(∏{p}[n+1, #])`
-/

namespace A055515.P1988280074433630770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A064084 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A055515.P1988280074433630770

namespace A055515

/-- `∑[2^n]/A064084(∏{p}[n+1, #])` -/
def P1988280074433630770.Spec : Prop :=
  ∀ n, P1988280074433630770.a n = (A055515 (n + 1) : ℚ)

end A055515

/-! ## A055515.P9776461718281868796

`∑[A000079(n)]/∏{p}[n+1, A000225(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A055515

/-- `∑[A000079(n)]/∏{p}[n+1, A000225(#)]` -/
def P9776461718281868796.Spec : Prop :=
  ∀ n, P9776461718281868796.a n = (A055515 (n + 1) : ℚ)

end A055515

/-! ## A055515.P14041564101089156865

`A126646(n)/A064084(A007947(n+1))`
-/

namespace A055515.P14041564101089156865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126646 n : ℚ) / (A064084 (A007947 (n + 1)).toNat : ℚ)

end

end A055515.P14041564101089156865

namespace A055515

/-- `A126646(n)/A064084(A007947(n+1))` -/
def P14041564101089156865.Spec : Prop :=
  ∀ n, P14041564101089156865.a n = (A055515 (n + 1) : ℚ)

end A055515

/-! ## A055515.P13460864110275304309

`∑[A000079(n)]/A064084(A007947(n+1))`
-/

namespace A055515.P13460864110275304309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A064084 (A007947 (n + 1)).toNat : ℚ)

end

end A055515.P13460864110275304309

namespace A055515

/-- `∑[A000079(n)]/A064084(A007947(n+1))` -/
def P13460864110275304309.Spec : Prop :=
  ∀ n, P13460864110275304309.a n = (A055515 (n + 1) : ℚ)

end A055515

/-!
# A055518: a_{k+1} = 6*a_k + 11*a_{k-1} - 19*a_{k-2} - 4*a_{k-3} + a_{k-4}, a_1=1, a_2=2, a_3=19, a_4=118, a_5=875.

The programs for A055518, there is no canonical definition to state claims against.
-/

/-! ## A055518.P3801637926496399048

`A084057(n)+A002266(A062395(n))`
-/

namespace A055518.P3801637926496399048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084057 n + A002266 (A062395 n).toNat

end

end A055518.P3801637926496399048

/-!
# A055519: a(n) = 9*a(n-1) + 33*a(n-2) - 76*a(n-3) - 33*a(n-4) + 9*a(n-5) + a(n-6), a(0)=a(1)=1, a(2)=2, a(3)=35, a(4)=312, a(5)=3779.

The programs for A055519, the canonical program `A055519.P18331352049278072269` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055519 has offset 0).

The definition of A055519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055519.P18331352049278072269

`ogf((1-8x-40x^2+60x^3+40x^4-8x^5-x^6)/(1-9x-33x^2+76x^3+33x^4-9x^5-x^6))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055519

/-- `ogf((1-8x-40x^2+60x^3+40x^4-8x^5-x^6)/(1-9x-33x^2+76x^3+33x^4-9x^5-x^6))` -/
def P18331352049278072269.Spec : Prop :=
  ∀ n, P18331352049278072269.a n = A055519 n

theorem P18331352049278072269.correct : P18331352049278072269.Spec := by
  intro n
  simp only [A055519]

end A055519

/-!
# A055520: Numbers k such that 30*R_k + 1 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A055520, there is no canonical definition to state claims against.
-/

/-! ## A055520.P7708550736530356545

`A055557(n+1)-1`
-/

namespace A055520.P7708550736530356545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055557 (n + 1) - 1

end

end A055520.P7708550736530356545

/-! ## A055520.P11375733926868260872

`A057428(n+1)+A055557(n+1)`
-/

namespace A055520.P11375733926868260872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A055557 (n + 1)

end

end A055520.P11375733926868260872

/-! ## A055520.P3600273932689799688

`A153881(n+2)+A055557(n+1)`
-/

namespace A055520.P3600273932689799688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A055557 (n + 1)

end

end A055520.P3600273932689799688

/-! ## A055520.P14714304465910892945

`A260196(n+2)+A055557(n+1)`
-/

namespace A055520.P14714304465910892945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A055557 (n + 1)

end

end A055520.P14714304465910892945

/-! ## A055520.P17489647644849813978

`A056051(3*(n+2))+A055557(n+1)`
-/

namespace A055520.P17489647644849813978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056051 (3 * (n + 2)) + A055557 (n + 1)

end

end A055520.P17489647644849813978

/-!
# A055521: Restricted left truncatable (Henry VIII) primes.

The programs for A055521, there is no canonical definition to state claims against.
-/

/-! ## A055521.P13857813213142908096

`A240768(n+3)`
-/

namespace A055521.P13857813213142908096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240768 (n + 3)

end

end A055521.P13857813213142908096

/-! ## A055521.P4709233953744745127

`record[A240768(A028242(A020705(n)))]`
-/

namespace A055521.P4709233953744745127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240768 (A028242 (A020705 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055521.P4709233953744745127

/-! ## A055521.P5317359377648266713

`A165326(A165330(n))²*A240768(A020705(n)-1)`
-/

namespace A055521.P5317359377648266713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (A165330 n).toNat ^ 2 * A240768 (A020705 n - 1).toNat

end

end A055521.P5317359377648266713

/-!
# A055522: Largest area of a Pythagorean triangle with n as length of one of the three sides (in fact as a leg).

The programs for A055522, the canonical program `A055522.P17513926834588739759` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055522 has offset 3).

The definition of A055522 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055522.P16906109882112260349

`ogf((6+6x+6x^2)/(1-4x^2+6x^4-4x^6+x^8))`
-/

namespace A055522.P16906109882112260349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 6, 6] [1, 0, -4, 0, 6, 0, -4, 0, 1] n

end

end A055522.P16906109882112260349

namespace A055522

/-- `ogf((6+6x+6x^2)/(1-4x^2+6x^4-4x^6+x^8))` -/
def P16906109882112260349.Spec : Prop :=
  ∀ n, P16906109882112260349.a n = A055522 (n + 3)

end A055522

/-! ## A055522.P17513926834588739759

`(n+3)*(3*((n+3)²-2)-((n+3)²+2)*(-1)^(n+3))/16`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055522

/-- `(n+3)*(3*((n+3)²-2)-((n+3)²+2)*(-1)^(n+3))/16` -/
def P17513926834588739759.Spec : Prop :=
  ∀ n, P17513926834588739759.a n = (A055522 (n + 3) : ℚ)

end A055522

/-! ## A055522.P1694395067819183527

`(n+3)/2*A055523(n+3)`
-/

namespace A055522.P1694395067819183527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 2 * (A055523 (n + 3) : ℚ)

end

end A055522.P1694395067819183527

namespace A055522

/-- `(n+3)/2*A055523(n+3)` -/
def P1694395067819183527.Spec : Prop :=
  ∀ n, P1694395067819183527.a n = (A055522 (n + 3) : ℚ)

end A055522

/-! ## A055522.P15316441999143464503

`A008619(n)*A056136(n+3)`
-/

namespace A055522.P15316441999143464503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A056136 (n + 3)

end

end A055522.P15316441999143464503

namespace A055522

/-- `A008619(n)*A056136(n+3)` -/
def P15316441999143464503.Spec : Prop :=
  ∀ n, P15316441999143464503.a n = A055522 (n + 3)

end A055522

/-! ## A055522.P8685984037917769109

`abs(Δ[A002061(A008795(n+1))])`
-/

namespace A055522.P8685984037917769109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A008795 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A055522.P8685984037917769109

namespace A055522

/-- `abs(Δ[A002061(A008795(n+1))])` -/
def P8685984037917769109.Spec : Prop :=
  ∀ n, P8685984037917769109.a n = A055522 (n + 3)

end A055522

/-!
# A055523: Longest other leg of a Pythagorean triangle with n as length of a leg.

The programs for A055523, the canonical program `A055523.P11681131243350543632` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055523 has offset 3).

The definition of A055523 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055523.P8066083073147854794

`ogf((4+3x-x^3)/(1-3x^2+3x^4-x^6))`
-/

namespace A055523.P8066083073147854794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3, 0, -1] [1, 0, -3, 0, 3, 0, -1] n

end

end A055523.P8066083073147854794

namespace A055523

/-- `ogf((4+3x-x^3)/(1-3x^2+3x^4-x^6))` -/
def P8066083073147854794.Spec : Prop :=
  ∀ n, P8066083073147854794.a n = A055523 (n + 3)

end A055523

/-! ## A055523.P11681131243350543632

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=4, a(1)=3, a(2)=12, a(3)=8, a(4)=24, a(5)=15`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055523

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P11681131243350543632.Spec : Prop :=
  ∀ n, P11681131243350543632.a n = A055523 (n + 3)

theorem P11681131243350543632.correct : P11681131243350543632.Spec := by
  intro n
  simp only [A055523, Nat.add_sub_cancel]

end A055523

/-! ## A055523.P2272253710049161423

`(3*((n+3)²-2)+(-1)^(n+4)*((n+3)²+2))/8`
-/

namespace A055523.P2272253710049161423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * (((n + 3) ^ 2 : ℤ) - 2) + (-1) ^ (n + 4) * ((n + 3) ^ 2 + 2 : ℤ) : ℚ) / 8

end

end A055523.P2272253710049161423

namespace A055523

/-- `(3*((n+3)²-2)+(-1)^(n+4)*((n+3)²+2))/8` -/
def P2272253710049161423.Spec : Prop :=
  ∀ n, P2272253710049161423.a n = (A055523 (n + 3) : ℚ)

theorem P2272253710049161423.correct : P2272253710049161423.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A055523, Nat.add_sub_cancel, A055523.P2272253710049161423.a, A055523.P11681131243350543632.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A055523, Nat.add_sub_cancel, A055523.P2272253710049161423.a, A055523.P11681131243350543632.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A055523

/-! ## A055523.P10105129232043488057

`sqrt(A055524(n+3)²-(n+3)²)`
-/

namespace A055523.P10105129232043488057
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055524 (n + 3) ^ 2 - ((n + 3) ^ 2 : ℤ) : ℝ)

end

end A055523.P10105129232043488057

namespace A055523

/-- `sqrt(A055524(n+3)²-(n+3)²)` -/
def P10105129232043488057.Spec : Prop :=
  ∀ n, P10105129232043488057.a n = (A055523 (n + 3) : ℝ)

end A055523

/-! ## A055523.P16558308798241635399

`gcd(2, n)*∑[a(n-2)+1]` with `a(0)=2, a(1)=1`
-/

namespace A055523.P16558308798241635399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055523.P16558308798241635399

namespace A055523

/-- `gcd(2, n)*∑[a(n-2)+1]` -/
def P16558308798241635399.Spec : Prop :=
  ∀ n, (P16558308798241635399.a n : ℤ) = A055523 (n + 3)

end A055523

/-! ## A055523.P9395835715696375034

`∑[∑[4*(n+1)]/a(n-1)]-a(n-1)` with `a(0)=4`
-/

namespace A055523.P9395835715696375034
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A055523.P9395835715696375034

namespace A055523

/-- `∑[∑[4*(n+1)]/a(n-1)]-a(n-1)` -/
def P9395835715696375034.Spec : Prop :=
  ∀ n, P9395835715696375034.a n = (A055523 (n + 3) : ℚ)

end A055523

/-! ## A055523.P12054188156485920092

`gcd(2, n)*∑[A028242(n)+1]`
-/

namespace A055523.P12054188156485920092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055523.P12054188156485920092

namespace A055523

/-- `gcd(2, n)*∑[A028242(n)+1]` -/
def P12054188156485920092.Spec : Prop :=
  ∀ n, P12054188156485920092.a n = A055523 (n + 3)

end A055523

/-! ## A055523.P5759440408768662705

`2/(n+3)*A055522(n+3)`
-/

namespace A055523.P5759440408768662705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 3 : ℚ) * (A055522 (n + 3) : ℚ)

end

end A055523.P5759440408768662705

namespace A055523

/-- `2/(n+3)*A055522(n+3)` -/
def P5759440408768662705.Spec : Prop :=
  ∀ n, P5759440408768662705.a n = (A055523 (n + 3) : ℚ)

end A055523

/-! ## A055523.P2104854917249296646

`A055524(n+3)-A000034(n)`
-/

namespace A055523.P2104854917249296646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055524 (n + 3) - A000034 n

end

end A055523.P2104854917249296646

namespace A055523

/-- `A055524(n+3)-A000034(n)` -/
def P2104854917249296646.Spec : Prop :=
  ∀ n, P2104854917249296646.a n = A055523 (n + 3)

end A055523

/-! ## A055523.P12246273605852231831

`(A079524(n)+2)*A000034(A007947(n+1))`
-/

namespace A055523.P12246273605852231831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079524 n + 2) * A000034 (A007947 (n + 1)).toNat

end

end A055523.P12246273605852231831

namespace A055523

/-- `(A079524(n)+2)*A000034(A007947(n+1))` -/
def P12246273605852231831.Spec : Prop :=
  ∀ n, P12246273605852231831.a n = A055523 (n + 3)

end A055523

/-! ## A055523.P7216644817524445690

`(A052938(n+1)-A052938(n))*A131723(n+1)`
-/

namespace A055523.P7216644817524445690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052938 (n + 1) - A052938 n) * A131723 (n + 1)

end

end A055523.P7216644817524445690

namespace A055523

/-- `(A052938(n+1)-A052938(n))*A131723(n+1)` -/
def P7216644817524445690.Spec : Prop :=
  ∀ n, P7216644817524445690.a n = A055523 (n + 3)

end A055523

/-! ## A055523.P5014070307203337539

`gcd(2, n)*A035106(n+2)`
-/

namespace A055523.P5014070307203337539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * A035106 (n + 2)

end

end A055523.P5014070307203337539

namespace A055523

/-- `gcd(2, n)*A035106(n+2)` -/
def P5014070307203337539.Spec : Prop :=
  ∀ n, P5014070307203337539.a n = A055523 (n + 3)

end A055523

/-! ## A055523.P12414619036556377575

`A271675(n+2)-a(n-1)` with `a(0)=4`
-/

namespace A055523.P12414619036556377575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A271675 (n + 2) - a (n - 1)

end

end A055523.P12414619036556377575

namespace A055523

/-- `A271675(n+2)-a(n-1)` -/
def P12414619036556377575.Spec : Prop :=
  ∀ n, P12414619036556377575.a n = A055523 (n + 3)

end A055523

/-! ## A055523.P13476265559795928202

`(A079524(n)+2)*A000034(n+1)`
-/

namespace A055523.P13476265559795928202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A079524 n + 2) * A000034 (n + 1)

end

end A055523.P13476265559795928202

namespace A055523

/-- `(A079524(n)+2)*A000034(n+1)` -/
def P13476265559795928202.Spec : Prop :=
  ∀ n, P13476265559795928202.a n = A055523 (n + 3)

end A055523

/-! ## A055523.P260930331282410709

`(A145051(n+2)+1)*A065033(n+1)`
-/

namespace A055523.P260930331282410709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A145051 (n + 2) + 1) * A065033 (n + 1)

end

end A055523.P260930331282410709

namespace A055523

/-- `(A145051(n+2)+1)*A065033(n+1)` -/
def P260930331282410709.Spec : Prop :=
  ∀ n, P260930331282410709.a n = A055523 (n + 3)

end A055523

/-! ## A055523.P2850860879316058959

`(A145051(n+2)+1)*A110654(n+1)`
-/

namespace A055523.P2850860879316058959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A145051 (n + 2) + 1) * A110654 (n + 1)

end

end A055523.P2850860879316058959

namespace A055523

/-- `(A145051(n+2)+1)*A110654(n+1)` -/
def P2850860879316058959.Spec : Prop :=
  ∀ n, P2850860879316058959.a n = A055523 (n + 3)

end A055523

/-! ## A055523.P15805493521230138957

`(A109613(n)+1-n)*A035106(n+2)`
-/

namespace A055523.P15805493521230138957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109613 n + (1 - (n : ℤ))) * A035106 (n + 2)

end

end A055523.P15805493521230138957

namespace A055523

/-- `(A109613(n)+1-n)*A035106(n+2)` -/
def P15805493521230138957.Spec : Prop :=
  ∀ n, P15805493521230138957.a n = A055523 (n + 3)

end A055523

/-! ## A055523.P11503438874889413135

`(A026741(n+1)+A000034(n))*A030451(n+1)`
-/

namespace A055523.P11503438874889413135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 1) + A000034 n) * A030451 (n + 1)

end

end A055523.P11503438874889413135

namespace A055523

/-- `(A026741(n+1)+A000034(n))*A030451(n+1)` -/
def P11503438874889413135.Spec : Prop :=
  ∀ n, P11503438874889413135.a n = A055523 (n + 3)

end A055523

/-! ## A055523.P1260472070620219369

`(A114285(n)+A109613(n+1))*A035106(n+2)`
-/

namespace A055523.P1260472070620219369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A114285 n + A109613 (n + 1)) * A035106 (n + 2)

end

end A055523.P1260472070620219369

namespace A055523

/-- `(A114285(n)+A109613(n+1))*A035106(n+2)` -/
def P1260472070620219369.Spec : Prop :=
  ∀ n, P1260472070620219369.a n = A055523 (n + 3)

end A055523

/-! ## A055523.P12401878805492831725

`(A014681(n+1)-A052928(n))*A035106(n+2)`
-/

namespace A055523.P12401878805492831725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014681 (n + 1) - A052928 n) * A035106 (n + 2)

end

end A055523.P12401878805492831725

namespace A055523

/-- `(A014681(n+1)-A052928(n))*A035106(n+2)` -/
def P12401878805492831725.Spec : Prop :=
  ∀ n, P12401878805492831725.a n = A055523 (n + 3)

end A055523

/-!
# A055524: Longest other side of a Pythagorean triangle with n as length of one of the three sides (in fact n is a leg and a(n) the hypotenuse).

The programs for A055524, the canonical program `A055524.P7859964550316671097` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055524 has offset 3).

The definition of A055524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055524.P1851678048715282464

`ogf((5+5x-2x^2-5x^3+x^4+2x^5)/(1-3x^2+3x^4-x^6))`
-/

namespace A055524.P1851678048715282464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 5, -2, -5, 1, 2] [1, 0, -3, 0, 3, 0, -1] n

end

end A055524.P1851678048715282464

namespace A055524

/-- `ogf((5+5x-2x^2-5x^3+x^4+2x^5)/(1-3x^2+3x^4-x^6))` -/
def P1851678048715282464.Spec : Prop :=
  ∀ n, P1851678048715282464.a n = A055524 (n + 3)

end A055524

/-! ## A055524.P7859964550316671097

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=5, a(1)=5, a(2)=13, a(3)=10, a(4)=25, a(5)=17`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055524

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P7859964550316671097.Spec : Prop :=
  ∀ n, P7859964550316671097.a n = A055524 (n + 3)

theorem P7859964550316671097.correct : P7859964550316671097.Spec := by
  intro n
  simp only [A055524, Nat.add_sub_cancel]

end A055524

/-! ## A055524.P17723861941084150822

`(3*(n+3)²-(-1)^(n+3)*((n+3)²-2)+6)/8`
-/

namespace A055524.P17723861941084150822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 3) ^ 2 : ℤ) - (-1) ^ (n + 3) * (((n + 3) ^ 2 : ℤ) - 2) + 6 : ℚ) / 8

end

end A055524.P17723861941084150822

namespace A055524

/-- `(3*(n+3)²-(-1)^(n+3)*((n+3)²-2)+6)/8` -/
def P17723861941084150822.Spec : Prop :=
  ∀ n, P17723861941084150822.a n = (A055524 (n + 3) : ℚ)

theorem P17723861941084150822.correct : P17723861941084150822.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A055524, Nat.add_sub_cancel, A055524.P17723861941084150822.a, A055524.P7859964550316671097.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A055524, Nat.add_sub_cancel, A055524.P17723861941084150822.a, A055524.P7859964550316671097.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A055524

/-! ## A055524.P169115678121699521

`sqrt((n+3)²+A055523(n+3)²)`
-/

namespace A055524.P169115678121699521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n + 3) ^ 2 : ℤ) + A055523 (n + 3) ^ 2 : ℝ)

end

end A055524.P169115678121699521

namespace A055524

/-- `sqrt((n+3)²+A055523(n+3)²)` -/
def P169115678121699521.Spec : Prop :=
  ∀ n, P169115678121699521.a n = (A055524 (n + 3) : ℝ)

end A055524

/-! ## A055524.P5930327077364506091

`floor(lcm(2, (n+3)²)/4)+1`
-/

namespace A055524.P5930327077364506091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm 2 ((n + 3) ^ 2) : ℚ) / 4⌋ + 1

end

end A055524.P5930327077364506091

namespace A055524

/-- `floor(lcm(2, (n+3)²)/4)+1` -/
def P5930327077364506091.Spec : Prop :=
  ∀ n, P5930327077364506091.a n = A055524 (n + 3)

end A055524

/-! ## A055524.P1098931239081505427

`floor(((n+3)/2)²*gcd(2, n))+1`
-/

namespace A055524.P1098931239081505427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 3 : ℚ) / 2) ^ 2 * (Nat.gcd 2 n : ℚ)⌋ + 1

end

end A055524.P1098931239081505427

namespace A055524

/-- `floor(((n+3)/2)²*gcd(2, n))+1` -/
def P1098931239081505427.Spec : Prop :=
  ∀ n, P1098931239081505427.a n = A055524 (n + 3)

end A055524

/-! ## A055524.P2231050147760831746

`A055523(n+3)+A000034(n)`
-/

namespace A055524.P2231050147760831746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055523 (n + 3) + A000034 n

end

end A055524.P2231050147760831746

namespace A055524

/-- `A055523(n+3)+A000034(n)` -/
def P2231050147760831746.Spec : Prop :=
  ∀ n, P2231050147760831746.a n = A055524 (n + 3)

end A055524

/-! ## A055524.P5876746374777668558

`A241496(n+1)+1`
-/

namespace A055524.P5876746374777668558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241496 (n + 1) + 1

end

end A055524.P5876746374777668558

namespace A055524

/-- `A241496(n+1)+1` -/
def P5876746374777668558.Spec : Prop :=
  ∀ n, P5876746374777668558.a n = A055524 (n + 3)

end A055524

/-! ## A055524.P4776152754760722669

`A229834(n+1)+A229834(n)+1`
-/

namespace A055524.P4776152754760722669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229834 (n + 1) + (A229834 n + 1)

end

end A055524.P4776152754760722669

namespace A055524

/-- `A229834(n+1)+A229834(n)+1` -/
def P4776152754760722669.Spec : Prop :=
  ∀ n, P4776152754760722669.a n = A055524 (n + 3)

end A055524

/-! ## A055524.P9834580714577003278

`A147685(n+1)+A114753(n+2)+1`
-/

namespace A055524.P9834580714577003278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147685 (n + 1) + (A114753 (n + 2) + 1)

end

end A055524.P9834580714577003278

namespace A055524

/-- `A147685(n+1)+A114753(n+2)+1` -/
def P9834580714577003278.Spec : Prop :=
  ∀ n, P9834580714577003278.a n = A055524 (n + 3)

end A055524

/-! ## A055524.P6974199871434669977

`A000034(n+1)*A087811(n+2)+1`
-/

namespace A055524.P6974199871434669977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A087811 (n + 2) + 1

end

end A055524.P6974199871434669977

namespace A055524

/-- `A000034(n+1)*A087811(n+2)+1` -/
def P6974199871434669977.Spec : Prop :=
  ∀ n, P6974199871434669977.a n = A055524 (n + 3)

end A055524

/-! ## A055524.P7162047003522898116

`A008619(n+1)*A097362(n+2)+1`
-/

namespace A055524.P7162047003522898116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) * A097362 (n + 2) + 1

end

end A055524.P7162047003522898116

namespace A055524

/-- `A008619(n+1)*A097362(n+2)+1` -/
def P7162047003522898116.Spec : Prop :=
  ∀ n, P7162047003522898116.a n = A055524 (n + 3)

end A055524

/-! ## A055524.P11026276488891040081

`A026035(n+3)+1-A212767(n+1)`
-/

namespace A055524.P11026276488891040081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026035 (n + 3) + (1 - A212767 (n + 1))

end

end A055524.P11026276488891040081

namespace A055524

/-- `A026035(n+3)+1-A212767(n+1)` -/
def P11026276488891040081.Spec : Prop :=
  ∀ n, P11026276488891040081.a n = A055524 (n + 3)

end A055524

/-! ## A055524.P3231182366742460156

`A158416(n+1)*A226725(n+2)+1`
-/

namespace A055524.P3231182366742460156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (n + 1) * A226725 (n + 2) + 1

end

end A055524.P3231182366742460156

namespace A055524

/-- `A158416(n+1)*A226725(n+2)+1` -/
def P3231182366742460156.Spec : Prop :=
  ∀ n, P3231182366742460156.a n = A055524 (n + 3)

end A055524

/-! ## A055524.P10742656517825737734

`lcm(A051494(n+1), A226725(n+2))+1`
-/

namespace A055524.P10742656517825737734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A051494 (n + 1)) (A226725 (n + 2)) + 1

end

end A055524.P10742656517825737734

namespace A055524

/-- `lcm(A051494(n+1), A226725(n+2))+1` -/
def P10742656517825737734.Spec : Prop :=
  ∀ n, (P10742656517825737734.a n : ℤ) = A055524 (n + 3)

end A055524

/-! ## A055524.P9613793404171378809

`A008619(n+1)²+A133622(n+2)²`
-/

namespace A055524.P9613793404171378809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) ^ 2 + A133622 (n + 2) ^ 2

end

end A055524.P9613793404171378809

namespace A055524

/-- `A008619(n+1)²+A133622(n+2)²` -/
def P9613793404171378809.Spec : Prop :=
  ∀ n, P9613793404171378809.a n = A055524 (n + 3)

end A055524

/-! ## A055524.P9509876049714082025

`A271713(n+3)-a(n-1)` with `a(0)=5`
-/

namespace A055524.P9509876049714082025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A271713 (n + 3) - a (n - 1)

end

end A055524.P9509876049714082025

namespace A055524

/-- `A271713(n+3)-a(n-1)` -/
def P9509876049714082025.Spec : Prop :=
  ∀ n, P9509876049714082025.a n = A055524 (n + 3)

end A055524

/-! ## A055524.P15812485549304064670

`A056136(n+3)-A008619(n)`
-/

namespace A055524.P15812485549304064670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056136 (n + 3) - A008619 n

end

end A055524.P15812485549304064670

namespace A055524

/-- `A056136(n+3)-A008619(n)` -/
def P15812485549304064670.Spec : Prop :=
  ∀ n, P15812485549304064670.a n = A055524 (n + 3)

end A055524

/-! ## A055524.P15003740290981664930

`A056136(n+3)-A065033(n+1)`
-/

namespace A055524.P15003740290981664930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056136 (n + 3) - A065033 (n + 1)

end

end A055524.P15003740290981664930

namespace A055524

/-- `A056136(n+3)-A065033(n+1)` -/
def P15003740290981664930.Spec : Prop :=
  ∀ n, P15003740290981664930.a n = A055524 (n + 3)

end A055524

/-! ## A055524.P1678195348369755156

`A093353(n+2)+1-A051494(n+1)`
-/

namespace A055524.P1678195348369755156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 (n + 2) + (1 - A051494 (n + 1))

end

end A055524.P1678195348369755156

namespace A055524

/-- `A093353(n+2)+1-A051494(n+1)` -/
def P1678195348369755156.Spec : Prop :=
  ∀ n, P1678195348369755156.a n = A055524 (n + 3)

end A055524

/-!
# A055526: Shortest hypotenuse of a Pythagorean triangle with n as length of a leg.

The programs for A055526, there is no canonical definition to state claims against.
-/

/-! ## A055526.P12325746577502968975

`sqrt((n+3)²+A055527(n+3)²)`
-/

namespace A055526.P12325746577502968975
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((n + 3) ^ 2 : ℤ) + A055527 (n + 3) ^ 2 : ℝ)

end

end A055526.P12325746577502968975

/-! ## A055526.P13425683425465980883

`A067721(2*(n+3))+3+n`
-/

namespace A055526.P13425683425465980883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067721 (2 * (n + 3)) + 3 + (n : ℤ)

end

end A055526.P13425683425465980883

/-! ## A055526.P1106730620200535930

`A159899(2*n+3)+3+n`
-/

namespace A055526.P1106730620200535930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159899 (2 * n + 3) + 3 + (n : ℤ)

end

end A055526.P1106730620200535930

/-! ## A055526.P18214849015395262903

`A159899(n+3+n)+n+3`
-/

namespace A055526.P18214849015395262903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159899 (n + 3 + n) + (n + 3 : ℤ)

end

end A055526.P18214849015395262903

/-! ## A055526.P69009701445630339

`A009005(A159899(2*n+3)+n)`
-/

namespace A055526.P69009701445630339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A159899 (2 * n + 3) + (n : ℤ)).toNat

end

end A055526.P69009701445630339

/-!
# A055527: Shortest other leg of a Pythagorean triangle with n as length of a leg.

The programs for A055527, there is no canonical definition to state claims against.
-/

/-! ## A055527.P5167601031774518042

`sqrt(A055526(n+3)²-(n+3)²)`
-/

namespace A055527.P5167601031774518042
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055526 (n + 3) ^ 2 - ((n + 3) ^ 2 : ℤ) : ℝ)

end

end A055527.P5167601031774518042

/-! ## A055527.P17711945564093839555

`2/(n+3)*A054436(n+3)`
-/

namespace A055527.P17711945564093839555
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 3 : ℚ) * (A054436 (n + 3) : ℚ)

end

end A055527.P17711945564093839555

/-! ## A055527.P10755956225950269253

`4*A054436(n+3)/A020739(n)`
-/

namespace A055527.P10755956225950269253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A054436 (n + 3) : ℚ) / (A020739 n : ℚ))

end

end A055527.P10755956225950269253

/-! ## A055527.P5007444079145247810

`A115879(2*(n+3))`
-/

namespace A055527.P5007444079145247810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115879 (2 * (n + 3))

end

end A055527.P5007444079145247810

/-! ## A055527.P508068046718300681

`A008574(A054436(n+3))/A020739(n)`
-/

namespace A055527.P508068046718300681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A054436 (n + 3)).toNat : ℚ) / (A020739 n : ℚ)

end

end A055527.P508068046718300681

/-!
# A055528: a(n) = 10*a(n-1)+n^3, a(0)=0.

The programs for A055528, the canonical program `A055528.P8145434988644594303` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055528 has offset 0).

The definition of A055528 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*a(n-1)+n^3` (program `A055528.P8145434988644594303`, by `A055528.P8145434988644594303.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055528.P8145434988644594303

`10*a(n-1)+n^3` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055528

/-- `10*a(n-1)+n^3` -/
def P8145434988644594303.Spec : Prop :=
  ∀ n, (P8145434988644594303.a n : ℤ) = A055528 n

theorem P8145434988644594303.correct : P8145434988644594303.Spec := by
  intro n
  simp only [A055528]

end A055528

/-! ## A055528.P11513814699691711188

`ogf((x+4x^2+x^3)/(1-14x+46x^2-64x^3+41x^4-10x^5))`
-/

namespace A055528.P11513814699691711188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 1] [1, -14, 46, -64, 41, -10] n

end

end A055528.P11513814699691711188

namespace A055528

/-- `ogf((x+4x^2+x^3)/(1-14x+46x^2-64x^3+41x^4-10x^5))` -/
def P11513814699691711188.Spec : Prop :=
  ∀ n, P11513814699691711188.a n = A055528 n

end A055528

/-! ## A055528.P13112205838093290392

`n*n²+10*a(n-1)` with `a(0)=0`
-/

namespace A055528.P13112205838093290392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * n ^ 2 + 10 * a (n - 1)

end

end A055528.P13112205838093290392

namespace A055528

/-- `n*n²+10*a(n-1)` -/
def P13112205838093290392.Spec : Prop :=
  ∀ n, (P13112205838093290392.a n : ℤ) = A055528 n

end A055528

/-!
# A055529: Number of bits needed in mantissa to express n! exactly.

The programs for A055529, the canonical program `A055529.P12508370460568413740` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055529 has offset 0).

The definition of A055529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055529.P12508370460568413740

`A072831(n)-A011371(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A055529

/-- `A072831(n)-A011371(n)` -/
def P12508370460568413740.Spec : Prop :=
  ∀ n, P12508370460568413740.a n = A055529 n

theorem P12508370460568413740.correct : P12508370460568413740.Spec := by
  intro n
  simp only [A055529]

end A055529

/-! ## A055529.P7775548179528342237

`A067850(n)+1-A011371(n)`
-/

namespace A055529.P7775548179528342237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067850 n + (1 - A011371 n)

end

end A055529.P7775548179528342237

namespace A055529

/-- `A067850(n)+1-A011371(n)` -/
def P7775548179528342237.Spec : Prop :=
  ∀ n, P7775548179528342237.a n = A055529 n

theorem P7775548179528342237.correct : P7775548179528342237.Spec := by
  intro n
  simp only [A055529, Nat.add_sub_cancel, A055529.P7775548179528342237.a, A055529.P12508370460568413740.a, A011371, A011371.P12398255777927387864.a, A067850, A067850.P433127479858209906.a, A072831, A072831.P2075451572801131696.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055529

/-! ## A055529.P3913732580928783185

`A000120(n)+A072831(n)-n`
-/

namespace A055529.P3913732580928783185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n + (A072831 n - (n : ℤ))

end

end A055529.P3913732580928783185

namespace A055529

/-- `A000120(n)+A072831(n)-n` -/
def P3913732580928783185.Spec : Prop :=
  ∀ n, P3913732580928783185.a n = A055529 n

theorem P3913732580928783185.correct : P3913732580928783185.Spec := by
  intro n
  simp only [A055529, Nat.add_sub_cancel, A055529.P3913732580928783185.a, A055529.P12508370460568413740.a, A000120, A000120.P2816527436160941581.a, A011371, A011371.P12398255777927387864.a, A072831, A072831.P2075451572801131696.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055529

/-! ## A055529.P14087287798700350664

`A072831(n)+n-A005187(n)`
-/

namespace A055529.P14087287798700350664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 n + ((n : ℤ) - A005187 n)

end

end A055529.P14087287798700350664

namespace A055529

/-- `A072831(n)+n-A005187(n)` -/
def P14087287798700350664.Spec : Prop :=
  ∀ n, P14087287798700350664.a n = A055529 n

theorem P14087287798700350664.correct : P14087287798700350664.Spec := by
  intro n
  simp only [A055529, Nat.add_sub_cancel, A055529.P14087287798700350664.a, A055529.P12508370460568413740.a, A005187, A005187.P3874015513960485494.a, A011371, A011371.P12398255777927387864.a, A072831, A072831.P2075451572801131696.a, A000120, A000120.P2816527436160941581.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A055529

/-! ## A055529.P2349925242830555888

`A072831(n)-A005187(A004526(n))`
-/

namespace A055529.P2349925242830555888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 n - A005187 (A004526 n).toNat

end

end A055529.P2349925242830555888

namespace A055529

/-- `A072831(n)-A005187(A004526(n))` -/
def P2349925242830555888.Spec : Prop :=
  ∀ n, P2349925242830555888.a n = A055529 n

end A055529

/-! ## A055529.P7758123141557145444

`A067850(n)-A023443(A011371(n))`
-/

namespace A055529.P7758123141557145444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067850 n - A023443 (A011371 n).toNat

end

end A055529.P7758123141557145444

namespace A055529

/-- `A067850(n)-A023443(A011371(n))` -/
def P7758123141557145444.Spec : Prop :=
  ∀ n, P7758123141557145444.a n = A055529 n

end A055529

/-! ## A055529.P13161481963104788776

`ceil(log2(A049606(n)+1))`
-/

namespace A055529.P13161481963104788776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A049606 n + 1 : ℝ)⌉

end

end A055529.P13161481963104788776

namespace A055529

/-- `ceil(log2(A049606(n)+1))` -/
def P13161481963104788776.Spec : Prop :=
  ∀ n, P13161481963104788776.a n = A055529 n

end A055529

/-! ## A055529.P10443331308585709285

`A072831(n)-val(A000142(n), 2)`
-/

namespace A055529.P10443331308585709285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072831 n - (SequenceMachineLib.valuation (A000142 n).toNat 2 : ℤ)

end

end A055529.P10443331308585709285

namespace A055529

/-- `A072831(n)-val(A000142(n), 2)` -/
def P10443331308585709285.Spec : Prop :=
  ∀ n, P10443331308585709285.a n = A055529 n

end A055529

/-!
# A055531: Number of labeled order relations on n nodes in which longest chain has 2 nodes.

The programs for A055531, the canonical program `A055531.P3383156994131908462` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055531 has offset 2).

The definition of A055531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055531.P3383156994131908462

`A001831(n+2)-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A055531

/-- `A001831(n+2)-1` -/
def P3383156994131908462.Spec : Prop :=
  ∀ n, P3383156994131908462.a n = A055531 (n + 2)

theorem P3383156994131908462.correct : P3383156994131908462.Spec := by
  intro n
  simp only [A055531, Nat.add_sub_cancel]

end A055531

/-! ## A055531.P628289401671084751

`record[ratio[A222866(n+2)]]`
-/

namespace A055531.P628289401671084751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222866 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055531.P628289401671084751

namespace A055531

/-- `record[ratio[A222866(n+2)]]` -/
def P628289401671084751.Spec : Prop :=
  ∀ n, P628289401671084751.a n = (A055531 (n + 2) : ℚ)

end A055531

/-! ## A055531.P8789254143230482932

`A222866(∑[n+1]+2)`
-/

namespace A055531.P8789254143230482932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222866 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A055531.P8789254143230482932

namespace A055531

/-- `A222866(∑[n+1]+2)` -/
def P8789254143230482932.Spec : Prop :=
  ∀ n, P8789254143230482932.a n = A055531 (n + 2)

end A055531

/-! ## A055531.P15303312465308594097

`record[A222866(A298426(n+1)+n+2)]`
-/

namespace A055531.P15303312465308594097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222866 (A298426 (n + 1) + (n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055531.P15303312465308594097

namespace A055531

/-- `record[A222866(A298426(n+1)+n+2)]` -/
def P15303312465308594097.Spec : Prop :=
  ∀ n, P15303312465308594097.a n = A055531 (n + 2)

end A055531

/-! ## A055531.P8567723132178871530

`record[ratio[A342587(n+2)]]`
-/

namespace A055531.P8567723132178871530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342587 (n + 2)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055531.P8567723132178871530

namespace A055531

/-- `record[ratio[A342587(n+2)]]` -/
def P8567723132178871530.Spec : Prop :=
  ∀ n, P8567723132178871530.a n = (A055531 (n + 2) : ℚ)

end A055531

/-!
# A055532: Number of labeled order relations on n nodes in which longest chain has 3 nodes.

The programs for A055532, there is no canonical definition to state claims against.
-/

/-! ## A055532.P10157788421629600234

`A342587(∑[n+2]+4)`
-/

namespace A055532.P10157788421629600234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342587 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A055532.P10157788421629600234

/-! ## A055532.P15988685641840308738

`lcm(2, A342587(A167614(n+1)))`
-/

namespace A055532.P15988685641840308738
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A342587 (A167614 (n + 1)).toNat)

end

end A055532.P15988685641840308738

/-! ## A055532.P1765683277823556933

`A342587(A167614(n+1))+A321797(n)`
-/

namespace A055532.P1765683277823556933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342587 (A167614 (n + 1)).toNat + A321797 n

end

end A055532.P1765683277823556933

/-! ## A055532.P17290034397587680681

`A342587(A167614(n+1))+A326684(n)`
-/

namespace A055532.P17290034397587680681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342587 (A167614 (n + 1)).toNat + A326684 n

end

end A055532.P17290034397587680681

/-! ## A055532.P16053800081354660641

`A067032(n)*A342587(A167614(n+1))`
-/

namespace A055532.P16053800081354660641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n * A342587 (A167614 (n + 1)).toNat

end

end A055532.P16053800081354660641

/-!
# A055533: Number of labeled order relations on n nodes in which longest chain has n-1 nodes.

The programs for A055533, the canonical program `A055533.P12023496193800163266` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055533 has offset 2).

The definition of A055533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055533.P12023496193800163266

`(n+2)!/2*(n+1)²`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055533

/-- `(n+2)!/2*(n+1)²` -/
def P12023496193800163266.Spec : Prop :=
  ∀ n, P12023496193800163266.a n = (A055533 (n + 2) : ℚ)

end A055533

/-! ## A055533.P16536092525071994653

`∑[n+1]*Δ[(n+1)!]`
-/

namespace A055533.P16536092525071994653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A055533.P16536092525071994653

namespace A055533

/-- `∑[n+1]*Δ[(n+1)!]` -/
def P16536092525071994653.Spec : Prop :=
  ∀ n, P16536092525071994653.a n = A055533 (n + 2)

end A055533

/-! ## A055533.P6270484641158451062

`Δ[(∑[n]-1)*∏[n+1]]`
-/

namespace A055533.P6270484641158451062
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1) * ((∏ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055533.P6270484641158451062

namespace A055533

/-- `Δ[(∑[n]-1)*∏[n+1]]` -/
def P6270484641158451062.Spec : Prop :=
  ∀ n, P6270484641158451062.a n = A055533 (n + 2)

end A055533

/-! ## A055533.P1020581644677401201

`(n+1)²*n!*∑[n+1]`
-/

namespace A055533.P1020581644677401201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 * Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055533.P1020581644677401201

namespace A055533

/-- `(n+1)²*n!*∑[n+1]` -/
def P1020581644677401201.Spec : Prop :=
  ∀ n, (P1020581644677401201.a n : ℤ) = A055533 (n + 2)

end A055533

/-! ## A055533.P4250498375098408402

`(n+1)*C(n+2, 2)*(n+1)!`
-/

namespace A055533.P4250498375098408402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (n + 2) 2 * Nat.factorial (n + 1)

end

end A055533.P4250498375098408402

namespace A055533

/-- `(n+1)*C(n+2, 2)*(n+1)!` -/
def P4250498375098408402.Spec : Prop :=
  ∀ n, (P4250498375098408402.a n : ℤ) = A055533 (n + 2)

end A055533

/-! ## A055533.P802386737174720184

`abs((n+1)*((n+2)!-∏[n+3]))`
-/

namespace A055533.P802386737174720184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * ((Nat.factorial (n + 2) : ℤ) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))|

end

end A055533.P802386737174720184

namespace A055533

/-- `abs((n+1)*((n+2)!-∏[n+3]))` -/
def P802386737174720184.Spec : Prop :=
  ∀ n, P802386737174720184.a n = A055533 (n + 2)

end A055533

/-! ## A055533.P11201819772666664484

`-((n+1)*((n+2)!-∏[n+3]))`
-/

namespace A055533.P11201819772666664484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * ((Nat.factorial (n + 2) : ℤ) - ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)))

end

end A055533.P11201819772666664484

namespace A055533

/-- `-((n+1)*((n+2)!-∏[n+3]))` -/
def P11201819772666664484.Spec : Prop :=
  ∀ n, P11201819772666664484.a n = A055533 (n + 2)

end A055533

/-! ## A055533.P10013326365269606452

`((n+2)!-(n+1)!)*∑[n+1]`
-/

namespace A055533.P10013326365269606452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 2) : ℤ) - (Nat.factorial (n + 1) : ℤ)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A055533.P10013326365269606452

namespace A055533

/-- `((n+2)!-(n+1)!)*∑[n+1]` -/
def P10013326365269606452.Spec : Prop :=
  ∀ n, P10013326365269606452.a n = A055533 (n + 2)

end A055533

/-! ## A055533.P6557894770906771616

`(n+1)!*∑[∑[2*n+1+n]]`
-/

namespace A055533.P6557894770906771616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055533.P6557894770906771616

namespace A055533

/-- `(n+1)!*∑[∑[2*n+1+n]]` -/
def P6557894770906771616.Spec : Prop :=
  ∀ n, (P6557894770906771616.a n : ℤ) = A055533 (n + 2)

end A055533

/-! ## A055533.P14995067504407584376

`Δ[(n+1)!]/Δ[2*n/(n+1)]`
-/

namespace A055533.P14995067504407584376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (f2 (n + 1) - f2 n)

end

end A055533.P14995067504407584376

namespace A055533

/-- `Δ[(n+1)!]/Δ[2*n/(n+1)]` -/
def P14995067504407584376.Spec : Prop :=
  ∀ n, P14995067504407584376.a n = (A055533 (n + 2) : ℚ)

end A055533

/-!
# A055534: Number of labeled order relations on n nodes in which longest chain has n-2 nodes.

The programs for A055534, there is no canonical definition to state claims against.
-/

/-! ## A055534.P17298133405192387981

`A342587(∑[n+3]+1)`
-/

namespace A055534.P17298133405192387981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342587 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A055534.P17298133405192387981

/-! ## A055534.P6088697793324402194

`record[gcd(A182172(n+2), A342587(n+1))]`
-/

namespace A055534.P6088697793324402194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182172 (n + 2)) (A342587 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055534.P6088697793324402194

/-! ## A055534.P12389389610540532955

`A342587(A052905(n)+3)+A107846(n)`
-/

namespace A055534.P12389389610540532955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342587 (A052905 n + 3).toNat + A107846 n

end

end A055534.P12389389610540532955

/-! ## A055534.P5958518213251001317

`record[A342587(n+1)/A342587(n+4)]`
-/

namespace A055534.P5958518213251001317
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342587 (n + 1) : ℚ) / (A342587 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055534.P5958518213251001317

/-!
# A055535: Denominators in expansion of (1-x)^(-1/x)/e.

The programs for A055535, there is no canonical definition to state claims against.
-/

/-! ## A055535.P8933094122963415586

`gcd(A053191(A001898(n)), A053657(n+1))`
-/

namespace A055535.P8933094122963415586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053191 (A001898 n).toNat) (A053657 (n + 1))

end

end A055535.P8933094122963415586

/-! ## A055535.P9046684113361490797

`A000010(A091137(n))*A144845(n)`
-/

namespace A055535.P9046684113361490797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A091137 n).toNat * A144845 n

end

end A055535.P9046684113361490797

/-!
# A055536: Number of asymmetric types of (3,n)-hypergraphs under action of symmetric group S_3.

The programs for A055536, there is no canonical definition to state claims against.
-/

/-! ## A055536.P12877231927812583810

`Δ[A132270(∑[A101094(n+1)])]`
-/

namespace A055536.P12877231927812583810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101094 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055536.P12877231927812583810

/-!
# A055537: Number of asymmetric types of (4,n)-hypergraphs under action of symmetric group S_4.

The programs for A055537, there is no canonical definition to state claims against.
-/

/-! ## A055537.P17705087321228749034

`A055539(n+3)+A055538(n+3)`
-/

namespace A055537.P17705087321228749034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055539 (n + 3) + A055538 (n + 3)

end

end A055537.P17705087321228749034

/-!
# A055538: Number of asymmetric types of (3,n)-hypergraphs without isolated nodes, under action of symmetric group S_3; asymmetric n-covers of an unlabeled 3-set.

The programs for A055538, there is no canonical definition to state claims against.
-/

/-! ## A055538.P8159238136861452073

`A055537(n+3)-A055539(n+3)`
-/

namespace A055538.P8159238136861452073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055537 (n + 3) - A055539 (n + 3)

end

end A055538.P8159238136861452073

/-!
# A055539: Number of asymmetric types of (4,n)-hypergraphs without isolated nodes, under action of symmetric group S_4; asymmetric n-covers of an unlabeled 4-set.

The programs for A055539, there is no canonical definition to state claims against.
-/

/-! ## A055539.P196385426020260739

`A055537(n+3)-A055538(n+3)`
-/

namespace A055539.P196385426020260739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055537 (n + 3) - A055538 (n + 3)

end

end A055539.P196385426020260739

/-!
# A055540: Total number of leaves (nodes of vertex degree 1) in all graphs of n nodes.

The programs for A055540, there is no canonical definition to state claims against.
-/

/-! ## A055540.P9533411251293714940

`A233918(Δ[(n+1)*a(n-1)]+1)` with `a(0)=2`
-/

namespace A055540.P9533411251293714940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  (n + 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233918 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A055540.P9533411251293714940

/-! ## A055540.P15979138671880768470

`record[A307726(A047790(n))]`
-/

namespace A055540.P15979138671880768470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307726 (A047790 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055540.P15979138671880768470

/-!
# A055541: Total number of leaves (nodes of vertex degree 1) in all labeled trees with n nodes.

The programs for A055541, there is no canonical definition to state claims against.
-/

/-! ## A055541.P9054649195121700363

`(n+1)*n^abs(1-n)`
-/

namespace A055541.P9054649195121700363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (n : ℚ) ^ (|1 - (n : ℤ)| : ℤ)

end

end A055541.P9054649195121700363

/-! ## A055541.P5903790142030210111

`lcm(n+1, n^abs(1-n))`
-/

namespace A055541.P5903790142030210111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) ^ (|1 - (n : ℤ)| : ℤ)))

end

end A055541.P5903790142030210111

/-! ## A055541.P15505324696118155921

`floor((n+1)*round(acot(n)+n)^(n-1))`
-/

namespace A055541.P15505324696118155921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A055541.P15505324696118155921

/-! ## A055541.P8406440987930502905

`abs(A244138(∑[n+2]))`
-/

namespace A055541.P8406440987930502905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A244138 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A055541.P8406440987930502905

/-! ## A055541.P4959311084363435084

`A244137(∑[n+2]-1)`
-/

namespace A055541.P4959311084363435084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244137 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A055541.P4959311084363435084

/-! ## A055541.P6766047866702745645

`floor((n+1)*A233583(n+1)^(n-1))`
-/

namespace A055541.P6766047866702745645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * (A233583 (n + 1) : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A055541.P6766047866702745645

/-! ## A055541.P3863412597213983534

`A000272(n)*A002061(n+1)-A000272(n)`
-/

namespace A055541.P3863412597213983534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n * A002061 (n + 1) - A000272 n

end

end A055541.P3863412597213983534

/-! ## A055541.P10388037054227123309

`abs(A244139(∑[n+2]))`
-/

namespace A055541.P10388037054227123309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A244139 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A055541.P10388037054227123309

/-!
# A055542: Total number of nodes in all simple graphs of n nodes.

The programs for A055542, there is no canonical definition to state claims against.
-/

/-! ## A055542.P14989943126030780216

`(n+1)*Δ[A006897(n)]`
-/

namespace A055542.P14989943126030780216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A055542.P14989943126030780216

/-! ## A055542.P17314565560427956695

`(n+1)*A000088(n+1)`
-/

namespace A055542.P17314565560427956695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000088 (n + 1)

end

end A055542.P17314565560427956695

/-! ## A055542.P6208463092489037088

`(n+1)*A361404(∑[n+1])`
-/

namespace A055542.P6208463092489037088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A361404 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055542.P6208463092489037088

/-! ## A055542.P7651388906352580917

`(n+1)*A401210(∑[n+1])`
-/

namespace A055542.P7651388906352580917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A401210 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055542.P7651388906352580917

/-! ## A055542.P16136734375256951879

`Δ[A006897(n)]*A008619(2*n)`
-/

namespace A055542.P16136734375256951879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A008619 (2 * n)

end

end A055542.P16136734375256951879

/-!
# A055543: Total number of nodes in all trees with n nodes.

The programs for A055543, there is no canonical definition to state claims against.
-/

/-! ## A055543.P1942756268411195251

`(n+1)*A000055(n+1)`
-/

namespace A055543.P1942756268411195251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000055 (n + 1)

end

end A055543.P1942756268411195251

/-! ## A055543.P17012106385645564958

`∑[abs(Δ[n*A000055(n)])]`
-/

namespace A055543.P17012106385645564958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000055 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055543.P17012106385645564958

/-! ## A055543.P17711374416652336087

`(n+1)*(A144520(n+1)+1)`
-/

namespace A055543.P17711374416652336087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A144520 (n + 1) + 1)

end

end A055543.P17711374416652336087

/-! ## A055543.P13047862863101026796

`record[abs(1-n)*A000055(abs(1-n))]`
-/

namespace A055543.P13047862863101026796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A000055 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055543.P13047862863101026796

/-! ## A055543.P17417553804343977686

`A095349(n+1)+A000055(n+1)`
-/

namespace A055543.P17417553804343977686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095349 (n + 1) + A000055 (n + 1)

end

end A055543.P17417553804343977686

/-! ## A055543.P3099114933741861287

`(A274935(n+1)-A274937(n+1))*(n+1)`
-/

namespace A055543.P3099114933741861287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A274935 (n + 1) - A274937 (n + 1)) * (n + 1 : ℤ)

end

end A055543.P3099114933741861287

/-! ## A055543.P2886274102849788511

`(A000081(n+1)-A217420(n+2))*(n+1)`
-/

namespace A055543.P2886274102849788511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000081 (n + 1) - A217420 (n + 2)) * (n + 1 : ℤ)

end

end A055543.P2886274102849788511

/-! ## A055543.P17204740828053361257

`(n+1)*A095133(∑[n]+1)`
-/

namespace A055543.P17204740828053361257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A095133 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A055543.P17204740828053361257

/-! ## A055543.P12590139775571266388

`(n+1)*A136605(∑[n+1])`
-/

namespace A055543.P12590139775571266388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A136605 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055543.P12590139775571266388

/-! ## A055543.P6627748195287086326

`(n+1)*sqrt(A001256(n+1))`
-/

namespace A055543.P6627748195287086326
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A001256 (n + 1) : ℝ)

end

end A055543.P6627748195287086326

/-!
# A055544: Total number of nodes in all rooted trees with n nodes.

The programs for A055544, there is no canonical definition to state claims against.
-/

/-! ## A055544.P10030134387319745392

`(n+1)*A000081(n+1)`
-/

namespace A055544.P10030134387319745392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000081 (n + 1)

end

end A055544.P10030134387319745392

/-! ## A055544.P18214817921789578534

`(n+1)*∑[A174145(n)]`
-/

namespace A055544.P18214817921789578534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055544.P18214817921789578534

/-! ## A055544.P15658024347806629329

`∑[abs(Δ[n*A000081(n)])]`
-/

namespace A055544.P15658024347806629329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000081 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055544.P15658024347806629329

/-! ## A055544.P15652996189509683611

`(n+1)*A038001(Δ[n²])`
-/

namespace A055544.P15652996189509683611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A038001 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A055544.P15652996189509683611

/-! ## A055544.P16811261361700474418

`(n+1)/(n+2)*A095341(n+2)`
-/

namespace A055544.P16811261361700474418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (n + 2 : ℚ) * (A095341 (n + 2) : ℚ)

end

end A055544.P16811261361700474418

/-! ## A055544.P12021933458306940883

`(n+1)*A123467(A028310(n))`
-/

namespace A055544.P12021933458306940883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A123467 (A028310 n).toNat

end

end A055544.P12021933458306940883

/-! ## A055544.P15571345893377989684

`record[A008619(n)*A038001(n+1)]`
-/

namespace A055544.P15571345893377989684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A038001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055544.P15571345893377989684

/-! ## A055544.P14684869608740028182

`A095350(n+1)+A000081(n+1)`
-/

namespace A055544.P14684869608740028182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095350 (n + 1) + A000081 (n + 1)

end

end A055544.P14684869608740028182

/-! ## A055544.P2126264114837419958

`A095341(n+2)-A000081(n+1)`
-/

namespace A055544.P2126264114837419958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095341 (n + 2) - A000081 (n + 1)

end

end A055544.P2126264114837419958

/-! ## A055544.P7506398361361960572

`∑{d}[n+1, A008683(#)*A209397((n+1)/#)]`
-/

namespace A055544.P7506398361361960572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A209397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A055544.P7506398361361960572

/-! ## A055544.P13692987713003152734

`record[A000081(A008611(n))*A008611(n)]`
-/

namespace A055544.P13692987713003152734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A008611 n).toNat * A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055544.P13692987713003152734

/-! ## A055544.P1775141982427943716

`record[A000081(A008624(n))*A008624(n)]`
-/

namespace A055544.P1775141982427943716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A008624 n).toNat * A008624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055544.P1775141982427943716

/-! ## A055544.P6908413390436623511

`record[A000081(A117909(n))*A117909(n)]`
-/

namespace A055544.P6908413390436623511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A117909 n).toNat * A117909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055544.P6908413390436623511

/-! ## A055544.P12157003063051458444

`record[A000081(A286552(n))*A286552(n)]`
-/

namespace A055544.P12157003063051458444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A286552 n).toNat * A286552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055544.P12157003063051458444

/-! ## A055544.P12587228974416091868

`record[A000081(A324347(n))*A324347(n)]`
-/

namespace A055544.P12587228974416091868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A324347 n).toNat * A324347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055544.P12587228974416091868

/-! ## A055544.P7661101092113584263

`A000081(A028242(2*n))*A028242(2*n)`
-/

namespace A055544.P7661101092113584263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A028242 (2 * n)).toNat * A028242 (2 * n)

end

end A055544.P7661101092113584263

/-! ## A055544.P11223098717754918455

`A000081(A052938(2*n))*A052938(2*n)`
-/

namespace A055544.P11223098717754918455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A052938 (2 * n)).toNat * A052938 (2 * n)

end

end A055544.P11223098717754918455

/-! ## A055544.P12661079835443603161

`record[A000081(A020986(n))*A020986(n)]`
-/

namespace A055544.P12661079835443603161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (A020986 n).toNat * A020986 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055544.P12661079835443603161

/-! ## A055544.P13957831374759689796

`(n+1)*A033185(A000124(n))`
-/

namespace A055544.P13957831374759689796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033185 (A000124 n).toNat

end

end A055544.P13957831374759689796

/-! ## A055544.P11690936113760473215

`(n+1)*A106234(A133263(n+1))`
-/

namespace A055544.P11690936113760473215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A106234 (A133263 (n + 1)).toNat

end

end A055544.P11690936113760473215

/-!
# A055545: Number of unlabeled matroids on n points.

The programs for A055545, there is no canonical definition to state claims against.
-/

/-! ## A055545.P12268422274423190885

`∑[A058718(n)]`
-/

namespace A055545.P12268422274423190885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055545.P12268422274423190885

/-! ## A055545.P6301349373560999212

`∑[A341903(A094980(n)+1)]`
-/

namespace A055545.P6301349373560999212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341903 (A094980 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055545.P6301349373560999212

/-! ## A055545.P8620463604085845433

`A061358(A000142(n))+A005594(n)`
-/

namespace A055545.P8620463604085845433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A000142 n).toNat + A005594 n

end

end A055545.P8620463604085845433

/-! ## A055545.P5216669645983642091

`∑[A335380(A004197(n)+A000110(n))]`
-/

namespace A055545.P5216669645983642091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335380 (A004197 n + A000110 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055545.P5216669645983642091

/-!
# A055546: a(n) = (-1)^(n+1) * 2^n * n!^2.

The programs for A055546, the canonical program `A055546.P2330225773568555916` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055546 has offset 0).

The definition of A055546 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^(n+1)*2^n*n!²` (program `A055546.P2330225773568555916`, by `A055546.P2330225773568555916.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055546.P2330225773568555916

`(-1)^(n+1)*2^n*n!²`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055546

/-- `(-1)^(n+1)*2^n*n!²` -/
def P2330225773568555916.Spec : Prop :=
  ∀ n, P2330225773568555916.a n = A055546 n

theorem P2330225773568555916.correct : P2330225773568555916.Spec := by
  intro n
  simp only [A055546]

end A055546

/-! ## A055546.P16184932766018241087

`(-1)^(n+1)*A000079(n)*A001044(n)`
-/

namespace A055546.P16184932766018241087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n + 1) * A000079 n * A001044 n

end

end A055546.P16184932766018241087

namespace A055546

/-- `(-1)^(n+1)*A000079(n)*A001044(n)` -/
def P16184932766018241087.Spec : Prop :=
  ∀ n, P16184932766018241087.a n = A055546 n

theorem P16184932766018241087.correct : P16184932766018241087.Spec := by
  intro n
  simp only [A055546, Nat.add_sub_cancel, A055546.P16184932766018241087.a, A055546.P2330225773568555916.a, A000079, A000079.P10855139691139572931.a, A001044, A001044.P12042438856590203725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055546

/-! ## A055546.P15711312523137485822

`∏[ceil(abs(sin(n)))-(2*n²+1)]`
-/

namespace A055546.P15711312523137485822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (n : ℝ)|⌉ - (2 * n ^ 2 + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A055546.P15711312523137485822

namespace A055546

/-- `∏[ceil(abs(sin(n)))-(2*n²+1)]` -/
def P15711312523137485822.Spec : Prop :=
  ∀ n, P15711312523137485822.a n = A055546 n

end A055546

/-! ## A055546.P13463425115661483058

`(n-3*n)*n*a(n-1)` with `a(0)=-1`
-/

namespace A055546.P13463425115661483058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  ((n : ℤ) - (3 * n : ℤ)) * ((n : ℤ) * a (n - 1))

end

end A055546.P13463425115661483058

namespace A055546

/-- `(n-3*n)*n*a(n-1)` -/
def P13463425115661483058.Spec : Prop :=
  ∀ n, P13463425115661483058.a n = A055546 n

end A055546

/-! ## A055546.P4266766218601473598

`∏[n-3-record[(2*n+1)*(n-2)]]`
-/

namespace A055546.P4266766218601473598
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * ((n : ℤ) - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3 - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A055546.P4266766218601473598

namespace A055546

/-- `∏[n-3-record[(2*n+1)*(n-2)]]` -/
def P4266766218601473598.Spec : Prop :=
  ∀ n, P4266766218601473598.a n = A055546 n

end A055546

/-!
# A055550: Number of Poulet numbers (or pseudoprimes to base 2, A001567) less than 10^n.

The programs for A055550, there is no canonical definition to state claims against.
-/

/-! ## A055550.P9621970741876486028

`A357185(A319760(n))+A004176(n)`
-/

namespace A055550.P9621970741876486028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357185 (A319760 n).toNat + A004176 n

end

end A055550.P9621970741876486028

/-!
# A055551: Number of base-2 Euler-Jacobi pseudoprimes (A047713) less than 10^n.

The programs for A055551, there is no canonical definition to state claims against.
-/

/-! ## A055551.P11964838095679535016

`A236966(or(n, ceil(2^(n-1)))²)`
-/

namespace A055551.P11964838095679535016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236966 (Int.lor (n : ℤ) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ^ 2).toNat

end

end A055551.P11964838095679535016

/-! ## A055551.P3047531449842714472

`A157276(A026531(n))`
-/

namespace A055551.P3047531449842714472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157276 (A026531 n).toNat

end

end A055551.P3047531449842714472

/-!
# A055552: Number of base-2 strong pseudoprimes (A001262) less than 10^n.

The programs for A055552, there is no canonical definition to state claims against.
-/

/-! ## A055552.P5037453950202398062

`A103168(∑[A001003(1-(2^(n+1))%(n+1)+n)])`
-/

namespace A055552.P5037453950202398062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001003 (1 - ((2 ^ (n + 1) % (n + 1) : ℕ) : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A055552.P5037453950202398062

/-! ## A055552.P452712432893058515

`A202304(A007089(n)*A129325(n))`
-/

namespace A055552.P452712432893058515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A007089 n * A129325 n).toNat

end

end A055552.P452712432893058515

/-!
# A055553: Number of Carmichael numbers (A002997) less than 10^n.

The programs for A055553, there is no canonical definition to state claims against.
-/

/-! ## A055553.P11558924553469203526

`A350945(A052962(n))-1`
-/

namespace A055553.P11558924553469203526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350945 (A052962 n).toNat - 1

end

end A055553.P11558924553469203526

/-! ## A055553.P9237510631587141495

`A334234(A188118(n+2))`
-/

namespace A055553.P9237510631587141495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334234 (A188118 (n + 2)).toNat

end

end A055553.P9237510631587141495

/-! ## A055553.P9948284445464703656

`A328596(ceil(2^(n-1)))-A112555(n)`
-/

namespace A055553.P9948284445464703656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - A112555 n

end

end A055553.P9948284445464703656

/-!
# A055555: a(n) = n!*(n!+1)/2.

The programs for A055555, the canonical program `A055555.P16369070575649091683` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055555 has offset 0).

The definition of A055555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055555.P5282640096807892348

`n!*(n!+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A055555.P5282640096807892348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n * (Nat.factorial n + 1) : ℚ) / 2

end

end A055555.P5282640096807892348

namespace A055555

/-- `n!*(n!+1)/2` -/
def P5282640096807892348.Spec : Prop :=
  ∀ n, P5282640096807892348.a n = (A055555 n : ℚ)

end A055555

/-! ## A055555.P16369070575649091683

`A000217(A000142(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A055555

/-- `A000217(A000142(n))` -/
def P16369070575649091683.Spec : Prop :=
  ∀ n, P16369070575649091683.a n = A055555 n

theorem P16369070575649091683.correct : P16369070575649091683.Spec := by
  intro n
  simp only [A055555]

end A055555

/-! ## A055555.P10911176863826808037

`∑{#}[n!-1, #+1]`
-/

namespace A055555.P10911176863826808037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (k + 1)

end

end A055555.P10911176863826808037

namespace A055555

/-- `∑{#}[n!-1, #+1]` -/
def P10911176863826808037.Spec : Prop :=
  ∀ n, (P10911176863826808037.a n : ℤ) = A055555 n

end A055555

/-! ## A055555.P7929395613814342971

`C(n!+1, 2)`
-/

namespace A055555.P7929395613814342971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial n + 1) 2

end

end A055555.P7929395613814342971

namespace A055555

/-- `C(n!+1, 2)` -/
def P7929395613814342971.Spec : Prop :=
  ∀ n, (P7929395613814342971.a n : ℤ) = A055555 n

end A055555

/-! ## A055555.P1930449167507860918

`C(abs(xor(-1, n!)), 2)`
-/

namespace A055555.P1930449167507860918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |Int.xor (-1) (Nat.factorial n : ℤ)|.toNat 2

end

end A055555.P1930449167507860918

namespace A055555

/-- `C(abs(xor(-1, n!)), 2)` -/
def P1930449167507860918.Spec : Prop :=
  ∀ n, (P1930449167507860918.a n : ℤ) = A055555 n

end A055555

/-!
# A055557: Numbers k such that 3*R_k - 2 is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A055557, there is no canonical definition to state claims against.
-/

/-! ## A055557.P1039998598712527521

`A055520(n+1)+1`
-/

namespace A055557.P1039998598712527521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055520 (n + 1) + 1

end

end A055557.P1039998598712527521

/-! ## A055557.P603717813346806374

`A020725(A055520(n+1))`
-/

namespace A055557.P603717813346806374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A055520 (n + 1)).toNat

end

end A055557.P603717813346806374

/-! ## A055557.P3176687085147885942

`eq[1, A104484(n)]+1`
-/

namespace A055557.P3176687085147885942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104484 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055557.P3176687085147885942

/-! ## A055557.P16988308229448907709

`eq[2, A105267(n)]+1`
-/

namespace A055557.P16988308229448907709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105267 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A055557.P16988308229448907709

/-! ## A055557.P14871531928122708414

`lt[A104484(n+1), 2]+2`
-/

namespace A055557.P14871531928122708414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104484 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A055557.P14871531928122708414

/-!
# A055558: Primes of the form 1999...999.

The programs for A055558, there is no canonical definition to state claims against.
-/

/-! ## A055558.P1294284747518747272

`2*10^A002957(n+1)-1`
-/

namespace A055558.P1294284747518747272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (10 : ℚ) ^ (A002957 (n + 1) : ℤ) - 1

end

end A055558.P1294284747518747272

/-! ## A055558.P11284393134543507157

`A037071(A002957(n+1))`
-/

namespace A055558.P11284393134543507157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037071 (A002957 (n + 1)).toNat

end

end A055558.P11284393134543507157

/-! ## A055558.P16085351246512346873

`A065582(A002957(2*n+1-n))`
-/

namespace A055558.P16085351246512346873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065582 (A002957 (2 * n + 1 - n)).toNat

end

end A055558.P16085351246512346873

/-! ## A055558.P13298566564092471653

`A065582(A217657(n)+A002957(n+1))`
-/

namespace A055558.P13298566564092471653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065582 (A217657 n + A002957 (n + 1)).toNat

end

end A055558.P13298566564092471653

/-!
# A055559: Primes of the form 2999...999.

The programs for A055559, there is no canonical definition to state claims against.
-/

/-! ## A055559.P13698308312055709258

`3*10^A056703(n+1)-1`
-/

namespace A055559.P13698308312055709258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * (10 : ℚ) ^ (A056703 (n + 1) : ℤ) - 1

end

end A055559.P13698308312055709258

/-!
# A055561: Numbers m such that there are precisely 3 groups of order m.

The programs for A055561, there is no canonical definition to state claims against.
-/

/-! ## A055561.P8903323728736167381

`eq[3, A000001(n)]`
-/

namespace A055561.P8903323728736167381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A055561.P8903323728736167381

/-!
# A055562: a(n) = least number greater than a(n-1) not the sum of an earlier pair of consecutive terms, a(0) = 2.

The programs for A055562, the canonical program `A055562.P16948608332266635314` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055562 has offset 0).

The definition of A055562 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022441, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A055562.P16948608332266635314

`A022441(n)-a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A055562

/-- `A022441(n)-a(n-1)` -/
def P16948608332266635314.Spec : Prop :=
  ∀ n, P16948608332266635314.a n = A055562 n

theorem P16948608332266635314.correct : P16948608332266635314.Spec := by
  intro n
  simp only [A055562]

end A055562

/-! ## A055562.P3506603184674250168

`A210770(2*n+2)`
-/

namespace A055562.P3506603184674250168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210770 (2 * n + 2)

end

end A055562.P3506603184674250168

namespace A055562

/-- `A210770(2*n+2)` -/
def P3506603184674250168.Spec : Prop :=
  ∀ n, P3506603184674250168.a n = A055562 n

end A055562

/-! ## A055562.P10970696888536293928

`∑[gcd(2, A105025(n))]`
-/

namespace A055562.P10970696888536293928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A105025 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055562.P10970696888536293928

namespace A055562

/-- `∑[gcd(2, A105025(n))]` -/
def P10970696888536293928.Spec : Prop :=
  ∀ n, (P10970696888536293928.a n : ℤ) = A055562 n

end A055562

/-! ## A055562.P8665512937431141329

`ceil(A022433(n+1)/2)`
-/

namespace A055562.P8665512937431141329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022433 (n + 1) : ℚ) / 2⌉

end

end A055562.P8665512937431141329

namespace A055562

/-- `ceil(A022433(n+1)/2)` -/
def P8665512937431141329.Spec : Prop :=
  ∀ n, P8665512937431141329.a n = A055562 n

end A055562

/-! ## A055562.P2750528106744680649

`ceil(A022439(n+1)/2)`
-/

namespace A055562.P2750528106744680649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A022439 (n + 1) : ℚ) / 2⌉

end

end A055562.P2750528106744680649

namespace A055562

/-- `ceil(A022439(n+1)/2)` -/
def P2750528106744680649.Spec : Prop :=
  ∀ n, P2750528106744680649.a n = A055562 n

end A055562

/-! ## A055562.P9767260386712654218

`∑[(A070939(n)+n)%2+1]`
-/

namespace A055562.P9767260386712654218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070939 n + (n : ℤ)) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055562.P9767260386712654218

namespace A055562

/-- `∑[(A070939(n)+n)%2+1]` -/
def P9767260386712654218.Spec : Prop :=
  ∀ n, P9767260386712654218.a n = A055562 n

end A055562

/-! ## A055562.P7443665087886011842

`∑[∑[A014963(∏{p}[n, #])]%2]+1+n`
-/

namespace A055562.P7443665087886011842
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f3 n), p)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A055562.P7443665087886011842

namespace A055562

/-- `∑[∑[A014963(∏{p}[n, #])]%2]+1+n` -/
def P7443665087886011842.Spec : Prop :=
  ∀ n, P7443665087886011842.a n = A055562 n

end A055562

/-! ## A055562.P10896404239650059661

`3*(n+1)-A099467(n+2)`
-/

namespace A055562.P10896404239650059661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A099467 (n + 2)

end

end A055562.P10896404239650059661

namespace A055562

/-- `3*(n+1)-A099467(n+2)` -/
def P10896404239650059661.Spec : Prop :=
  ∀ n, P10896404239650059661.a n = A055562 n

end A055562

/-! ## A055562.P8228680261572770259

`A022433(n+1)-(A065033(n+1)+n)`
-/

namespace A055562.P8228680261572770259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022433 (n + 1) - (A065033 (n + 1) + (n : ℤ))

end

end A055562.P8228680261572770259

namespace A055562

/-- `A022433(n+1)-(A065033(n+1)+n)` -/
def P8228680261572770259.Spec : Prop :=
  ∀ n, P8228680261572770259.a n = A055562 n

end A055562

/-! ## A055562.P4157939747884099321

`A001651(n+1)+A001651(n+2)-A099467(n+2)`
-/

namespace A055562.P4157939747884099321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1) + (A001651 (n + 2) - A099467 (n + 2))

end

end A055562.P4157939747884099321

namespace A055562

/-- `A001651(n+1)+A001651(n+2)-A099467(n+2)` -/
def P4157939747884099321.Spec : Prop :=
  ∀ n, P4157939747884099321.a n = A055562 n

end A055562

/-! ## A055562.P5172893137410660169

`∑[2-and(1, A234024(n))]`
-/

namespace A055562.P5172893137410660169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.land 1 (A234024 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055562.P5172893137410660169

namespace A055562

/-- `∑[2-and(1, A234024(n))]` -/
def P5172893137410660169.Spec : Prop :=
  ∀ n, P5172893137410660169.a n = A055562 n

end A055562

/-! ## A055562.P9122664024918608969

`A064429(A099467(n+2))`
-/

namespace A055562.P9122664024918608969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A099467 (n + 2)).toNat

end

end A055562.P9122664024918608969

namespace A055562

/-- `A064429(A099467(n+2))` -/
def P9122664024918608969.Spec : Prop :=
  ∀ n, P9122664024918608969.a n = A055562 n

end A055562

/-! ## A055562.P7400582340310402001

`A210771(A210770(A210770(n+2+n)))`
-/

namespace A055562.P7400582340310402001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210771 (A210770 (A210770 (n + 2 + n)).toNat).toNat

end

end A055562.P7400582340310402001

namespace A055562

/-- `A210771(A210770(A210770(n+2+n)))` -/
def P7400582340310402001.Spec : Prop :=
  ∀ n, P7400582340310402001.a n = A055562 n

end A055562

/-! ## A055562.P9427540421683940176

`A008619(A022433(n+1)-1)`
-/

namespace A055562.P9427540421683940176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A022433 (n + 1) - 1).toNat

end

end A055562.P9427540421683940176

namespace A055562

/-- `A008619(A022433(n+1)-1)` -/
def P9427540421683940176.Spec : Prop :=
  ∀ n, P9427540421683940176.a n = A055562 n

end A055562

/-! ## A055562.P15602419621606622244

`A065033(A022433(n+1))`
-/

namespace A055562.P15602419621606622244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A022433 (n + 1)).toNat

end

end A055562.P15602419621606622244

namespace A055562

/-- `A065033(A022433(n+1))` -/
def P15602419621606622244.Spec : Prop :=
  ∀ n, P15602419621606622244.a n = A055562 n

end A055562

/-! ## A055562.P399795836174908234

`A065033(A022439(n+1))`
-/

namespace A055562.P399795836174908234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A022439 (n + 1)).toNat

end

end A055562.P399795836174908234

namespace A055562

/-- `A065033(A022439(n+1))` -/
def P399795836174908234.Spec : Prop :=
  ∀ n, P399795836174908234.a n = A055562 n

end A055562

/-! ## A055562.P14188297164610256905

`A105637(A022429(n+1))`
-/

namespace A055562.P14188297164610256905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105637 (A022429 (n + 1)).toNat

end

end A055562.P14188297164610256905

namespace A055562

/-- `A105637(A022429(n+1))` -/
def P14188297164610256905.Spec : Prop :=
  ∀ n, P14188297164610256905.a n = A055562 n

end A055562

/-! ## A055562.P538310641671315991

`A174257(A022441(n+1))`
-/

namespace A055562.P538310641671315991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174257 (A022441 (n + 1)).toNat

end

end A055562.P538310641671315991

namespace A055562

/-- `A174257(A022441(n+1))` -/
def P538310641671315991.Spec : Prop :=
  ∀ n, P538310641671315991.a n = A055562 n

end A055562

/-! ## A055562.P17093375443193491335

`A004526(A022433(n+1)+1)`
-/

namespace A055562.P17093375443193491335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022433 (n + 1) + 1).toNat

end

end A055562.P17093375443193491335

namespace A055562

/-- `A004526(A022433(n+1)+1)` -/
def P17093375443193491335.Spec : Prop :=
  ∀ n, P17093375443193491335.a n = A055562 n

end A055562

/-! ## A055562.P2656046727572693819

`A105637(A022433(n+1)-1)`
-/

namespace A055562.P2656046727572693819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105637 (A022433 (n + 1) - 1).toNat

end

end A055562.P2656046727572693819

namespace A055562

/-- `A105637(A022433(n+1)-1)` -/
def P2656046727572693819.Spec : Prop :=
  ∀ n, P2656046727572693819.a n = A055562 n

end A055562

/-!
# A055563: a(n) = least number greater than a(n-1) not the sum of an earlier pair of consecutive terms, a(0) = 3.

The programs for A055563, there is no canonical definition to state claims against.
-/

/-! ## A055563.P6104663766512302766

`comp[A022424(n)-1]+1`
-/

namespace A055563.P6104663766512302766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022424 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A055563.P6104663766512302766

/-! ## A055563.P16409816382800657620

`A022424(n+1)-a(n-1)` with `a(0)=3`
-/

namespace A055563.P16409816382800657620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A022424 (n + 1) - a (n - 1)

end

end A055563.P16409816382800657620

/-! ## A055563.P9922327675294219183

`ceil(∑[Δ[A022424(n+1)]/2])`
-/

namespace A055563.P9922327675294219183
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022424 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A055563.P9922327675294219183

/-! ## A055563.P15480171943138604804

`floor((A022424(n+2)-5)/2)+2`
-/

namespace A055563.P15480171943138604804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022424 (n + 2) - 5 : ℚ) / 2⌋ + 2

end

end A055563.P15480171943138604804

/-! ## A055563.P18339339472330120240

`A008619(A022424(n+2)-3)`
-/

namespace A055563.P18339339472330120240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A022424 (n + 2) - 3).toNat

end

end A055563.P18339339472330120240

/-! ## A055563.P12880504482912191402

`record[A008619(A022424(n))+A000038(n)]`
-/

namespace A055563.P12880504482912191402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A022424 n).toNat + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055563.P12880504482912191402

/-! ## A055563.P13335291646888894481

`A004526(A022424(n+2)-1)`
-/

namespace A055563.P13335291646888894481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A022424 (n + 2) - 1).toNat

end

end A055563.P13335291646888894481

/-!
# A055564: Bisection of A055878.

The programs for A055564, there is no canonical definition to state claims against.
-/

/-! ## A055564.P17985576944678065703

`A055878(Δ[n²])`
-/

namespace A055564.P17985576944678065703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055878 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A055564.P17985576944678065703

/-! ## A055564.P9073317201400981661

`record[A055878(n+1)]`
-/

namespace A055564.P9073317201400981661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055564.P9073317201400981661

/-! ## A055564.P10450931495614589472

`A055878(2*n+1)*A055878(2*n+2)`
-/

namespace A055564.P10450931495614589472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055878 (2 * n + 1) * A055878 (2 * n + 2)

end

end A055564.P10450931495614589472

/-!
# A055565: Sum of digits of n^4.

The programs for A055565, the canonical program `A055565.P4876821411580299299` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055565 has offset 0).

The definition of A055565 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055565.P4876821411580299299

`∑{digits}[n^4, #]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055565

/-- `∑{digits}[n^4, #]` -/
def P4876821411580299299.Spec : Prop :=
  ∀ n, (P4876821411580299299.a n : ℤ) = A055565 n

theorem P4876821411580299299.correct : P4876821411580299299.Spec := by
  intro n
  simp only [A055565]

end A055565

/-! ## A055565.P8672044093929101903

`log2(∏{digits}[n^4, 2^#])`
-/

namespace A055565.P8672044093929101903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ)

end

end A055565.P8672044093929101903

namespace A055565

/-- `log2(∏{digits}[n^4, 2^#])` -/
def P8672044093929101903.Spec : Prop :=
  ∀ n, P8672044093929101903.a n = (A055565 n : ℝ)

end A055565

/-! ## A055565.P10424256419717372816

`∑{digits}[n²²+1, #]-1`
-/

namespace A055565.P10424256419717372816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - 1

end

end A055565.P10424256419717372816

namespace A055565

/-- `∑{digits}[n²²+1, #]-1` -/
def P10424256419717372816.Spec : Prop :=
  ∀ n, P10424256419717372816.a n = A055565 n

end A055565

/-! ## A055565.P14941091344171017063

`or(char[1], ∑{digits}[A017272(n), #])`
-/

namespace A055565.P14941091344171017063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => x).sum

end

end A055565.P14941091344171017063

namespace A055565

/-- `or(char[1], ∑{digits}[A017272(n), #])` -/
def P14941091344171017063.Spec : Prop :=
  ∀ n, (P14941091344171017063.a n : ℤ) = A055565 n

end A055565

/-! ## A055565.P5477044076300433406

`1-4/2+∑{digits}[A002523(n), #]`
-/

namespace A055565.P5477044076300433406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 - (4 : ℚ) / 2 + ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℚ)

end

end A055565.P5477044076300433406

namespace A055565

/-- `1-4/2+∑{digits}[A002523(n), #]` -/
def P5477044076300433406.Spec : Prop :=
  ∀ n, P5477044076300433406.a n = (A055565 n : ℚ)

end A055565

/-! ## A055565.P13571188574926893037

`A023443(∑{digits}[A002523(n), #])`
-/

namespace A055565.P13571188574926893037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A055565.P13571188574926893037

namespace A055565

/-- `A023443(∑{digits}[A002523(n), #])` -/
def P13571188574926893037.Spec : Prop :=
  ∀ n, P13571188574926893037.a n = A055565 n

end A055565

/-! ## A055565.P2522494819694117059

`A004159(n²)`
-/

namespace A055565.P2522494819694117059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (n ^ 2)

end

end A055565.P2522494819694117059

namespace A055565

/-- `A004159(n²)` -/
def P2522494819694117059.Spec : Prop :=
  ∀ n, P2522494819694117059.a n = A055565 n

end A055565

/-! ## A055565.P11622172127834605553

`A280637(n²)-1`
-/

namespace A055565.P11622172127834605553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280637 (n ^ 2) - 1

end

end A055565.P11622172127834605553

namespace A055565

/-- `A280637(n²)-1` -/
def P11622172127834605553.Spec : Prop :=
  ∀ n, P11622172127834605553.a n = A055565 n

end A055565

/-! ## A055565.P12706175140599736529

`n²²-A224977(n²)`
-/

namespace A055565.P12706175140599736529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A224977 (n ^ 2)

end

end A055565.P12706175140599736529

namespace A055565

/-- `n²²-A224977(n²)` -/
def P12706175140599736529.Spec : Prop :=
  ∀ n, P12706175140599736529.a n = A055565 n

end A055565

/-!
# A055566: Sum of digits of n^5.

The programs for A055566, the canonical program `A055566.P9723742412868358255` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055566 has offset 0).

The definition of A055566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055566.P9723742412868358255

`∑{digits}[n^5, #]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055566

/-- `∑{digits}[n^5, #]` -/
def P9723742412868358255.Spec : Prop :=
  ∀ n, (P9723742412868358255.a n : ℤ) = A055566 n

theorem P9723742412868358255.correct : P9723742412868358255.Spec := by
  intro n
  simp only [A055566]

end A055566

/-! ## A055566.P4284777126407995365

`abs(A001489(∑{digits}[A000584(n), #]))`
-/

namespace A055566.P4284777126407995365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum|

end

end A055566.P4284777126407995365

namespace A055566

/-- `abs(A001489(∑{digits}[A000584(n), #]))` -/
def P4284777126407995365.Spec : Prop :=
  ∀ n, P4284777126407995365.a n = A055566 n

end A055566

/-! ## A055566.P7493535791875716778

`A001281(2*∑{digits}[A000584(n), #])`
-/

namespace A055566.P7493535791875716778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (2 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A055566.P7493535791875716778

namespace A055566

/-- `A001281(2*∑{digits}[A000584(n), #])` -/
def P7493535791875716778.Spec : Prop :=
  ∀ n, P7493535791875716778.a n = A055566 n

end A055566

/-! ## A055566.P12650636341975047367

`A004525(2*∑{digits}[A000584(n), #])`
-/

namespace A055566.P12650636341975047367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum)

end

end A055566.P12650636341975047367

namespace A055566

/-- `A004525(2*∑{digits}[A000584(n), #])` -/
def P12650636341975047367.Spec : Prop :=
  ∀ n, P12650636341975047367.a n = A055566 n

end A055566

/-! ## A055566.P15213255060815791156

`∑{digits}[A000584(n), #]%A016779(n)`
-/

namespace A055566.P15213255060815791156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A016779 n)

end

end A055566.P15213255060815791156

namespace A055566

/-- `∑{digits}[A000584(n), #]%A016779(n)` -/
def P15213255060815791156.Spec : Prop :=
  ∀ n, P15213255060815791156.a n = A055566 n

end A055566

/-! ## A055566.P11497900833749141323

`A001221(A000961(n+1))*∑{digits}[A000584(n), #]`
-/

namespace A055566.P11497900833749141323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000961 (n + 1)).toNat * ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A055566.P11497900833749141323

namespace A055566

/-- `A001221(A000961(n+1))*∑{digits}[A000584(n), #]` -/
def P11497900833749141323.Spec : Prop :=
  ∀ n, P11497900833749141323.a n = A055566 n

end A055566

/-! ## A055566.P10704823364380161327

`A000196(∑{digits}[A000584(n), #]²)`
-/

namespace A055566.P10704823364380161327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum ^ 2)

end

end A055566.P10704823364380161327

namespace A055566

/-- `A000196(∑{digits}[A000584(n), #]²)` -/
def P10704823364380161327.Spec : Prop :=
  ∀ n, P10704823364380161327.a n = A055566 n

end A055566

/-!
# A055567: Sum of digits of n^6.

The programs for A055567, the canonical program `A055567.P14776877421892006339` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055567 has offset 0).

The definition of A055567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055567.P14776877421892006339

`∑{digits}[n^6, #]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055567

/-- `∑{digits}[n^6, #]` -/
def P14776877421892006339.Spec : Prop :=
  ∀ n, (P14776877421892006339.a n : ℤ) = A055567 n

theorem P14776877421892006339.correct : P14776877421892006339.Spec := by
  intro n
  simp only [A055567]

end A055567

/-! ## A055567.P6128468441315147594

`∑{digits}[(n*n²)², #]%A202018(n)`
-/

namespace A055567.P6128468441315147594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A202018 n)

end

end A055567.P6128468441315147594

namespace A055567

/-- `∑{digits}[(n*n²)², #]%A202018(n)` -/
def P6128468441315147594.Spec : Prop :=
  ∀ n, P6128468441315147594.a n = A055567 n

end A055567

/-! ## A055567.P13717904643462356131

`A000007(n+1)+∑{digits}[A001014(n), #]`
-/

namespace A055567.P13717904643462356131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A055567.P13717904643462356131

namespace A055567

/-- `A000007(n+1)+∑{digits}[A001014(n), #]` -/
def P13717904643462356131.Spec : Prop :=
  ∀ n, P13717904643462356131.a n = A055567 n

end A055567

/-! ## A055567.P9619227605342039822

`∑{digits}[A001014(n), #]%A000040(n+8)`
-/

namespace A055567.P9619227605342039822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) (A000040 (n + 8))

end

end A055567.P9619227605342039822

namespace A055567

/-- `∑{digits}[A001014(n), #]%A000040(n+8)` -/
def P9619227605342039822.Spec : Prop :=
  ∀ n, P9619227605342039822.a n = A055567 n

end A055567

/-! ## A055567.P10788702398217651067

`∑{digits}[(n*n²)², #]*A057979(2*n)`
-/

namespace A055567.P10788702398217651067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) * A057979 (2 * n)

end

end A055567.P10788702398217651067

namespace A055567

/-- `∑{digits}[(n*n²)², #]*A057979(2*n)` -/
def P10788702398217651067.Spec : Prop :=
  ∀ n, P10788702398217651067.a n = A055567 n

end A055567

/-! ## A055567.P171556120202530287

`A000196(∑{digits}[A001014(n), #]²)`
-/

namespace A055567.P171556120202530287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum ^ 2)

end

end A055567.P171556120202530287

namespace A055567

/-- `A000196(∑{digits}[A001014(n), #]²)` -/
def P171556120202530287.Spec : Prop :=
  ∀ n, P171556120202530287.a n = A055567 n

end A055567

/-! ## A055567.P7784815438674183747

`A025468(n²+2)+∑{digits}[(n*n²)², #]`
-/

namespace A055567.P7784815438674183747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025468 (n ^ 2 + 2) + ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A055567.P7784815438674183747

namespace A055567

/-- `A025468(n²+2)+∑{digits}[(n*n²)², #]` -/
def P7784815438674183747.Spec : Prop :=
  ∀ n, P7784815438674183747.a n = A055567 n

end A055567

/-! ## A055567.P8501840257213718529

`A004164(n²)`
-/

namespace A055567.P8501840257213718529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 (n ^ 2)

end

end A055567.P8501840257213718529

namespace A055567

/-- `A004164(n²)` -/
def P8501840257213718529.Spec : Prop :=
  ∀ n, P8501840257213718529.a n = A055567 n

end A055567

/-! ## A055567.P6408083867172230098

`A004164(n*n)%A001845(n)`
-/

namespace A055567.P6408083867172230098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004164 (n * n)) (A001845 n)

end

end A055567.P6408083867172230098

namespace A055567

/-- `A004164(n*n)%A001845(n)` -/
def P6408083867172230098.Spec : Prop :=
  ∀ n, P6408083867172230098.a n = A055567 n

end A055567

/-! ## A055567.P13857666307894696615

`A004164(A000290(n))%or(3, 12*n)`
-/

namespace A055567.P13857666307894696615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004164 (A000290 n).toNat) (Nat.lor 3 (12 * n) : ℤ)

end

end A055567.P13857666307894696615

namespace A055567

/-- `A004164(A000290(n))%or(3, 12*n)` -/
def P13857666307894696615.Spec : Prop :=
  ∀ n, P13857666307894696615.a n = A055567 n

end A055567

/-!
# A055570: Sum of digits of (a(n)^4) is greater than or equal to a(n).

The programs for A055570, there is no canonical definition to state claims against.
-/

/-! ## A055570.P7838691638546157649

`lt[n, ∑{digits}[n^4+1, #]]`
-/

namespace A055570.P7838691638546157649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055570.P7838691638546157649

/-! ## A055570.P10227658481538453587

`lt[n-∑{digits}[n^4, #], 1]`
-/

namespace A055570.P10227658481538453587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A055570.P10227658481538453587

/-! ## A055570.P7930296251886509040

`lt[C(n, ∑{digits}[n^4, #]), 2]`
-/

namespace A055570.P7930296251886509040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A055570.P7930296251886509040

/-! ## A055570.P5719025370081926532

`lt[n, ∑{digits}[n²², #]+1]`
-/

namespace A055570.P5719025370081926532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055570.P5719025370081926532

/-! ## A055570.P13093380946406962039

`lt[∑{digits}[n²², -#], 1-n]`
-/

namespace A055570.P13093380946406962039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => -(x : ℤ)).sum

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A055570.P13093380946406962039

/-!
# A055571: Sum of digits of a(n)^5 is greater than or equal to a(n).

The programs for A055571, there is no canonical definition to state claims against.
-/

/-! ## A055571.P15537630501578247932

`lt[n, ∑{digits}[n^5, #]+1]`
-/

namespace A055571.P15537630501578247932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055571.P15537630501578247932

/-! ## A055571.P11614687389146594047

`lt[n-1, ∑{digits}[n^5, #]]`
-/

namespace A055571.P11614687389146594047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A055571.P11614687389146594047

/-! ## A055571.P11627239290376657200

`lt[n, A055566(n)+1]`
-/

namespace A055571.P11627239290376657200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055566 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A055571.P11627239290376657200

/-! ## A055571.P10514571278285470916

`lt[n, A007918(∑{digits}[n^5, #])]`
-/

namespace A055571.P10514571278285470916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A055571.P10514571278285470916

/-! ## A055571.P10981135851344268325

`lt[1, ∑{digits}[A000584(n), #]-n+2]`
-/

namespace A055571.P10981135851344268325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A055571.P10981135851344268325

/-!
# A055572: Sum of digits of a(n)^6 is greater than or equal to a(n).

The programs for A055572, there is no canonical definition to state claims against.
-/

/-! ## A055572.P8168649108581745325

`lt[n-1, ∑{digits}[n^6, #]]`
-/

namespace A055572.P8168649108581745325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A055572.P8168649108581745325

/-! ## A055572.P8977933479928364875

`lt[n, A055567(n)+1]`
-/

namespace A055572.P8977933479928364875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055567 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A055572.P8977933479928364875

/-! ## A055572.P13004723411918263518

`lt[n, ∑{digits}[A001014(n), #]+1]`
-/

namespace A055572.P13004723411918263518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n).natAbs).map fun (x : ℕ) => x).sum + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055572.P13004723411918263518

/-! ## A055572.P1290169007316579327

`lt[n²-1, A004164(n²)²]`
-/

namespace A055572.P1290169007316579327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 (n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055572.P1290169007316579327

/-! ## A055572.P4231750039245060112

`lt[A023443(n), A055567(n)]`
-/

namespace A055572.P4231750039245060112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055567 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A055572.P4231750039245060112

/-!
# A055573: Number of terms in simple continued fraction for n-th harmonic number H_n = Sum_{k=1..n} (1/k).

The programs for A055573, there is no canonical definition to state claims against.
-/

/-! ## A055573.P2559923728344743360

`Δ[A139001(abs(1-n)+1)%A000124(n)]`
-/

namespace A055573.P2559923728344743360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139001 (|1 - (n : ℤ)| + 1).toNat) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055573.P2559923728344743360

/-! ## A055573.P7050910705404706801

`A028310(Δ[A139001(A028310(n))])`
-/

namespace A055573.P7050910705404706801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139001 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A055573.P7050910705404706801

/-! ## A055573.P14101306075729570546

`A028310(A139001(n+1)-A139001(A028310(n)))`
-/

namespace A055573.P14101306075729570546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A139001 (n + 1) - A139001 (A028310 n).toNat).toNat

end

end A055573.P14101306075729570546

/-! ## A055573.P14521985345271953174

`A305193(2*n+1)+A049085(A006882(n))`
-/

namespace A055573.P14521985345271953174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305193 (2 * n + 1) + A049085 (A006882 n).toNat

end

end A055573.P14521985345271953174

/-!
# A055574: n satisfying sigma(n+1) = sigma(n-1).

The programs for A055574, there is no canonical definition to state claims against.
-/

/-! ## A055574.P13157989109862992377

`A007373(n+1)+1`
-/

namespace A055574.P13157989109862992377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007373 (n + 1) + 1

end

end A055574.P13157989109862992377

/-! ## A055574.P1367018087759490573

`A223137(n+2)`
-/

namespace A055574.P1367018087759490573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223137 (n + 2)

end

end A055574.P1367018087759490573

/-! ## A055574.P12702577014347682263

`record[A223137(A080513(A004442(n)))]`
-/

namespace A055574.P12702577014347682263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223137 (A080513 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055574.P12702577014347682263

/-! ## A055574.P15586923967542584956

`record[A223137(A080513(A124625(n)))]`
-/

namespace A055574.P15586923967542584956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223137 (A080513 (A124625 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055574.P15586923967542584956

/-! ## A055574.P14177140043157462536

`record[A223137(A254667(A052938(n)))]`
-/

namespace A055574.P14177140043157462536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223137 (A254667 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055574.P14177140043157462536

/-! ## A055574.P14243243209184913339

`record[A223137(A266977(A093178(n)))]`
-/

namespace A055574.P14243243209184913339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223137 (A266977 (A093178 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055574.P14243243209184913339

/-! ## A055574.P16560059197595130865

`∩[A067130(n+1), A227304(n+1)]`
-/

namespace A055574.P16560059197595130865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A055574.P16560059197595130865

/-! ## A055574.P6092004199557552762

`record[A223137(A266977(A008612(n)))]`
-/

namespace A055574.P6092004199557552762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223137 (A266977 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055574.P6092004199557552762

/-!
# A055579: a(n) = binomial(12*n-1,3*n-1)/((6*n-1)*(12*n-1)).

The programs for A055579, the canonical program `A055579.P14572805537248560419` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055579 has offset 1).

The definition of A055579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055579.P14572805537248560419

`A000260(3*(n+1)-1)/3`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A055579

/-- `A000260(3*(n+1)-1)/3` -/
def P14572805537248560419.Spec : Prop :=
  ∀ n, P14572805537248560419.a n = (A055579 (n + 1) : ℚ)

end A055579

/-! ## A055579.P2070447852534307984

`C(12*(n+1)-1, 3*(n+1)-1)/((6*(n+1)-1)*(12*(n+1)-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A055579.P2070447852534307984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((12 * (n + 1) : ℤ) - 1).toNat ((3 * (n + 1) : ℤ) - 1).toNat : ℚ) / (((6 * (n + 1) : ℤ) - 1) * ((12 * (n + 1) : ℤ) - 1) : ℚ)

end

end A055579.P2070447852534307984

namespace A055579

/-- `C(12*(n+1)-1, 3*(n+1)-1)/((6*(n+1)-1)*(12*(n+1)-1))` -/
def P2070447852534307984.Spec : Prop :=
  ∀ n, P2070447852534307984.a n = (A055579 (n + 1) : ℚ)

end A055579

/-! ## A055579.P12313598313301768138

`A002709(3*n+2)`
-/

namespace A055579.P12313598313301768138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002709 (3 * n + 2)

end

end A055579.P12313598313301768138

namespace A055579

/-- `A002709(3*n+2)` -/
def P12313598313301768138.Spec : Prop :=
  ∀ n, P12313598313301768138.a n = A055579 (n + 1)

end A055579

/-! ## A055579.P5537027001589319152

`A262586(A178977(n))`
-/

namespace A055579.P5537027001589319152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262586 (A178977 n).toNat

end

end A055579.P5537027001589319152

namespace A055579

/-- `A262586(A178977(n))` -/
def P5537027001589319152.Spec : Prop :=
  ∀ n, P5537027001589319152.a n = A055579 (n + 1)

end A055579

/-! ## A055579.P9136786280939316201

`record[A002709(A014682(n))]`
-/

namespace A055579.P9136786280939316201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002709 (A014682 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055579.P9136786280939316201

namespace A055579

/-- `record[A002709(A014682(n))]` -/
def P9136786280939316201.Spec : Prop :=
  ∀ n, P9136786280939316201.a n = A055579 (n + 1)

end A055579

/-!
# A055580: Björner-Welker sequence: 2^n*(n^2 + n + 2) - 1.

The programs for A055580, the canonical program `A055580.P7902495367089633892` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055580 has offset 0).

The definition of A055580 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*(n²+n+2)-1` (program `A055580.P7902495367089633892`, by `A055580.P7902495367089633892.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055580.P7902495367089633892

`2^n*(n²+n+2)-1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055580

/-- `2^n*(n²+n+2)-1` -/
def P7902495367089633892.Spec : Prop :=
  ∀ n, P7902495367089633892.a n = A055580 n

theorem P7902495367089633892.correct : P7902495367089633892.Spec := by
  intro n
  simp only [A055580]

end A055580

/-! ## A055580.P641826402404967214

`ogf(1/(1-7x+18x^2-20x^3+8x^4))`
-/

namespace A055580.P641826402404967214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -7, 18, -20, 8] n

end

end A055580.P641826402404967214

namespace A055580

/-- `ogf(1/(1-7x+18x^2-20x^3+8x^4))` -/
def P641826402404967214.Spec : Prop :=
  ∀ n, P641826402404967214.a n = A055580 n

end A055580

/-! ## A055580.P11857384327654809874

`∑[A001788(n+1)]`
-/

namespace A055580.P11857384327654809874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055580.P11857384327654809874

namespace A055580

/-- `∑[A001788(n+1)]` -/
def P11857384327654809874.Spec : Prop :=
  ∀ n, P11857384327654809874.a n = A055580 n

end A055580

/-! ## A055580.P16442221834201513987

`∑[∑[A001793(n+1)]]`
-/

namespace A055580.P16442221834201513987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055580.P16442221834201513987

namespace A055580

/-- `∑[∑[A001793(n+1)]]` -/
def P16442221834201513987.Spec : Prop :=
  ∀ n, P16442221834201513987.a n = A055580 n

end A055580

/-! ## A055580.P12886518923409618304

`∑[A048506(n+1)-1]`
-/

namespace A055580.P12886518923409618304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048506 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055580.P12886518923409618304

namespace A055580

/-- `∑[A048506(n+1)-1]` -/
def P12886518923409618304.Spec : Prop :=
  ∀ n, P12886518923409618304.a n = A055580 n

end A055580

/-! ## A055580.P14390803238523847410

`∑[(n+1)*A001792(n)]`
-/

namespace A055580.P14390803238523847410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055580.P14390803238523847410

namespace A055580

/-- `∑[(n+1)*A001792(n)]` -/
def P14390803238523847410.Spec : Prop :=
  ∀ n, P14390803238523847410.a n = A055580 n

end A055580

/-! ## A055580.P10320784819117379076

`xor(A000225(n), A276041(n))`
-/

namespace A055580.P10320784819117379076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A276041 n)

end

end A055580.P10320784819117379076

namespace A055580

/-- `xor(A000225(n), A276041(n))` -/
def P10320784819117379076.Spec : Prop :=
  ∀ n, P10320784819117379076.a n = A055580 n

end A055580

/-! ## A055580.P12669886780824210092

`A196514(n+1)/4`
-/

namespace A055580.P12669886780824210092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196514 (n + 1) : ℚ) / 4

end

end A055580.P12669886780824210092

namespace A055580

/-- `A196514(n+1)/4` -/
def P12669886780824210092.Spec : Prop :=
  ∀ n, P12669886780824210092.a n = (A055580 n : ℚ)

theorem P12669886780824210092.correct : P12669886780824210092.Spec := by
  intro n
  simp only [A055580, Nat.add_sub_cancel, A055580.P12669886780824210092.a, A055580.P7902495367089633892.a, A196514, A196514.P10306210964865599694.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055580

/-! ## A055580.P14453978000886091405

`∑[2*(n+2)*a(n-1)/n]` with `a(0)=1`
-/

namespace A055580.P14453978000886091405
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * ((n + 2 : ℚ) * f1 (n - 1) / (n : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055580.P14453978000886091405

namespace A055580

/-- `∑[2*(n+2)*a(n-1)/n]` -/
def P14453978000886091405.Spec : Prop :=
  ∀ n, P14453978000886091405.a n = (A055580 n : ℚ)

end A055580

/-! ## A055580.P3921459814813897436

`A193816(∑[n+3])`
-/

namespace A055580.P3921459814813897436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193816 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055580.P3921459814813897436

namespace A055580

/-- `A193816(∑[n+3])` -/
def P3921459814813897436.Spec : Prop :=
  ∀ n, P3921459814813897436.a n = A055580 n

end A055580

/-! ## A055580.P18088560539941894860

`A193844(∑[n+3])`
-/

namespace A055580.P18088560539941894860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055580.P18088560539941894860

namespace A055580

/-- `A193844(∑[n+3])` -/
def P18088560539941894860.Spec : Prop :=
  ∀ n, P18088560539941894860.a n = A055580 n

end A055580

/-! ## A055580.P124590190559298449

`∑[A013609(∑[n+3])]`
-/

namespace A055580.P124590190559298449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055580.P124590190559298449

namespace A055580

/-- `∑[A013609(∑[n+3])]` -/
def P124590190559298449.Spec : Prop :=
  ∀ n, P124590190559298449.a n = A055580 n

end A055580

/-! ## A055580.P12754480101743484174

`∑[A121448(∑[n+3])]`
-/

namespace A055580.P12754480101743484174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121448 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055580.P12754480101743484174

namespace A055580

/-- `∑[A121448(∑[n+3])]` -/
def P12754480101743484174.Spec : Prop :=
  ∀ n, P12754480101743484174.a n = A055580 n

end A055580

/-! ## A055580.P14195103284815868871

`∑[A303872(∑[n+3])]`
-/

namespace A055580.P14195103284815868871
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303872 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055580.P14195103284815868871

namespace A055580

/-- `∑[A303872(∑[n+3])]` -/
def P14195103284815868871.Spec : Prop :=
  ∀ n, P14195103284815868871.a n = A055580 n

end A055580

/-! ## A055580.P10801739915948562435

`A055252(A167614(n+2))`
-/

namespace A055580.P10801739915948562435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055252 (A167614 (n + 2)).toNat

end

end A055580.P10801739915948562435

namespace A055580

/-- `A055252(A167614(n+2))` -/
def P10801739915948562435.Spec : Prop :=
  ∀ n, P10801739915948562435.a n = A055580 n

end A055580

/-! ## A055580.P6626045830644264339

`A399742(A340266(n+2))`
-/

namespace A055580.P6626045830644264339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399742 (A340266 (n + 2)).toNat

end

end A055580.P6626045830644264339

namespace A055580

/-- `A399742(A340266(n+2))` -/
def P6626045830644264339.Spec : Prop :=
  ∀ n, P6626045830644264339.a n = A055580 n

end A055580

/-! ## A055580.P3700940401131491406

`∑[A114687(∑[n+2])]`
-/

namespace A055580.P3700940401131491406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114687 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055580.P3700940401131491406

namespace A055580

/-- `∑[A114687(∑[n+2])]` -/
def P3700940401131491406.Spec : Prop :=
  ∀ n, P3700940401131491406.a n = A055580 n

end A055580

/-!
# A055581: Fifth column of triangle A055252.

The programs for A055581, the canonical program `A055581.P13846569690494246256` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055581 has offset 0).

The definition of A055581 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055581.P13846569690494246256

`(n²-n+4)*2^(n+1)-7-n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055581

/-- `(n²-n+4)*2^(n+1)-7-n` -/
def P13846569690494246256.Spec : Prop :=
  ∀ n, P13846569690494246256.a n = A055581 n

theorem P13846569690494246256.correct : P13846569690494246256.Spec := by
  intro n
  simp only [A055581]

end A055581

/-! ## A055581.P5336162080601692723

`ogf(1/(1-8x+25x^2-38x^3+28x^4-8x^5))`
-/

namespace A055581.P5336162080601692723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -8, 25, -38, 28, -8] n

end

end A055581.P5336162080601692723

namespace A055581

/-- `ogf(1/(1-8x+25x^2-38x^3+28x^4-8x^5))` -/
def P5336162080601692723.Spec : Prop :=
  ∀ n, P5336162080601692723.a n = A055581 n

end A055581

/-! ## A055581.P13991052512130304776

`∑[∑[ogf(1/(1-6x+12x^2-8x^3))]]`
-/

namespace A055581.P13991052512130304776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 12, -8] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055581.P13991052512130304776

namespace A055581

/-- `∑[∑[ogf(1/(1-6x+12x^2-8x^3))]]` -/
def P13991052512130304776.Spec : Prop :=
  ∀ n, P13991052512130304776.a n = A055581 n

end A055581

/-! ## A055581.P6750326707362097279

`∑[A055580(n)]`
-/

namespace A055581.P6750326707362097279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055581.P6750326707362097279

namespace A055581

/-- `∑[A055580(n)]` -/
def P6750326707362097279.Spec : Prop :=
  ∀ n, P6750326707362097279.a n = A055581 n

end A055581

/-! ## A055581.P5553213082187281101

`∑[∑[A001788(n+1)]]`
-/

namespace A055581.P5553213082187281101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055581.P5553213082187281101

namespace A055581

/-- `∑[∑[A001788(n+1)]]` -/
def P5553213082187281101.Spec : Prop :=
  ∀ n, P5553213082187281101.a n = A055581 n

end A055581

/-! ## A055581.P15036013445497132729

`∑[A052481(n+1)-1]`
-/

namespace A055581.P15036013445497132729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052481 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055581.P15036013445497132729

namespace A055581

/-- `∑[A052481(n+1)-1]` -/
def P15036013445497132729.Spec : Prop :=
  ∀ n, P15036013445497132729.a n = A055581 n

end A055581

/-! ## A055581.P4434437871157384538

`∑[A196514(n+1)/4]`
-/

namespace A055581.P4434437871157384538
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196514 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055581.P4434437871157384538

namespace A055581

/-- `∑[A196514(n+1)/4]` -/
def P4434437871157384538.Spec : Prop :=
  ∀ n, P4434437871157384538.a n = (A055581 n : ℚ)

end A055581

/-! ## A055581.P4476128368684676202

`∑[A193816(∑[n+3])]`
-/

namespace A055581.P4476128368684676202
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193816 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055581.P4476128368684676202

namespace A055581

/-- `∑[A193816(∑[n+3])]` -/
def P4476128368684676202.Spec : Prop :=
  ∀ n, P4476128368684676202.a n = A055581 n

end A055581

/-! ## A055581.P5209358011346144739

`∑[A193844(∑[n+3])]`
-/

namespace A055581.P5209358011346144739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193844 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055581.P5209358011346144739

namespace A055581

/-- `∑[A193844(∑[n+3])]` -/
def P5209358011346144739.Spec : Prop :=
  ∀ n, P5209358011346144739.a n = A055581 n

end A055581

/-!
# A055582: Sixth column of triangle A055252.

The programs for A055582, the canonical program `A055582.P12134734387983158862` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055582 has offset 0).

The definition of A055582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055582.P12134734387983158862

`(n²-3*n+8)*(2^(n+3)-1)/2-9*(n+3)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055582

/-- `(n²-3*n+8)*(2^(n+3)-1)/2-9*(n+3)` -/
def P12134734387983158862.Spec : Prop :=
  ∀ n, P12134734387983158862.a n = (A055582 n : ℚ)

end A055582

/-! ## A055582.P7937804531611411552

`ogf(1/(1-9x+33x^2-63x^3+66x^4-36x^5+8x^6))`
-/

namespace A055582.P7937804531611411552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -9, 33, -63, 66, -36, 8] n

end

end A055582.P7937804531611411552

namespace A055582

/-- `ogf(1/(1-9x+33x^2-63x^3+66x^4-36x^5+8x^6))` -/
def P7937804531611411552.Spec : Prop :=
  ∀ n, P7937804531611411552.a n = A055582 n

end A055582

/-! ## A055582.P110948600734479947

`∑[∑[∑[ogf(1/(1-6x+12x^2-8x^3))]]]`
-/

namespace A055582.P110948600734479947
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -6, 12, -8] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055582.P110948600734479947

namespace A055582

/-- `∑[∑[∑[ogf(1/(1-6x+12x^2-8x^3))]]]` -/
def P110948600734479947.Spec : Prop :=
  ∀ n, P110948600734479947.a n = A055582 n

end A055582

/-! ## A055582.P15583918842195533889

`∑[A055581(n)]`
-/

namespace A055582.P15583918842195533889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055582.P15583918842195533889

namespace A055582

/-- `∑[A055581(n)]` -/
def P15583918842195533889.Spec : Prop :=
  ∀ n, P15583918842195533889.a n = A055582 n

end A055582

/-! ## A055582.P3822993815092535843

`∑[∑[A055580(n)]]`
-/

namespace A055582.P3822993815092535843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055580 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055582.P3822993815092535843

namespace A055582

/-- `∑[∑[A055580(n)]]` -/
def P3822993815092535843.Spec : Prop :=
  ∀ n, P3822993815092535843.a n = A055582 n

end A055582

/-! ## A055582.P14866966015474218214

`-∑[∑[n+1-∑[A048506(n+1)]]]`
-/

namespace A055582.P14866966015474218214
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055582.P14866966015474218214

namespace A055582

/-- `-∑[∑[n+1-∑[A048506(n+1)]]]` -/
def P14866966015474218214.Spec : Prop :=
  ∀ n, P14866966015474218214.a n = A055582 n

end A055582

/-! ## A055582.P10554426024589429185

`A110441(∑[n+2]+3)`
-/

namespace A055582.P10554426024589429185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110441 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A055582.P10554426024589429185

namespace A055582

/-- `A110441(∑[n+2]+3)` -/
def P10554426024589429185.Spec : Prop :=
  ∀ n, P10554426024589429185.a n = A055582 n

end A055582

/-! ## A055582.P5121290272022215039

`A206306(A167614(n+2))`
-/

namespace A055582.P5121290272022215039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206306 (A167614 (n + 2)).toNat

end

end A055582.P5121290272022215039

namespace A055582

/-- `A206306(A167614(n+2))` -/
def P5121290272022215039.Spec : Prop :=
  ∀ n, P5121290272022215039.a n = A055582 n

end A055582

/-!
# A055583: Seventh column of triangle A055252.

The programs for A055583, the canonical program `A055583.P4443391000018929732` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055583 has offset 0).

The definition of A055583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 313 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055583.P4443391000018929732

`∑[∑[∑[∑[2^n*∑[n+1]]]]]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055583

/-- `∑[∑[∑[∑[2^n*∑[n+1]]]]]` -/
def P4443391000018929732.Spec : Prop :=
  ∀ n, (P4443391000018929732.a n : ℤ) = A055583 n

theorem P4443391000018929732.correct : P4443391000018929732.Spec := by
  intro n
  simp only [A055583]

end A055583

/-! ## A055583.P18005568651492588822

`a(n-1)+(n*(n-3)+8)*(2^(n+3)-1)/2-9*(n+3)` with `a(0)=1`
-/

namespace A055583.P18005568651492588822
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (((n : ℤ) * ((n : ℤ) - 3) + 8 : ℚ) * (((2 ^ (n + 3) : ℤ) - 1 : ℚ) / 2) - (9 * (n + 3) : ℚ))

end

end A055583.P18005568651492588822

namespace A055583

/-- `a(n-1)+(n*(n-3)+8)*(2^(n+3)-1)/2-9*(n+3)` -/
def P18005568651492588822.Spec : Prop :=
  ∀ n, P18005568651492588822.a n = (A055583 n : ℚ)

end A055583

/-! ## A055583.P14797387582096018270

`A055582(n)+a(n-1)` with `a(0)=1`
-/

namespace A055583.P14797387582096018270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055582 n + a (n - 1)

end

end A055583.P14797387582096018270

namespace A055583

/-- `A055582(n)+a(n-1)` -/
def P14797387582096018270.Spec : Prop :=
  ∀ n, P14797387582096018270.a n = A055583 n

end A055583

/-! ## A055583.P14392632543849153141

`2*A055582(n)-A034009(n)`
-/

namespace A055583.P14392632543849153141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055582 n - A034009 n

end

end A055583.P14392632543849153141

namespace A055583

/-- `2*A055582(n)-A034009(n)` -/
def P14392632543849153141.Spec : Prop :=
  ∀ n, P14392632543849153141.a n = A055583 n

end A055583

/-! ## A055583.P2723041129782677188

`A055582(n+1)-A034009(n+1)`
-/

namespace A055583.P2723041129782677188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055582 (n + 1) - A034009 (n + 1)

end

end A055583.P2723041129782677188

namespace A055583

/-- `A055582(n+1)-A034009(n+1)` -/
def P2723041129782677188.Spec : Prop :=
  ∀ n, P2723041129782677188.a n = A055583 n

end A055583

/-! ## A055583.P4519193418830051987

`A055581(n+2)-A034009(n+2)`
-/

namespace A055583.P4519193418830051987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055581 (n + 2) - A034009 (n + 2)

end

end A055583.P4519193418830051987

namespace A055583

/-- `A055581(n+2)-A034009(n+2)` -/
def P4519193418830051987.Spec : Prop :=
  ∀ n, P4519193418830051987.a n = A055583 n

end A055583

/-! ## A055583.P1977171112213407101

`A055582(n+1)+A055250(n)-A055250(n+1)`
-/

namespace A055583.P1977171112213407101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055582 (n + 1) + (A055250 n - A055250 (n + 1))

end

end A055583.P1977171112213407101

namespace A055583

/-- `A055582(n+1)+A055250(n)-A055250(n+1)` -/
def P1977171112213407101.Spec : Prop :=
  ∀ n, P1977171112213407101.a n = A055583 n

end A055583

/-!
# A055585: Second column of triangle A055584.

The programs for A055585, the canonical program `A055585.P6148768044946889745` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055585 has offset 0).

The definition of A055585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055585.P6148768044946889745

`1/3*2^(n-3)*(n+1)*(n+3)*(n+8)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055585

/-- `1/3*2^(n-3)*(n+1)*(n+3)*(n+8)` -/
def P6148768044946889745.Spec : Prop :=
  ∀ n, P6148768044946889745.a n = (A055585 n : ℚ)

end A055585

/-! ## A055585.P15192325693625102057

`ogf((1-2x+x^2)/(1-8x+24x^2-32x^3+16x^4))`
-/

namespace A055585.P15192325693625102057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -8, 24, -32, 16] n

end

end A055585.P15192325693625102057

namespace A055585

/-- `ogf((1-2x+x^2)/(1-8x+24x^2-32x^3+16x^4))` -/
def P15192325693625102057.Spec : Prop :=
  ∀ n, P15192325693625102057.a n = A055585 n

end A055585

/-! ## A055585.P17414767874351757394

`∑[∑[A062109(n)]]`
-/

namespace A055585.P17414767874351757394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062109 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055585.P17414767874351757394

namespace A055585

/-- `∑[∑[A062109(n)]]` -/
def P17414767874351757394.Spec : Prop :=
  ∀ n, P17414767874351757394.a n = A055585 n

end A055585

/-! ## A055585.P16628726357853165111

`∑[A049612(n+1)]`
-/

namespace A055585.P16628726357853165111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055585.P16628726357853165111

namespace A055585

/-- `∑[A049612(n+1)]` -/
def P16628726357853165111.Spec : Prop :=
  ∀ n, P16628726357853165111.a n = A055585 n

end A055585

/-! ## A055585.P10315001612916609510

`∑[A052905(n)+3]/2^(2-n)`
-/

namespace A055585.P10315001612916609510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (2 : ℚ) ^ (2 - (n : ℤ) : ℤ)

end

end A055585.P10315001612916609510

namespace A055585

/-- `∑[A052905(n)+3]/2^(2-n)` -/
def P10315001612916609510.Spec : Prop :=
  ∀ n, P10315001612916609510.a n = (A055585 n : ℚ)

end A055585

/-! ## A055585.P11569821141430635326

`a(n-1)+A084851(n)+a(n-1)` with `a(0)=1`
-/

namespace A055585.P11569821141430635326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A084851 n + a (n - 1))

end

end A055585.P11569821141430635326

namespace A055585

/-- `a(n-1)+A084851(n)+a(n-1)` -/
def P11569821141430635326.Spec : Prop :=
  ∀ n, P11569821141430635326.a n = A055585 n

end A055585

/-! ## A055585.P11775948277063407575

`A081913(n+1)-A127276(n+1)`
-/

namespace A055585.P11775948277063407575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081913 (n + 1) - A127276 (n + 1)

end

end A055585.P11775948277063407575

namespace A055585

/-- `A081913(n+1)-A127276(n+1)` -/
def P11775948277063407575.Spec : Prop :=
  ∀ n, P11775948277063407575.a n = A055585 n

end A055585

/-! ## A055585.P9697601318005251483

`A049612(n+2)-A049611(n+2)`
-/

namespace A055585.P9697601318005251483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049612 (n + 2) - A049611 (n + 2)

end

end A055585.P9697601318005251483

namespace A055585

/-- `A049612(n+2)-A049611(n+2)` -/
def P9697601318005251483.Spec : Prop :=
  ∀ n, P9697601318005251483.a n = A055585 n

end A055585

/-! ## A055585.P16576511250716442288

`A062109(n+2)-A084851(n+2)`
-/

namespace A055585.P16576511250716442288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062109 (n + 2) - A084851 (n + 2)

end

end A055585.P16576511250716442288

namespace A055585

/-- `A062109(n+2)-A084851(n+2)` -/
def P16576511250716442288.Spec : Prop :=
  ∀ n, P16576511250716442288.a n = A055585 n

end A055585

/-! ## A055585.P1302434103532345717

`(n+1)*A058396(n+1)/3`
-/

namespace A055585.P1302434103532345717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A058396 (n + 1) : ℚ) / 3

end

end A055585.P1302434103532345717

namespace A055585

/-- `(n+1)*A058396(n+1)/3` -/
def P1302434103532345717.Spec : Prop :=
  ∀ n, P1302434103532345717.a n = (A055585 n : ℚ)

end A055585

/-! ## A055585.P10915977275309617866

`Δ[2^(n-2)*A005581(n+1)]`
-/

namespace A055585.P10915977275309617866
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A005581 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055585.P10915977275309617866

namespace A055585

/-- `Δ[2^(n-2)*A005581(n+1)]` -/
def P10915977275309617866.Spec : Prop :=
  ∀ n, P10915977275309617866.a n = (A055585 n : ℚ)

end A055585

/-! ## A055585.P10954780271543795261

`(A001794(n)+A001793(n+1))/2`
-/

namespace A055585.P10954780271543795261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001794 n + A001793 (n + 1) : ℚ) / 2

end

end A055585.P10954780271543795261

namespace A055585

/-- `(A001794(n)+A001793(n+1))/2` -/
def P10954780271543795261.Spec : Prop :=
  ∀ n, P10954780271543795261.a n = (A055585 n : ℚ)

end A055585

/-! ## A055585.P12735022020212181266

`(A080930(n+1)-A001792(n+1))/2`
-/

namespace A055585.P12735022020212181266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080930 (n + 1) - A001792 (n + 1) : ℚ) / 2

end

end A055585.P12735022020212181266

namespace A055585

/-- `(A080930(n+1)-A001792(n+1))/2` -/
def P12735022020212181266.Spec : Prop :=
  ∀ n, P12735022020212181266.a n = (A055585 n : ℚ)

end A055585

/-! ## A055585.P1349888947420397415

`A001788(n+1)+A058645(n)-A085385(n)`
-/

namespace A055585.P1349888947420397415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1) + (A058645 n - A085385 n)

end

end A055585.P1349888947420397415

namespace A055585

/-- `A001788(n+1)+A058645(n)-A085385(n)` -/
def P1349888947420397415.Spec : Prop :=
  ∀ n, P1349888947420397415.a n = A055585 n

end A055585

/-! ## A055585.P7695900565282174475

`Δ[A240434(n)/4]`
-/

namespace A055585.P7695900565282174475
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240434 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A055585.P7695900565282174475

namespace A055585

/-- `Δ[A240434(n)/4]` -/
def P7695900565282174475.Spec : Prop :=
  ∀ n, P7695900565282174475.a n = (A055585 n : ℚ)

end A055585

/-! ## A055585.P5384034534253857236

`A308914(n+4)-A006974(n)`
-/

namespace A055585.P5384034534253857236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308914 (n + 4) - A006974 n

end

end A055585.P5384034534253857236

namespace A055585

/-- `A308914(n+4)-A006974(n)` -/
def P5384034534253857236.Spec : Prop :=
  ∀ n, P5384034534253857236.a n = A055585 n

end A055585

/-! ## A055585.P5029397609741831185

`Δ[A213432(n+3)]/(n+2)`
-/

namespace A055585.P5029397609741831185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213432 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 2 : ℚ)

end

end A055585.P5029397609741831185

namespace A055585

/-- `Δ[A213432(n+3)]/(n+2)` -/
def P5029397609741831185.Spec : Prop :=
  ∀ n, P5029397609741831185.a n = (A055585 n : ℚ)

end A055585

/-! ## A055585.P11600334222988906882

`A006974(n)*A011782(n+1)/A001792(n)`
-/

namespace A055585.P11600334222988906882
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006974 n * A011782 (n + 1) : ℚ) / (A001792 n : ℚ)

end

end A055585.P11600334222988906882

namespace A055585

/-- `A006974(n)*A011782(n+1)/A001792(n)` -/
def P11600334222988906882.Spec : Prop :=
  ∀ n, P11600334222988906882.a n = (A055585 n : ℚ)

end A055585

/-! ## A055585.P14427460086393248401

`A375550(∑[n])`
-/

namespace A055585.P14427460086393248401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375550 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A055585.P14427460086393248401

namespace A055585

/-- `A375550(∑[n])` -/
def P14427460086393248401.Spec : Prop :=
  ∀ n, P14427460086393248401.a n = A055585 n

end A055585

/-! ## A055585.P15221792022368028427

`record[A375550(n)]`
-/

namespace A055585.P15221792022368028427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375550 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055585.P15221792022368028427

namespace A055585

/-- `record[A375550(n)]` -/
def P15221792022368028427.Spec : Prop :=
  ∀ n, P15221792022368028427.a n = A055585 n

end A055585

/-!
# A055586: Sixth column of triangle A055584.

The programs for A055586, the canonical program `A055586.P486405700995758904` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055586 has offset 0).

The definition of A055586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055586.P486405700995758904

`ogf(1/(1-10x+41x^2-88x^3+104x^4-64x^5+16x^6))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055586

/-- `ogf(1/(1-10x+41x^2-88x^3+104x^4-64x^5+16x^6))` -/
def P486405700995758904.Spec : Prop :=
  ∀ n, P486405700995758904.a n = A055586 n

theorem P486405700995758904.correct : P486405700995758904.Spec := by
  intro n
  simp only [A055586]

end A055586

/-! ## A055586.P1123054368817482893

`∑[∑[2^n*C(n+3, 3)]]`
-/

namespace A055586.P1123054368817482893
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.choose (n + 3) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055586.P1123054368817482893

namespace A055586

/-- `∑[∑[2^n*C(n+3, 3)]]` -/
def P1123054368817482893.Spec : Prop :=
  ∀ n, (P1123054368817482893.a n : ℤ) = A055586 n

end A055586

/-! ## A055586.P4470424858947605064

`∑[∑[2^n*∑[∑[n+1]]]]`
-/

namespace A055586.P4470424858947605064
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055586.P4470424858947605064

namespace A055586

/-- `∑[∑[2^n*∑[∑[n+1]]]]` -/
def P4470424858947605064.Spec : Prop :=
  ∀ n, (P4470424858947605064.a n : ℤ) = A055586 n

end A055586

/-! ## A055586.P276470944847308907

`or(∑[A027608(n)], char[2])`
-/

namespace A055586.P276470944847308907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027608 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A055586.P276470944847308907

namespace A055586

/-- `or(∑[A027608(n)], char[2])` -/
def P276470944847308907.Spec : Prop :=
  ∀ n, P276470944847308907.a n = A055586 n

end A055586

/-! ## A055586.P13009807303256804584

`∑[∑[2*A082138(n)]]-(n+1)`
-/

namespace A055586.P13009807303256804584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A082138 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A055586.P13009807303256804584

namespace A055586

/-- `∑[∑[2*A082138(n)]]-(n+1)` -/
def P13009807303256804584.Spec : Prop :=
  ∀ n, P13009807303256804584.a n = A055586 n

end A055586

/-! ## A055586.P11249849623047272854

`a(n-1)+A055581(n)+a(n-1)` with `a(0)=1`
-/

namespace A055586.P11249849623047272854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A055581 n + a (n - 1))

end

end A055586.P11249849623047272854

namespace A055586

/-- `a(n-1)+A055581(n)+a(n-1)` -/
def P11249849623047272854.Spec : Prop :=
  ∀ n, P11249849623047272854.a n = A055586 n

end A055586

/-! ## A055586.P17402552853622093116

`gcd(∑[A027608(n)], A000038(n))`
-/

namespace A055586.P17402552853622093116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027608 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A055586.P17402552853622093116

namespace A055586

/-- `gcd(∑[A027608(n)], A000038(n))` -/
def P17402552853622093116.Spec : Prop :=
  ∀ n, (P17402552853622093116.a n : ℤ) = A055586 n

end A055586

/-! ## A055586.P15028687082930055433

`lcm(∑[A027608(n)], A000034(n))`
-/

namespace A055586.P15028687082930055433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027608 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A055586.P15028687082930055433

namespace A055586

/-- `lcm(∑[A027608(n)], A000034(n))` -/
def P15028687082930055433.Spec : Prop :=
  ∀ n, (P15028687082930055433.a n : ℤ) = A055586 n

end A055586

/-! ## A055586.P13221392078256324072

`2*A027608(n)-A055581(n)`
-/

namespace A055586.P13221392078256324072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027608 n - A055581 n

end

end A055586.P13221392078256324072

namespace A055586

/-- `2*A027608(n)-A055581(n)` -/
def P13221392078256324072.Spec : Prop :=
  ∀ n, P13221392078256324072.a n = A055586 n

end A055586

/-! ## A055586.P6325072951217848159

`A027608(n+1)-A055581(n+1)`
-/

namespace A055586.P6325072951217848159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027608 (n + 1) - A055581 (n + 1)

end

end A055586.P6325072951217848159

namespace A055586

/-- `A027608(n+1)-A055581(n+1)` -/
def P6325072951217848159.Spec : Prop :=
  ∀ n, P6325072951217848159.a n = A055586 n

end A055586

/-! ## A055586.P13703679338286290706

`∑[A027608(n)]^and(1, A000040(n+1))`
-/

namespace A055586.P13703679338286290706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027608 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A055586.P13703679338286290706

namespace A055586

/-- `∑[A027608(n)]^and(1, A000040(n+1))` -/
def P13703679338286290706.Spec : Prop :=
  ∀ n, P13703679338286290706.a n = (A055586 n : ℚ)

end A055586

/-! ## A055586.P10351757271487954162

`A027608(n+1)+A055582(n)-A055582(n+1)`
-/

namespace A055586.P10351757271487954162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027608 (n + 1) + (A055582 n - A055582 (n + 1))

end

end A055586.P10351757271487954162

namespace A055586

/-- `A027608(n+1)+A055582(n)-A055582(n+1)` -/
def P10351757271487954162.Spec : Prop :=
  ∀ n, P10351757271487954162.a n = A055586 n

end A055586

/-! ## A055586.P10460928360995607956

`∑[A027608(n)]%A000432(n+3)`
-/

namespace A055586.P10460928360995607956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000432 (n + 3))

end

end A055586.P10460928360995607956

namespace A055586

/-- `∑[A027608(n)]%A000432(n+3)` -/
def P10460928360995607956.Spec : Prop :=
  ∀ n, P10460928360995607956.a n = A055586 n

end A055586

/-! ## A055586.P16769034173067734874

`A181690(A167614(n+2))`
-/

namespace A055586.P16769034173067734874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181690 (A167614 (n + 2)).toNat

end

end A055586.P16769034173067734874

namespace A055586

/-- `A181690(A167614(n+2))` -/
def P16769034173067734874.Spec : Prop :=
  ∀ n, P16769034173067734874.a n = A055586 n

end A055586

/-!
# A055587: Triangle with columns built from row sums of the partial row sums triangles obtained from Pascal's triangle A007318. Essentially A049600 formatted differently.

The programs for A055587, the canonical program `A055587.P16210654238389743243` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055587 has offset 0).

The definition of A055587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055587.P16210654238389743243

`A208341(A056943(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A055587

/-- `A208341(A056943(n))` -/
def P16210654238389743243.Spec : Prop :=
  ∀ n, P16210654238389743243.a n = A055587 n

theorem P16210654238389743243.correct : P16210654238389743243.Spec := by
  intro n
  simp only [A055587]

end A055587

/-! ## A055587.P9063041669653552265

`A208341(A056942(n)-n)`
-/

namespace A055587.P9063041669653552265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A056942 n - (n : ℤ)).toNat

end

end A055587.P9063041669653552265

namespace A055587

/-- `A208341(A056942(n)-n)` -/
def P9063041669653552265.Spec : Prop :=
  ∀ n, P9063041669653552265.a n = A055587 n

end A055587

/-! ## A055587.P4222676731783332541

`A208341(n-A056944(n))`
-/

namespace A055587.P4222676731783332541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 ((n : ℤ) - A056944 n).toNat

end

end A055587.P4222676731783332541

namespace A055587

/-- `A208341(n-A056944(n))` -/
def P4222676731783332541.Spec : Prop :=
  ∀ n, P4222676731783332541.a n = A055587 n

theorem P4222676731783332541.correct : P4222676731783332541.Spec := by
  intro n
  simp only [A055587, Nat.add_sub_cancel, A055587.P4222676731783332541.a, A055587.P16210654238389743243.a, A056943, A056943.P2657344456391598982.a, A056944, A056944.P15541445897934142795.a, A208341, A208341.P16541214995392684149.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A055587

/-! ## A055587.P11553505086556889595

`A208341(n-2*A002262(n))`
-/

namespace A055587.P11553505086556889595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 ((n : ℤ) - 2 * A002262 n).toNat

end

end A055587.P11553505086556889595

namespace A055587

/-- `A208341(n-2*A002262(n))` -/
def P11553505086556889595.Spec : Prop :=
  ∀ n, P11553505086556889595.a n = A055587 n

end A055587

/-! ## A055587.P4645427619234303116

`A208341(2*A057944(n)-n)`
-/

namespace A055587.P4645427619234303116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (2 * A057944 n - (n : ℤ)).toNat

end

end A055587.P4645427619234303116

namespace A055587

/-- `A208341(2*A057944(n)-n)` -/
def P4645427619234303116.Spec : Prop :=
  ∀ n, P4645427619234303116.a n = A055587 n

end A055587

/-! ## A055587.P7651532638914813641

`A106195((2*n)%A007401(n+1))`
-/

namespace A055587.P7651532638914813641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 (Int.tmod (2 * n : ℤ) (A007401 (n + 1))).toNat

end

end A055587.P7651532638914813641

namespace A055587

/-- `A106195((2*n)%A007401(n+1))` -/
def P7651532638914813641.Spec : Prop :=
  ∀ n, P7651532638914813641.a n = A055587 n

end A055587

/-! ## A055587.P9108883418077658247

`A208341(n-A005843(A002262(n)))`
-/

namespace A055587.P9108883418077658247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 ((n : ℤ) - A005843 (A002262 n).toNat).toNat

end

end A055587.P9108883418077658247

namespace A055587

/-- `A208341(n-A005843(A002262(n)))` -/
def P9108883418077658247.Spec : Prop :=
  ∀ n, P9108883418077658247.a n = A055587 n

end A055587

/-! ## A055587.P18326495722732303606

`A208341(A057944(n)-A002262(n))`
-/

namespace A055587.P18326495722732303606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A057944 n - A002262 n).toNat

end

end A055587.P18326495722732303606

namespace A055587

/-- `A208341(A057944(n)-A002262(n))` -/
def P18326495722732303606.Spec : Prop :=
  ∀ n, P18326495722732303606.a n = A055587 n

end A055587

/-! ## A055587.P18368288886290285255

`A208341(A061579(n)-A003056(n))`
-/

namespace A055587.P18368288886290285255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A061579 n - A003056 n).toNat

end

end A055587.P18368288886290285255

namespace A055587

/-- `A208341(A061579(n)-A003056(n))` -/
def P18368288886290285255.Spec : Prop :=
  ∀ n, P18368288886290285255.a n = A055587 n

end A055587

/-! ## A055587.P10932911267159853976

`A208341(A057944(n)+A057944(n)-n)`
-/

namespace A055587.P10932911267159853976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A057944 n + (A057944 n - (n : ℤ))).toNat

end

end A055587.P10932911267159853976

namespace A055587

/-- `A208341(A057944(n)+A057944(n)-n)` -/
def P10932911267159853976.Spec : Prop :=
  ∀ n, P10932911267159853976.a n = A055587 n

end A055587

/-! ## A055587.P9933128372308470140

`A208341(A061579(n)+A083920(n)-n)`
-/

namespace A055587.P9933128372308470140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A061579 n + (A083920 n - (n : ℤ))).toNat

end

end A055587.P9933128372308470140

namespace A055587

/-- `A208341(A061579(n)+A083920(n)-n)` -/
def P9933128372308470140.Spec : Prop :=
  ∀ n, P9933128372308470140.a n = A055587 n

end A055587

/-! ## A055587.P18104738256086474619

`A208341(n-A002262(n)-A002262(n))`
-/

namespace A055587.P18104738256086474619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 ((n : ℤ) - A002262 n - A002262 n).toNat

end

end A055587.P18104738256086474619

namespace A055587

/-- `A208341(n-A002262(n)-A002262(n))` -/
def P18104738256086474619.Spec : Prop :=
  ∀ n, P18104738256086474619.a n = A055587 n

end A055587

/-! ## A055587.P6172635534938118611

`A208341(A057944(n)-(n-A057944(n)))`
-/

namespace A055587.P6172635534938118611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A057944 n - ((n : ℤ) - A057944 n)).toNat

end

end A055587.P6172635534938118611

namespace A055587

/-- `A208341(A057944(n)-(n-A057944(n)))` -/
def P6172635534938118611.Spec : Prop :=
  ∀ n, P6172635534938118611.a n = A055587 n

end A055587

/-! ## A055587.P5784581366879100875

`A208341(A061579(n)-(n-A083920(n)))`
-/

namespace A055587.P5784581366879100875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A061579 n - ((n : ℤ) - A083920 n)).toNat

end

end A055587.P5784581366879100875

namespace A055587

/-- `A208341(A061579(n)-(n-A083920(n)))` -/
def P5784581366879100875.Spec : Prop :=
  ∀ n, P5784581366879100875.a n = A055587 n

end A055587

/-! ## A055587.P4710882646896686741

`A208341(A083920(A061579(n)))`
-/

namespace A055587.P4710882646896686741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208341 (A083920 (A061579 n).toNat).toNat

end

end A055587.P4710882646896686741

namespace A055587

/-- `A208341(A083920(A061579(n)))` -/
def P4710882646896686741.Spec : Prop :=
  ∀ n, P4710882646896686741.a n = A055587 n

end A055587

/-! ## A055587.P13346643785962764366

`A049600(A061579(n)+A035214(n))`
-/

namespace A055587.P13346643785962764366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A061579 n + A035214 n).toNat

end

end A055587.P13346643785962764366

namespace A055587

/-- `A049600(A061579(n)+A035214(n))` -/
def P13346643785962764366.Spec : Prop :=
  ∀ n, P13346643785962764366.a n = A055587 n

end A055587

/-! ## A055587.P11508026741177632619

`A049600(A038722(n+1)+A010054(n))`
-/

namespace A055587.P11508026741177632619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (A038722 (n + 1) + A010054 n).toNat

end

end A055587.P11508026741177632619

namespace A055587

/-- `A049600(A038722(n+1)+A010054(n))` -/
def P11508026741177632619.Spec : Prop :=
  ∀ n, P11508026741177632619.a n = A055587 n

end A055587

/-! ## A055587.P14090971489034705122

`A106195(n)-A055807(A014132(n+1))`
-/

namespace A055587.P14090971489034705122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106195 n - A055807 (A014132 (n + 1)).toNat

end

end A055587.P14090971489034705122

namespace A055587

/-- `A106195(n)-A055807(A014132(n+1))` -/
def P14090971489034705122.Spec : Prop :=
  ∀ n, P14090971489034705122.a n = A055587 n

end A055587

/-!
# A055588: a(n) = 3*a(n-1) - a(n-2) - 1 with a(0) = 1 and a(1) = 2.

The programs for A055588, the canonical program `A055588.P6976673877998069316` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055588 has offset 0).

The definition of A055588 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-2)-1` (program `A055588.P6976673877998069316`, by `A055588.P6976673877998069316.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A055588.P13871077471899394017

`ogf((1-2x)/(1-4x+4x^2-x^3))`
-/

namespace A055588.P13871077471899394017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -4, 4, -1] n

end

end A055588.P13871077471899394017

namespace A055588

/-- `ogf((1-2x)/(1-4x+4x^2-x^3))` -/
def P13871077471899394017.Spec : Prop :=
  ∀ n, P13871077471899394017.a n = A055588 n

end A055588

/-! ## A055588.P12109915212192170816

`∑{#}[floor(n/3), C(n-#, 2*#)*2^(n-3*#)]`
-/

namespace A055588.P12109915212192170816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n : ℤ) - (k : ℤ)).toNat (2 * k) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - (3 * k : ℤ) : ℤ)

end

end A055588.P12109915212192170816

namespace A055588

/-- `∑{#}[floor(n/3), C(n-#, 2*#)*2^(n-3*#)]` -/
def P12109915212192170816.Spec : Prop :=
  ∀ n, P12109915212192170816.a n = (A055588 n : ℚ)

end A055588

/-! ## A055588.P1859070422968026343

`1+A001906(n)`
-/

namespace A055588.P1859070422968026343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A001906 n

end

end A055588.P1859070422968026343

namespace A055588

/-- `1+A001906(n)` -/
def P1859070422968026343.Spec : Prop :=
  ∀ n, P1859070422968026343.a n = A055588 n

end A055588

/-! ## A055588.P11126314361924507517

`A008346(2*n)`
-/

namespace A055588.P11126314361924507517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (2 * n)

end

end A055588.P11126314361924507517

namespace A055588

/-- `A008346(2*n)` -/
def P11126314361924507517.Spec : Prop :=
  ∀ n, P11126314361924507517.a n = A055588 n

end A055588

/-! ## A055588.P17951632087539211284

`A000045(2*n)+1`
-/

namespace A055588.P17951632087539211284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) + 1

end

end A055588.P17951632087539211284

namespace A055588

/-- `A000045(2*n)+1` -/
def P17951632087539211284.Spec : Prop :=
  ∀ n, P17951632087539211284.a n = A055588 n

end A055588

/-! ## A055588.P6976673877998069316

`3*a(n-1)-a(n-2)-1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055588

/-- `3*a(n-1)-a(n-2)-1` -/
def P6976673877998069316.Spec : Prop :=
  ∀ n, P6976673877998069316.a n = A055588 n

theorem P6976673877998069316.correct : P6976673877998069316.Spec := by
  intro n
  simp only [A055588]

end A055588

/-! ## A055588.P3474361765989562330

`∑[ogf((1-2x)/(1-3x+x^2))]`
-/

namespace A055588.P3474361765989562330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -3, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055588.P3474361765989562330

namespace A055588

/-- `∑[ogf((1-2x)/(1-3x+x^2))]` -/
def P3474361765989562330.Spec : Prop :=
  ∀ n, P3474361765989562330.a n = A055588 n

end A055588

/-! ## A055588.P1952178764412585940

`∑[floor(ϕ²*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A055588.P1952178764412585940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055588.P1952178764412585940

namespace A055588

/-- `∑[floor(ϕ²*a(n-1))]` -/
def P1952178764412585940.Spec : Prop :=
  ∀ n, P1952178764412585940.a n = A055588 n

end A055588

/-! ## A055588.P7868199170309020651

`floor(ϕ²*a(n-1))-1` with `a(0)=1, a(1)=2`
-/

namespace A055588.P7868199170309020651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋ - 1

end

end A055588.P7868199170309020651

namespace A055588

/-- `floor(ϕ²*a(n-1))-1` -/
def P7868199170309020651.Spec : Prop :=
  ∀ n, P7868199170309020651.a n = A055588 n

end A055588

/-! ## A055588.P3127012781681147388

`∑[floor(ϕ*ϕ*a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A055588.P3127012781681147388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  ⌊Real.goldenRatio * (Real.goldenRatio * (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055588.P3127012781681147388

namespace A055588

/-- `∑[floor(ϕ*ϕ*a(n-1))]` -/
def P3127012781681147388.Spec : Prop :=
  ∀ n, P3127012781681147388.a n = A055588 n

end A055588

/-! ## A055588.P17667888283418745560

`ceil((ϕ+1)*a(n-1))-2` with `a(0)=1, a(1)=2`
-/

namespace A055588.P17667888283418745560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈(Real.goldenRatio + 1) * (a (n - 1) : ℝ)⌉ - 2

end

end A055588.P17667888283418745560

namespace A055588

/-- `ceil((ϕ+1)*a(n-1))-2` -/
def P17667888283418745560.Spec : Prop :=
  ∀ n, P17667888283418745560.a n = A055588 n

end A055588

/-! ## A055588.P9157515795864969376

`∑[3*a(n-1)-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A055588.P9157515795864969376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  3 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055588.P9157515795864969376

namespace A055588

/-- `∑[3*a(n-1)-a(n-2)]` -/
def P9157515795864969376.Spec : Prop :=
  ∀ n, P9157515795864969376.a n = A055588 n

end A055588

/-! ## A055588.P2160076662365231079

`record[a(n-2)+1-a(n-1)]` with `a(0)=1, a(1)=0`
-/

namespace A055588.P2160076662365231079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) + (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055588.P2160076662365231079

namespace A055588

/-- `record[a(n-2)+1-a(n-1)]` -/
def P2160076662365231079.Spec : Prop :=
  ∀ n, P2160076662365231079.a n = A055588 n

end A055588

/-! ## A055588.P7942918733176739558

`record[1-(a(n-1)-a(n-2))]` with `a(0)=1, a(1)=0`
-/

namespace A055588.P7942918733176739558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  1 - (f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055588.P7942918733176739558

namespace A055588

/-- `record[1-(a(n-1)-a(n-2))]` -/
def P7942918733176739558.Spec : Prop :=
  ∀ n, P7942918733176739558.a n = A055588 n

end A055588

/-! ## A055588.P11802180410113149214

`∑[a(n-1)+a(n-1)+a(n-1)-a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A055588.P11802180410113149214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (f1 (n - 1) - f1 (n - 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055588.P11802180410113149214

namespace A055588

/-- `∑[a(n-1)+a(n-1)+a(n-1)-a(n-2)]` -/
def P11802180410113149214.Spec : Prop :=
  ∀ n, P11802180410113149214.a n = A055588 n

end A055588

/-! ## A055588.P14129763741364975648

`∑[a(n-1)-(a(n-2)-a(n-1)-a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A055588.P14129763741364975648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - (f1 (n - 2) - f1 (n - 1) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055588.P14129763741364975648

namespace A055588

/-- `∑[a(n-1)-(a(n-2)-a(n-1)-a(n-1))]` -/
def P14129763741364975648.Spec : Prop :=
  ∀ n, P14129763741364975648.a n = A055588 n

end A055588

/-! ## A055588.P13876943050840009530

`a(n-1)+a(n-1)+a(n-1)-(a(n-2)+1)` with `a(0)=1, a(1)=2`
-/

namespace A055588.P13876943050840009530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - (a (n - 2) + 1)))

end

end A055588.P13876943050840009530

namespace A055588

/-- `a(n-1)+a(n-1)+a(n-1)-(a(n-2)+1)` -/
def P13876943050840009530.Spec : Prop :=
  ∀ n, P13876943050840009530.a n = A055588 n

theorem P13876943050840009530.correct : P13876943050840009530.Spec := by
  intro n
  simp only [A055588, Nat.add_sub_cancel, A055588.P13876943050840009530.a, A055588.P6976673877998069316.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A055588

/-! ## A055588.P9863946983360084208

`a(n-1)-(1-(a(n-1)-(a(n-2)-a(n-1))))` with `a(0)=1, a(1)=2`
-/

namespace A055588.P9863946983360084208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - (1 - (a (n - 1) - (a (n - 2) - a (n - 1))))

end

end A055588.P9863946983360084208

namespace A055588

/-- `a(n-1)-(1-(a(n-1)-(a(n-2)-a(n-1))))` -/
def P9863946983360084208.Spec : Prop :=
  ∀ n, P9863946983360084208.a n = A055588 n

theorem P9863946983360084208.correct : P9863946983360084208.Spec := by
  intro n
  simp only [A055588, Nat.add_sub_cancel, A055588.P9863946983360084208.a, A055588.P6976673877998069316.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A055588

/-! ## A055588.P8720067191020829778

`∑[A001519(n)]`
-/

namespace A055588.P8720067191020829778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055588.P8720067191020829778

namespace A055588

/-- `∑[A001519(n)]` -/
def P8720067191020829778.Spec : Prop :=
  ∀ n, P8720067191020829778.a n = A055588 n

end A055588

/-! ## A055588.P11045022932236474184

`record[A355020(n)]`
-/

namespace A055588.P11045022932236474184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A055588.P11045022932236474184

namespace A055588

/-- `record[A355020(n)]` -/
def P11045022932236474184.Spec : Prop :=
  ∀ n, P11045022932236474184.a n = A055588 n

end A055588

/-!
# A055589: Convolution of A049612 with A011782.

The programs for A055589, the canonical program `A055589.P4119689511042570362` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055589 has offset 0).

The definition of A055589 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055589.P4119689511042570362

`ogf((x-4x^2+6x^3-4x^4+x^5)/(1-10x+40x^2-80x^3+80x^4-32x^5))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055589

/-- `ogf((x-4x^2+6x^3-4x^4+x^5)/(1-10x+40x^2-80x^3+80x^4-32x^5))` -/
def P4119689511042570362.Spec : Prop :=
  ∀ n, P4119689511042570362.a n = A055589 n

theorem P4119689511042570362.correct : P4119689511042570362.Spec := by
  intro n
  simp only [A055589]

end A055589

/-! ## A055589.P10202033342249056807

`A169792(n)-A062109(n)`
-/

namespace A055589.P10202033342249056807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169792 n - A062109 n

end

end A055589.P10202033342249056807

namespace A055589

/-- `A169792(n)-A062109(n)` -/
def P10202033342249056807.Spec : Prop :=
  ∀ n, P10202033342249056807.a n = A055589 n

end A055589

/-! ## A055589.P4863561826385191887

`∑[A062110(A000124(n+4)+4)]`
-/

namespace A055589.P4863561826385191887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A000124 (n + 4) + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055589.P4863561826385191887

namespace A055589

/-- `∑[A062110(A000124(n+4)+4)]` -/
def P4863561826385191887.Spec : Prop :=
  ∀ n, P4863561826385191887.a n = A055589 n

end A055589

/-! ## A055589.P512243658051041423

`∑[A062110(A000217(n+4)+5)]`
-/

namespace A055589.P512243658051041423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062110 (A000217 (n + 4) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055589.P512243658051041423

namespace A055589

/-- `∑[A062110(A000217(n+4)+5)]` -/
def P512243658051041423.Spec : Prop :=
  ∀ n, P512243658051041423.a n = A055589 n

end A055589

/-! ## A055589.P3914123579592385385

`A106195(A167499(n+2)-1)%A106184(n)`
-/

namespace A055589.P3914123579592385385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106195 (A167499 (n + 2) - 1).toNat) (A106184 n)

end

end A055589.P3914123579592385385

namespace A055589

/-- `A106195(A167499(n+2)-1)%A106184(n)` -/
def P3914123579592385385.Spec : Prop :=
  ∀ n, P3914123579592385385.a n = A055589 n

end A055589

/-! ## A055589.P7484345410704737404

`A049600(∑[n+5]+5)`
-/

namespace A055589.P7484345410704737404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049600 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A055589.P7484345410704737404

namespace A055589

/-- `A049600(∑[n+5]+5)` -/
def P7484345410704737404.Spec : Prop :=
  ∀ n, P7484345410704737404.a n = A055589 n

end A055589

/-! ## A055589.P1234058990440311450

`A049600(A052905(n+2))%A270239(n)`
-/

namespace A055589.P1234058990440311450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049600 (A052905 (n + 2)).toNat) (A270239 n)

end

end A055589.P1234058990440311450

namespace A055589

/-- `A049600(A052905(n+2))%A270239(n)` -/
def P1234058990440311450.Spec : Prop :=
  ∀ n, P1234058990440311450.a n = A055589 n

end A055589

/-!
# A055590: 

The programs for A055590, there is no canonical definition to state claims against.
-/

/-! ## A055590.P17598947197646234711

`3^(a(n-1)+C(n, 3))` with `a(0)=0`
-/

namespace A055590.P17598947197646234711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 ^ (a (n - 1) + Nat.choose n 3)

end

end A055590.P17598947197646234711

/-!
# A055591: 

The programs for A055591, there is no canonical definition to state claims against.
-/

/-! ## A055591.P7382703114240061567

`a(n-1)+3^a(n-1)` with `a(0)=0`
-/

namespace A055591.P7382703114240061567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 3 ^ a (n - 1)

end

end A055591.P7382703114240061567

/-!
# A055596: Expansion of e.g.f. (2 - x - 2*exp(-x))/(1-x).

The programs for A055596, the canonical program `A055596.P13594094131665610709` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055596 has offset 1).

The definition of A055596 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A055596.P13594094131665610709

`n*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A055596

/-- `n*(a(n-1)+a(n-2))` -/
def P13594094131665610709.Spec : Prop :=
  ∀ n, (P13594094131665610709.a n : ℤ) = A055596 (n + 1)

theorem P13594094131665610709.correct : P13594094131665610709.Spec := by
  intro n
  simp only [A055596, Nat.add_sub_cancel]

end A055596

/-! ## A055596.P7996639635532665159

`(n+1)!-2*A000166(n+1)`
-/

namespace A055596.P7996639635532665159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - 2 * A000166 (n + 1)

end

end A055596.P7996639635532665159

namespace A055596

/-- `(n+1)!-2*A000166(n+1)` -/
def P7996639635532665159.Spec : Prop :=
  ∀ n, P7996639635532665159.a n = A055596 (n + 1)

end A055596

/-! ## A055596.P13748913348429256077

`2*A002467(n+1)-(n+1)!`
-/

namespace A055596.P13748913348429256077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002467 (n + 1) - (Nat.factorial (n + 1) : ℤ)

end

end A055596.P13748913348429256077

namespace A055596

/-- `2*A002467(n+1)-(n+1)!` -/
def P13748913348429256077.Spec : Prop :=
  ∀ n, P13748913348429256077.a n = A055596 (n + 1)

end A055596

/-! ## A055596.P4745608400797897990

`(a(n-1)+a(n-2))*n` with `a(0)=1, a(1)=0`
-/

namespace A055596.P4745608400797897990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  (a (n - 1) + a (n - 2)) * n

end

end A055596.P4745608400797897990

namespace A055596

/-- `(a(n-1)+a(n-2))*n` -/
def P4745608400797897990.Spec : Prop :=
  ∀ n, (P4745608400797897990.a n : ℤ) = A055596 (n + 1)

end A055596

/-! ## A055596.P2968479653635467657

`n*(a(n-1)-ceil(-a(n-2)))` with `a(0)=1, a(1)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A055596.P2968479653635467657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) * (a (n - 1) - (-a (n - 2)))

end

end A055596.P2968479653635467657

namespace A055596

/-- `n*(a(n-1)-ceil(-a(n-2)))` -/
def P2968479653635467657.Spec : Prop :=
  ∀ n, P2968479653635467657.a n = A055596 (n + 1)

end A055596

/-! ## A055596.P15297790986363710912

`n*(a(n-1)-round(-a(n-2)))` with `a(0)=1, a(1)=0`

`round` is left out, it is the identity on integers.
-/

namespace A055596.P15297790986363710912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) * (a (n - 1) - (-a (n - 2)))

end

end A055596.P15297790986363710912

namespace A055596

/-- `n*(a(n-1)-round(-a(n-2)))` -/
def P15297790986363710912.Spec : Prop :=
  ∀ n, P15297790986363710912.a n = A055596 (n + 1)

end A055596

/-! ## A055596.P1939726076939583869

`(a(n-1)+a(n-2))/n^(-1)` with `a(0)=1, a(1)=0`
-/

namespace A055596.P1939726076939583869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (a (n - 1) + a (n - 2)) / (n : ℚ) ^ (-1 : ℤ)

end

end A055596.P1939726076939583869

namespace A055596

/-- `(a(n-1)+a(n-2))/n^(-1)` -/
def P1939726076939583869.Spec : Prop :=
  ∀ n, P1939726076939583869.a n = (A055596 (n + 1) : ℚ)

end A055596

/-! ## A055596.P3213685139116058897

`n*(a(n-1)-(char[1]-a(n-2)))` with `a(0)=1, a(1)=0`
-/

namespace A055596.P3213685139116058897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) * (a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2)))

end

end A055596.P3213685139116058897

namespace A055596

/-- `n*(a(n-1)-(char[1]-a(n-2)))` -/
def P3213685139116058897.Spec : Prop :=
  ∀ n, P3213685139116058897.a n = A055596 (n + 1)

end A055596

/-! ## A055596.P7824603178183167342

`n-n*(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A055596.P7824603178183167342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) - (n : ℤ) * (1 - a (n - 1) - a (n - 2))

end

end A055596.P7824603178183167342

namespace A055596

/-- `n-n*(1-a(n-1)-a(n-2))` -/
def P7824603178183167342.Spec : Prop :=
  ∀ n, P7824603178183167342.a n = A055596 (n + 1)

end A055596

/-! ## A055596.P4098497033241773041

`A096654(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A055596.P4098497033241773041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A096654 (n - 1) - a (n - 1)

end

end A055596.P4098497033241773041

namespace A055596

/-- `A096654(n-1)-a(n-1)` -/
def P4098497033241773041.Spec : Prop :=
  ∀ n, P4098497033241773041.a n = A055596 (n + 1)

end A055596

/-!
# A055597: Exponent of the highest power of 2 dividing phi(n!).

The programs for A055597, the canonical program `A055597.P13990031299968115871` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A055597 has offset 1).

The definition of A055597 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A055597.P7817260920916718962

`∑[val(A014684(n+1), 2)]`
-/

namespace A055597.P7817260920916718962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014684 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055597.P7817260920916718962

namespace A055597

/-- `∑[val(A014684(n+1), 2)]` -/
def P7817260920916718962.Spec : Prop :=
  ∀ n, (P7817260920916718962.a n : ℤ) = A055597 (n + 1)

end A055597

/-! ## A055597.P7235870416682015723

`∑[val(A005171(n+1)+n, 2)]`
-/

namespace A055597.P7235870416682015723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A005171 (n + 1) + (n : ℤ)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055597.P7235870416682015723

namespace A055597

/-- `∑[val(A005171(n+1)+n, 2)]` -/
def P7235870416682015723.Spec : Prop :=
  ∀ n, (P7235870416682015723.a n : ℤ) = A055597 (n + 1)

end A055597

/-! ## A055597.P13990031299968115871

`∑[val(1-A010051(n+1)+n, 2)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A055597

/-- `∑[val(1-A010051(n+1)+n, 2)]` -/
def P13990031299968115871.Spec : Prop :=
  ∀ n, (P13990031299968115871.a n : ℤ) = A055597 (n + 1)

theorem P13990031299968115871.correct : P13990031299968115871.Spec := by
  intro n
  simp only [A055597, Nat.add_sub_cancel]

end A055597

/-! ## A055597.P12518530485491822805

`∑[val(char[A018252(n+1)-1]+n, 2)]`
-/

namespace A055597.P12518530485491822805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ((if ∃ j, f2 j = (n : ℤ) then 1 else 0) + n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055597.P12518530485491822805

namespace A055597

/-- `∑[val(char[A018252(n+1)-1]+n, 2)]` -/
def P12518530485491822805.Spec : Prop :=
  ∀ n, (P12518530485491822805.a n : ℤ) = A055597 (n + 1)

end A055597

/-! ## A055597.P8147485730229282418

`∑[A007814(A014684(n+1))]`
-/

namespace A055597.P8147485730229282418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A014684 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055597.P8147485730229282418

namespace A055597

/-- `∑[A007814(A014684(n+1))]` -/
def P8147485730229282418.Spec : Prop :=
  ∀ n, P8147485730229282418.a n = A055597 (n + 1)

end A055597

/-! ## A055597.P15350777532155475258

`∑[A007814(A005171(n+1)+n)]`
-/

namespace A055597.P15350777532155475258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A005171 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055597.P15350777532155475258

namespace A055597

/-- `∑[A007814(A005171(n+1)+n)]` -/
def P15350777532155475258.Spec : Prop :=
  ∀ n, P15350777532155475258.a n = A055597 (n + 1)

end A055597

/-! ## A055597.P4026972265934517240

`A055656(n+1)+A011371(n+1)`
-/

namespace A055597.P4026972265934517240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055656 (n + 1) + A011371 (n + 1)

end

end A055597.P4026972265934517240

namespace A055597

/-- `A055656(n+1)+A011371(n+1)` -/
def P4026972265934517240.Spec : Prop :=
  ∀ n, P4026972265934517240.a n = A055597 (n + 1)

theorem P4026972265934517240.correct : P4026972265934517240.Spec := by
  intro n
  simp only [A055597, Nat.add_sub_cancel, A055597.P4026972265934517240.a, A055597.P13990031299968115871.f1, A055597.P13990031299968115871.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A011371, A011371.P12398255777927387864.a, A055656, A055656.P11271106632421425074.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A055597

/-! ## A055597.P3972097459226659628

`∑[A007814(n+1-A010051(n+1))]`
-/

namespace A055597.P3972097459226659628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 ((n + 1 : ℤ) - A010051 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055597.P3972097459226659628

namespace A055597

/-- `∑[A007814(n+1-A010051(n+1))]` -/
def P3972097459226659628.Spec : Prop :=
  ∀ n, P3972097459226659628.a n = A055597 (n + 1)

end A055597

/-! ## A055597.P18400556253239349176

`∑[A050605(Δ[n²-A095117(n)])]`
-/

namespace A055597.P18400556253239349176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A095117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055597.P18400556253239349176

namespace A055597

/-- `∑[A050605(Δ[n²-A095117(n)])]` -/
def P18400556253239349176.Spec : Prop :=
  ∀ n, P18400556253239349176.a n = A055597 (n + 1)

end A055597

/-! ## A055597.P6734204274783672905

`∑[A235127(A014684(n+1)²)]`
-/

namespace A055597.P6734204274783672905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A014684 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055597.P6734204274783672905

namespace A055597

/-- `∑[A235127(A014684(n+1)²)]` -/
def P6734204274783672905.Spec : Prop :=
  ∀ n, P6734204274783672905.a n = A055597 (n + 1)

end A055597

/-! ## A055597.P1370031347799001550

`∑[A244415(A014684(n+1)²)]`
-/

namespace A055597.P1370031347799001550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (A014684 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A055597.P1370031347799001550

namespace A055597

/-- `∑[A244415(A014684(n+1)²)]` -/
def P1370031347799001550.Spec : Prop :=
  ∀ n, P1370031347799001550.a n = A055597 (n + 1)

end A055597

/-!
# A055598: Even numbers not the sum of two terms from A034757.

The programs for A055598, there is no canonical definition to state claims against.
-/

/-! ## A055598.P6500729071303876806

`A005843(A337657(n+1))+A000034(A047471((n+12)²))`
-/

namespace A055598.P6500729071303876806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A337657 (n + 1)).toNat + A000034 (A047471 ((n + 12) ^ 2)).toNat

end

end A055598.P6500729071303876806

/-! ## A055598.P14507082224594135805

`A005843(A337657(n+1))+2%A186609(A000124(n))`
-/

namespace A055598.P14507082224594135805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A337657 (n + 1)).toNat + Int.tmod 2 (A186609 (A000124 n).toNat)

end

end A055598.P14507082224594135805

/-! ## A055598.P8434472033391522863

`A096604(A337657(n+1)^A180466(n+1))`
-/

namespace A055598.P8434472033391522863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096604 (SequenceMachineLib.roundAway ((A337657 (n + 1) : ℚ) ^ (A180466 (n + 1) : ℤ))).toNat

end

end A055598.P8434472033391522863

/-!
# A055599: Triangle T(n,k) read by rows, giving the number of n X n binary matrices with no zero rows or columns and with k=0..n^2 ones.

The programs for A055599, there is no canonical definition to state claims against.
-/

/-! ## A055599.P15876464900639349842

`A365950(n+1)%record[A359862(n+1)]`
-/

namespace A055599.P15876464900639349842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365950 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A055599.P15876464900639349842

/-! ## A055599.P10901780395807581961

`A365950(n+1)+A000007(A260443(n))`
-/

namespace A055599.P10901780395807581961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365950 (n + 1) + A000007 (A260443 n).toNat

end

end A055599.P10901780395807581961

/-! ## A055599.P8404550460641999829

`A260043(n+1)/A059895(A260443(n))`
-/

namespace A055599.P8404550460641999829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260043 (n + 1) : ℚ) / (A059895 (A260443 n).toNat : ℚ)

end

end A055599.P8404550460641999829

/-! ## A055599.P11777984741611171435

`A260043(n+1)/A253641(A118658(n))`
-/

namespace A055599.P11777984741611171435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260043 (n + 1) : ℚ) / (A253641 (A118658 n).toNat : ℚ)

end

end A055599.P11777984741611171435

/-! ## A055599.P3526815656541830743

`A365950(n+1)%A005276(A365962(n))`
-/

namespace A055599.P3526815656541830743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365950 (n + 1)) (A005276 (A365962 n).toNat)

end

end A055599.P3526815656541830743

