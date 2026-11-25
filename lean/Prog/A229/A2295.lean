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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
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
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A229500: Smaller of Fermi-Dirac twin primes (A229064) which are not the smaller of twin primes (A001359).

The programs for A229500, there is no canonical definition to state claims against.
-/

/-! ## A229500.P15669165768408786024

`∩[A050271(n+1), A229064(n+1)]`
-/

namespace A229500.P15669165768408786024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229500.P15669165768408786024

/-! ## A229500.P12330667655784607061

`∩[A229064(n+1), A379157(n+1)]`
-/

namespace A229500.P12330667655784607061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A229500.P12330667655784607061

/-! ## A229500.P12900834945097193204

`A343495(A120186(n+1)+A032559(n+1))`
-/

namespace A229500.P12900834945097193204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343495 (A120186 (n + 1) + A032559 (n + 1)).toNat

end

end A229500.P12900834945097193204

/-! ## A229500.P17038799566134233354

`A343495(A032555(n+2))`
-/

namespace A229500.P17038799566134233354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343495 (A032555 (n + 2)).toNat

end

end A229500.P17038799566134233354

/-!
# A229502: Expansion of q * f(-q) * f(-q^4) * f(-q^16) * f(q, -q^3) in powers of q where f() is a Ramanujan theta function.

The programs for A229502, there is no canonical definition to state claims against.
-/

/-! ## A229502.P17107742050643279984

`-A227618(2*(1+n))`
-/

namespace A229502.P17107742050643279984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A227618 (2 * (1 + n))

end

end A229502.P17107742050643279984

/-! ## A229502.P6706105974188646150

`0-A227618(2*(n+1))`
-/

namespace A229502.P6706105974188646150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  0 - A227618 (2 * (n + 1))

end

end A229502.P6706105974188646150

/-! ## A229502.P13718737122044955634

`-(A227618(Δ[A002378(n)])%A157485(n+1))`
-/

namespace A229502.P13718737122044955634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (A227618 (f1 (n + 1) - f1 n).toNat) (A157485 (n + 1))

end

end A229502.P13718737122044955634

/-!
# A229503: Number of defective 3-colorings of an n X n 0..2 array connected diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229503, there is no canonical definition to state claims against.
-/

/-! ## A229503.P1786878305663693723

`A229510(∑[4*n]+1)`
-/

namespace A229503.P1786878305663693723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229503.P1786878305663693723

/-! ## A229503.P4156682967140369298

`record[A203994(n+1)*A229510(n+1)]`
-/

namespace A229503.P4156682967140369298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A229510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229503.P4156682967140369298

/-!
# A229504: Number of defective 3-colorings of an n X 2 0..2 array connected diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229504, the canonical program `A229504.P488237861805680013` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229504 has offset 1).

The definition of A229504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229504.P488237861805680013

`3/2*n*4^n`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A229504

/-- `3/2*n*4^n` -/
def P488237861805680013.Spec : Prop :=
  ∀ n, P488237861805680013.a n = (A229504 (n + 1) : ℚ)

end A229504

/-! ## A229504.P454331169577776956

`ogf(6x/(1-8x+16x^2))`
-/

namespace A229504.P454331169577776956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -8, 16] n

end

end A229504.P454331169577776956

namespace A229504

/-- `ogf(6x/(1-8x+16x^2))` -/
def P454331169577776956.Spec : Prop :=
  ∀ n, P454331169577776956.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P2747489987517325719

`record[Δ[(-2)^n]]*n`
-/

namespace A229504.P2747489987517325719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (n : ℤ)

end

end A229504.P2747489987517325719

namespace A229504

/-- `record[Δ[(-2)^n]]*n` -/
def P2747489987517325719.Spec : Prop :=
  ∀ n, P2747489987517325719.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P9819822164230859231

`n*Δ[4*a(n-1)]` with `a(0)=0, a(1)=2`
-/

namespace A229504.P9819822164230859231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A229504.P9819822164230859231

namespace A229504

/-- `n*Δ[4*a(n-1)]` -/
def P9819822164230859231.Spec : Prop :=
  ∀ n, P9819822164230859231.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P15082431857591152164

`record[n*3*(-2)^(n-2)]`
-/

namespace A229504.P15082431857591152164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (3 * (-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229504.P15082431857591152164

namespace A229504

/-- `record[n*3*(-2)^(n-2)]` -/
def P15082431857591152164.Spec : Prop :=
  ∀ n, P15082431857591152164.a n = (A229504 (n + 1) : ℚ)

end A229504

/-! ## A229504.P1649320546418466422

`lcm(2, 2*n*Δ[4^(n-1)])`
-/

namespace A229504.P1649320546418466422
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (SequenceMachineLib.roundAway ((2 * n : ℚ) * (f1 (n + 1) - f1 n)))

end

end A229504.P1649320546418466422

namespace A229504

/-- `lcm(2, 2*n*Δ[4^(n-1)])` -/
def P1649320546418466422.Spec : Prop :=
  ∀ n, (P1649320546418466422.a n : ℤ) = A229504 (n + 1)

end A229504

/-! ## A229504.P2709052465986615085

`8*(a(n-1)-2*a(n-2))` with `a(0)=0, a(1)=6`
-/

namespace A229504.P2709052465986615085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 6] fun n a =>
  8 * (a (n - 1) - 2 * a (n - 2))

end

end A229504.P2709052465986615085

namespace A229504

/-- `8*(a(n-1)-2*a(n-2))` -/
def P2709052465986615085.Spec : Prop :=
  ∀ n, P2709052465986615085.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P15736221969464799902

`A018215(n)+A002699(n)`
-/

namespace A229504.P15736221969464799902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018215 n + A002699 n

end

end A229504.P15736221969464799902

namespace A229504

/-- `A018215(n)+A002699(n)` -/
def P15736221969464799902.Spec : Prop :=
  ∀ n, P15736221969464799902.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P13206312648566850351

`A057711(2*n)+A001787(2*n)`
-/

namespace A229504.P13206312648566850351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 (2 * n) + A001787 (2 * n)

end

end A229504.P13206312648566850351

namespace A229504

/-- `A057711(2*n)+A001787(2*n)` -/
def P13206312648566850351.Spec : Prop :=
  ∀ n, P13206312648566850351.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P8356951561247926211

`A133086(2*n)-A084221(2*n)`
-/

namespace A229504.P8356951561247926211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133086 (2 * n) - A084221 (2 * n)

end

end A229504.P8356951561247926211

namespace A229504

/-- `A133086(2*n)-A084221(2*n)` -/
def P8356951561247926211.Spec : Prop :=
  ∀ n, P8356951561247926211.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P7529259105389596016

`A133086(2*n)-A092809(2*n)`
-/

namespace A229504.P7529259105389596016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133086 (2 * n) - A092809 (2 * n)

end

end A229504.P7529259105389596016

namespace A229504

/-- `A133086(2*n)-A092809(2*n)` -/
def P7529259105389596016.Spec : Prop :=
  ∀ n, P7529259105389596016.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P6637101971752491813

`A133086(2*n)-A123344(n+1)²`
-/

namespace A229504.P6637101971752491813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133086 (2 * n) - A123344 (n + 1) ^ 2

end

end A229504.P6637101971752491813

namespace A229504

/-- `A133086(2*n)-A123344(n+1)²` -/
def P6637101971752491813.Spec : Prop :=
  ∀ n, P6637101971752491813.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P18154340882364974985

`A274497(2*n+1)+A274497(2*n)`
-/

namespace A229504.P18154340882364974985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274497 (2 * n + 1) + A274497 (2 * n)

end

end A229504.P18154340882364974985

namespace A229504

/-- `A274497(2*n+1)+A274497(2*n)` -/
def P18154340882364974985.Spec : Prop :=
  ∀ n, P18154340882364974985.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P16982768732766421157

`A133086(2*n)-A123344(2*n+1)`
-/

namespace A229504.P16982768732766421157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133086 (2 * n) - A123344 (2 * n + 1)

end

end A229504.P16982768732766421157

namespace A229504

/-- `A133086(2*n)-A123344(2*n+1)` -/
def P16982768732766421157.Spec : Prop :=
  ∀ n, P16982768732766421157.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P10479833455487000677

`A036289(n)+A036289(n)*A083329(n)`
-/

namespace A229504.P10479833455487000677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 n + A036289 n * A083329 n

end

end A229504.P10479833455487000677

namespace A229504

/-- `A036289(n)+A036289(n)*A083329(n)` -/
def P10479833455487000677.Spec : Prop :=
  ∀ n, P10479833455487000677.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P10138010576834543495

`A034008(n+1)*A048477(n)-A034008(n+1)`
-/

namespace A229504.P10138010576834543495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 1) * A048477 n - A034008 (n + 1)

end

end A229504.P10138010576834543495

namespace A229504

/-- `A034008(n+1)*A048477(n)-A034008(n+1)` -/
def P10138010576834543495.Spec : Prop :=
  ∀ n, P10138010576834543495.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P5334355715162610782

`A011782(2*n)*A016777(n)-A011782(2*n)`
-/

namespace A229504.P5334355715162610782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) * A016777 n - A011782 (2 * n)

end

end A229504.P5334355715162610782

namespace A229504

/-- `A011782(2*n)*A016777(n)-A011782(2*n)` -/
def P5334355715162610782.Spec : Prop :=
  ∀ n, P5334355715162610782.a n = A229504 (n + 1)

end A229504

/-! ## A229504.P2788730527008000160

`3*A018215(n)/2`
-/

namespace A229504.P2788730527008000160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A018215 n : ℚ) / 2

end

end A229504.P2788730527008000160

namespace A229504

/-- `3*A018215(n)/2` -/
def P2788730527008000160.Spec : Prop :=
  ∀ n, P2788730527008000160.a n = (A229504 (n + 1) : ℚ)

end A229504

/-! ## A229504.P11189843011115420396

`n*A002023(n)/4`
-/

namespace A229504.P11189843011115420396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A002023 n : ℚ) / 4

end

end A229504.P11189843011115420396

namespace A229504

/-- `n*A002023(n)/4` -/
def P11189843011115420396.Spec : Prop :=
  ∀ n, P11189843011115420396.a n = (A229504 (n + 1) : ℚ)

end A229504

/-! ## A229504.P56798590182925525

`A036289(2*n)-A057711(2*n)`
-/

namespace A229504.P56798590182925525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036289 (2 * n) - A057711 (2 * n)

end

end A229504.P56798590182925525

namespace A229504

/-- `A036289(2*n)-A057711(2*n)` -/
def P56798590182925525.Spec : Prop :=
  ∀ n, P56798590182925525.a n = A229504 (n + 1)

end A229504

/-!
# A229505: Number of defective 3-colorings of an n X 3 0..2 array connected diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229505, the canonical program `A229505.P17308966243932917914` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229505 has offset 1).

The definition of A229505 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 125 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229505.P14719017720066416502

`ogf((48x-96x^2)/(1-12x+36x^2))`
-/

namespace A229505.P14719017720066416502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 48, -96] [1, -12, 36] n

end

end A229505.P14719017720066416502

namespace A229505

/-- `ogf((48x-96x^2)/(1-12x+36x^2))` -/
def P14719017720066416502.Spec : Prop :=
  ∀ n, P14719017720066416502.a n = A229505 (n + 1)

end A229505

/-! ## A229505.P17308966243932917914

`12*a(n-1)-36*a(n-2)` with `a(0)=0, a(1)=48, a(2)=480`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A229505

/-- `12*a(n-1)-36*a(n-2)` -/
def P17308966243932917914.Spec : Prop :=
  ∀ n, P17308966243932917914.a n = A229505 (n + 1)

theorem P17308966243932917914.correct : P17308966243932917914.Spec := by
  intro n
  simp only [A229505, Nat.add_sub_cancel]

end A229505

/-! ## A229505.P2283973789387508804

`2^(n+3)*A229277(n)`
-/

namespace A229505.P2283973789387508804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) * A229277 n

end

end A229505.P2283973789387508804

namespace A229505

/-- `2^(n+3)*A229277(n)` -/
def P2283973789387508804.Spec : Prop :=
  ∀ n, P2283973789387508804.a n = A229505 (n + 1)

end A229505

/-! ## A229505.P17642124384888720224

`lcm(A171494(n), A229277(n))`
-/

namespace A229505.P17642124384888720224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A171494 n) (A229277 n)

end

end A229505.P17642124384888720224

namespace A229505

/-- `lcm(A171494(n), A229277(n))` -/
def P17642124384888720224.Spec : Prop :=
  ∀ n, (P17642124384888720224.a n : ℤ) = A229505 (n + 1)

end A229505

/-! ## A229505.P14141287126829401083

`A155559(n)*A268633(n+1)`
-/

namespace A229505.P14141287126829401083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n * A268633 (n + 1)

end

end A229505.P14141287126829401083

namespace A229505

/-- `A155559(n)*A268633(n+1)` -/
def P14141287126829401083.Spec : Prop :=
  ∀ n, P14141287126829401083.a n = A229505 (n + 1)

end A229505

/-!
# A229506: Number of defective 3-colorings of an n X 4 0..2 array connected diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229506, the canonical program `A229506.P14398497466748086925` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229506 has offset 1).

The definition of A229506 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229506.P7750715818433418496

`6*2*(round((n+4)*16*3^(n-3))-Δ[3^n])*A083583(n)`
-/

namespace A229506.P7750715818433418496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (2 * (SequenceMachineLib.roundAway ((n + 4 : ℚ) * (16 * (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ))) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))) * A083583 n

end

end A229506.P7750715818433418496

namespace A229506

/-- `6*2*(round((n+4)*16*3^(n-3))-Δ[3^n])*A083583(n)` -/
def P7750715818433418496.Spec : Prop :=
  ∀ n, P7750715818433418496.a n = A229506 (n + 1)

end A229506

/-! ## A229506.P3090115962077390414

`2*(round((n+4)*16*3^(n-3))-Δ[3^n])*Δ[A118264(n+3)]`
-/

namespace A229506.P3090115962077390414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.roundAway ((n + 4 : ℚ) * (16 * (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ))) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * (f2 (n + 1) - f2 n)

end

end A229506.P3090115962077390414

namespace A229506

/-- `2*(round((n+4)*16*3^(n-3))-Δ[3^n])*Δ[A118264(n+3)]` -/
def P3090115962077390414.Spec : Prop :=
  ∀ n, P3090115962077390414.a n = A229506 (n + 1)

end A229506

/-! ## A229506.P17191964063439684770

`6*2*(round((n+4)*16*3^(n-3))-Δ[3^n])*Δ[A003946(n)]`
-/

namespace A229506.P17191964063439684770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (2 * (SequenceMachineLib.roundAway ((n + 4 : ℚ) * (16 * (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ))) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))) * (f2 (n + 1) - f2 n)

end

end A229506.P17191964063439684770

namespace A229506

/-- `6*2*(round((n+4)*16*3^(n-3))-Δ[3^n])*Δ[A003946(n)]` -/
def P17191964063439684770.Spec : Prop :=
  ∀ n, P17191964063439684770.a n = A229506 (n + 1)

end A229506

/-! ## A229506.P7175468385402468730

`A083583(n)*A268905(n+1)`
-/

namespace A229506.P7175468385402468730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083583 n * A268905 (n + 1)

end

end A229506.P7175468385402468730

namespace A229506

/-- `A083583(n)*A268905(n+1)` -/
def P7175468385402468730.Spec : Prop :=
  ∀ n, P7175468385402468730.a n = A229506 (n + 1)

end A229506

/-! ## A229506.P7182224871060268124

`Δ[A003946(n)]*A268905(n+1)`
-/

namespace A229506.P7182224871060268124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A268905 (n + 1)

end

end A229506.P7182224871060268124

namespace A229506

/-- `Δ[A003946(n)]*A268905(n+1)` -/
def P7182224871060268124.Spec : Prop :=
  ∀ n, P7182224871060268124.a n = A229506 (n + 1)

end A229506

/-! ## A229506.P2514887881626443343

`4*A268905(n+1)*A025192(n)`
-/

namespace A229506.P2514887881626443343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A268905 (n + 1) * A025192 n

end

end A229506.P2514887881626443343

namespace A229506

/-- `4*A268905(n+1)*A025192(n)` -/
def P2514887881626443343.Spec : Prop :=
  ∀ n, P2514887881626443343.a n = A229506 (n + 1)

end A229506

/-! ## A229506.P3515610004508251273

`Δ[A118264(n+3)]*A229587(n+1)`
-/

namespace A229506.P3515610004508251273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A229587 (n + 1)

end

end A229506.P3515610004508251273

namespace A229506

/-- `Δ[A118264(n+3)]*A229587(n+1)` -/
def P3515610004508251273.Spec : Prop :=
  ∀ n, P3515610004508251273.a n = A229506 (n + 1)

end A229506

/-! ## A229506.P14398497466748086925

`(A008776(n+2)-A008776(n))*A229587(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A229506

/-- `(A008776(n+2)-A008776(n))*A229587(n+1)` -/
def P14398497466748086925.Spec : Prop :=
  ∀ n, P14398497466748086925.a n = A229506 (n + 1)

theorem P14398497466748086925.correct : P14398497466748086925.Spec := by
  intro n
  simp only [A229506, Nat.add_sub_cancel]

end A229506

/-!
# A229507: Number of defective 3-colorings of an n X 5 0..2 array connected diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229507, there is no canonical definition to state claims against.
-/

/-! ## A229507.P4013060240962808818

`A229510(A374005(n+1))`
-/

namespace A229507.P4013060240962808818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (A374005 (n + 1)).toNat

end

end A229507.P4013060240962808818

/-!
# A229508: Number of defective 3-colorings of an n X 6 0..2 array connected diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229508, there is no canonical definition to state claims against.
-/

/-! ## A229508.P4172665310165043426

`A229510(A374007(n+1))`
-/

namespace A229508.P4172665310165043426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (A374007 (n + 1)).toNat

end

end A229508.P4172665310165043426

/-!
# A229509: Number of defective 3-colorings of an n X 7 0..2 array connected diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229509, there is no canonical definition to state claims against.
-/

/-! ## A229509.P16832002506241279826

`A229510(A374008(n+1))`
-/

namespace A229509.P16832002506241279826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229510 (A374008 (n + 1)).toNat

end

end A229509.P16832002506241279826

/-!
# A229510: T(n,k) = number of defective 3-colorings of an n X k 0..2 array connected diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229510, there is no canonical definition to state claims against.
-/

/-! ## A229510.P16642904417908886313

`A014473(n)*A151787(A283642(n))`
-/

namespace A229510.P16642904417908886313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n * A151787 (A283642 n).toNat

end

end A229510.P16642904417908886313

/-! ## A229510.P5613058130035090344

`A014473(n)*A245564(A081254(n+1))`
-/

namespace A229510.P5613058130035090344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n * A245564 (A081254 (n + 1)).toNat

end

end A229510.P5613058130035090344

/-! ## A229510.P13288190756456519966

`A345318(A176156(n))`
-/

namespace A229510.P13288190756456519966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345318 (A176156 n).toNat

end

end A229510.P13288190756456519966

/-! ## A229510.P7872312515685502048

`∑{d}[A137754(n+1), A324376(#)]`
-/

namespace A229510.P7872312515685502048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A324376 d

end

end A229510.P7872312515685502048

/-! ## A229510.P1646749484407134813

`A173066(A182779(n+1))`
-/

namespace A229510.P1646749484407134813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173066 (A182779 (n + 1)).toNat

end

end A229510.P1646749484407134813

/-!
# A229511: Numbers k whose arithmetic derivative (k') is a triangular number.

The programs for A229511, the canonical program `A229511.P6916547287947147891` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229511 has offset 0).

The definition of A229511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229511.P6916547287947147891

`eq[0, col(A003415(n))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A229511

/-- `eq[0, col(A003415(n))]` -/
def P6916547287947147891.Spec : Prop :=
  ∀ n, (P6916547287947147891.a n : ℤ) = A229511 n

theorem P6916547287947147891.correct : P6916547287947147891.Spec := by
  intro n
  simp only [A229511]

end A229511

/-! ## A229511.P14813394871311432458

`lt[col(A168036(n)+n), 1]`
-/

namespace A229511.P14813394871311432458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A168036 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229511.P14813394871311432458

namespace A229511

/-- `lt[col(A168036(n)+n), 1]` -/
def P14813394871311432458.Spec : Prop :=
  ∀ n, (P14813394871311432458.a n : ℤ) = A229511 n

end A229511

/-! ## A229511.P8977461310821327226

`lt[A000045(col(A003415(n))), 1]`
-/

namespace A229511.P8977461310821327226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.triCol (A003415 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A229511.P8977461310821327226

namespace A229511

/-- `lt[A000045(col(A003415(n))), 1]` -/
def P8977461310821327226.Spec : Prop :=
  ∀ n, (P8977461310821327226.a n : ℤ) = A229511 n

end A229511

/-! ## A229511.P4722726292075813020

`lt[A000217(col(A003415(n))), 1]`
-/

namespace A229511.P4722726292075813020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.triCol (A003415 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A229511.P4722726292075813020

namespace A229511

/-- `lt[A000217(col(A003415(n))), 1]` -/
def P4722726292075813020.Spec : Prop :=
  ∀ n, (P4722726292075813020.a n : ℤ) = A229511 n

end A229511

/-! ## A229511.P17960198799725420590

`lt[A000290(col(A003415(n))), 1]`
-/

namespace A229511.P17960198799725420590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.triCol (A003415 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A229511.P17960198799725420590

namespace A229511

/-- `lt[A000290(col(A003415(n))), 1]` -/
def P17960198799725420590.Spec : Prop :=
  ∀ n, (P17960198799725420590.a n : ℤ) = A229511 n

end A229511

/-! ## A229511.P6326364704629330043

`lt[A000695(col(A003415(n))), 1]`
-/

namespace A229511.P6326364704629330043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (SequenceMachineLib.triCol (A003415 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A229511.P6326364704629330043

namespace A229511

/-- `lt[A000695(col(A003415(n))), 1]` -/
def P6326364704629330043.Spec : Prop :=
  ∀ n, (P6326364704629330043.a n : ℤ) = A229511 n

end A229511

/-! ## A229511.P6995068831246074123

`lt[col(A003415(A254667(n))), 1]`
-/

namespace A229511.P6995068831246074123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A003415 (A254667 n).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229511.P6995068831246074123

namespace A229511

/-- `lt[col(A003415(A254667(n))), 1]` -/
def P6995068831246074123.Spec : Prop :=
  ∀ n, (P6995068831246074123.a n : ℤ) = A229511 n

end A229511

/-! ## A229511.P11384471723698223512

`lt[A005836(col(A003415(n))+1), 1]`
-/

namespace A229511.P11384471723698223512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (SequenceMachineLib.triCol (A003415 n).toNat + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A229511.P11384471723698223512

namespace A229511

/-- `lt[A005836(col(A003415(n))+1), 1]` -/
def P11384471723698223512.Spec : Prop :=
  ∀ n, (P11384471723698223512.a n : ℤ) = A229511 n

end A229511

/-! ## A229511.P16305353700605645099

`eq[1, A081532(A003415(n)+1)]`
-/

namespace A229511.P16305353700605645099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081532 (A003415 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229511.P16305353700605645099

namespace A229511

/-- `eq[1, A081532(A003415(n)+1)]` -/
def P16305353700605645099.Spec : Prop :=
  ∀ n, (P16305353700605645099.a n : ℤ) = A229511 n

end A229511

/-! ## A229511.P17259574535731563060

`eq[A000010(n+1)%2, A308680(A003415(n))]`
-/

namespace A229511.P17259574535731563060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308680 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229511.P17259574535731563060

namespace A229511

/-- `eq[A000010(n+1)%2, A308680(A003415(n))]` -/
def P17259574535731563060.Spec : Prop :=
  ∀ n, (P17259574535731563060.a n : ℤ) = A229511 n

end A229511

/-! ## A229511.P1912018285547001216

`eq[1, A002260(1+A003415(n))]`
-/

namespace A229511.P1912018285547001216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (1 + A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229511.P1912018285547001216

namespace A229511

/-- `eq[1, A002260(1+A003415(n))]` -/
def P1912018285547001216.Spec : Prop :=
  ∀ n, (P1912018285547001216.a n : ℤ) = A229511 n

end A229511

/-! ## A229511.P6667744827203167574

`eq[1, A002260(A129283(n)+1-n)]`
-/

namespace A229511.P6667744827203167574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A129283 n + (1 - (n : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229511.P6667744827203167574

namespace A229511

/-- `eq[1, A002260(A129283(n)+1-n)]` -/
def P6667744827203167574.Spec : Prop :=
  ∀ n, (P6667744827203167574.a n : ℤ) = A229511 n

end A229511

/-! ## A229511.P5946352545826975472

`eq[1, sqrt(A133819(1+A003415(n)))]`
-/

namespace A229511.P5946352545826975472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (1 + A003415 n).toNat : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A229511.P5946352545826975472

namespace A229511

/-- `eq[1, sqrt(A133819(1+A003415(n)))]` -/
def P5946352545826975472.Spec : Prop :=
  ∀ n, (P5946352545826975472.a n : ℤ) = A229511 n

end A229511

/-! ## A229511.P15512250933093589974

`lt[A182660(n), A010054(A003415(n))]`
-/

namespace A229511.P15512250933093589974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A003415 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229511.P15512250933093589974

namespace A229511

/-- `lt[A182660(n), A010054(A003415(n))]` -/
def P15512250933093589974.Spec : Prop :=
  ∀ n, (P15512250933093589974.a n : ℤ) = A229511 n

end A229511

/-! ## A229511.P1867308086037898115

`record[n+1-A163269(A003415(n)+1)]`
-/

namespace A229511.P1867308086037898115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A163269 (A003415 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229511.P1867308086037898115

namespace A229511

/-- `record[n+1-A163269(A003415(n)+1)]` -/
def P1867308086037898115.Spec : Prop :=
  ∀ n, P1867308086037898115.a n = A229511 n

end A229511

/-! ## A229511.P9911753619699138756

`eq[1, A183917(A003415(n)+1)]`
-/

namespace A229511.P9911753619699138756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A003415 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229511.P9911753619699138756

namespace A229511

/-- `eq[1, A183917(A003415(n)+1)]` -/
def P9911753619699138756.Spec : Prop :=
  ∀ n, (P9911753619699138756.a n : ℤ) = A229511 n

end A229511

/-!
# A229513: Number of n X n 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X (n+1) 0..2 array without adjacent equal elements in the latter.

The programs for A229513, there is no canonical definition to state claims against.
-/

/-! ## A229513.P11853448196069136674

`A229521(∑[4*n]+1)`
-/

namespace A229513.P11853448196069136674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229513.P11853448196069136674

/-! ## A229513.P8787944009914094788

`record[gcd(A049581(n), A229521(n+1))]`
-/

namespace A229513.P8787944009914094788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A229521 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229513.P8787944009914094788

/-!
# A229514: Number of n X 1 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 2 0..2 array without adjacent equal elements in the latter.

The programs for A229514, the canonical program `A229514.P17259181171795286150` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229514 has offset 1).

The definition of A229514 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 272 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229514.P3762766359373025487

`ogf((3+x+x^3)/(1-2x-x^2+x^3-x^4))`
-/

namespace A229514.P3762766359373025487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1, 0, 1] [1, -2, -1, 1, -1] n

end

end A229514.P3762766359373025487

namespace A229514

/-- `ogf((3+x+x^3)/(1-2x-x^2+x^3-x^4))` -/
def P3762766359373025487.Spec : Prop :=
  ∀ n, P3762766359373025487.a n = A229514 (n + 1)

end A229514

/-! ## A229514.P17259181171795286150

`2*a(n-1)+a(n-2)-a(n-3)+a(n-4)` with `a(0)=3, a(1)=7, a(2)=17, a(3)=39`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A229514

/-- `2*a(n-1)+a(n-2)-a(n-3)+a(n-4)` -/
def P17259181171795286150.Spec : Prop :=
  ∀ n, P17259181171795286150.a n = A229514 (n + 1)

theorem P17259181171795286150.correct : P17259181171795286150.Spec := by
  intro n
  simp only [A229514, Nat.add_sub_cancel]

end A229514

/-! ## A229514.P11552853800515754483

`A159328(n+1)-a(n-1)` with `a(0)=3`
-/

namespace A229514.P11552853800515754483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A159328 (n + 1) - a (n - 1)

end

end A229514.P11552853800515754483

namespace A229514

/-- `A159328(n+1)-a(n-1)` -/
def P11552853800515754483.Spec : Prop :=
  ∀ n, P11552853800515754483.a n = A229514 (n + 1)

end A229514

/-! ## A229514.P11900759769843111090

`2*A181984(n+1)-a(n-1)` with `a(0)=3`
-/

namespace A229514.P11900759769843111090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * A181984 (n + 1) - a (n - 1)

end

end A229514.P11900759769843111090

namespace A229514

/-- `2*A181984(n+1)-a(n-1)` -/
def P11900759769843111090.Spec : Prop :=
  ∀ n, P11900759769843111090.a n = A229514 (n + 1)

end A229514

/-! ## A229514.P5925113310455016555

`a(n-1)+2*A003520(3*n+2)` with `a(0)=3`
-/

namespace A229514.P5925113310455016555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 2 * A003520 (3 * n + 2)

end

end A229514.P5925113310455016555

namespace A229514

/-- `a(n-1)+2*A003520(3*n+2)` -/
def P5925113310455016555.Spec : Prop :=
  ∀ n, P5925113310455016555.a n = A229514 (n + 1)

end A229514

/-! ## A229514.P112070319822785817

`A003520(3*n+4)+Δ[A003520(3*(n+1))]`
-/

namespace A229514.P112070319822785817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003520 (3 * n + 4) + (f1 (n + 1) - f1 n)

end

end A229514.P112070319822785817

namespace A229514

/-- `A003520(3*n+4)+Δ[A003520(3*(n+1))]` -/
def P112070319822785817.Spec : Prop :=
  ∀ n, P112070319822785817.a n = A229514 (n + 1)

end A229514

/-! ## A229514.P13304266915285902256

`A017899(A016777(n))+A010912(n)`
-/

namespace A229514.P13304266915285902256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017899 (A016777 n).toNat + A010912 n

end

end A229514.P13304266915285902256

namespace A229514

/-- `A017899(A016777(n))+A010912(n)` -/
def P13304266915285902256.Spec : Prop :=
  ∀ n, P13304266915285902256.a n = A229514 (n + 1)

end A229514

/-!
# A229515: Number of n X 2 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 3 0..2 array without adjacent equal elements in the latter.

The programs for A229515, there is no canonical definition to state claims against.
-/

/-! ## A229515.P603361488672935797

`A229521(∑[n+1]+2)`
-/

namespace A229515.P603361488672935797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A229515.P603361488672935797

/-! ## A229515.P11412117216165836133

`record[root(A229521(n+2), A124927(n))]`
-/

namespace A229515.P11412117216165836133
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A229521 (n + 2) : ℝ) ^ (1 / (A124927 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229515.P11412117216165836133

/-! ## A229515.P14939816144929197107

`record[gcd(A229521(n+3), A229534(n+1))]`
-/

namespace A229515.P14939816144929197107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A229521 (n + 3)) (A229534 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229515.P14939816144929197107

/-! ## A229515.P7590329328965210005

`record[A229521(A133263(A028242(n)))]`
-/

namespace A229515.P7590329328965210005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (A133263 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229515.P7590329328965210005

/-! ## A229515.P17104310392923277714

`record[A229521(A133263(A286558(n)))]`
-/

namespace A229515.P17104310392923277714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (A133263 (A286558 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229515.P17104310392923277714

/-!
# A229516: Number of n X 3 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 4 0..2 array without adjacent equal elements in the latter.

The programs for A229516, there is no canonical definition to state claims against.
-/

/-! ## A229516.P8177409282896551806

`A229521(∑[n+2]+4)`
-/

namespace A229516.P8177409282896551806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229516.P8177409282896551806

/-!
# A229517: Number of n X 4 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 5 0..2 array without adjacent equal elements in the latter.

The programs for A229517, there is no canonical definition to state claims against.
-/

/-! ## A229517.P8923254272984301901

`A229521(A374004(n+1))`
-/

namespace A229517.P8923254272984301901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (A374004 (n + 1)).toNat

end

end A229517.P8923254272984301901

/-! ## A229517.P3026780384265304683

`A229521(A141214(n+1))`
-/

namespace A229517.P3026780384265304683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (A141214 (n + 1)).toNat

end

end A229517.P3026780384265304683

/-!
# A229518: Number of n X 5 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 6 0..2 array without adjacent equal elements in the latter.

The programs for A229518, there is no canonical definition to state claims against.
-/

/-! ## A229518.P4058575882094592854

`A229521(A374005(n+1))`
-/

namespace A229518.P4058575882094592854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (A374005 (n + 1)).toNat

end

end A229518.P4058575882094592854

/-! ## A229518.P14870457377130894017

`A229521(Δ[A264443(n)])`
-/

namespace A229518.P14870457377130894017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (f1 (n + 1) - f1 n).toNat

end

end A229518.P14870457377130894017

/-!
# A229519: Number of n X 6 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 7 0..2 array without adjacent equal elements in the latter.

The programs for A229519, there is no canonical definition to state claims against.
-/

/-! ## A229519.P16201824887493518773

`A229521(A374007(n+1))`
-/

namespace A229519.P16201824887493518773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (A374007 (n + 1)).toNat

end

end A229519.P16201824887493518773

/-!
# A229520: Number of n X 7 0..2 arrays of the median of the corresponding element, the element to the east and the element to the south in a larger (n+1) X 8 0..2 array without adjacent equal elements in the latter.

The programs for A229520, there is no canonical definition to state claims against.
-/

/-! ## A229520.P17222406211818393425

`A229521(A374008(n+1))`
-/

namespace A229520.P17222406211818393425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229521 (A374008 (n + 1)).toNat

end

end A229520.P17222406211818393425

/-!
# A229522: Final digit (in decimal system) of (n^n)^n, i.e., (n^n)^n mod 10.

The programs for A229522, the canonical program `A229522.P18014892526736871707` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229522 has offset 1).

The definition of A229522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229522.P18014892526736871707

`((n+1)^(5-n%2))%10`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A229522

/-- `((n+1)^(5-n%2))%10` -/
def P18014892526736871707.Spec : Prop :=
  ∀ n, P18014892526736871707.a n = A229522 (n + 1)

theorem P18014892526736871707.correct : P18014892526736871707.Spec := by
  intro n
  simp only [A229522, Nat.add_sub_cancel]

end A229522

/-!
# A229523: Partial sum of the arithmetic derivative A003415 (A190121) up to 10^n.

The programs for A229523, the canonical program `A229523.P13832945066902845341` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229523 has offset 0).

The definition of A229523 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A190121, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A229523.P13832945066902845341

`A190121(10^n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A229523

/-- `A190121(10^n)` -/
def P13832945066902845341.Spec : Prop :=
  ∀ n, P13832945066902845341.a n = A229523 n

theorem P13832945066902845341.correct : P13832945066902845341.Spec := by
  intro n
  simp only [A229523]

end A229523

/-!
# A229525: Sum of coefficients of the transform a*x^2 + (4*a/k - b)*x + 4*a/k^2 + 2*b/k + c = 0 for a,b,c = 1,-1,-1, k = 1,2,3...

The programs for A229525, the canonical program `A229525.P6943540399474459169` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229525 has offset 1).

The definition of A229525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229525.P7167501440327516370

`ogf((11+5x-2x^2-4x^3-x^4+x^5)/(1-3x^2+3x^4-x^6))`
-/

namespace A229525.P7167501440327516370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, 5, -2, -4, -1, 1] [1, 0, -3, 0, 3, 0, -1] n

end

end A229525.P7167501440327516370

namespace A229525

/-- `ogf((11+5x-2x^2-4x^3-x^4+x^5)/(1-3x^2+3x^4-x^6))` -/
def P7167501440327516370.Spec : Prop :=
  ∀ n, P7167501440327516370.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P6943540399474459169

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=11, a(1)=5, a(2)=31, a(3)=11, a(4)=59, a(5)=19`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A229525

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P6943540399474459169.Spec : Prop :=
  ∀ n, P6943540399474459169.a n = A229525 (n + 1)

theorem P6943540399474459169.correct : P6943540399474459169.Spec := by
  intro n
  simp only [A229525, Nat.add_sub_cancel]

end A229525

/-! ## A229525.P3566160805199460069

`((n+3)²+2*(n+3)-4)/gcd((n+3)²+2*(n+3)-4, 4)`
-/

namespace A229525.P3566160805199460069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 3) ^ 2 + 2 * (n + 3) : ℤ) - 4 : ℚ) / (Int.gcd (((n + 3) ^ 2 + 2 * (n + 3) : ℤ) - 4) 4 : ℚ)

end

end A229525.P3566160805199460069

namespace A229525

/-- `((n+3)²+2*(n+3)-4)/gcd((n+3)²+2*(n+3)-4, 4)` -/
def P3566160805199460069.Spec : Prop :=
  ∀ n, P3566160805199460069.a n = (A229525 (n + 1) : ℚ)

end A229525

/-! ## A229525.P9228742363272247109

`A144433(n+1)+A070260(n+1)`
-/

namespace A229525.P9228742363272247109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144433 (n + 1) + A070260 (n + 1)

end

end A229525.P9228742363272247109

namespace A229525

/-- `A144433(n+1)+A070260(n+1)` -/
def P9228742363272247109.Spec : Prop :=
  ∀ n, P9228742363272247109.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P3569703284617696948

`A229526(n+1)+2*A070260(n+1)`
-/

namespace A229525.P3569703284617696948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229526 (n + 1) + 2 * A070260 (n + 1)

end

end A229525.P3569703284617696948

namespace A229525

/-- `A229526(n+1)+2*A070260(n+1)` -/
def P3569703284617696948.Spec : Prop :=
  ∀ n, P3569703284617696948.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P14755540038198947918

`2*A144433(n+1)-A229526(n+1)`
-/

namespace A229525.P14755540038198947918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144433 (n + 1) - A229526 (n + 1)

end

end A229525.P14755540038198947918

namespace A229525

/-- `2*A144433(n+1)-A229526(n+1)` -/
def P14755540038198947918.Spec : Prop :=
  ∀ n, P14755540038198947918.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P2961807358510830796

`∑[A140677(n+1)+n]/A195161(n+1)`
-/

namespace A229525.P2961807358510830796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140677 (n + 1) + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A195161 (n + 1) : ℚ)

end

end A229525.P2961807358510830796

namespace A229525

/-- `∑[A140677(n+1)+n]/A195161(n+1)` -/
def P2961807358510830796.Spec : Prop :=
  ∀ n, P2961807358510830796.a n = (A229525 (n + 1) : ℚ)

end A229525

/-! ## A229525.P10843330594674311507

`A168077(n+1)+A229526(n+1)+A171621(n+3)`
-/

namespace A229525.P10843330594674311507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (n + 1) + (A229526 (n + 1) + A171621 (n + 3))

end

end A229525.P10843330594674311507

namespace A229525

/-- `A168077(n+1)+A229526(n+1)+A171621(n+3)` -/
def P10843330594674311507.Spec : Prop :=
  ∀ n, P10843330594674311507.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P9264483365178535453

`A064680(n+1)+A026741(n+3)²`
-/

namespace A229525.P9264483365178535453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (n + 1) + A026741 (n + 3) ^ 2

end

end A229525.P9264483365178535453

namespace A229525

/-- `A064680(n+1)+A026741(n+3)²` -/
def P9264483365178535453.Spec : Prop :=
  ∀ n, P9264483365178535453.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P3717307088633856925

`A168077(n+3)+A064680(n+1)`
-/

namespace A229525.P3717307088633856925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (n + 3) + A064680 (n + 1)

end

end A229525.P3717307088633856925

namespace A229525

/-- `A168077(n+3)+A064680(n+1)` -/
def P3717307088633856925.Spec : Prop :=
  ∀ n, P3717307088633856925.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P16474914702419693226

`-A229526(n+5)`
-/

namespace A229525.P16474914702419693226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A229526 (n + 5)

end

end A229525.P16474914702419693226

namespace A229525

/-- `-A229526(n+5)` -/
def P16474914702419693226.Spec : Prop :=
  ∀ n, P16474914702419693226.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P12768532278852368689

`A214630(2*n)+A110185(n+2)`
-/

namespace A229525.P12768532278852368689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214630 (2 * n) + A110185 (n + 2)

end

end A229525.P12768532278852368689

namespace A229525

/-- `A214630(2*n)+A110185(n+2)` -/
def P12768532278852368689.Spec : Prop :=
  ∀ n, P12768532278852368689.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P7842296726147099807

`A142705(n+2)+A022998(A022998(n+2))`
-/

namespace A229525.P7842296726147099807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142705 (n + 2) + A022998 (A022998 (n + 2)).toNat

end

end A229525.P7842296726147099807

namespace A229525

/-- `A142705(n+2)+A022998(A022998(n+2))` -/
def P7842296726147099807.Spec : Prop :=
  ∀ n, P7842296726147099807.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P13371182177818650918

`A144433(n+1)+A061037(2*(n+2))`
-/

namespace A229525.P13371182177818650918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144433 (n + 1) + A061037 (2 * (n + 2))

end

end A229525.P13371182177818650918

namespace A229525

/-- `A144433(n+1)+A061037(2*(n+2))` -/
def P13371182177818650918.Spec : Prop :=
  ∀ n, P13371182177818650918.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P13093064373877163658

`A000265((4+n)²-5)`
-/

namespace A229525.P13093064373877163658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((4 + n) ^ 2 - 5)

end

end A229525.P13093064373877163658

namespace A229525

/-- `A000265((4+n)²-5)` -/
def P13093064373877163658.Spec : Prop :=
  ∀ n, P13093064373877163658.a n = A229525 (n + 1)

end A229525

/-! ## A229525.P2648884918045658737

`A093411((n+4)²-5)`
-/

namespace A229525.P2648884918045658737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 ((n + 4) ^ 2 - 5)

end

end A229525.P2648884918045658737

namespace A229525

/-- `A093411((n+4)²-5)` -/
def P2648884918045658737.Spec : Prop :=
  ∀ n, P2648884918045658737.a n = A229525 (n + 1)

end A229525

/-!
# A229526: The c coefficients of the transform a*x^2 + (4*a/k - b)*x + 4*a/k^2 + 2*b/k + c = 0 for a,b,c = 1,-1,-1, k = 1,2,3...

The programs for A229526, the canonical program `A229526.P16544832626549431579` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229526 has offset 1).

The definition of A229526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229526.P2832568480119899608

`ogf((5+x-14x^2-4x^3+x^4+x^5)/(1-3x^2+3x^4-x^6))`
-/

namespace A229526.P2832568480119899608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 1, -14, -4, 1, 1] [1, 0, -3, 0, 3, 0, -1] n

end

end A229526.P2832568480119899608

namespace A229526

/-- `ogf((5+x-14x^2-4x^3+x^4+x^5)/(1-3x^2+3x^4-x^6))` -/
def P2832568480119899608.Spec : Prop :=
  ∀ n, P2832568480119899608.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P16544832626549431579

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=5, a(1)=1, a(2)=1, a(3)=-1, a(4)=-11, a(5)=-5`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A229526

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P16544832626549431579.Spec : Prop :=
  ∀ n, P16544832626549431579.a n = A229526 (n + 1)

theorem P16544832626549431579.correct : P16544832626549431579.Spec := by
  intro n
  simp only [A229526, Nat.add_sub_cancel]

end A229526

/-! ## A229526.P9673726129409887220

`(5-n²)/4^(n%2)`
-/

namespace A229526.P9673726129409887220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - (n ^ 2 : ℤ) : ℚ) / (4 ^ (n % 2) : ℚ)

end

end A229526.P9673726129409887220

namespace A229526

/-- `(5-n²)/4^(n%2)` -/
def P9673726129409887220.Spec : Prop :=
  ∀ n, P9673726129409887220.a n = (A229526 (n + 1) : ℚ)

end A229526

/-! ## A229526.P6429730890035019233

`(5-n²)/gcd(2, n+1)²`
-/

namespace A229526.P6429730890035019233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - (n ^ 2 : ℤ) : ℚ) / (Nat.gcd 2 (n + 1) ^ 2 : ℚ)

end

end A229526.P6429730890035019233

namespace A229526

/-- `(5-n²)/gcd(2, n+1)²` -/
def P6429730890035019233.Spec : Prop :=
  ∀ n, P6429730890035019233.a n = (A229526 (n + 1) : ℚ)

end A229526

/-! ## A229526.P1787934378958494825

`(5-n²)/A000034(n)²`
-/

namespace A229526.P1787934378958494825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - (n ^ 2 : ℤ) : ℚ) / (A000034 n ^ 2 : ℚ)

end

end A229526.P1787934378958494825

namespace A229526

/-- `(5-n²)/A000034(n)²` -/
def P1787934378958494825.Spec : Prop :=
  ∀ n, P1787934378958494825.a n = (A229526 (n + 1) : ℚ)

end A229526

/-! ## A229526.P4095422027797099960

`A144433(n+1)-A070260(n+1)`
-/

namespace A229526.P4095422027797099960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144433 (n + 1) - A070260 (n + 1)

end

end A229526.P4095422027797099960

namespace A229526

/-- `A144433(n+1)-A070260(n+1)` -/
def P4095422027797099960.Spec : Prop :=
  ∀ n, P4095422027797099960.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P4479689547199350728

`2*A144433(n+1)-A229525(n+1)`
-/

namespace A229526.P4479689547199350728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A144433 (n + 1) - A229525 (n + 1)

end

end A229526.P4479689547199350728

namespace A229526

/-- `2*A144433(n+1)-A229525(n+1)` -/
def P4479689547199350728.Spec : Prop :=
  ∀ n, P4479689547199350728.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P17908885250323142043

`A229525(n+1)-(A171621(n+3)+A168077(n+1))`
-/

namespace A229526.P17908885250323142043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229525 (n + 1) - (A171621 (n + 3) + A168077 (n + 1))

end

end A229526.P17908885250323142043

namespace A229526

/-- `A229525(n+1)-(A171621(n+3)+A168077(n+1))` -/
def P17908885250323142043.Spec : Prop :=
  ∀ n, P17908885250323142043.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P11323877070641376664

`A064680(n+3)-A168077(n+1)`
-/

namespace A229526.P11323877070641376664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (n + 3) - A168077 (n + 1)

end

end A229526.P11323877070641376664

namespace A229526

/-- `A064680(n+3)-A168077(n+1)` -/
def P11323877070641376664.Spec : Prop :=
  ∀ n, P11323877070641376664.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P5025478290077350882

`A064680(n+3)-A026741(n+1)²`
-/

namespace A229526.P5025478290077350882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (n + 3) - A026741 (n + 1) ^ 2

end

end A229526.P5025478290077350882

namespace A229526

/-- `A064680(n+3)-A026741(n+1)²` -/
def P5025478290077350882.Spec : Prop :=
  ∀ n, P5025478290077350882.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P7114577422097917089

`(5-n²)/A177499(2*n)`
-/

namespace A229526.P7114577422097917089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 - (n ^ 2 : ℤ) : ℚ) / (A177499 (2 * n) : ℚ)

end

end A229526.P7114577422097917089

namespace A229526

/-- `(5-n²)/A177499(2*n)` -/
def P7114577422097917089.Spec : Prop :=
  ∀ n, P7114577422097917089.a n = (A229526 (n + 1) : ℚ)

end A229526

/-! ## A229526.P12452648983902217960

`A010685(n+1)-A214630(2*n)`
-/

namespace A229526.P12452648983902217960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (n + 1) - A214630 (2 * n)

end

end A229526.P12452648983902217960

namespace A229526

/-- `A010685(n+1)-A214630(2*n)` -/
def P12452648983902217960.Spec : Prop :=
  ∀ n, P12452648983902217960.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P17056964864799478426

`A040005(n+2)-A214630(2*n)`
-/

namespace A229526.P17056964864799478426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 (n + 2) - A214630 (2 * n)

end

end A229526.P17056964864799478426

namespace A229526

/-- `A040005(n+2)-A214630(2*n)` -/
def P17056964864799478426.Spec : Prop :=
  ∀ n, P17056964864799478426.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P12058298672929630945

`A022998(A022998(n+2))-A070260(n+1)`
-/

namespace A229526.P12058298672929630945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A022998 (n + 2)).toNat - A070260 (n + 1)

end

end A229526.P12058298672929630945

namespace A229526

/-- `A022998(A022998(n+2))-A070260(n+1)` -/
def P12058298672929630945.Spec : Prop :=
  ∀ n, P12058298672929630945.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P6313932689729002584

`A022998(A022998(n+2))-A142705(n+2)`
-/

namespace A229526.P6313932689729002584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A022998 (n + 2)).toNat - A142705 (n + 2)

end

end A229526.P6313932689729002584

namespace A229526

/-- `A022998(A022998(n+2))-A142705(n+2)` -/
def P6313932689729002584.Spec : Prop :=
  ∀ n, P6313932689729002584.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P1214320011218847166

`A064680(n+3)-A181318(A145979(2*n))`
-/

namespace A229526.P1214320011218847166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (n + 3) - A181318 (A145979 (2 * n)).toNat

end

end A229526.P1214320011218847166

namespace A229526

/-- `A064680(n+3)-A181318(A145979(2*n))` -/
def P1214320011218847166.Spec : Prop :=
  ∀ n, P1214320011218847166.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P13107399959966415848

`A109008(A283971(2*n))-A214630(2*n)`
-/

namespace A229526.P13107399959966415848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109008 (A283971 (2 * n)).toNat - A214630 (2 * n)

end

end A229526.P13107399959966415848

namespace A229526

/-- `A109008(A283971(2*n))-A214630(2*n)` -/
def P13107399959966415848.Spec : Prop :=
  ∀ n, P13107399959966415848.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P14371383967577090935

`A000034(n+1)²-A247829(A249693(2*n))`
-/

namespace A229526.P14371383967577090935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) ^ 2 - A247829 (A249693 (2 * n)).toNat

end

end A229526.P14371383967577090935

namespace A229526

/-- `A000034(n+1)²-A247829(A249693(2*n))` -/
def P14371383967577090935.Spec : Prop :=
  ∀ n, P14371383967577090935.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P3208076722042940086

`A144433(n+1)-A061037(2*(n+2))`
-/

namespace A229526.P3208076722042940086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144433 (n + 1) - A061037 (2 * (n + 2))

end

end A229526.P3208076722042940086

namespace A229526

/-- `A144433(n+1)-A061037(2*(n+2))` -/
def P3208076722042940086.Spec : Prop :=
  ∀ n, P3208076722042940086.a n = A229526 (n + 1)

end A229526

/-! ## A229526.P9370318452324140118

`A010132(n²+2)-A214630(2*n)`
-/

namespace A229526.P9370318452324140118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010132 (n ^ 2 + 2) - A214630 (2 * n)

end

end A229526.P9370318452324140118

namespace A229526

/-- `A010132(n²+2)-A214630(2*n)` -/
def P9370318452324140118.Spec : Prop :=
  ∀ n, P9370318452324140118.a n = A229526 (n + 1)

end A229526

/-!
# A229527: Start with 1, skip (sum of digits of n) numbers, accept next number.

The programs for A229527, the canonical program `A229527.P13631613153917723795` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229527 has offset 1).

The definition of A229527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229527.P13631613153917723795

`A062028(a(n-1))+1` with `a(0)=1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A229527

/-- `A062028(a(n-1))+1` -/
def P13631613153917723795.Spec : Prop :=
  ∀ n, P13631613153917723795.a n = A229527 (n + 1)

theorem P13631613153917723795.correct : P13631613153917723795.Spec := by
  intro n
  simp only [A229527, Nat.add_sub_cancel]

end A229527

/-! ## A229527.P1765631430990523510

`A160939(1+a(n-1))` with `a(0)=1`
-/

namespace A229527.P1765631430990523510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A160939 (1 + a (n - 1)).toNat

end

end A229527.P1765631430990523510

namespace A229527

/-- `A160939(1+a(n-1))` -/
def P1765631430990523510.Spec : Prop :=
  ∀ n, P1765631430990523510.a n = A229527 (n + 1)

end A229527

/-! ## A229527.P15978281905338880198

`-xor(A062028(a(abs(1-n))), -1)` with `a(0)=1`
-/

namespace A229527.P15978281905338880198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  -Int.xor (A062028 (a |1 - (n : ℤ)|.toNat).toNat) (-1)

end

end A229527.P15978281905338880198

namespace A229527

/-- `-xor(A062028(a(abs(1-n))), -1)` -/
def P15978281905338880198.Spec : Prop :=
  ∀ n, P15978281905338880198.a n = A229527 (n + 1)

end A229527

/-! ## A229527.P11717209547278562837

`a(n-1)+1+A007953(a(n-1))` with `a(0)=1`
-/

namespace A229527.P11717209547278562837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 1 + A007953 (a (n - 1)).toNat

end

end A229527.P11717209547278562837

namespace A229527

/-- `a(n-1)+1+A007953(a(n-1))` -/
def P11717209547278562837.Spec : Prop :=
  ∀ n, P11717209547278562837.a n = A229527 (n + 1)

end A229527

/-! ## A229527.P16357556331235765272

`1+a(n-1)+sqrt(A118881(a(n-1)))` with `a(0)=1`
-/

namespace A229527.P16357556331235765272
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  1 + a (n - 1) + Real.sqrt (A118881 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ)

end

end A229527.P16357556331235765272

namespace A229527

/-- `1+a(n-1)+sqrt(A118881(a(n-1)))` -/
def P16357556331235765272.Spec : Prop :=
  ∀ n, P16357556331235765272.a n = (A229527 (n + 1) : ℝ)

end A229527

/-! ## A229527.P6273948527816897985

`a(n-1)+A057147(a(n-1))/a(n-1)+1` with `a(0)=1`
-/

namespace A229527.P6273948527816897985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A057147 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / a (n - 1) + 1

end

end A229527.P6273948527816897985

namespace A229527

/-- `a(n-1)+A057147(a(n-1))/a(n-1)+1` -/
def P6273948527816897985.Spec : Prop :=
  ∀ n, P6273948527816897985.a n = (A229527 (n + 1) : ℚ)

end A229527

/-! ## A229527.P8503564192704176309

`A020725(A062028(a(n-1)))` with `a(0)=1`
-/

namespace A229527.P8503564192704176309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A020725 (A062028 (a (n - 1)).toNat).toNat

end

end A229527.P8503564192704176309

namespace A229527

/-- `A020725(A062028(a(n-1)))` -/
def P8503564192704176309.Spec : Prop :=
  ∀ n, P8503564192704176309.a n = A229527 (n + 1)

end A229527

/-! ## A229527.P18360887323017916360

`A008619(2*A062028(a(n-1)))` with `a(0)=1`
-/

namespace A229527.P18360887323017916360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008619 (2 * A062028 (a (n - 1)).toNat).toNat

end

end A229527.P18360887323017916360

namespace A229527

/-- `A008619(2*A062028(a(n-1)))` -/
def P18360887323017916360.Spec : Prop :=
  ∀ n, P18360887323017916360.a n = A229527 (n + 1)

end A229527

/-! ## A229527.P9590346431364981127

`A004155(5*a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A229527.P9590346431364981127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004155 (5 * a (n - 1)).toNat + a (n - 1)

end

end A229527.P9590346431364981127

namespace A229527

/-- `A004155(5*a(n-1))+a(n-1)` -/
def P9590346431364981127.Spec : Prop :=
  ∀ n, P9590346431364981127.a n = A229527 (n + 1)

end A229527

/-!
# A229528: Number of defective 3-colorings of an n X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229528, there is no canonical definition to state claims against.
-/

/-! ## A229528.P12030225266270654778

`A269029(n+1)/6`
-/

namespace A229528.P12030225266270654778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269029 (n + 1) : ℚ) / 6

end

end A229528.P12030225266270654778

/-! ## A229528.P8214617003718165406

`A229534(∑[4*n]+1)`
-/

namespace A229528.P8214617003718165406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229528.P8214617003718165406

/-! ## A229528.P11341120649438900155

`A269035(record[A330613(n+1)])/6`
-/

namespace A229528.P11341120649438900155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330613 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 6

end

end A229528.P11341120649438900155

/-! ## A229528.P1692708468015876247

`record[A003982(n)*A229534(n+1)]`
-/

namespace A229528.P1692708468015876247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A229534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229528.P1692708468015876247

/-!
# A229529: Number of defective 3-colorings of an n X 3 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229529, the canonical program `A229529.P2577269629239549528` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229529 has offset 1).

The definition of A229529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229529.P2577269629239549528

`ogf((2-12x+36x^2-32x^3+8x^4)/(1-10x+29x^2-20x^3+4x^4))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A229529

/-- `ogf((2-12x+36x^2-32x^3+8x^4)/(1-10x+29x^2-20x^3+4x^4))` -/
def P2577269629239549528.Spec : Prop :=
  ∀ n, P2577269629239549528.a n = A229529 (n + 1)

theorem P2577269629239549528.correct : P2577269629239549528.Spec := by
  intro n
  simp only [A229529, Nat.add_sub_cancel]

end A229529

/-! ## A229529.P4055479069572221453

`A269030(n+1)/6`
-/

namespace A229529.P4055479069572221453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269030 (n + 1) : ℚ) / 6

end

end A229529.P4055479069572221453

namespace A229529

/-- `A269030(n+1)/6` -/
def P4055479069572221453.Spec : Prop :=
  ∀ n, P4055479069572221453.a n = (A229529 (n + 1) : ℚ)

end A229529

/-! ## A229529.P6160327342175835341

`A229534(∑[n+3]+1)`
-/

namespace A229529.P6160327342175835341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229529.P6160327342175835341

namespace A229529

/-- `A229534(∑[n+3]+1)` -/
def P6160327342175835341.Spec : Prop :=
  ∀ n, P6160327342175835341.a n = A229529 (n + 1)

end A229529

/-! ## A229529.P14088811114180333557

`A269035(∑[n+3]+1)/6`
-/

namespace A229529.P14088811114180333557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 6

end

end A229529.P14088811114180333557

namespace A229529

/-- `A269035(∑[n+3]+1)/6` -/
def P14088811114180333557.Spec : Prop :=
  ∀ n, P14088811114180333557.a n = (A229529 (n + 1) : ℚ)

end A229529

/-!
# A229530: Number of defective 3-colorings of an n X 4 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229530, there is no canonical definition to state claims against.
-/

/-! ## A229530.P17614569251647918454

`A269031(n+1)/6`
-/

namespace A229530.P17614569251647918454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269031 (n + 1) : ℚ) / 6

end

end A229530.P17614569251647918454

/-! ## A229530.P5667070551595699748

`(A269048(n+1)-A223373(n+1))/6`
-/

namespace A229530.P5667070551595699748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269048 (n + 1) - A223373 (n + 1) : ℚ) / 6

end

end A229530.P5667070551595699748

/-! ## A229530.P6721963769901230134

`A229534(∑[n+4]+3)`
-/

namespace A229530.P6721963769901230134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A229530.P6721963769901230134

/-! ## A229530.P3974793601451906120

`A269035(A141214(n+1))/6`
-/

namespace A229530.P3974793601451906120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (A141214 (n + 1)).toNat : ℚ) / 6

end

end A229530.P3974793601451906120

/-! ## A229530.P4667772020202625968

`A269035(A055998(n+2))/6`
-/

namespace A229530.P4667772020202625968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (A055998 (n + 2)).toNat : ℚ) / 6

end

end A229530.P4667772020202625968

/-!
# A229531: Number of defective 3-colorings of an n X 5 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229531, there is no canonical definition to state claims against.
-/

/-! ## A229531.P7661882318120882772

`A269032(n+1)/6`
-/

namespace A229531.P7661882318120882772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269032 (n + 1) : ℚ) / 6

end

end A229531.P7661882318120882772

/-! ## A229531.P16217752059135710450

`A229534(A046691(n+3))`
-/

namespace A229531.P16217752059135710450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A046691 (n + 3)).toNat

end

end A229531.P16217752059135710450

/-! ## A229531.P6261316504602655445

`A269035(A056115(n)+11)/6`
-/

namespace A229531.P6261316504602655445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (A056115 n + 11).toNat : ℚ) / 6

end

end A229531.P6261316504602655445

/-!
# A229532: Number of defective 3-colorings of an n X 6 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229532, there is no canonical definition to state claims against.
-/

/-! ## A229532.P16156729415883706515

`A269033(n+1)/6`
-/

namespace A229532.P16156729415883706515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269033 (n + 1) : ℚ) / 6

end

end A229532.P16156729415883706515

/-! ## A229532.P3905831322156351710

`A229534(A052905(n+3))`
-/

namespace A229532.P3905831322156351710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A052905 (n + 3)).toNat

end

end A229532.P3905831322156351710

/-!
# A229533: Number of defective 3-colorings of an n X 7 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229533, there is no canonical definition to state claims against.
-/

/-! ## A229533.P7154025571135900174

`A269034(n+1)/6`
-/

namespace A229533.P7154025571135900174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269034 (n + 1) : ℚ) / 6

end

end A229533.P7154025571135900174

/-! ## A229533.P5230259126793610910

`A229534(A055999(n+4))`
-/

namespace A229533.P5230259126793610910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A055999 (n + 4)).toNat

end

end A229533.P5230259126793610910

/-!
# A229534: T(n,k) = number of defective 3-colorings of an n X k 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229534, there is no canonical definition to state claims against.
-/

/-! ## A229534.P16958657730591977758

`ceil(A269035(n+1)/6)`
-/

namespace A229534.P16958657730591977758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A269035 (n + 1) : ℚ) / 6⌉

end

end A229534.P16958657730591977758

/-! ## A229534.P9632705372472601973

`round(A269035(n+1)/A040006(n))`
-/

namespace A229534.P9632705372472601973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A269035 (n + 1) : ℚ) / (A040006 n : ℚ))

end

end A229534.P9632705372472601973

/-! ## A229534.P8193442485499182686

`A269035(n+1)/A267884(or(1, n))`
-/

namespace A229534.P8193442485499182686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (n + 1) : ℚ) / (A267884 (Nat.lor 1 n) : ℚ)

end

end A229534.P8193442485499182686

/-! ## A229534.P9058198395284151675

`A269035(n+1)/gcd(6, A268639(n+1))`
-/

namespace A229534.P9058198395284151675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (n + 1) : ℚ) / (Int.gcd 6 (A268639 (n + 1)) : ℚ)

end

end A229534.P9058198395284151675

/-! ## A229534.P15450150143365343766

`A269035(n+1)/A267884(A028242(3*n))`
-/

namespace A229534.P15450150143365343766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (n + 1) : ℚ) / (A267884 (A028242 (3 * n)).toNat : ℚ)

end

end A229534.P15450150143365343766

/-! ## A229534.P9477782459575668785

`A269035(n+1)/A267884(A028242(n)+n)`
-/

namespace A229534.P9477782459575668785
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (n + 1) : ℚ) / (A267884 (A028242 n + (n : ℤ)).toNat : ℚ)

end

end A229534.P9477782459575668785

/-! ## A229534.P6196672837841766190

`A269035(n+1)/gcd(A232920(n+1), A267884(n))`
-/

namespace A229534.P6196672837841766190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (n + 1) : ℚ) / (Int.gcd (A232920 (n + 1)) (A267884 n) : ℚ)

end

end A229534.P6196672837841766190

/-! ## A229534.P15340469063554811554

`A269035(n+1)/gcd(6, A167667(n))`
-/

namespace A229534.P15340469063554811554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (n + 1) : ℚ) / (Int.gcd 6 (A167667 n) : ℚ)

end

end A229534.P15340469063554811554

/-! ## A229534.P5353117216297474753

`A269035(n+1)/A267884(∑[A028242(n)])`
-/

namespace A229534.P5353117216297474753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (n + 1) : ℚ) / (A267884 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ)

end

end A229534.P5353117216297474753

/-!
# A229535: Number of defective 3-colorings of a 2 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229535, the canonical program `A229535.P332292831322738453` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229535 has offset 1).

The definition of A229535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 225 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229535.P394067186427440710

`ogf((4x-8x^2+4x^3)/(1-4x+8x^3+4x^4))`
-/

namespace A229535.P394067186427440710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, -8, 4] [1, -4, 0, 8, 4] n

end

end A229535.P394067186427440710

namespace A229535

/-- `ogf((4x-8x^2+4x^3)/(1-4x+8x^3+4x^4))` -/
def P394067186427440710.Spec : Prop :=
  ∀ n, P394067186427440710.a n = A229535 (n + 1)

end A229535

/-! ## A229535.P332292831322738453

`4*a(n-1)-8*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=4, a(2)=8, a(3)=36`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A229535

/-- `4*a(n-1)-8*a(n-3)-4*a(n-4)` -/
def P332292831322738453.Spec : Prop :=
  ∀ n, P332292831322738453.a n = A229535 (n + 1)

theorem P332292831322738453.correct : P332292831322738453.Spec := by
  intro n
  simp only [A229535, Nat.add_sub_cancel]

end A229535

/-! ## A229535.P15108139448932232102

`Δ[n*A293007(n)]`
-/

namespace A229535.P15108139448932232102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A293007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229535.P15108139448932232102

namespace A229535

/-- `Δ[n*A293007(n)]` -/
def P15108139448932232102.Spec : Prop :=
  ∀ n, P15108139448932232102.a n = A229535 (n + 1)

end A229535

/-! ## A229535.P5556526418149832746

`Δ[n*A028860(n+1)]`
-/

namespace A229535.P5556526418149832746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028860 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229535.P5556526418149832746

namespace A229535

/-- `Δ[n*A028860(n+1)]` -/
def P5556526418149832746.Spec : Prop :=
  ∀ n, P5556526418149832746.a n = A229535 (n + 1)

end A229535

/-! ## A229535.P3467773958113585609

`Δ[n*(A026150(n)-A002605(n))]`
-/

namespace A229535.P3467773958113585609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A026150 n - A002605 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229535.P3467773958113585609

namespace A229535

/-- `Δ[n*(A026150(n)-A002605(n))]` -/
def P3467773958113585609.Spec : Prop :=
  ∀ n, P3467773958113585609.a n = A229535 (n + 1)

end A229535

/-! ## A229535.P9216549477775752926

`Δ[n*(A002605(n)-A028860(n))]`
-/

namespace A229535.P9216549477775752926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002605 n - A028860 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229535.P9216549477775752926

namespace A229535

/-- `Δ[n*(A002605(n)-A028860(n))]` -/
def P9216549477775752926.Spec : Prop :=
  ∀ n, P9216549477775752926.a n = A229535 (n + 1)

end A229535

/-! ## A229535.P10352397634716051913

`Δ[n*(A028859(n)-A083337(n))]`
-/

namespace A229535.P10352397634716051913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A028859 n - A083337 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229535.P10352397634716051913

namespace A229535

/-- `Δ[n*(A028859(n)-A083337(n))]` -/
def P10352397634716051913.Spec : Prop :=
  ∀ n, P10352397634716051913.a n = A229535 (n + 1)

end A229535

/-! ## A229535.P7859145804984459825

`A269036(n+1)/6`
-/

namespace A229535.P7859145804984459825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269036 (n + 1) : ℚ) / 6

end

end A229535.P7859145804984459825

namespace A229535

/-- `A269036(n+1)/6` -/
def P7859145804984459825.Spec : Prop :=
  ∀ n, P7859145804984459825.a n = (A229535 (n + 1) : ℚ)

end A229535

/-!
# A229536: Number of defective 3-colorings of a 3 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229536, the canonical program `A229536.P5536841384269820772` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229536 has offset 1).

The definition of A229536 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 165 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229536.P5536841384269820772

`ogf((20x-62x^2+33x^3+40x^4-3x^5-16x^6+4x^7)/(1-6x+x^2+28x^3+4x^4-16x^5+4x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A229536

/-- `ogf((20x-62x^2+33x^3+40x^4-3x^5-16x^6+4x^7)/(1-6x+x^2+28x^3+4x^4-16x^5+4x^6))` -/
def P5536841384269820772.Spec : Prop :=
  ∀ n, P5536841384269820772.a n = A229536 (n + 1)

theorem P5536841384269820772.correct : P5536841384269820772.Spec := by
  intro n
  simp only [A229536, Nat.add_sub_cancel]

end A229536

/-! ## A229536.P12280701854761783061

`A269037(n+1)/6`
-/

namespace A229536.P12280701854761783061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269037 (n + 1) : ℚ) / 6

end

end A229536.P12280701854761783061

namespace A229536

/-- `A269037(n+1)/6` -/
def P12280701854761783061.Spec : Prop :=
  ∀ n, P12280701854761783061.a n = (A229536 (n + 1) : ℚ)

theorem P12280701854761783061.correct : P12280701854761783061.Spec := by
  intro n
  simp only [A229536, Nat.add_sub_cancel, A229536.P12280701854761783061.a, A229536.P5536841384269820772.a, A269037, A269037.P9438472991931552230.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A229536

/-! ## A229536.P7936131470297263873

`A229534(∑[n+2]+4)`
-/

namespace A229536.P7936131470297263873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229536.P7936131470297263873

namespace A229536

/-- `A229534(∑[n+2]+4)` -/
def P7936131470297263873.Spec : Prop :=
  ∀ n, P7936131470297263873.a n = A229536 (n + 1)

end A229536

/-! ## A229536.P7725898433637437703

`A269035(∑[n+2]+4)/6`
-/

namespace A229536.P7725898433637437703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269035 (∑ j ∈ Finset.range (n + 1), f1 j + 4) : ℚ) / 6

end

end A229536.P7725898433637437703

namespace A229536

/-- `A269035(∑[n+2]+4)/6` -/
def P7725898433637437703.Spec : Prop :=
  ∀ n, P7725898433637437703.a n = (A229536 (n + 1) : ℚ)

end A229536

/-!
# A229537: Number of defective 3-colorings of a 4 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229537, there is no canonical definition to state claims against.
-/

/-! ## A229537.P5042820523271594063

`A269038(n+1)/6`
-/

namespace A229537.P5042820523271594063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269038 (n + 1) : ℚ) / 6

end

end A229537.P5042820523271594063

/-! ## A229537.P8947749317232905578

`A229534(A141214(n)+7)`
-/

namespace A229537.P8947749317232905578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A141214 n + 7).toNat

end

end A229537.P8947749317232905578

/-!
# A229538: Number of defective 3-colorings of a 5 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229538, there is no canonical definition to state claims against.
-/

/-! ## A229538.P8650691361729327101

`A269039(n+1)/6`
-/

namespace A229538.P8650691361729327101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269039 (n + 1) : ℚ) / 6

end

end A229538.P8650691361729327101

/-! ## A229538.P16122341772797291699

`A229534(A155212(n)+13)`
-/

namespace A229538.P16122341772797291699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A155212 n + 13).toNat

end

end A229538.P16122341772797291699

/-!
# A229539: Number of defective 3-colorings of a 6 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229539, there is no canonical definition to state claims against.
-/

/-! ## A229539.P11575406802772802994

`A269040(n+1)/6`
-/

namespace A229539.P11575406802772802994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269040 (n + 1) : ℚ) / 6

end

end A229539.P11575406802772802994

/-! ## A229539.P13211255715806091134

`(A269057(n+1)-A232925(n+1))/6`
-/

namespace A229539.P13211255715806091134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269057 (n + 1) - A232925 (n + 1) : ℚ) / 6

end

end A229539.P13211255715806091134

/-! ## A229539.P1924075555671164607

`A229534(A166136(n+4))`
-/

namespace A229539.P1924075555671164607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A166136 (n + 4)).toNat

end

end A229539.P1924075555671164607

/-!
# A229540: Number of defective 3-colorings of a 7 X n 0..2 array connected horizontally, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229540, there is no canonical definition to state claims against.
-/

/-! ## A229540.P942550428602050452

`A269041(1+n)/6`
-/

namespace A229540.P942550428602050452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269041 (1 + n) : ℚ) / 6

end

end A229540.P942550428602050452

/-! ## A229540.P16810595745518971515

`(A269058(n+1)-A232926(n+1))/6`
-/

namespace A229540.P16810595745518971515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269058 (n + 1) - A232926 (n + 1) : ℚ) / 6

end

end A229540.P16810595745518971515

/-! ## A229540.P9254316241375428367

`A229534(A167487(n+5))`
-/

namespace A229540.P9254316241375428367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229534 (A167487 (n + 5)).toNat

end

end A229540.P9254316241375428367

/-!
# A229541: Number T(n,k) of partitions of n^2 into squares with each number of parts k; irregular triangle T(n,k), 1 <= k <= n^2.

The programs for A229541, there is no canonical definition to state claims against.
-/

/-! ## A229541.P15266842775862203088

`A226912(n+1)^A049541(A244136(n))`
-/

namespace A229541.P15266842775862203088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226912 (n + 1) : ℚ) ^ (A049541 (A244136 n).toNat : ℤ)

end

end A229541.P15266842775862203088

/-! ## A229541.P14905704435377325549

`A047594(A020600(n+1))%2`
-/

namespace A229541.P14905704435377325549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047594 (A020600 (n + 1)).toNat) 2

end

end A229541.P14905704435377325549

/-! ## A229541.P5336805712966717690

`and(1, A090288(n)+A047594(A020600(n+1)))`
-/

namespace A229541.P5336805712966717690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A090288 n + A047594 (A020600 (n + 1)).toNat)

end

end A229541.P5336805712966717690

/-! ## A229541.P15859568931191232669

`A141736(A310455(n))`
-/

namespace A229541.P15859568931191232669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141736 (A310455 n).toNat

end

end A229541.P15859568931191232669

/-!
# A229545: Numbers n such that n + (sum of digits of n) is a palindrome.

The programs for A229545, there is no canonical definition to state claims against.
-/

/-! ## A229545.P5785773652850587769

`eq[0, A261424(A062028(n))]`
-/

namespace A229545.P5785773652850587769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229545.P5785773652850587769

/-! ## A229545.P4264038981754093378

`eq[A062028(n), A261914(A062028(n)+1)]`
-/

namespace A229545.P4264038981754093378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 (A062028 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229545.P4264038981754093378

/-! ## A229545.P4857793624304099028

`eq[A261914(A160939(n+1))+1, A160939(n+1)]`
-/

namespace A229545.P4857793624304099028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261914 (A160939 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160939 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229545.P4857793624304099028

/-! ## A229545.P11221025455166687797

`eq[0, A056965(A062028(n))]`
-/

namespace A229545.P11221025455166687797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229545.P11221025455166687797

/-! ## A229545.P3934322107058767273

`lt[A256756(A007953(n)+n), 1]`
-/

namespace A229545.P3934322107058767273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 (A007953 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A229545.P3934322107058767273

/-! ## A229545.P15537776502897738699

`eq[A050782(A062028(n)), A057427(n)]`
-/

namespace A229545.P15537776502897738699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229545.P15537776502897738699

/-! ## A229545.P16876839855848269835

`lt[A082216(A062028(n)), A008458(n)]`
-/

namespace A229545.P16876839855848269835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229545.P16876839855848269835

/-! ## A229545.P833055869232362467

`record[A047813(A062028(n))-A007953(n)]`
-/

namespace A229545.P833055869232362467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A062028 n).toNat - A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229545.P833055869232362467

/-! ## A229545.P4395651435542401872

`lt[A082216(A062028(n)), A054684(n+1)]`
-/

namespace A229545.P4395651435542401872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229545.P4395651435542401872

/-! ## A229545.P2194773424058748171

`lt[A082216(A062028(n)), A094677(n+1)]`
-/

namespace A229545.P2194773424058748171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094677 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229545.P2194773424058748171

/-! ## A229545.P9726697713530295990

`lt[A082216(A062028(n)), A179085(n+1)]`
-/

namespace A229545.P9726697713530295990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229545.P9726697713530295990

/-! ## A229545.P5280779529455493540

`eq[A019426(2*n), A050782(A062028(n))]`
-/

namespace A229545.P5280779529455493540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229545.P5280779529455493540

/-! ## A229545.P7349995158292600309

`lt[A082216(A062028(n)), A062028(2*n+1)]`
-/

namespace A229545.P7349995158292600309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082216 (A062028 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062028 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229545.P7349995158292600309

/-!
# A229546: Numbers n such that n + product_of_digits(n) is a palindrome.

The programs for A229546, there is no canonical definition to state claims against.
-/

/-! ## A229546.P16087755075094386851

`eq[1, A261913(A230099(n))]`
-/

namespace A229546.P16087755075094386851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261913 (A230099 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229546.P16087755075094386851

/-! ## A229546.P12848691818348959498

`eq[A007954(n)+n, A004086(A007954(n)+n)]`
-/

namespace A229546.P12848691818348959498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A007954 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229546.P12848691818348959498

/-! ## A229546.P13107421980069299391

`eq[0, A241173(A230099(n))]`
-/

namespace A229546.P13107421980069299391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241173 (A230099 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229546.P13107421980069299391

/-! ## A229546.P15583484725267095097

`eq[A050782(A230099(n)), A057427(n)]`
-/

namespace A229546.P15583484725267095097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 (A230099 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229546.P15583484725267095097

/-! ## A229546.P8147971638191616686

`record[A047813(A230099(n))-A007954(n)]`
-/

namespace A229546.P8147971638191616686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A230099 n).toNat - A007954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229546.P8147971638191616686

/-!
# A229547: Numbers n such that n - product_of_digits(n) is a palindrome.

The programs for A229547, there is no canonical definition to state claims against.
-/

/-! ## A229547.P13998385846224400024

`eq[A004086(A070565(n)), A070565(n)]`
-/

namespace A229547.P13998385846224400024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A070565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229547.P13998385846224400024

/-! ## A229547.P8047125328915212277

`eq[n-∏{digits}[n, #], A033865(n-∏{digits}[n, #])]`
-/

namespace A229547.P8047125328915212277
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (n - ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).prod)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A229547.P8047125328915212277

/-! ## A229547.P10311432924170265644

`eq[A337227(A007954(n)), A337227(n)]`
-/

namespace A229547.P10311432924170265644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337227 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337227 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229547.P10311432924170265644

/-! ## A229547.P1369849094000689849

`eq[A053392(A116608(n+1)), A053392(n)]`
-/

namespace A229547.P1369849094000689849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 (A116608 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053392 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229547.P1369849094000689849

/-! ## A229547.P8643690827849322827

`eq[A007318(A007318(n)), A360257(2*(n+1))]`
-/

namespace A229547.P8643690827849322827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007318 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360257 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229547.P8643690827849322827

/-!
# A229548: E.g.f. satisfies: A(x) = x + A'(x) * Integral A(x) dx.

The programs for A229548, there is no canonical definition to state claims against.
-/

/-! ## A229548.P6778709135408044461

`A184359(n)+A025463(A184361(n))`
-/

namespace A229548.P6778709135408044461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184359 n + A025463 (A184361 n).toNat

end

end A229548.P6778709135408044461

/-! ## A229548.P8658618435752151063

`A260432(A121413(n)-A230040(n+1))`
-/

namespace A229548.P8658618435752151063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260432 (A121413 n - A230040 (n + 1)).toNat

end

end A229548.P8658618435752151063

/-!
# A229549: Numbers k such that k*(sum of digits of k) is a palindrome.

The programs for A229549, there is no canonical definition to state claims against.
-/

/-! ## A229549.P13783960779252687079

`eq[A004086(A057147(n)), A057147(n)]`
-/

namespace A229549.P13783960779252687079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A057147 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057147 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229549.P13783960779252687079

/-! ## A229549.P8823679936076060571

`eq[0, A261424(A057147(n))]`
-/

namespace A229549.P8823679936076060571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A057147 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229549.P8823679936076060571

/-! ## A229549.P4351903441805922406

`lt[A261424(A057147(n)), A054977(n)]`
-/

namespace A229549.P4351903441805922406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 (A057147 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A229549.P4351903441805922406

/-! ## A229549.P3601835619069227461

`eq[1, A136522(n*A007953(n))]`
-/

namespace A229549.P3601835619069227461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 ((n : ℤ) * A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229549.P3601835619069227461

/-! ## A229549.P4980645804214010789

`lt[A256756(n*A007953(n)), 1]`
-/

namespace A229549.P4980645804214010789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 ((n : ℤ) * A007953 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A229549.P4980645804214010789

/-!
# A229550: Numbers n with nonzero digits such that n*(product of digits of n) is a palindrome.

The programs for A229550, there is no canonical definition to state claims against.
-/

/-! ## A229550.P10820371245516144081

`eq[A168046(n), A261913(A098736(n))]`
-/

namespace A229550.P10820371245516144081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261913 (A098736 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229550.P10820371245516144081

/-! ## A229550.P12951531952434760679

`eq[A168046(n), A261913(A230101(n))]`
-/

namespace A229550.P12951531952434760679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261913 (A230101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229550.P12951531952434760679

/-! ## A229550.P13468948483676265145

`eq[1, A050782(A098736(n))]`
-/

namespace A229550.P13468948483676265145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050782 (A098736 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A229550.P13468948483676265145

/-! ## A229550.P107912232184915336

`eq[A052036(A098736(n)), A055641(n)]`
-/

namespace A229550.P107912232184915336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052036 (A098736 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229550.P107912232184915336

/-! ## A229550.P17961430622237013300

`eq[A055641(n), A056965(A230101(n))]`
-/

namespace A229550.P17961430622237013300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A230101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A229550.P17961430622237013300

/-!
# A229551: Number of 1 up, 1 down, 2 up, 2 down, ... permutations of [n].

The programs for A229551, there is no canonical definition to state claims against.
-/

/-! ## A229551.P2732990277161857086

`A004396(A284009(n!))`
-/

namespace A229551.P2732990277161857086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A284009 (Nat.factorial n)).toNat

end

end A229551.P2732990277161857086

/-! ## A229551.P178464420542175056

`A225636(n)+A097203(A001003(n))`
-/

namespace A229551.P178464420542175056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225636 n + A097203 (A001003 n).toNat

end

end A229551.P178464420542175056

/-! ## A229551.P5925568144694382724

`A368795(A002628(n))+A048720(n)`
-/

namespace A229551.P5925568144694382724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368795 (A002628 n).toNat + A048720 n

end

end A229551.P5925568144694382724

/-! ## A229551.P1104423258901889154

`A025452(A001803(n)-A000332(n))`
-/

namespace A229551.P1104423258901889154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 (A001803 n - A000332 n).toNat

end

end A229551.P1104423258901889154

/-!
# A229552: Numbers k such that phi(k) = phi(k+2) - phi(k+1).

The programs for A229552, there is no canonical definition to state claims against.
-/

/-! ## A229552.P131651528149367970

`A065557(n+1)-2`
-/

namespace A229552.P131651528149367970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065557 (n + 1) - 2

end

end A229552.P131651528149367970

/-! ## A229552.P13971682477527126252

`A076529(n+1)-1`
-/

namespace A229552.P13971682477527126252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076529 (n + 1) - 1

end

end A229552.P13971682477527126252

/-! ## A229552.P7109547865377506824

`abs(1-A076529(Δ[n²]-n))`
-/

namespace A229552.P7109547865377506824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A076529 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A229552.P7109547865377506824

/-! ## A229552.P12881741605018917141

`record[A076529(A152271(n))-1]`
-/

namespace A229552.P12881741605018917141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076529 (A152271 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229552.P12881741605018917141

/-! ## A229552.P9378717314016009432

`A325962(A076529(n+1))`
-/

namespace A229552.P9378717314016009432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325962 (A076529 (n + 1)).toNat

end

end A229552.P9378717314016009432

/-!
# A229554: a(n) = 7*n! + 1.

The programs for A229554, the canonical program `A229554.P11068478950048054241` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229554 has offset 0).

The definition of A229554 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7*n!+1` (program `A229554.P11068478950048054241`, by `A229554.P11068478950048054241.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A229554.P11068478950048054241

`7*n!+1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A229554

/-- `7*n!+1` -/
def P11068478950048054241.Spec : Prop :=
  ∀ n, (P11068478950048054241.a n : ℤ) = A229554 n

theorem P11068478950048054241.correct : P11068478950048054241.Spec := by
  intro n
  simp only [A229554]

end A229554

/-! ## A229554.P4260018515214820966

`n*a(n-1)-n+1` with `a(0)=8`
-/

namespace A229554.P4260018515214820966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  (n : ℤ) * a (n - 1) - (n : ℤ) + 1

end

end A229554.P4260018515214820966

namespace A229554

/-- `n*a(n-1)-n+1` -/
def P4260018515214820966.Spec : Prop :=
  ∀ n, P4260018515214820966.a n = A229554 n

end A229554

/-! ## A229554.P228486066137172213

`7*A000142(n)+1`
-/

namespace A229554.P228486066137172213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A000142 n + 1

end

end A229554.P228486066137172213

namespace A229554

/-- `7*A000142(n)+1` -/
def P228486066137172213.Spec : Prop :=
  ∀ n, P228486066137172213.a n = A229554 n

theorem P228486066137172213.correct : P228486066137172213.Spec := by
  intro n
  simp only [A229554, Nat.add_sub_cancel, A229554.P228486066137172213.a, A229554.P11068478950048054241.a, A000142, A000142.P3272619076580183195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A229554

/-! ## A229554.P17677541076425492798

`8-7*(1-n!)`
-/

namespace A229554.P17677541076425492798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 - 7 * (1 - (Nat.factorial n : ℤ))

end

end A229554.P17677541076425492798

namespace A229554

/-- `8-7*(1-n!)` -/
def P17677541076425492798.Spec : Prop :=
  ∀ n, P17677541076425492798.a n = A229554 n

theorem P17677541076425492798.correct : P17677541076425492798.Spec := by
  intro n
  simp only [A229554, Nat.add_sub_cancel, A229554.P17677541076425492798.a, A229554.P11068478950048054241.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A229554

/-! ## A229554.P1554454763798539034

`n*(a(n-1)-1)+1` with `a(0)=8`
-/

namespace A229554.P1554454763798539034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  (n : ℤ) * (a (n - 1) - 1) + 1

end

end A229554.P1554454763798539034

namespace A229554

/-- `n*(a(n-1)-1)+1` -/
def P1554454763798539034.Spec : Prop :=
  ∀ n, P1554454763798539034.a n = A229554 n

end A229554

/-! ## A229554.P16049152032468361353

`1-n*(1-a(n-1))` with `a(0)=8`
-/

namespace A229554.P16049152032468361353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  1 - (n : ℤ) * (1 - a (n - 1))

end

end A229554.P16049152032468361353

namespace A229554

/-- `1-n*(1-a(n-1))` -/
def P16049152032468361353.Spec : Prop :=
  ∀ n, P16049152032468361353.a n = A229554 n

end A229554

/-! ## A229554.P10852273999245741404

`A229828(n)+2`
-/

namespace A229554.P10852273999245741404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229828 n + 2

end

end A229554.P10852273999245741404

namespace A229554

/-- `A229828(n)+2` -/
def P10852273999245741404.Spec : Prop :=
  ∀ n, P10852273999245741404.a n = A229554 n

theorem P10852273999245741404.correct : P10852273999245741404.Spec := by
  intro n
  simp only [A229554, Nat.add_sub_cancel, A229554.P10852273999245741404.a, A229554.P11068478950048054241.a, A229828, A229828.P17206763324925191026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A229554

/-! ## A229554.P16610977812332626504

`A062098(n+1)/(n+1)+1`
-/

namespace A229554.P16610977812332626504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062098 (n + 1) : ℚ) / (n + 1 : ℚ) + 1

end

end A229554.P16610977812332626504

namespace A229554

/-- `A062098(n+1)/(n+1)+1` -/
def P16610977812332626504.Spec : Prop :=
  ∀ n, P16610977812332626504.a n = (A229554 n : ℚ)

end A229554

/-!
# A229556: Array read by antidiagonals. Rows are the numerators of consecutive harmonic transforms starting with a first row 1, 1, 1, ....

The programs for A229556, there is no canonical definition to state claims against.
-/

/-! ## A229556.P4113928563070914485

`A125186(A130749(n))`
-/

namespace A229556.P4113928563070914485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125186 (A130749 n).toNat

end

end A229556.P4113928563070914485

/-! ## A229556.P18417414221752074149

`A119704(A211318(n+1))`
-/

namespace A229556.P18417414221752074149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119704 (A211318 (n + 1)).toNat

end

end A229556.P18417414221752074149

/-!
# A229558: E.g.f.: exp(x) / (2 - exp(4*x))^(1/4).

The programs for A229558, there is no canonical definition to state claims against.
-/

/-! ## A229558.P4160016770008592629

`2^n*A276371(n)`
-/

namespace A229558.P4160016770008592629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A276371 n

end

end A229558.P4160016770008592629

/-! ## A229558.P1817980096689156577

`lcm(A000079(n), A276371(n))`
-/

namespace A229558.P1817980096689156577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A276371 n)

end

end A229558.P1817980096689156577

/-! ## A229558.P6648132094221608109

`abs(A171449(n)*A276371(n))`
-/

namespace A229558.P6648132094221608109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A171449 n * A276371 n|

end

end A229558.P6648132094221608109

/-! ## A229558.P4730406677102510399

`A000079(n+1)*A276371(n)/2`
-/

namespace A229558.P4730406677102510399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A276371 n : ℚ) / 2

end

end A229558.P4730406677102510399

/-! ## A229558.P16761572688301625722

`A171449(n+1)*A276371(n)/2`
-/

namespace A229558.P16761572688301625722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171449 (n + 1) * A276371 n : ℚ) / 2

end

end A229558.P16761572688301625722

/-! ## A229558.P8197917565789498940

`lcm(A122803(n), A276371(A028310(n)))`
-/

namespace A229558.P8197917565789498940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A122803 n) (A276371 (A028310 n).toNat)

end

end A229558.P8197917565789498940

/-! ## A229558.P9380432408858599263

`A276371(n)+A000225(n)*A276371(n)`
-/

namespace A229558.P9380432408858599263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276371 n + A000225 n * A276371 n

end

end A229558.P9380432408858599263

/-!
# A229559: E.g.f. A(x) satisfies: A'(x) = A(x) - A(x)^2 + A(x)^3.

The programs for A229559, there is no canonical definition to state claims against.
-/

/-! ## A229559.P13815529039370735095

`A285758(A308878(n))`
-/

namespace A229559.P13815529039370735095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285758 (A308878 n).toNat

end

end A229559.P13815529039370735095

/-! ## A229559.P2785724714566063893

`A098098(A326351(n))-A053692(n+3)`
-/

namespace A229559.P2785724714566063893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098098 (A326351 n).toNat - A053692 (n + 3)

end

end A229559.P2785724714566063893

/-!
# A229560: Number of arrays of length n that are sums of 2 consecutive elements of length n+1 permutations of 0..n.

The programs for A229560, there is no canonical definition to state claims against.
-/

/-! ## A229560.P12676860721908646904

`A229565(∑[2+n])`
-/

namespace A229560.P12676860721908646904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229560.P12676860721908646904

/-! ## A229560.P3025405179517436329

`record[A229565(A061579(n+2))]`
-/

namespace A229560.P3025405179517436329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A061579 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229560.P3025405179517436329

/-! ## A229560.P629742401246724251

`record[A229565(gcd(n, A055830(n)))]`
-/

namespace A229560.P629742401246724251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (Int.gcd (n : ℤ) (A055830 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229560.P629742401246724251

/-! ## A229560.P14072322685921630929

`record[A115526(n)*A229565(n+1)]`
-/

namespace A229560.P14072322685921630929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115526 n * A229565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229560.P14072322685921630929

/-! ## A229560.P3463627267867300033

`record[A129186(n)*A229565(n+1)]`
-/

namespace A229560.P3463627267867300033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129186 n * A229565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229560.P3463627267867300033

/-!
# A229561: Number of arrays of length n that are sums of 3 consecutive elements of length n+2 permutations of 0..n+1.

The programs for A229561, there is no canonical definition to state claims against.
-/

/-! ## A229561.P18284202129187587249

`A229565(∑[n+3]+1)`
-/

namespace A229561.P18284202129187587249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229561.P18284202129187587249

/-! ## A229561.P17868654373720674013

`record[A229565(A198464(n+1))]`
-/

namespace A229561.P17868654373720674013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229561.P17868654373720674013

/-! ## A229561.P6562213297717358037

`record[A229565(abs(A255878(n+1)))]`
-/

namespace A229561.P6562213297717358037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 |A255878 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229561.P6562213297717358037

/-! ## A229561.P4820842460228898857

`record[and(A049310(n), A229565(n+1))]`
-/

namespace A229561.P4820842460228898857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049310 n) (A229565 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229561.P4820842460228898857

/-! ## A229561.P6447242790861577419

`record[A229565(n+1)/A193685(n+2)]`
-/

namespace A229561.P6447242790861577419
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229565 (n + 1) : ℚ) / (A193685 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229561.P6447242790861577419

/-!
# A229562: Number of arrays of length n that are sums of 4 consecutive elements of length n+3 permutations of 0..n+2.

The programs for A229562, there is no canonical definition to state claims against.
-/

/-! ## A229562.P11933229462361252100

`record[A229565(A019304(n))]`
-/

namespace A229562.P11933229462361252100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A019304 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229562.P11933229462361252100

/-! ## A229562.P16148828370178950762

`A229565(A141214(n+1))`
-/

namespace A229562.P16148828370178950762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A141214 (n + 1)).toNat

end

end A229562.P16148828370178950762

/-!
# A229563: Number of arrays of length n that are sums of 5 consecutive elements of length n+4 permutations of 0..n+3.

The programs for A229563, there is no canonical definition to state claims against.
-/

/-! ## A229563.P12406407369241604359

`A229565(Δ[A264443(n)])`
-/

namespace A229563.P12406407369241604359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (f1 (n + 1) - f1 n).toNat

end

end A229563.P12406407369241604359

/-!
# A229564: Number of arrays of length n that are sums of 6 consecutive elements of length n+5 permutations of 0..n+4.

The programs for A229564, there is no canonical definition to state claims against.
-/

/-! ## A229564.P2761144733711765490

`A229565(A052905(3+n))`
-/

namespace A229564.P2761144733711765490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A052905 (3 + n)).toNat

end

end A229564.P2761144733711765490

/-!
# A229565: T(n,k) = number of arrays of length n that are sums of k consecutive elements of length n+k-1 permutations of 0..n+k-2.

The programs for A229565, there is no canonical definition to state claims against.
-/

/-! ## A229565.P13464533673938023541

`A046651(n)-A092707(A291680(n))`
-/

namespace A229565.P13464533673938023541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046651 n - A092707 (A291680 n).toNat

end

end A229565.P13464533673938023541

/-! ## A229565.P17156843446966655787

`A234613(A108556(n*A250662(n)))`
-/

namespace A229565.P17156843446966655787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A108556 ((n : ℤ) * A250662 n).toNat).toNat

end

end A229565.P17156843446966655787

/-!
# A229566: Number of arrays of length 3 that are sums of n consecutive elements of length 3+n-1 permutations of 0..3+n-2.

The programs for A229566, there is no canonical definition to state claims against.
-/

/-! ## A229566.P9832992030653559931

`A229565(∑[n+2]+4)`
-/

namespace A229566.P9832992030653559931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229566.P9832992030653559931

/-!
# A229567: Number of arrays of length 4 that are sums of n consecutive elements of length 4+n-1 permutations of 0..4+n-2.

The programs for A229567, there is no canonical definition to state claims against.
-/

/-! ## A229567.P5574885178701235826

`A229565(∑[n+3]+7)`
-/

namespace A229567.P5574885178701235826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A229567.P5574885178701235826

/-!
# A229568: Number of arrays of length 5 that are sums of n consecutive elements of length 5+n-1 permutations of 0..5+n-2.

The programs for A229568, there is no canonical definition to state claims against.
-/

/-! ## A229568.P1188395713335372464

`A229565(A167499(n+3))`
-/

namespace A229568.P1188395713335372464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A167499 (n + 3)).toNat

end

end A229568.P1188395713335372464

/-!
# A229569: Number of arrays of length 6 that are sums of n consecutive elements of length 6+n-1 permutations of 0..6+n-2.

The programs for A229569, there is no canonical definition to state claims against.
-/

/-! ## A229569.P6876684917814679944

`A229565(A166136(n+4))`
-/

namespace A229569.P6876684917814679944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (A166136 (n + 4)).toNat

end

end A229569.P6876684917814679944

/-!
# A229570: Primes of form p*q + 30, where p and q are consecutive primes.

The programs for A229570, there is no canonical definition to state claims against.
-/

/-! ## A229570.P10518562148496274770

`p?[A023523(n+1)+29]`
-/

namespace A229570.P10518562148496274770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 1) + 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229570.P10518562148496274770

/-! ## A229570.P956676678926623685

`p?[A006094(n+1)+30]`
-/

namespace A229570.P956676678926623685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229570.P956676678926623685

/-! ## A229570.P18000593956675685371

`p?[A023515(n+1)+31]`
-/

namespace A229570.P18000593956675685371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023515 (n + 1) + 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229570.P18000593956675685371

/-! ## A229570.P12654954368744621322

`p?[A124669(n+1)+32]`
-/

namespace A229570.P12654954368744621322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124669 (n + 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229570.P12654954368744621322

/-! ## A229570.P4078726368525312960

`p?[A116570(2*n)+30]`
-/

namespace A229570.P4078726368525312960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (2 * n) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229570.P4078726368525312960

/-! ## A229570.P13832478753734332475

`p?[A033476(2*n+1)+30]`
-/

namespace A229570.P13832478753734332475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n + 1) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229570.P13832478753734332475

/-! ## A229570.P18040649430016086575

`p?[A057602(A005408(n))+30]`
-/

namespace A229570.P18040649430016086575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057602 (A005408 n).toNat + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229570.P18040649430016086575

/-! ## A229570.P12236252216097569323

`p?[A000040(n+1)*A000040(n+2)+30]`
-/

namespace A229570.P12236252216097569323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (n + 2) + 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A229570.P12236252216097569323

/-!
# A229571: Number of defective 4-colorings of an n X n 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229571, there is no canonical definition to state claims against.
-/

/-! ## A229571.P5555568775682075242

`A229578((n+1)²+n²)`
-/

namespace A229571.P5555568775682075242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 ((n + 1) ^ 2 + n ^ 2)

end

end A229571.P5555568775682075242

/-!
# A229572: Number of defective 4-colorings of an n X 2 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229572, the canonical program `A229572.P8736048714096368551` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229572 has offset 1).

The definition of A229572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229572.P580077573078693646

`ogf((1+2x+6x^2)/(1-4x+4x^2))`
-/

namespace A229572.P580077573078693646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 6] [1, -4, 4] n

end

end A229572.P580077573078693646

namespace A229572

/-- `ogf((1+2x+6x^2)/(1-4x+4x^2))` -/
def P580077573078693646.Spec : Prop :=
  ∀ n, P580077573078693646.a n = A229572 (n + 1)

end A229572

/-! ## A229572.P1512390002542289883

`A135092(n)+2*a(n-1)` with `a(0)=1, a(1)=6`
-/

namespace A229572.P1512390002542289883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A135092 n + 2 * a (n - 1)

end

end A229572.P1512390002542289883

namespace A229572

/-- `A135092(n)+2*a(n-1)` -/
def P1512390002542289883.Spec : Prop :=
  ∀ n, P1512390002542289883.a n = A229572 (n + 1)

end A229572

/-! ## A229572.P8736048714096368551

`abs((1-n-6*n)*A011782(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A229572

/-- `abs((1-n-6*n)*A011782(n))` -/
def P8736048714096368551.Spec : Prop :=
  ∀ n, P8736048714096368551.a n = A229572 (n + 1)

theorem P8736048714096368551.correct : P8736048714096368551.Spec := by
  intro n
  simp only [A229572, Nat.add_sub_cancel]

end A229572

/-! ## A229572.P13194268510226003558

`A053208(n)+2*(a(n-1)+2)` with `a(0)=1, a(1)=6`
-/

namespace A229572.P13194268510226003558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A053208 n + 2 * (a (n - 1) + 2)

end

end A229572.P13194268510226003558

namespace A229572

/-- `A053208(n)+2*(a(n-1)+2)` -/
def P13194268510226003558.Spec : Prop :=
  ∀ n, P13194268510226003558.a n = A229572 (n + 1)

end A229572

/-! ## A229572.P17364781795246004116

`(A016777(comp[2*(n+1)])+1+n)*2^(n-1)`
-/

namespace A229572.P17364781795246004116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016777 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1 + (n : ℤ) : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A229572.P17364781795246004116

namespace A229572

/-- `(A016777(comp[2*(n+1)])+1+n)*2^(n-1)` -/
def P17364781795246004116.Spec : Prop :=
  ∀ n, P17364781795246004116.a n = (A229572 (n + 1) : ℚ)

end A229572

/-! ## A229572.P9946167647074988819

`xor(1, A048478(n)-A011782(n))`
-/

namespace A229572.P9946167647074988819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A048478 n - A011782 n)

end

end A229572.P9946167647074988819

namespace A229572

/-- `xor(1, A048478(n)-A011782(n))` -/
def P9946167647074988819.Spec : Prop :=
  ∀ n, P9946167647074988819.a n = A229572 (n + 1)

end A229572

/-! ## A229572.P2616445177101676052

`(2*A008574(n)-(n+1))*A166444(n+1)`
-/

namespace A229572.P2616445177101676052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A008574 n - (n + 1 : ℤ)) * A166444 (n + 1)

end

end A229572.P2616445177101676052

namespace A229572

/-- `(2*A008574(n)-(n+1))*A166444(n+1)` -/
def P2616445177101676052.Spec : Prop :=
  ∀ n, P2616445177101676052.a n = A229572 (n + 1)

end A229572

/-! ## A229572.P12761437383367771817

`A011782(n)*A047336(A004277(n))`
-/

namespace A229572.P12761437383367771817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A047336 (A004277 n).toNat

end

end A229572.P12761437383367771817

namespace A229572

/-- `A011782(n)*A047336(A004277(n))` -/
def P12761437383367771817.Spec : Prop :=
  ∀ n, P12761437383367771817.a n = A229572 (n + 1)

end A229572

/-! ## A229572.P14182428006548484030

`A011782(n)*A047290(A008486(n))`
-/

namespace A229572.P14182428006548484030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A047290 (A008486 n).toNat

end

end A229572.P14182428006548484030

namespace A229572

/-- `A011782(n)*A047290(A008486(n))` -/
def P14182428006548484030.Spec : Prop :=
  ∀ n, P14182428006548484030.a n = A229572 (n + 1)

end A229572

/-! ## A229572.P11795764926409550149

`A011782(n)*A047298(A008574(n))`
-/

namespace A229572.P11795764926409550149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A047298 (A008574 n).toNat

end

end A229572.P11795764926409550149

namespace A229572

/-- `A011782(n)*A047298(A008574(n))` -/
def P11795764926409550149.Spec : Prop :=
  ∀ n, P11795764926409550149.a n = A229572 (n + 1)

end A229572

/-! ## A229572.P11858276232233356875

`(A008706(n)+A004273(n))*A011782(n)`
-/

namespace A229572.P11858276232233356875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008706 n + A004273 n) * A011782 n

end

end A229572.P11858276232233356875

namespace A229572

/-- `(A008706(n)+A004273(n))*A011782(n)` -/
def P11858276232233356875.Spec : Prop :=
  ∀ n, P11858276232233356875.a n = A229572 (n + 1)

end A229572

/-! ## A229572.P8016494874038051544

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=6, a(2)=26`
-/

namespace A229572.P8016494874038051544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 26] fun n a =>
  4 * a (n - 1) - 4 * a (n - 2)

end

end A229572.P8016494874038051544

namespace A229572

/-- `4*a(n-1)-4*a(n-2)` -/
def P8016494874038051544.Spec : Prop :=
  ∀ n, P8016494874038051544.a n = A229572 (n + 1)

end A229572

/-! ## A229572.P5393010400702924649

`A241204(n)-(n+1)*A131577(n)`
-/

namespace A229572.P5393010400702924649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241204 n - (n + 1 : ℤ) * A131577 n

end

end A229572.P5393010400702924649

namespace A229572

/-- `A241204(n)-(n+1)*A131577(n)` -/
def P5393010400702924649.Spec : Prop :=
  ∀ n, P5393010400702924649.a n = A229572 (n + 1)

end A229572

/-!
# A229573: Number of defective 4-colorings of an n X 3 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229573, the canonical program `A229573.P8989098536119164596` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229573 has offset 1).

The definition of A229573 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229573.P6029363285097843563

`ogf((2+14x-54x^2+29x^3+20x^4)/(1-6x+13x^2-12x^3+4x^4))`
-/

namespace A229573.P6029363285097843563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 14, -54, 29, 20] [1, -6, 13, -12, 4] n

end

end A229573.P6029363285097843563

namespace A229573

/-- `ogf((2+14x-54x^2+29x^3+20x^4)/(1-6x+13x^2-12x^3+4x^4))` -/
def P6029363285097843563.Spec : Prop :=
  ∀ n, P6029363285097843563.a n = A229573 (n + 1)

end A229573

/-! ## A229573.P8989098536119164596

`6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` with `a(0)=2, a(1)=26, a(2)=76, a(3)=171, a(4)=362`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A229573

/-- `6*a(n-1)-13*a(n-2)+12*a(n-3)-4*a(n-4)` -/
def P8989098536119164596.Spec : Prop :=
  ∀ n, P8989098536119164596.a n = A229573 (n + 1)

theorem P8989098536119164596.correct : P8989098536119164596.Spec := by
  intro n
  simp only [A229573, Nat.add_sub_cancel]

end A229573

/-! ## A229573.P12465655381867762031

`A229578(∑[n+2]+4)`
-/

namespace A229573.P12465655381867762031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229573.P12465655381867762031

namespace A229573

/-- `A229578(∑[n+2]+4)` -/
def P12465655381867762031.Spec : Prop :=
  ∀ n, P12465655381867762031.a n = A229573 (n + 1)

end A229573

/-!
# A229574: Number of defective 4-colorings of an n X 4 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229574, there is no canonical definition to state claims against.
-/

/-! ## A229574.P7693883952510780084

`A229578(A374004(n+1))`
-/

namespace A229574.P7693883952510780084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A374004 (n + 1)).toNat

end

end A229574.P7693883952510780084

/-!
# A229575: Number of defective 4-colorings of an n X 5 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229575, there is no canonical definition to state claims against.
-/

/-! ## A229575.P3816849532692951513

`A229578(A374005(n+1))`
-/

namespace A229575.P3816849532692951513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A374005 (n + 1)).toNat

end

end A229575.P3816849532692951513

/-!
# A229576: Number of defective 4-colorings of an n X 6 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229576, there is no canonical definition to state claims against.
-/

/-! ## A229576.P10775209385935047592

`A229578(A374007(n+1))`
-/

namespace A229576.P10775209385935047592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A374007 (n + 1)).toNat

end

end A229576.P10775209385935047592

/-!
# A229577: Number of defective 4-colorings of an n X 7 0..3 array connected horizontally, vertically, diagonally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..3 order.

The programs for A229577, there is no canonical definition to state claims against.
-/

/-! ## A229577.P1292048030406431633

`A229578(A374008(n+1))`
-/

namespace A229577.P1292048030406431633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229578 (A374008 (n + 1)).toNat

end

end A229577.P1292048030406431633

/-!
# A229579: Number of defective 3-colorings of an n X n 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229579, there is no canonical definition to state claims against.
-/

/-! ## A229579.P3224906779149506569

`A268897(n+1)/6`
-/

namespace A229579.P3224906779149506569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268897 (n + 1) : ℚ) / 6

end

end A229579.P3224906779149506569

/-! ## A229579.P9395868402195630782

`A229586(∑[4*n]+1)`
-/

namespace A229579.P9395868402195630782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229579.P9395868402195630782

/-! ## A229579.P15865119025794955331

`A268904(1+2*n*(n+1))/6`
-/

namespace A229579.P15865119025794955331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268904 (1 + 2 * n * (n + 1)) : ℚ) / 6

end

end A229579.P15865119025794955331

/-! ## A229579.P12080092802858574329

`record[A003982(n)*A268904(n+1)/6]`
-/

namespace A229579.P12080092802858574329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003982 n * A268904 (n + 1) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229579.P12080092802858574329

/-!
# A229580: Number of defective 3-colorings of an n X 2 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229580, the canonical program `A229580.P1563403694311787037` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229580 has offset 1).

The definition of A229580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229580.P1563403694311787037

`4*a(n-1)+4^n` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A229580

/-- `4*a(n-1)+4^n` -/
def P1563403694311787037.Spec : Prop :=
  ∀ n, (P1563403694311787037.a n : ℤ) = A229580 (n + 1)

theorem P1563403694311787037.correct : P1563403694311787037.Spec := by
  intro n
  simp only [A229580, Nat.add_sub_cancel]

end A229580

/-! ## A229580.P3082379068023835262

`ogf((1-2x+8x^2)/(1-8x+16x^2))`
-/

namespace A229580.P3082379068023835262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 8] [1, -8, 16] n

end

end A229580.P3082379068023835262

namespace A229580

/-- `ogf((1-2x+8x^2)/(1-8x+16x^2))` -/
def P3082379068023835262.Spec : Prop :=
  ∀ n, P3082379068023835262.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P3396086381654646092

`ceil((1/2+n)*4^n)`
-/

namespace A229580.P3396086381654646092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 : ℚ) / 2 + (n : ℚ)) * (4 ^ n : ℚ)⌉

end

end A229580.P3396086381654646092

namespace A229580

/-- `ceil((1/2+n)*4^n)` -/
def P3396086381654646092.Spec : Prop :=
  ∀ n, P3396086381654646092.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P17865121883398310994

`lcm(ceil(4^n/2), Δ[n²])`
-/

namespace A229580.P17865121883398310994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(4 ^ n : ℚ) / 2⌉ ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A229580.P17865121883398310994

namespace A229580

/-- `lcm(ceil(4^n/2), Δ[n²])` -/
def P17865121883398310994.Spec : Prop :=
  ∀ n, (P17865121883398310994.a n : ℤ) = A229580 (n + 1)

end A229580

/-! ## A229580.P12837936495289327546

`record[lcm(xor(1, n), ceil(2^(n-1)))]`
-/

namespace A229580.P12837936495289327546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.xor 1 n : ℤ) ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229580.P12837936495289327546

namespace A229580

/-- `record[lcm(xor(1, n), ceil(2^(n-1)))]` -/
def P12837936495289327546.Spec : Prop :=
  ∀ n, (P12837936495289327546.a n : ℤ) = A229580 (n + 1)

end A229580

/-! ## A229580.P8227597828030848434

`record[(n*2^(n-2))^(n%2)]`
-/

namespace A229580.P8227597828030848434
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) ^ (n % 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229580.P8227597828030848434

namespace A229580

/-- `record[(n*2^(n-2))^(n%2)]` -/
def P8227597828030848434.Spec : Prop :=
  ∀ n, P8227597828030848434.a n = (A229580 (n + 1) : ℚ)

end A229580

/-! ## A229580.P2607681916960650402

`record[C(xor(1, n), n)*ceil(2^(n-1))]`
-/

namespace A229580.P2607681916960650402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Nat.xor 1 n) n : ℤ) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229580.P2607681916960650402

namespace A229580

/-- `record[C(xor(1, n), n)*ceil(2^(n-1))]` -/
def P2607681916960650402.Spec : Prop :=
  ∀ n, P2607681916960650402.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P17051008895686753939

`A057711(Δ[n²])`
-/

namespace A229580.P17051008895686753939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057711 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A229580.P17051008895686753939

namespace A229580

/-- `A057711(Δ[n²])` -/
def P17051008895686753939.Spec : Prop :=
  ∀ n, P17051008895686753939.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P7881241135356801415

`A129952(Δ[n²])`
-/

namespace A229580.P7881241135356801415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129952 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A229580.P7881241135356801415

namespace A229580

/-- `A129952(Δ[n²])` -/
def P7881241135356801415.Spec : Prop :=
  ∀ n, P7881241135356801415.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P14224132208453568033

`A383608(Δ[n²])`
-/

namespace A229580.P14224132208453568033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383608 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A229580.P14224132208453568033

namespace A229580

/-- `A383608(Δ[n²])` -/
def P14224132208453568033.Spec : Prop :=
  ∀ n, P14224132208453568033.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P365401949261112564

`A262258(4*n+1)`
-/

namespace A229580.P365401949261112564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262258 (4 * n + 1)

end

end A229580.P365401949261112564

namespace A229580

/-- `A262258(4*n+1)` -/
def P365401949261112564.Spec : Prop :=
  ∀ n, P365401949261112564.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P1935788571771104191

`Δ[n²]*A081294(n)`
-/

namespace A229580.P1935788571771104191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A081294 n

end

end A229580.P1935788571771104191

namespace A229580

/-- `Δ[n²]*A081294(n)` -/
def P1935788571771104191.Spec : Prop :=
  ∀ n, P1935788571771104191.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P13678416366460804416

`abs(Δ[n²]*A009117(n))`
-/

namespace A229580.P13678416366460804416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A009117 n|

end

end A229580.P13678416366460804416

namespace A229580

/-- `abs(Δ[n²]*A009117(n))` -/
def P13678416366460804416.Spec : Prop :=
  ∀ n, P13678416366460804416.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P1353742385517249571

`2^n*A128135(n+1)`
-/

namespace A229580.P1353742385517249571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A128135 (n + 1)

end

end A229580.P1353742385517249571

namespace A229580

/-- `2^n*A128135(n+1)` -/
def P1353742385517249571.Spec : Prop :=
  ∀ n, P1353742385517249571.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P3053128170989271579

`(2*n+1)*A011782(2*n)`
-/

namespace A229580.P3053128170989271579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A011782 (2 * n)

end

end A229580.P3053128170989271579

namespace A229580

/-- `(2*n+1)*A011782(2*n)` -/
def P3053128170989271579.Spec : Prop :=
  ∀ n, P3053128170989271579.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P7379192867653252833

`(2*n+1)*A084633(2*n)`
-/

namespace A229580.P7379192867653252833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A084633 (2 * n)

end

end A229580.P7379192867653252833

namespace A229580

/-- `(2*n+1)*A084633(2*n)` -/
def P7379192867653252833.Spec : Prop :=
  ∀ n, P7379192867653252833.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P17773095202723879883

`(2*n+1)*A158302(2*n)`
-/

namespace A229580.P17773095202723879883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A158302 (2 * n)

end

end A229580.P17773095202723879883

namespace A229580

/-- `(2*n+1)*A158302(2*n)` -/
def P17773095202723879883.Spec : Prop :=
  ∀ n, P17773095202723879883.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P11718033180346919545

`(2*n+1)*A199573(2*n)`
-/

namespace A229580.P11718033180346919545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A199573 (2 * n)

end

end A229580.P11718033180346919545

namespace A229580

/-- `(2*n+1)*A199573(2*n)` -/
def P11718033180346919545.Spec : Prop :=
  ∀ n, P11718033180346919545.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P18144535061492290630

`(2*n+1)*A236291(2*n)`
-/

namespace A229580.P18144535061492290630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A236291 (2 * n)

end

end A229580.P18144535061492290630

namespace A229580

/-- `(2*n+1)*A236291(2*n)` -/
def P18144535061492290630.Spec : Prop :=
  ∀ n, P18144535061492290630.a n = A229580 (n + 1)

end A229580

/-! ## A229580.P17475376670333995914

`(2*n+1)*A383608(2*n)`
-/

namespace A229580.P17475376670333995914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A383608 (2 * n)

end

end A229580.P17475376670333995914

namespace A229580

/-- `(2*n+1)*A383608(2*n)` -/
def P17475376670333995914.Spec : Prop :=
  ∀ n, P17475376670333995914.a n = A229580 (n + 1)

end A229580

/-!
# A229581: Number of defective 3-colorings of an n X 3 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229581, the canonical program `A229581.P3206840737242883942` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229581 has offset 1).

The definition of A229581 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229581.P3206840737242883942

`ogf((2+4x)/(1-12x+36x^2))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A229581

/-- `ogf((2+4x)/(1-12x+36x^2))` -/
def P3206840737242883942.Spec : Prop :=
  ∀ n, P3206840737242883942.a n = A229581 (n + 1)

theorem P3206840737242883942.correct : P3206840737242883942.Spec := by
  intro n
  simp only [A229581, Nat.add_sub_cancel]

end A229581

/-! ## A229581.P1370211761538829859

`(n/3+n+1)*2*6^n`
-/

namespace A229581.P1370211761538829859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 3 + (n + 1 : ℚ)) * (2 * 6 ^ n : ℚ)

end

end A229581.P1370211761538829859

namespace A229581

/-- `(n/3+n+1)*2*6^n` -/
def P1370211761538829859.Spec : Prop :=
  ∀ n, P1370211761538829859.a n = (A229581 (n + 1) : ℚ)

end A229581

/-! ## A229581.P3625017520698438778

`A203232(2*n+1)+A053469(n+1)`
-/

namespace A229581.P3625017520698438778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203232 (2 * n + 1) + A053469 (n + 1)

end

end A229581.P3625017520698438778

namespace A229581

/-- `A203232(2*n+1)+A053469(n+1)` -/
def P3625017520698438778.Spec : Prop :=
  ∀ n, P3625017520698438778.a n = A229581 (n + 1)

end A229581

/-! ## A229581.P9151143345683525607

`12*a(n-1)-36*a(n-2)` with `a(0)=2, a(1)=28`
-/

namespace A229581.P9151143345683525607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 28] fun n a =>
  12 * a (n - 1) - 36 * a (n - 2)

end

end A229581.P9151143345683525607

namespace A229581

/-- `12*a(n-1)-36*a(n-2)` -/
def P9151143345683525607.Spec : Prop :=
  ∀ n, P9151143345683525607.a n = A229581 (n + 1)

end A229581

/-! ## A229581.P12067700542866825386

`A268899(n+1)/6`
-/

namespace A229581.P12067700542866825386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268899 (n + 1) : ℚ) / 6

end

end A229581.P12067700542866825386

namespace A229581

/-- `A268899(n+1)/6` -/
def P12067700542866825386.Spec : Prop :=
  ∀ n, P12067700542866825386.a n = (A229581 (n + 1) : ℚ)

end A229581

/-! ## A229581.P8879469474664192051

`A008776(2*n)*A097578(2*n+1)/A008776(n+1)`
-/

namespace A229581.P8879469474664192051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008776 (2 * n) * A097578 (2 * n + 1) : ℚ) / (A008776 (n + 1) : ℚ)

end

end A229581.P8879469474664192051

namespace A229581

/-- `A008776(2*n)*A097578(2*n+1)/A008776(n+1)` -/
def P8879469474664192051.Spec : Prop :=
  ∀ n, P8879469474664192051.a n = (A229581 (n + 1) : ℚ)

end A229581

/-! ## A229581.P15771309206585160327

`A000400(n)²*A017113(2*n+1)/A000400(n+1)`
-/

namespace A229581.P15771309206585160327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000400 n ^ 2 * A017113 (2 * n + 1) : ℚ) / (A000400 (n + 1) : ℚ)

end

end A229581.P15771309206585160327

namespace A229581

/-- `A000400(n)²*A017113(2*n+1)/A000400(n+1)` -/
def P15771309206585160327.Spec : Prop :=
  ∀ n, P15771309206585160327.a n = (A229581 (n + 1) : ℚ)

end A229581

/-! ## A229581.P6786647759573507076

`A000400(2*n)*A017113(2*n+1)/A000400(n+1)`
-/

namespace A229581.P6786647759573507076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000400 (2 * n) * A017113 (2 * n + 1) : ℚ) / (A000400 (n + 1) : ℚ)

end

end A229581.P6786647759573507076

namespace A229581

/-- `A000400(2*n)*A017113(2*n+1)/A000400(n+1)` -/
def P6786647759573507076.Spec : Prop :=
  ∀ n, P6786647759573507076.a n = (A229581 (n + 1) : ℚ)

end A229581

/-!
# A229582: Number of defective 3-colorings of an n X 4 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229582, the canonical program `A229582.P17159816216225776909` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229582 has offset 1).

The definition of A229582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229582.P17159816216225776909

`ogf((6+8x+18x^2)/(1-18x+81x^2))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A229582

/-- `ogf((6+8x+18x^2)/(1-18x+81x^2))` -/
def P17159816216225776909.Spec : Prop :=
  ∀ n, P17159816216225776909.a n = A229582 (n + 1)

theorem P17159816216225776909.correct : P17159816216225776909.Spec := by
  intro n
  simp only [A229582, Nat.add_sub_cancel]

end A229582

/-! ## A229582.P664354285465865932

`A229587(2*(1+n))`
-/

namespace A229582.P664354285465865932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229587 (2 * (1 + n))

end

end A229582.P664354285465865932

namespace A229582

/-- `A229587(2*(1+n))` -/
def P664354285465865932.Spec : Prop :=
  ∀ n, P664354285465865932.a n = A229582 (n + 1)

end A229582

/-! ## A229582.P9449110016095657316

`A003946(2*n+1)+2*A113071(2*n)`
-/

namespace A229582.P9449110016095657316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 (2 * n + 1) + 2 * A113071 (2 * n)

end

end A229582.P9449110016095657316

namespace A229582

/-- `A003946(2*n+1)+2*A113071(2*n)` -/
def P9449110016095657316.Spec : Prop :=
  ∀ n, P9449110016095657316.a n = A229582 (n + 1)

end A229582

/-! ## A229582.P12301284497894328428

`2*(A113071(2*n)+A025192(2*n+1))`
-/

namespace A229582.P12301284497894328428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A113071 (2 * n) + A025192 (2 * n + 1))

end

end A229582.P12301284497894328428

namespace A229582

/-- `2*(A113071(2*n)+A025192(2*n+1))` -/
def P12301284497894328428.Spec : Prop :=
  ∀ n, P12301284497894328428.a n = A229582 (n + 1)

end A229582

/-! ## A229582.P15984312615859240247

`A120926(2*n+1)+A120926(2*(n+1))+A113071(2*n)`
-/

namespace A229582.P15984312615859240247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120926 (2 * n + 1) + (A120926 (2 * (n + 1)) + A113071 (2 * n))

end

end A229582.P15984312615859240247

namespace A229582

/-- `A120926(2*n+1)+A120926(2*(n+1))+A113071(2*n)` -/
def P15984312615859240247.Spec : Prop :=
  ∀ n, P15984312615859240247.a n = A229582 (n + 1)

end A229582

/-! ## A229582.P16859507456125568513

`A268900(n+1)/6`
-/

namespace A229582.P16859507456125568513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268900 (n + 1) : ℚ) / 6

end

end A229582.P16859507456125568513

namespace A229582

/-- `A268900(n+1)/6` -/
def P16859507456125568513.Spec : Prop :=
  ∀ n, P16859507456125568513.a n = (A229582 (n + 1) : ℚ)

end A229582

/-! ## A229582.P12422067162025524208

`A268905(2*(n+1))/6`
-/

namespace A229582.P12422067162025524208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268905 (2 * (n + 1)) : ℚ) / 6

end

end A229582.P12422067162025524208

namespace A229582

/-- `A268905(2*(n+1))/6` -/
def P12422067162025524208.Spec : Prop :=
  ∀ n, P12422067162025524208.a n = (A229582 (n + 1) : ℚ)

end A229582

/-!
# A229583: Number of defective 3-colorings of an n X 5 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229583, there is no canonical definition to state claims against.
-/

/-! ## A229583.P15285092593321159255

`A268901(1+n)/6`
-/

namespace A229583.P15285092593321159255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268901 (1 + n) : ℚ) / 6

end

end A229583.P15285092593321159255

/-! ## A229583.P734769888485374267

`record[A268901(A193592(n))/6]`
-/

namespace A229583.P734769888485374267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268901 (A193592 n).toNat : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229583.P734769888485374267

/-! ## A229583.P1385469468397246073

`A229586(Δ[A264443(n)])`
-/

namespace A229583.P1385469468397246073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (f1 (n + 1) - f1 n).toNat

end

end A229583.P1385469468397246073

/-!
# A229584: Number of defective 3-colorings of an n X 6 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229584, there is no canonical definition to state claims against.
-/

/-! ## A229584.P6506408288225869661

`A268902(n+1)/6`
-/

namespace A229584.P6506408288225869661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268902 (n + 1) : ℚ) / 6

end

end A229584.P6506408288225869661

/-! ## A229584.P9417632129160292989

`A229586(A052905(n+3))`
-/

namespace A229584.P9417632129160292989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A052905 (n + 3)).toNat

end

end A229584.P9417632129160292989

/-!
# A229585: Number of defective 3-colorings of an n X 7 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229585, there is no canonical definition to state claims against.
-/

/-! ## A229585.P7703637604545372459

`A268903(n+1)/6`
-/

namespace A229585.P7703637604545372459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268903 (n + 1) : ℚ) / 6

end

end A229585.P7703637604545372459

/-! ## A229585.P5094720156832584011

`(A268970(n+1)-A233154(n+1))/6`
-/

namespace A229585.P5094720156832584011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268970 (n + 1) - A233154 (n + 1) : ℚ) / 6

end

end A229585.P5094720156832584011

/-! ## A229585.P16651429540717330499

`A229586(eq[4, A219347(n)])`
-/

namespace A229585.P16651429540717330499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A229585.P16651429540717330499

/-!
# A229586: T(n,k) = number of defective 3-colorings of an n X k 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229586, there is no canonical definition to state claims against.
-/

/-! ## A229586.P16311585902178666946

`round(A268904(n+1)/6)`
-/

namespace A229586.P16311585902178666946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A268904 (n + 1) : ℚ) / 6)

end

end A229586.P16311585902178666946

/-! ## A229586.P12531734384227208645

`A268904(n+1)/gcd(6, A167667(n))`
-/

namespace A229586.P12531734384227208645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268904 (n + 1) : ℚ) / (Int.gcd 6 (A167667 n) : ℚ)

end

end A229586.P12531734384227208645

/-! ## A229586.P6960133823552767099

`ceil(A268904(n+1)/A267884(n+2))`
-/

namespace A229586.P6960133823552767099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A268904 (n + 1) : ℚ) / (A267884 (n + 2) : ℚ)⌉

end

end A229586.P6960133823552767099

/-! ## A229586.P14206236119567461043

`A268904(n+1)/A267884(A257143(n))`
-/

namespace A229586.P14206236119567461043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268904 (n + 1) : ℚ) / (A267884 (A257143 n).toNat : ℚ)

end

end A229586.P14206236119567461043

/-! ## A229586.P381950907350633412

`A268904(n+1)/A267884(A000007(n)+n)`
-/

namespace A229586.P381950907350633412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268904 (n + 1) : ℚ) / (A267884 (A000007 n + (n : ℤ)).toNat : ℚ)

end

end A229586.P381950907350633412

/-! ## A229586.P16056062970365672812

`A268904(n+1)/gcd(A233155(n+1), A267884(n))`
-/

namespace A229586.P16056062970365672812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268904 (n + 1) : ℚ) / (Int.gcd (A233155 (n + 1)) (A267884 n) : ℚ)

end

end A229586.P16056062970365672812

/-! ## A229586.P17487624807981606620

`A268904(n+1)/A089353(A034856(n+1))`
-/

namespace A229586.P17487624807981606620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268904 (n + 1) : ℚ) / (A089353 (A034856 (n + 1)).toNat : ℚ)

end

end A229586.P17487624807981606620

/-!
# A229587: Number of defective 3-colorings of a 2 X n 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229587, the canonical program `A229587.P6883557368480973696` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229587 has offset 1).

The definition of A229587 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229587.P6883557368480973696

`6*a(n-1)-9*a(n-2)` with `a(0)=0, a(1)=6, a(2)=28, a(3)=116`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A229587

/-- `6*a(n-1)-9*a(n-2)` -/
def P6883557368480973696.Spec : Prop :=
  ∀ n, P6883557368480973696.a n = A229587 (n + 1)

theorem P6883557368480973696.correct : P6883557368480973696.Spec := by
  intro n
  simp only [A229587, Nat.add_sub_cancel]

end A229587

/-! ## A229587.P9619445179300897869

`ogf((6x-8x^2+2x^3)/(1-6x+9x^2))`
-/

namespace A229587.P9619445179300897869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, -8, 2] [1, -6, 9] n

end

end A229587.P9619445179300897869

namespace A229587

/-- `ogf((6x-8x^2+2x^3)/(1-6x+9x^2))` -/
def P9619445179300897869.Spec : Prop :=
  ∀ n, P9619445179300897869.a n = A229587 (n + 1)

end A229587

/-! ## A229587.P12810845528437092619

`2*(round((n+4)*16*3^(n-3))-Δ[3^n])`
-/

namespace A229587.P12810845528437092619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.roundAway ((n + 4 : ℚ) * (16 * (3 : ℚ) ^ ((n : ℤ) - 3 : ℤ))) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A229587.P12810845528437092619

namespace A229587

/-- `2*(round((n+4)*16*3^(n-3))-Δ[3^n])` -/
def P12810845528437092619.Spec : Prop :=
  ∀ n, P12810845528437092619.a n = A229587 (n + 1)

end A229587

/-! ## A229587.P14677432207201636974

`Δ[3*a(n-1)+2*A118264(n)]` with `a(0)=0`
-/

namespace A229587.P14677432207201636974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  3 * f1 (n - 1) + 2 * A118264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A229587.P14677432207201636974

namespace A229587

/-- `Δ[3*a(n-1)+2*A118264(n)]` -/
def P14677432207201636974.Spec : Prop :=
  ∀ n, P14677432207201636974.a n = A229587 (n + 1)

end A229587

/-! ## A229587.P9077936400235164326

`A292482(n)+A292482(n)-A003946(n+1)`
-/

namespace A229587.P9077936400235164326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292482 n + (A292482 n - A003946 (n + 1))

end

end A229587.P9077936400235164326

namespace A229587

/-- `A292482(n)+A292482(n)-A003946(n+1)` -/
def P9077936400235164326.Spec : Prop :=
  ∀ n, P9077936400235164326.a n = A229587 (n + 1)

end A229587

/-! ## A229587.P7963655796168980588

`A268905(n+1)/6`
-/

namespace A229587.P7963655796168980588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268905 (n + 1) : ℚ) / 6

end

end A229587.P7963655796168980588

namespace A229587

/-- `A268905(n+1)/6` -/
def P7963655796168980588.Spec : Prop :=
  ∀ n, P7963655796168980588.a n = (A229587 (n + 1) : ℚ)

end A229587

/-!
# A229588: Number of defective 3-colorings of a 3 X n 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229588, there is no canonical definition to state claims against.
-/

/-! ## A229588.P10104361277058577218

`A268906(n+1)/6`
-/

namespace A229588.P10104361277058577218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268906 (n + 1) : ℚ) / 6

end

end A229588.P10104361277058577218

/-! ## A229588.P18409468301714407618

`A229586(∑[n+2]+4)`
-/

namespace A229588.P18409468301714407618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A229588.P18409468301714407618

/-! ## A229588.P6995869119976948983

`A268904(A167614(n+1))/6`
-/

namespace A229588.P6995869119976948983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268904 (A167614 (n + 1)).toNat : ℚ) / 6

end

end A229588.P6995869119976948983

/-! ## A229588.P10012859662030104464

`A268904(∑[n+2]+4)/A267884(n+2)`
-/

namespace A229588.P10012859662030104464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268904 (∑ j ∈ Finset.range (n + 1), f1 j + 4) : ℚ) / (A267884 (n + 2) : ℚ)

end

end A229588.P10012859662030104464

/-!
# A229589: Number of defective 3-colorings of a 4 X n 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229589, there is no canonical definition to state claims against.
-/

/-! ## A229589.P17062454066373842999

`A268907(n+1)/6`
-/

namespace A229589.P17062454066373842999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268907 (n + 1) : ℚ) / 6

end

end A229589.P17062454066373842999

/-! ## A229589.P17178545805935241613

`A229586(A141214(n)+7)`
-/

namespace A229589.P17178545805935241613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A141214 n + 7).toNat

end

end A229589.P17178545805935241613

/-!
# A229590: Number of defective 3-colorings of a 5 X n 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229590, there is no canonical definition to state claims against.
-/

/-! ## A229590.P17789182194687928639

`A268908(1+n)/6`
-/

namespace A229590.P17789182194687928639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268908 (1 + n) : ℚ) / 6

end

end A229590.P17789182194687928639

/-! ## A229590.P8795365876400479038

`A229586(A167499(n+3))`
-/

namespace A229590.P8795365876400479038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A167499 (n + 3)).toNat

end

end A229590.P8795365876400479038

/-!
# A229591: Number of defective 3-colorings of a 6 X n 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229591, there is no canonical definition to state claims against.
-/

/-! ## A229591.P15669769849801380023

`A268909(n+1)/6`
-/

namespace A229591.P15669769849801380023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268909 (n + 1) : ℚ) / 6

end

end A229591.P15669769849801380023

/-! ## A229591.P6948087069222458624

`A229586(A056115(n)+21)`
-/

namespace A229591.P6948087069222458624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A056115 n + 21).toNat

end

end A229591.P6948087069222458624

/-!
# A229592: Number of defective 3-colorings of a 7 X n 0..2 array connected horizontally and antidiagonally with exactly one mistake, and colors introduced in row-major 0..2 order.

The programs for A229592, there is no canonical definition to state claims against.
-/

/-! ## A229592.P17524832314322208716

`A268910(n+1)/6`
-/

namespace A229592.P17524832314322208716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268910 (n + 1) : ℚ) / 6

end

end A229592.P17524832314322208716

/-! ## A229592.P9338341424995600756

`A229586(A056119(n)+28)`
-/

namespace A229592.P9338341424995600756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229586 (A056119 n + 28).toNat

end

end A229592.P9338341424995600756

/-!
# A229593: Number of boomerang patterns appearing in n X n coins, rotation not allowed.

The programs for A229593, the canonical program `A229593.P2204322222876940530` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229593 has offset 2).

The definition of A229593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A229593.P2204322222876940530

`(n+1)*floor((n+2)/3)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A229593

/-- `(n+1)*floor((n+2)/3)` -/
def P2204322222876940530.Spec : Prop :=
  ∀ n, P2204322222876940530.a n = A229593 (n + 2)

theorem P2204322222876940530.correct : P2204322222876940530.Spec := by
  intro n
  simp only [A229593, Nat.add_sub_cancel]

end A229593

/-! ## A229593.P4080138988415405795

`ogf((2x+x^2+x^3+2x^4)/(1-x-2x^3+2x^4+x^6-x^7))`
-/

namespace A229593.P4080138988415405795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 1, 2] [1, -1, 0, -2, 2, 0, 1, -1] n

end

end A229593.P4080138988415405795

namespace A229593

/-- `ogf((2x+x^2+x^3+2x^4)/(1-x-2x^3+2x^4+x^6-x^7))` -/
def P4080138988415405795.Spec : Prop :=
  ∀ n, P4080138988415405795.a n = A229593 (n + 2)

end A229593

/-! ## A229593.P12547173748536488882

`(1+n)*∑[∑[n]%3]`
-/

namespace A229593.P12547173748536488882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229593.P12547173748536488882

namespace A229593

/-- `(1+n)*∑[∑[n]%3]` -/
def P12547173748536488882.Spec : Prop :=
  ∀ n, (P12547173748536488882.a n : ℤ) = A229593 (n + 2)

end A229593

/-! ## A229593.P11894681123313580979

`∑{#}[1, ceil(n/3)*C(n, #)]`
-/

namespace A229593.P11894681123313580979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ⌈(n : ℚ) / 3⌉ * (Nat.choose n k : ℤ)

end

end A229593.P11894681123313580979

namespace A229593

/-- `∑{#}[1, ceil(n/3)*C(n, #)]` -/
def P11894681123313580979.Spec : Prop :=
  ∀ n, P11894681123313580979.a n = A229593 (n + 2)

end A229593

/-! ## A229593.P487654918449425211

`∪[3*(n+1)², ∑[lcm(2, n)]]`
-/

namespace A229593.P487654918449425211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A229593.P487654918449425211

namespace A229593

/-- `∪[3*(n+1)², ∑[lcm(2, n)]]` -/
def P487654918449425211.Spec : Prop :=
  ∀ n, (P487654918449425211.a n : ℤ) = A229593 (n + 2)

end A229593

/-! ## A229593.P10025677846361999327

`round(round((n+1)/3)/acot(n+1))`
-/

namespace A229593.P10025677846361999327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((n + 1 : ℚ) / 3) : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ))

end

end A229593.P10025677846361999327

namespace A229593

/-- `round(round((n+1)/3)/acot(n+1))` -/
def P10025677846361999327.Spec : Prop :=
  ∀ n, P10025677846361999327.a n = A229593 (n + 2)

end A229593

/-! ## A229593.P3586347304368667749

`(n+1)*∑[abs(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A229593.P3586347304368667749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229593.P3586347304368667749

namespace A229593

/-- `(n+1)*∑[abs(a(n-3))]` -/
def P3586347304368667749.Spec : Prop :=
  ∀ n, (P3586347304368667749.a n : ℤ) = A229593 (n + 2)

end A229593

/-! ## A229593.P3170799501082040631

`(n+1)*∑[a(n-3)²]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A229593.P3170799501082040631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229593.P3170799501082040631

namespace A229593

/-- `(n+1)*∑[a(n-3)²]` -/
def P3170799501082040631.Spec : Prop :=
  ∀ n, (P3170799501082040631.a n : ℤ) = A229593 (n + 2)

end A229593

/-! ## A229593.P6813220268131767760

`(n+1)*∑[sqrt(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A229593.P6813220268131767760
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  Real.sqrt (f1 (n - 3))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229593.P6813220268131767760

namespace A229593

/-- `(n+1)*∑[sqrt(a(n-3))]` -/
def P6813220268131767760.Spec : Prop :=
  ∀ n, P6813220268131767760.a n = (A229593 (n + 2) : ℝ)

end A229593

/-! ## A229593.P16632089023239535513

`(n+1)*∑[dr(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A229593.P16632089023239535513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 3) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229593.P16632089023239535513

namespace A229593

/-- `(n+1)*∑[dr(a(n-3))]` -/
def P16632089023239535513.Spec : Prop :=
  ∀ n, (P16632089023239535513.a n : ℤ) = A229593 (n + 2)

end A229593

/-! ## A229593.P14300885191106275127

`(n+1)*∑[floor(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A229593.P14300885191106275127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229593.P14300885191106275127

namespace A229593

/-- `(n+1)*∑[floor(a(n-3))]` -/
def P14300885191106275127.Spec : Prop :=
  ∀ n, (P14300885191106275127.a n : ℤ) = A229593 (n + 2)

end A229593

/-! ## A229593.P15615109401399576012

`(n+1)*∑[ceil(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A229593.P15615109401399576012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229593.P15615109401399576012

namespace A229593

/-- `(n+1)*∑[ceil(a(n-3))]` -/
def P15615109401399576012.Spec : Prop :=
  ∀ n, (P15615109401399576012.a n : ℤ) = A229593 (n + 2)

end A229593

/-! ## A229593.P18234300180544674525

`(n+1)*∑[round(a(n-3))]` with `a(0)=0, a(1)=1, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A229593.P18234300180544674525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229593.P18234300180544674525

namespace A229593

/-- `(n+1)*∑[round(a(n-3))]` -/
def P18234300180544674525.Spec : Prop :=
  ∀ n, (P18234300180544674525.a n : ℤ) = A229593 (n + 2)

end A229593

/-! ## A229593.P9997519087600066943

`(n+1)*∑[char[a(n-1)+3]]` with `a(0)=1`
-/

namespace A229593.P9997519087600066943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229593.P9997519087600066943

namespace A229593

/-- `(n+1)*∑[char[a(n-1)+3]]` -/
def P9997519087600066943.Spec : Prop :=
  ∀ n, (P9997519087600066943.a n : ℤ) = A229593 (n + 2)

end A229593

/-! ## A229593.P9407086270197049580

`(n+1)*∑[a(n-3)^3]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A229593.P9407086270197049580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 3) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229593.P9407086270197049580

namespace A229593

/-- `(n+1)*∑[a(n-3)^3]` -/
def P9407086270197049580.Spec : Prop :=
  ∀ n, (P9407086270197049580.a n : ℤ) = A229593 (n + 2)

end A229593

/-! ## A229593.P1377408761445701313

`(n+1)*∑[and(1, a(n-3))]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A229593.P1377408761445701313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  Nat.land 1 (f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229593.P1377408761445701313

namespace A229593

/-- `(n+1)*∑[and(1, a(n-3))]` -/
def P1377408761445701313.Spec : Prop :=
  ∀ n, (P1377408761445701313.a n : ℤ) = A229593 (n + 2)

end A229593

/-! ## A229593.P7558121349555649907

`∑[a(n-3)²]/(n+1)^(-1)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A229593.P7558121349555649907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A229593.P7558121349555649907

namespace A229593

/-- `∑[a(n-3)²]/(n+1)^(-1)` -/
def P7558121349555649907.Spec : Prop :=
  ∀ n, P7558121349555649907.a n = (A229593 (n + 2) : ℚ)

end A229593

/-! ## A229593.P17445710654207881228

`∑[floor(a(n-3))]/(n+1)^(-1)` with `a(0)=0, a(1)=1, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A229593.P17445710654207881228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) ^ (-1 : ℤ)

end

end A229593.P17445710654207881228

namespace A229593

/-- `∑[floor(a(n-3))]/(n+1)^(-1)` -/
def P17445710654207881228.Spec : Prop :=
  ∀ n, P17445710654207881228.a n = (A229593 (n + 2) : ℚ)

end A229593

/-! ## A229593.P7715792254379691672

`(n+1)*Δ[a(n-3)+n-1]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A229593.P7715792254379691672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 3) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A229593.P7715792254379691672

namespace A229593

/-- `(n+1)*Δ[a(n-3)+n-1]` -/
def P7715792254379691672.Spec : Prop :=
  ∀ n, P7715792254379691672.a n = A229593 (n + 2)

end A229593

/-! ## A229593.P9920203012245078114

`(n+1)*∑[1-(a(n-2)+a(n-1))]` with `a(0)=0, a(1)=1`
-/

namespace A229593.P9920203012245078114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  1 - (f1 (n - 2) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229593.P9920203012245078114

namespace A229593

/-- `(n+1)*∑[1-(a(n-2)+a(n-1))]` -/
def P9920203012245078114.Spec : Prop :=
  ∀ n, P9920203012245078114.a n = A229593 (n + 2)

end A229593

/-!
# A229598: Voids left when packing boomerangs into n X n coins.

The programs for A229598, the canonical program `A229598.P10624151354738347624` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A229598 has offset 2).

The definition of A229598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A229598.P4700232372002510596

`(1+n)*Δ[ceil(∑[n/3])]`
-/

namespace A229598.P4700232372002510596
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * (f1 (n + 1) - f1 n)

end

end A229598.P4700232372002510596

namespace A229598

/-- `(1+n)*Δ[ceil(∑[n/3])]` -/
def P4700232372002510596.Spec : Prop :=
  ∀ n, P4700232372002510596.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P10624151354738347624

`floor(((n+2)%3+n)²/3)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A229598

/-- `floor(((n+2)%3+n)²/3)` -/
def P10624151354738347624.Spec : Prop :=
  ∀ n, P10624151354738347624.a n = A229598 (n + 2)

theorem P10624151354738347624.correct : P10624151354738347624.Spec := by
  intro n
  simp only [A229598, Nat.add_sub_cancel]

end A229598

/-! ## A229598.P6314649523642835906

`round(((2*n)%3-(n+2))²/3)`
-/

namespace A229598.P6314649523642835906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((((2 * n % 3 : ℕ) : ℤ) - (n + 2 : ℤ)) ^ 2 : ℚ) / 3)

end

end A229598.P6314649523642835906

namespace A229598

/-- `round(((2*n)%3-(n+2))²/3)` -/
def P6314649523642835906.Spec : Prop :=
  ∀ n, P6314649523642835906.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P442860354591557595

`(n+1)*∑[floor(a(n-3))]` with `a(0)=1, a(1)=-1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A229598.P442860354591557595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A229598.P442860354591557595

namespace A229598

/-- `(n+1)*∑[floor(a(n-3))]` -/
def P442860354591557595.Spec : Prop :=
  ∀ n, P442860354591557595.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P11639425855023400221

`∑[(-1)^(n%3)]+∑[(-1)^(n%3)]*n`
-/

namespace A229598.P11639425855023400221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) * (n : ℤ)

end

end A229598.P11639425855023400221

namespace A229598

/-- `∑[(-1)^(n%3)]+∑[(-1)^(n%3)]*n` -/
def P11639425855023400221.Spec : Prop :=
  ∀ n, P11639425855023400221.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P15609504835284356821

`(n+1)*Δ[a(n-3)+n-1]` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A229598.P15609504835284356821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  f1 (n - 3) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A229598.P15609504835284356821

namespace A229598

/-- `(n+1)*Δ[a(n-3)+n-1]` -/
def P15609504835284356821.Spec : Prop :=
  ∀ n, P15609504835284356821.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P4019549354206368400

`ogf((1-x+3x^2+3x^3-x^4+x^5)/(1-x-2x^3+2x^4+x^6-x^7))`
-/

namespace A229598.P4019549354206368400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 3, 3, -1, 1] [1, -1, 0, -2, 2, 0, 1, -1] n

end

end A229598.P4019549354206368400

namespace A229598

/-- `ogf((1-x+3x^2+3x^3-x^4+x^5)/(1-x-2x^3+2x^4+x^6-x^7))` -/
def P4019549354206368400.Spec : Prop :=
  ∀ n, P4019549354206368400.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P9735420219837289540

`A000212(A064429(n+1))`
-/

namespace A229598.P9735420219837289540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A064429 (n + 1)).toNat

end

end A229598.P9735420219837289540

namespace A229598

/-- `A000212(A064429(n+1))` -/
def P9735420219837289540.Spec : Prop :=
  ∀ n, P9735420219837289540.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P11511059091132940421

`A272212(A004772(n+2))`
-/

namespace A229598.P11511059091132940421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272212 (A004772 (n + 2)).toNat

end

end A229598.P11511059091132940421

namespace A229598

/-- `A272212(A004772(n+2))` -/
def P11511059091132940421.Spec : Prop :=
  ∀ n, P11511059091132940421.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P15777848993779039994

`A075561(2*n+1)-A211547(n+2)`
-/

namespace A229598.P15777848993779039994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075561 (2 * n + 1) - A211547 (n + 2)

end

end A229598.P15777848993779039994

namespace A229598

/-- `A075561(2*n+1)-A211547(n+2)` -/
def P15777848993779039994.Spec : Prop :=
  ∀ n, P15777848993779039994.a n = A229598 (n + 2)

end A229598

/-! ## A229598.P15743518195793105407

`A001787(n+1)*A008611(n)/A000079(n)`
-/

namespace A229598.P15743518195793105407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 (n + 1) * A008611 n : ℚ) / (A000079 n : ℚ)

end

end A229598.P15743518195793105407

namespace A229598

/-- `A001787(n+1)*A008611(n)/A000079(n)` -/
def P15743518195793105407.Spec : Prop :=
  ∀ n, P15743518195793105407.a n = (A229598 (n + 2) : ℚ)

end A229598

/-!
# A229599: Number of defective 3-colorings of an n X n 0..2 array connected horizontally and vertically with exactly two mistakes, and colors introduced in row-major 0..2 order.

The programs for A229599, there is no canonical definition to state claims against.
-/

/-! ## A229599.P14302274768636335951

`A229606(∑[4*n]+1)`
-/

namespace A229599.P14302274768636335951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229606 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A229599.P14302274768636335951

/-! ## A229599.P947551257892005143

`record[A003982(n)*A229606(n+1)]`
-/

namespace A229599.P947551257892005143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A229606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A229599.P947551257892005143

