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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A015201: Sum of Gaussian binomial coefficients for q=13.

The programs for A015201, there is no canonical definition to state claims against.
-/

/-! ## A015201.P15685750856349820978

`A000079(n)*A380185(A112005(2*n+1))`
-/

namespace A015201.P15685750856349820978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A380185 (A112005 (2 * n + 1)).toNat

end

end A015201.P15685750856349820978

/-!
# A015203: Sum of Gaussian binomial coefficients for q=15.

The programs for A015203, there is no canonical definition to state claims against.
-/

/-! ## A015203.P7806458021975386620

`2*a(n-1)+a(n-2)*(15^(n-1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A015203.P7806458021975386620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + a (n - 2) * ((15 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)

end

end A015203.P7806458021975386620

/-!
# A015204: Sum of Gaussian binomial coefficients for q=16.

The programs for A015204, there is no canonical definition to state claims against.
-/

/-! ## A015204.P442672476880030580

`2*a(n-1)+a(n-2)*(16^(n-1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A015204.P442672476880030580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + a (n - 2) * ((16 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)

end

end A015204.P442672476880030580

/-!
# A015205: Inverse of 1196th cyclotomic polynomial.

The programs for A015205, there is no canonical definition to state claims against.
-/

/-! ## A015205.P3043053461864051242

`A015517(n)%A073261(n)`
-/

namespace A015205.P3043053461864051242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015517 n) (A073261 n)

end

end A015205.P3043053461864051242

/-! ## A015205.P17448375346861644745

`A015621(n)%A073261(n)`
-/

namespace A015205.P17448375346861644745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015621 n) (A073261 n)

end

end A015205.P17448375346861644745

/-! ## A015205.P1956041579010403388

`A015933(n)%A073261(n)`
-/

namespace A015205.P1956041579010403388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015933 n) (A073261 n)

end

end A015205.P1956041579010403388

/-! ## A015205.P4567475301176055331

`A016141(n)%A073261(n)`
-/

namespace A015205.P4567475301176055331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016141 n) (A073261 n)

end

end A015205.P4567475301176055331

/-! ## A015205.P12173723659833641793

`A016245(n)%A073261(n)`
-/

namespace A015205.P12173723659833641793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016245 n) (A073261 n)

end

end A015205.P12173723659833641793

/-!
# A015206: Inverse of 1197th cyclotomic polynomial.

The programs for A015206, there is no canonical definition to state claims against.
-/

/-! ## A015206.P12843557646960222050

`A015458(n)^A106610(A369571(n))`
-/

namespace A015206.P12843557646960222050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015458 n : ℚ) ^ (A106610 (A369571 n).toNat : ℤ)

end

end A015206.P12843557646960222050

/-!
# A015207: Sum of Gaussian binomial coefficients for q=17.

The programs for A015207, there is no canonical definition to state claims against.
-/

/-! ## A015207.P1933030821620599368

`2*a(n-1)+a(n-2)*(17^(n-1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A015207.P1933030821620599368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + a (n - 2) * ((17 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)

end

end A015207.P1933030821620599368

/-!
# A015208: Inverse of 1199th cyclotomic polynomial.

The programs for A015208, the canonical program `A015208.P2311126354841875546` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015208 has offset 0).

The definition of A015208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 109 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015208.P1758579703966283028

`C(n, comp[A345168(2*(n+2))])`
-/

namespace A015208.P1758579703966283028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345168 (2 * (n + 2))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015208.P1758579703966283028

namespace A015208

/-- `C(n, comp[A345168(2*(n+2))])` -/
def P1758579703966283028.Spec : Prop :=
  ∀ n, (P1758579703966283028.a n : ℤ) = A015208 n

end A015208

/-! ## A015208.P2311126354841875546

`abs(A105567(n+1))*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A015208

/-- `abs(A105567(n+1))*a(n-1)` -/
def P2311126354841875546.Spec : Prop :=
  ∀ n, P2311126354841875546.a n = A015208 n

theorem P2311126354841875546.correct : P2311126354841875546.Spec := by
  intro n
  simp only [A015208]

end A015208

/-! ## A015208.P6645969193916941220

`∏{e}[A326527(n), A007949(#)]`
-/

namespace A015208.P6645969193916941220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007949 (Nat.factorization (f1 n).natAbs p)

end

end A015208.P6645969193916941220

namespace A015208

/-- `∏{e}[A326527(n), A007949(#)]` -/
def P6645969193916941220.Spec : Prop :=
  ∀ n, P6645969193916941220.a n = A015208 n

end A015208

/-! ## A015208.P16607925169164392294

`∏{e}[A326527(n), A326527(#)]`
-/

namespace A015208.P16607925169164392294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A326527 (Nat.factorization (f1 n).natAbs p)

end

end A015208.P16607925169164392294

namespace A015208

/-- `∏{e}[A326527(n), A326527(#)]` -/
def P16607925169164392294.Spec : Prop :=
  ∀ n, P16607925169164392294.a n = A015208 n

end A015208

/-! ## A015208.P4972789416509125838

`A000010(A248782(n+1))%2`
-/

namespace A015208.P4972789416509125838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A248782 (n + 1)).toNat) 2

end

end A015208.P4972789416509125838

namespace A015208

/-- `A000010(A248782(n+1))%2` -/
def P4972789416509125838.Spec : Prop :=
  ∀ n, P4972789416509125838.a n = A015208 n

end A015208

/-! ## A015208.P7177664082500499735

`C(3, A060533(A394028(n+5)))`
-/

namespace A015208.P7177664082500499735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 (A060533 (A394028 (n + 5)).toNat).toNat

end

end A015208.P7177664082500499735

namespace A015208

/-- `C(3, A060533(A394028(n+5)))` -/
def P7177664082500499735.Spec : Prop :=
  ∀ n, (P7177664082500499735.a n : ℤ) = A015208 n

end A015208

/-! ## A015208.P11109502642201176949

`C(abs(A105567(n+1)), A326465(n))`
-/

namespace A015208.P11109502642201176949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A105567 (n + 1)|.toNat (A326465 n).toNat

end

end A015208.P11109502642201176949

namespace A015208

/-- `C(abs(A105567(n+1)), A326465(n))` -/
def P11109502642201176949.Spec : Prop :=
  ∀ n, (P11109502642201176949.a n : ℤ) = A015208 n

end A015208

/-! ## A015208.P3334540305582380574

`C(A115382(A204389(n)), A135585(n))`
-/

namespace A015208.P3334540305582380574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A115382 (A204389 n).toNat).toNat (A135585 n).toNat

end

end A015208.P3334540305582380574

namespace A015208

/-- `C(A115382(A204389(n)), A135585(n))` -/
def P3334540305582380574.Spec : Prop :=
  ∀ n, (P3334540305582380574.a n : ℤ) = A015208 n

end A015208

/-! ## A015208.P10353939761697688058

`C(A049347(3*(n+1)), A090616(A387737(n+1)))`
-/

namespace A015208.P10353939761697688058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A049347 (3 * (n + 1))).toNat (A090616 (A387737 (n + 1)).toNat).toNat

end

end A015208.P10353939761697688058

namespace A015208

/-- `C(A049347(3*(n+1)), A090616(A387737(n+1)))` -/
def P10353939761697688058.Spec : Prop :=
  ∀ n, (P10353939761697688058.a n : ℤ) = A015208 n

end A015208

/-! ## A015208.P10910427713290688101

`C(A098361(A124752(n)), A326465(n))`
-/

namespace A015208.P10910427713290688101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A098361 (A124752 n).toNat).toNat (A326465 n).toNat

end

end A015208.P10910427713290688101

namespace A015208

/-- `C(A098361(A124752(n)), A326465(n))` -/
def P10910427713290688101.Spec : Prop :=
  ∀ n, (P10910427713290688101.a n : ℤ) = A015208 n

end A015208

/-!
# A015209: Sum of Gaussian binomial coefficients for q=18.

The programs for A015209, there is no canonical definition to state claims against.
-/

/-! ## A015209.P12290749710282190318

`2*a(n-1)+a(n-2)*(18^(n-1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A015209.P12290749710282190318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + a (n - 2) * ((18 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)

end

end A015209.P12290749710282190318

/-!
# A015210: Sum of Gaussian binomial coefficients for q=19.

The programs for A015210, there is no canonical definition to state claims against.
-/

/-! ## A015210.P2498554544577449985

`2*a(n-1)+a(n-2)*(19^(n-1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A015210.P2498554544577449985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + a (n - 2) * ((19 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)

end

end A015210.P2498554544577449985

/-!
# A015211: Sum of Gaussian binomial coefficients for q=20.

The programs for A015211, there is no canonical definition to state claims against.
-/

/-! ## A015211.P9032222570258869375

`2*a(n-1)+a(n-2)*(20^(n-1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A015211.P9032222570258869375
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + a (n - 2) * ((20 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)

end

end A015211.P9032222570258869375

/-!
# A015212: Sum of Gaussian binomial coefficients for q=21.

The programs for A015212, there is no canonical definition to state claims against.
-/

/-! ## A015212.P3580229685628471536

`2*a(n-1)+a(n-2)*(21^(n-1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A015212.P3580229685628471536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + a (n - 2) * ((21 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)

end

end A015212.P3580229685628471536

/-!
# A015213: Inverse of 1204th cyclotomic polynomial.

The programs for A015213, there is no canonical definition to state claims against.
-/

/-! ## A015213.P9697476502894310637

`A005470(A103633(n))*A015325(n)`
-/

namespace A015213.P9697476502894310637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005470 (A103633 n).toNat * A015325 n

end

end A015213.P9697476502894310637

/-! ## A015213.P16045113413414519517

`A011655(A249554(2*n+1))*A015885(n)`
-/

namespace A015213.P16045113413414519517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A249554 (2 * n + 1)).toNat * A015885 n

end

end A015213.P16045113413414519517

/-! ## A015213.P8558216395192564009

`A015325(n)*A033999(A072389(2*(n+2)))`
-/

namespace A015213.P8558216395192564009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015325 n * A033999 (A072389 (2 * (n + 2))).toNat

end

end A015213.P8558216395192564009

/-! ## A015213.P5294620420800564314

`A014963(A037450(n+4))*A015885(n)`
-/

namespace A015213.P5294620420800564314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A037450 (n + 4)).toNat * A015885 n

end

end A015213.P5294620420800564314

/-! ## A015213.P13577236697280739203

`A015493(n)*A318809(A020639(n+5))`
-/

namespace A015213.P13577236697280739203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015493 n * A318809 (A020639 (n + 5)).toNat

end

end A015213.P13577236697280739203

/-! ## A015213.P17295351023071417778

`A015885(n)+A014099(A214723(2*n+5))`
-/

namespace A015213.P17295351023071417778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015885 n + A014099 (A214723 (2 * n + 5)).toNat

end

end A015213.P17295351023071417778

/-! ## A015213.P374016433930996460

`A061853(A366688(2*(n+1)))+A015885(n)`
-/

namespace A015213.P374016433930996460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061853 (A366688 (2 * (n + 1))).toNat + A015885 n

end

end A015213.P374016433930996460

/-!
# A015214: Sum of Gaussian binomial coefficients for q=22.

The programs for A015214, there is no canonical definition to state claims against.
-/

/-! ## A015214.P10151568165500764292

`2*a(n-1)+a(n-2)*(22^(n-1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A015214.P10151568165500764292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + a (n - 2) * ((22 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)

end

end A015214.P10151568165500764292

/-!
# A015215: Sum of Gaussian binomial coefficients for q=23.

The programs for A015215, there is no canonical definition to state claims against.
-/

/-! ## A015215.P16983245151394515800

`2*a(n-1)+a(n-2)*(23^(n-1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A015215.P16983245151394515800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + a (n - 2) * ((23 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)

end

end A015215.P16983245151394515800

/-!
# A015216: Inverse of 1207th cyclotomic polynomial.

The programs for A015216, there is no canonical definition to state claims against.
-/

/-! ## A015216.P5342531997781773963

`7-A070939(lt[A000290(2*n+1), A222649(n+1)])`
-/

namespace A015216.P5342531997781773963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - A070939 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015216.P5342531997781773963

/-!
# A015217: Sum of Gaussian binomial coefficients for q=24.

The programs for A015217, there is no canonical definition to state claims against.
-/

/-! ## A015217.P16633347595592431871

`2*a(n-1)+a(n-2)*(24^(n-1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A015217.P16633347595592431871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) + a (n - 2) * ((24 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1)

end

end A015217.P16633347595592431871

/-!
# A015218: Inverse of 1209th cyclotomic polynomial.

The programs for A015218, there is no canonical definition to state claims against.
-/

/-! ## A015218.P9983262694231930153

`or(A010054(A033046(n)), A016076(n))`
-/

namespace A015218.P9983262694231930153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A033046 n).toNat) (A016076 n)

end

end A015218.P9983262694231930153

/-! ## A015218.P4272036210436655144

`A015452(n)%A322348(n)`
-/

namespace A015218.P4272036210436655144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015452 n) (A322348 n)

end

end A015218.P4272036210436655144

/-! ## A015218.P4289356673327025361

`A015608(n)%A322348(n)`
-/

namespace A015218.P4289356673327025361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015608 n) (A322348 n)

end

end A015218.P4289356673327025361

/-! ## A015218.P16208205402815694867

`A015686(n)%A322348(n)`
-/

namespace A015218.P16208205402815694867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015686 n) (A322348 n)

end

end A015218.P16208205402815694867

/-! ## A015218.P12375835989843086420

`A015842(n)%A322348(n)`
-/

namespace A015218.P12375835989843086420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015842 n) (A322348 n)

end

end A015218.P12375835989843086420

/-!
# A015219: Odd tetrahedral numbers: a(n) = (4*n+1)*(4*n+2)*(4*n+3)/6.

The programs for A015219, the canonical program `A015219.P6521829125013466642` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015219 has offset 0).

The definition of A015219 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*n+1)*(4*n+2)*(4*n+3)/6` (program `A015219.P13246111578859467062`, by `A015219.P13246111578859467062.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015219.P13246111578859467062

`(4*n+1)*(4*n+2)*(4*n+3)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A015219.P13246111578859467062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℚ) * ((4 * n + 2 : ℚ) * ((4 * n + 3 : ℚ) / 6))

end

end A015219.P13246111578859467062

namespace A015219

/-- `(4*n+1)*(4*n+2)*(4*n+3)/6` -/
def P13246111578859467062.Spec : Prop :=
  ∀ n, P13246111578859467062.a n = (A015219 n : ℚ)

theorem P13246111578859467062.correct : P13246111578859467062.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A015219, Nat.add_sub_cancel, A015219.P13246111578859467062.a, A015219.P6521829125013466642.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A015219, Nat.add_sub_cancel, A015219.P13246111578859467062.a, A015219.P6521829125013466642.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A015219

/-! ## A015219.P6521829125013466642

`64+3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=35, a(2)=165`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015219

/-- `64+3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P6521829125013466642.Spec : Prop :=
  ∀ n, P6521829125013466642.a n = A015219 n

theorem P6521829125013466642.correct : P6521829125013466642.Spec := by
  intro n
  simp only [A015219]

end A015219

/-! ## A015219.P3907719232862841341

`A001505(n)/6`
-/

namespace A015219.P3907719232862841341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001505 n : ℚ) / 6

end

end A015219.P3907719232862841341

namespace A015219

/-- `A001505(n)/6` -/
def P3907719232862841341.Spec : Prop :=
  ∀ n, P3907719232862841341.a n = (A015219 n : ℚ)

end A015219

/-! ## A015219.P2751837750904297129

`A000447(2*n+1)`
-/

namespace A015219.P2751837750904297129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (2 * n + 1)

end

end A015219.P2751837750904297129

namespace A015219

/-- `A000447(2*n+1)` -/
def P2751837750904297129.Spec : Prop :=
  ∀ n, P2751837750904297129.a n = A015219 n

end A015219

/-! ## A015219.P11299479460105655342

`A000292(4*n+1)`
-/

namespace A015219.P11299479460105655342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (4 * n + 1)

end

end A015219.P11299479460105655342

namespace A015219

/-- `A000292(4*n+1)` -/
def P11299479460105655342.Spec : Prop :=
  ∀ n, P11299479460105655342.a n = A015219 n

end A015219

/-! ## A015219.P11698663659690004160

`record[C(xor(3, n), 3)]`
-/

namespace A015219.P11698663659690004160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 3 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015219.P11698663659690004160

namespace A015219

/-- `record[C(xor(3, n), 3)]` -/
def P11698663659690004160.Spec : Prop :=
  ∀ n, (P11698663659690004160.a n : ℤ) = A015219 n

end A015219

/-! ## A015219.P5723953046218986885

`C(4*n+3, 3)`
-/

namespace A015219.P5723953046218986885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (4 * n + 3) 3

end

end A015219.P5723953046218986885

namespace A015219

/-- `C(4*n+3, 3)` -/
def P5723953046218986885.Spec : Prop :=
  ∀ n, (P5723953046218986885.a n : ℤ) = A015219 n

end A015219

/-! ## A015219.P3633916101969255797

`or(1, C(xor(3, 4*n), 3))`
-/

namespace A015219.P3633916101969255797
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.choose (Nat.xor 3 (4 * n)) 3)

end

end A015219.P3633916101969255797

namespace A015219

/-- `or(1, C(xor(3, 4*n), 3))` -/
def P3633916101969255797.Spec : Prop :=
  ∀ n, (P3633916101969255797.a n : ℤ) = A015219 n

end A015219

/-! ## A015219.P9775239810294411638

`record[C(or(3, n+3), n+3)]`
-/

namespace A015219.P9775239810294411638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.lor 3 (n + 3)) (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015219.P9775239810294411638

namespace A015219

/-- `record[C(or(3, n+3), n+3)]` -/
def P9775239810294411638.Spec : Prop :=
  ∀ n, (P9775239810294411638.a n : ℤ) = A015219 n

end A015219

/-! ## A015219.P2740149930834928642

`xor(1, C(xor(3, 4*n), 3)-1)`
-/

namespace A015219.P2740149930834928642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((Nat.choose (Nat.xor 3 (4 * n)) 3 : ℤ) - 1)

end

end A015219.P2740149930834928642

namespace A015219

/-- `xor(1, C(xor(3, 4*n), 3)-1)` -/
def P2740149930834928642.Spec : Prop :=
  ∀ n, P2740149930834928642.a n = A015219 n

end A015219

/-! ## A015219.P17688929507877782562

`xor(1, xor(1, C(xor(3, 4*n), 3)))`
-/

namespace A015219.P17688929507877782562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.xor 1 (Nat.choose (Nat.xor 3 (4 * n)) 3))

end

end A015219.P17688929507877782562

namespace A015219

/-- `xor(1, xor(1, C(xor(3, 4*n), 3)))` -/
def P17688929507877782562.Spec : Prop :=
  ∀ n, (P17688929507877782562.a n : ℤ) = A015219 n

end A015219

/-! ## A015219.P9848301183550121365

`sqrt(A014795(n))`
-/

namespace A015219.P9848301183550121365
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014795 n : ℝ)

end

end A015219.P9848301183550121365

namespace A015219

/-- `sqrt(A014795(n))` -/
def P9848301183550121365.Spec : Prop :=
  ∀ n, P9848301183550121365.a n = (A015219 n : ℝ)

end A015219

/-! ## A015219.P2496424182298121781

`∑[A010021(n)]`
-/

namespace A015219.P2496424182298121781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010021 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015219.P2496424182298121781

namespace A015219

/-- `∑[A010021(n)]` -/
def P2496424182298121781.Spec : Prop :=
  ∀ n, P2496424182298121781.a n = A015219 n

end A015219

/-! ## A015219.P2506628419584486127

`∑[A158575(n)]+n`
-/

namespace A015219.P2506628419584486127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A015219.P2506628419584486127

namespace A015219

/-- `∑[A158575(n)]+n` -/
def P2506628419584486127.Spec : Prop :=
  ∀ n, P2506628419584486127.a n = A015219 n

end A015219

/-! ## A015219.P11393509867453580311

`∑[A010020(n)+n²]`
-/

namespace A015219.P11393509867453580311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010020 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015219.P11393509867453580311

namespace A015219

/-- `∑[A010020(n)+n²]` -/
def P11393509867453580311.Spec : Prop :=
  ∀ n, P11393509867453580311.a n = A015219 n

end A015219

/-! ## A015219.P6191677263376759792

`A060541(n+1)/(n+1)`
-/

namespace A015219.P6191677263376759792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060541 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A015219.P6191677263376759792

namespace A015219

/-- `A060541(n+1)/(n+1)` -/
def P6191677263376759792.Spec : Prop :=
  ∀ n, P6191677263376759792.a n = (A015219 n : ℚ)

end A015219

/-! ## A015219.P13626884380965729279

`A006331(n)+A005904(n)`
-/

namespace A015219.P13626884380965729279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006331 n + A005904 n

end

end A015219.P13626884380965729279

namespace A015219

/-- `A006331(n)+A005904(n)` -/
def P13626884380965729279.Spec : Prop :=
  ∀ n, P13626884380965729279.a n = A015219 n

end A015219

/-! ## A015219.P7786906997947378660

`A267031(n)+A016814(n)`
-/

namespace A015219.P7786906997947378660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267031 n + A016814 n

end

end A015219.P7786906997947378660

namespace A015219

/-- `A267031(n)+A016814(n)` -/
def P7786906997947378660.Spec : Prop :=
  ∀ n, P7786906997947378660.a n = A015219 n

end A015219

/-! ## A015219.P5064280025944418924

`A258582(n)+A079588(n)`
-/

namespace A015219.P5064280025944418924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258582 n + A079588 n

end

end A015219.P5064280025944418924

namespace A015219

/-- `A258582(n)+A079588(n)` -/
def P5064280025944418924.Spec : Prop :=
  ∀ n, P5064280025944418924.a n = A015219 n

end A015219

/-! ## A015219.P7394244059984437553

`A100161(n+1)+A084367(n)`
-/

namespace A015219.P7394244059984437553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100161 (n + 1) + A084367 n

end

end A015219.P7394244059984437553

namespace A015219

/-- `A100161(n+1)+A084367(n)` -/
def P7394244059984437553.Spec : Prop :=
  ∀ n, P7394244059984437553.a n = A015219 n

end A015219

/-!
# A015220: Even tetrahedral numbers.

The programs for A015220, the canonical program `A015220.P14459921661006471296` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015220 has offset 0).

The definition of A015220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015220.P14459921661006471296

`64+3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=0, a(1)=4, a(2)=10, a(3)=20, a(4)=56, a(5)=84, a(6)=120, a(7)=220, a(8)=286`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015220

/-- `64+3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P14459921661006471296.Spec : Prop :=
  ∀ n, P14459921661006471296.a n = A015220 n

theorem P14459921661006471296.correct : P14459921661006471296.Spec := by
  intro n
  simp only [A015220]

end A015220

/-! ## A015220.P7953406205735078523

`A000292(A004772(n+1))`
-/

namespace A015220.P7953406205735078523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A004772 (n + 1)).toNat

end

end A015220.P7953406205735078523

namespace A015220

/-- `A000292(A004772(n+1))` -/
def P7953406205735078523.Spec : Prop :=
  ∀ n, P7953406205735078523.a n = A015220 n

end A015220

/-! ## A015220.P7305096964668127989

`record[C(n%or(3, n), 3)]`
-/

namespace A015220.P7305096964668127989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n % Nat.lor 3 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015220.P7305096964668127989

namespace A015220

/-- `record[C(n%or(3, n), 3)]` -/
def P7305096964668127989.Spec : Prop :=
  ∀ n, (P7305096964668127989.a n : ℤ) = A015220 n

end A015220

/-! ## A015220.P3111419902577655772

`C(comp[record[lcm(2, n)]]+1, 3)`
-/

namespace A015220.P3111419902577655772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) 3

end

end A015220.P3111419902577655772

namespace A015220

/-- `C(comp[record[lcm(2, n)]]+1, 3)` -/
def P3111419902577655772.Spec : Prop :=
  ∀ n, (P3111419902577655772.a n : ℤ) = A015220 n

end A015220

/-! ## A015220.P89004477443415677

`C(floor(4*(n+2)/3), 3)`
-/

namespace A015220.P89004477443415677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊4 * ((n + 2 : ℚ) / 3)⌋.toNat 3

end

end A015220.P89004477443415677

namespace A015220

/-- `C(floor(4*(n+2)/3), 3)` -/
def P89004477443415677.Spec : Prop :=
  ∀ n, (P89004477443415677.a n : ℤ) = A015220 n

end A015220

/-! ## A015220.P10539463389203386397

`record[C(and(n, n+3)/2, 3)]`
-/

namespace A015220.P10539463389203386397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((Nat.land n (n + 3) : ℚ) / 2)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015220.P10539463389203386397

namespace A015220

/-- `record[C(and(n, n+3)/2, 3)]` -/
def P10539463389203386397.Spec : Prop :=
  ∀ n, (P10539463389203386397.a n : ℤ) = A015220 n

end A015220

/-! ## A015220.P18077503694898913032

`sqrt(A014796(n))`
-/

namespace A015220.P18077503694898913032
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014796 n : ℝ)

end

end A015220.P18077503694898913032

namespace A015220

/-- `sqrt(A014796(n))` -/
def P18077503694898913032.Spec : Prop :=
  ∀ n, P18077503694898913032.a n = (A015220 n : ℝ)

end A015220

/-! ## A015220.P18297403683587111448

`∪[A002492(n), A267031(n)]`
-/

namespace A015220.P18297403683587111448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002492 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267031 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A015220.P18297403683587111448

namespace A015220

/-- `∪[A002492(n), A267031(n)]` -/
def P18297403683587111448.Spec : Prop :=
  ∀ n, (P18297403683587111448.a n : ℤ) = A015220 n

end A015220

/-! ## A015220.P11540636923930294961

`A000292(ceil(4*n/3))`
-/

namespace A015220.P11540636923930294961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 ⌈4 * ((n : ℚ) / 3)⌉.toNat

end

end A015220.P11540636923930294961

namespace A015220

/-- `A000292(ceil(4*n/3))` -/
def P11540636923930294961.Spec : Prop :=
  ∀ n, P11540636923930294961.a n = A015220 n

end A015220

/-! ## A015220.P5137803581376805953

`record[A000292(n)*A152822(n+1)]`
-/

namespace A015220.P5137803581376805953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A152822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015220.P5137803581376805953

namespace A015220

/-- `record[A000292(n)*A152822(n+1)]` -/
def P5137803581376805953.Spec : Prop :=
  ∀ n, P5137803581376805953.a n = A015220 n

end A015220

/-! ## A015220.P12247984994626435745

`record[A000292(n+1)*A166486(n)]`
-/

namespace A015220.P12247984994626435745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) * A166486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015220.P12247984994626435745

namespace A015220

/-- `record[A000292(n+1)*A166486(n)]` -/
def P12247984994626435745.Spec : Prop :=
  ∀ n, P12247984994626435745.a n = A015220 n

end A015220

/-! ## A015220.P15034645313847124590

`A000292(A042965(n+2)-1)%(n+1)²²`
-/

namespace A015220.P15034645313847124590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000292 (A042965 (n + 2) - 1).toNat) (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A015220.P15034645313847124590

namespace A015220

/-- `A000292(A042965(n+2)-1)%(n+1)²²` -/
def P15034645313847124590.Spec : Prop :=
  ∀ n, P15034645313847124590.a n = A015220 n

end A015220

/-! ## A015220.P314208874672866053

`record[A000292(A080412(n))]`
-/

namespace A015220.P314208874672866053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A080412 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015220.P314208874672866053

namespace A015220

/-- `record[A000292(A080412(n))]` -/
def P314208874672866053.Spec : Prop :=
  ∀ n, P314208874672866053.a n = A015220 n

end A015220

/-! ## A015220.P2336459758583612170

`record[A000292(A002264(lcm(2, n)))]`
-/

namespace A015220.P2336459758583612170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002264 (Nat.lcm 2 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015220.P2336459758583612170

namespace A015220

/-- `record[A000292(A002264(lcm(2, n)))]` -/
def P2336459758583612170.Spec : Prop :=
  ∀ n, P2336459758583612170.a n = A015220 n

end A015220

/-! ## A015220.P17525420115746220191

`record[C(A323465(n+1), 3)]`
-/

namespace A015220.P17525420115746220191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A323465 (n + 1)).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015220.P17525420115746220191

namespace A015220

/-- `record[C(A323465(n+1), 3)]` -/
def P17525420115746220191.Spec : Prop :=
  ∀ n, (P17525420115746220191.a n : ℤ) = A015220 n

end A015220

/-! ## A015220.P4650800216982888336

`record[A000292(A002262(2*n+1))]`
-/

namespace A015220.P4650800216982888336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002262 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015220.P4650800216982888336

namespace A015220

/-- `record[A000292(A002262(2*n+1))]` -/
def P4650800216982888336.Spec : Prop :=
  ∀ n, P4650800216982888336.a n = A015220 n

end A015220

/-! ## A015220.P2633769039875458720

`record[C(A002262(2*(n+1)), 3)]`
-/

namespace A015220.P2633769039875458720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002262 (2 * (n + 1))).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015220.P2633769039875458720

namespace A015220

/-- `record[C(A002262(2*(n+1)), 3)]` -/
def P2633769039875458720.Spec : Prop :=
  ∀ n, (P2633769039875458720.a n : ℤ) = A015220 n

end A015220

/-!
# A015221: Odd square pyramidal numbers.

The programs for A015221, the canonical program `A015221.P17996367850377908959` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015221 has offset 0).

The definition of A015221 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015221.P17996367850377908959

`3*a(n-2)-3*a(n-4)+a(n-6)+128` with `a(0)=1, a(1)=5, a(2)=55, a(3)=91, a(4)=285, a(5)=385`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015221

/-- `3*a(n-2)-3*a(n-4)+a(n-6)+128` -/
def P17996367850377908959.Spec : Prop :=
  ∀ n, P17996367850377908959.a n = A015221 n

theorem P17996367850377908959.correct : P17996367850377908959.Spec := by
  intro n
  simp only [A015221]

end A015221

/-! ## A015221.P18244727480046644804

`C(2*(comp[or(2, n)]+2), 3)/4`
-/

namespace A015221.P18244727480046644804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 2)) 3 : ℚ) / 4

end

end A015221.P18244727480046644804

namespace A015221

/-- `C(2*(comp[or(2, n)]+2), 3)/4` -/
def P18244727480046644804.Spec : Prop :=
  ∀ n, P18244727480046644804.a n = (A015221 n : ℚ)

end A015221

/-! ## A015221.P1193858399823608770

`sqrt(A014797(n))`
-/

namespace A015221.P1193858399823608770
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014797 n : ℝ)

end

end A015221.P1193858399823608770

namespace A015221

/-- `sqrt(A014797(n))` -/
def P1193858399823608770.Spec : Prop :=
  ∀ n, P1193858399823608770.a n = (A015221 n : ℝ)

end A015221

/-! ## A015221.P1691805932601447431

`A000330(or(1, n)+n)`
-/

namespace A015221.P1691805932601447431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (Nat.lor 1 n + n)

end

end A015221.P1691805932601447431

namespace A015221

/-- `A000330(or(1, n)+n)` -/
def P1691805932601447431.Spec : Prop :=
  ∀ n, P1691805932601447431.a n = A015221 n

end A015221

/-! ## A015221.P4677969585598278472

`A000330(record[or(2, n)-1])`
-/

namespace A015221.P4677969585598278472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015221.P4677969585598278472

namespace A015221

/-- `A000330(record[or(2, n)-1])` -/
def P4677969585598278472.Spec : Prop :=
  ∀ n, P4677969585598278472.a n = A015221 n

end A015221

/-! ## A015221.P10841149925029106560

`A000330(record[xor(2, n)-1])`
-/

namespace A015221.P10841149925029106560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015221.P10841149925029106560

namespace A015221

/-- `A000330(record[xor(2, n)-1])` -/
def P10841149925029106560.Spec : Prop :=
  ∀ n, P10841149925029106560.a n = A015221 n

end A015221

/-! ## A015221.P13940423609407215972

`record[∑[(n+1)²]^A057077(n)]`
-/

namespace A015221.P13940423609407215972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) ^ (A057077 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015221.P13940423609407215972

namespace A015221

/-- `record[∑[(n+1)²]^A057077(n)]` -/
def P13940423609407215972.Spec : Prop :=
  ∀ n, P13940423609407215972.a n = (A015221 n : ℚ)

end A015221

/-! ## A015221.P583266739771827070

`A000330(∑[floor(a(n-2))])` with `a(0)=1, a(1)=1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A015221.P583266739771827070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015221.P583266739771827070

namespace A015221

/-- `A000330(∑[floor(a(n-2))])` -/
def P583266739771827070.Spec : Prop :=
  ∀ n, P583266739771827070.a n = A015221 n

end A015221

/-! ## A015221.P5903057558367758815

`A000330((n+1)%2+2*n)`
-/

namespace A015221.P5903057558367758815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 ((n + 1) % 2 + 2 * n)

end

end A015221.P5903057558367758815

namespace A015221

/-- `A000330((n+1)%2+2*n)` -/
def P5903057558367758815.Spec : Prop :=
  ∀ n, P5903057558367758815.a n = A015221 n

end A015221

/-! ## A015221.P14092137259552831769

`A000330(gcd(2, n)+2*n-1)`
-/

namespace A015221.P14092137259552831769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (Nat.gcd 2 n + 2 * n - 1)

end

end A015221.P14092137259552831769

namespace A015221

/-- `A000330(gcd(2, n)+2*n-1)` -/
def P14092137259552831769.Spec : Prop :=
  ∀ n, P14092137259552831769.a n = A015221 n

end A015221

/-! ## A015221.P975088927997664156

`A000330(and(1, n+1)+2*n)`
-/

namespace A015221.P975088927997664156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (Nat.land 1 (n + 1) + 2 * n)

end

end A015221.P975088927997664156

namespace A015221

/-- `A000330(and(1, n+1)+2*n)` -/
def P975088927997664156.Spec : Prop :=
  ∀ n, P975088927997664156.a n = A015221 n

end A015221

/-! ## A015221.P10317876974587790010

`A059270(3*n+char[2*n]-n)/3`
-/

namespace A015221.P10317876974587790010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059270 ((3 * n : ℤ) + (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - (n : ℤ))).toNat : ℚ) / 3

end

end A015221.P10317876974587790010

namespace A015221

/-- `A059270(3*n+char[2*n]-n)/3` -/
def P10317876974587790010.Spec : Prop :=
  ∀ n, P10317876974587790010.a n = (A015221 n : ℚ)

end A015221

/-! ## A015221.P8040036280901992170

`A000330(Δ[A014848(n)])`
-/

namespace A015221.P8040036280901992170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (f1 (n + 1) - f1 n).toNat

end

end A015221.P8040036280901992170

namespace A015221

/-- `A000330(Δ[A014848(n)])` -/
def P8040036280901992170.Spec : Prop :=
  ∀ n, P8040036280901992170.a n = A015221 n

end A015221

/-! ## A015221.P11560290498592989015

`A000330(A042948(n)+1)`
-/

namespace A015221.P11560290498592989015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A042948 n + 1).toNat

end

end A015221.P11560290498592989015

namespace A015221

/-- `A000330(A042948(n)+1)` -/
def P11560290498592989015.Spec : Prop :=
  ∀ n, P11560290498592989015.a n = A015221 n

end A015221

/-! ## A015221.P6726105296777763834

`A000330(A042963(n+1))`
-/

namespace A015221.P6726105296777763834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A042963 (n + 1)).toNat

end

end A015221.P6726105296777763834

namespace A015221

/-- `A000330(A042963(n+1))` -/
def P6726105296777763834.Spec : Prop :=
  ∀ n, P6726105296777763834.a n = A015221 n

end A015221

/-! ## A015221.P8058613128830277711

`A000330(A116966(2*n))`
-/

namespace A015221.P8058613128830277711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A116966 (2 * n)).toNat

end

end A015221.P8058613128830277711

namespace A015221

/-- `A000330(A116966(2*n))` -/
def P8058613128830277711.Spec : Prop :=
  ∀ n, P8058613128830277711.a n = A015221 n

end A015221

/-! ## A015221.P10977030154457248209

`A000330(xor(1, A014601(n)))`
-/

namespace A015221.P10977030154457248209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (Int.xor 1 (A014601 n)).toNat

end

end A015221.P10977030154457248209

namespace A015221

/-- `A000330(xor(1, A014601(n)))` -/
def P10977030154457248209.Spec : Prop :=
  ∀ n, P10977030154457248209.a n = A015221 n

end A015221

/-! ## A015221.P18112160924176836297

`A000330(A109613(n)+n)`
-/

namespace A015221.P18112160924176836297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A109613 n + (n : ℤ)).toNat

end

end A015221.P18112160924176836297

namespace A015221

/-- `A000330(A109613(n)+n)` -/
def P18112160924176836297.Spec : Prop :=
  ∀ n, P18112160924176836297.a n = A015221 n

end A015221

/-! ## A015221.P1721507767906856225

`A000330(∑[A176040(n)]-2)`
-/

namespace A015221.P1721507767906856225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ j ∈ Finset.range (n + 1), f1 j - 2).toNat

end

end A015221.P1721507767906856225

namespace A015221

/-- `A000330(∑[A176040(n)]-2)` -/
def P1721507767906856225.Spec : Prop :=
  ∀ n, P1721507767906856225.a n = A015221 n

end A015221

/-! ## A015221.P8155033191206754182

`A000330(record[A092486(n)-2])`
-/

namespace A015221.P8155033191206754182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015221.P8155033191206754182

namespace A015221

/-- `A000330(record[A092486(n)-2])` -/
def P8155033191206754182.Spec : Prop :=
  ∀ n, P8155033191206754182.a n = A015221 n

end A015221

/-!
# A015222: Even square pyramidal numbers.

The programs for A015222, the canonical program `A015222.P10850058930109427939` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015222 has offset 1).

The definition of A015222 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015222.P10850058930109427939

`3*a(n-2)-3*a(n-4)+a(n-6)+128` with `a(0)=14, a(1)=30, a(2)=140, a(3)=204, a(4)=506, a(5)=650`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015222

/-- `3*a(n-2)-3*a(n-4)+a(n-6)+128` -/
def P10850058930109427939.Spec : Prop :=
  ∀ n, P10850058930109427939.a n = A015222 (n + 1)

theorem P10850058930109427939.correct : P10850058930109427939.Spec := by
  intro n
  simp only [A015222, Nat.add_sub_cancel]

end A015222

/-! ## A015222.P12161534383227581116

`sqrt(A014798(n))`
-/

namespace A015222.P12161534383227581116
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014798 n : ℝ)

end

end A015222.P12161534383227581116

namespace A015222

/-- `sqrt(A014798(n))` -/
def P12161534383227581116.Spec : Prop :=
  ∀ n, P12161534383227581116.a n = (A015222 (n + 1) : ℝ)

end A015222

/-! ## A015222.P1401712019483483390

`A000330(record[or(2, n)+1])`
-/

namespace A015222.P1401712019483483390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A015222.P1401712019483483390

namespace A015222

/-- `A000330(record[or(2, n)+1])` -/
def P1401712019483483390.Spec : Prop :=
  ∀ n, P1401712019483483390.a n = A015222 (n + 1)

end A015222

/-! ## A015222.P10005482492236360530

`A000330(record[xor(2, n)+1])`
-/

namespace A015222.P10005482492236360530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A015222.P10005482492236360530

namespace A015222

/-- `A000330(record[xor(2, n)+1])` -/
def P10005482492236360530.Spec : Prop :=
  ∀ n, P10005482492236360530.a n = A015222 (n + 1)

end A015222

/-! ## A015222.P12811746141041415680

`A000330(∑[gcd(3, n%2)])`
-/

namespace A015222.P12811746141041415680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015222.P12811746141041415680

namespace A015222

/-- `A000330(∑[gcd(3, n%2)])` -/
def P12811746141041415680.Spec : Prop :=
  ∀ n, P12811746141041415680.a n = A015222 (n + 1)

end A015222

/-! ## A015222.P10026345453840616930

`A000330(or(1, n)+n+2)`
-/

namespace A015222.P10026345453840616930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (Nat.lor 1 n + (n + 2))

end

end A015222.P10026345453840616930

namespace A015222

/-- `A000330(or(1, n)+n+2)` -/
def P10026345453840616930.Spec : Prop :=
  ∀ n, P10026345453840616930.a n = A015222 (n + 1)

end A015222

/-! ## A015222.P13212753830834038736

`A000330(∑[(2*n+3)%4])`
-/

namespace A015222.P13212753830834038736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) % 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015222.P13212753830834038736

namespace A015222

/-- `A000330(∑[(2*n+3)%4])` -/
def P13212753830834038736.Spec : Prop :=
  ∀ n, P13212753830834038736.a n = A015222 (n + 1)

end A015222

/-! ## A015222.P693278472722991871

`A000330(∑[4-a(n-1)])` with `a(0)=3`
-/

namespace A015222.P693278472722991871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015222.P693278472722991871

namespace A015222

/-- `A000330(∑[4-a(n-1)])` -/
def P693278472722991871.Spec : Prop :=
  ∀ n, P693278472722991871.a n = A015222 (n + 1)

end A015222

/-! ## A015222.P5901157633226065889

`A000330(∑[A176040(n)])`
-/

namespace A015222.P5901157633226065889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015222.P5901157633226065889

namespace A015222

/-- `A000330(∑[A176040(n)])` -/
def P5901157633226065889.Spec : Prop :=
  ∀ n, P5901157633226065889.a n = A015222 (n + 1)

end A015222

/-! ## A015222.P36354046763243497

`A000330(record[A092486(n)])`
-/

namespace A015222.P36354046763243497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A015222.P36354046763243497

namespace A015222

/-- `A000330(record[A092486(n)])` -/
def P36354046763243497.Spec : Prop :=
  ∀ n, P36354046763243497.a n = A015222 (n + 1)

end A015222

/-! ## A015222.P52279418536541538

`A000330(A014601(n+1))`
-/

namespace A015222.P52279418536541538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A014601 (n + 1)).toNat

end

end A015222.P52279418536541538

namespace A015222

/-- `A000330(A014601(n+1))` -/
def P52279418536541538.Spec : Prop :=
  ∀ n, P52279418536541538.a n = A015222 (n + 1)

end A015222

/-! ## A015222.P10109332027885958851

`A000330(A154708(n+1))`
-/

namespace A015222.P10109332027885958851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A154708 (n + 1)).toNat

end

end A015222.P10109332027885958851

namespace A015222

/-- `A000330(A154708(n+1))` -/
def P10109332027885958851.Spec : Prop :=
  ∀ n, P10109332027885958851.a n = A015222 (n + 1)

end A015222

/-! ## A015222.P10808823823705626022

`A000330(A042948(n)+3)`
-/

namespace A015222.P10808823823705626022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A042948 n + 3).toNat

end

end A015222.P10808823823705626022

namespace A015222

/-- `A000330(A042948(n)+3)` -/
def P10808823823705626022.Spec : Prop :=
  ∀ n, P10808823823705626022.a n = A015222 (n + 1)

end A015222

/-! ## A015222.P17771083545687058100

`A000330(lt[1, A136480(n)])`
-/

namespace A015222.P17771083545687058100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A015222.P17771083545687058100

namespace A015222

/-- `A000330(lt[1, A136480(n)])` -/
def P17771083545687058100.Spec : Prop :=
  ∀ n, P17771083545687058100.a n = A015222 (n + 1)

end A015222

/-! ## A015222.P15681243162827183340

`A000330(∑[A010684(n+1)])`
-/

namespace A015222.P15681243162827183340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015222.P15681243162827183340

namespace A015222

/-- `A000330(∑[A010684(n+1)])` -/
def P15681243162827183340.Spec : Prop :=
  ∀ n, P15681243162827183340.a n = A015222 (n + 1)

end A015222

/-! ## A015222.P2872819643852509880

`A000330(Δ[A014848(n)]+2)`
-/

namespace A015222.P2872819643852509880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (f1 (n + 1) - f1 n + 2).toNat

end

end A015222.P2872819643852509880

namespace A015222

/-- `A000330(Δ[A014848(n)]+2)` -/
def P2872819643852509880.Spec : Prop :=
  ∀ n, P2872819643852509880.a n = A015222 (n + 1)

end A015222

/-! ## A015222.P10715852009419685055

`A000330(A042963(n+1)+2)`
-/

namespace A015222.P10715852009419685055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A042963 (n + 1) + 2).toNat

end

end A015222.P10715852009419685055

namespace A015222

/-- `A000330(A042963(n+1)+2)` -/
def P10715852009419685055.Spec : Prop :=
  ∀ n, P10715852009419685055.a n = A015222 (n + 1)

end A015222

/-! ## A015222.P11163503002368644247

`A000330(A116966(2*n+1))`
-/

namespace A015222.P11163503002368644247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A116966 (2 * n + 1)).toNat

end

end A015222.P11163503002368644247

namespace A015222

/-- `A000330(A116966(2*n+1))` -/
def P11163503002368644247.Spec : Prop :=
  ∀ n, P11163503002368644247.a n = A015222 (n + 1)

end A015222

/-! ## A015222.P8376704765171705915

`A000330(A298364(2*(n+1)))`
-/

namespace A015222.P8376704765171705915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A298364 (2 * (n + 1))).toNat

end

end A015222.P8376704765171705915

namespace A015222

/-- `A000330(A298364(2*(n+1)))` -/
def P8376704765171705915.Spec : Prop :=
  ∀ n, P8376704765171705915.a n = A015222 (n + 1)

end A015222

/-! ## A015222.P1396766075058024015

`A000330(A047270(n+1)-n)`
-/

namespace A015222.P1396766075058024015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (A047270 (n + 1) - (n : ℤ)).toNat

end

end A015222.P1396766075058024015

namespace A015222

/-- `A000330(A047270(n+1)-n)` -/
def P1396766075058024015.Spec : Prop :=
  ∀ n, P1396766075058024015.a n = A015222 (n + 1)

end A015222

/-!
# A015223: Odd pentagonal pyramidal numbers.

The programs for A015223, the canonical program `A015223.P4177858037070881700` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015223 has offset 0).

The definition of A015223 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015223.P4177858037070881700

`(2*n+1)*(4*n+1)²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015223

/-- `(2*n+1)*(4*n+1)²` -/
def P4177858037070881700.Spec : Prop :=
  ∀ n, (P4177858037070881700.a n : ℤ) = A015223 n

theorem P4177858037070881700.correct : P4177858037070881700.Spec := by
  intro n
  simp only [A015223]

end A015223

/-! ## A015223.P3075571393238001942

`3*a(n-1)-3*a(n-2)+a(n-3)+192` with `a(0)=1, a(1)=75, a(2)=405`
-/

namespace A015223.P3075571393238001942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 75, 405] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3) + 192

end

end A015223.P3075571393238001942

namespace A015223

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+192` -/
def P3075571393238001942.Spec : Prop :=
  ∀ n, P3075571393238001942.a n = A015223 n

theorem P3075571393238001942.correct : P3075571393238001942.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A015223, Nat.add_sub_cancel, A015223.P3075571393238001942.a, A015223.P4177858037070881700.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A015223, Nat.add_sub_cancel, A015223.P3075571393238001942.a, A015223.P4177858037070881700.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A015223

/-! ## A015223.P12879142270996411743

`A130656(4*n+1)`
-/

namespace A015223.P12879142270996411743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130656 (4 * n + 1)

end

end A015223.P12879142270996411743

namespace A015223

/-- `A130656(4*n+1)` -/
def P12879142270996411743.Spec : Prop :=
  ∀ n, P12879142270996411743.a n = A015223 n

end A015223

/-! ## A015223.P17923648693596548956

`lcm((4*n+1)², comp[2*n])`
-/

namespace A015223.P17923648693596548956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((4 * n + 1) ^ 2) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A015223.P17923648693596548956

namespace A015223

/-- `lcm((4*n+1)², comp[2*n])` -/
def P17923648693596548956.Spec : Prop :=
  ∀ n, (P17923648693596548956.a n : ℤ) = A015223 n

end A015223

/-! ## A015223.P600402398473914305

`sqrt(A014799(n))`
-/

namespace A015223.P600402398473914305
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014799 n : ℝ)

end

end A015223.P600402398473914305

namespace A015223

/-- `sqrt(A014799(n))` -/
def P600402398473914305.Spec : Prop :=
  ∀ n, P600402398473914305.a n = (A015223 n : ℝ)

end A015223

/-! ## A015223.P8956144816230303725

`A014634(n)²/Δ[n²]`
-/

namespace A015223.P8956144816230303725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014634 n ^ 2 : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A015223.P8956144816230303725

namespace A015223

/-- `A014634(n)²/Δ[n²]` -/
def P8956144816230303725.Spec : Prop :=
  ∀ n, P8956144816230303725.a n = (A015223 n : ℚ)

end A015223

/-! ## A015223.P917875589066856127

`A014771(n+1)/Δ[n²]`
-/

namespace A015223.P917875589066856127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014771 (n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A015223.P917875589066856127

namespace A015223

/-- `A014771(n+1)/Δ[n²]` -/
def P917875589066856127.Spec : Prop :=
  ∀ n, P917875589066856127.a n = (A015223 n : ℚ)

end A015223

/-! ## A015223.P9805699766691302018

`A316224(n)+A033591(n)`
-/

namespace A015223.P9805699766691302018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316224 n + A033591 n

end

end A015223.P9805699766691302018

namespace A015223

/-- `A316224(n)+A033591(n)` -/
def P9805699766691302018.Spec : Prop :=
  ∀ n, P9805699766691302018.a n = A015223 n

end A015223

/-! ## A015223.P15584205761173125387

`A349682(n)-A084367(n)`
-/

namespace A015223.P15584205761173125387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349682 n - A084367 n

end

end A015223.P15584205761173125387

namespace A015223

/-- `A349682(n)-A084367(n)` -/
def P15584205761173125387.Spec : Prop :=
  ∀ n, P15584205761173125387.a n = A015223 n

end A015223

/-! ## A015223.P8569634038702026797

`sqrt(A016754(n)*A016816(n))`
-/

namespace A015223.P8569634038702026797
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016754 n * A016816 n : ℝ)

end

end A015223.P8569634038702026797

namespace A015223

/-- `sqrt(A016754(n)*A016816(n))` -/
def P8569634038702026797.Spec : Prop :=
  ∀ n, P8569634038702026797.a n = (A015223 n : ℝ)

end A015223

/-! ## A015223.P544830006886555537

`A393192(n+1)+A014635(n)`
-/

namespace A015223.P544830006886555537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393192 (n + 1) + A014635 n

end

end A015223.P544830006886555537

namespace A015223

/-- `A393192(n+1)+A014635(n)` -/
def P544830006886555537.Spec : Prop :=
  ∀ n, P544830006886555537.a n = A015223 n

end A015223

/-! ## A015223.P18041413089295229738

`A280059(n)+2*A316224(n)`
-/

namespace A015223.P18041413089295229738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280059 n + 2 * A316224 n

end

end A015223.P18041413089295229738

namespace A015223

/-- `A280059(n)+2*A316224(n)` -/
def P18041413089295229738.Spec : Prop :=
  ∀ n, P18041413089295229738.a n = A015223 n

end A015223

/-! ## A015223.P14381067287582531569

`(A016815(n)+A016814(n))/2`
-/

namespace A015223.P14381067287582531569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016815 n + A016814 n : ℚ) / 2

end

end A015223.P14381067287582531569

namespace A015223

/-- `(A016815(n)+A016814(n))/2` -/
def P14381067287582531569.Spec : Prop :=
  ∀ n, P14381067287582531569.a n = (A015223 n : ℚ)

end A015223

/-! ## A015223.P3654305749598145433

`2*A033591(n)-A280059(n)`
-/

namespace A015223.P3654305749598145433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033591 n - A280059 n

end

end A015223.P3654305749598145433

namespace A015223

/-- `2*A033591(n)-A280059(n)` -/
def P3654305749598145433.Spec : Prop :=
  ∀ n, P3654305749598145433.a n = A015223 n

end A015223

/-! ## A015223.P4171120781567516331

`A280059(n)+n*A157870(n)`
-/

namespace A015223.P4171120781567516331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280059 n + (n : ℤ) * A157870 n

end

end A015223.P4171120781567516331

namespace A015223

/-- `A280059(n)+n*A157870(n)` -/
def P4171120781567516331.Spec : Prop :=
  ∀ n, P4171120781567516331.a n = A015223 n

end A015223

/-! ## A015223.P1989617047791116258

`n*Δ[A267031(n)]+1`
-/

namespace A015223.P1989617047791116258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n) + 1

end

end A015223.P1989617047791116258

namespace A015223

/-- `n*Δ[A267031(n)]+1` -/
def P1989617047791116258.Spec : Prop :=
  ∀ n, P1989617047791116258.a n = A015223 n

end A015223

/-! ## A015223.P12233195688714095431

`A139757(2*n)`
-/

namespace A015223.P12233195688714095431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139757 (2 * n)

end

end A015223.P12233195688714095431

namespace A015223

/-- `A139757(2*n)` -/
def P12233195688714095431.Spec : Prop :=
  ∀ n, P12233195688714095431.a n = A015223 n

end A015223

/-! ## A015223.P17677061629944757055

`n*A008527(2*n+1)+1`
-/

namespace A015223.P17677061629944757055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008527 (2 * n + 1) + 1

end

end A015223.P17677061629944757055

namespace A015223

/-- `n*A008527(2*n+1)+1` -/
def P17677061629944757055.Spec : Prop :=
  ∀ n, P17677061629944757055.a n = A015223 n

end A015223

/-! ## A015223.P15830611925129673193

`n*A108100(2*n+1)+1`
-/

namespace A015223.P15830611925129673193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A108100 (2 * n + 1) + 1

end

end A015223.P15830611925129673193

namespace A015223

/-- `n*A108100(2*n+1)+1` -/
def P15830611925129673193.Spec : Prop :=
  ∀ n, P15830611925129673193.a n = A015223 n

end A015223

/-! ## A015223.P7363276915217994864

`n*A276764(2*n+1)+1`
-/

namespace A015223.P7363276915217994864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A276764 (2 * n + 1) + 1

end

end A015223.P7363276915217994864

namespace A015223

/-- `n*A276764(2*n+1)+1` -/
def P7363276915217994864.Spec : Prop :=
  ∀ n, P7363276915217994864.a n = A015223 n

end A015223

/-!
# A015224: Even pentagonal pyramidal numbers.

The programs for A015224, the canonical program `A015224.P12564138343036787669` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015224 has offset 0).

The definition of A015224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015224.P12564138343036787669

`3*a(n-3)-3*a(n-6)+a(n-9)+192` with `a(0)=0, a(1)=6, a(2)=18, a(3)=40, a(4)=126, a(5)=196, a(6)=288, a(7)=550, a(8)=726`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015224

/-- `3*a(n-3)-3*a(n-6)+a(n-9)+192` -/
def P12564138343036787669.Spec : Prop :=
  ∀ n, P12564138343036787669.a n = A015224 n

theorem P12564138343036787669.correct : P12564138343036787669.Spec := by
  intro n
  simp only [A015224]

end A015224

/-! ## A015224.P14324993778417865766

`A002411(A004772(n+1))`
-/

namespace A015224.P14324993778417865766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (A004772 (n + 1)).toNat

end

end A015224.P14324993778417865766

namespace A015224

/-- `A002411(A004772(n+1))` -/
def P14324993778417865766.Spec : Prop :=
  ∀ n, P14324993778417865766.a n = A015224 n

end A015224

/-! ## A015224.P16077610895236514625

`sqrt(A014800(n))`
-/

namespace A015224.P16077610895236514625
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014800 n : ℝ)

end

end A015224.P16077610895236514625

namespace A015224

/-- `sqrt(A014800(n))` -/
def P16077610895236514625.Spec : Prop :=
  ∀ n, P16077610895236514625.a n = (A015224 n : ℝ)

end A015224

/-! ## A015224.P15066081234388253603

`ceil(4*n/3)*A000217(ceil(4*n/3))`
-/

namespace A015224.P15066081234388253603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈4 * ((n : ℚ) / 3)⌉ * A000217 ⌈4 * ((n : ℚ) / 3)⌉.toNat

end

end A015224.P15066081234388253603

namespace A015224

/-- `ceil(4*n/3)*A000217(ceil(4*n/3))` -/
def P15066081234388253603.Spec : Prop :=
  ∀ n, P15066081234388253603.a n = A015224 n

end A015224

/-! ## A015224.P15369585011619540037

`record[(n+1)%A145979(n)*∑[n+1]]`
-/

namespace A015224.P15369585011619540037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A145979 n) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015224.P15369585011619540037

namespace A015224

/-- `record[(n+1)%A145979(n)*∑[n+1]]` -/
def P15369585011619540037.Spec : Prop :=
  ∀ n, P15369585011619540037.a n = A015224 n

end A015224

/-! ## A015224.P16644960019807458825

`A002411(comp[4*n+1])`
-/

namespace A015224.P16644960019807458825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A015224.P16644960019807458825

namespace A015224

/-- `A002411(comp[4*n+1])` -/
def P16644960019807458825.Spec : Prop :=
  ∀ n, P16644960019807458825.a n = A015224 n

end A015224

/-! ## A015224.P4539446724145493557

`record[n%A092486(n+1)*∑[n]]`
-/

namespace A015224.P4539446724145493557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A092486 (n + 1)) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015224.P4539446724145493557

namespace A015224

/-- `record[n%A092486(n+1)*∑[n]]` -/
def P4539446724145493557.Spec : Prop :=
  ∀ n, P4539446724145493557.a n = A015224 n

end A015224

/-! ## A015224.P4234311510980648406

`record[lcm(n+1, A000124(n))-∑[n+1]]`
-/

namespace A015224.P4234311510980648406
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A000124 n) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015224.P4234311510980648406

namespace A015224

/-- `record[lcm(n+1, A000124(n))-∑[n+1]]` -/
def P4234311510980648406.Spec : Prop :=
  ∀ n, P4234311510980648406.a n = A015224 n

end A015224

/-! ## A015224.P8399257866667976516

`record[A000217(A080412(n))*A080412(n)]`
-/

namespace A015224.P8399257866667976516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A080412 n).toNat * A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015224.P8399257866667976516

namespace A015224

/-- `record[A000217(A080412(n))*A080412(n)]` -/
def P8399257866667976516.Spec : Prop :=
  ∀ n, P8399257866667976516.a n = A015224 n

end A015224

/-! ## A015224.P1330281708883605447

`A000217(A004523(2*n+1))*A004523(2*n+1)`
-/

namespace A015224.P1330281708883605447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004523 (2 * n + 1)).toNat * A004523 (2 * n + 1)

end

end A015224.P1330281708883605447

namespace A015224

/-- `A000217(A004523(2*n+1))*A004523(2*n+1)` -/
def P1330281708883605447.Spec : Prop :=
  ∀ n, P1330281708883605447.a n = A015224 n

end A015224

/-! ## A015224.P6008387210371403371

`A000217(A322042(2*n+1))*A322042(2*n+1)`
-/

namespace A015224.P6008387210371403371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A322042 (2 * n + 1)).toNat * A322042 (2 * n + 1)

end

end A015224.P6008387210371403371

namespace A015224

/-- `A000217(A322042(2*n+1))*A322042(2*n+1)` -/
def P6008387210371403371.Spec : Prop :=
  ∀ n, P6008387210371403371.a n = A015224 n

end A015224

/-! ## A015224.P16655692248794557094

`A188067(A047407(n+1))`
-/

namespace A015224.P16655692248794557094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188067 (A047407 (n + 1)).toNat

end

end A015224.P16655692248794557094

namespace A015224

/-- `A188067(A047407(n+1))` -/
def P16655692248794557094.Spec : Prop :=
  ∀ n, P16655692248794557094.a n = A015224 n

end A015224

/-! ## A015224.P9381994265562190025

`A028724(A047395(n+2))`
-/

namespace A015224.P9381994265562190025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 (A047395 (n + 2)).toNat

end

end A015224.P9381994265562190025

namespace A015224

/-- `A028724(A047395(n+2))` -/
def P9381994265562190025.Spec : Prop :=
  ∀ n, P9381994265562190025.a n = A015224 n

end A015224

/-! ## A015224.P9915371806650975694

`A028724(2*A042965(n+2))`
-/

namespace A015224.P9915371806650975694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 (2 * A042965 (n + 2)).toNat

end

end A015224.P9915371806650975694

namespace A015224

/-- `A028724(2*A042965(n+2))` -/
def P9915371806650975694.Spec : Prop :=
  ∀ n, P9915371806650975694.a n = A015224 n

end A015224

/-! ## A015224.P5394591231782850592

`A000217(A285870(4*n))*A285870(4*n)`
-/

namespace A015224.P5394591231782850592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A285870 (4 * n)).toNat * A285870 (4 * n)

end

end A015224.P5394591231782850592

namespace A015224

/-- `A000217(A285870(4*n))*A285870(4*n)` -/
def P5394591231782850592.Spec : Prop :=
  ∀ n, P5394591231782850592.a n = A015224 n

end A015224

/-! ## A015224.P11581327519972309965

`A285870(2*n)*A285872(2*n+1)*A285870(4*n)`
-/

namespace A015224.P11581327519972309965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (2 * n) * A285872 (2 * n + 1) * A285870 (4 * n)

end

end A015224.P11581327519972309965

namespace A015224

/-- `A285870(2*n)*A285872(2*n+1)*A285870(4*n)` -/
def P11581327519972309965.Spec : Prop :=
  ∀ n, P11581327519972309965.a n = A015224 n

end A015224

/-! ## A015224.P3023878311559606748

`record[A000217(A002262(2*n+1))*A002262(2*n+1)]`
-/

namespace A015224.P3023878311559606748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002262 (2 * n + 1)).toNat * A002262 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015224.P3023878311559606748

namespace A015224

/-- `record[A000217(A002262(2*n+1))*A002262(2*n+1)]` -/
def P3023878311559606748.Spec : Prop :=
  ∀ n, P3023878311559606748.a n = A015224 n

end A015224

/-!
# A015225: Odd hexagonal pyramidal numbers.

The programs for A015225, the canonical program `A015225.P15182541461651665797` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015225 has offset 1).

The definition of A015225 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015225.P15182541461651665797

`3*a(n-2)-3*a(n-4)+a(n-6)+256` with `a(0)=1, a(1)=7, a(2)=95, a(3)=161, a(4)=525, a(5)=715`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015225

/-- `3*a(n-2)-3*a(n-4)+a(n-6)+256` -/
def P15182541461651665797.Spec : Prop :=
  ∀ n, P15182541461651665797.a n = A015225 (n + 1)

theorem P15182541461651665797.correct : P15182541461651665797.Spec := by
  intro n
  simp only [A015225, Nat.add_sub_cancel]

end A015225

/-! ## A015225.P11286265947693757049

`sqrt(A014801(n))`
-/

namespace A015225.P11286265947693757049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014801 n : ℝ)

end

end A015225.P11286265947693757049

namespace A015225

/-- `sqrt(A014801(n))` -/
def P11286265947693757049.Spec : Prop :=
  ∀ n, P11286265947693757049.a n = (A015225 (n + 1) : ℝ)

end A015225

/-! ## A015225.P2631149979718462572

`A002412(or(1, n)+n)`
-/

namespace A015225.P2631149979718462572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (Nat.lor 1 n + n)

end

end A015225.P2631149979718462572

namespace A015225

/-- `A002412(or(1, n)+n)` -/
def P2631149979718462572.Spec : Prop :=
  ∀ n, P2631149979718462572.a n = A015225 (n + 1)

end A015225

/-! ## A015225.P16702533471085809647

`A002412(A042948(n)+1)`
-/

namespace A015225.P16702533471085809647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A042948 n + 1).toNat

end

end A015225.P16702533471085809647

namespace A015225

/-- `A002412(A042948(n)+1)` -/
def P16702533471085809647.Spec : Prop :=
  ∀ n, P16702533471085809647.a n = A015225 (n + 1)

end A015225

/-! ## A015225.P15384082005755566329

`A002412(A042963(n+1))`
-/

namespace A015225.P15384082005755566329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A042963 (n + 1)).toNat

end

end A015225.P15384082005755566329

namespace A015225

/-- `A002412(A042963(n+1))` -/
def P15384082005755566329.Spec : Prop :=
  ∀ n, P15384082005755566329.a n = A015225 (n + 1)

end A015225

/-! ## A015225.P17942702297351149557

`A002412(A109613(n)+n)`
-/

namespace A015225.P17942702297351149557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A109613 n + (n : ℤ)).toNat

end

end A015225.P17942702297351149557

namespace A015225

/-- `A002412(A109613(n)+n)` -/
def P17942702297351149557.Spec : Prop :=
  ∀ n, P17942702297351149557.a n = A015225 (n + 1)

end A015225

/-! ## A015225.P13613687718840480818

`A002412(A014601(n+1)-2)`
-/

namespace A015225.P13613687718840480818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A014601 (n + 1) - 2).toNat

end

end A015225.P13613687718840480818

namespace A015225

/-- `A002412(A014601(n+1)-2)` -/
def P13613687718840480818.Spec : Prop :=
  ∀ n, P13613687718840480818.a n = A015225 (n + 1)

end A015225

/-! ## A015225.P10896278149962117908

`A002412(A154708(n+1)-2)`
-/

namespace A015225.P10896278149962117908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A154708 (n + 1) - 2).toNat

end

end A015225.P10896278149962117908

namespace A015225

/-- `A002412(A154708(n+1)-2)` -/
def P10896278149962117908.Spec : Prop :=
  ∀ n, P10896278149962117908.a n = A015225 (n + 1)

end A015225

/-! ## A015225.P12513053760947545726

`A002412(A052928(n)+1+n)`
-/

namespace A015225.P12513053760947545726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A052928 n + 1 + (n : ℤ)).toNat

end

end A015225.P12513053760947545726

namespace A015225

/-- `A002412(A052928(n)+1+n)` -/
def P12513053760947545726.Spec : Prop :=
  ∀ n, P12513053760947545726.a n = A015225 (n + 1)

end A015225

/-! ## A015225.P6456690804682611416

`A002412(Δ[n²]-A000035(n))`
-/

namespace A015225.P6456690804682611416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A000035 n).toNat

end

end A015225.P6456690804682611416

namespace A015225

/-- `A002412(Δ[n²]-A000035(n))` -/
def P6456690804682611416.Spec : Prop :=
  ∀ n, P6456690804682611416.a n = A015225 (n + 1)

end A015225

/-! ## A015225.P8251078789633410545

`A002412(A047617(n+1)-(2*n+1))`
-/

namespace A015225.P8251078789633410545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A047617 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A015225.P8251078789633410545

namespace A015225

/-- `A002412(A047617(n+1)-(2*n+1))` -/
def P8251078789633410545.Spec : Prop :=
  ∀ n, P8251078789633410545.a n = A015225 (n + 1)

end A015225

/-! ## A015225.P17696744662869989837

`A002623(A047467(n+1))`
-/

namespace A015225.P17696744662869989837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (A047467 (n + 1)).toNat

end

end A015225.P17696744662869989837

namespace A015225

/-- `A002623(A047467(n+1))` -/
def P17696744662869989837.Spec : Prop :=
  ∀ n, P17696744662869989837.a n = A015225 (n + 1)

end A015225

/-! ## A015225.P17529656949189216370

`A023855(A047471(n+1))`
-/

namespace A015225.P17529656949189216370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (A047471 (n + 1)).toNat

end

end A015225.P17529656949189216370

namespace A015225

/-- `A023855(A047471(n+1))` -/
def P17529656949189216370.Spec : Prop :=
  ∀ n, P17529656949189216370.a n = A015225 (n + 1)

end A015225

/-! ## A015225.P3977029746767007051

`A173196(A047463(n+1))`
-/

namespace A015225.P3977029746767007051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (A047463 (n + 1)).toNat

end

end A015225.P3977029746767007051

namespace A015225

/-- `A173196(A047463(n+1))` -/
def P3977029746767007051.Spec : Prop :=
  ∀ n, P3977029746767007051.a n = A015225 (n + 1)

end A015225

/-! ## A015225.P9190034475308512662

`A173196(2*A042963(n+1))`
-/

namespace A015225.P9190034475308512662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (2 * A042963 (n + 1)).toNat

end

end A015225.P9190034475308512662

namespace A015225

/-- `A173196(2*A042963(n+1))` -/
def P9190034475308512662.Spec : Prop :=
  ∀ n, P9190034475308512662.a n = A015225 (n + 1)

end A015225

/-! ## A015225.P16894640740027749426

`A002623(8*n+6-A047406(n+2))`
-/

namespace A015225.P16894640740027749426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 ((8 * n + 6 : ℤ) - A047406 (n + 2)).toNat

end

end A015225.P16894640740027749426

namespace A015225

/-- `A002623(8*n+6-A047406(n+2))` -/
def P16894640740027749426.Spec : Prop :=
  ∀ n, P16894640740027749426.a n = A015225 (n + 1)

end A015225

/-! ## A015225.P3772412296086009156

`A173196(A005843(A052928(n)+1+n))`
-/

namespace A015225.P3772412296086009156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (A005843 (A052928 n + 1 + (n : ℤ)).toNat).toNat

end

end A015225.P3772412296086009156

namespace A015225

/-- `A173196(A005843(A052928(n)+1+n))` -/
def P3772412296086009156.Spec : Prop :=
  ∀ n, P3772412296086009156.a n = A015225 (n + 1)

end A015225

/-! ## A015225.P18322880113612963443

`A144678(4*A042948(n))`
-/

namespace A015225.P18322880113612963443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144678 (4 * A042948 n).toNat

end

end A015225.P18322880113612963443

namespace A015225

/-- `A144678(4*A042948(n))` -/
def P18322880113612963443.Spec : Prop :=
  ∀ n, P18322880113612963443.a n = A015225 (n + 1)

end A015225

/-! ## A015225.P2856324846844335753

`A029161(2*2*A228137(n+1))`
-/

namespace A015225.P2856324846844335753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029161 (2 * (2 * A228137 (n + 1))).toNat

end

end A015225.P2856324846844335753

namespace A015225

/-- `A029161(2*2*A228137(n+1))` -/
def P2856324846844335753.Spec : Prop :=
  ∀ n, P2856324846844335753.a n = A015225 (n + 1)

end A015225

/-!
# A015226: Even hexagonal pyramidal numbers.

The programs for A015226, the canonical program `A015226.P15515667176513301738` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015226 has offset 0).

The definition of A015226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A015226.P11250693728864754288

`sqrt(A014803(n))`
-/

namespace A015226.P11250693728864754288
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014803 n : ℝ)

end

end A015226.P11250693728864754288

namespace A015226

/-- `sqrt(A014803(n))` -/
def P11250693728864754288.Spec : Prop :=
  ∀ n, P11250693728864754288.a n = (A015226 n : ℝ)

end A015226

/-! ## A015226.P15515667176513301738

`A002412(record[or(2, n)+1])`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A015226

/-- `A002412(record[or(2, n)+1])` -/
def P15515667176513301738.Spec : Prop :=
  ∀ n, P15515667176513301738.a n = A015226 n

theorem P15515667176513301738.correct : P15515667176513301738.Spec := by
  intro n
  simp only [A015226]

end A015226

/-! ## A015226.P14772082903197197340

`A002412(∑[3/a(n-1)])` with `a(0)=3`
-/

namespace A015226.P14772082903197197340
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A015226.P14772082903197197340

namespace A015226

/-- `A002412(∑[3/a(n-1)])` -/
def P14772082903197197340.Spec : Prop :=
  ∀ n, P14772082903197197340.a n = A015226 n

end A015226

/-! ## A015226.P18300040173604682250

`A002412(A014601(n+1))`
-/

namespace A015226.P18300040173604682250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A014601 (n + 1)).toNat

end

end A015226.P18300040173604682250

namespace A015226

/-- `A002412(A014601(n+1))` -/
def P18300040173604682250.Spec : Prop :=
  ∀ n, P18300040173604682250.a n = A015226 n

end A015226

/-! ## A015226.P8334549532661800527

`A002412(A154708(n+1))`
-/

namespace A015226.P8334549532661800527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A154708 (n + 1)).toNat

end

end A015226.P8334549532661800527

namespace A015226

/-- `A002412(A154708(n+1))` -/
def P8334549532661800527.Spec : Prop :=
  ∀ n, P8334549532661800527.a n = A015226 n

end A015226

/-! ## A015226.P1045586136385233651

`A002412(A042963(n+1)+2)`
-/

namespace A015226.P1045586136385233651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A042963 (n + 1) + 2).toNat

end

end A015226.P1045586136385233651

namespace A015226

/-- `A002412(A042963(n+1)+2)` -/
def P1045586136385233651.Spec : Prop :=
  ∀ n, P1045586136385233651.a n = A015226 n

end A015226

/-! ## A015226.P14365111742665996712

`A002412(A109613(n+2)+n)`
-/

namespace A015226.P14365111742665996712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A109613 (n + 2) + (n : ℤ)).toNat

end

end A015226.P14365111742665996712

namespace A015226

/-- `A002412(A109613(n+2)+n)` -/
def P14365111742665996712.Spec : Prop :=
  ∀ n, P14365111742665996712.a n = A015226 n

end A015226

/-! ## A015226.P464735928984681345

`A002412(A052928(n+2)+n+1)`
-/

namespace A015226.P464735928984681345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A052928 (n + 2) + (n + 1 : ℤ)).toNat

end

end A015226.P464735928984681345

namespace A015226

/-- `A002412(A052928(n+2)+n+1)` -/
def P464735928984681345.Spec : Prop :=
  ∀ n, P464735928984681345.a n = A015226 n

end A015226

/-! ## A015226.P11579932815610267794

`A002412(A047398(n+1)-2*n)`
-/

namespace A015226.P11579932815610267794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A047398 (n + 1) - (2 * n : ℤ)).toNat

end

end A015226.P11579932815610267794

namespace A015226

/-- `A002412(A047398(n+1)-2*n)` -/
def P11579932815610267794.Spec : Prop :=
  ∀ n, P11579932815610267794.a n = A015226 n

end A015226

/-! ## A015226.P8147117555494763004

`A002412(A047398(n+1)-n-n)`
-/

namespace A015226.P8147117555494763004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A047398 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A015226.P8147117555494763004

namespace A015226

/-- `A002412(A047398(n+1)-n-n)` -/
def P8147117555494763004.Spec : Prop :=
  ∀ n, P8147117555494763004.a n = A015226 n

end A015226

/-! ## A015226.P6310095675973273943

`A002412(A156859(n+1)-A156859(n))`
-/

namespace A015226.P6310095675973273943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002412 (A156859 (n + 1) - A156859 n).toNat

end

end A015226.P6310095675973273943

namespace A015226

/-- `A002412(A156859(n+1)-A156859(n))` -/
def P6310095675973273943.Spec : Prop :=
  ∀ n, P6310095675973273943.a n = A015226 n

end A015226

/-! ## A015226.P5003854940896844733

`A002623(xor(1, n)+3*(n+1))`
-/

namespace A015226.P5003854940896844733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (Nat.xor 1 n + 3 * (n + 1))

end

end A015226.P5003854940896844733

namespace A015226

/-- `A002623(xor(1, n)+3*(n+1))` -/
def P5003854940896844733.Spec : Prop :=
  ∀ n, P5003854940896844733.a n = A015226 n

end A015226

/-! ## A015226.P13862535443270892472

`A002623(A047406(n+1))`
-/

namespace A015226.P13862535443270892472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 (A047406 (n + 1)).toNat

end

end A015226.P13862535443270892472

namespace A015226

/-- `A002623(A047406(n+1))` -/
def P13862535443270892472.Spec : Prop :=
  ∀ n, P13862535443270892472.a n = A015226 n

end A015226

/-! ## A015226.P16296476204629719436

`A023855(A047550(n+1))`
-/

namespace A015226.P16296476204629719436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023855 (A047550 (n + 1)).toNat

end

end A015226.P16296476204629719436

namespace A015226

/-- `A023855(A047550(n+1))` -/
def P16296476204629719436.Spec : Prop :=
  ∀ n, P16296476204629719436.a n = A015226 n

end A015226

/-! ## A015226.P9229588907000204780

`A173196(A047451(n+2))`
-/

namespace A015226.P9229588907000204780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (A047451 (n + 2)).toNat

end

end A015226.P9229588907000204780

namespace A015226

/-- `A173196(A047451(n+2))` -/
def P9229588907000204780.Spec : Prop :=
  ∀ n, P9229588907000204780.a n = A015226 n

end A015226

/-! ## A015226.P9065664884743182236

`A173196(2*A014601(n+1))`
-/

namespace A015226.P9065664884743182236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (2 * A014601 (n + 1)).toNat

end

end A015226.P9065664884743182236

namespace A015226

/-- `A173196(2*A014601(n+1))` -/
def P9065664884743182236.Spec : Prop :=
  ∀ n, P9065664884743182236.a n = A015226 n

end A015226

/-! ## A015226.P16252866445320695547

`A173196(2*(A042963(n+1)+2))`
-/

namespace A015226.P16252866445320695547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 (2 * (A042963 (n + 1) + 2)).toNat

end

end A015226.P16252866445320695547

namespace A015226

/-- `A173196(2*(A042963(n+1)+2))` -/
def P16252866445320695547.Spec : Prop :=
  ∀ n, P16252866445320695547.a n = A015226 n

end A015226

/-! ## A015226.P13692753033850576838

`A144678(2*2*A042964(n+1))`
-/

namespace A015226.P13692753033850576838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144678 (2 * (2 * A042964 (n + 1))).toNat

end

end A015226.P13692753033850576838

namespace A015226

/-- `A144678(2*2*A042964(n+1))` -/
def P13692753033850576838.Spec : Prop :=
  ∀ n, P13692753033850576838.a n = A015226 n

end A015226

/-!
# A015227: Inverse of 1218th cyclotomic polynomial.

The programs for A015227, there is no canonical definition to state claims against.
-/

/-! ## A015227.P5807736241469817248

`A014618(n)*A033999(n)`
-/

namespace A015227.P5807736241469817248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014618 n * A033999 n

end

end A015227.P5807736241469817248

/-! ## A015227.P10521147195808201100

`A015731(A272322(n+1))`
-/

namespace A015227.P10521147195808201100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015731 (A272322 (n + 1)).toNat

end

end A015227.P10521147195808201100

/-! ## A015227.P11539542822497436228

`A015815(A272269(n+1))`
-/

namespace A015227.P11539542822497436228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015815 (A272269 (n + 1)).toNat

end

end A015227.P11539542822497436228

/-! ## A015227.P12019624252389890588

`A015311(n)*A178688(n+1)`
-/

namespace A015227.P12019624252389890588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015311 n * A178688 (n + 1)

end

end A015227.P12019624252389890588

/-! ## A015227.P4709252348788558060

`A015563(n)*A178688(n+1)`
-/

namespace A015227.P4709252348788558060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015563 n * A178688 (n + 1)

end

end A015227.P4709252348788558060

/-!
# A015228: Inverse of 1219th cyclotomic polynomial.

The programs for A015228, there is no canonical definition to state claims against.
-/

/-! ## A015228.P1739782401080970178

`A015952(comp[A258117(n+1)-A318715(n+1)])`
-/

namespace A015228.P1739782401080970178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258117 (n + 1) - A318715 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015952 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015228.P1739782401080970178

/-! ## A015228.P15620431449575622679

`A015952(lt[A344618(n+2), A319708(n+1)])`
-/

namespace A015228.P15620431449575622679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344618 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015952 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015228.P15620431449575622679

/-!
# A015230: Inverse of 1221st cyclotomic polynomial.

The programs for A015230, there is no canonical definition to state claims against.
-/

/-! ## A015230.P11435333586511824035

`A015362(A175427(n+1))`
-/

namespace A015230.P11435333586511824035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015362 (A175427 (n + 1)).toNat

end

end A015230.P11435333586511824035

/-! ## A015230.P3170228906298354084

`A016022(A135383(n+1))`
-/

namespace A015230.P3170228906298354084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016022 (A135383 (n + 1)).toNat

end

end A015230.P3170228906298354084

/-! ## A015230.P11479528954347393122

`A015362(n)%A182744(n+1)`
-/

namespace A015230.P11479528954347393122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015362 n) (A182744 (n + 1))

end

end A015230.P11479528954347393122

/-! ## A015230.P8784603320447414483

`A015428(n)%A182744(n+1)`
-/

namespace A015230.P8784603320447414483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015428 n) (A182744 (n + 1))

end

end A015230.P8784603320447414483

/-! ## A015230.P5747668753492867706

`A015560(n)%A182744(n+1)`
-/

namespace A015230.P5747668753492867706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015560 n) (A182744 (n + 1))

end

end A015230.P5747668753492867706

/-!
# A015231: Inverse of 1222nd cyclotomic polynomial.

The programs for A015231, there is no canonical definition to state claims against.
-/

/-! ## A015231.P1001676423005391694

`A014620(n)*A033999(n)`
-/

namespace A015231.P1001676423005391694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014620 n * A033999 n

end

end A015231.P1001676423005391694

/-! ## A015231.P7636293772098800609

`A015387(A175427(n+1))`
-/

namespace A015231.P7636293772098800609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015387 (A175427 (n + 1)).toNat

end

end A015231.P7636293772098800609

/-! ## A015231.P15319578621941134054

`A015387(n)*A369342(n)`
-/

namespace A015231.P15319578621941134054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015387 n * A369342 n

end

end A015231.P15319578621941134054

/-! ## A015231.P1245860545908487727

`A015543(n)*A369342(n)`
-/

namespace A015231.P1245860545908487727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015543 n * A369342 n

end

end A015231.P1245860545908487727

/-! ## A015231.P6838552116906275146

`A015595(n)*A369342(n)`
-/

namespace A015231.P6838552116906275146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015595 n * A369342 n

end

end A015231.P6838552116906275146

/-!
# A015234: a(n) = (17 - 2*n)*n^2.

The programs for A015234, the canonical program `A015234.P16903287124291365172` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015234 has offset 0).

The definition of A015234 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(17-2*n)*n²` (program `A015234.P16903287124291365172`, by `A015234.P16903287124291365172.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015234.P16903287124291365172

`(17-2*n)*n²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015234

/-- `(17-2*n)*n²` -/
def P16903287124291365172.Spec : Prop :=
  ∀ n, P16903287124291365172.a n = A015234 n

theorem P16903287124291365172.correct : P16903287124291365172.Spec := by
  intro n
  simp only [A015234]

end A015234

/-! ## A015234.P16719756837629274094

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=15, a(2)=52, a(3)=99`
-/

namespace A015234.P16719756837629274094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 15, 52, 99] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A015234.P16719756837629274094

namespace A015234

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P16719756837629274094.Spec : Prop :=
  ∀ n, P16719756837629274094.a n = A015234 n

theorem P16719756837629274094.correct : P16719756837629274094.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A015234, Nat.add_sub_cancel, A015234.P16719756837629274094.a, A015234.P16903287124291365172.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A015234, Nat.add_sub_cancel, A015234.P16719756837629274094.a, A015234.P16903287124291365172.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A015234

/-! ## A015234.P16139812108753758341

`(2*n)²-A015246(n)`
-/

namespace A015234.P16139812108753758341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - A015246 n

end

end A015234.P16139812108753758341

namespace A015234

/-- `(2*n)²-A015246(n)` -/
def P16139812108753758341.Spec : Prop :=
  ∀ n, P16139812108753758341.a n = A015234 n

end A015234

/-! ## A015234.P1102227349690374993

`2*n²-A015247(n)`
-/

namespace A015234.P1102227349690374993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - A015247 n

end

end A015234.P1102227349690374993

namespace A015234

/-- `2*n²-A015247(n)` -/
def P1102227349690374993.Spec : Prop :=
  ∀ n, P1102227349690374993.a n = A015234 n

end A015234

/-! ## A015234.P5486202268661340877

`(4*n)²-A015237(n)`
-/

namespace A015234.P5486202268661340877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n) ^ 2 : ℤ) - A015237 n

end

end A015234.P5486202268661340877

namespace A015234

/-- `(4*n)²-A015237(n)` -/
def P5486202268661340877.Spec : Prop :=
  ∀ n, P5486202268661340877.a n = A015234 n

end A015234

/-! ## A015234.P7483976832715199038

`8*n²-A015243(n)`
-/

namespace A015234.P7483976832715199038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 2 : ℤ) - A015243 n

end

end A015234.P7483976832715199038

namespace A015234

/-- `8*n²-A015243(n)` -/
def P7483976832715199038.Spec : Prop :=
  ∀ n, P7483976832715199038.a n = A015234 n

end A015234

/-! ## A015234.P14826558592519322954

`12*n²-A015240(n)`
-/

namespace A015234.P14826558592519322954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n ^ 2 : ℤ) - A015240 n

end

end A015234.P14826558592519322954

namespace A015234

/-- `12*n²-A015240(n)` -/
def P14826558592519322954.Spec : Prop :=
  ∀ n, P14826558592519322954.a n = A015234 n

end A015234

/-! ## A015234.P943514674054754044

`A033581(n)-A015245(n)`
-/

namespace A015234.P943514674054754044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n - A015245 n

end

end A015234.P943514674054754044

namespace A015234

/-- `A033581(n)-A015245(n)` -/
def P943514674054754044.Spec : Prop :=
  ∀ n, P943514674054754044.a n = A015234 n

end A015234

/-! ## A015234.P4442621426851781854

`A033583(n)-A015242(n)`
-/

namespace A015234.P4442621426851781854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n - A015242 n

end

end A015234.P4442621426851781854

namespace A015234

/-- `A033583(n)-A015242(n)` -/
def P4442621426851781854.Spec : Prop :=
  ∀ n, P4442621426851781854.a n = A015234 n

end A015234

/-! ## A015234.P11483780047661652651

`A144555(n)-A015238(n)`
-/

namespace A015234.P11483780047661652651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144555 n - A015238 n

end

end A015234.P11483780047661652651

namespace A015234

/-- `A144555(n)-A015238(n)` -/
def P11483780047661652651.Spec : Prop :=
  ∀ n, P11483780047661652651.a n = A015234 n

end A015234

/-! ## A015234.P17872781097707849713

`A244630(n)-A033431(n)`
-/

namespace A015234.P17872781097707849713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244630 n - A033431 n

end

end A015234.P17872781097707849713

namespace A015234

/-- `A244630(n)-A033431(n)` -/
def P17872781097707849713.Spec : Prop :=
  ∀ n, P17872781097707849713.a n = A015234 n

end A015234

/-! ## A015234.P11768577121875426576

`A195321(n)-A099721(n)`
-/

namespace A015234.P11768577121875426576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195321 n - A099721 n

end

end A015234.P11768577121875426576

namespace A015234

/-- `A195321(n)-A099721(n)` -/
def P11768577121875426576.Spec : Prop :=
  ∀ n, P11768577121875426576.a n = A015234 n

end A015234

/-! ## A015234.P17627494136737420855

`A195323(n)-A163683(n)`
-/

namespace A015234.P17627494136737420855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195323 n - A163683 n

end

end A015234.P17627494136737420855

namespace A015234

/-- `A195323(n)-A163683(n)` -/
def P17627494136737420855.Spec : Prop :=
  ∀ n, P17627494136737420855.a n = A015234 n

end A015234

/-! ## A015234.P13792547537270996440

`A195322(n)-A275709(n)`
-/

namespace A015234.P13792547537270996440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195322 n - A275709 n

end

end A015234.P13792547537270996440

namespace A015234

/-- `A195322(n)-A275709(n)` -/
def P13792547537270996440.Spec : Prop :=
  ∀ n, P13792547537270996440.a n = A015234 n

end A015234

/-! ## A015234.P8150444495140380322

`A244631(n)-A181617(n+1)`
-/

namespace A015234.P8150444495140380322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244631 n - A181617 (n + 1)

end

end A015234.P8150444495140380322

namespace A015234

/-- `A244631(n)-A181617(n+1)` -/
def P8150444495140380322.Spec : Prop :=
  ∀ n, P8150444495140380322.a n = A015234 n

end A015234

/-! ## A015234.P17085988744875491308

`A381424(n)-A187277(n+1)`
-/

namespace A015234.P17085988744875491308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381424 n - A187277 (n + 1)

end

end A015234.P17085988744875491308

namespace A015234

/-- `A381424(n)-A187277(n+1)` -/
def P17085988744875491308.Spec : Prop :=
  ∀ n, P17085988744875491308.a n = A015234 n

end A015234

/-! ## A015234.P16381783468802407714

`2*A033583(n)-A275709(n)`
-/

namespace A015234.P16381783468802407714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033583 n - A275709 n

end

end A015234.P16381783468802407714

namespace A015234

/-- `2*A033583(n)-A275709(n)` -/
def P16381783468802407714.Spec : Prop :=
  ∀ n, P16381783468802407714.a n = A015234 n

end A015234

/-! ## A015234.P3197048170036623417

`A244630(n)-n*A001105(n)`
-/

namespace A015234.P3197048170036623417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244630 n - (n : ℤ) * A001105 n

end

end A015234.P3197048170036623417

namespace A015234

/-- `A244630(n)-n*A001105(n)` -/
def P3197048170036623417.Spec : Prop :=
  ∀ n, P3197048170036623417.a n = A015234 n

end A015234

/-! ## A015234.P13056089098212458809

`A008588(n)²/2-A099721(n)`
-/

namespace A015234.P13056089098212458809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008588 n ^ 2 : ℚ) / 2 - (A099721 n : ℚ)

end

end A015234.P13056089098212458809

namespace A015234

/-- `A008588(n)²/2-A099721(n)` -/
def P13056089098212458809.Spec : Prop :=
  ∀ n, P13056089098212458809.a n = (A015234 n : ℚ)

end A015234

/-! ## A015234.P4961206515125400048

`A001105(n)+A001105(n)-A015246(n)`
-/

namespace A015234.P4961206515125400048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n + (A001105 n - A015246 n)

end

end A015234.P4961206515125400048

namespace A015234

/-- `A001105(n)+A001105(n)-A015246(n)` -/
def P4961206515125400048.Spec : Prop :=
  ∀ n, P4961206515125400048.a n = A015234 n

end A015234

/-!
# A015237: a(n) = (2*n - 1)*n^2.

The programs for A015237, the canonical program `A015237.P2392393478135424708` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015237 has offset 0).

The definition of A015237 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-1)*n²` (program `A015237.P2392393478135424708`, by `A015237.P2392393478135424708.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015237.P2392393478135424708

`(2*n-1)*n²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015237

/-- `(2*n-1)*n²` -/
def P2392393478135424708.Spec : Prop :=
  ∀ n, P2392393478135424708.a n = A015237 n

theorem P2392393478135424708.correct : P2392393478135424708.Spec := by
  intro n
  simp only [A015237]

end A015237

/-! ## A015237.P15453506281053667575

`3*a(n-1)-3*a(n-2)+a(n-3)+12` with `a(0)=0, a(1)=1, a(2)=12`
-/

namespace A015237.P15453506281053667575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 12] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3) + 12

end

end A015237.P15453506281053667575

namespace A015237

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+12` -/
def P15453506281053667575.Spec : Prop :=
  ∀ n, P15453506281053667575.a n = A015237 n

theorem P15453506281053667575.correct : P15453506281053667575.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A015237, Nat.add_sub_cancel, A015237.P15453506281053667575.a, A015237.P2392393478135424708.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A015237, Nat.add_sub_cancel, A015237.P15453506281053667575.a, A015237.P2392393478135424708.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A015237

/-! ## A015237.P10740215798041372671

`A000578(n)+A045991(n)`
-/

namespace A015237.P10740215798041372671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n + A045991 n

end

end A015237.P10740215798041372671

namespace A015237

/-- `A000578(n)+A045991(n)` -/
def P10740215798041372671.Spec : Prop :=
  ∀ n, P10740215798041372671.a n = A015237 n

end A015237

/-! ## A015237.P7228214095603119244

`lcm(n-1+n, n²)`
-/

namespace A015237.P7228214095603119244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1 + (n : ℤ)) (n ^ 2 : ℤ)

end

end A015237.P7228214095603119244

namespace A015237

/-- `lcm(n-1+n, n²)` -/
def P7228214095603119244.Spec : Prop :=
  ∀ n, (P7228214095603119244.a n : ℤ) = A015237 n

end A015237

/-! ## A015237.P504669430049531344

`n^4-lcm(n, n-1)²`
-/

namespace A015237.P504669430049531344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - (Int.lcm (n : ℤ) ((n : ℤ) - 1) ^ 2 : ℤ)

end

end A015237.P504669430049531344

namespace A015237

/-- `n^4-lcm(n, n-1)²` -/
def P504669430049531344.Spec : Prop :=
  ∀ n, P504669430049531344.a n = A015237 n

end A015237

/-! ## A015237.P6638737383842671591

`abs(n²*or(1, -2*n))`
-/

namespace A015237.P6638737383842671591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * Int.lor 1 (-(2 * n : ℤ))|

end

end A015237.P6638737383842671591

namespace A015237

/-- `abs(n²*or(1, -2*n))` -/
def P6638737383842671591.Spec : Prop :=
  ∀ n, P6638737383842671591.a n = A015237 n

end A015237

/-! ## A015237.P16129589690187604187

`-n²*or(1, -2*n)`
-/

namespace A015237.P16129589690187604187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n ^ 2 : ℤ) * Int.lor 1 (-(2 * n : ℤ)))

end

end A015237.P16129589690187604187

namespace A015237

/-- `-n²*or(1, -2*n)` -/
def P16129589690187604187.Spec : Prop :=
  ∀ n, P16129589690187604187.a n = A015237 n

end A015237

/-! ## A015237.P12554230715477539653

`abs(n²*xor(1, -2*n))`
-/

namespace A015237.P12554230715477539653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * Int.xor 1 (-(2 * n : ℤ))|

end

end A015237.P12554230715477539653

namespace A015237

/-- `abs(n²*xor(1, -2*n))` -/
def P12554230715477539653.Spec : Prop :=
  ∀ n, P12554230715477539653.a n = A015237 n

end A015237

/-! ## A015237.P5026918529930076641

`-n²*xor(1, -2*n)`
-/

namespace A015237.P5026918529930076641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n ^ 2 : ℤ) * Int.xor 1 (-(2 * n : ℤ)))

end

end A015237.P5026918529930076641

namespace A015237

/-- `-n²*xor(1, -2*n)` -/
def P5026918529930076641.Spec : Prop :=
  ∀ n, P5026918529930076641.a n = A015237 n

end A015237

/-! ## A015237.P14550648779440635385

`floor(n*∑[a(n-1)+4])` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A015237.P14550648779440635385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015237.P14550648779440635385

namespace A015237

/-- `floor(n*∑[a(n-1)+4])` -/
def P14550648779440635385.Spec : Prop :=
  ∀ n, (P14550648779440635385.a n : ℤ) = A015237 n

end A015237

/-! ## A015237.P1722919828908020404

`lcm(1-2*n, n*2*n)/2`
-/

namespace A015237.P1722919828908020404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (1 - (2 * n : ℤ)) (n * (2 * n) : ℤ) : ℚ) / 2

end

end A015237.P1722919828908020404

namespace A015237

/-- `lcm(1-2*n, n*2*n)/2` -/
def P1722919828908020404.Spec : Prop :=
  ∀ n, P1722919828908020404.a n = (A015237 n : ℚ)

end A015237

/-! ## A015237.P15916527099695826759

`n*∑[a(n-1)+4]-n` with `a(0)=1, a(1)=1`
-/

namespace A015237.P15916527099695826759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - (n : ℤ)

end

end A015237.P15916527099695826759

namespace A015237

/-- `n*∑[a(n-1)+4]-n` -/
def P15916527099695826759.Spec : Prop :=
  ∀ n, P15916527099695826759.a n = A015237 n

end A015237

/-! ## A015237.P16838617338513998478

`floor(n*(3-∑[a(n-1)-4]))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A015237.P16838617338513998478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015237.P16838617338513998478

namespace A015237

/-- `floor(n*(3-∑[a(n-1)-4]))` -/
def P16838617338513998478.Spec : Prop :=
  ∀ n, P16838617338513998478.a n = A015237 n

end A015237

/-! ## A015237.P3956738766313159970

`lcm(2, (2*n+1)*n*(n-1))+n`
-/

namespace A015237.P3956738766313159970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((2 * n + 1 : ℤ) * ((n : ℤ) * ((n : ℤ) - 1))) + n

end

end A015237.P3956738766313159970

namespace A015237

/-- `lcm(2, (2*n+1)*n*(n-1))+n` -/
def P3956738766313159970.Spec : Prop :=
  ∀ n, (P3956738766313159970.a n : ℤ) = A015237 n

end A015237

/-! ## A015237.P3021688985411395830

`(2*n+1)*(n-1)*gcd(n, 2*n)+n`
-/

namespace A015237.P3021688985411395830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (((n : ℤ) - 1) * (Nat.gcd n (2 * n) : ℤ)) + (n : ℤ)

end

end A015237.P3021688985411395830

namespace A015237

/-- `(2*n+1)*(n-1)*gcd(n, 2*n)+n` -/
def P3021688985411395830.Spec : Prop :=
  ∀ n, P3021688985411395830.a n = A015237 n

theorem P3021688985411395830.correct : P3021688985411395830.Spec := by
  intro n
  simp only [A015237, Nat.add_sub_cancel, A015237.P3021688985411395830.a, A015237.P2392393478135424708.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A015237

/-! ## A015237.P2173419763686361019

`A033431(n)-n²`
-/

namespace A015237.P2173419763686361019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n - (n ^ 2 : ℤ)

end

end A015237.P2173419763686361019

namespace A015237

/-- `A033431(n)-n²` -/
def P2173419763686361019.Spec : Prop :=
  ∀ n, P2173419763686361019.a n = A015237 n

end A015237

/-! ## A015237.P7606638745561967464

`2*A160378(n)+n`
-/

namespace A015237.P7606638745561967464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160378 n + (n : ℤ)

end

end A015237.P7606638745561967464

namespace A015237

/-- `2*A160378(n)+n` -/
def P7606638745561967464.Spec : Prop :=
  ∀ n, P7606638745561967464.a n = A015237 n

end A015237

/-! ## A015237.P5239074949160471351

`abs(n²*A165747(n))`
-/

namespace A015237.P5239074949160471351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 2 : ℤ) * A165747 n|

end

end A015237.P5239074949160471351

namespace A015237

/-- `abs(n²*A165747(n))` -/
def P5239074949160471351.Spec : Prop :=
  ∀ n, P5239074949160471351.a n = A015237 n

end A015237

/-! ## A015237.P9006498081939847035

`A007290(n)+A004466(n)`
-/

namespace A015237.P9006498081939847035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 n + A004466 n

end

end A015237.P9006498081939847035

namespace A015237

/-- `A007290(n)+A004466(n)` -/
def P9006498081939847035.Spec : Prop :=
  ∀ n, P9006498081939847035.a n = A015237 n

end A015237

/-!
# A015238: a(n) = (2*n - 3)n^2.

The programs for A015238, the canonical program `A015238.P18123639342462093912` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015238 has offset 0).

The definition of A015238 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-3)*n²` (program `A015238.P18123639342462093912`, by `A015238.P18123639342462093912.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015238.P18123639342462093912

`(2*n-3)*n²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015238

/-- `(2*n-3)*n²` -/
def P18123639342462093912.Spec : Prop :=
  ∀ n, P18123639342462093912.a n = A015238 n

theorem P18123639342462093912.correct : P18123639342462093912.Spec := by
  intro n
  simp only [A015238]

end A015238

/-! ## A015238.P2918527727067103115

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=-1, a(2)=4, a(3)=27`
-/

namespace A015238.P2918527727067103115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -1, 4, 27] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A015238.P2918527727067103115

namespace A015238

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P2918527727067103115.Spec : Prop :=
  ∀ n, P2918527727067103115.a n = A015238 n

theorem P2918527727067103115.correct : P2918527727067103115.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A015238, Nat.add_sub_cancel, A015238.P2918527727067103115.a, A015238.P18123639342462093912.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A015238, Nat.add_sub_cancel, A015238.P2918527727067103115.a, A015238.P18123639342462093912.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A015238

/-! ## A015238.P15322172498881244947

`Δ[C((1-n)², 2)]-n`
-/

namespace A015238.P15322172498881244947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((1 - (n : ℤ)) ^ 2).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)

end

end A015238.P15322172498881244947

namespace A015238

/-- `Δ[C((1-n)², 2)]-n` -/
def P15322172498881244947.Spec : Prop :=
  ∀ n, P15322172498881244947.a n = A015238 n

end A015238

/-! ## A015238.P3069705459087702138

`(n-1)*C(2*n, 2)-n`
-/

namespace A015238.P3069705459087702138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.choose (2 * n) 2 : ℤ) - (n : ℤ)

end

end A015238.P3069705459087702138

namespace A015238

/-- `(n-1)*C(2*n, 2)-n` -/
def P3069705459087702138.Spec : Prop :=
  ∀ n, P3069705459087702138.a n = A015238 n

end A015238

/-! ## A015238.P15706406518334448383

`floor(n*∑[a(n-1)+4])` with `a(0)=0, a(1)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A015238.P15706406518334448383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015238.P15706406518334448383

namespace A015238

/-- `floor(n*∑[a(n-1)+4])` -/
def P15706406518334448383.Spec : Prop :=
  ∀ n, P15706406518334448383.a n = A015238 n

end A015238

/-! ## A015238.P13897524806025232407

`n-n*∑[a(n-1)-4]` with `a(0)=1, a(1)=1`
-/

namespace A015238.P13897524806025232407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015238.P13897524806025232407

namespace A015238

/-- `n-n*∑[a(n-1)-4]` -/
def P13897524806025232407.Spec : Prop :=
  ∀ n, P13897524806025232407.a n = A015238 n

end A015238

/-! ## A015238.P13968316616770948032

`lcm(1-2*n, n*(n-1))-n`
-/

namespace A015238.P13968316616770948032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (1 - (2 * n : ℤ)) ((n : ℤ) * ((n : ℤ) - 1)) : ℤ) - (n : ℤ)

end

end A015238.P13968316616770948032

namespace A015238

/-- `lcm(1-2*n, n*(n-1))-n` -/
def P13968316616770948032.Spec : Prop :=
  ∀ n, P13968316616770948032.a n = A015238 n

end A015238

/-! ## A015238.P11423283145148032987

`(n-1)*(2*n+1)*(n-1)-gcd(n, n+1)`
-/

namespace A015238.P11423283145148032987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((2 * n + 1 : ℤ) * ((n : ℤ) - 1)) - (Nat.gcd n (n + 1) : ℤ)

end

end A015238.P11423283145148032987

namespace A015238

/-- `(n-1)*(2*n+1)*(n-1)-gcd(n, n+1)` -/
def P11423283145148032987.Spec : Prop :=
  ∀ n, P11423283145148032987.a n = A015238 n

theorem P11423283145148032987.correct : P11423283145148032987.Spec := by
  intro n
  simp only [A015238, Nat.add_sub_cancel, A015238.P11423283145148032987.a, A015238.P18123639342462093912.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A015238

/-! ## A015238.P15446350543576383671

`(n-1)*(2*n+1)*(n-1)-and(1, 2*n+1)`
-/

namespace A015238.P15446350543576383671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((2 * n + 1 : ℤ) * ((n : ℤ) - 1)) - (Nat.land 1 (2 * n + 1) : ℤ)

end

end A015238.P15446350543576383671

namespace A015238

/-- `(n-1)*(2*n+1)*(n-1)-and(1, 2*n+1)` -/
def P15446350543576383671.Spec : Prop :=
  ∀ n, P15446350543576383671.a n = A015238 n

theorem P15446350543576383671.correct : P15446350543576383671.Spec := by
  intro n
  simp only [A015238, Nat.add_sub_cancel, A015238.P15446350543576383671.a, A015238.P18123639342462093912.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A015238

/-! ## A015238.P10788125553897443740

`A152064(n)-5`
-/

namespace A015238.P10788125553897443740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152064 n - 5

end

end A015238.P10788125553897443740

namespace A015238

/-- `A152064(n)-5` -/
def P10788125553897443740.Spec : Prop :=
  ∀ n, P10788125553897443740.a n = A015238 n

end A015238

/-! ## A015238.P14478708114241645596

`floor(A141530(n)/2)`
-/

namespace A015238.P14478708114241645596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141530 n : ℚ) / 2⌋

end

end A015238.P14478708114241645596

namespace A015238

/-- `floor(A141530(n)/2)` -/
def P14478708114241645596.Spec : Prop :=
  ∀ n, P14478708114241645596.a n = A015238 n

end A015238

/-! ## A015238.P12206585290908383751

`A212133(n)-2*n`
-/

namespace A015238.P12206585290908383751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 n - (2 * n : ℤ)

end

end A015238.P12206585290908383751

namespace A015238

/-- `A212133(n)-2*n` -/
def P12206585290908383751.Spec : Prop :=
  ∀ n, P12206585290908383751.a n = A015238 n

end A015238

/-! ## A015238.P2179423535891923151

`A015240(n)+2*n²`
-/

namespace A015238.P2179423535891923151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015240 n + (2 * n ^ 2 : ℤ)

end

end A015238.P2179423535891923151

namespace A015238

/-- `A015240(n)+2*n²` -/
def P2179423535891923151.Spec : Prop :=
  ∀ n, P2179423535891923151.a n = A015238 n

end A015238

/-! ## A015238.P7271587545053570841

`A015242(n)+(2*n)²`
-/

namespace A015238.P7271587545053570841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015242 n + ((2 * n) ^ 2 : ℤ)

end

end A015238.P7271587545053570841

namespace A015238

/-- `A015242(n)+(2*n)²` -/
def P7271587545053570841.Spec : Prop :=
  ∀ n, P7271587545053570841.a n = A015238 n

end A015238

/-! ## A015238.P2632601014677165935

`A015237(n)-2*n²`
-/

namespace A015238.P2632601014677165935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n - (2 * n ^ 2 : ℤ)

end

end A015238.P2632601014677165935

namespace A015238

/-- `A015237(n)-2*n²` -/
def P2632601014677165935.Spec : Prop :=
  ∀ n, P2632601014677165935.a n = A015238 n

end A015238

/-! ## A015238.P6583652221011600582

`2*A045991(n)-n²`
-/

namespace A015238.P6583652221011600582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045991 n - (n ^ 2 : ℤ)

end

end A015238.P6583652221011600582

namespace A015238

/-- `2*A045991(n)-n²` -/
def P6583652221011600582.Spec : Prop :=
  ∀ n, P6583652221011600582.a n = A015238 n

end A015238

/-! ## A015238.P18020505357255186699

`A099721(n)-(2*n)²`
-/

namespace A015238.P18020505357255186699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099721 n - ((2 * n) ^ 2 : ℤ)

end

end A015238.P18020505357255186699

namespace A015238

/-- `A099721(n)-(2*n)²` -/
def P18020505357255186699.Spec : Prop :=
  ∀ n, P18020505357255186699.a n = A015238 n

end A015238

/-! ## A015238.P14678134435846710662

`A059722(n)-∑[2*n]`
-/

namespace A015238.P14678134435846710662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059722 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A015238.P14678134435846710662

namespace A015238

/-- `A059722(n)-∑[2*n]` -/
def P14678134435846710662.Spec : Prop :=
  ∀ n, P14678134435846710662.a n = A015238 n

end A015238

/-! ## A015238.P14661995304701482225

`(n-1)*A000384(n)-n`
-/

namespace A015238.P14661995304701482225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A000384 n - (n : ℤ)

end

end A015238.P14661995304701482225

namespace A015238

/-- `(n-1)*A000384(n)-n` -/
def P14661995304701482225.Spec : Prop :=
  ∀ n, P14661995304701482225.a n = A015238 n

end A015238

/-! ## A015238.P4311553510212841925

`A173963(n+1)-n²²`
-/

namespace A015238.P4311553510212841925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173963 (n + 1) - ((n ^ 2) ^ 2 : ℤ)

end

end A015238.P4311553510212841925

namespace A015238

/-- `A173963(n+1)-n²²` -/
def P4311553510212841925.Spec : Prop :=
  ∀ n, P4311553510212841925.a n = A015238 n

end A015238

/-!
# A015239: Inverse of 1230th cyclotomic polynomial.

The programs for A015239, there is no canonical definition to state claims against.
-/

/-! ## A015239.P1190208995789811385

`A014624(n)*A033999(n)`
-/

namespace A015239.P1190208995789811385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014624 n * A033999 n

end

end A015239.P1190208995789811385

/-! ## A015239.P5796680945938542291

`A016019(A048339(n))`
-/

namespace A015239.P5796680945938542291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016019 (A048339 n).toNat

end

end A015239.P5796680945938542291

/-! ## A015239.P270772260634667085

`A016139(A048340(n))`
-/

namespace A015239.P270772260634667085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016139 (A048340 n).toNat

end

end A015239.P270772260634667085

/-! ## A015239.P18430435698057725391

`A016139(A050723(n+1))`
-/

namespace A015239.P18430435698057725391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016139 (A050723 (n + 1)).toNat

end

end A015239.P18430435698057725391

/-! ## A015239.P8541807265839782576

`A015299(n)*A368871(n)`
-/

namespace A015239.P8541807265839782576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015299 n * A368871 n

end

end A015239.P8541807265839782576

/-!
# A015240: a(n) = (2*n - 5)n^2.

The programs for A015240, the canonical program `A015240.P5000654862916003814` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015240 has offset 0).

The definition of A015240 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-5)*n²` (program `A015240.P5000654862916003814`, by `A015240.P5000654862916003814.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015240.P5000654862916003814

`(2*n-5)*n²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015240

/-- `(2*n-5)*n²` -/
def P5000654862916003814.Spec : Prop :=
  ∀ n, P5000654862916003814.a n = A015240 n

theorem P5000654862916003814.correct : P5000654862916003814.Spec := by
  intro n
  simp only [A015240]

end A015240

/-! ## A015240.P17123088876752320591

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=-3, a(2)=-4, a(3)=9`
-/

namespace A015240.P17123088876752320591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -3, -4, 9] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A015240.P17123088876752320591

namespace A015240

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P17123088876752320591.Spec : Prop :=
  ∀ n, P17123088876752320591.a n = A015240 n

theorem P17123088876752320591.correct : P17123088876752320591.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A015240, Nat.add_sub_cancel, A015240.P17123088876752320591.a, A015240.P5000654862916003814.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A015240, Nat.add_sub_cancel, A015240.P17123088876752320591.a, A015240.P5000654862916003814.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A015240

/-! ## A015240.P4334485827237458043

`floor(n*∑[a(n-1)+4])` with `a(0)=0, a(1)=-3`

`floor` is left out, it is the identity on integers.
-/

namespace A015240.P4334485827237458043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, -3] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015240.P4334485827237458043

namespace A015240

/-- `floor(n*∑[a(n-1)+4])` -/
def P4334485827237458043.Spec : Prop :=
  ∀ n, P4334485827237458043.a n = A015240 n

end A015240

/-! ## A015240.P6628410872797279016

`(n-2)*C(2*n, 2)-2*n`
-/

namespace A015240.P6628410872797279016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (Nat.choose (2 * n) 2 : ℤ) - (2 * n : ℤ)

end

end A015240.P6628410872797279016

namespace A015240

/-- `(n-2)*C(2*n, 2)-2*n` -/
def P6628410872797279016.Spec : Prop :=
  ∀ n, P6628410872797279016.a n = A015240 n

end A015240

/-! ## A015240.P9867629986443818320

`n-n*∑[a(n-1)-4]` with `a(0)=1, a(1)=3`
-/

namespace A015240.P9867629986443818320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015240.P9867629986443818320

namespace A015240

/-- `n-n*∑[a(n-1)-4]` -/
def P9867629986443818320.Spec : Prop :=
  ∀ n, P9867629986443818320.a n = A015240 n

end A015240

/-! ## A015240.P6118198492832272372

`(n-2)*lcm(n, 1-2*n)-2*n`
-/

namespace A015240.P6118198492832272372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (Int.lcm (n : ℤ) (1 - (2 * n : ℤ)) : ℤ) - (2 * n : ℤ)

end

end A015240.P6118198492832272372

namespace A015240

/-- `(n-2)*lcm(n, 1-2*n)-2*n` -/
def P6118198492832272372.Spec : Prop :=
  ∀ n, P6118198492832272372.a n = A015240 n

end A015240

/-! ## A015240.P13286147012975232917

`A015242(n)+2*n²`
-/

namespace A015240.P13286147012975232917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015242 n + (2 * n ^ 2 : ℤ)

end

end A015240.P13286147012975232917

namespace A015240

/-- `A015242(n)+2*n²` -/
def P13286147012975232917.Spec : Prop :=
  ∀ n, P13286147012975232917.a n = A015240 n

end A015240

/-! ## A015240.P13292660626136558555

`A015243(n)+(2*n)²`
-/

namespace A015240.P13292660626136558555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015243 n + ((2 * n) ^ 2 : ℤ)

end

end A015240.P13292660626136558555

namespace A015240

/-- `A015243(n)+(2*n)²` -/
def P13292660626136558555.Spec : Prop :=
  ∀ n, P13292660626136558555.a n = A015240 n

end A015240

/-! ## A015240.P2044341193554451062

`A015237(n)-(2*n)²`
-/

namespace A015240.P2044341193554451062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n - ((2 * n) ^ 2 : ℤ)

end

end A015240.P2044341193554451062

namespace A015240

/-- `A015237(n)-(2*n)²` -/
def P2044341193554451062.Spec : Prop :=
  ∀ n, P2044341193554451062.a n = A015240 n

end A015240

/-! ## A015240.P9267903492480492176

`A015238(n)-2*n²`
-/

namespace A015240.P9267903492480492176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015238 n - (2 * n ^ 2 : ℤ)

end

end A015240.P9267903492480492176

namespace A015240

/-- `A015238(n)-2*n²` -/
def P9267903492480492176.Spec : Prop :=
  ∀ n, P9267903492480492176.a n = A015240 n

end A015240

/-! ## A015240.P7801905336580252767

`A212133(n)-∑[4*n]`
-/

namespace A015240.P7801905336580252767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A015240.P7801905336580252767

namespace A015240

/-- `A212133(n)-∑[4*n]` -/
def P7801905336580252767.Spec : Prop :=
  ∀ n, P7801905336580252767.a n = A015240 n

end A015240

/-! ## A015240.P11884978865830550599

`(1-n)²²-A137864(n+1)`
-/

namespace A015240.P11884978865830550599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2) ^ 2 - A137864 (n + 1)

end

end A015240.P11884978865830550599

namespace A015240

/-- `(1-n)²²-A137864(n+1)` -/
def P11884978865830550599.Spec : Prop :=
  ∀ n, P11884978865830550599.a n = A015240 n

end A015240

/-! ## A015240.P17566965942668514246

`A016742(n)+A015243(n)`
-/

namespace A015240.P17566965942668514246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + A015243 n

end

end A015240.P17566965942668514246

namespace A015240

/-- `A016742(n)+A015243(n)` -/
def P17566965942668514246.Spec : Prop :=
  ∀ n, P17566965942668514246.a n = A015240 n

end A015240

/-! ## A015240.P2984895689460309619

`A033581(n)+A015245(n)`
-/

namespace A015240.P2984895689460309619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + A015245 n

end

end A015240.P2984895689460309619

namespace A015240

/-- `A033581(n)+A015245(n)` -/
def P2984895689460309619.Spec : Prop :=
  ∀ n, P2984895689460309619.a n = A015240 n

end A015240

/-! ## A015240.P5249443535624087626

`A033583(n)+A015247(n)`
-/

namespace A015240.P5249443535624087626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n + A015247 n

end

end A015240.P5249443535624087626

namespace A015240

/-- `A033583(n)+A015247(n)` -/
def P5249443535624087626.Spec : Prop :=
  ∀ n, P5249443535624087626.a n = A015240 n

end A015240

/-! ## A015240.P17642135514213355987

`A139098(n)+A015246(n)`
-/

namespace A015240.P17642135514213355987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139098 n + A015246 n

end

end A015240.P17642135514213355987

namespace A015240

/-- `A139098(n)+A015246(n)` -/
def P17642135514213355987.Spec : Prop :=
  ∀ n, P17642135514213355987.a n = A015240 n

end A015240

/-! ## A015240.P13908087668910942354

`A275876(n)+A037235(n)`
-/

namespace A015240.P13908087668910942354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275876 n + A037235 n

end

end A015240.P13908087668910942354

namespace A015240

/-- `A275876(n)+A037235(n)` -/
def P13908087668910942354.Spec : Prop :=
  ∀ n, P13908087668910942354.a n = A015240 n

end A015240

/-! ## A015240.P3162724200089396605

`A033431(n)-A033429(n)`
-/

namespace A015240.P3162724200089396605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n - A033429 n

end

end A015240.P3162724200089396605

namespace A015240

/-- `A033431(n)-A033429(n)` -/
def P3162724200089396605.Spec : Prop :=
  ∀ n, P3162724200089396605.a n = A015240 n

end A015240

/-! ## A015240.P10709270750289041032

`A059722(n)-A049451(n)`
-/

namespace A015240.P10709270750289041032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059722 n - A049451 n

end

end A015240.P10709270750289041032

namespace A015240

/-- `A059722(n)-A049451(n)` -/
def P10709270750289041032.Spec : Prop :=
  ∀ n, P10709270750289041032.a n = A015240 n

end A015240

/-! ## A015240.P15091814093333716543

`A099721(n)-A033581(n)`
-/

namespace A015240.P15091814093333716543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099721 n - A033581 n

end

end A015240.P15091814093333716543

namespace A015240

/-- `A099721(n)-A033581(n)` -/
def P15091814093333716543.Spec : Prop :=
  ∀ n, P15091814093333716543.a n = A015240 n

end A015240

/-!
# A015241: Inverse of 1232nd cyclotomic polynomial.

The programs for A015241, there is no canonical definition to state claims against.
-/

/-! ## A015241.P12019349463746363270

`A014625(gcd(n, A000217(n)))`
-/

namespace A015241.P12019349463746363270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014625 (Int.gcd (n : ℤ) (A000217 n))

end

end A015241.P12019349463746363270

/-!
# A015242: a(n) = (2*n - 7)*n^2.

The programs for A015242, the canonical program `A015242.P7436242333656927061` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015242 has offset 0).

The definition of A015242 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-7)*n²` (program `A015242.P7436242333656927061`, by `A015242.P7436242333656927061.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015242.P7436242333656927061

`(2*n-7)*n²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015242

/-- `(2*n-7)*n²` -/
def P7436242333656927061.Spec : Prop :=
  ∀ n, P7436242333656927061.a n = A015242 n

theorem P7436242333656927061.correct : P7436242333656927061.Spec := by
  intro n
  simp only [A015242]

end A015242

/-! ## A015242.P5026648679496408978

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=-5, a(2)=-12, a(3)=-9`
-/

namespace A015242.P5026648679496408978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -5, -12, -9] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A015242.P5026648679496408978

namespace A015242

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P5026648679496408978.Spec : Prop :=
  ∀ n, P5026648679496408978.a n = A015242 n

theorem P5026648679496408978.correct : P5026648679496408978.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A015242, Nat.add_sub_cancel, A015242.P5026648679496408978.a, A015242.P7436242333656927061.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A015242, Nat.add_sub_cancel, A015242.P5026648679496408978.a, A015242.P7436242333656927061.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A015242

/-! ## A015242.P16617139016941262622

`(n-3)*C(2*n, 2)-3*n`
-/

namespace A015242.P16617139016941262622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * (Nat.choose (2 * n) 2 : ℤ) - (3 * n : ℤ)

end

end A015242.P16617139016941262622

namespace A015242

/-- `(n-3)*C(2*n, 2)-3*n` -/
def P16617139016941262622.Spec : Prop :=
  ∀ n, P16617139016941262622.a n = A015242 n

end A015242

/-! ## A015242.P5832114285829530022

`n-n*∑[a(n-1)-4]` with `a(0)=1, a(1)=5`
-/

namespace A015242.P5832114285829530022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015242.P5832114285829530022

namespace A015242

/-- `n-n*∑[a(n-1)-4]` -/
def P5832114285829530022.Spec : Prop :=
  ∀ n, P5832114285829530022.a n = A015242 n

end A015242

/-! ## A015242.P10707409392800386422

`A015243(n)+2*n²`
-/

namespace A015242.P10707409392800386422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015243 n + (2 * n ^ 2 : ℤ)

end

end A015242.P10707409392800386422

namespace A015242

/-- `A015243(n)+2*n²` -/
def P10707409392800386422.Spec : Prop :=
  ∀ n, P10707409392800386422.a n = A015242 n

end A015242

/-! ## A015242.P3896472909945449248

`A015245(n)+(2*n)²`
-/

namespace A015242.P3896472909945449248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015245 n + ((2 * n) ^ 2 : ℤ)

end

end A015242.P3896472909945449248

namespace A015242

/-- `A015245(n)+(2*n)²` -/
def P3896472909945449248.Spec : Prop :=
  ∀ n, P3896472909945449248.a n = A015242 n

end A015242

/-! ## A015242.P11766552935562425309

`A015238(n)-(2*n)²`
-/

namespace A015242.P11766552935562425309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015238 n - ((2 * n) ^ 2 : ℤ)

end

end A015242.P11766552935562425309

namespace A015242

/-- `A015238(n)-(2*n)²` -/
def P11766552935562425309.Spec : Prop :=
  ∀ n, P11766552935562425309.a n = A015242 n

end A015242

/-! ## A015242.P17500228758872151286

`A015240(n)-2*n²`
-/

namespace A015242.P17500228758872151286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015240 n - (2 * n ^ 2 : ℤ)

end

end A015242.P17500228758872151286

namespace A015242

/-- `A015240(n)-2*n²` -/
def P17500228758872151286.Spec : Prop :=
  ∀ n, P17500228758872151286.a n = A015242 n

end A015242

/-! ## A015242.P17946329396853307070

`A015237(n)-6*n²`
-/

namespace A015242.P17946329396853307070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n - (6 * n ^ 2 : ℤ)

end

end A015242.P17946329396853307070

namespace A015242

/-- `A015237(n)-6*n²` -/
def P17946329396853307070.Spec : Prop :=
  ∀ n, P17946329396853307070.a n = A015242 n

end A015242

/-! ## A015242.P3997221905892466488

`A033431(n)-7*n²`
-/

namespace A015242.P3997221905892466488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n - (7 * n ^ 2 : ℤ)

end

end A015242.P3997221905892466488

namespace A015242

/-- `A033431(n)-7*n²` -/
def P3997221905892466488.Spec : Prop :=
  ∀ n, P3997221905892466488.a n = A015242 n

end A015242

/-! ## A015242.P14709412961360585491

`A275709(n)-10*n²`
-/

namespace A015242.P14709412961360585491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275709 n - (10 * n ^ 2 : ℤ)

end

end A015242.P14709412961360585491

namespace A015242

/-- `A275709(n)-10*n²` -/
def P14709412961360585491.Spec : Prop :=
  ∀ n, P14709412961360585491.a n = A015242 n

end A015242

/-! ## A015242.P3175230294843106150

`A016742(n)+A015245(n)`
-/

namespace A015242.P3175230294843106150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + A015245 n

end

end A015242.P3175230294843106150

namespace A015242

/-- `A016742(n)+A015245(n)` -/
def P3175230294843106150.Spec : Prop :=
  ∀ n, P3175230294843106150.a n = A015242 n

end A015242

/-! ## A015242.P12567789673199089872

`A033581(n)+A015246(n)`
-/

namespace A015242.P12567789673199089872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + A015246 n

end

end A015242.P12567789673199089872

namespace A015242

/-- `A033581(n)+A015246(n)` -/
def P12567789673199089872.Spec : Prop :=
  ∀ n, P12567789673199089872.a n = A015242 n

end A015242

/-! ## A015242.P16091012859180366332

`A139098(n)+A015247(n)`
-/

namespace A015242.P16091012859180366332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139098 n + A015247 n

end

end A015242.P16091012859180366332

namespace A015242

/-- `A139098(n)+A015247(n)` -/
def P16091012859180366332.Spec : Prop :=
  ∀ n, P16091012859180366332.a n = A015242 n

end A015242

/-! ## A015242.P5617690623665296505

`A033583(n)-A015234(n)`
-/

namespace A015242.P5617690623665296505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033583 n - A015234 n

end

end A015242.P5617690623665296505

namespace A015242

/-- `A033583(n)-A015234(n)` -/
def P5617690623665296505.Spec : Prop :=
  ∀ n, P5617690623665296505.a n = A015242 n

end A015242

/-! ## A015242.P9691765130070779581

`A061317(n)-A092277(n)`
-/

namespace A015242.P9691765130070779581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061317 n - A092277 n

end

end A015242.P9691765130070779581

namespace A015242

/-- `A061317(n)-A092277(n)` -/
def P9691765130070779581.Spec : Prop :=
  ∀ n, P9691765130070779581.a n = A015242 n

end A015242

/-! ## A015242.P10750615836654273992

`A135713(n)-A022277(n)`
-/

namespace A015242.P10750615836654273992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135713 n - A022277 n

end

end A015242.P10750615836654273992

namespace A015242

/-- `A135713(n)-A022277(n)` -/
def P10750615836654273992.Spec : Prop :=
  ∀ n, P10750615836654273992.a n = A015242 n

end A015242

/-! ## A015242.P10787415979608657277

`A212133(n)-A002943(n)`
-/

namespace A015242.P10787415979608657277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 n - A002943 n

end

end A015242.P10787415979608657277

namespace A015242

/-- `A212133(n)-A002943(n)` -/
def P10787415979608657277.Spec : Prop :=
  ∀ n, P10787415979608657277.a n = A015242 n

end A015242

/-! ## A015242.P10944145827132537312

`A163815(n)-A063436(n)`
-/

namespace A015242.P10944145827132537312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163815 n - A063436 n

end

end A015242.P10944145827132537312

namespace A015242

/-- `A163815(n)-A063436(n)` -/
def P10944145827132537312.Spec : Prop :=
  ∀ n, P10944145827132537312.a n = A015242 n

end A015242

/-! ## A015242.P14764038495915364547

`A099721(n)-A139098(n)`
-/

namespace A015242.P14764038495915364547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099721 n - A139098 n

end

end A015242.P14764038495915364547

namespace A015242

/-- `A099721(n)-A139098(n)` -/
def P14764038495915364547.Spec : Prop :=
  ∀ n, P14764038495915364547.a n = A015242 n

end A015242

/-!
# A015243: a(n) = (2*n - 9)*n^2.

The programs for A015243, the canonical program `A015243.P656564678258870490` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015243 has offset 0).

The definition of A015243 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-9)*n²` (program `A015243.P656564678258870490`, by `A015243.P656564678258870490.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015243.P656564678258870490

`(2*n-9)*n²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015243

/-- `(2*n-9)*n²` -/
def P656564678258870490.Spec : Prop :=
  ∀ n, P656564678258870490.a n = A015243 n

theorem P656564678258870490.correct : P656564678258870490.Spec := by
  intro n
  simp only [A015243]

end A015243

/-! ## A015243.P12759793920870337091

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=-7, a(2)=-20, a(3)=-27`
-/

namespace A015243.P12759793920870337091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -7, -20, -27] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A015243.P12759793920870337091

namespace A015243

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12759793920870337091.Spec : Prop :=
  ∀ n, P12759793920870337091.a n = A015243 n

theorem P12759793920870337091.correct : P12759793920870337091.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A015243, Nat.add_sub_cancel, A015243.P12759793920870337091.a, A015243.P656564678258870490.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A015243, Nat.add_sub_cancel, A015243.P12759793920870337091.a, A015243.P656564678258870490.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A015243

/-! ## A015243.P14032840325703319099

`(n-2)*C(2*n, 2)-(2*n+1)*2*n`
-/

namespace A015243.P14032840325703319099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (Nat.choose (2 * n) 2 : ℤ) - ((2 * n + 1) * (2 * n) : ℤ)

end

end A015243.P14032840325703319099

namespace A015243

/-- `(n-2)*C(2*n, 2)-(2*n+1)*2*n` -/
def P14032840325703319099.Spec : Prop :=
  ∀ n, P14032840325703319099.a n = A015243 n

end A015243

/-! ## A015243.P10913856701998288810

`A015245(n)+2*n²`
-/

namespace A015243.P10913856701998288810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015245 n + (2 * n ^ 2 : ℤ)

end

end A015243.P10913856701998288810

namespace A015243

/-- `A015245(n)+2*n²` -/
def P10913856701998288810.Spec : Prop :=
  ∀ n, P10913856701998288810.a n = A015243 n

end A015243

/-! ## A015243.P5455114378691766795

`A015246(n)+(2*n)²`
-/

namespace A015243.P5455114378691766795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015246 n + ((2 * n) ^ 2 : ℤ)

end

end A015243.P5455114378691766795

namespace A015243

/-- `A015246(n)+(2*n)²` -/
def P5455114378691766795.Spec : Prop :=
  ∀ n, P5455114378691766795.a n = A015243 n

end A015243

/-! ## A015243.P3184418573222070290

`A015240(n)-(2*n)²`
-/

namespace A015243.P3184418573222070290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015240 n - ((2 * n) ^ 2 : ℤ)

end

end A015243.P3184418573222070290

namespace A015243

/-- `A015240(n)-(2*n)²` -/
def P3184418573222070290.Spec : Prop :=
  ∀ n, P3184418573222070290.a n = A015243 n

end A015243

/-! ## A015243.P2520299918494747599

`A015242(n)-2*n²`
-/

namespace A015243.P2520299918494747599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015242 n - (2 * n ^ 2 : ℤ)

end

end A015243.P2520299918494747599

namespace A015243

/-- `A015242(n)-2*n²` -/
def P2520299918494747599.Spec : Prop :=
  ∀ n, P2520299918494747599.a n = A015243 n

end A015243

/-! ## A015243.P2006054862565167338

`A033431(n)-(3*n)²`
-/

namespace A015243.P2006054862565167338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n - ((3 * n) ^ 2 : ℤ)

end

end A015243.P2006054862565167338

namespace A015243

/-- `A033431(n)-(3*n)²` -/
def P2006054862565167338.Spec : Prop :=
  ∀ n, P2006054862565167338.a n = A015243 n

end A015243

/-! ## A015243.P582737367163799842

`A015238(n)-6*n²`
-/

namespace A015243.P582737367163799842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015238 n - (6 * n ^ 2 : ℤ)

end

end A015243.P582737367163799842

namespace A015243

/-- `A015238(n)-6*n²` -/
def P582737367163799842.Spec : Prop :=
  ∀ n, P582737367163799842.a n = A015243 n

end A015243

/-! ## A015243.P15909125508130756886

`8*n²-A015234(n)`
-/

namespace A015243.P15909125508130756886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 2 : ℤ) - A015234 n

end

end A015243.P15909125508130756886

namespace A015243

/-- `8*n²-A015234(n)` -/
def P15909125508130756886.Spec : Prop :=
  ∀ n, P15909125508130756886.a n = A015243 n

end A015243

/-! ## A015243.P14375612970532905792

`A275709(n)-12*n²`
-/

namespace A015243.P14375612970532905792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275709 n - (12 * n ^ 2 : ℤ)

end

end A015243.P14375612970532905792

namespace A015243

/-- `A275709(n)-12*n²` -/
def P14375612970532905792.Spec : Prop :=
  ∀ n, P14375612970532905792.a n = A015243 n

end A015243

/-! ## A015243.P17551264247253612913

`A016742(n)+A015246(n)`
-/

namespace A015243.P17551264247253612913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + A015246 n

end

end A015243.P17551264247253612913

namespace A015243

/-- `A016742(n)+A015246(n)` -/
def P17551264247253612913.Spec : Prop :=
  ∀ n, P17551264247253612913.a n = A015243 n

end A015243

/-! ## A015243.P7043623011009770722

`A033581(n)+A015247(n)`
-/

namespace A015243.P7043623011009770722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 n + A015247 n

end

end A015243.P7043623011009770722

namespace A015243

/-- `A033581(n)+A015247(n)` -/
def P7043623011009770722.Spec : Prop :=
  ∀ n, P7043623011009770722.a n = A015243 n

end A015243

/-! ## A015243.P12846887097894357496

`A099721(n)-A033583(n)`
-/

namespace A015243.P12846887097894357496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099721 n - A033583 n

end

end A015243.P12846887097894357496

namespace A015243

/-- `A099721(n)-A033583(n)` -/
def P12846887097894357496.Spec : Prop :=
  ∀ n, P12846887097894357496.a n = A015243 n

end A015243

/-! ## A015243.P17216896819249629922

`A059722(n)-A092277(n)`
-/

namespace A015243.P17216896819249629922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059722 n - A092277 n

end

end A015243.P17216896819249629922

namespace A015243

/-- `A059722(n)-A092277(n)` -/
def P17216896819249629922.Spec : Prop :=
  ∀ n, P17216896819249629922.a n = A015243 n

end A015243

/-! ## A015243.P15763387034584356204

`A015237(n)-A139098(n)`
-/

namespace A015243.P15763387034584356204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n - A139098 n

end

end A015243.P15763387034584356204

namespace A015243

/-- `A015237(n)-A139098(n)` -/
def P15763387034584356204.Spec : Prop :=
  ∀ n, P15763387034584356204.a n = A015243 n

end A015243

/-! ## A015243.P11685445698355134016

`A135713(n)-A022281(n)`
-/

namespace A015243.P11685445698355134016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135713 n - A022281 n

end

end A015243.P11685445698355134016

namespace A015243

/-- `A135713(n)-A022281(n)` -/
def P11685445698355134016.Spec : Prop :=
  ∀ n, P11685445698355134016.a n = A015243 n

end A015243

/-! ## A015243.P6879370427429254830

`A212133(n)-A033580(n)`
-/

namespace A015243.P6879370427429254830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 n - A033580 n

end

end A015243.P6879370427429254830

namespace A015243

/-- `A212133(n)-A033580(n)` -/
def P6879370427429254830.Spec : Prop :=
  ∀ n, P6879370427429254830.a n = A015243 n

end A015243

/-! ## A015243.P4657577000051038728

`A033562(n)-A247792(n)`
-/

namespace A015243.P4657577000051038728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033562 n - A247792 n

end

end A015243.P4657577000051038728

namespace A015243

/-- `A033562(n)-A247792(n)` -/
def P4657577000051038728.Spec : Prop :=
  ∀ n, P4657577000051038728.a n = A015243 n

end A015243

/-! ## A015243.P10794818973355488670

`A163683(n)-A144555(n)`
-/

namespace A015243.P10794818973355488670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163683 n - A144555 n

end

end A015243.P10794818973355488670

namespace A015243

/-- `A163683(n)-A144555(n)` -/
def P10794818973355488670.Spec : Prop :=
  ∀ n, P10794818973355488670.a n = A015243 n

end A015243

/-!
# A015244: Inverse of 1235th cyclotomic polynomial.

The programs for A015244, there is no canonical definition to state claims against.
-/

/-! ## A015244.P1531561565650267635

`Δ[A080763(∑[A251724(n+1)])]`
-/

namespace A015244.P1531561565650267635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251724 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080763 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A015244.P1531561565650267635

/-!
# A015245: a(n) = (2*n - 11)*n^2.

The programs for A015245, the canonical program `A015245.P18268065709349994577` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015245 has offset 0).

The definition of A015245 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-11)*n²` (program `A015245.P18268065709349994577`, by `A015245.P18268065709349994577.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015245.P18268065709349994577

`(2*n-11)*n²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015245

/-- `(2*n-11)*n²` -/
def P18268065709349994577.Spec : Prop :=
  ∀ n, P18268065709349994577.a n = A015245 n

theorem P18268065709349994577.correct : P18268065709349994577.Spec := by
  intro n
  simp only [A015245]

end A015245

/-! ## A015245.P12560852709723273814

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=-9, a(2)=-28, a(3)=-45`
-/

namespace A015245.P12560852709723273814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -9, -28, -45] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A015245.P12560852709723273814

namespace A015245

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P12560852709723273814.Spec : Prop :=
  ∀ n, P12560852709723273814.a n = A015245 n

theorem P12560852709723273814.correct : P12560852709723273814.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A015245, Nat.add_sub_cancel, A015245.P12560852709723273814.a, A015245.P18268065709349994577.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A015245, Nat.add_sub_cancel, A015245.P12560852709723273814.a, A015245.P18268065709349994577.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A015245

/-! ## A015245.P12264825559308146170

`A015246(n)+2*n²`
-/

namespace A015245.P12264825559308146170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015246 n + (2 * n ^ 2 : ℤ)

end

end A015245.P12264825559308146170

namespace A015245

/-- `A015246(n)+2*n²` -/
def P12264825559308146170.Spec : Prop :=
  ∀ n, P12264825559308146170.a n = A015245 n

end A015245

/-! ## A015245.P4091346054448811381

`A015247(n)+(2*n)²`
-/

namespace A015245.P4091346054448811381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015247 n + ((2 * n) ^ 2 : ℤ)

end

end A015245.P4091346054448811381

namespace A015245

/-- `A015247(n)+(2*n)²` -/
def P4091346054448811381.Spec : Prop :=
  ∀ n, P4091346054448811381.a n = A015245 n

end A015245

/-! ## A015245.P1505609437185536770

`A015242(n)-(2*n)²`
-/

namespace A015245.P1505609437185536770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015242 n - ((2 * n) ^ 2 : ℤ)

end

end A015245.P1505609437185536770

namespace A015245

/-- `A015242(n)-(2*n)²` -/
def P1505609437185536770.Spec : Prop :=
  ∀ n, P1505609437185536770.a n = A015245 n

end A015245

/-! ## A015245.P13415240298769574417

`A015243(n)-2*n²`
-/

namespace A015245.P13415240298769574417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015243 n - (2 * n ^ 2 : ℤ)

end

end A015245.P13415240298769574417

namespace A015245

/-- `A015243(n)-2*n²` -/
def P13415240298769574417.Spec : Prop :=
  ∀ n, P13415240298769574417.a n = A015245 n

end A015245

/-! ## A015245.P5058856051870469074

`6*n²-A015234(n)`
-/

namespace A015245.P5058856051870469074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 2 : ℤ) - A015234 n

end

end A015245.P5058856051870469074

namespace A015245

/-- `6*n²-A015234(n)` -/
def P5058856051870469074.Spec : Prop :=
  ∀ n, P5058856051870469074.a n = A015245 n

end A015245

/-! ## A015245.P16830298962580160580

`A015240(n)-6*n²`
-/

namespace A015245.P16830298962580160580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015240 n - (6 * n ^ 2 : ℤ)

end

end A015245.P16830298962580160580

namespace A015245

/-- `A015240(n)-6*n²` -/
def P16830298962580160580.Spec : Prop :=
  ∀ n, P16830298962580160580.a n = A015245 n

end A015245

/-! ## A015245.P2250357958930433913

`A015238(n)-8*n²`
-/

namespace A015245.P2250357958930433913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015238 n - (8 * n ^ 2 : ℤ)

end

end A015245.P2250357958930433913

namespace A015245

/-- `A015238(n)-8*n²` -/
def P2250357958930433913.Spec : Prop :=
  ∀ n, P2250357958930433913.a n = A015245 n

end A015245

/-! ## A015245.P14837279279124033080

`A015237(n)-10*n²`
-/

namespace A015245.P14837279279124033080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n - (10 * n ^ 2 : ℤ)

end

end A015245.P14837279279124033080

namespace A015245

/-- `A015237(n)-10*n²` -/
def P14837279279124033080.Spec : Prop :=
  ∀ n, P14837279279124033080.a n = A015245 n

end A015245

/-! ## A015245.P5938868581999967071

`A099721(n)-12*n²`
-/

namespace A015245.P5938868581999967071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099721 n - (12 * n ^ 2 : ℤ)

end

end A015245.P5938868581999967071

namespace A015245

/-- `A099721(n)-12*n²` -/
def P5938868581999967071.Spec : Prop :=
  ∀ n, P5938868581999967071.a n = A015245 n

end A015245

/-! ## A015245.P3376688986829130499

`A212133(n)-(4*n+1)*2*n`
-/

namespace A015245.P3376688986829130499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 n - ((4 * n + 1) * (2 * n) : ℤ)

end

end A015245.P3376688986829130499

namespace A015245

/-- `A212133(n)-(4*n+1)*2*n` -/
def P3376688986829130499.Spec : Prop :=
  ∀ n, P3376688986829130499.a n = A015245 n

end A015245

/-! ## A015245.P14087975623194343841

`A016742(n)+A015247(n)`
-/

namespace A015245.P14087975623194343841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n + A015247 n

end

end A015245.P14087975623194343841

namespace A015245

/-- `A016742(n)+A015247(n)` -/
def P14087975623194343841.Spec : Prop :=
  ∀ n, P14087975623194343841.a n = A015245 n

end A015245

/-! ## A015245.P766909354757608066

`A033431(n)-A033584(n)`
-/

namespace A015245.P766909354757608066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n - A033584 n

end

end A015245.P766909354757608066

namespace A015245

/-- `A033431(n)-A033584(n)` -/
def P766909354757608066.Spec : Prop :=
  ∀ n, P766909354757608066.a n = A015245 n

end A015245

/-! ## A015245.P6367142032516263907

`A135713(n)-A022285(n)`
-/

namespace A015245.P6367142032516263907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135713 n - A022285 n

end

end A015245.P6367142032516263907

namespace A015245

/-- `A135713(n)-A022285(n)` -/
def P6367142032516263907.Spec : Prop :=
  ∀ n, P6367142032516263907.a n = A015245 n

end A015245

/-! ## A015245.P6386548333217614095

`A163683(n)-A016802(n)`
-/

namespace A015245.P6386548333217614095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163683 n - A016802 n

end

end A015245.P6386548333217614095

namespace A015245

/-- `A163683(n)-A016802(n)` -/
def P6386548333217614095.Spec : Prop :=
  ∀ n, P6386548333217614095.a n = A015245 n

end A015245

/-! ## A015245.P16617962158431368166

`A280058(n)-A135705(n)`
-/

namespace A015245.P16617962158431368166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280058 n - A135705 n

end

end A015245.P16617962158431368166

namespace A015245

/-- `A280058(n)-A135705(n)` -/
def P16617962158431368166.Spec : Prop :=
  ∀ n, P16617962158431368166.a n = A015245 n

end A015245

/-! ## A015245.P2488752094538941440

`A275709(n)-A144555(n)`
-/

namespace A015245.P2488752094538941440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275709 n - A144555 n

end

end A015245.P2488752094538941440

namespace A015245

/-- `A275709(n)-A144555(n)` -/
def P2488752094538941440.Spec : Prop :=
  ∀ n, P2488752094538941440.a n = A015245 n

end A015245

/-! ## A015245.P3656713865890163525

`A187277(n+1)-A081272(n)`
-/

namespace A015245.P3656713865890163525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187277 (n + 1) - A081272 n

end

end A015245.P3656713865890163525

namespace A015245

/-- `A187277(n+1)-A081272(n)` -/
def P3656713865890163525.Spec : Prop :=
  ∀ n, P3656713865890163525.a n = A015245 n

end A015245

/-! ## A015245.P2688528051228130328

`A181617(n+1)-A152742(n)`
-/

namespace A015245.P2688528051228130328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181617 (n + 1) - A152742 n

end

end A015245.P2688528051228130328

namespace A015245

/-- `A181617(n+1)-A152742(n)` -/
def P2688528051228130328.Spec : Prop :=
  ∀ n, P2688528051228130328.a n = A015245 n

end A015245

/-!
# A015246: a(n) = (2*n - 13)*n^2.

The programs for A015246, the canonical program `A015246.P8240661591410173517` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015246 has offset 0).

The definition of A015246 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-13)*n²` (program `A015246.P8240661591410173517`, by `A015246.P8240661591410173517.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015246.P8240661591410173517

`(2*n-13)*n²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015246

/-- `(2*n-13)*n²` -/
def P8240661591410173517.Spec : Prop :=
  ∀ n, P8240661591410173517.a n = A015246 n

theorem P8240661591410173517.correct : P8240661591410173517.Spec := by
  intro n
  simp only [A015246]

end A015246

/-! ## A015246.P7602112186462051355

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=-11, a(2)=-36, a(3)=-63`
-/

namespace A015246.P7602112186462051355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -11, -36, -63] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A015246.P7602112186462051355

namespace A015246

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7602112186462051355.Spec : Prop :=
  ∀ n, P7602112186462051355.a n = A015246 n

theorem P7602112186462051355.correct : P7602112186462051355.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A015246, Nat.add_sub_cancel, A015246.P7602112186462051355.a, A015246.P8240661591410173517.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A015246, Nat.add_sub_cancel, A015246.P7602112186462051355.a, A015246.P8240661591410173517.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A015246

/-! ## A015246.P15447124819410656591

`A015247(n)+2*n²`
-/

namespace A015246.P15447124819410656591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015247 n + (2 * n ^ 2 : ℤ)

end

end A015246.P15447124819410656591

namespace A015246

/-- `A015247(n)+2*n²` -/
def P15447124819410656591.Spec : Prop :=
  ∀ n, P15447124819410656591.a n = A015246 n

end A015246

/-! ## A015246.P5391848736879037797

`(2*n)²-A015234(n)`
-/

namespace A015246.P5391848736879037797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - A015234 n

end

end A015246.P5391848736879037797

namespace A015246

/-- `(2*n)²-A015234(n)` -/
def P5391848736879037797.Spec : Prop :=
  ∀ n, P5391848736879037797.a n = A015246 n

end A015246

/-! ## A015246.P13535362551433763206

`A015243(n)-(2*n)²`
-/

namespace A015246.P13535362551433763206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015243 n - ((2 * n) ^ 2 : ℤ)

end

end A015246.P13535362551433763206

namespace A015246

/-- `A015243(n)-(2*n)²` -/
def P13535362551433763206.Spec : Prop :=
  ∀ n, P13535362551433763206.a n = A015246 n

end A015246

/-! ## A015246.P15694659477875514125

`A015245(n)-2*n²`
-/

namespace A015246.P15694659477875514125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015245 n - (2 * n ^ 2 : ℤ)

end

end A015246.P15694659477875514125

namespace A015246

/-- `A015245(n)-2*n²` -/
def P15694659477875514125.Spec : Prop :=
  ∀ n, P15694659477875514125.a n = A015246 n

end A015246

/-! ## A015246.P1461752917196814880

`A015242(n)-6*n²`
-/

namespace A015246.P1461752917196814880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015242 n - (6 * n ^ 2 : ℤ)

end

end A015246.P1461752917196814880

namespace A015246

/-- `A015242(n)-6*n²` -/
def P1461752917196814880.Spec : Prop :=
  ∀ n, P1461752917196814880.a n = A015246 n

end A015246

/-! ## A015246.P3396751646144747483

`A015240(n)-8*n²`
-/

namespace A015246.P3396751646144747483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015240 n - (8 * n ^ 2 : ℤ)

end

end A015246.P3396751646144747483

namespace A015246

/-- `A015240(n)-8*n²` -/
def P3396751646144747483.Spec : Prop :=
  ∀ n, P3396751646144747483.a n = A015246 n

end A015246

/-! ## A015246.P526198643180020209

`A015238(n)-10*n²`
-/

namespace A015246.P526198643180020209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015238 n - (10 * n ^ 2 : ℤ)

end

end A015246.P526198643180020209

namespace A015246

/-- `A015238(n)-10*n²` -/
def P526198643180020209.Spec : Prop :=
  ∀ n, P526198643180020209.a n = A015246 n

end A015246

/-! ## A015246.P13037402650135315337

`A015237(n)-12*n²`
-/

namespace A015246.P13037402650135315337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n - (12 * n ^ 2 : ℤ)

end

end A015246.P13037402650135315337

namespace A015246

/-- `A015237(n)-12*n²` -/
def P13037402650135315337.Spec : Prop :=
  ∀ n, P13037402650135315337.a n = A015246 n

end A015246

/-! ## A015246.P13959605733749848825

`A135713(n)-A022289(n)`
-/

namespace A015246.P13959605733749848825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135713 n - A022289 n

end

end A015246.P13959605733749848825

namespace A015246

/-- `A135713(n)-A022289(n)` -/
def P13959605733749848825.Spec : Prop :=
  ∀ n, P13959605733749848825.a n = A015246 n

end A015246

/-! ## A015246.P766308026198637738

`A033431(n)-A152742(n)`
-/

namespace A015246.P766308026198637738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n - A152742 n

end

end A015246.P766308026198637738

namespace A015246

/-- `A033431(n)-A152742(n)` -/
def P766308026198637738.Spec : Prop :=
  ∀ n, P766308026198637738.a n = A015246 n

end A015246

/-! ## A015246.P16389910899808692651

`A099721(n)-A144555(n)`
-/

namespace A015246.P16389910899808692651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099721 n - A144555 n

end

end A015246.P16389910899808692651

namespace A015246

/-- `A099721(n)-A144555(n)` -/
def P16389910899808692651.Spec : Prop :=
  ∀ n, P16389910899808692651.a n = A015246 n

end A015246

/-! ## A015246.P17746084861605275459

`A275709(n)-A016802(n)`
-/

namespace A015246.P17746084861605275459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275709 n - A016802 n

end

end A015246.P17746084861605275459

namespace A015246

/-- `A275709(n)-A016802(n)` -/
def P17746084861605275459.Spec : Prop :=
  ∀ n, P17746084861605275459.a n = A015246 n

end A015246

/-! ## A015246.P1342263079855814560

`A163815(n)-A144314(n)`
-/

namespace A015246.P1342263079855814560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163815 n - A144314 n

end

end A015246.P1342263079855814560

namespace A015246

/-- `A163815(n)-A144314(n)` -/
def P1342263079855814560.Spec : Prop :=
  ∀ n, P1342263079855814560.a n = A015246 n

end A015246

/-! ## A015246.P9545052799005937433

`A163683(n)-A195321(n)`
-/

namespace A015246.P9545052799005937433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163683 n - A195321 n

end

end A015246.P9545052799005937433

namespace A015246

/-- `A163683(n)-A195321(n)` -/
def P9545052799005937433.Spec : Prop :=
  ∀ n, P9545052799005937433.a n = A015246 n

end A015246

/-! ## A015246.P5886506525278736385

`A172073(n)-A268351(n)`
-/

namespace A015246.P5886506525278736385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172073 n - A268351 n

end

end A015246.P5886506525278736385

namespace A015246

/-- `A172073(n)-A268351(n)` -/
def P5886506525278736385.Spec : Prop :=
  ∀ n, P5886506525278736385.a n = A015246 n

end A015246

/-! ## A015246.P7462685470753135426

`A047672(n+1)-A082041(n)`
-/

namespace A015246.P7462685470753135426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047672 (n + 1) - A082041 n

end

end A015246.P7462685470753135426

namespace A015246

/-- `A047672(n+1)-A082041(n)` -/
def P7462685470753135426.Spec : Prop :=
  ∀ n, P7462685470753135426.a n = A015246 n

end A015246

/-! ## A015246.P9096579844204675949

`A005898(n)-A143854(n+1)`
-/

namespace A015246.P9096579844204675949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n - A143854 (n + 1)

end

end A015246.P9096579844204675949

namespace A015246

/-- `A005898(n)-A143854(n+1)` -/
def P9096579844204675949.Spec : Prop :=
  ∀ n, P9096579844204675949.a n = A015246 n

end A015246

/-! ## A015246.P6166691568298940528

`A181617(n+1)-A064761(n)`
-/

namespace A015246.P6166691568298940528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181617 (n + 1) - A064761 n

end

end A015246.P6166691568298940528

namespace A015246

/-- `A181617(n+1)-A064761(n)` -/
def P6166691568298940528.Spec : Prop :=
  ∀ n, P6166691568298940528.a n = A015246 n

end A015246

/-!
# A015247: a(n) = (2*n - 15)*n^2.

The programs for A015247, the canonical program `A015247.P18259125441429084346` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015247 has offset 0).

The definition of A015247 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n-15)*n²` (program `A015247.P18259125441429084346`, by `A015247.P18259125441429084346.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A015247.P18259125441429084346

`(2*n-15)*n²`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015247

/-- `(2*n-15)*n²` -/
def P18259125441429084346.Spec : Prop :=
  ∀ n, P18259125441429084346.a n = A015247 n

theorem P18259125441429084346.correct : P18259125441429084346.Spec := by
  intro n
  simp only [A015247]

end A015247

/-! ## A015247.P7445682813523708740

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=-13, a(2)=-44, a(3)=-81`
-/

namespace A015247.P7445682813523708740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, -13, -44, -81] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A015247.P7445682813523708740

namespace A015247

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P7445682813523708740.Spec : Prop :=
  ∀ n, P7445682813523708740.a n = A015247 n

theorem P7445682813523708740.correct : P7445682813523708740.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A015247, Nat.add_sub_cancel, A015247.P7445682813523708740.a, A015247.P18259125441429084346.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A015247, Nat.add_sub_cancel, A015247.P7445682813523708740.a, A015247.P18259125441429084346.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A015247

/-! ## A015247.P11789104248369608361

`2*n²-A015234(n)`
-/

namespace A015247.P11789104248369608361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 : ℤ) - A015234 n

end

end A015247.P11789104248369608361

namespace A015247

/-- `2*n²-A015234(n)` -/
def P11789104248369608361.Spec : Prop :=
  ∀ n, P11789104248369608361.a n = A015247 n

end A015247

/-! ## A015247.P3188876192378392562

`A015245(n)-(2*n)²`
-/

namespace A015247.P3188876192378392562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015245 n - ((2 * n) ^ 2 : ℤ)

end

end A015247.P3188876192378392562

namespace A015247

/-- `A015245(n)-(2*n)²` -/
def P3188876192378392562.Spec : Prop :=
  ∀ n, P3188876192378392562.a n = A015247 n

end A015247

/-! ## A015247.P2374452965454483076

`A015246(n)-2*n²`
-/

namespace A015247.P2374452965454483076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015246 n - (2 * n ^ 2 : ℤ)

end

end A015247.P2374452965454483076

namespace A015247

/-- `A015246(n)-2*n²` -/
def P2374452965454483076.Spec : Prop :=
  ∀ n, P2374452965454483076.a n = A015247 n

end A015247

/-! ## A015247.P16586372047909743460

`A099721(n)-(4*n)²`
-/

namespace A015247.P16586372047909743460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099721 n - ((4 * n) ^ 2 : ℤ)

end

end A015247.P16586372047909743460

namespace A015247

/-- `A099721(n)-(4*n)²` -/
def P16586372047909743460.Spec : Prop :=
  ∀ n, P16586372047909743460.a n = A015247 n

end A015247

/-! ## A015247.P8865646197614984343

`A015243(n)-6*n²`
-/

namespace A015247.P8865646197614984343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015243 n - (6 * n ^ 2 : ℤ)

end

end A015247.P8865646197614984343

namespace A015247

/-- `A015243(n)-6*n²` -/
def P8865646197614984343.Spec : Prop :=
  ∀ n, P8865646197614984343.a n = A015247 n

end A015247

/-! ## A015247.P8918224599864833307

`A015242(n)-8*n²`
-/

namespace A015247.P8918224599864833307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015242 n - (8 * n ^ 2 : ℤ)

end

end A015247.P8918224599864833307

namespace A015247

/-- `A015242(n)-8*n²` -/
def P8918224599864833307.Spec : Prop :=
  ∀ n, P8918224599864833307.a n = A015247 n

end A015247

/-! ## A015247.P10350656802028400580

`A015238(n)-12*n²`
-/

namespace A015247.P10350656802028400580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015238 n - (12 * n ^ 2 : ℤ)

end

end A015247.P10350656802028400580

namespace A015247

/-- `A015238(n)-12*n²` -/
def P10350656802028400580.Spec : Prop :=
  ∀ n, P10350656802028400580.a n = A015247 n

end A015247

/-! ## A015247.P3731865144099745739

`A015240(n)-A033583(n)`
-/

namespace A015247.P3731865144099745739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015240 n - A033583 n

end

end A015247.P3731865144099745739

namespace A015247

/-- `A015240(n)-A033583(n)` -/
def P3731865144099745739.Spec : Prop :=
  ∀ n, P3731865144099745739.a n = A015247 n

end A015247

/-! ## A015247.P9753625351098591616

`A033431(n)-A064761(n)`
-/

namespace A015247.P9753625351098591616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033431 n - A064761 n

end

end A015247.P9753625351098591616

namespace A015247

/-- `A033431(n)-A064761(n)` -/
def P9753625351098591616.Spec : Prop :=
  ∀ n, P9753625351098591616.a n = A015247 n

end A015247

/-! ## A015247.P3672007176852612307

`A015237(n)-A144555(n)`
-/

namespace A015247.P3672007176852612307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015237 n - A144555 n

end

end A015247.P3672007176852612307

namespace A015247

/-- `A015237(n)-A144555(n)` -/
def P3672007176852612307.Spec : Prop :=
  ∀ n, P3672007176852612307.a n = A015247 n

end A015247

/-! ## A015247.P11323815308614666490

`A163683(n)-A195322(n)`
-/

namespace A015247.P11323815308614666490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163683 n - A195322 n

end

end A015247.P11323815308614666490

namespace A015247

/-- `A163683(n)-A195322(n)` -/
def P11323815308614666490.Spec : Prop :=
  ∀ n, P11323815308614666490.a n = A015247 n

end A015247

/-! ## A015247.P4177396206946141969

`A275709(n)-A195321(n)`
-/

namespace A015247.P4177396206946141969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275709 n - A195321 n

end

end A015247.P4177396206946141969

namespace A015247

/-- `A275709(n)-A195321(n)` -/
def P4177396206946141969.Spec : Prop :=
  ∀ n, P4177396206946141969.a n = A015247 n

end A015247

/-! ## A015247.P691856899724730399

`A181617(n+1)-A244630(n)`
-/

namespace A015247.P691856899724730399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181617 (n + 1) - A244630 n

end

end A015247.P691856899724730399

namespace A015247

/-- `A181617(n+1)-A244630(n)` -/
def P691856899724730399.Spec : Prop :=
  ∀ n, P691856899724730399.a n = A015247 n

end A015247

/-! ## A015247.P17222420061178175184

`A163683(n)-2*A033583(n)`
-/

namespace A015247.P17222420061178175184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163683 n - 2 * A033583 n

end

end A015247.P17222420061178175184

namespace A015247

/-- `A163683(n)-2*A033583(n)` -/
def P17222420061178175184.Spec : Prop :=
  ∀ n, P17222420061178175184.a n = A015247 n

end A015247

/-! ## A015247.P15173658117885367255

`n*A139578(n)-A064763(n)`
-/

namespace A015247.P15173658117885367255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A139578 n - A064763 n

end

end A015247.P15173658117885367255

namespace A015247

/-- `n*A139578(n)-A064763(n)` -/
def P15173658117885367255.Spec : Prop :=
  ∀ n, P15173658117885367255.a n = A015247 n

end A015247

/-! ## A015247.P14713118000465038957

`A015245(n)-A001105(n)-A001105(n)`
-/

namespace A015247.P14713118000465038957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015245 n - A001105 n - A001105 n

end

end A015247.P14713118000465038957

namespace A015247

/-- `A015245(n)-A001105(n)-A001105(n)` -/
def P14713118000465038957.Spec : Prop :=
  ∀ n, P14713118000465038957.a n = A015247 n

end A015247

/-! ## A015247.P8858226756883504701

`n*A000217(2*n+1)-A022267(2*n)`
-/

namespace A015247.P8858226756883504701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000217 (2 * n + 1) - A022267 (2 * n)

end

end A015247.P8858226756883504701

namespace A015247

/-- `n*A000217(2*n+1)-A022267(2*n)` -/
def P8858226756883504701.Spec : Prop :=
  ∀ n, P8858226756883504701.a n = A015247 n

end A015247

/-! ## A015247.P832853737460017776

`n*A000217(2*n)-A016742(2*n)`
-/

namespace A015247.P832853737460017776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000217 (2 * n) - A016742 (2 * n)

end

end A015247.P832853737460017776

namespace A015247

/-- `n*A000217(2*n)-A016742(2*n)` -/
def P832853737460017776.Spec : Prop :=
  ∀ n, P832853737460017776.a n = A015247 n

end A015247

/-!
# A015248: Inverse of 1239th cyclotomic polynomial.

The programs for A015248, there is no canonical definition to state claims against.
-/

/-! ## A015248.P17710867198068770263

`A015290(lt[A194447(n+1), A363146(n+5)])`
-/

namespace A015248.P17710867198068770263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363146 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015290 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015248.P17710867198068770263

/-! ## A015248.P14603422241509164803

`A015542(lt[A335465(n), 7])/A125891(n+1)`
-/

namespace A015248.P14603422241509164803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335465 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015542 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n) : ℚ) / (A125891 (n + 1) : ℚ)

end

end A015248.P14603422241509164803

/-!
# A015249: Gaussian binomial coefficient [ n,2 ] for q = -2.

The programs for A015249, the canonical program `A015249.P17924201556753377497` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015249 has offset 2).

The definition of A015249 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015249.P17924201556753377497

`3*a(n-1)+6*a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=3, a(2)=15`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015249

/-- `3*a(n-1)+6*a(n-2)-8*a(n-3)` -/
def P17924201556753377497.Spec : Prop :=
  ∀ n, P17924201556753377497.a n = A015249 (n + 2)

theorem P17924201556753377497.correct : P17924201556753377497.Spec := by
  intro n
  simp only [A015249, Nat.add_sub_cancel]

end A015249

/-! ## A015249.P8714664969605845735

`∑[lcm(2^n, ∑[(-2)^n])]`
-/

namespace A015249.P8714664969605845735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015249.P8714664969605845735

namespace A015249

/-- `∑[lcm(2^n, ∑[(-2)^n])]` -/
def P8714664969605845735.Spec : Prop :=
  ∀ n, (P8714664969605845735.a n : ℤ) = A015249 (n + 2)

end A015249

/-! ## A015249.P12171864704959539304

`∑[(-2)^n*∑[(-2)^n]]`
-/

namespace A015249.P12171864704959539304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015249.P12171864704959539304

namespace A015249

/-- `∑[(-2)^n*∑[(-2)^n]]` -/
def P12171864704959539304.Spec : Prop :=
  ∀ n, P12171864704959539304.a n = A015249 (n + 2)

end A015249

/-! ## A015249.P13534447745021022819

`2*(a(n-1)+4*a(n-2))+1` with `a(0)=1, a(1)=3`
-/

namespace A015249.P13534447745021022819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (a (n - 1) + 4 * a (n - 2)) + 1

end

end A015249.P13534447745021022819

namespace A015249

/-- `2*(a(n-1)+4*a(n-2))+1` -/
def P13534447745021022819.Spec : Prop :=
  ∀ n, (P13534447745021022819.a n : ℤ) = A015249 (n + 2)

end A015249

/-! ## A015249.P6931344164137819788

`xor(1, 2*(4-(4*(1-a(n-2))-a(n-1))))` with `a(0)=1, a(1)=3`
-/

namespace A015249.P6931344164137819788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.xor 1 (2 * (4 - (4 * (1 - a (n - 2)) - a (n - 1))))

end

end A015249.P6931344164137819788

namespace A015249

/-- `xor(1, 2*(4-(4*(1-a(n-2))-a(n-1))))` -/
def P6931344164137819788.Spec : Prop :=
  ∀ n, P6931344164137819788.a n = A015249 (n + 2)

end A015249

/-! ## A015249.P17685025503772599553

`A084175(n+1)`
-/

namespace A015249.P17685025503772599553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 (n + 1)

end

end A015249.P17685025503772599553

namespace A015249

/-- `A084175(n+1)` -/
def P17685025503772599553.Spec : Prop :=
  ∀ n, P17685025503772599553.a n = A015249 (n + 2)

end A015249

/-! ## A015249.P6622573035676498489

`A084152(n+2)`
-/

namespace A015249.P6622573035676498489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084152 (n + 2)

end

end A015249.P6622573035676498489

namespace A015249

/-- `A084152(n+2)` -/
def P6622573035676498489.Spec : Prop :=
  ∀ n, P6622573035676498489.a n = A015249 (n + 2)

end A015249

/-! ## A015249.P16083038439099111857

`A138477(2*(n+1))`
-/

namespace A015249.P16083038439099111857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138477 (2 * (n + 1))

end

end A015249.P16083038439099111857

namespace A015249

/-- `A138477(2*(n+1))` -/
def P16083038439099111857.Spec : Prop :=
  ∀ n, P16083038439099111857.a n = A015249 (n + 2)

end A015249

/-! ## A015249.P8079129481220306728

`A138495(2*(n+1))`
-/

namespace A015249.P8079129481220306728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138495 (2 * (n + 1))

end

end A015249.P8079129481220306728

namespace A015249

/-- `A138495(2*(n+1))` -/
def P8079129481220306728.Spec : Prop :=
  ∀ n, P8079129481220306728.a n = A015249 (n + 2)

end A015249

/-! ## A015249.P5392890108514521230

`record[A084175(abs(1-n))]`
-/

namespace A015249.P5392890108514521230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015249.P5392890108514521230

namespace A015249

/-- `record[A084175(abs(1-n))]` -/
def P5392890108514521230.Spec : Prop :=
  ∀ n, P5392890108514521230.a n = A015249 (n + 2)

end A015249

/-! ## A015249.P4806598893663475090

`record[A084152(abs(2-n))]`
-/

namespace A015249.P4806598893663475090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084152 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015249.P4806598893663475090

namespace A015249

/-- `record[A084152(abs(2-n))]` -/
def P4806598893663475090.Spec : Prop :=
  ∀ n, P4806598893663475090.a n = A015249 (n + 2)

end A015249

/-! ## A015249.P14106149539505998395

`A110953(n)+a(n-1)` with `a(0)=1`
-/

namespace A015249.P14106149539505998395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110953 n + a (n - 1)

end

end A015249.P14106149539505998395

namespace A015249

/-- `A110953(n)+a(n-1)` -/
def P14106149539505998395.Spec : Prop :=
  ∀ n, P14106149539505998395.a n = A015249 (n + 2)

end A015249

/-! ## A015249.P9766115160742097567

`A108924(n)+A002450(n)`
-/

namespace A015249.P9766115160742097567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108924 n + A002450 n

end

end A015249.P9766115160742097567

namespace A015249

/-- `A108924(n)+A002450(n)` -/
def P9766115160742097567.Spec : Prop :=
  ∀ n, P9766115160742097567.a n = A015249 (n + 2)

end A015249

/-! ## A015249.P2946353615980538350

`A000302(n)-A139818(n)`
-/

namespace A015249.P2946353615980538350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A139818 n

end

end A015249.P2946353615980538350

namespace A015249

/-- `A000302(n)-A139818(n)` -/
def P2946353615980538350.Spec : Prop :=
  ∀ n, P2946353615980538350.a n = A015249 (n + 2)

end A015249

/-! ## A015249.P15254735283804348386

`lcm(A077925(n), A283642(n))`
-/

namespace A015249.P15254735283804348386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077925 n) (A283642 n)

end

end A015249.P15254735283804348386

namespace A015249

/-- `lcm(A077925(n), A283642(n))` -/
def P15254735283804348386.Spec : Prop :=
  ∀ n, (P15254735283804348386.a n : ℤ) = A015249 (n + 2)

end A015249

/-! ## A015249.P38307182049807944

`A000302(n)-A001045(n)²`
-/

namespace A015249.P38307182049807944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 n - A001045 n ^ 2

end

end A015249.P38307182049807944

namespace A015249

/-- `A000302(n)-A001045(n)²` -/
def P38307182049807944.Spec : Prop :=
  ∀ n, P38307182049807944.a n = A015249 (n + 2)

end A015249

/-! ## A015249.P6599474474161901926

`A000079(n)²-A139818(n)`
-/

namespace A015249.P6599474474161901926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 - A139818 n

end

end A015249.P6599474474161901926

namespace A015249

/-- `A000079(n)²-A139818(n)` -/
def P6599474474161901926.Spec : Prop :=
  ∀ n, P6599474474161901926.a n = A015249 (n + 2)

end A015249

/-! ## A015249.P18405704842055395576

`A096978(n)+A096977(n+1)`
-/

namespace A015249.P18405704842055395576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096978 n + A096977 (n + 1)

end

end A015249.P18405704842055395576

namespace A015249

/-- `A096978(n)+A096977(n+1)` -/
def P18405704842055395576.Spec : Prop :=
  ∀ n, P18405704842055395576.a n = A015249 (n + 2)

end A015249

/-! ## A015249.P13838190078124574976

`A337348(n+1)+A052992(n)`
-/

namespace A015249.P13838190078124574976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337348 (n + 1) + A052992 n

end

end A015249.P13838190078124574976

namespace A015249

/-- `A337348(n+1)+A052992(n)` -/
def P13838190078124574976.Spec : Prop :=
  ∀ n, P13838190078124574976.a n = A015249 (n + 2)

end A015249

/-!
# A015250: Inverse of 1241st cyclotomic polynomial.

The programs for A015250, there is no canonical definition to state claims against.
-/

/-! ## A015250.P10444973165709339244

`A016240(A239161(n+2)-A020985(2*n+1))`
-/

namespace A015250.P10444973165709339244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016240 (A239161 (n + 2) - A020985 (2 * n + 1)).toNat

end

end A015250.P10444973165709339244

/-! ## A015250.P527019996940713195

`round((n+1)/A267301(n+1))`
-/

namespace A015250.P527019996940713195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A267301 (n + 1) : ℚ))

end

end A015250.P527019996940713195

/-! ## A015250.P15965779026285421238

`C(n, comp[A254766(3*n+4)])`
-/

namespace A015250.P15965779026285421238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254766 (3 * n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015250.P15965779026285421238

/-! ## A015250.P8651209497885602844

`A000035(C(3, A181834(n)))`
-/

namespace A015250.P8651209497885602844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Nat.choose 3 (A181834 n).toNat)

end

end A015250.P8651209497885602844

/-! ## A015250.P3290433467230164690

`A004111(C(3, A181834(n)))`
-/

namespace A015250.P3290433467230164690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (Nat.choose 3 (A181834 n).toNat)

end

end A015250.P3290433467230164690

/-! ## A015250.P18177025383772941913

`A014096(C(A181834(n), 3))`
-/

namespace A015250.P18177025383772941913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014096 (Nat.choose (A181834 n).toNat 3)

end

end A015250.P18177025383772941913

/-! ## A015250.P852416980723309766

`A067659(C(3, A181834(n)))`
-/

namespace A015250.P852416980723309766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (Nat.choose 3 (A181834 n).toNat)

end

end A015250.P852416980723309766

/-! ## A015250.P2720455573781415608

`A136522(A113724(n+1)+1)`
-/

namespace A015250.P2720455573781415608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 (A113724 (n + 1) + 1).toNat

end

end A015250.P2720455573781415608

/-! ## A015250.P12294817077601294934

`C(2, A245921(A308253(n+1)))`
-/

namespace A015250.P12294817077601294934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A245921 (A308253 (n + 1)).toNat).toNat

end

end A015250.P12294817077601294934

/-! ## A015250.P1698225824474812457

`A000007(C(A002265(n+3), 5))`
-/

namespace A015250.P1698225824474812457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Nat.choose (A002265 (n + 3)).toNat 5)

end

end A015250.P1698225824474812457

/-!
# A015251: Gaussian binomial coefficient [ n,2 ] for q = -3.

The programs for A015251, the canonical program `A015251.P9131588482668412686` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015251 has offset 2).

The definition of A015251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015251.P9131588482668412686

`7*a(n-1)+21*a(n-2)-27*a(n-3)` with `a(0)=1, a(1)=7, a(2)=70`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015251

/-- `7*a(n-1)+21*a(n-2)-27*a(n-3)` -/
def P9131588482668412686.Spec : Prop :=
  ∀ n, P9131588482668412686.a n = A015251 (n + 2)

theorem P9131588482668412686.correct : P9131588482668412686.Spec := by
  intro n
  simp only [A015251, Nat.add_sub_cancel]

end A015251

/-! ## A015251.P7316724058196000329

`∑[(-3)^n*∑[(-3)^n]]`
-/

namespace A015251.P7316724058196000329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015251.P7316724058196000329

namespace A015251

/-- `∑[(-3)^n*∑[(-3)^n]]` -/
def P7316724058196000329.Spec : Prop :=
  ∀ n, P7316724058196000329.a n = A015251 (n + 2)

end A015251

/-! ## A015251.P15282600060097180645

`A239577(2*n+1)/4`
-/

namespace A015251.P15282600060097180645
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239577 (2 * n + 1) : ℚ) / 4

end

end A015251.P15282600060097180645

namespace A015251

/-- `A239577(2*n+1)/4` -/
def P15282600060097180645.Spec : Prop :=
  ∀ n, P15282600060097180645.a n = (A015251 (n + 2) : ℚ)

end A015251

/-! ## A015251.P15520263446919769984

`A053535(n)+a(n-1)` with `a(0)=1`
-/

namespace A015251.P15520263446919769984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053535 n + a (n - 1)

end

end A015251.P15520263446919769984

namespace A015251

/-- `A053535(n)+a(n-1)` -/
def P15520263446919769984.Spec : Prop :=
  ∀ n, P15520263446919769984.a n = A015251 (n + 2)

end A015251

/-! ## A015251.P4395857573534019940

`∑[A318609(2*(n+1))]/4`
-/

namespace A015251.P4395857573534019940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318609 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 4

end

end A015251.P4395857573534019940

namespace A015251

/-- `∑[A318609(2*(n+1))]/4` -/
def P4395857573534019940.Spec : Prop :=
  ∀ n, P4395857573534019940.a n = (A015251 (n + 2) : ℚ)

end A015251

/-! ## A015251.P867577958470537950

`C(ceil(A007051(n+2)/2), 2)/3`
-/

namespace A015251.P867577958470537950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose ⌈(A007051 (n + 2) : ℚ) / 2⌉.toNat 2 : ℚ) / 3

end

end A015251.P867577958470537950

namespace A015251

/-- `C(ceil(A007051(n+2)/2), 2)/3` -/
def P867577958470537950.Spec : Prop :=
  ∀ n, P867577958470537950.a n = (A015251 (n + 2) : ℚ)

end A015251

/-!
# A015252: Inverse of 1243rd cyclotomic polynomial.

The programs for A015252, there is no canonical definition to state claims against.
-/

/-! ## A015252.P2037088979260834144

`A015660(A160542(n+1)+A117648(n))`
-/

namespace A015252.P2037088979260834144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015660 (A160542 (n + 1) + A117648 n).toNat

end

end A015252.P2037088979260834144

/-! ## A015252.P17701133874364579417

`floor((n+1)/A371421(n+1))`
-/

namespace A015252.P17701133874364579417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A371421 (n + 1) : ℚ)⌋

end

end A015252.P17701133874364579417

/-! ## A015252.P2752860754590554861

`C(n, comp[A321804(2*n+1)])`
-/

namespace A015252.P2752860754590554861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321804 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015252.P2752860754590554861

/-! ## A015252.P15332241137633669182

`C(comp[A000566(3*n)], A371421(n+1))`
-/

namespace A015252.P15332241137633669182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (3 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) (A371421 (n + 1)).toNat

end

end A015252.P15332241137633669182

/-! ## A015252.P5937706102883505442

`C(A000040(n+1), A000040(A371421(n+1)))`
-/

namespace A015252.P5937706102883505442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 1)).toNat (A000040 (A371421 (n + 1)).toNat).toNat

end

end A015252.P5937706102883505442

/-! ## A015252.P8557537027093119709

`C(A000176(n+1), A000176(A371421(n+1)))`
-/

namespace A015252.P8557537027093119709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000176 (n + 1)).toNat (A000176 (A371421 (n + 1)).toNat).toNat

end

end A015252.P8557537027093119709

/-! ## A015252.P2345175562867674114

`C(A003339(n+1), A003339(A371421(n+1)))`
-/

namespace A015252.P2345175562867674114
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003339 (n + 1)).toNat (A003339 (A371421 (n + 1)).toNat).toNat

end

end A015252.P2345175562867674114

/-! ## A015252.P15791522041915906485

`C(A010064(n+1), A010064(A371421(n+1)))`
-/

namespace A015252.P15791522041915906485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A010064 (n + 1)).toNat (A010064 (A371421 (n + 1)).toNat).toNat

end

end A015252.P15791522041915906485

/-! ## A015252.P3466729106019857459

`C(A025487(n+1), A025487(A371421(n+1)))`
-/

namespace A015252.P3466729106019857459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025487 (n + 1)).toNat (A025487 (A371421 (n + 1)).toNat).toNat

end

end A015252.P3466729106019857459

/-! ## A015252.P3764997451605479814

`C(A026424(n+1), A026424(A371421(n+1)))`
-/

namespace A015252.P3764997451605479814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A026424 (n + 1)).toNat (A026424 (A371421 (n + 1)).toNat).toNat

end

end A015252.P3764997451605479814

/-! ## A015252.P11927319157804930118

`C(A080587(n+1), A080587(A371421(n+1)))`
-/

namespace A015252.P11927319157804930118
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080587 (n + 1)).toNat (A080587 (A371421 (n + 1)).toNat).toNat

end

end A015252.P11927319157804930118

/-! ## A015252.P14772084214238855459

`C(A243957(n+1), A243957(A371421(n+1)))`
-/

namespace A015252.P14772084214238855459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A243957 (n + 1)).toNat (A243957 (A371421 (n + 1)).toNat).toNat

end

end A015252.P14772084214238855459

/-! ## A015252.P1674504451793167254

`C(A328781(A371421(n+1)), A161390(n+1))`
-/

namespace A015252.P1674504451793167254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A328781 (A371421 (n + 1)).toNat).toNat (A161390 (n + 1)).toNat

end

end A015252.P1674504451793167254

/-! ## A015252.P16548576590662093445

`C(A007953(A026810(n)), A026810(n))`
-/

namespace A015252.P16548576590662093445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007953 (A026810 n).toNat).toNat (A026810 n).toNat

end

end A015252.P16548576590662093445

/-! ## A015252.P1549273417772993470

`C(A100063(A326542(n)), A173924(n))`
-/

namespace A015252.P1549273417772993470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A100063 (A326542 n).toNat).toNat (A173924 n).toNat

end

end A015252.P1549273417772993470

/-! ## A015252.P4440691016058674092

`∏{e}[A332286(n+1), A332286(#)]`
-/

namespace A015252.P4440691016058674092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A332286 (Nat.factorization (f1 n).natAbs p)

end

end A015252.P4440691016058674092

/-!
# A015253: Gaussian binomial coefficient [ n,2 ] for q = -4.

The programs for A015253, there is no canonical definition to state claims against.
-/

/-! ## A015253.P272602838615323497

`∑[(-4)^n*∑[(-4)^n]]`
-/

namespace A015253.P272602838615323497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-4) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015253.P272602838615323497

/-! ## A015253.P3110229342004532426

`A015112(eq[2, A002262(n)])`
-/

namespace A015253.P3110229342004532426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015253.P3110229342004532426

/-! ## A015253.P11217801380293130994

`A015112(A167614(n+1)-1)`
-/

namespace A015253.P11217801380293130994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (A167614 (n + 1) - 1).toNat

end

end A015253.P11217801380293130994

/-! ## A015253.P11418876892332118492

`A015112(eq[1, A002260(n+1)-2])`
-/

namespace A015253.P11418876892332118492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015253.P11418876892332118492

/-! ## A015253.P10723189896157530296

`A015112(∑[n+3])`
-/

namespace A015253.P10723189896157530296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A015253.P10723189896157530296

/-!
# A015254: Inverse of 1245th cyclotomic polynomial.

The programs for A015254, there is no canonical definition to state claims against.
-/

/-! ## A015254.P4782104710569440201

`A014560(A000607(n))*A014564(n)`
-/

namespace A015254.P4782104710569440201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014560 (A000607 n).toNat * A014564 n

end

end A015254.P4782104710569440201

/-!
# A015255: Gaussian binomial coefficient [ n,2 ] for q = -5.

The programs for A015255, the canonical program `A015255.P14083325267661454743` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015255 has offset 2).

The definition of A015255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015255.P14083325267661454743

`21*a(n-1)+105*a(n-2)-125*a(n-3)` with `a(0)=1, a(1)=21, a(2)=546`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015255

/-- `21*a(n-1)+105*a(n-2)-125*a(n-3)` -/
def P14083325267661454743.Spec : Prop :=
  ∀ n, P14083325267661454743.a n = A015255 (n + 2)

theorem P14083325267661454743.correct : P14083325267661454743.Spec := by
  intro n
  simp only [A015255, Nat.add_sub_cancel]

end A015255

/-! ## A015255.P2914958069217751581

`∑[(-5)^n*∑[(-5)^n]]`
-/

namespace A015255.P2914958069217751581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-5) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-5) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015255.P2914958069217751581

namespace A015255

/-- `∑[(-5)^n*∑[(-5)^n]]` -/
def P2914958069217751581.Spec : Prop :=
  ∀ n, P2914958069217751581.a n = A015255 (n + 2)

end A015255

/-! ## A015255.P1247623156407667180

`A015531(n+1)/4*A015531(n+2)`
-/

namespace A015255.P1247623156407667180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015531 (n + 1) : ℚ) / 4 * (A015531 (n + 2) : ℚ)

end

end A015255.P1247623156407667180

namespace A015255

/-- `A015531(n+1)/4*A015531(n+2)` -/
def P1247623156407667180.Spec : Prop :=
  ∀ n, P1247623156407667180.a n = (A015255 (n + 2) : ℚ)

end A015255

/-! ## A015255.P3417765656046599456

`A015113(∑[n+2]+3)`
-/

namespace A015255.P3417765656046599456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015113 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A015255.P3417765656046599456

namespace A015255

/-- `A015113(∑[n+2]+3)` -/
def P3417765656046599456.Spec : Prop :=
  ∀ n, P3417765656046599456.a n = A015255 (n + 2)

end A015255

/-! ## A015255.P3318867777786559379

`abs(A015113(∑[n+3]))`
-/

namespace A015255.P3318867777786559379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A015113 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A015255.P3318867777786559379

namespace A015255

/-- `abs(A015113(∑[n+3]))` -/
def P3318867777786559379.Spec : Prop :=
  ∀ n, P3318867777786559379.a n = A015255 (n + 2)

end A015255

/-!
# A015256: Inverse of 1247th cyclotomic polynomial.

The programs for A015256, there is no canonical definition to state claims against.
-/

/-! ## A015256.P4204687003671450249

`A014152(A175857(n+1)-n)`
-/

namespace A015256.P4204687003671450249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014152 (A175857 (n + 1) - (n : ℤ)).toNat

end

end A015256.P4204687003671450249

/-! ## A015256.P4658610391126386677

`A015970(A179439(n+1)-A035232(n+1))`
-/

namespace A015256.P4658610391126386677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (A179439 (n + 1) - A035232 (n + 1)).toNat

end

end A015256.P4658610391126386677

/-! ## A015256.P7878975980196512768

`A015970(A351290(n+1)+5)`
-/

namespace A015256.P7878975980196512768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (A351290 (n + 1) + 5).toNat

end

end A015256.P7878975980196512768

/-! ## A015256.P14260586941201363910

`A015970(A325368(n+1))`
-/

namespace A015256.P14260586941201363910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (A325368 (n + 1)).toNat

end

end A015256.P14260586941201363910

/-! ## A015256.P12835827090760675639

`A015970(A364347(n+1))`
-/

namespace A015256.P12835827090760675639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (A364347 (n + 1)).toNat

end

end A015256.P12835827090760675639

/-! ## A015256.P9186310220000676804

`A015970(A333228(n+1)-1)`
-/

namespace A015256.P9186310220000676804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (A333228 (n + 1) - 1).toNat

end

end A015256.P9186310220000676804

/-!
# A015257: Gaussian binomial coefficient [ n,2 ] for q = -6.

The programs for A015257, there is no canonical definition to state claims against.
-/

/-! ## A015257.P1556558015454833158

`∑[lcm(6^n, A014987(n+1))]`
-/

namespace A015257.P1556558015454833158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (6 ^ n : ℤ) (A014987 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015257.P1556558015454833158

/-! ## A015257.P17280137462999582867

`∑[A015540(n+1)*A000400(n)]`
-/

namespace A015257.P17280137462999582867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015540 (n + 1) * A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015257.P17280137462999582867

/-! ## A015257.P5131879463461117026

`∑[(A000400(n)-A015540(n))*A000400(n)]`
-/

namespace A015257.P5131879463461117026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000400 n - A015540 n) * A000400 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015257.P5131879463461117026

/-! ## A015257.P11370462938824762864

`∑[A092165(n+1)/2*A000400(n)]`
-/

namespace A015257.P11370462938824762864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092165 (n + 1) : ℚ) / 2 * (A000400 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015257.P11370462938824762864

/-! ## A015257.P1640570535749551315

`A015116(∑[n+2]+3)`
-/

namespace A015257.P1640570535749551315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015116 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A015257.P1640570535749551315

/-!
# A015258: Gaussian binomial coefficient [ n,2 ] for q = -7.

The programs for A015258, there is no canonical definition to state claims against.
-/

/-! ## A015258.P6486345542601277711

`∑[abs(∑[(-7)^n])*7^n]`
-/

namespace A015258.P6486345542601277711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-7) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j| * (7 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015258.P6486345542601277711

/-! ## A015258.P14795764180505210017

`A015117(∑[n+2]+3)`
-/

namespace A015258.P14795764180505210017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A015258.P14795764180505210017

/-! ## A015258.P10707768737707888713

`record[gcd(A015117(n+2), A090181(n))]`
-/

namespace A015258.P10707768737707888713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015117 (n + 2)) (A090181 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015258.P10707768737707888713

/-! ## A015258.P10945378076716095458

`record[A015117(A152948(A344180(n)))]`
-/

namespace A015258.P10945378076716095458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (A152948 (A344180 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015258.P10945378076716095458

/-! ## A015258.P5777707576633655243

`abs(A015117(A141214(n)))`
-/

namespace A015258.P5777707576633655243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A015117 (A141214 n).toNat|

end

end A015258.P5777707576633655243

/-!
# A015259: Gaussian binomial coefficient [ n,2 ] for q = -8.

The programs for A015259, there is no canonical definition to state claims against.
-/

/-! ## A015259.P2242987352387228921

`∑[(-8)^n*∑[(-8)^n]]`
-/

namespace A015259.P2242987352387228921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-8) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-8) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015259.P2242987352387228921

/-! ## A015259.P18185132292015403949

`A015118(∑[n+2]+3)`
-/

namespace A015259.P18185132292015403949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015118 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A015259.P18185132292015403949

/-! ## A015259.P4204436360151223364

`abs(A015118(∑[n+3]))`
-/

namespace A015259.P4204436360151223364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A015118 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A015259.P4204436360151223364

/-! ## A015259.P16353426601980453016

`and(1, A016285(n))*A015118(A141214(n))`
-/

namespace A015259.P16353426601980453016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A016285 n) * A015118 (A141214 n).toNat

end

end A015259.P16353426601980453016

/-! ## A015259.P12633186853207637685

`∏{e}[A000040(n+1), #*A015118(A141214(n))]`
-/

namespace A015259.P12633186853207637685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A015118 (A141214 n).toNat

end

end A015259.P12633186853207637685

/-!
# A015260: Gaussian binomial coefficient [ n,2 ] for q = -9.

The programs for A015260, there is no canonical definition to state claims against.
-/

/-! ## A015260.P7902764733866026405

`∑[(-9)^n*∑[(-9)^n]]`
-/

namespace A015260.P7902764733866026405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-9) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-9) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015260.P7902764733866026405

/-! ## A015260.P1637823900775012812

`A015121(∑[n+2]+3)`
-/

namespace A015260.P1637823900775012812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015121 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A015260.P1637823900775012812

/-! ## A015260.P7050783754987853087

`abs(A015121(∑[n+3]))`
-/

namespace A015260.P7050783754987853087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A015121 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A015260.P7050783754987853087

/-! ## A015260.P13800279567394200750

`record[A015121(n)/A015124(n+2)]`
-/

namespace A015260.P13800279567394200750
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015121 n : ℚ) / (A015124 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015260.P13800279567394200750

/-! ## A015260.P4448965426263906309

`A015121(A340266(n+1))^A001221(A000079(n))`
-/

namespace A015260.P4448965426263906309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015121 (A340266 (n + 1)).toNat : ℚ) ^ (A001221 (A000079 n).toNat : ℤ)

end

end A015260.P4448965426263906309

/-!
# A015261: Gaussian binomial coefficient [ n,2 ] for q = -10.

The programs for A015261, there is no canonical definition to state claims against.
-/

/-! ## A015261.P17213956160206605767

`∑[(-10)^n*∑[(-10)^n]]`
-/

namespace A015261.P17213956160206605767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-10) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-10) ^ n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015261.P17213956160206605767

/-! ## A015261.P14135473154354192545

`A015123(∑[n+2]+3)`
-/

namespace A015261.P14135473154354192545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015123 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A015261.P14135473154354192545

/-! ## A015261.P9091765464183522452

`record[A015123(n+2)/A015123(n)]`
-/

namespace A015261.P9091765464183522452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015123 (n + 2) : ℚ) / (A015123 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015261.P9091765464183522452

/-! ## A015261.P18027481923063518690

`record[gcd(A015123(n+2), A090181(n))]`
-/

namespace A015261.P18027481923063518690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015123 (n + 2)) (A090181 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015261.P18027481923063518690

/-! ## A015261.P2536099058904574098

`abs(A015123(∑[n+3]))`
-/

namespace A015261.P2536099058904574098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A015123 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A015261.P2536099058904574098

/-!
# A015262: Gaussian binomial coefficient [ n,2 ] for q = -11.

The programs for A015262, there is no canonical definition to state claims against.
-/

/-! ## A015262.P4270741242538870794

`A015124(∑[n+2]+3)`
-/

namespace A015262.P4270741242538870794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015124 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A015262.P4270741242538870794

/-! ## A015262.P11331513000738435514

`record[ratio[A015124(A028242(n))]]`
-/

namespace A015262.P11331513000738435514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015124 (A028242 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015262.P11331513000738435514

/-! ## A015262.P5996618947863440778

`record[A015124(n+2)/A015117(n)]`
-/

namespace A015262.P5996618947863440778
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015124 (n + 2) : ℚ) / (A015117 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015262.P5996618947863440778

/-! ## A015262.P11808219756050357716

`record[A015124(n+2)/A015118(n)]`
-/

namespace A015262.P11808219756050357716
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015124 (n + 2) : ℚ) / (A015118 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015262.P11808219756050357716

/-! ## A015262.P12209983705662604746

`record[A015124(n+2)/A015121(n)]`
-/

namespace A015262.P12209983705662604746
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015124 (n + 2) : ℚ) / (A015121 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015262.P12209983705662604746

/-!
# A015263: Inverse of 1254th cyclotomic polynomial.

The programs for A015263, there is no canonical definition to state claims against.
-/

/-! ## A015263.P18041255939300309471

`A014636(n)*A033999(n)`
-/

namespace A015263.P18041255939300309471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014636 n * A033999 n

end

end A015263.P18041255939300309471

/-! ## A015263.P14658627214158246984

`A000494(A351374(n+1))`
-/

namespace A015263.P14658627214158246984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000494 (A351374 (n + 1)).toNat

end

end A015263.P14658627214158246984

/-!
# A015264: Gaussian binomial coefficient [ n,2 ] for q = -12.

The programs for A015264, there is no canonical definition to state claims against.
-/

/-! ## A015264.P6049634389703265121

`A015125(∑[n+2]+3)`
-/

namespace A015264.P6049634389703265121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015125 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A015264.P6049634389703265121

/-! ## A015264.P5215344210790898446

`gcd(A015125(A340266(n+1)), A151933(n))`
-/

namespace A015264.P5215344210790898446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015125 (A340266 (n + 1)).toNat) (A151933 n)

end

end A015264.P5215344210790898446

/-! ## A015264.P10241162933877561639

`A015125(A340266(n+1))^A057428(n)²`
-/

namespace A015264.P10241162933877561639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015125 (A340266 (n + 1)).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A015264.P10241162933877561639

/-! ## A015264.P5933479325356522760

`A015125(A340266(n+1))^A052409(n²+1)`
-/

namespace A015264.P5933479325356522760
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015125 (A340266 (n + 1)).toNat : ℚ) ^ (A052409 (n ^ 2 + 1) : ℤ)

end

end A015264.P5933479325356522760

/-! ## A015264.P12831928576440630931

`A015125(A340266(n+1))^∑{e}[A020639(n+1), #]`
-/

namespace A015264.P12831928576440630931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015125 (A340266 (n + 1)).toNat ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A015264.P12831928576440630931

/-!
# A015265: Gaussian binomial coefficient [ n,2 ] for q = -13.

The programs for A015265, there is no canonical definition to state claims against.
-/

/-! ## A015265.P8813660121015253197

`∑[lcm(13^n, A015000(n+1))]`
-/

namespace A015265.P8813660121015253197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (13 ^ n : ℤ) (A015000 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015265.P8813660121015253197

/-! ## A015265.P3726449270825685164

`A015129(∑[n+2]+3)`
-/

namespace A015265.P3726449270825685164
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015129 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A015265.P3726449270825685164

/-! ## A015265.P6759660601413424776

`record[A015129(n+2)/A015129(n)]`
-/

namespace A015265.P6759660601413424776
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A015129 (n + 2) : ℚ) / (A015129 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A015265.P6759660601413424776

/-! ## A015265.P18124395630038196508

`gcd(A015129(A340266(n+1)), A151933(n))`
-/

namespace A015265.P18124395630038196508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015129 (A340266 (n + 1)).toNat) (A151933 n)

end

end A015265.P18124395630038196508

/-! ## A015265.P11476135898792129550

`abs(A015129(∑[n+3]))`
-/

namespace A015265.P11476135898792129550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A015129 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A015265.P11476135898792129550

/-!
# A015266: Gaussian binomial coefficient [ n,3 ] for q = -2.

The programs for A015266, the canonical program `A015266.P16505525845745346999` is in `Seq.B000.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A015266 has offset 3).

The definition of A015266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A015266.P16505525845745346999

`1/81*(24*4^n-6*(-2)^n+64*(-8)^n-1)`

The canonical program, it is in `Seq.B000.C002`.
-/

namespace A015266

/-- `1/81*(24*4^n-6*(-2)^n+64*(-8)^n-1)` -/
def P16505525845745346999.Spec : Prop :=
  ∀ n, P16505525845745346999.a n = (A015266 (n + 3) : ℚ)

end A015266

/-! ## A015266.P16476568369054578510

`∑[A077925(n)*A246036(n)]`
-/

namespace A015266.P16476568369054578510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n * A246036 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015266.P16476568369054578510

namespace A015266

/-- `∑[A077925(n)*A246036(n)]` -/
def P16476568369054578510.Spec : Prop :=
  ∀ n, P16476568369054578510.a n = A015266 (n + 3)

end A015266

/-! ## A015266.P15249335432592771556

`∑[A084175(n)+A014990(n+1)]`
-/

namespace A015266.P15249335432592771556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084175 n + A014990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015266.P15249335432592771556

namespace A015266

/-- `∑[A084175(n)+A014990(n+1)]` -/
def P15249335432592771556.Spec : Prop :=
  ∀ n, P15249335432592771556.a n = A015266 (n + 3)

end A015266

/-! ## A015266.P1546525189809291621

`∑[A015249(n+2)*A122803(n)]`
-/

namespace A015266.P1546525189809291621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015249 (n + 2) * A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015266.P1546525189809291621

namespace A015266

/-- `∑[A015249(n+2)*A122803(n)]` -/
def P1546525189809291621.Spec : Prop :=
  ∀ n, P1546525189809291621.a n = A015266 (n + 3)

end A015266

/-! ## A015266.P1102783729760681271

`A334908(n)/(A140966(n)-A140966(n+1))`
-/

namespace A015266.P1102783729760681271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334908 n : ℚ) / (A140966 n - A140966 (n + 1) : ℚ)

end

end A015266.P1102783729760681271

namespace A015266

/-- `A334908(n)/(A140966(n)-A140966(n+1))` -/
def P1102783729760681271.Spec : Prop :=
  ∀ n, P1102783729760681271.a n = (A015266 (n + 3) : ℚ)

end A015266

/-!
# A015267: Inverse of 1258th cyclotomic polynomial.

The programs for A015267, there is no canonical definition to state claims against.
-/

/-! ## A015267.P8878516327698529180

`A014638(n)*A033999(n)`
-/

namespace A015267.P8878516327698529180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014638 n * A033999 n

end

end A015267.P8878516327698529180

/-! ## A015267.P13166612991151479735

`A016083(A370132(n+1))`
-/

namespace A015267.P13166612991151479735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016083 (A370132 (n + 1)).toNat

end

end A015267.P13166612991151479735

/-! ## A015267.P1296810388303888865

`A015403(A175427(n+1))`
-/

namespace A015267.P1296810388303888865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015403 (A175427 (n + 1)).toNat

end

end A015267.P1296810388303888865

/-! ## A015267.P3632029519382701119

`A015403(A024653(n))`
-/

namespace A015267.P3632029519382701119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015403 (A024653 n).toNat

end

end A015267.P3632029519382701119

/-! ## A015267.P15462364076724217406

`A016015(A135383(n+1))`
-/

namespace A015267.P15462364076724217406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016015 (A135383 (n + 1)).toNat

end

end A015267.P15462364076724217406

/-!
# A015268: Gaussian binomial coefficient [ n,3 ] for q = -3.

The programs for A015268, there is no canonical definition to state claims against.
-/

/-! ## A015268.P14336248039014851938

`A015110(A167614(n+2))`
-/

namespace A015268.P14336248039014851938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (A167614 (n + 2)).toNat

end

end A015268.P14336248039014851938

/-! ## A015268.P12486807390737538692

`A015110(A052905(n)+8)`
-/

namespace A015268.P12486807390737538692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (A052905 n + 8).toNat

end

end A015268.P12486807390737538692

/-! ## A015268.P17098566436258781426

`A015110(A055999(n)+9)`
-/

namespace A015268.P17098566436258781426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (A055999 n + 9).toNat

end

end A015268.P17098566436258781426

/-! ## A015268.P9679832885678620042

`A015110(eq[8, A059268(n)])`
-/

namespace A015268.P9679832885678620042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015268.P9679832885678620042

/-! ## A015268.P347362605478866691

`A015110(eq[4, A002260(n+1)])`
-/

namespace A015268.P347362605478866691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015268.P347362605478866691

/-!
# A015269: Inverse of 1260th cyclotomic polynomial.

The programs for A015269, there is no canonical definition to state claims against.
-/

/-! ## A015269.P15793098582396754852

`A014849(round(2*n/3))`
-/

namespace A015269.P15793098582396754852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014849 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A015269.P15793098582396754852

/-! ## A015269.P11299009847862492158

`A014639(A001281(n))`
-/

namespace A015269.P11299009847862492158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014639 (A001281 n).toNat

end

end A015269.P11299009847862492158

/-! ## A015269.P14217195066209457260

`A014639(A006370(n))`
-/

namespace A015269.P14217195066209457260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014639 (A006370 n).toNat

end

end A015269.P14217195066209457260

/-! ## A015269.P553883480744456745

`A014639(A014682(n))`
-/

namespace A015269.P553883480744456745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014639 (A014682 n).toNat

end

end A015269.P553883480744456745

/-! ## A015269.P6838276299907190457

`A015059(A090168(n))`
-/

namespace A015269.P6838276299907190457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015059 (A090168 n).toNat

end

end A015269.P6838276299907190457

/-! ## A015269.P6367845425158079731

`A015689(A004773(n))`
-/

namespace A015269.P6367845425158079731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015689 (A004773 n).toNat

end

end A015269.P6367845425158079731

/-! ## A015269.P16357873527984182574

`A015689(A131452(n))`
-/

namespace A015269.P16357873527984182574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015689 (A131452 n).toNat

end

end A015269.P16357873527984182574

/-! ## A015269.P3270713653810042902

`A015899(A006368(n))`
-/

namespace A015269.P3270713653810042902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015899 (A006368 n).toNat

end

end A015269.P3270713653810042902

/-! ## A015269.P10716872768650590449

`A015899(A007494(n))`
-/

namespace A015269.P10716872768650590449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015899 (A007494 n).toNat

end

end A015269.P10716872768650590449

/-! ## A015269.P14729452848776631529

`A015899(A026430(n))`
-/

namespace A015269.P14729452848776631529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015899 (A026430 n).toNat

end

end A015269.P14729452848776631529

/-! ## A015269.P13022411340131462138

`A015899(A032766(n))`
-/

namespace A015269.P13022411340131462138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015899 (A032766 n).toNat

end

end A015269.P13022411340131462138

/-! ## A015269.P3148337032439317280

`A015899(A074306(n))`
-/

namespace A015269.P3148337032439317280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015899 (A074306 n).toNat

end

end A015269.P3148337032439317280

/-! ## A015269.P5615283392262167403

`A014639(A085062(n))`
-/

namespace A015269.P5615283392262167403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014639 (A085062 n).toNat

end

end A015269.P5615283392262167403

/-! ## A015269.P7690867995506679884

`A015689(A160108(n))`
-/

namespace A015269.P7690867995506679884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015689 (A160108 n).toNat

end

end A015269.P7690867995506679884

/-!
# A015270: Inverse of 1261st cyclotomic polynomial.

The programs for A015270, there is no canonical definition to state claims against.
-/

/-! ## A015270.P9676925608867311814

`A015322(lt[A333782(n+2), A171275(2*(n+1))])`
-/

namespace A015270.P9676925608867311814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333782 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171275 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015322 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015270.P9676925608867311814

/-! ## A015270.P6846138671837065787

`C(n, comp[A325797(2*n+5)])`
-/

namespace A015270.P6846138671837065787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325797 (2 * n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A015270.P6846138671837065787

/-! ## A015270.P8935498267200152913

`C(2, A337482(A101402(n)))`
-/

namespace A015270.P8935498267200152913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A337482 (A101402 n).toNat).toNat

end

end A015270.P8935498267200152913

/-! ## A015270.P3461550858497673025

`A202022(A102363(n)-n)`
-/

namespace A015270.P3461550858497673025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 (A102363 n - (n : ℤ)).toNat

end

end A015270.P3461550858497673025

/-! ## A015270.P14248988066807558638

`∏{p}[A025151(n), A000007(#)]`
-/

namespace A015270.P14248988066807558638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000007 p

end

end A015270.P14248988066807558638

/-! ## A015270.P15462675577424710255

`∏{p}[A124751(n), A007920(#)]`
-/

namespace A015270.P15462675577424710255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124751 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A007920 p

end

end A015270.P15462675577424710255

/-! ## A015270.P6460860837228243789

`∏{p}[A025151(n), A240351(#)]`
-/

namespace A015270.P6460860837228243789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025151 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A240351 p

end

end A015270.P6460860837228243789

/-! ## A015270.P2487902714350830674

`A127243(∑[char[A219063(n+1)]]²)`
-/

namespace A015270.P2487902714350830674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127243 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A015270.P2487902714350830674

/-! ## A015270.P14251880917970930429

`C(A002322(A221916(n)), A221912(n))`
-/

namespace A015270.P14251880917970930429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002322 (A221916 n).toNat).toNat (A221912 n).toNat

end

end A015270.P14251880917970930429

/-! ## A015270.P4648205938596755676

`C(A098158(A130403(n)), A319922(n))`
-/

namespace A015270.P4648205938596755676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A098158 (A130403 n).toNat).toNat (A319922 n).toNat

end

end A015270.P4648205938596755676

/-!
# A015271: Gaussian binomial coefficient [ n,3 ] for q = -4.

The programs for A015271, there is no canonical definition to state claims against.
-/

/-! ## A015271.P13328727591948436742

`A015112(A167614(n+2))`
-/

namespace A015271.P13328727591948436742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (A167614 (n + 2)).toNat

end

end A015271.P13328727591948436742

/-! ## A015271.P8656279697806265651

`A015112(A052905(n)+8)`
-/

namespace A015271.P8656279697806265651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (A052905 n + 8).toNat

end

end A015271.P8656279697806265651

/-! ## A015271.P6416245655607952215

`A015112(A055999(n)+9)`
-/

namespace A015271.P6416245655607952215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (A055999 n + 9).toNat

end

end A015271.P6416245655607952215

/-! ## A015271.P174292379223526295

`A015112(eq[3, A002262(n)])`
-/

namespace A015271.P174292379223526295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015271.P174292379223526295

/-! ## A015271.P10583287399082613367

`A015112(eq[4, A002260(n+1)])`
-/

namespace A015271.P10583287399082613367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015271.P10583287399082613367

/-!
# A015272: Gaussian binomial coefficient [ n,3 ] for q = -5.

The programs for A015272, there is no canonical definition to state claims against.
-/

/-! ## A015272.P3140423106748364218

`A015113(∑[n+3]+6)`
-/

namespace A015272.P3140423106748364218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015113 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A015272.P3140423106748364218

/-! ## A015272.P3519837565520418610

`A015113(A167614(n+2))%A015092(n+2)`
-/

namespace A015272.P3519837565520418610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015113 (A167614 (n + 2)).toNat) (A015092 (n + 2))

end

end A015272.P3519837565520418610

/-!
# A015273: Gaussian binomial coefficient [ n,3 ] for q=-6.

The programs for A015273, there is no canonical definition to state claims against.
-/

/-! ## A015273.P9186267331908383851

`A015116(∑[n+3]+6)`
-/

namespace A015273.P9186267331908383851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015116 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A015273.P9186267331908383851

/-! ## A015273.P3773047305457815389

`or(1, A015116(A167614(n+2)))`
-/

namespace A015273.P3773047305457815389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A015116 (A167614 (n + 2)).toNat)

end

end A015273.P3773047305457815389

/-! ## A015273.P7961078584805845335

`A015116(A167614(n+2))*A254730(n)`
-/

namespace A015273.P7961078584805845335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015116 (A167614 (n + 2)).toNat * A254730 n

end

end A015273.P7961078584805845335

/-! ## A015273.P3864979292559884819

`A015116(A167614(n+2))+A000007(n+4)`
-/

namespace A015273.P3864979292559884819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015116 (A167614 (n + 2)).toNat + A000007 (n + 4)

end

end A015273.P3864979292559884819

/-!
# A015274: Inverse of 1265th cyclotomic polynomial.

The programs for A015274, there is no canonical definition to state claims against.
-/

/-! ## A015274.P15308454383388148636

`A016339(A007091(n+4)+1)`
-/

namespace A015274.P15308454383388148636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016339 (A007091 (n + 4) + 1).toNat

end

end A015274.P15308454383388148636

/-! ## A015274.P13250735116962004263

`A132681(A326788(2*n+5))+A016044(n)`
-/

namespace A015274.P13250735116962004263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132681 (A326788 (2 * n + 5)).toNat + A016044 n

end

end A015274.P13250735116962004263

/-! ## A015274.P17357337455290671832

`A132710(A227060(n+2))+A016044(n)`
-/

namespace A015274.P17357337455290671832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132710 (A227060 (n + 2)).toNat + A016044 n

end

end A015274.P17357337455290671832

/-! ## A015274.P4250059187383455810

`floor(n/5)-floor((n-1)/5)-A369001(A381537(3*n+4))`
-/

namespace A015274.P4250059187383455810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 5⌋ - ⌊((n : ℤ) - 1 : ℚ) / 5⌋ - A369001 (A381537 (3 * n + 4)).toNat

end

end A015274.P4250059187383455810

/-! ## A015274.P8374160668788459711

`A016339(A024660(n))`
-/

namespace A015274.P8374160668788459711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016339 (A024660 n).toNat

end

end A015274.P8374160668788459711

/-!
# A015275: Gaussian binomial coefficient [ n,3 ] for q = -7.

The programs for A015275, there is no canonical definition to state claims against.
-/

/-! ## A015275.P9891556901012828734

`A015117(A167614(n+2))`
-/

namespace A015275.P9891556901012828734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (A167614 (n + 2)).toNat

end

end A015275.P9891556901012828734

/-! ## A015275.P7888809935743441465

`A015117(A141214(n)+6)`
-/

namespace A015275.P7888809935743441465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (A141214 n + 6).toNat

end

end A015275.P7888809935743441465

/-! ## A015275.P16480612435864057196

`A015117(A055999(n)+9)`
-/

namespace A015275.P16480612435864057196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (A055999 n + 9).toNat

end

end A015275.P16480612435864057196

/-! ## A015275.P16163027993195158714

`A015117(A166136(n+2)-3)`
-/

namespace A015275.P16163027993195158714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (A166136 (n + 2) - 3).toNat

end

end A015275.P16163027993195158714

/-! ## A015275.P15899711927174873298

`A015117(A034856(n+1)+n+8)`
-/

namespace A015275.P15899711927174873298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (A034856 (n + 1) + (n + 8 : ℤ)).toNat

end

end A015275.P15899711927174873298

/-!
# A015276: Gaussian binomial coefficient [ n,3 ] for q = -8.

The programs for A015276, there is no canonical definition to state claims against.
-/

/-! ## A015276.P3250030484050801560

`A015118(∑[n+3]+6)`
-/

namespace A015276.P3250030484050801560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015118 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A015276.P3250030484050801560

/-!
# A015277: Gaussian binomial coefficient [ n,3 ] for q = -9.

The programs for A015277, there is no canonical definition to state claims against.
-/

/-! ## A015277.P9375509812229010715

`A015121(∑[n+3]+6)`
-/

namespace A015277.P9375509812229010715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015121 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A015277.P9375509812229010715

/-!
# A015278: Gaussian binomial coefficient [ n,3 ] for q = -10.

The programs for A015278, there is no canonical definition to state claims against.
-/

/-! ## A015278.P15894698761940960645

`A015123(∑[n+3]+6)`
-/

namespace A015278.P15894698761940960645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015123 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A015278.P15894698761940960645

/-!
# A015279: Gaussian binomial coefficient [ n,3 ] for q = -11.

The programs for A015279, there is no canonical definition to state claims against.
-/

/-! ## A015279.P4418007160434799457

`A015124(A167614(n+2))`
-/

namespace A015279.P4418007160434799457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015124 (A167614 (n + 2)).toNat

end

end A015279.P4418007160434799457

/-! ## A015279.P16524839072492413675

`A015124(A052905(n)+8)`
-/

namespace A015279.P16524839072492413675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015124 (A052905 n + 8).toNat

end

end A015279.P16524839072492413675

/-! ## A015279.P7261210964954675927

`A015124(A340266(n+2)+1)`
-/

namespace A015279.P7261210964954675927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015124 (A340266 (n + 2) + 1).toNat

end

end A015279.P7261210964954675927

/-! ## A015279.P6540743919937712083

`A015124(eq[4, A002260(n+1)])`
-/

namespace A015279.P6540743919937712083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015124 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015279.P6540743919937712083

/-! ## A015279.P2893394420954479924

`A015124(∑[n+3]+n+3)`
-/

namespace A015279.P2893394420954479924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015124 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A015279.P2893394420954479924

/-!
# A015280: Inverse of 1271st cyclotomic polynomial.

The programs for A015280, there is no canonical definition to state claims against.
-/

/-! ## A015280.P4068911884743286263

`A015748(lt[A057079(n), A278984(n+5)])`
-/

namespace A015280.P4068911884743286263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278984 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015748 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015280.P4068911884743286263

/-! ## A015280.P13213372119845520306

`A015342((n+2)%A279135(n+2))`
-/

namespace A015280.P13213372119845520306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015342 (Int.tmod (n + 2 : ℤ) (A279135 (n + 2))).toNat

end

end A015280.P13213372119845520306

/-! ## A015280.P14301191089056669930

`A015748(A335467(n+1)+2)`
-/

namespace A015280.P14301191089056669930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015748 (A335467 (n + 1) + 2).toNat

end

end A015280.P14301191089056669930

/-! ## A015280.P1358758457857655814

`A015748(A351290(n+1)+3)`
-/

namespace A015280.P1358758457857655814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015748 (A351290 (n + 1) + 3).toNat

end

end A015280.P1358758457857655814

/-! ## A015280.P12663839285411897802

`A015748(A333638(n+1)+1)`
-/

namespace A015280.P12663839285411897802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015748 (A333638 (n + 1) + 1).toNat

end

end A015280.P12663839285411897802

/-! ## A015280.P3693823372947582208

`A015748(A356944(n+1)+4)`
-/

namespace A015280.P3693823372947582208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015748 (A356944 (n + 1) + 4).toNat

end

end A015280.P3693823372947582208

/-! ## A015280.P16440562785599280089

`A015748(A352486(n+1)-1)`
-/

namespace A015280.P16440562785599280089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015748 (A352486 (n + 1) - 1).toNat

end

end A015280.P16440562785599280089

/-! ## A015280.P10174186014255968298

`A015970(A368100(n+1)-comp[A390676(n+1)])`
-/

namespace A015280.P10174186014255968298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390676 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015970 (A368100 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A015280.P10174186014255968298

/-! ## A015280.P12748161448229143292

`A015748(lt[A267584(2*n+3), A391623(n+1)])`
-/

namespace A015280.P12748161448229143292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015748 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015280.P12748161448229143292

/-!
# A015281: Gaussian binomial coefficient [ n,3 ] for q = -12.

The programs for A015281, there is no canonical definition to state claims against.
-/

/-! ## A015281.P16077577811217995289

`A015125(∑[n+3]+6)`
-/

namespace A015281.P16077577811217995289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015125 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A015281.P16077577811217995289

/-!
# A015282: Inverse of 1273rd cyclotomic polynomial.

The programs for A015282, there is no canonical definition to state claims against.
-/

/-! ## A015282.P5270925367482599867

`A015396(lt[A160256(3*n+1), A345576(n+1)])`
-/

namespace A015282.P5270925367482599867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160256 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015396 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A015282.P5270925367482599867

/-! ## A015282.P17319616558835625243

`A014542(∑[A350942(n+1)]+1)`
-/

namespace A015282.P17319616558835625243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014542 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A015282.P17319616558835625243

/-! ## A015282.P15220279585347525540

`floor(comp[∑[n-1]]/A335433(n+1))`
-/

namespace A015282.P15220279585347525540
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / (A335433 (n + 1) : ℚ)⌋

end

end A015282.P15220279585347525540

/-! ## A015282.P10581246725129975020

`floor(2/log(abs(A344414(n+1)-n)+2))`
-/

namespace A015282.P10581246725129975020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / Real.log (|A344414 (n + 1) - (n : ℤ)| + 2 : ℝ)⌋

end

end A015282.P10581246725129975020

/-! ## A015282.P11900315183237842711

`A202022(A185325(n))`
-/

namespace A015282.P11900315183237842711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202022 (A185325 n).toNat

end

end A015282.P11900315183237842711

/-! ## A015282.P9277388275117608915

`C(2, A182248(A339110(n)))`
-/

namespace A015282.P9277388275117608915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A182248 (A339110 n).toNat).toNat

end

end A015282.P9277388275117608915

/-! ## A015282.P6822076735500533557

`C(4, A046092(A017884(n)))`
-/

namespace A015282.P6822076735500533557
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (A046092 (A017884 n).toNat).toNat

end

end A015282.P6822076735500533557

/-! ## A015282.P15338103440658590179

`A000007(∑[A326681(n+1)])`
-/

namespace A015282.P15338103440658590179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A015282.P15338103440658590179

/-! ## A015282.P13838091027612085929

`∑[A340851(A390677(n+1))]%2`
-/

namespace A015282.P13838091027612085929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340851 (A390677 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A015282.P13838091027612085929

/-! ## A015282.P16944291888150868513

`floor(A322847(n+1)/A053263(n))`
-/

namespace A015282.P16944291888150868513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A322847 (n + 1) : ℚ) / (A053263 n : ℚ)⌋

end

end A015282.P16944291888150868513

/-!
# A015283: Inverse of 1274th cyclotomic polynomial.

The programs for A015283, there is no canonical definition to state claims against.
-/

/-! ## A015283.P17889582218938398796

`A014023(n)*A014646(n)`
-/

namespace A015283.P17889582218938398796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014023 n * A014646 n

end

end A015283.P17889582218938398796

/-! ## A015283.P13612457745269754735

`A014646(n)*A033999(n)`
-/

namespace A015283.P13612457745269754735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014646 n * A033999 n

end

end A015283.P13612457745269754735

/-! ## A015283.P15039217455539526366

`A014646(n)*A081729(n)`
-/

namespace A015283.P15039217455539526366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014646 n * A081729 n

end

end A015283.P15039217455539526366

/-! ## A015283.P15908422508619534041

`A014646(n)*A099860(n)`
-/

namespace A015283.P15908422508619534041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014646 n * A099860 n

end

end A015283.P15908422508619534041

/-! ## A015283.P1941160089262546834

`A014646(n)*A016402(n)`
-/

namespace A015283.P1941160089262546834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014646 n * A016402 n

end

end A015283.P1941160089262546834

/-!
# A015284: Inverse of 1275th cyclotomic polynomial.

The programs for A015284, there is no canonical definition to state claims against.
-/

/-! ## A015284.P6114249523842263912

`A014264(A002266(n))*A079998(n)`
-/

namespace A015284.P6114249523842263912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014264 (A002266 n).toNat * A079998 n

end

end A015284.P6114249523842263912

/-!
# A015285: Inverse of 1276th cyclotomic polynomial.

The programs for A015285, there is no canonical definition to state claims against.
-/

/-! ## A015285.P7518354060500416987

`A016077(n)^A097441(n+1)`
-/

namespace A015285.P7518354060500416987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016077 n : ℚ) ^ (A097441 (n + 1) : ℤ)

end

end A015285.P7518354060500416987

/-! ## A015285.P3143439803236910893

`A016077(n)*A284100(A007491(Δ[n²]))`
-/

namespace A015285.P3143439803236910893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016077 n * A284100 (A007491 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A015285.P3143439803236910893

/-! ## A015285.P17672415966796674432

`A015373(n)%A157439(n)`
-/

namespace A015285.P17672415966796674432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015373 n) (A157439 n)

end

end A015285.P17672415966796674432

/-! ## A015285.P4329633663111686719

`A015637(n)%A157439(n)`
-/

namespace A015285.P4329633663111686719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015637 n) (A157439 n)

end

end A015285.P4329633663111686719

/-! ## A015285.P6573221757620607469

`A015813(n)%A157439(n)`
-/

namespace A015285.P6573221757620607469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015813 n) (A157439 n)

end

end A015285.P6573221757620607469

/-!
# A015286: Gaussian binomial coefficient [ n,3 ] for q = -13.

The programs for A015286, there is no canonical definition to state claims against.
-/

/-! ## A015286.P12750690245403889973

`A015129(∑[n+3]+6)`
-/

namespace A015286.P12750690245403889973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015129 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A015286.P12750690245403889973

/-!
# A015287: Gaussian binomial coefficient [ n,4 ] for q = -2.

The programs for A015287, there is no canonical definition to state claims against.
-/

/-! ## A015287.P37780197946304363

`∑[A334908(n)]`
-/

namespace A015287.P37780197946304363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015287.P37780197946304363

/-! ## A015287.P8970446553482817127

`∑[∑[A015249(n+2)*A083424(n)]]`
-/

namespace A015287.P8970446553482817127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015249 (n + 2) * A083424 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A015287.P8970446553482817127

/-! ## A015287.P8489140119702894547

`A015109(eq[4, A002262(n)])`
-/

namespace A015287.P8489140119702894547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015287.P8489140119702894547

/-! ## A015287.P2089566575957190241

`A015109(eq[5, A002260(n+1)])`
-/

namespace A015287.P2089566575957190241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015287.P2089566575957190241

/-! ## A015287.P10073178357065120382

`A015109(A046691(n+3)-1)`
-/

namespace A015287.P10073178357065120382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015109 (A046691 (n + 3) - 1).toNat

end

end A015287.P10073178357065120382

/-!
# A015288: Gaussian binomial coefficient [ n,4 ] for q = -3.

The programs for A015288, there is no canonical definition to state claims against.
-/

/-! ## A015288.P7881029041678039368

`A015110(eq[5, A002260(n+1)])`
-/

namespace A015288.P7881029041678039368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015288.P7881029041678039368

/-! ## A015288.P17347821281645710402

`A015110(A052905(n+2))`
-/

namespace A015288.P17347821281645710402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (A052905 (n + 2)).toNat

end

end A015288.P17347821281645710402

/-! ## A015288.P1999513408390099214

`A015110(eq[4, A025581(n)])`
-/

namespace A015288.P1999513408390099214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015288.P1999513408390099214

/-! ## A015288.P18016019508824158172

`A015110(eq[9, A099375(n)])`
-/

namespace A015288.P18016019508824158172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015288.P18016019508824158172

/-! ## A015288.P10731285071236215824

`A015110(eq[5, A004736(n+1)])`
-/

namespace A015288.P10731285071236215824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015110 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015288.P10731285071236215824

/-!
# A015289: Gaussian binomial coefficient [ n,4 ] for q = -4.

The programs for A015289, there is no canonical definition to state claims against.
-/

/-! ## A015289.P4160641199191867217

`A015112(eq[4, A002262(n)])`
-/

namespace A015289.P4160641199191867217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015289.P4160641199191867217

/-! ## A015289.P18339701377326303893

`A015112(eq[5, A002260(n+1)])`
-/

namespace A015289.P18339701377326303893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015289.P18339701377326303893

/-! ## A015289.P2480201089955680292

`A015112(eq[9, A158405(n+1)])`
-/

namespace A015289.P2480201089955680292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015289.P2480201089955680292

/-! ## A015289.P1238983735988103302

`A015112(A052905(n+2))`
-/

namespace A015289.P1238983735988103302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (A052905 (n + 2)).toNat

end

end A015289.P1238983735988103302

/-! ## A015289.P3523197512717480301

`A015112(eq[4, A025581(n)])`
-/

namespace A015289.P3523197512717480301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015289.P3523197512717480301

/-!
# A015290: Inverse of 1281st cyclotomic polynomial.

The programs for A015290, there is no canonical definition to state claims against.
-/

/-! ## A015290.P13775752771264738038

`A016310(A342791(n+2))`
-/

namespace A015290.P13775752771264738038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016310 (A342791 (n + 2)).toNat

end

end A015290.P13775752771264738038

/-! ## A015290.P18178841342341715621

`A015642(A284249(3*n))*A015668(n)`
-/

namespace A015290.P18178841342341715621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015642 (A284249 (3 * n)).toNat * A015668 n

end

end A015290.P18178841342341715621

/-!
# A015291: Gaussian binomial coefficient [ n,4 ] for q = -5.

The programs for A015291, there is no canonical definition to state claims against.
-/

/-! ## A015291.P9042922140280357538

`A015113(eq[5, A002260(n+1)])`
-/

namespace A015291.P9042922140280357538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015291.P9042922140280357538

/-! ## A015291.P11718121144028462588

`A015113(eq[9, A099375(n)])`
-/

namespace A015291.P11718121144028462588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015113 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015291.P11718121144028462588

/-! ## A015291.P2842554018209787135

`A015113(Δ[A023545(n+1)]-1)`
-/

namespace A015291.P2842554018209787135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015113 (f1 (n + 1) - f1 n - 1).toNat

end

end A015291.P2842554018209787135

/-!
# A015292: Gaussian binomial coefficient [ n,4 ] for q = -6.

The programs for A015292, there is no canonical definition to state claims against.
-/

/-! ## A015292.P7963936302982453277

`A015116(eq[4, A002262(n)])`
-/

namespace A015292.P7963936302982453277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015116 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015292.P7963936302982453277

/-! ## A015292.P5085086692342063322

`A015116(∑[n+5]+5)`
-/

namespace A015292.P5085086692342063322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015116 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A015292.P5085086692342063322

/-!
# A015293: Gaussian binomial coefficient [ n,4 ] for q = -7.

The programs for A015293, there is no canonical definition to state claims against.
-/

/-! ## A015293.P13137104359453468615

`A015117(A056000(n)+14)`
-/

namespace A015293.P13137104359453468615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (A056000 n + 14).toNat

end

end A015293.P13137104359453468615

/-! ## A015293.P3859129608590248455

`A015117(eq[4, A002262(n)])`
-/

namespace A015293.P3859129608590248455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015293.P3859129608590248455

/-! ## A015293.P8564230798005987890

`A015117(eq[16, A059268(n)])`
-/

namespace A015293.P8564230798005987890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015293.P8564230798005987890

/-! ## A015293.P2519016815638386637

`A015117(eq[4, A025581(n)])`
-/

namespace A015293.P2519016815638386637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015293.P2519016815638386637

/-! ## A015293.P16768256582003377256

`A015117(Δ[A023545(n+1)]-1)`
-/

namespace A015293.P16768256582003377256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015117 (f1 (n + 1) - f1 n - 1).toNat

end

end A015293.P16768256582003377256

/-!
# A015294: Gaussian binomial coefficient [ n,4 ] for q = -8.

The programs for A015294, there is no canonical definition to state claims against.
-/

/-! ## A015294.P8173612330665921734

`A015118(∑[n+5]+5)`
-/

namespace A015294.P8173612330665921734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015118 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A015294.P8173612330665921734

/-!
# A015295: Gaussian binomial coefficient [ n,4 ] for q = -9.

The programs for A015295, there is no canonical definition to state claims against.
-/

/-! ## A015295.P15226720630946712419

`A015121(eq[5, A002260(n+1)])`
-/

namespace A015295.P15226720630946712419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015295.P15226720630946712419

/-! ## A015295.P3351148487518499192

`A015121(eq[4, A025581(n)])`
-/

namespace A015295.P3351148487518499192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015295.P3351148487518499192

/-! ## A015295.P6568341087167947

`A015121(A046691(n+3)-1)`
-/

namespace A015295.P6568341087167947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015121 (A046691 (n + 3) - 1).toNat

end

end A015295.P6568341087167947

/-! ## A015295.P8159082301274915827

`A015121(Δ[A023545(n+1)]-1)`
-/

namespace A015295.P8159082301274915827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015121 (f1 (n + 1) - f1 n - 1).toNat

end

end A015295.P8159082301274915827

/-!
# A015296: Inverse of 1287th cyclotomic polynomial.

The programs for A015296, there is no canonical definition to state claims against.
-/

/-! ## A015296.P582797051071242850

`A016266(A107830(n+3))*A016286(n)`
-/

namespace A015296.P582797051071242850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016266 (A107830 (n + 3)).toNat * A016286 n

end

end A015296.P582797051071242850

/-! ## A015296.P15153840484239447474

`A016286(n)*A316827(A333351(n))`
-/

namespace A015296.P15153840484239447474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016286 n * A316827 (A333351 n).toNat

end

end A015296.P15153840484239447474

/-!
# A015297: Inverse of 1288th cyclotomic polynomial.

The programs for A015297, there is no canonical definition to state claims against.
-/

/-! ## A015297.P10009828557264997348

`A014653(gcd(n, ∑[n]))`
-/

namespace A015297.P10009828557264997348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014653 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A015297.P10009828557264997348

/-! ## A015297.P10637205749474823600

`A014017(A067043(n))`
-/

namespace A015297.P10637205749474823600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (A067043 n).toNat

end

end A015297.P10637205749474823600

/-! ## A015297.P465286403333761705

`A016033(n)%A364855(n)`
-/

namespace A015297.P465286403333761705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016033 n) (A364855 n)

end

end A015297.P465286403333761705

/-!
# A015298: 

The programs for A015298, there is no canonical definition to state claims against.
-/

/-! ## A015298.P16503870226016095663

`A015123(A056000(n)+14)`
-/

namespace A015298.P16503870226016095663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015123 (A056000 n + 14).toNat

end

end A015298.P16503870226016095663

/-! ## A015298.P4902542134645197324

`A015123(eq[5, A002260(n+1)])`
-/

namespace A015298.P4902542134645197324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A015298.P4902542134645197324

/-! ## A015298.P885782671893774799

`A015123(A253145(n+3)+n)`
-/

namespace A015298.P885782671893774799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015123 (A253145 (n + 3) + (n : ℤ)).toNat

end

end A015298.P885782671893774799

/-! ## A015298.P10185463162113223598

`A015123(Δ[A023545(n+1)]-1)`
-/

namespace A015298.P10185463162113223598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015123 (f1 (n + 1) - f1 n - 1).toNat

end

end A015298.P10185463162113223598

/-!
# A015299: Inverse of 1290th cyclotomic polynomial.

The programs for A015299, there is no canonical definition to state claims against.
-/

/-! ## A015299.P14260127293636729090

`A014654(n)*A033999(n)`
-/

namespace A015299.P14260127293636729090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014654 n * A033999 n

end

end A015299.P14260127293636729090

/-! ## A015299.P17160937513338396971

`A015419(A175427(n+1))`
-/

namespace A015299.P17160937513338396971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015419 (A175427 (n + 1)).toNat

end

end A015299.P17160937513338396971

/-! ## A015299.P11494930047877320498

`A015599(A326302(n))`
-/

namespace A015299.P11494930047877320498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015599 (A326302 n).toNat

end

end A015299.P11494930047877320498

/-! ## A015299.P1992212247923739544

`A016019(A061276(n+1))`
-/

namespace A015299.P1992212247923739544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016019 (A061276 (n + 1)).toNat

end

end A015299.P1992212247923739544

/-! ## A015299.P1423158092657088732

`A015119(A259624(n+1))`
-/

namespace A015299.P1423158092657088732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015119 (A259624 (n + 1)).toNat

end

end A015299.P1423158092657088732

