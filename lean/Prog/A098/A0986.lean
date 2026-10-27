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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C040
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A098600: a(n) = Fibonacci(n-1) + Fibonacci(n+1) - (-1)^n.

The programs for A098600, the canonical program `A098600.P9313807844199052119` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098600 has offset 0).

The definition of A098600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098600.P9313807844199052119

`2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098600

/-- `2*a(n-2)+a(n-3)` -/
def P9313807844199052119.Spec : Prop :=
  ∀ n, (P9313807844199052119.a n : ℤ) = A098600 n

theorem P9313807844199052119.correct : P9313807844199052119.Spec := by
  intro n
  simp only [A098600]

end A098600

/-! ## A098600.P1095266261193840586

`A001350(n)+1`
-/

namespace A098600.P1095266261193840586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 n + 1

end

end A098600.P1095266261193840586

namespace A098600

/-- `A001350(n)+1` -/
def P1095266261193840586.Spec : Prop :=
  ∀ n, P1095266261193840586.a n = A098600 n

end A098600

/-! ## A098600.P66606572617250954

`A181716(n+1)`
-/

namespace A098600.P66606572617250954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181716 (n + 1)

end

end A098600.P66606572617250954

namespace A098600

/-- `A181716(n+1)` -/
def P66606572617250954.Spec : Prop :=
  ∀ n, P66606572617250954.a n = A098600 n

end A098600

/-! ## A098600.P11100566054976395847

`A020878(n)-1`
-/

namespace A098600.P11100566054976395847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020878 n - 1

end

end A098600.P11100566054976395847

namespace A098600

/-- `A020878(n)-1` -/
def P11100566054976395847.Spec : Prop :=
  ∀ n, P11100566054976395847.a n = A098600 n

end A098600

/-! ## A098600.P9354563572270947094

`A000032(n)-(-1)^n`
-/

namespace A098600.P9354563572270947094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - (-1) ^ n

end

end A098600.P9354563572270947094

namespace A098600

/-- `A000032(n)-(-1)^n` -/
def P9354563572270947094.Spec : Prop :=
  ∀ n, P9354563572270947094.a n = A098600 n

end A098600

/-! ## A098600.P14344419694454576984

`A014217(n)+A000035(n)`
-/

namespace A098600.P14344419694454576984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n + A000035 n

end

end A098600.P14344419694454576984

namespace A098600

/-- `A014217(n)+A000035(n)` -/
def P14344419694454576984.Spec : Prop :=
  ∀ n, P14344419694454576984.a n = A098600 n

end A098600

/-! ## A098600.P6093677204963898722

`ogf((1+2x)/(1-2x^2-x^3))`
-/

namespace A098600.P6093677204963898722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, 0, -2, -1] n

end

end A098600.P6093677204963898722

namespace A098600

/-- `ogf((1+2x)/(1-2x^2-x^3))` -/
def P6093677204963898722.Spec : Prop :=
  ∀ n, P6093677204963898722.a n = A098600 n

end A098600

/-! ## A098600.P8096019332796331491

`a(n-1)+a(n-2)-(-1)^n` with `a(0)=1, a(1)=2`
-/

namespace A098600.P8096019332796331491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - 2) - (-1) ^ n

end

end A098600.P8096019332796331491

namespace A098600

/-- `a(n-1)+a(n-2)-(-1)^n` -/
def P8096019332796331491.Spec : Prop :=
  ∀ n, P8096019332796331491.a n = A098600 n

end A098600

/-! ## A098600.P7619379748533780854

`a(n-1)-((-1)^n-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A098600.P7619379748533780854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - ((-1) ^ n - a (n - 2))

end

end A098600.P7619379748533780854

namespace A098600

/-- `a(n-1)-((-1)^n-a(n-2))` -/
def P7619379748533780854.Spec : Prop :=
  ∀ n, P7619379748533780854.a n = A098600 n

end A098600

/-! ## A098600.P10984031132517048331

`floor(a(n-2)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=2, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A098600.P10984031132517048331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 3))

end

end A098600.P10984031132517048331

namespace A098600

/-- `floor(a(n-2)+a(n-2)+a(n-3))` -/
def P10984031132517048331.Spec : Prop :=
  ∀ n, (P10984031132517048331.a n : ℤ) = A098600 n

theorem P10984031132517048331.correct : P10984031132517048331.Spec := by
  intro n
  simp only [A098600, Nat.add_sub_cancel, A098600.P10984031132517048331.a, A098600.P9313807844199052119.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A098600

/-! ## A098600.P1769503379319965328

`∑[a(n-2)+a(n-2)+a(n-3)]` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A098600.P1769503379319965328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 0] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098600.P1769503379319965328

namespace A098600

/-- `∑[a(n-2)+a(n-2)+a(n-3)]` -/
def P1769503379319965328.Spec : Prop :=
  ∀ n, (P1769503379319965328.a n : ℤ) = A098600 n

end A098600

/-! ## A098600.P5381831776989840953

`3*a(n-2)-(a(n-2)-a(n-3))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A098600.P5381831776989840953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 3))

end

end A098600.P5381831776989840953

namespace A098600

/-- `3*a(n-2)-(a(n-2)-a(n-3))` -/
def P5381831776989840953.Spec : Prop :=
  ∀ n, P5381831776989840953.a n = A098600 n

end A098600

/-! ## A098600.P6788284462547897029

`abs(A355021(n))`
-/

namespace A098600.P6788284462547897029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355021 n|

end

end A098600.P6788284462547897029

namespace A098600

/-- `abs(A355021(n))` -/
def P6788284462547897029.Spec : Prop :=
  ∀ n, P6788284462547897029.a n = A098600 n

end A098600

/-! ## A098600.P288557788943173640

`∑{d}[n, A031367(#)]+1`
-/

namespace A098600.P288557788943173640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A031367 d + 1

end

end A098600.P288557788943173640

namespace A098600

/-- `∑{d}[n, A031367(#)]+1` -/
def P288557788943173640.Spec : Prop :=
  ∀ n, P288557788943173640.a n = A098600 n

end A098600

/-! ## A098600.P13580132506642448781

`abs(1-A061084(n+1))`
-/

namespace A098600.P13580132506642448781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A061084 (n + 1)|

end

end A098600.P13580132506642448781

namespace A098600

/-- `abs(1-A061084(n+1))` -/
def P13580132506642448781.Spec : Prop :=
  ∀ n, P13580132506642448781.a n = A098600 n

end A098600

/-! ## A098600.P13542003310001748577

`∑[A000032(n-1)-a(n-1)]` with `a(0)=1`
-/

namespace A098600.P13542003310001748577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000032 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098600.P13542003310001748577

namespace A098600

/-- `∑[A000032(n-1)-a(n-1)]` -/
def P13542003310001748577.Spec : Prop :=
  ∀ n, P13542003310001748577.a n = A098600 n

end A098600

/-! ## A098600.P2303063553301633443

`A295734(n)+A140407(n)`
-/

namespace A098600.P2303063553301633443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295734 n + A140407 n

end

end A098600.P2303063553301633443

namespace A098600

/-- `A295734(n)+A140407(n)` -/
def P2303063553301633443.Spec : Prop :=
  ∀ n, P2303063553301633443.a n = A098600 n

end A098600

/-! ## A098600.P3114969740053230539

`A062724(n)-A059841(n)`
-/

namespace A098600.P3114969740053230539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062724 n - A059841 n

end

end A098600.P3114969740053230539

namespace A098600

/-- `A062724(n)-A059841(n)` -/
def P3114969740053230539.Spec : Prop :=
  ∀ n, P3114969740053230539.a n = A098600 n

end A098600

/-! ## A098600.P13639846007323365173

`A000211(n)-A176040(n)`
-/

namespace A098600.P13639846007323365173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n - A176040 n

end

end A098600.P13639846007323365173

namespace A098600

/-- `A000211(n)-A176040(n)` -/
def P13639846007323365173.Spec : Prop :=
  ∀ n, P13639846007323365173.a n = A098600 n

end A098600

/-! ## A098600.P2846988166731328887

`A033999(n)*A355021(n)`
-/

namespace A098600.P2846988166731328887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A355021 n

end

end A098600.P2846988166731328887

namespace A098600

/-- `A033999(n)*A355021(n)` -/
def P2846988166731328887.Spec : Prop :=
  ∀ n, P2846988166731328887.a n = A098600 n

end A098600

/-!
# A098601: Expansion of (1+2*x)/((1+x)*(1-x^2-x^3)).

The programs for A098601, the canonical program `A098601.P6157712606367058346` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098601 has offset 0).

The definition of A098601 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1+x-x^2-2x^3-x^4))` (program `A098601.P6157712606367058346`, by `A098601.P6157712606367058346.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098601.P6157712606367058346

`ogf((1+2x)/(1+x-x^2-2x^3-x^4))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098601

/-- `ogf((1+2x)/(1+x-x^2-2x^3-x^4))` -/
def P6157712606367058346.Spec : Prop :=
  ∀ n, P6157712606367058346.a n = A098601 n

theorem P6157712606367058346.correct : P6157712606367058346.Spec := by
  intro n
  simp only [A098601]

end A098601

/-! ## A098601.P6193852883247563916

`a(n-2)+a(n-3)-(-1)^n` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A098601.P6193852883247563916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 2) + a (n - 3) - (-1) ^ n

end

end A098601.P6193852883247563916

namespace A098601

/-- `a(n-2)+a(n-3)-(-1)^n` -/
def P6193852883247563916.Spec : Prop :=
  ∀ n, P6193852883247563916.a n = A098601 n

end A098601

/-! ## A098601.P14547353615789324541

`a(n-2)-((-1)^n-a(n-3))` with `a(0)=1, a(1)=1, a(2)=0`
-/

namespace A098601.P14547353615789324541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0] fun n a =>
  a (n - 2) - ((-1) ^ n - a (n - 3))

end

end A098601.P14547353615789324541

namespace A098601

/-- `a(n-2)-((-1)^n-a(n-3))` -/
def P14547353615789324541.Spec : Prop :=
  ∀ n, P14547353615789324541.a n = A098601 n

end A098601

/-! ## A098601.P8544764677070144291

`abs(Δ[A109248(n)]+1)`
-/

namespace A098601.P8544764677070144291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 1|

end

end A098601.P8544764677070144291

namespace A098601

/-- `abs(Δ[A109248(n)]+1)` -/
def P8544764677070144291.Spec : Prop :=
  ∀ n, P8544764677070144291.a n = A098601 n

end A098601

/-! ## A098601.P17118335789469973773

`abs(A109248(n+3)+1)`
-/

namespace A098601.P17118335789469973773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A109248 (n + 3) + 1|

end

end A098601.P17118335789469973773

namespace A098601

/-- `abs(A109248(n+3)+1)` -/
def P17118335789469973773.Spec : Prop :=
  ∀ n, P17118335789469973773.a n = A098601 n

end A098601

/-! ## A098601.P8844537860794141304

`abs(∑[A109248(n+5)])`
-/

namespace A098601.P8844537860794141304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109248 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A098601.P8844537860794141304

namespace A098601

/-- `abs(∑[A109248(n+5)])` -/
def P8844537860794141304.Spec : Prop :=
  ∀ n, P8844537860794141304.a n = A098601 n

end A098601

/-! ## A098601.P7996506447764530690

`A007307(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A098601.P7996506447764530690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007307 (n + 1) - a (n - 1)

end

end A098601.P7996506447764530690

namespace A098601

/-- `A007307(n+1)-a(n-1)` -/
def P7996506447764530690.Spec : Prop :=
  ∀ n, P7996506447764530690.a n = A098601 n

end A098601

/-! ## A098601.P4196117873714018773

`-Δ[a(n-2)-A007307(n)]` with `a(0)=1, a(1)=0`
-/

namespace A098601.P4196117873714018773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) - A007307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A098601.P4196117873714018773

namespace A098601

/-- `-Δ[a(n-2)-A007307(n)]` -/
def P4196117873714018773.Spec : Prop :=
  ∀ n, P4196117873714018773.a n = A098601 n

end A098601

/-! ## A098601.P10832543568604544704

`abs(∑[A117363(n)])`
-/

namespace A098601.P10832543568604544704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A098601.P10832543568604544704

namespace A098601

/-- `abs(∑[A117363(n)])` -/
def P10832543568604544704.Spec : Prop :=
  ∀ n, P10832543568604544704.a n = A098601 n

end A098601

/-! ## A098601.P14620952260416354314

`A008346(n+1)-(A129973(n+2)+A078027(n+1))`
-/

namespace A098601.P14620952260416354314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (n + 1) - (A129973 (n + 2) + A078027 (n + 1))

end

end A098601.P14620952260416354314

namespace A098601

/-- `A008346(n+1)-(A129973(n+2)+A078027(n+1))` -/
def P14620952260416354314.Spec : Prop :=
  ∀ n, P14620952260416354314.a n = A098601 n

end A098601

/-!
# A098602: a(n) = A001652(n) * A046090(n).

The programs for A098602, the canonical program `A098602.P1906301657447036642` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098602 has offset 0).

The definition of A098602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098602.P10766581452226164910

`35*a(n-1)-35*a(n-2)+a(n-3)` with `a(0)=0, a(1)=12, a(2)=420`
-/

namespace A098602.P10766581452226164910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 12, 420] fun n a =>
  35 * a (n - 1) - 35 * a (n - 2) + a (n - 3)

end

end A098602.P10766581452226164910

namespace A098602

/-- `35*a(n-1)-35*a(n-2)+a(n-3)` -/
def P10766581452226164910.Spec : Prop :=
  ∀ n, P10766581452226164910.a n = A098602 n

end A098602

/-! ## A098602.P777440605574773535

`2*A029549(n)`
-/

namespace A098602.P777440605574773535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029549 n

end

end A098602.P777440605574773535

namespace A098602

/-- `2*A029549(n)` -/
def P777440605574773535.Spec : Prop :=
  ∀ n, P777440605574773535.a n = A098602 n

end A098602

/-! ## A098602.P13188147221123725942

`(A001653(n+1)²-1)/2`
-/

namespace A098602.P13188147221123725942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001653 (n + 1) ^ 2 - 1 : ℚ) / 2

end

end A098602.P13188147221123725942

namespace A098602

/-- `(A001653(n+1)²-1)/2` -/
def P13188147221123725942.Spec : Prop :=
  ∀ n, P13188147221123725942.a n = (A098602 n : ℚ)

end A098602

/-! ## A098602.P1906301657447036642

`A001652(n)*A046090(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098602

/-- `A001652(n)*A046090(n)` -/
def P1906301657447036642.Spec : Prop :=
  ∀ n, P1906301657447036642.a n = A098602 n

theorem P1906301657447036642.correct : P1906301657447036642.Spec := by
  intro n
  simp only [A098602]

end A098602

/-! ## A098602.P17490585772008344150

`2*A001109(n)*A001109(n+1)`
-/

namespace A098602.P17490585772008344150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001109 n * A001109 (n + 1)

end

end A098602.P17490585772008344150

namespace A098602

/-- `2*A001109(n)*A001109(n+1)` -/
def P17490585772008344150.Spec : Prop :=
  ∀ n, P17490585772008344150.a n = A098602 n

end A098602

/-! ## A098602.P3751940244549267354

`A053141(n)²+A011900(n)²-1`
-/

namespace A098602.P3751940244549267354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053141 n ^ 2 + A011900 n ^ 2 - 1

end

end A098602.P3751940244549267354

namespace A098602

/-- `A053141(n)²+A011900(n)²-1` -/
def P3751940244549267354.Spec : Prop :=
  ∀ n, P3751940244549267354.a n = A098602 n

end A098602

/-! ## A098602.P13127621441060569887

`3*∑[34*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=4`
-/

namespace A098602.P13127621441060569887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  34 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098602.P13127621441060569887

namespace A098602

/-- `3*∑[34*a(n-1)-a(n-2)]` -/
def P13127621441060569887.Spec : Prop :=
  ∀ n, P13127621441060569887.a n = A098602 n

end A098602

/-! ## A098602.P10232534803179456371

`floor((ceil(∑[((sqrt(2)+1)^n)²])/2)²)+1-(n%2)!`
-/

namespace A098602.P10232534803179456371
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.sqrt (2 : ℝ) + 1) ^ n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ : ℚ) / 2) ^ 2⌋ + 1 - (Nat.factorial (n % 2) : ℤ)

end

end A098602.P10232534803179456371

namespace A098602

/-- `floor((ceil(∑[((sqrt(2)+1)^n)²])/2)²)+1-(n%2)!` -/
def P10232534803179456371.Spec : Prop :=
  ∀ n, P10232534803179456371.a n = A098602 n

end A098602

/-! ## A098602.P17712875920570375367

`((floor((sqrt(2)+1)^(2*n+1))+2)/4)²-(floor((sqrt(2)+1)^(2*n+1))+2)/4`
-/

namespace A098602.P17712875920570375367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((⌊(Real.sqrt (2 : ℝ) + 1) ^ (2 * n + 1)⌋ + 2 : ℚ) / 4) ^ 2 - (⌊(Real.sqrt (2 : ℝ) + 1) ^ (2 * n + 1)⌋ + 2 : ℚ) / 4

end

end A098602.P17712875920570375367

namespace A098602

/-- `((floor((sqrt(2)+1)^(2*n+1))+2)/4)²-(floor((sqrt(2)+1)^(2*n+1))+2)/4` -/
def P17712875920570375367.Spec : Prop :=
  ∀ n, P17712875920570375367.a n = (A098602 n : ℚ)

end A098602

/-! ## A098602.P4524739391453931367

`4*A075528(n)`
-/

namespace A098602.P4524739391453931367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A075528 n

end

end A098602.P4524739391453931367

namespace A098602

/-- `4*A075528(n)` -/
def P4524739391453931367.Spec : Prop :=
  ∀ n, P4524739391453931367.a n = A098602 n

end A098602

/-!
# A098603: a(n) = n*(n+10).

The programs for A098603, the canonical program `A098603.P15074787285242523117` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098603 has offset 0).

The definition of A098603 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n+10)` (program `A098603.P15074787285242523117`, by `A098603.P15074787285242523117.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098603.P15074787285242523117

`n*(n+10)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098603

/-- `n*(n+10)` -/
def P15074787285242523117.Spec : Prop :=
  ∀ n, (P15074787285242523117.a n : ℤ) = A098603 n

theorem P15074787285242523117.correct : P15074787285242523117.Spec := by
  intro n
  simp only [A098603]

end A098603

/-!
# A098605: Positive integers n such that 2n - 17 is prime.

The programs for A098605, the canonical program `A098605.P7733621595314557542` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098605 has offset 1).

The definition of A098605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098605.P7733621595314557542

`A097480(n+1)+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A098605

/-- `A097480(n+1)+1` -/
def P7733621595314557542.Spec : Prop :=
  ∀ n, P7733621595314557542.a n = A098605 (n + 1)

theorem P7733621595314557542.correct : P7733621595314557542.Spec := by
  intro n
  simp only [A098605, Nat.add_sub_cancel]

end A098605

/-! ## A098605.P2169390523112529417

`A097363(n+1)+2`
-/

namespace A098605.P2169390523112529417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) + 2

end

end A098605.P2169390523112529417

namespace A098605

/-- `A097363(n+1)+2` -/
def P2169390523112529417.Spec : Prop :=
  ∀ n, P2169390523112529417.a n = A098605 (n + 1)

theorem P2169390523112529417.correct : P2169390523112529417.Spec := by
  intro n
  simp only [A098605, Nat.add_sub_cancel, A098605.P2169390523112529417.a, A098605.P7733621595314557542.a, A097363, A097363.P9324045915537457052.a, A097480, A097480.P24898552055680441.a, A097338, A097338.P887064449779485792.a, A097069, A097069.P18192174897570610825.a, A089192, A089192.P5097066678155882464.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098605

/-! ## A098605.P16128900594873425116

`A097932(n+1)-1`
-/

namespace A098605.P16128900594873425116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) - 1

end

end A098605.P16128900594873425116

namespace A098605

/-- `A097932(n+1)-1` -/
def P16128900594873425116.Spec : Prop :=
  ∀ n, P16128900594873425116.a n = A098605 (n + 1)

theorem P16128900594873425116.correct : P16128900594873425116.Spec := by
  intro n
  simp only [A098605, Nat.add_sub_cancel, A098605.P16128900594873425116.a, A098605.P7733621595314557542.a, A097480, A097480.P24898552055680441.a, A097932, A097932.P11808137079334481808.a, A097363, A097363.P9324045915537457052.a, A097338, A097338.P887064449779485792.a, A097069, A097069.P18192174897570610825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098605

/-! ## A098605.P5208085316362887013

`A097338(n+1)+3`
-/

namespace A098605.P5208085316362887013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) + 3

end

end A098605.P5208085316362887013

namespace A098605

/-- `A097338(n+1)+3` -/
def P5208085316362887013.Spec : Prop :=
  ∀ n, P5208085316362887013.a n = A098605 (n + 1)

theorem P5208085316362887013.correct : P5208085316362887013.Spec := by
  intro n
  simp only [A098605, Nat.add_sub_cancel, A098605.P5208085316362887013.a, A098605.P7733621595314557542.a, A097338, A097338.P887064449779485792.a, A097480, A097480.P24898552055680441.a, A097069, A097069.P18192174897570610825.a, A097363, A097363.P9324045915537457052.a, A089192, A089192.P5097066678155882464.a, A006254, A006254.P17336495081768971287.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098605

/-! ## A098605.P3528990769776554493

`A097069(n+1)+4`
-/

namespace A098605.P3528990769776554493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) + 4

end

end A098605.P3528990769776554493

namespace A098605

/-- `A097069(n+1)+4` -/
def P3528990769776554493.Spec : Prop :=
  ∀ n, P3528990769776554493.a n = A098605 (n + 1)

theorem P3528990769776554493.correct : P3528990769776554493.Spec := by
  intro n
  simp only [A098605, Nat.add_sub_cancel, A098605.P3528990769776554493.a, A098605.P7733621595314557542.a, A097069, A097069.P18192174897570610825.a, A097480, A097480.P24898552055680441.a, A089192, A089192.P5097066678155882464.a, A097363, A097363.P9324045915537457052.a, A006254, A006254.P17336495081768971287.a, A097338, A097338.P887064449779485792.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098605

/-! ## A098605.P11261458125408655538

`A089192(n+1)+5`
-/

namespace A098605.P11261458125408655538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) + 5

end

end A098605.P11261458125408655538

namespace A098605

/-- `A089192(n+1)+5` -/
def P11261458125408655538.Spec : Prop :=
  ∀ n, P11261458125408655538.a n = A098605 (n + 1)

theorem P11261458125408655538.correct : P11261458125408655538.Spec := by
  intro n
  simp only [A098605, Nat.add_sub_cancel, A098605.P11261458125408655538.a, A098605.P7733621595314557542.a, A089192, A089192.P5097066678155882464.a, A097480, A097480.P24898552055680441.a, A006254, A006254.P17336495081768971287.a, A097363, A097363.P9324045915537457052.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A097338, A097338.P887064449779485792.a, A097069, A097069.P18192174897570610825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098605

/-! ## A098605.P17463671380733297314

`A089253(n+1)+6`
-/

namespace A098605.P17463671380733297314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + 6

end

end A098605.P17463671380733297314

namespace A098605

/-- `A089253(n+1)+6` -/
def P17463671380733297314.Spec : Prop :=
  ∀ n, P17463671380733297314.a n = A098605 (n + 1)

end A098605

/-! ## A098605.P5703022439436485717

`A098090(n+1)+7`
-/

namespace A098605.P5703022439436485717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + 7

end

end A098605.P5703022439436485717

namespace A098605

/-- `A098090(n+1)+7` -/
def P5703022439436485717.Spec : Prop :=
  ∀ n, P5703022439436485717.a n = A098605 (n + 1)

end A098605

/-! ## A098605.P12184758885288354331

`A006254(n+1)+8`
-/

namespace A098605.P12184758885288354331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + 8

end

end A098605.P12184758885288354331

namespace A098605

/-- `A006254(n+1)+8` -/
def P12184758885288354331.Spec : Prop :=
  ∀ n, P12184758885288354331.a n = A098605 (n + 1)

end A098605

/-! ## A098605.P4512120836317129269

`A005097(n+1)+9`
-/

namespace A098605.P4512120836317129269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 9

end

end A098605.P4512120836317129269

namespace A098605

/-- `A005097(n+1)+9` -/
def P4512120836317129269.Spec : Prop :=
  ∀ n, P4512120836317129269.a n = A098605 (n + 1)

end A098605

/-! ## A098605.P17491888576280594499

`A177018(n+1)+n+7`
-/

namespace A098605.P17491888576280594499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177018 (n + 1) + (n + 7 : ℤ)

end

end A098605.P17491888576280594499

namespace A098605

/-- `A177018(n+1)+n+7` -/
def P17491888576280594499.Spec : Prop :=
  ∀ n, P17491888576280594499.a n = A098605 (n + 1)

end A098605

/-! ## A098605.P8438529410192137602

`A163057(n+1)+8-n`
-/

namespace A098605.P8438529410192137602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1) + (8 - (n : ℤ))

end

end A098605.P8438529410192137602

namespace A098605

/-- `A163057(n+1)+8-n` -/
def P8438529410192137602.Spec : Prop :=
  ∀ n, P8438529410192137602.a n = A098605 (n + 1)

end A098605

/-! ## A098605.P503996591353626900

`A008507(n+1)+n+10`
-/

namespace A098605.P503996591353626900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008507 (n + 1) + (n + 10 : ℤ)

end

end A098605.P503996591353626900

namespace A098605

/-- `A008507(n+1)+n+10` -/
def P503996591353626900.Spec : Prop :=
  ∀ n, P503996591353626900.a n = A098605 (n + 1)

end A098605

/-! ## A098605.P2706990601872438709

`A175540(n+1)+9-n`
-/

namespace A098605.P2706990601872438709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) + (9 - (n : ℤ))

end

end A098605.P2706990601872438709

namespace A098605

/-- `A175540(n+1)+9-n` -/
def P2706990601872438709.Spec : Prop :=
  ∀ n, P2706990601872438709.a n = A098605 (n + 1)

end A098605

/-! ## A098605.P3579760396328196881

`A124678(n+2)+6`
-/

namespace A098605.P3579760396328196881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124678 (n + 2) + 6

end

end A098605.P3579760396328196881

namespace A098605

/-- `A124678(n+2)+6` -/
def P3579760396328196881.Spec : Prop :=
  ∀ n, P3579760396328196881.a n = A098605 (n + 1)

end A098605

/-! ## A098605.P7942923412495923004

`A111333(n+2)+8`
-/

namespace A098605.P7942923412495923004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 2) + 8

end

end A098605.P7942923412495923004

namespace A098605

/-- `A111333(n+2)+8` -/
def P7942923412495923004.Spec : Prop :=
  ∀ n, P7942923412495923004.a n = A098605 (n + 1)

end A098605

/-! ## A098605.P11715619175527919862

`A130291(n+2)+8`
-/

namespace A098605.P11715619175527919862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 2) + 8

end

end A098605.P11715619175527919862

namespace A098605

/-- `A130291(n+2)+8` -/
def P11715619175527919862.Spec : Prop :=
  ∀ n, P11715619175527919862.a n = A098605 (n + 1)

end A098605

/-! ## A098605.P9537889359280060533

`A102781(n+2)+9`
-/

namespace A098605.P9537889359280060533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 2) + 9

end

end A098605.P9537889359280060533

namespace A098605

/-- `A102781(n+2)+9` -/
def P9537889359280060533.Spec : Prop :=
  ∀ n, P9537889359280060533.a n = A098605 (n + 1)

end A098605

/-! ## A098605.P7662046904684237253

`A130290(n+2)+9`
-/

namespace A098605.P7662046904684237253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 2) + 9

end

end A098605.P7662046904684237253

namespace A098605

/-- `A130290(n+2)+9` -/
def P7662046904684237253.Spec : Prop :=
  ∀ n, P7662046904684237253.a n = A098605 (n + 1)

end A098605

/-! ## A098605.P10133557678184542624

`A017329(n+1)+A067076(n+1)-A017329(n)`
-/

namespace A098605.P10133557678184542624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 (n + 1) + (A067076 (n + 1) - A017329 n)

end

end A098605.P10133557678184542624

namespace A098605

/-- `A017329(n+1)+A067076(n+1)-A017329(n)` -/
def P10133557678184542624.Spec : Prop :=
  ∀ n, P10133557678184542624.a n = A098605 (n + 1)

end A098605

/-!
# A098606: Sum of all matrix elements M(i,j) = (i^2)/(i+j).

The programs for A098606, there is no canonical definition to state claims against.
-/

/-! ## A098606.P14857174856359725032

`n!*A098612(n)`
-/

namespace A098606.P14857174856359725032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A098612 n

end

end A098606.P14857174856359725032

/-! ## A098606.P8446392220741702000

`A000142(n)*A098612(n)`
-/

namespace A098606.P8446392220741702000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A098612 n

end

end A098606.P8446392220741702000

/-! ## A098606.P5889281768186848048

`Δ[A003422(n)]*A098612(n)`
-/

namespace A098606.P5889281768186848048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A098612 n

end

end A098606.P5889281768186848048

/-! ## A098606.P8659873841171609559

`∏[A028310(n)]*A098612(n)`
-/

namespace A098606.P8659873841171609559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A098612 n

end

end A098606.P8659873841171609559

/-!
# A098608: a(n) = 100^n.

The programs for A098608, the canonical program `A098608.P3149415770696152548` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098608 has offset 0).

The definition of A098608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `100^n` (program `A098608.P3149415770696152548`, by `A098608.P3149415770696152548.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098608.P3149415770696152548

`100^n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098608

/-- `100^n` -/
def P3149415770696152548.Spec : Prop :=
  ∀ n, (P3149415770696152548.a n : ℤ) = A098608 n

theorem P3149415770696152548.correct : P3149415770696152548.Spec := by
  intro n
  simp only [A098608]

end A098608

/-!
# A098609: a(n) = 100^n - 1.

The programs for A098609, the canonical program `A098609.P1338858617726335719` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098609 has offset 0).

The definition of A098609 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `100^n-1` (program `A098609.P1338858617726335719`, by `A098609.P1338858617726335719.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098609.P1338858617726335719

`100^n-1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098609

/-- `100^n-1` -/
def P1338858617726335719.Spec : Prop :=
  ∀ n, P1338858617726335719.a n = A098609 n

theorem P1338858617726335719.correct : P1338858617726335719.Spec := by
  intro n
  simp only [A098609]

end A098609

/-!
# A098610: a(n) = 10^n + (-1)^n.

The programs for A098610, the canonical program `A098610.P12389318946438862825` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098610 has offset 0).

The definition of A098610 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n+(-1)^n` (program `A098610.P12389318946438862825`, by `A098610.P12389318946438862825.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098610.P12389318946438862825

`10^n+(-1)^n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098610

/-- `10^n+(-1)^n` -/
def P12389318946438862825.Spec : Prop :=
  ∀ n, P12389318946438862825.a n = A098610 n

theorem P12389318946438862825.correct : P12389318946438862825.Spec := by
  intro n
  simp only [A098610]

end A098610

/-! ## A098610.P11823098673389149598

`ogf((-2+9x)/(-1+9x+10x^2))`
-/

namespace A098610.P11823098673389149598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -9] [1, -9, -10] n

end

end A098610.P11823098673389149598

namespace A098610

/-- `ogf((-2+9x)/(-1+9x+10x^2))` -/
def P11823098673389149598.Spec : Prop :=
  ∀ n, P11823098673389149598.a n = A098610 n

end A098610

/-! ## A098610.P11434633888782567258

`round(sin(11)^n+10^n)`
-/

namespace A098610.P11434633888782567258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (11 : ℝ) ^ n + (10 ^ n : ℝ))

end

end A098610.P11434633888782567258

namespace A098610

/-- `round(sin(11)^n+10^n)` -/
def P11434633888782567258.Spec : Prop :=
  ∀ n, P11434633888782567258.a n = A098610 n

end A098610

/-! ## A098610.P5740258458124685494

`Δ[A002275(n)+A000034(n)]`
-/

namespace A098610.P5740258458124685494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098610.P5740258458124685494

namespace A098610

/-- `Δ[A002275(n)+A000034(n)]` -/
def P5740258458124685494.Spec : Prop :=
  ∀ n, P5740258458124685494.a n = A098610 n

end A098610

/-! ## A098610.P378523603393365426

`Δ[A002275(n)+Δ[A008619(n)]]`
-/

namespace A098610.P378523603393365426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098610.P378523603393365426

namespace A098610

/-- `Δ[A002275(n)+Δ[A008619(n)]]` -/
def P378523603393365426.Spec : Prop :=
  ∀ n, P378523603393365426.a n = A098610 n

end A098610

/-!
# A098611: a(n) = 10^n - (-1)^n.

The programs for A098611, the canonical program `A098611.P17233800625446975237` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098611 has offset 0).

The definition of A098611 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10^n-(-1)^n` (program `A098611.P17233800625446975237`, by `A098611.P17233800625446975237.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098611.P17233800625446975237

`10^n-(-1)^n`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098611

/-- `10^n-(-1)^n` -/
def P17233800625446975237.Spec : Prop :=
  ∀ n, P17233800625446975237.a n = A098611 n

theorem P17233800625446975237.correct : P17233800625446975237.Spec := by
  intro n
  simp only [A098611]

end A098611

/-! ## A098611.P5473627002739966739

`11*A015585(n)`
-/

namespace A098611.P5473627002739966739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A015585 n

end

end A098611.P5473627002739966739

namespace A098611

/-- `11*A015585(n)` -/
def P5473627002739966739.Spec : Prop :=
  ∀ n, P5473627002739966739.a n = A098611 n

end A098611

/-! ## A098611.P11137541544761335205

`A098609(n)/A098610(n)`
-/

namespace A098611.P11137541544761335205
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098609 n : ℚ) / (A098610 n : ℚ)

end

end A098611.P11137541544761335205

namespace A098611

/-- `A098609(n)/A098610(n)` -/
def P11137541544761335205.Spec : Prop :=
  ∀ n, P11137541544761335205.a n = (A098611 n : ℚ)

end A098611

/-! ## A098611.P7542417344235108488

`ogf(11x/(1-9x-10x^2))`
-/

namespace A098611.P7542417344235108488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 11] [1, -9, -10] n

end

end A098611.P7542417344235108488

namespace A098611

/-- `ogf(11x/(1-9x-10x^2))` -/
def P7542417344235108488.Spec : Prop :=
  ∀ n, P7542417344235108488.a n = A098611 n

end A098611

/-! ## A098611.P14138195860002705258

`Δ[A002275(n)-Δ[A008619(n)]]`
-/

namespace A098611.P14138195860002705258
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098611.P14138195860002705258

namespace A098611

/-- `Δ[A002275(n)-Δ[A008619(n)]]` -/
def P14138195860002705258.Spec : Prop :=
  ∀ n, P14138195860002705258.a n = A098611 n

end A098611

/-!
# A098612: Sum of all matrix elements M(i,j) = (i^2)/(i+j) multiplied by (2*n)!/n!.

The programs for A098612, there is no canonical definition to state claims against.
-/

/-! ## A098612.P7844833987464012435

`A098606(n)/n!`
-/

namespace A098612.P7844833987464012435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098606 n : ℚ) / (Nat.factorial n : ℚ)

end

end A098612.P7844833987464012435

/-! ## A098612.P3860826552605632200

`A098606(n)/A000142(n)`
-/

namespace A098612.P3860826552605632200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098606 n : ℚ) / (A000142 n : ℚ)

end

end A098612.P3860826552605632200

/-! ## A098612.P1281553384799965568

`A098606(n)/Δ[A003422(n)]`
-/

namespace A098612.P1281553384799965568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098606 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A098612.P1281553384799965568

/-! ## A098612.P13205377597751732856

`A098606(n)/∏[A028310(n)]`
-/

namespace A098612.P13205377597751732856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098606 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A098612.P13205377597751732856

/-!
# A098613: Expansion of psi(x^2) / f(-x) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A098613, there is no canonical definition to state claims against.
-/

/-! ## A098613.P3989323267551897746

`A225853(4*n+1)/2`
-/

namespace A098613.P3989323267551897746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225853 (4 * n + 1) : ℚ) / 2

end

end A098613.P3989323267551897746

/-! ## A098613.P5730476844543669707

`-(A143161(4*n+1)/2)`
-/

namespace A098613.P5730476844543669707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A143161 (4 * n + 1) : ℚ) / 2)

end

end A098613.P5730476844543669707

/-! ## A098613.P2133544673000953810

`floor(A225853(A016813(n))/2)`
-/

namespace A098613.P2133544673000953810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A225853 (A016813 n).toNat : ℚ) / 2⌋

end

end A098613.P2133544673000953810

/-! ## A098613.P3454677994712572591

`floor(record[A225853(n)/A020639(n+1)])`
-/

namespace A098613.P3454677994712572591
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225853 n : ℚ) / (A020639 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌋

end

end A098613.P3454677994712572591

/-! ## A098613.P12788747427496258482

`gcd(A225853(A016813(n))/2, A000038(n))`
-/

namespace A098613.P12788747427496258482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A225853 (A016813 n).toNat : ℚ) / 2)) (A000038 n)

end

end A098613.P12788747427496258482

/-! ## A098613.P6273076648544059104

`A225853(A016813(n))/2*A057077(n)²`
-/

namespace A098613.P6273076648544059104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225853 (A016813 n).toNat : ℚ) / 2 * (A057077 n ^ 2 : ℚ)

end

end A098613.P6273076648544059104

/-! ## A098613.P14162442459629781937

`A225853(A016813(n))/2*A257075(n)²`
-/

namespace A098613.P14162442459629781937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225853 (A016813 n).toNat : ℚ) / 2 * (A257075 n ^ 2 : ℚ)

end

end A098613.P14162442459629781937

/-! ## A098613.P9162810667372365

`(A225853(A016813(n))/2)%A000070(n+1)`
-/

namespace A098613.P9162810667372365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A225853 (A016813 n).toNat : ℚ) / 2)) (A000070 (n + 1))

end

end A098613.P9162810667372365

/-! ## A098613.P9619037338131249838

`A143161(4*n+1)/(A008683(A020484(n))-1)`
-/

namespace A098613.P9619037338131249838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143161 (4 * n + 1) : ℚ) / (A008683 (A020484 n).toNat - 1 : ℚ)

end

end A098613.P9619037338131249838

/-! ## A098613.P348166322582753111

`(A225853(A016813(n))/2)^A000041(C(2, n+2))`
-/

namespace A098613.P348166322582753111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A225853 (A016813 n).toNat : ℚ) / 2) ^ (A000041 (Nat.choose 2 (n + 2)) : ℤ)

end

end A098613.P348166322582753111

/-! ## A098613.P3470155111214004509

`A178333(A000096(n))+A225853(A016813(n))/2`
-/

namespace A098613.P3470155111214004509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178333 (A000096 n).toNat : ℚ) + (A225853 (A016813 n).toNat : ℚ) / 2

end

end A098613.P3470155111214004509

/-!
# A098614: Product of Fibonacci and Catalan numbers: a(n) = A000045(n+1)*A000108(n).

The programs for A098614, the canonical program `A098614.P7605428486748714001` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098614 has offset 0).

The definition of A098614 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)*A000108(n)` (program `A098614.P7605428486748714001`, by `A098614.P7605428486748714001.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098614.P7605428486748714001

`A000045(n+1)*A000108(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098614

/-- `A000045(n+1)*A000108(n)` -/
def P7605428486748714001.Spec : Prop :=
  ∀ n, P7605428486748714001.a n = A098614 n

theorem P7605428486748714001.correct : P7605428486748714001.Spec := by
  intro n
  simp only [A098614]

end A098614

/-! ## A098614.P3084168024761827684

`∑[A212804(n)]*A000108(n)`
-/

namespace A098614.P3084168024761827684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000108 n

end

end A098614.P3084168024761827684

namespace A098614

/-- `∑[A212804(n)]*A000108(n)` -/
def P3084168024761827684.Spec : Prop :=
  ∀ n, P3084168024761827684.a n = A098614 n

end A098614

/-! ## A098614.P11327843447906675339

`abs(A000045(n+1)*A168491(n))`
-/

namespace A098614.P11327843447906675339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000045 (n + 1) * A168491 n|

end

end A098614.P11327843447906675339

namespace A098614

/-- `abs(A000045(n+1)*A168491(n))` -/
def P11327843447906675339.Spec : Prop :=
  ∀ n, P11327843447906675339.a n = A098614 n

end A098614

/-! ## A098614.P5907084253894091972

`A000045(n+1)*A039599(∑[n])`
-/

namespace A098614.P5907084253894091972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A039599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098614.P5907084253894091972

namespace A098614

/-- `A000045(n+1)*A039599(∑[n])` -/
def P5907084253894091972.Spec : Prop :=
  ∀ n, P5907084253894091972.a n = A098614 n

end A098614

/-! ## A098614.P16463896795353140526

`A000045(n+1)*Δ[A155587(n)]`
-/

namespace A098614.P16463896795353140526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * (f1 (n + 1) - f1 n)

end

end A098614.P16463896795353140526

namespace A098614

/-- `A000045(n+1)*Δ[A155587(n)]` -/
def P16463896795353140526.Spec : Prop :=
  ∀ n, P16463896795353140526.a n = A098614 n

end A098614

/-! ## A098614.P11878075927552804607

`(A000071(n+1)+1)*A000108(n)`
-/

namespace A098614.P11878075927552804607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000071 (n + 1) + 1) * A000108 n

end

end A098614.P11878075927552804607

namespace A098614

/-- `(A000071(n+1)+1)*A000108(n)` -/
def P11878075927552804607.Spec : Prop :=
  ∀ n, P11878075927552804607.a n = A098614 n

theorem P11878075927552804607.correct : P11878075927552804607.Spec := by
  intro n
  simp only [A098614, Nat.add_sub_cancel, A098614.P11878075927552804607.a, A098614.P7605428486748714001.a, A000045, A000045.P11838749114346432762.a, A000071, A000071.P17543778731970887199.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098614

/-! ## A098614.P6961777204461683740

`A000045(n+1)*A120588(n+1)`
-/

namespace A098614.P6961777204461683740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A120588 (n + 1)

end

end A098614.P6961777204461683740

namespace A098614

/-- `A000045(n+1)*A120588(n+1)` -/
def P6961777204461683740.Spec : Prop :=
  ∀ n, P6961777204461683740.a n = A098614 n

end A098614

/-! ## A098614.P3701503064683216650

`A000045(n+1)*A028303(2*n)`
-/

namespace A098614.P3701503064683216650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A028303 (2 * n)

end

end A098614.P3701503064683216650

namespace A098614

/-- `A000045(n+1)*A028303(2*n)` -/
def P3701503064683216650.Spec : Prop :=
  ∀ n, P3701503064683216650.a n = A098614 n

end A098614

/-! ## A098614.P7492517552469153254

`A000045(n+1)*A028304(2*n)`
-/

namespace A098614.P7492517552469153254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A028304 (2 * n)

end

end A098614.P7492517552469153254

namespace A098614

/-- `A000045(n+1)*A028304(2*n)` -/
def P7492517552469153254.Spec : Prop :=
  ∀ n, P7492517552469153254.a n = A098614 n

end A098614

/-! ## A098614.P15982418914095029374

`A000045(n+1)*A057977(2*n)`
-/

namespace A098614.P15982418914095029374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A057977 (2 * n)

end

end A098614.P15982418914095029374

namespace A098614

/-- `A000045(n+1)*A057977(2*n)` -/
def P15982418914095029374.Spec : Prop :=
  ∀ n, P15982418914095029374.a n = A098614 n

end A098614

/-! ## A098614.P9376033726708756560

`A000045(n+1)*A126120(2*n)`
-/

namespace A098614.P9376033726708756560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A126120 (2 * n)

end

end A098614.P9376033726708756560

namespace A098614

/-- `A000045(n+1)*A126120(2*n)` -/
def P9376033726708756560.Spec : Prop :=
  ∀ n, P9376033726708756560.a n = A098614 n

end A098614

/-! ## A098614.P4710054668235823400

`A000045(n+1)*A126324(2*n)`
-/

namespace A098614.P4710054668235823400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A126324 (2 * n)

end

end A098614.P4710054668235823400

namespace A098614

/-- `A000045(n+1)*A126324(2*n)` -/
def P4710054668235823400.Spec : Prop :=
  ∀ n, P4710054668235823400.a n = A098614 n

end A098614

/-! ## A098614.P8563275876021086941

`A000045(n+1)*A208355(2*n)`
-/

namespace A098614.P8563275876021086941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A208355 (2 * n)

end

end A098614.P8563275876021086941

namespace A098614

/-- `A000045(n+1)*A208355(2*n)` -/
def P8563275876021086941.Spec : Prop :=
  ∀ n, P8563275876021086941.a n = A098614 n

end A098614

/-! ## A098614.P5270662874848712540

`A000108(n)*A000045(abs(xor(n, -1)))`
-/

namespace A098614.P5270662874848712540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000045 |Int.xor (n : ℤ) (-1)|.toNat

end

end A098614.P5270662874848712540

namespace A098614

/-- `A000108(n)*A000045(abs(xor(n, -1)))` -/
def P5270662874848712540.Spec : Prop :=
  ∀ n, P5270662874848712540.a n = A098614 n

end A098614

/-! ## A098614.P13348907438931675062

`A000108(n)*∑[A000045(abs(1-n))]`
-/

namespace A098614.P13348907438931675062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098614.P13348907438931675062

namespace A098614

/-- `A000108(n)*∑[A000045(abs(1-n))]` -/
def P13348907438931675062.Spec : Prop :=
  ∀ n, P13348907438931675062.a n = A098614 n

end A098614

/-! ## A098614.P10909933278019380017

`Δ[A166588(2*n)]*A000045(n+1)`
-/

namespace A098614.P10909933278019380017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166588 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000045 (n + 1)

end

end A098614.P10909933278019380017

namespace A098614

/-- `Δ[A166588(2*n)]*A000045(n+1)` -/
def P10909933278019380017.Spec : Prop :=
  ∀ n, P10909933278019380017.a n = A098614 n

end A098614

/-! ## A098614.P13433130245735380001

`A000045(n+1)*A089408(2*n+1)`
-/

namespace A098614.P13433130245735380001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A089408 (2 * n + 1)

end

end A098614.P13433130245735380001

namespace A098614

/-- `A000045(n+1)*A089408(2*n+1)` -/
def P13433130245735380001.Spec : Prop :=
  ∀ n, P13433130245735380001.a n = A098614 n

end A098614

/-! ## A098614.P7553774677881642014

`A000045(n+1)*A097331(2*n+1)`
-/

namespace A098614.P7553774677881642014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) * A097331 (2 * n + 1)

end

end A098614.P7553774677881642014

namespace A098614

/-- `A000045(n+1)*A097331(2*n+1)` -/
def P7553774677881642014.Spec : Prop :=
  ∀ n, P7553774677881642014.a n = A098614 n

end A098614

/-! ## A098614.P679726126723038214

`A000984(n)/(n+1)*A000045(n+1)`
-/

namespace A098614.P679726126723038214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (n + 1 : ℚ) * (A000045 (n + 1) : ℚ)

end

end A098614.P679726126723038214

namespace A098614

/-- `A000984(n)/(n+1)*A000045(n+1)` -/
def P679726126723038214.Spec : Prop :=
  ∀ n, P679726126723038214.a n = (A098614 n : ℚ)

end A098614

/-! ## A098614.P15483193272819123636

`(A263986(n)+A000045(n))*A000045(n+1)`
-/

namespace A098614.P15483193272819123636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A263986 n + A000045 n) * A000045 (n + 1)

end

end A098614.P15483193272819123636

namespace A098614

/-- `(A263986(n)+A000045(n))*A000045(n+1)` -/
def P15483193272819123636.Spec : Prop :=
  ∀ n, P15483193272819123636.a n = A098614 n

theorem P15483193272819123636.correct : P15483193272819123636.Spec := by
  intro n
  simp only [A098614, Nat.add_sub_cancel, A098614.P15483193272819123636.a, A098614.P7605428486748714001.a, A000045, A000045.P11838749114346432762.a, A000108, A000108.P17551949696095299361.a, A263986, A263986.P11008450882714767519.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098614

/-!
# A098615: G.f. A(x) satisfies: A(x*G(x)) = G(x), where G(x) is the g.f. for A098614(n) = Fibonacci(n+1)*Catalan(n).

The programs for A098615, there is no canonical definition to state claims against.
-/

/-! ## A098615.P8101699387221008434

`A126869(n)+A100095(n)`
-/

namespace A098615.P8101699387221008434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n + A100095 n

end

end A098615.P8101699387221008434

/-! ## A098615.P8408992812607466052

`A100095(n)+Δ[A100066(n)]`
-/

namespace A098615.P8408992812607466052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100095 n + (f1 (n + 1) - f1 n)

end

end A098615.P8408992812607466052

/-! ## A098615.P12959915869768350673

`A116391(abs(1-n))+A116391(n)`
-/

namespace A098615.P12959915869768350673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116391 |1 - (n : ℤ)|.toNat + A116391 n

end

end A098615.P12959915869768350673

/-! ## A098615.P12824234148610887622

`A100095(n)+A100098(n)-A100099(n)`
-/

namespace A098615.P12824234148610887622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100095 n + (A100098 n - A100099 n)

end

end A098615.P12824234148610887622

/-! ## A098615.P11558627179988943748

`A108044(∑[n])+A100095(n)`
-/

namespace A098615.P11558627179988943748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108044 (∑ j ∈ Finset.range (n + 1), f1 j) + A100095 n

end

end A098615.P11558627179988943748

/-! ## A098615.P5423089152603189174

`A116389(∑[n])+A100095(n)`
-/

namespace A098615.P5423089152603189174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116389 (∑ j ∈ Finset.range (n + 1), f1 j) + A100095 n

end

end A098615.P5423089152603189174

/-!
# A098616: Product of Pell and Catalan numbers: a(n) = A000129(n+1)*A000108(n).

The programs for A098616, the canonical program `A098616.P11974349818716749815` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098616 has offset 0).

The definition of A098616 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000129(n+1)*A000108(n)` (program `A098616.P11974349818716749815`, by `A098616.P11974349818716749815.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098616.P11974349818716749815

`A000129(n+1)*A000108(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098616

/-- `A000129(n+1)*A000108(n)` -/
def P11974349818716749815.Spec : Prop :=
  ∀ n, P11974349818716749815.a n = A098616 n

theorem P11974349818716749815.correct : P11974349818716749815.Spec := by
  intro n
  simp only [A098616]

end A098616

/-! ## A098616.P17296753541219154987

`A077985(n)*A168491(n)`
-/

namespace A098616.P17296753541219154987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077985 n * A168491 n

end

end A098616.P17296753541219154987

namespace A098616

/-- `A077985(n)*A168491(n)` -/
def P17296753541219154987.Spec : Prop :=
  ∀ n, P17296753541219154987.a n = A098616 n

end A098616

/-! ## A098616.P13826436279949435999

`abs(A000108(n)*A077985(n))`
-/

namespace A098616.P13826436279949435999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000108 n * A077985 n|

end

end A098616.P13826436279949435999

namespace A098616

/-- `abs(A000108(n)*A077985(n))` -/
def P13826436279949435999.Spec : Prop :=
  ∀ n, P13826436279949435999.a n = A098616 n

end A098616

/-! ## A098616.P3567272854704994401

`A000108(n)*∑[A001333(n)]`
-/

namespace A098616.P3567272854704994401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098616.P3567272854704994401

namespace A098616

/-- `A000108(n)*∑[A001333(n)]` -/
def P3567272854704994401.Spec : Prop :=
  ∀ n, P3567272854704994401.a n = A098616 n

end A098616

/-! ## A098616.P2312479091947863548

`A000108(n)*Δ[A024537(n)]`
-/

namespace A098616.P2312479091947863548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024537 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (f1 (n + 1) - f1 n)

end

end A098616.P2312479091947863548

namespace A098616

/-- `A000108(n)*Δ[A024537(n)]` -/
def P2312479091947863548.Spec : Prop :=
  ∀ n, P2312479091947863548.a n = A098616 n

end A098616

/-! ## A098616.P16087639653118380576

`A000108(n)*A215928(n+1)`
-/

namespace A098616.P16087639653118380576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A215928 (n + 1)

end

end A098616.P16087639653118380576

namespace A098616

/-- `A000108(n)*A215928(n+1)` -/
def P16087639653118380576.Spec : Prop :=
  ∀ n, P16087639653118380576.a n = A098616 n

end A098616

/-! ## A098616.P14340203661474152771

`A000108(n)*∑[abs(A123335(n))]`
-/

namespace A098616.P14340203661474152771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123335 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098616.P14340203661474152771

namespace A098616

/-- `A000108(n)*∑[abs(A123335(n))]` -/
def P14340203661474152771.Spec : Prop :=
  ∀ n, P14340203661474152771.a n = A098616 n

end A098616

/-! ## A098616.P1557057175591732792

`abs(A176981(n+2))*A000108(n)`
-/

namespace A098616.P1557057175591732792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 (n + 2)| * A000108 n

end

end A098616.P1557057175591732792

namespace A098616

/-- `abs(A176981(n+2))*A000108(n)` -/
def P1557057175591732792.Spec : Prop :=
  ∀ n, P1557057175591732792.a n = A098616 n

end A098616

/-! ## A098616.P3227792886284242276

`Δ[A171842(n+1)]*A000108(n)`
-/

namespace A098616.P3227792886284242276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000108 n

end

end A098616.P3227792886284242276

namespace A098616

/-- `Δ[A171842(n+1)]*A000108(n)` -/
def P3227792886284242276.Spec : Prop :=
  ∀ n, P3227792886284242276.a n = A098616 n

end A098616

/-! ## A098616.P17399299567454330075

`A000129(n+1)*A120588(n+1)`
-/

namespace A098616.P17399299567454330075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A120588 (n + 1)

end

end A098616.P17399299567454330075

namespace A098616

/-- `A000129(n+1)*A120588(n+1)` -/
def P17399299567454330075.Spec : Prop :=
  ∀ n, P17399299567454330075.a n = A098616 n

end A098616

/-! ## A098616.P7409558130076506732

`A120588(n+1)*A215928(n+1)`
-/

namespace A098616.P7409558130076506732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) * A215928 (n + 1)

end

end A098616.P7409558130076506732

namespace A098616

/-- `A120588(n+1)*A215928(n+1)` -/
def P7409558130076506732.Spec : Prop :=
  ∀ n, P7409558130076506732.a n = A098616 n

end A098616

/-! ## A098616.P3232151603886197355

`A126120(2*n)*A215928(n+1)`
-/

namespace A098616.P3232151603886197355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) * A215928 (n + 1)

end

end A098616.P3232151603886197355

namespace A098616

/-- `A126120(2*n)*A215928(n+1)` -/
def P3232151603886197355.Spec : Prop :=
  ∀ n, P3232151603886197355.a n = A098616 n

end A098616

/-! ## A098616.P10141207956164783586

`ceil(A068875(n)/2)*A215928(n+1)`
-/

namespace A098616.P10141207956164783586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A068875 n : ℚ) / 2⌉ * A215928 (n + 1)

end

end A098616.P10141207956164783586

namespace A098616

/-- `ceil(A068875(n)/2)*A215928(n+1)` -/
def P10141207956164783586.Spec : Prop :=
  ∀ n, P10141207956164783586.a n = A098616 n

end A098616

/-! ## A098616.P5501750108800451591

`Δ[A171842(n+1)]*A126120(2*n)`
-/

namespace A098616.P5501750108800451591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A126120 (2 * n)

end

end A098616.P5501750108800451591

namespace A098616

/-- `Δ[A171842(n+1)]*A126120(2*n)` -/
def P5501750108800451591.Spec : Prop :=
  ∀ n, P5501750108800451591.a n = A098616 n

end A098616

/-! ## A098616.P7180066898711223924

`A000129(n+1)*A089408(2*n+1)`
-/

namespace A098616.P7180066898711223924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 1) * A089408 (2 * n + 1)

end

end A098616.P7180066898711223924

namespace A098616

/-- `A000129(n+1)*A089408(2*n+1)` -/
def P7180066898711223924.Spec : Prop :=
  ∀ n, P7180066898711223924.a n = A098616 n

end A098616

/-! ## A098616.P11164460528672277625

`A000129(n+1)/(n+1)*A000984(n)`
-/

namespace A098616.P11164460528672277625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 (n + 1) : ℚ) / (n + 1 : ℚ) * (A000984 n : ℚ)

end

end A098616.P11164460528672277625

namespace A098616

/-- `A000129(n+1)/(n+1)*A000984(n)` -/
def P11164460528672277625.Spec : Prop :=
  ∀ n, P11164460528672277625.a n = (A098616 n : ℚ)

end A098616

/-! ## A098616.P12954221639783294265

`A098614(n)/A200539(n)*A200540(n)`
-/

namespace A098616.P12954221639783294265
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098614 n : ℚ) / (A200539 n : ℚ) * (A200540 n : ℚ)

end

end A098616.P12954221639783294265

namespace A098616

/-- `A098614(n)/A200539(n)*A200540(n)` -/
def P12954221639783294265.Spec : Prop :=
  ∀ n, P12954221639783294265.a n = (A098616 n : ℚ)

end A098616

/-! ## A098616.P5263763478150814137

`(A263986(n)+A000045(n))*Δ[A171842(n+1)]`
-/

namespace A098616.P5263763478150814137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A263986 n + A000045 n) * (f1 (n + 1) - f1 n)

end

end A098616.P5263763478150814137

namespace A098616

/-- `(A263986(n)+A000045(n))*Δ[A171842(n+1)]` -/
def P5263763478150814137.Spec : Prop :=
  ∀ n, P5263763478150814137.a n = A098616 n

end A098616

/-! ## A098616.P5994655074982443520

`(A001932(n+1)-A000045(n+1))*A000108(n)`
-/

namespace A098616.P5994655074982443520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001932 (n + 1) - A000045 (n + 1)) * A000108 n

end

end A098616.P5994655074982443520

namespace A098616

/-- `(A001932(n+1)-A000045(n+1))*A000108(n)` -/
def P5994655074982443520.Spec : Prop :=
  ∀ n, P5994655074982443520.a n = A098616 n

theorem P5994655074982443520.correct : P5994655074982443520.Spec := by
  intro n
  simp only [A098616, Nat.add_sub_cancel, A098616.P5994655074982443520.a, A098616.P11974349818716749815.a, A000045, A000045.P11838749114346432762.a, A000108, A000108.P17551949696095299361.a, A000129, A000129.P3563729298025900801.a, A001932, A001932.P5972703990113433722.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098616

/-! ## A098616.P1238805521710104404

`(A060405(n+1)-A000032(n+1))*A000108(n)`
-/

namespace A098616.P1238805521710104404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060405 (n + 1) - A000032 (n + 1)) * A000108 n

end

end A098616.P1238805521710104404

namespace A098616

/-- `(A060405(n+1)-A000032(n+1))*A000108(n)` -/
def P1238805521710104404.Spec : Prop :=
  ∀ n, P1238805521710104404.a n = A098616 n

end A098616

/-!
# A098617: G.f. A(x) satisfies: A(x*G(x)) = G(x), where G(x) is the g.f. for A098616(n) = Pell(n+1)*Catalan(n).

The programs for A098617, there is no canonical definition to state claims against.
-/

/-! ## A098617.P17532595191445339139

`A036453(n+1)*A305561(n)`
-/

namespace A098617.P17532595191445339139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1) * A305561 n

end

end A098617.P17532595191445339139

/-! ## A098617.P7179912907923077978

`A126869(n)+2*A100097(n)`
-/

namespace A098617.P7179912907923077978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 n + 2 * A100097 n

end

end A098617.P7179912907923077978

/-! ## A098617.P1817394063410922388

`(2-A000007(n))*A305561(n)`
-/

namespace A098617.P1817394063410922388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A305561 n

end

end A098617.P1817394063410922388

/-! ## A098617.P10836480991827411392

`A020639(A001316(n))*A305561(n)`
-/

namespace A098617.P10836480991827411392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001316 n).toNat * A305561 n

end

end A098617.P10836480991827411392

/-! ## A098617.P4650848579585875630

`A020639(A004011(n))*A305561(n)`
-/

namespace A098617.P4650848579585875630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004011 n).toNat * A305561 n

end

end A098617.P4650848579585875630

/-! ## A098617.P17208119717722324506

`A020639(A004277(n))*A305561(n)`
-/

namespace A098617.P17208119717722324506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A305561 n

end

end A098617.P17208119717722324506

/-! ## A098617.P6085328941479801430

`A020639(A008458(n))*A305561(n)`
-/

namespace A098617.P6085328941479801430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A008458 n).toNat * A305561 n

end

end A098617.P6085328941479801430

/-! ## A098617.P14404807488226065065

`A020639(A311002(n))*A305561(n)`
-/

namespace A098617.P14404807488226065065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A311002 n).toNat * A305561 n

end

end A098617.P14404807488226065065

/-! ## A098617.P5978405702692450502

`A020639(A006046(n)+1)*A305561(n)`
-/

namespace A098617.P5978405702692450502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006046 n + 1).toNat * A305561 n

end

end A098617.P5978405702692450502

/-! ## A098617.P12634222733506916999

`A020639(A006093(n+1))*A305561(n)`
-/

namespace A098617.P12634222733506916999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A006093 (n + 1)).toNat * A305561 n

end

end A098617.P12634222733506916999

/-! ## A098617.P12251853351149239429

`A000122(n²)*A305561(n)`
-/

namespace A098617.P12251853351149239429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2) * A305561 n

end

end A098617.P12251853351149239429

/-!
# A098618: Products of A007482 and Catalan numbers: a(n) = A007482(n)*A000108(n).

The programs for A098618, the canonical program `A098618.P4837945987705431865` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098618 has offset 0).

The definition of A098618 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098618.P4837945987705431865

`A007482(n)*A000108(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098618

/-- `A007482(n)*A000108(n)` -/
def P4837945987705431865.Spec : Prop :=
  ∀ n, P4837945987705431865.a n = A098618 n

theorem P4837945987705431865.correct : P4837945987705431865.Spec := by
  intro n
  simp only [A098618]

end A098618

/-! ## A098618.P11326927532022722627

`A007482(n)*A039599(∑[n])`
-/

namespace A098618.P11326927532022722627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n * A039599 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098618.P11326927532022722627

namespace A098618

/-- `A007482(n)*A039599(∑[n])` -/
def P11326927532022722627.Spec : Prop :=
  ∀ n, P11326927532022722627.a n = A098618 n

end A098618

/-! ## A098618.P5690198440107993690

`A000108(n)*∑[A104934(n)]`
-/

namespace A098618.P5690198440107993690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098618.P5690198440107993690

namespace A098618

/-- `A000108(n)*∑[A104934(n)]` -/
def P5690198440107993690.Spec : Prop :=
  ∀ n, P5690198440107993690.a n = A098618 n

end A098618

/-! ## A098618.P9447274743582869938

`Δ[A155587(n)]*A007482(n)`
-/

namespace A098618.P9447274743582869938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A007482 n

end

end A098618.P9447274743582869938

namespace A098618

/-- `Δ[A155587(n)]*A007482(n)` -/
def P9447274743582869938.Spec : Prop :=
  ∀ n, P9447274743582869938.a n = A098618 n

end A098618

/-! ## A098618.P7988726606992162804

`(A120304(n)+2)*A007482(n)`
-/

namespace A098618.P7988726606992162804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A120304 n + 2) * A007482 n

end

end A098618.P7988726606992162804

namespace A098618

/-- `(A120304(n)+2)*A007482(n)` -/
def P7988726606992162804.Spec : Prop :=
  ∀ n, P7988726606992162804.a n = A098618 n

theorem P7988726606992162804.correct : P7988726606992162804.Spec := by
  intro n
  simp only [A098618, Nat.add_sub_cancel, A098618.P7988726606992162804.a, A098618.P4837945987705431865.a, A000108, A000108.P17551949696095299361.a, A007482, A007482.P7309551570717837423.a, A120304, A120304.P16195813583233364787.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098618

/-! ## A098618.P16208063467549422583

`A000108(n)*A007455(2*n)`
-/

namespace A098618.P16208063467549422583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A007455 (2 * n)

end

end A098618.P16208063467549422583

namespace A098618

/-- `A000108(n)*A007455(2*n)` -/
def P16208063467549422583.Spec : Prop :=
  ∀ n, P16208063467549422583.a n = A098618 n

end A098618

/-! ## A098618.P14621666192075856400

`A007482(n)*A028304(2*n)`
-/

namespace A098618.P14621666192075856400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n * A028304 (2 * n)

end

end A098618.P14621666192075856400

namespace A098618

/-- `A007482(n)*A028304(2*n)` -/
def P14621666192075856400.Spec : Prop :=
  ∀ n, P14621666192075856400.a n = A098618 n

end A098618

/-! ## A098618.P13026439407164977239

`A007482(n)*A126120(2*n)`
-/

namespace A098618.P13026439407164977239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007482 n * A126120 (2 * n)

end

end A098618.P13026439407164977239

namespace A098618

/-- `A007482(n)*A126120(2*n)` -/
def P13026439407164977239.Spec : Prop :=
  ∀ n, P13026439407164977239.a n = A098618 n

end A098618

/-! ## A098618.P14235219532644292492

`∑[A104934(n)]*A126120(2*n)`
-/

namespace A098618.P14235219532644292492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A126120 (2 * n)

end

end A098618.P14235219532644292492

namespace A098618

/-- `∑[A104934(n)]*A126120(2*n)` -/
def P14235219532644292492.Spec : Prop :=
  ∀ n, P14235219532644292492.a n = A098618 n

end A098618

/-! ## A098618.P14437295044461034390

`A000984(n)/(n+1)*A007482(n)`
-/

namespace A098618.P14437295044461034390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (n + 1 : ℚ) * (A007482 n : ℚ)

end

end A098618.P14437295044461034390

namespace A098618

/-- `A000984(n)/(n+1)*A007482(n)` -/
def P14437295044461034390.Spec : Prop :=
  ∀ n, P14437295044461034390.a n = (A098618 n : ℚ)

end A098618

/-!
# A098619: G.f. A(x) satisfies: A(x*G098618(x)) = G098618(x), where G098618 is the g.f. for A098618(n) = A007482(n)*Catalan(n).

The programs for A098619, there is no canonical definition to state claims against.
-/

/-! ## A098619.P14819185499520723762

`or(1, A008620(A268394(2*n+1)))`
-/

namespace A098619.P14819185499520723762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A008620 (A268394 (2 * n + 1)).toNat)

end

end A098619.P14819185499520723762

/-! ## A098619.P579251987651691930

`or(A002487(n), A229301(A007583(n)))`
-/

namespace A098619.P579251987651691930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002487 n) (A229301 (A007583 n).toNat)

end

end A098619.P579251987651691930

/-!
# A098620: Consider the family of multigraphs enriched by the species of set partitions. Sequence gives number of those multigraphs with n labeled edges.

The programs for A098620, there is no canonical definition to state claims against.
-/

/-! ## A098620.P4652353166640842630

`A278055(A202059(n)*A213226(n))`
-/

namespace A098620.P4652353166640842630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278055 (A202059 n * A213226 n).toNat

end

end A098620.P4652353166640842630

/-! ## A098620.P16979341699525800287

`xor(A051777(A301334(n)), A331316(n))`
-/

namespace A098620.P16979341699525800287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A051777 (A301334 n).toNat) (A331316 n)

end

end A098620.P16979341699525800287

/-!
# A098621: Consider the family of multigraphs enriched by the species of partitions. Sequence gives number of those multigraphs with n loops and edges.

The programs for A098621, there is no canonical definition to state claims against.
-/

/-! ## A098621.P17748683303220378700

`A321341(A321385(n+1))`
-/

namespace A098621.P17748683303220378700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321341 (A321385 (n + 1)).toNat

end

end A098621.P17748683303220378700

/-!
# A098622: Consider the family of directed multigraphs enriched by the species of set partitions. Sequence gives number of those multigraphs with n labeled loops and arcs.

The programs for A098622, there is no canonical definition to state claims against.
-/

/-! ## A098622.P10932020392025829964

`A054519(A256016(n)-1+n)`
-/

namespace A098622.P10932020392025829964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (A256016 n - 1 + (n : ℤ)).toNat

end

end A098622.P10932020392025829964

/-!
# A098623: Consider the family of directed multigraphs enriched by the species of set partitions. Sequence gives number of those multigraphs with n labeled arcs.

The programs for A098623, there is no canonical definition to state claims against.
-/

/-! ## A098623.P122150503311998228

`A311427((n-1)*round(ϕ*a(n-1)))` with `a(0)=1`
-/

namespace A098623.P122150503311998228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A311427 (((n : ℤ) - 1) * SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat

end

end A098623.P122150503311998228

/-!
# A098624: Consider the family of multigraphs enriched by the species of derangements. Sequence gives number of those multigraphs with n labeled edges.

The programs for A098624, there is no canonical definition to state claims against.
-/

/-! ## A098624.P12936524550051045111

`A273943(A345969(n)+A345697(n))`
-/

namespace A098624.P12936524550051045111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A345969 n + A345697 n).toNat

end

end A098624.P12936524550051045111

/-! ## A098624.P4918314057236373194

`A345697(n)+A001281(A345969(n)-A345697(n))`
-/

namespace A098624.P4918314057236373194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345697 n + A001281 (A345969 n - A345697 n).toNat

end

end A098624.P4918314057236373194

/-! ## A098624.P13470824239255671201

`A345697(n)+A004525(A345969(n)-A345697(n))`
-/

namespace A098624.P13470824239255671201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345697 n + A004525 (A345969 n - A345697 n).toNat

end

end A098624.P13470824239255671201

/-!
# A098625: Consider the family of multigraphs enriched by the species of derangements. Sequence gives number of those multigraphs with n loops and edges.

The programs for A098625, there is no canonical definition to state claims against.
-/

/-! ## A098625.P11943669026424555111

`lcm(1-n, A130446(A173184(n)))`
-/

namespace A098625.P11943669026424555111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n : ℤ)) (A130446 (A173184 n).toNat)

end

end A098625.P11943669026424555111

/-! ## A098625.P703408890862697426

`abs(1-n)*A177226(A135081(n))`
-/

namespace A098625.P703408890862697426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A177226 (A135081 n).toNat

end

end A098625.P703408890862697426

/-!
# A098626: Consider the family of directed multigraphs enriched by the species of derangements. Sequence gives number of those multigraphs with n labeled loops and arcs.

The programs for A098626, there is no canonical definition to state claims against.
-/

/-! ## A098626.P13366738831609439584

`A195120(A190626(n+1)*A262951(3*n+2))`
-/

namespace A098626.P13366738831609439584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A190626 (n + 1) * A262951 (3 * n + 2)).toNat

end

end A098626.P13366738831609439584

/-!
# A098627: Consider the family of directed multigraphs enriched by the species of derangements. Sequence gives number of those multigraphs with n labeled arcs.

The programs for A098627, there is no canonical definition to state claims against.
-/

/-! ## A098627.P1756576101624664963

`A214832(a(n-2)^n)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A098627.P1756576101624664963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2] fun n a =>
  A214832 (a (n - 2) ^ n).toNat

end

end A098627.P1756576101624664963

/-! ## A098627.P6795857349588914480

`A269619((3*a(n-2))²)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A098627.P6795857349588914480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 2] fun n a =>
  A269619 ((3 * a (n - 2)) ^ 2).toNat

end

end A098627.P6795857349588914480

/-!
# A098628: Consider the family of multigraphs enriched by the species of parts. Sequence gives number of those multigraphs with n labeled edges.

The programs for A098628, there is no canonical definition to state claims against.
-/

/-! ## A098628.P15709366560932466622

`2^n*A020554(n)`
-/

namespace A098628.P15709366560932466622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A020554 n

end

end A098628.P15709366560932466622

/-! ## A098628.P970550094254552032

`abs(A020554(n)*A122803(n))`
-/

namespace A098628.P970550094254552032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020554 n * A122803 n|

end

end A098628.P970550094254552032

/-! ## A098628.P8292111183552001332

`A020554(n)*A038207(A000217(n))`
-/

namespace A098628.P8292111183552001332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020554 n * A038207 (A000217 n).toNat

end

end A098628.P8292111183552001332

/-! ## A098628.P11260442063948988211

`A020554(n)*A051145(A051147(n))`
-/

namespace A098628.P11260442063948988211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020554 n * A051145 (A051147 n).toNat

end

end A098628.P11260442063948988211

/-! ## A098628.P6747237019179265126

`A020554(n)*A028310(A000079(n))`
-/

namespace A098628.P6747237019179265126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020554 n * A028310 (A000079 n).toNat

end

end A098628.P6747237019179265126

/-!
# A098629: Consider the family of multigraphs enriched by the species of parts. Sequence gives number of those multigraphs with n loops and edges.

The programs for A098629, there is no canonical definition to state claims against.
-/

/-! ## A098629.P9936572071859435235

`2^n*A020555(n)`
-/

namespace A098629.P9936572071859435235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A020555 n

end

end A098629.P9936572071859435235

/-! ## A098629.P14344476235289082639

`A020555(n)*A118655(n+1)`
-/

namespace A098629.P14344476235289082639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020555 n * A118655 (n + 1)

end

end A098629.P14344476235289082639

/-! ## A098629.P1839387073327296621

`2^n*A346500(A046092(n))`
-/

namespace A098629.P1839387073327296621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A346500 (A046092 n).toNat

end

end A098629.P1839387073327296621

/-! ## A098629.P1088843061819209211

`record[A130321(n)]*A322765(∑[n]+n)`
-/

namespace A098629.P1088843061819209211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A322765 (∑ j ∈ Finset.range (n + 1), f2 j + n)

end

end A098629.P1088843061819209211

/-! ## A098629.P5591904304089579406

`A016116(2*n+3)*A020555(n)/2`
-/

namespace A098629.P5591904304089579406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (2 * n + 3) * A020555 n : ℚ) / 2

end

end A098629.P5591904304089579406

/-!
# A098630: Consider the family of directed multigraphs enriched by the species of parts. Sequence gives number of those multigraphs with n labeled loops and arcs.

The programs for A098630, there is no canonical definition to state claims against.
-/

/-! ## A098630.P10349856772804229506

`2^n*A000110(2*n)`
-/

namespace A098630.P10349856772804229506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000110 (2 * n)

end

end A098630.P10349856772804229506

/-! ## A098630.P2539966168212861485

`2^n*A020557(n)`
-/

namespace A098630.P2539966168212861485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A020557 n

end

end A098630.P2539966168212861485

/-! ## A098630.P11586600972200376126

`2^n*record[A292935(n)]`
-/

namespace A098630.P11586600972200376126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292935 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098630.P11586600972200376126

/-! ## A098630.P7824704676115410433

`abs(A020557(n)*A122803(n))`
-/

namespace A098630.P7824704676115410433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020557 n * A122803 n|

end

end A098630.P7824704676115410433

/-! ## A098630.P7897528636724213479

`record[A000110(n)*A077957(n)]`
-/

namespace A098630.P7897528636724213479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098630.P7897528636724213479

/-!
# A098631: Consider the family of directed multigraphs enriched by the species of parts. Sequence gives number of those multigraphs with n labeled arcs.

The programs for A098631, there is no canonical definition to state claims against.
-/

/-! ## A098631.P1525538453779806370

`2^n*A020556(n)`
-/

namespace A098631.P1525538453779806370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A020556 n

end

end A098631.P1525538453779806370

/-! ## A098631.P1304628851648681934

`lcm(A000079(n), A020556(n))`
-/

namespace A098631.P1304628851648681934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A020556 n)

end

end A098631.P1304628851648681934

/-! ## A098631.P10350499577398268298

`2^n*A095149(A046092(n))`
-/

namespace A098631.P10350499577398268298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A095149 (A046092 n).toNat

end

end A098631.P10350499577398268298

/-! ## A098631.P3996180353913015903

`A020556(n)*A038207(A000217(n))`
-/

namespace A098631.P3996180353913015903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020556 n * A038207 (A000217 n).toNat

end

end A098631.P3996180353913015903

/-! ## A098631.P5831819706838503710

`A000079(n)*A216078(A004277(n))`
-/

namespace A098631.P5831819706838503710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A216078 (A004277 n).toNat

end

end A098631.P5831819706838503710

/-!
# A098632: Consider the family of multigraphs enriched by the species of even sets. Sequence gives number of those multigraphs with 2n edges.

The programs for A098632, there is no canonical definition to state claims against.
-/

/-! ## A098632.P2606226901424180263

`A063037(A213644(n))+A000010(n+1)`
-/

namespace A098632.P2606226901424180263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063037 (A213644 n).toNat + A000010 (n + 1)

end

end A098632.P2606226901424180263

/-!
# A098636: Consider the family of multigraphs enriched by the species of odd sets. Sequence gives number of those multigraphs with n labeled edges.

The programs for A098636, there is no canonical definition to state claims against.
-/

/-! ## A098636.P10628412659365862057

`A163464(and(3, n+2)+9*a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A098636.P10628412659365862057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A163464 ((Nat.land 3 (n + 2) : ℤ) + 9 * a (n - 1)).toNat

end

end A098636.P10628412659365862057

/-! ## A098636.P7665492109980785255

`A336591(A000044(∑[n]))`
-/

namespace A098636.P7665492109980785255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336591 (A000044 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A098636.P7665492109980785255

/-!
# A098637: Consider the family of multigraphs enriched by the species of odd sets. Sequence gives number of those multigraphs with n loops and edges.

The programs for A098637, there is no canonical definition to state claims against.
-/

/-! ## A098637.P9521033262778174900

`A028310(A122789(∑[n+3]-1))`
-/

namespace A098637.P9521033262778174900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A122789 (∑ j ∈ Finset.range (n + 1), f1 j - 1)).toNat

end

end A098637.P9521033262778174900

/-! ## A098637.P12742201903509955099

`A122789(A292125(n+1)+A034856(n+1))`
-/

namespace A098637.P12742201903509955099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122789 (A292125 (n + 1) + A034856 (n + 1)).toNat

end

end A098637.P12742201903509955099

/-!
# A098638: Consider the family of directed multigraphs enriched by the species of odd sets. Sequence gives number of those multigraphs with n labeled loops and arcs.

The programs for A098638, there is no canonical definition to state claims against.
-/

/-! ## A098638.P9763398875368594632

`A377362(A395093(n))`
-/

namespace A098638.P9763398875368594632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377362 (A395093 n).toNat

end

end A098638.P9763398875368594632

/-!
# A098639: Consider the family of directed multigraphs enriched by the species of odd sets. Sequence gives number of those multigraphs with n labeled arcs.

The programs for A098639, there is no canonical definition to state claims against.
-/

/-! ## A098639.P13714774043846179802

`A302696(2*n*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A098639.P13714774043846179802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A302696 (2 * ((n : ℤ) * a (n - 1))).toNat

end

end A098639.P13714774043846179802

/-!
# A098640: a(n) = 2^p + 1 where p is the n-th prime.

The programs for A098640, the canonical program `A098640.P11497382748667525451` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098640 has offset 1).

The definition of A098640 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098640.P11497382748667525451

`2^A000040(n+1)+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098640

/-- `2^A000040(n+1)+1` -/
def P11497382748667525451.Spec : Prop :=
  ∀ n, P11497382748667525451.a n = (A098640 (n + 1) : ℚ)

end A098640

/-! ## A098640.P5812328459544890979

`2^p?[comp[n²]]+1`
-/

namespace A098640.P5812328459544890979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1

end

end A098640.P5812328459544890979

namespace A098640

/-- `2^p?[comp[n²]]+1` -/
def P5812328459544890979.Spec : Prop :=
  ∀ n, (P5812328459544890979.a n : ℤ) = A098640 (n + 1)

end A098640

/-! ## A098640.P16294690740834612812

`record[2^∑{p}[n+2, #]+1]`
-/

namespace A098640.P16294690740834612812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f2 n), p) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098640.P16294690740834612812

namespace A098640

/-- `record[2^∑{p}[n+2, #]+1]` -/
def P16294690740834612812.Spec : Prop :=
  ∀ n, (P16294690740834612812.a n : ℤ) = A098640 (n + 1)

end A098640

/-! ## A098640.P7396906167025988666

`record[∏{p}[n+2, 2^#]+1]`
-/

namespace A098640.P7396906167025988666
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 2 ^ p + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098640.P7396906167025988666

namespace A098640

/-- `record[∏{p}[n+2, 2^#]+1]` -/
def P7396906167025988666.Spec : Prop :=
  ∀ n, (P7396906167025988666.a n : ℤ) = A098640 (n + 1)

end A098640

/-! ## A098640.P413544538341165730

`Δ[A076793(n)]+1`
-/

namespace A098640.P413544538341165730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A098640.P413544538341165730

namespace A098640

/-- `Δ[A076793(n)]+1` -/
def P413544538341165730.Spec : Prop :=
  ∀ n, P413544538341165730.a n = A098640 (n + 1)

end A098640

/-! ## A098640.P11590907399181972896

`Δ[A320877(n)]+1`
-/

namespace A098640.P11590907399181972896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320877 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A098640.P11590907399181972896

namespace A098640

/-- `Δ[A320877(n)]+1` -/
def P11590907399181972896.Spec : Prop :=
  ∀ n, P11590907399181972896.a n = A098640 (n + 1)

end A098640

/-! ## A098640.P15217174347544867277

`A034785(n+1)+1`
-/

namespace A098640.P15217174347544867277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 1) + 1

end

end A098640.P15217174347544867277

namespace A098640

/-- `A034785(n+1)+1` -/
def P15217174347544867277.Spec : Prop :=
  ∀ n, P15217174347544867277.a n = A098640 (n + 1)

end A098640

/-! ## A098640.P13286729417944363521

`A001348(n+1)+2`
-/

namespace A098640.P13286729417944363521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (n + 1) + 2

end

end A098640.P13286729417944363521

namespace A098640

/-- `A001348(n+1)+2` -/
def P13286729417944363521.Spec : Prop :=
  ∀ n, P13286729417944363521.a n = A098640 (n + 1)

end A098640

/-! ## A098640.P15638031422385663026

`A241573(n+1)-2`
-/

namespace A098640.P15638031422385663026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241573 (n + 1) - 2

end

end A098640.P15638031422385663026

namespace A098640

/-- `A241573(n+1)-2` -/
def P15638031422385663026.Spec : Prop :=
  ∀ n, P15638031422385663026.a n = A098640 (n + 1)

end A098640

/-! ## A098640.P2644882200246426609

`A241676(n+1)+4`
-/

namespace A098640.P2644882200246426609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241676 (n + 1) + 4

end

end A098640.P2644882200246426609

namespace A098640

/-- `A241676(n+1)+4` -/
def P2644882200246426609.Spec : Prop :=
  ∀ n, P2644882200246426609.a n = A098640 (n + 1)

end A098640

/-!
# A098641: Number of partitions of the n-th Fibonacci number into Fibonacci numbers.

The programs for A098641, there is no canonical definition to state claims against.
-/

/-! ## A098641.P13831339491353644143

`A003107(A000045(n))`
-/

namespace A098641.P13831339491353644143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003107 (A000045 n).toNat

end

end A098641.P13831339491353644143

/-! ## A098641.P9621372644280289200

`A003107(sqrt(A007598(n)))`
-/

namespace A098641.P9621372644280289200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003107 (SequenceMachineLib.roundAway (Real.sqrt (A007598 n : ℝ))).toNat

end

end A098641.P9621372644280289200

/-! ## A098641.P2163005631989276450

`A003107(A212804(n+1))`
-/

namespace A098641.P2163005631989276450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003107 (A212804 (n + 1)).toNat

end

end A098641.P2163005631989276450

/-! ## A098641.P10608447456951809497

`A003107(A324969(n+1))`
-/

namespace A098641.P10608447456951809497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003107 (A324969 (n + 1)).toNat

end

end A098641.P10608447456951809497

/-! ## A098641.P15230128535883791542

`A003107(A022086(n)/3)`
-/

namespace A098641.P15230128535883791542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003107 (SequenceMachineLib.roundAway ((A022086 n : ℚ) / 3)).toNat

end

end A098641.P15230128535883791542

/-!
# A098642: Number of partitions of Fibonacci(n) into odd Fibonacci numbers.

The programs for A098642, there is no canonical definition to state claims against.
-/

/-! ## A098642.P16304622756912523183

`A002024(round(sqrt(A006247(n+1))))`
-/

namespace A098642.P16304622756912523183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.roundAway (Real.sqrt (A006247 (n + 1) : ℝ))).toNat

end

end A098642.P16304622756912523183

/-! ## A098642.P519340064978541128

`A262689(A014371(n)+A000045(n))`
-/

namespace A098642.P519340064978541128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A014371 n + A000045 n).toNat

end

end A098642.P519340064978541128

/-! ## A098642.P2141267871802681521

`A002995(n)-A079294(A002995(n))`
-/

namespace A098642.P2141267871802681521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002995 n - A079294 (A002995 n).toNat

end

end A098642.P2141267871802681521

/-! ## A098642.P7020246928566506414

`A241312(A000041(n)^A061358(n))`
-/

namespace A098642.P7020246928566506414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241312 (SequenceMachineLib.roundAway ((A000041 n : ℚ) ^ (A061358 n : ℤ))).toNat

end

end A098642.P7020246928566506414

/-! ## A098642.P11978820751459582313

`A374699(n)+A000196(A011784(n+1))`
-/

namespace A098642.P11978820751459582313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374699 n + A000196 (A011784 (n + 1)).toNat

end

end A098642.P11978820751459582313

/-!
# A098643: Number of partitions of Fibonacci(n) into even Fibonacci numbers.

The programs for A098643, there is no canonical definition to state claims against.
-/

/-! ## A098643.P10697849871580581322

`val(abs(1-2*n), 3)*A002723(A056939(n))`
-/

namespace A098643.P10697849871580581322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation |1 - (2 * n : ℤ)|.toNat 3 : ℤ) * A002723 (A056939 n).toNat

end

end A098643.P10697849871580581322

/-! ## A098643.P7634204430507818643

`C(n², 3)%(n+1)*A057940(A177510(n))`
-/

namespace A098643.P7634204430507818643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n ^ 2) 3 % (n + 1) : ℕ) : ℤ) * A057940 (A177510 n).toNat

end

end A098643.P7634204430507818643

/-! ## A098643.P7000095600036182484

`A175676(n+1)*A274168(A274156(n))`
-/

namespace A098643.P7000095600036182484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (n + 1) * A274168 (A274156 n).toNat

end

end A098643.P7000095600036182484

/-! ## A098643.P18038787185612505642

`lcm(A036263(A022184(n)), A175676(n+1))`
-/

namespace A098643.P18038787185612505642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036263 (A022184 n).toNat) (A175676 (n + 1))

end

end A098643.P18038787185612505642

/-! ## A098643.P15453089549637317071

`A007949(n+1)*A268507(A121535(n+1))`
-/

namespace A098643.P15453089549637317071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (n + 1) * A268507 (A121535 (n + 1)).toNat

end

end A098643.P15453089549637317071

/-!
# A098644: Number of partitions of Fibonacci(n) into Fibonacci numbers, some of which are odd and some of which are even.

The programs for A098644, there is no canonical definition to state claims against.
-/

/-! ## A098644.P3152193616753005725

`A335134(A172383(n))`
-/

namespace A098644.P3152193616753005725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335134 (A172383 n).toNat

end

end A098644.P3152193616753005725

/-! ## A098644.P13081250481931768752

`∑[∑[A037203(A075834(n))]]`
-/

namespace A098644.P13081250481931768752
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037203 (A075834 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098644.P13081250481931768752

/-! ## A098644.P18002512386173468136

`A065719(A071728(n)-gcd(n, ∑[n])²)`
-/

namespace A098644.P18002512386173468136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065719 (A071728 n - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ)).toNat

end

end A098644.P18002512386173468136

/-! ## A098644.P11018656644405517171

`A318263(A318271(2*a(n-1)-a(n-4)))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=3`
-/

namespace A098644.P11018656644405517171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1, 3] fun n a =>
  A318263 (A318271 (2 * a (n - 1) - a (n - 4)).toNat).toNat

end

end A098644.P11018656644405517171

/-!
# A098646: Trace sequence of 3 X 3 Krawtchouk matrix.

The programs for A098646, the canonical program `A098646.P10625766778071044480` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098646 has offset 0).

The definition of A098646 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098646.P10625766778071044480

`4*a(n-2)` with `a(0)=3, a(1)=2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098646

/-- `4*a(n-2)` -/
def P10625766778071044480.Spec : Prop :=
  ∀ n, (P10625766778071044480.a n : ℤ) = A098646 n

theorem P10625766778071044480.correct : P10625766778071044480.Spec := by
  intro n
  simp only [A098646]

end A098646

/-! ## A098646.P12643243979154275935

`(-2)^n+2*2^n`
-/

namespace A098646.P12643243979154275935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n + (2 * 2 ^ n : ℤ)

end

end A098646.P12643243979154275935

namespace A098646

/-- `(-2)^n+2*2^n` -/
def P12643243979154275935.Spec : Prop :=
  ∀ n, P12643243979154275935.a n = A098646 n

theorem P12643243979154275935.correct : P12643243979154275935.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A098646, Nat.add_sub_cancel, A098646.P12643243979154275935.a, A098646.P10625766778071044480.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A098646, Nat.add_sub_cancel, A098646.P12643243979154275935.a, A098646.P10625766778071044480.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A098646

/-! ## A098646.P8992890271171549863

`ogf((3+2x)/(1-4x^2))`
-/

namespace A098646.P8992890271171549863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2] [1, 0, -4] n

end

end A098646.P8992890271171549863

namespace A098646

/-- `ogf((3+2x)/(1-4x^2))` -/
def P8992890271171549863.Spec : Prop :=
  ∀ n, P8992890271171549863.a n = A098646 n

end A098646

/-! ## A098646.P10587030038603613914

`2^n*gcd(3, n%2)`
-/

namespace A098646.P10587030038603613914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * Nat.gcd 3 (n % 2)

end

end A098646.P10587030038603613914

namespace A098646

/-- `2^n*gcd(3, n%2)` -/
def P10587030038603613914.Spec : Prop :=
  ∀ n, (P10587030038603613914.a n : ℤ) = A098646 n

end A098646

/-! ## A098646.P169531330016065914

`lcm(2^n, a(n-2))` with `a(0)=3, a(1)=2`
-/

namespace A098646.P169531330016065914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n a =>
  Nat.lcm (2 ^ n) (a (n - 2))

end

end A098646.P169531330016065914

namespace A098646

/-- `lcm(2^n, a(n-2))` -/
def P169531330016065914.Spec : Prop :=
  ∀ n, (P169531330016065914.a n : ℤ) = A098646 n

end A098646

/-! ## A098646.P6340469919940531977

`a(n-2)/(1/2)²` with `a(0)=3, a(1)=2`
-/

namespace A098646.P6340469919940531977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A098646.P6340469919940531977

namespace A098646

/-- `a(n-2)/(1/2)²` -/
def P6340469919940531977.Spec : Prop :=
  ∀ n, P6340469919940531977.a n = (A098646 n : ℚ)

end A098646

/-! ## A098646.P5754485272754845975

`floor(a(n-2)/(1-3/4))` with `a(0)=3, a(1)=2`
-/

namespace A098646.P5754485272754845975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  ⌊(a (n - 2) : ℚ) / (1 - (3 : ℚ) / 4)⌋

end

end A098646.P5754485272754845975

namespace A098646

/-- `floor(a(n-2)/(1-3/4))` -/
def P5754485272754845975.Spec : Prop :=
  ∀ n, P5754485272754845975.a n = A098646 n

end A098646

/-! ## A098646.P4624517515377126920

`floor(a(n-2)+a(n-2)+a(n-2)+floor(a(n-2)))` with `a(0)=3, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A098646.P4624517515377126920
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n a =>
  a (n - 2) + (a (n - 2) + (a (n - 2) + a (n - 2)))

end

end A098646.P4624517515377126920

namespace A098646

/-- `floor(a(n-2)+a(n-2)+a(n-2)+floor(a(n-2)))` -/
def P4624517515377126920.Spec : Prop :=
  ∀ n, (P4624517515377126920.a n : ℤ) = A098646 n

theorem P4624517515377126920.correct : P4624517515377126920.Spec := by
  intro n
  simp only [A098646, Nat.add_sub_cancel, A098646.P4624517515377126920.a, A098646.P10625766778071044480.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A098646

/-! ## A098646.P13155030500987957791

`A308709(Δ[n²])`
-/

namespace A098646.P13155030500987957791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308709 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A098646.P13155030500987957791

namespace A098646

/-- `A308709(Δ[n²])` -/
def P13155030500987957791.Spec : Prop :=
  ∀ n, P13155030500987957791.a n = A098646 n

end A098646

/-! ## A098646.P5841038123491753805

`A134683(xor(1, n)+1)`
-/

namespace A098646.P5841038123491753805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134683 (Nat.xor 1 n + 1)

end

end A098646.P5841038123491753805

namespace A098646

/-- `A134683(xor(1, n)+1)` -/
def P5841038123491753805.Spec : Prop :=
  ∀ n, P5841038123491753805.a n = A098646 n

end A098646

/-! ## A098646.P17401658947344010812

`2^n*A176040(n)`
-/

namespace A098646.P17401658947344010812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A176040 n

end

end A098646.P17401658947344010812

namespace A098646

/-- `2^n*A176040(n)` -/
def P17401658947344010812.Spec : Prop :=
  ∀ n, P17401658947344010812.a n = A098646 n

end A098646

/-! ## A098646.P11864884273516044379

`abs(Δ[A096773(n+1)])`
-/

namespace A098646.P11864884273516044379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A098646.P11864884273516044379

namespace A098646

/-- `abs(Δ[A096773(n+1)])` -/
def P11864884273516044379.Spec : Prop :=
  ∀ n, P11864884273516044379.a n = A098646 n

end A098646

/-! ## A098646.P6340070682202623342

`abs(Δ[A106664(2*n)])`
-/

namespace A098646.P6340070682202623342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106664 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A098646.P6340070682202623342

namespace A098646

/-- `abs(Δ[A106664(2*n)])` -/
def P6340070682202623342.Spec : Prop :=
  ∀ n, P6340070682202623342.a n = A098646 n

end A098646

/-! ## A098646.P17894392611330920942

`abs(Δ[A009116(Δ[n²])])`
-/

namespace A098646.P17894392611330920942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A098646.P17894392611330920942

namespace A098646

/-- `abs(Δ[A009116(Δ[n²])])` -/
def P17894392611330920942.Spec : Prop :=
  ∀ n, P17894392611330920942.a n = A098646 n

end A098646

/-! ## A098646.P18093033818200988572

`abs(Δ[A146559(Δ[n²])])`
-/

namespace A098646.P18093033818200988572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A098646.P18093033818200988572

namespace A098646

/-- `abs(Δ[A146559(Δ[n²])])` -/
def P18093033818200988572.Spec : Prop :=
  ∀ n, P18093033818200988572.a n = A098646 n

end A098646

/-! ## A098646.P5771961080600929831

`abs(A078069(2*n+1))`
-/

namespace A098646.P5771961080600929831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078069 (2 * n + 1)|

end

end A098646.P5771961080600929831

namespace A098646

/-- `abs(A078069(2*n+1))` -/
def P5771961080600929831.Spec : Prop :=
  ∀ n, P5771961080600929831.a n = A098646 n

end A098646

/-! ## A098646.P13341388001714631955

`2^n*A010684(n+1)`
-/

namespace A098646.P13341388001714631955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A010684 (n + 1)

end

end A098646.P13341388001714631955

namespace A098646

/-- `2^n*A010684(n+1)` -/
def P13341388001714631955.Spec : Prop :=
  ∀ n, P13341388001714631955.a n = A098646 n

end A098646

/-! ## A098646.P2123258512029840192

`and(3, 2*n+3)*A000079(n)`
-/

namespace A098646.P2123258512029840192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 3 (2 * n + 3) : ℤ) * A000079 n

end

end A098646.P2123258512029840192

namespace A098646

/-- `and(3, 2*n+3)*A000079(n)` -/
def P2123258512029840192.Spec : Prop :=
  ∀ n, P2123258512029840192.a n = A098646 n

end A098646

/-! ## A098646.P1519859820706259771

`A133464(A166517(n))`
-/

namespace A098646.P1519859820706259771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133464 (A166517 n).toNat

end

end A098646.P1519859820706259771

namespace A098646

/-- `A133464(A166517(n))` -/
def P1519859820706259771.Spec : Prop :=
  ∀ n, P1519859820706259771.a n = A098646 n

end A098646

/-!
# A098647: Trace sequence associated to the 4 X 4 Krawtchouk matrix and its transpose.

The programs for A098647, the canonical program `A098647.P17253552758232740002` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098647 has offset 0).

The definition of A098647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098647.P17253552758232740002

`4^n*A098648(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098647

/-- `4^n*A098648(n)` -/
def P17253552758232740002.Spec : Prop :=
  ∀ n, P17253552758232740002.a n = A098647 n

theorem P17253552758232740002.correct : P17253552758232740002.Spec := by
  intro n
  simp only [A098647]

end A098647

/-! ## A098647.P10782614385618223279

`24*a(n-1)-64*a(n-2)` with `a(0)=1, a(1)=12`
-/

namespace A098647.P10782614385618223279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 12] fun n a =>
  24 * a (n - 1) - 64 * a (n - 2)

end

end A098647.P10782614385618223279

namespace A098647

/-- `24*a(n-1)-64*a(n-2)` -/
def P10782614385618223279.Spec : Prop :=
  ∀ n, P10782614385618223279.a n = A098647 n

end A098647

/-! ## A098647.P5167219671593689762

`((12+4*sqrt(5))^n+(12-4*sqrt(5))^n)/2`
-/

namespace A098647.P5167219671593689762
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((12 + 4 * Real.sqrt (5 : ℝ)) ^ n + (12 - 4 * Real.sqrt (5 : ℝ)) ^ n) / 2

end

end A098647.P5167219671593689762

namespace A098647

/-- `((12+4*sqrt(5))^n+(12-4*sqrt(5))^n)/2` -/
def P5167219671593689762.Spec : Prop :=
  ∀ n, P5167219671593689762.a n = (A098647 n : ℝ)

end A098647

/-! ## A098647.P13319964417715075069

`floor(A228843(n)/2)`
-/

namespace A098647.P13319964417715075069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A228843 n : ℚ) / 2⌋

end

end A098647.P13319964417715075069

namespace A098647

/-- `floor(A228843(n)/2)` -/
def P13319964417715075069.Spec : Prop :=
  ∀ n, P13319964417715075069.a n = A098647 n

end A098647

/-! ## A098647.P2553894552864433691

`A000079(n)*A099140(n)`
-/

namespace A098647.P2553894552864433691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A099140 n

end

end A098647.P2553894552864433691

namespace A098647

/-- `A000079(n)*A099140(n)` -/
def P2553894552864433691.Spec : Prop :=
  ∀ n, P2553894552864433691.a n = A098647 n

end A098647

/-! ## A098647.P13482085141680885396

`A000079(n)*A084057(2*n)`
-/

namespace A098647.P13482085141680885396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A084057 (2 * n)

end

end A098647.P13482085141680885396

namespace A098647

/-- `A000079(n)*A084057(2*n)` -/
def P13482085141680885396.Spec : Prop :=
  ∀ n, P13482085141680885396.a n = A098647 n

end A098647

/-! ## A098647.P1476240150586848427

`A000302(n)/2*A228842(n)`
-/

namespace A098647.P1476240150586848427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n : ℚ) / 2 * (A228842 n : ℚ)

end

end A098647.P1476240150586848427

namespace A098647

/-- `A000302(n)/2*A228842(n)` -/
def P1476240150586848427.Spec : Prop :=
  ∀ n, P1476240150586848427.a n = (A098647 n : ℚ)

theorem P1476240150586848427.correct : P1476240150586848427.Spec := by
  intro n
  simp only [A098647, Nat.add_sub_cancel, A098647.P1476240150586848427.a, A098647.P17253552758232740002.a, A000302, A000302.P5166485833484575275.a, A098648, A098648.P14011534020064153559.a, A228842, A228842.P15669196099016926791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098647

/-! ## A098647.P3052380158573995868

`A000079(n)²*A080878(2*n)`
-/

namespace A098647.P3052380158573995868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n ^ 2 * A080878 (2 * n)

end

end A098647.P3052380158573995868

namespace A098647

/-- `A000079(n)²*A080878(2*n)` -/
def P3052380158573995868.Spec : Prop :=
  ∀ n, P3052380158573995868.a n = A098647 n

end A098647

/-! ## A098647.P3035102269356577398

`A011782(n+1)*A084057(2*n)`
-/

namespace A098647.P3035102269356577398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A084057 (2 * n)

end

end A098647.P3035102269356577398

namespace A098647

/-- `A011782(n+1)*A084057(2*n)` -/
def P3035102269356577398.Spec : Prop :=
  ∀ n, P3035102269356577398.a n = A098647 n

end A098647

/-! ## A098647.P12624719145509432556

`A000079(2*n)*A080878(2*n)`
-/

namespace A098647.P12624719145509432556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n) * A080878 (2 * n)

end

end A098647.P12624719145509432556

namespace A098647

/-- `A000079(2*n)*A080878(2*n)` -/
def P12624719145509432556.Spec : Prop :=
  ∀ n, P12624719145509432556.a n = A098647 n

end A098647

/-!
# A098648: Expansion of (1-3*x)/(1 - 6*x + 4*x^2).

The programs for A098648, the canonical program `A098648.P14011534020064153559` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098648 has offset 0).

The definition of A098648 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x)/(1-6x+4x^2))` (program `A098648.P14011534020064153559`, by `A098648.P14011534020064153559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098648.P14011534020064153559

`ogf((1-3x)/(1-6x+4x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098648

/-- `ogf((1-3x)/(1-6x+4x^2))` -/
def P14011534020064153559.Spec : Prop :=
  ∀ n, P14011534020064153559.a n = A098648 n

theorem P14011534020064153559.correct : P14011534020064153559.Spec := by
  intro n
  simp only [A098648]

end A098648

/-! ## A098648.P5024197934470894999

`2*(3*a(n-1)-2*a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A098648.P5024197934470894999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * (3 * a (n - 1) - 2 * a (n - 2))

end

end A098648.P5024197934470894999

namespace A098648

/-- `2*(3*a(n-1)-2*a(n-2))` -/
def P5024197934470894999.Spec : Prop :=
  ∀ n, P5024197934470894999.a n = A098648 n

end A098648

/-! ## A098648.P2762213134559667720

`2^(n-1)*A005248(n)`
-/

namespace A098648.P2762213134559667720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A005248 n : ℚ)

end

end A098648.P2762213134559667720

namespace A098648

/-- `2^(n-1)*A005248(n)` -/
def P2762213134559667720.Spec : Prop :=
  ∀ n, P2762213134559667720.a n = (A098648 n : ℚ)

end A098648

/-! ## A098648.P4717206636265420740

`2^(n-1)*A000032(2*n)`
-/

namespace A098648.P4717206636265420740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000032 (2 * n) : ℚ)

end

end A098648.P4717206636265420740

namespace A098648

/-- `2^(n-1)*A000032(2*n)` -/
def P4717206636265420740.Spec : Prop :=
  ∀ n, P4717206636265420740.a n = (A098648 n : ℚ)

end A098648

/-! ## A098648.P18210863367063404996

`A084326(n+1)-3*A084326(n)`
-/

namespace A098648.P18210863367063404996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084326 (n + 1) - 3 * A084326 n

end

end A098648.P18210863367063404996

namespace A098648

/-- `A084326(n+1)-3*A084326(n)` -/
def P18210863367063404996.Spec : Prop :=
  ∀ n, P18210863367063404996.a n = A098648 n

end A098648

/-! ## A098648.P11032061529974929663

`ceil((2*ϕ²)^n/2)`
-/

namespace A098648.P11032061529974929663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * Real.goldenRatio ^ 2) ^ n / 2⌉

end

end A098648.P11032061529974929663

namespace A098648

/-- `ceil((2*ϕ²)^n/2)` -/
def P11032061529974929663.Spec : Prop :=
  ∀ n, P11032061529974929663.a n = A098648 n

end A098648

/-! ## A098648.P3637172829715446587

`2*floor(ϕ²*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A098648.P3637172829715446587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * ⌊Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌋

end

end A098648.P3637172829715446587

namespace A098648

/-- `2*floor(ϕ²*a(n-1))` -/
def P3637172829715446587.Spec : Prop :=
  ∀ n, P3637172829715446587.a n = A098648 n

end A098648

/-! ## A098648.P6682124059148137321

`2*floor(ϕ*ϕ*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A098648.P6682124059148137321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * ⌊Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ))⌋

end

end A098648.P6682124059148137321

namespace A098648

/-- `2*floor(ϕ*ϕ*a(n-1))` -/
def P6682124059148137321.Spec : Prop :=
  ∀ n, P6682124059148137321.a n = A098648 n

end A098648

/-! ## A098648.P14808395936561755356

`6*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A098648.P14808395936561755356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  6 * a (n - 1) - 4 * a (n - 2)

end

end A098648.P14808395936561755356

namespace A098648

/-- `6*a(n-1)-4*a(n-2)` -/
def P14808395936561755356.Spec : Prop :=
  ∀ n, P14808395936561755356.a n = A098648 n

end A098648

/-! ## A098648.P12625642769989393462

`A080878(2*n)`
-/

namespace A098648.P12625642769989393462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080878 (2 * n)

end

end A098648.P12625642769989393462

namespace A098648

/-- `A080878(2*n)` -/
def P12625642769989393462.Spec : Prop :=
  ∀ n, P12625642769989393462.a n = A098648 n

end A098648

/-! ## A098648.P1364641882654243619

`A228842(n)/2`
-/

namespace A098648.P1364641882654243619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228842 n : ℚ) / 2

end

end A098648.P1364641882654243619

namespace A098648

/-- `A228842(n)/2` -/
def P1364641882654243619.Spec : Prop :=
  ∀ n, P1364641882654243619.a n = (A098648 n : ℚ)

theorem P1364641882654243619.correct : P1364641882654243619.Spec := by
  intro n
  simp only [A098648, Nat.add_sub_cancel, A098648.P1364641882654243619.a, A098648.P14011534020064153559.a, A228842, A228842.P15669196099016926791.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098648

/-! ## A098648.P14936030652071962982

`A080877(Δ[n²])`
-/

namespace A098648.P14936030652071962982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080877 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A098648.P14936030652071962982

namespace A098648

/-- `A080877(Δ[n²])` -/
def P14936030652071962982.Spec : Prop :=
  ∀ n, P14936030652071962982.a n = A098648 n

end A098648

/-! ## A098648.P12224197022412892396

`A154626(n)+A084326(n)`
-/

namespace A098648.P12224197022412892396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154626 n + A084326 n

end

end A098648.P12224197022412892396

namespace A098648

/-- `A154626(n)+A084326(n)` -/
def P12224197022412892396.Spec : Prop :=
  ∀ n, P12224197022412892396.a n = A098648 n

end A098648

/-! ## A098648.P17007227718297045992

`lcm(A104537(n), A128052(n))`
-/

namespace A098648.P17007227718297045992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A104537 n) (A128052 n)

end

end A098648.P17007227718297045992

namespace A098648

/-- `lcm(A104537(n), A128052(n))` -/
def P17007227718297045992.Spec : Prop :=
  ∀ n, (P17007227718297045992.a n : ℤ) = A098648 n

end A098648

/-! ## A098648.P14888448336046492744

`lcm(A138230(n), A179132(n))`
-/

namespace A098648.P14888448336046492744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A138230 n) (A179132 n)

end

end A098648.P14888448336046492744

namespace A098648

/-- `lcm(A138230(n), A179132(n))` -/
def P14888448336046492744.Spec : Prop :=
  ∀ n, (P14888448336046492744.a n : ℤ) = A098648 n

end A098648

/-! ## A098648.P14264825187652154874

`A084326(n)+A080877(2*n)`
-/

namespace A098648.P14264825187652154874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084326 n + A080877 (2 * n)

end

end A098648.P14264825187652154874

namespace A098648

/-- `A084326(n)+A080877(2*n)` -/
def P14264825187652154874.Spec : Prop :=
  ∀ n, P14264825187652154874.a n = A098648 n

end A098648

/-! ## A098648.P6824397111022987060

`A011782(n)*A254729(2*n+1)`
-/

namespace A098648.P6824397111022987060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A254729 (2 * n + 1)

end

end A098648.P6824397111022987060

namespace A098648

/-- `A011782(n)*A254729(2*n+1)` -/
def P6824397111022987060.Spec : Prop :=
  ∀ n, P6824397111022987060.a n = A098648 n

end A098648

/-! ## A098648.P3655368846483249309

`A166444(n+1)*A178766(2*n+1)`
-/

namespace A098648.P3655368846483249309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 (n + 1) * A178766 (2 * n + 1)

end

end A098648.P3655368846483249309

namespace A098648

/-- `A166444(n+1)*A178766(2*n+1)` -/
def P3655368846483249309.Spec : Prop :=
  ∀ n, P3655368846483249309.a n = A098648 n

end A098648

/-! ## A098648.P6858815155709756006

`A000032(2*n)/2*A011782(n+1)`
-/

namespace A098648.P6858815155709756006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) : ℚ) / 2 * (A011782 (n + 1) : ℚ)

end

end A098648.P6858815155709756006

namespace A098648

/-- `A000032(2*n)/2*A011782(n+1)` -/
def P6858815155709756006.Spec : Prop :=
  ∀ n, P6858815155709756006.a n = (A098648 n : ℚ)

end A098648

/-! ## A098648.P3438003585612174429

`A000032(2*n)/2*A131577(n+1)`
-/

namespace A098648.P3438003585612174429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n) : ℚ) / 2 * (A131577 (n + 1) : ℚ)

end

end A098648.P3438003585612174429

namespace A098648

/-- `A000032(2*n)/2*A131577(n+1)` -/
def P3438003585612174429.Spec : Prop :=
  ∀ n, P3438003585612174429.a n = (A098648 n : ℚ)

end A098648

/-!
# A098649: Primes of the form 2(p+q) + 1, where p and q are consecutive primes.

The programs for A098649, the canonical program `A098649.P8053554610354284248` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098649 has offset 1).

The definition of A098649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098649.P8053554610354284248

`p?[2*A001043(n+1)+1]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A098649

/-- `p?[2*A001043(n+1)+1]` -/
def P8053554610354284248.Spec : Prop :=
  ∀ n, P8053554610354284248.a n = A098649 (n + 1)

theorem P8053554610354284248.correct : P8053554610354284248.Spec := by
  intro n
  simp only [A098649, Nat.add_sub_cancel]

end A098649

/-! ## A098649.P4531878732125495762

`p?[2*A011974(n+2)+1]`
-/

namespace A098649.P4531878732125495762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011974 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098649.P4531878732125495762

namespace A098649

/-- `p?[2*A011974(n+2)+1]` -/
def P4531878732125495762.Spec : Prop :=
  ∀ n, P4531878732125495762.a n = A098649 (n + 1)

end A098649

/-! ## A098649.P12435764260428223195

`p?[2*A092949(n+1)-1]`
-/

namespace A098649.P12435764260428223195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A092949 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098649.P12435764260428223195

namespace A098649

/-- `p?[2*A092949(n+1)-1]` -/
def P12435764260428223195.Spec : Prop :=
  ∀ n, P12435764260428223195.a n = A098649 (n + 1)

theorem P12435764260428223195.correct : P12435764260428223195.Spec := by
  intro n
  simp only [A098649, Nat.add_sub_cancel, A098649.P12435764260428223195.f1, A098649.P12435764260428223195.a, A098649.P8053554610354284248.f1, A098649.P8053554610354284248.a, A001043, A001043.P18269783162673735460.a, A092949, A092949.P1382492647621219255.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098649

/-! ## A098649.P14905557975209561753

`p?[A092949(n+1)+A001043(n+1)]`
-/

namespace A098649.P14905557975209561753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092949 (n + 1) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098649.P14905557975209561753

namespace A098649

/-- `p?[A092949(n+1)+A001043(n+1)]` -/
def P14905557975209561753.Spec : Prop :=
  ∀ n, P14905557975209561753.a n = A098649 (n + 1)

theorem P14905557975209561753.correct : P14905557975209561753.Spec := by
  intro n
  simp only [A098649, Nat.add_sub_cancel, A098649.P14905557975209561753.f1, A098649.P14905557975209561753.a, A098649.P8053554610354284248.f1, A098649.P8053554610354284248.a, A001043, A001043.P18269783162673735460.a, A092949, A092949.P1382492647621219255.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A098649

/-! ## A098649.P13281685789820872136

`p?[A100484(n+2)+A100484(n+1)+1]`
-/

namespace A098649.P13281685789820872136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2) + (A100484 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098649.P13281685789820872136

namespace A098649

/-- `p?[A100484(n+2)+A100484(n+1)+1]` -/
def P13281685789820872136.Spec : Prop :=
  ∀ n, P13281685789820872136.a n = A098649 (n + 1)

end A098649

/-! ## A098649.P12873070214898735445

`record[A001414(2*A001043(n+1)+1)]`
-/

namespace A098649.P12873070214898735445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (2 * A001043 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098649.P12873070214898735445

namespace A098649

/-- `record[A001414(2*A001043(n+1)+1)]` -/
def P12873070214898735445.Spec : Prop :=
  ∀ n, P12873070214898735445.a n = A098649 (n + 1)

end A098649

/-! ## A098649.P3980169106871065921

`record[A006530(2*A001043(n+1)+1)]`
-/

namespace A098649.P3980169106871065921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A001043 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098649.P3980169106871065921

namespace A098649

/-- `record[A006530(2*A001043(n+1)+1)]` -/
def P3980169106871065921.Spec : Prop :=
  ∀ n, P3980169106871065921.a n = A098649 (n + 1)

end A098649

/-! ## A098649.P866030098742450911

`record[A008472(2*A001043(n+1)+1)]`
-/

namespace A098649.P866030098742450911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (2 * A001043 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098649.P866030098742450911

namespace A098649

/-- `record[A008472(2*A001043(n+1)+1)]` -/
def P866030098742450911.Spec : Prop :=
  ∀ n, P866030098742450911.a n = A098649 (n + 1)

end A098649

/-! ## A098649.P2044257391745854902

`p?[2*A347136(A000040(n+1))+1]`
-/

namespace A098649.P2044257391745854902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A347136 (A000040 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098649.P2044257391745854902

namespace A098649

/-- `p?[2*A347136(A000040(n+1))+1]` -/
def P2044257391745854902.Spec : Prop :=
  ∀ n, P2044257391745854902.a n = A098649 (n + 1)

end A098649

/-! ## A098649.P18426720040378471525

`p?[A005408(A011974(n+2))]`
-/

namespace A098649.P18426720040378471525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A011974 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098649.P18426720040378471525

namespace A098649

/-- `p?[A005408(A011974(n+2))]` -/
def P18426720040378471525.Spec : Prop :=
  ∀ n, P18426720040378471525.a n = A098649 (n + 1)

end A098649

/-! ## A098649.P14826548434678921096

`p?[A004277(A001043(n+1))+1]`
-/

namespace A098649.P14826548434678921096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001043 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098649.P14826548434678921096

namespace A098649

/-- `p?[A004277(A001043(n+1))+1]` -/
def P14826548434678921096.Spec : Prop :=
  ∀ n, P14826548434678921096.a n = A098649 (n + 1)

end A098649

/-! ## A098649.P9162541514864917238

`p?[A004442(2*A001043(n+1))]`
-/

namespace A098649.P9162541514864917238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A001043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098649.P9162541514864917238

namespace A098649

/-- `p?[A004442(2*A001043(n+1))]` -/
def P9162541514864917238.Spec : Prop :=
  ∀ n, P9162541514864917238.a n = A098649 (n + 1)

end A098649

/-! ## A098649.P11562715607748963542

`p?[A049283(2*A001043(n+1))]`
-/

namespace A098649.P11562715607748963542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (2 * A001043 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A098649.P11562715607748963542

namespace A098649

/-- `p?[A049283(2*A001043(n+1))]` -/
def P11562715607748963542.Spec : Prop :=
  ∀ n, P11562715607748963542.a n = A098649 (n + 1)

end A098649

/-! ## A098649.P14300181421511228100

`record[A014963(2*A001043(n+1)+1)]`
-/

namespace A098649.P14300181421511228100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A001043 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098649.P14300181421511228100

namespace A098649

/-- `record[A014963(2*A001043(n+1)+1)]` -/
def P14300181421511228100.Spec : Prop :=
  ∀ n, P14300181421511228100.a n = A098649 (n + 1)

end A098649

/-!
# A098652: Records in A098650.

The programs for A098652, there is no canonical definition to state claims against.
-/

/-! ## A098652.P11353467027516667672

`record[A098650(n+1)]`
-/

namespace A098652.P11353467027516667672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098652.P11353467027516667672

/-! ## A098652.P1272171616008714124

`record[or(1, A098650(A028310(n)))]`
-/

namespace A098652.P1272171616008714124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A098650 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098652.P1272171616008714124

/-! ## A098652.P11388342831416148850

`record[or(1, A098650(A065033(n)))]`
-/

namespace A098652.P11388342831416148850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A098650 (A065033 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098652.P11388342831416148850

/-!
# A098653: Where A007535 reaches a record.

The programs for A098653, there is no canonical definition to state claims against.
-/

/-! ## A098653.P12058455803663318679

`eq[A151886(n+1), A275895(n)]`
-/

namespace A098653.P12058455803663318679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A098653.P12058455803663318679

/-!
# A098654: Records in A007535.

The programs for A098654, there is no canonical definition to state claims against.
-/

/-! ## A098654.P5460274796658095026

`record[A007535(n+1)]`
-/

namespace A098654.P5460274796658095026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098654.P5460274796658095026

/-! ## A098654.P3809268029436344770

`A007535(A098653(n+1))`
-/

namespace A098654.P3809268029436344770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007535 (A098653 (n + 1)).toNat

end

end A098654.P3809268029436344770

/-! ## A098654.P8760705620564565516

`record[A090085(n+1)]%A090071(n+2)`
-/

namespace A098654.P8760705620564565516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A090071 (n + 2))

end

end A098654.P8760705620564565516

/-! ## A098654.P18358448353966183388

`A090085(A098653(n+1))%A090071(n+2)`
-/

namespace A098654.P18358448353966183388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090085 (A098653 (n + 1)).toNat) (A090071 (n + 2))

end

end A098654.P18358448353966183388

/-!
# A098655: Trace sequence of 3 X 3 symmetric Krawtchouk matrix.

The programs for A098655, the canonical program `A098655.P17329735803037146297` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098655 has offset 0).

The definition of A098655 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098655.P17329735803037146297

`2*a(n-1)+8*a(n-2)-16*a(n-3)` with `a(0)=3, a(1)=2, a(2)=20`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098655

/-- `2*a(n-1)+8*a(n-2)-16*a(n-3)` -/
def P17329735803037146297.Spec : Prop :=
  ∀ n, P17329735803037146297.a n = A098655 n

theorem P17329735803037146297.correct : P17329735803037146297.Spec := by
  intro n
  simp only [A098655]

end A098655

/-! ## A098655.P11512232452093116642

`8*a(n-2)-2^n` with `a(0)=3, a(1)=2`
-/

namespace A098655.P11512232452093116642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  8 * a (n - 2) - (2 ^ n : ℤ)

end

end A098655.P11512232452093116642

namespace A098655

/-- `8*a(n-2)-2^n` -/
def P11512232452093116642.Spec : Prop :=
  ∀ n, P11512232452093116642.a n = A098655 n

end A098655

/-! ## A098655.P313525032667136848

`4*(2*a(n-2)-a(n-2)%a(n-1))` with `a(0)=3, a(1)=2`
-/

namespace A098655.P313525032667136848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  4 * (2 * a (n - 2) - Int.tmod (a (n - 2)) (a (n - 1)))

end

end A098655.P313525032667136848

namespace A098655

/-- `4*(2*a(n-2)-a(n-2)%a(n-1))` -/
def P313525032667136848.Spec : Prop :=
  ∀ n, P313525032667136848.a n = A098655 n

end A098655

/-! ## A098655.P13921072288331152581

`4*(2*a(n-2)-gcd(a(n-1), a(n-2)))` with `a(0)=3, a(1)=2`
-/

namespace A098655.P13921072288331152581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  4 * (2 * a (n - 2) - (Int.gcd (a (n - 1)) (a (n - 2)) : ℤ))

end

end A098655.P13921072288331152581

namespace A098655

/-- `4*(2*a(n-2)-gcd(a(n-1), a(n-2)))` -/
def P13921072288331152581.Spec : Prop :=
  ∀ n, P13921072288331152581.a n = A098655 n

end A098655

/-! ## A098655.P16424091546452049052

`4*(a(n-2)+and(a(n-2)-1, a(n-2)))` with `a(0)=3, a(1)=2`
-/

namespace A098655.P16424091546452049052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  4 * (a (n - 2) + Int.land (a (n - 2) - 1) (a (n - 2)))

end

end A098655.P16424091546452049052

namespace A098655

/-- `4*(a(n-2)+and(a(n-2)-1, a(n-2)))` -/
def P16424091546452049052.Spec : Prop :=
  ∀ n, P16424091546452049052.a n = A098655 n

end A098655

/-! ## A098655.P3216084126716594611

`2*(a(n-2)-xor(-(2*a(n-2)), a(n-2)))` with `a(0)=3, a(1)=2`
-/

namespace A098655.P3216084126716594611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n a =>
  2 * (a (n - 2) - Int.xor (-(2 * a (n - 2))) (a (n - 2)))

end

end A098655.P3216084126716594611

namespace A098655

/-- `2*(a(n-2)-xor(-(2*a(n-2)), a(n-2)))` -/
def P3216084126716594611.Spec : Prop :=
  ∀ n, P3216084126716594611.a n = A098655 n

end A098655

/-! ## A098655.P4101355472764943226

`A098657(n+2)/2`
-/

namespace A098655.P4101355472764943226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098657 (n + 2) : ℚ) / 2

end

end A098655.P4101355472764943226

namespace A098655

/-- `A098657(n+2)/2` -/
def P4101355472764943226.Spec : Prop :=
  ∀ n, P4101355472764943226.a n = (A098655 n : ℚ)

end A098655

/-! ## A098655.P15859880692143495570

`2^n*A052552(n+2)`
-/

namespace A098655.P15859880692143495570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A052552 (n + 2)

end

end A098655.P15859880692143495570

namespace A098655

/-- `2^n*A052552(n+2)` -/
def P15859880692143495570.Spec : Prop :=
  ∀ n, P15859880692143495570.a n = A098655 n

end A098655

/-! ## A098655.P319090254336242026

`2^n+abs(A077966(3*n+2))`
-/

namespace A098655.P319090254336242026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + |A077966 (3 * n + 2)|

end

end A098655.P319090254336242026

namespace A098655

/-- `2^n+abs(A077966(3*n+2))` -/
def P319090254336242026.Spec : Prop :=
  ∀ n, P319090254336242026.a n = A098655 n

end A098655

/-! ## A098655.P7576953050136235370

`(A077896(n)+2)*A016116(n)²`
-/

namespace A098655.P7576953050136235370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077896 n + 2) * A016116 n ^ 2

end

end A098655.P7576953050136235370

namespace A098655

/-- `(A077896(n)+2)*A016116(n)²` -/
def P7576953050136235370.Spec : Prop :=
  ∀ n, P7576953050136235370.a n = A098655 n

end A098655

/-! ## A098655.P10712653335638167771

`A131575(3*(n+1))+A000079(n)`
-/

namespace A098655.P10712653335638167771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (3 * (n + 1)) + A000079 n

end

end A098655.P10712653335638167771

namespace A098655

/-- `A131575(3*(n+1))+A000079(n)` -/
def P10712653335638167771.Spec : Prop :=
  ∀ n, P10712653335638167771.a n = A098655 n

end A098655

/-! ## A098655.P4004545421402465721

`A131575(3*(n+1))+record[A131575(n)]`
-/

namespace A098655.P4004545421402465721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (3 * (n + 1)) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098655.P4004545421402465721

namespace A098655

/-- `A131575(3*(n+1))+record[A131575(n)]` -/
def P4004545421402465721.Spec : Prop :=
  ∀ n, P4004545421402465721.a n = A098655 n

end A098655

/-! ## A098655.P3386882016928891731

`A077957(3*n+2)+record[A077957(n)]`
-/

namespace A098655.P3386882016928891731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (3 * n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098655.P3386882016928891731

namespace A098655

/-- `A077957(3*n+2)+record[A077957(n)]` -/
def P3386882016928891731.Spec : Prop :=
  ∀ n, P3386882016928891731.a n = A098655 n

end A098655

/-! ## A098655.P10790916506194297674

`A052552(n+2)*A228693(2*n+1)`
-/

namespace A098655.P10790916506194297674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 (n + 2) * A228693 (2 * n + 1)

end

end A098655.P10790916506194297674

namespace A098655

/-- `A052552(n+2)*A228693(2*n+1)` -/
def P10790916506194297674.Spec : Prop :=
  ∀ n, P10790916506194297674.a n = A098655 n

end A098655

/-! ## A098655.P17065059324200756798

`A131575(3*(n+1))+A016116(2*n)`
-/

namespace A098655.P17065059324200756798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (3 * (n + 1)) + A016116 (2 * n)

end

end A098655.P17065059324200756798

namespace A098655

/-- `A131575(3*(n+1))+A016116(2*n)` -/
def P17065059324200756798.Spec : Prop :=
  ∀ n, P17065059324200756798.a n = A098655 n

end A098655

/-! ## A098655.P14996724149300688206

`lcm(A000079(n+1), A051437(n+1))/2`
-/

namespace A098655.P14996724149300688206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 (n + 1)) (A051437 (n + 1)) : ℚ) / 2

end

end A098655.P14996724149300688206

namespace A098655

/-- `lcm(A000079(n+1), A051437(n+1))/2` -/
def P14996724149300688206.Spec : Prop :=
  ∀ n, P14996724149300688206.a n = (A098655 n : ℚ)

end A098655

/-! ## A098655.P9873016186604470846

`lcm(A072345(n+1)+1, A074323(2*n+1))`
-/

namespace A098655.P9873016186604470846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A072345 (n + 1) + 1) (A074323 (2 * n + 1))

end

end A098655.P9873016186604470846

namespace A098655

/-- `lcm(A072345(n+1)+1, A074323(2*n+1))` -/
def P9873016186604470846.Spec : Prop :=
  ∀ n, (P9873016186604470846.a n : ℤ) = A098655 n

end A098655

/-! ## A098655.P16606783059570278819

`A000079(n)+A000079(n+1)*A077957(n)`
-/

namespace A098655.P16606783059570278819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + A000079 (n + 1) * A077957 n

end

end A098655.P16606783059570278819

namespace A098655

/-- `A000079(n)+A000079(n+1)*A077957(n)` -/
def P16606783059570278819.Spec : Prop :=
  ∀ n, P16606783059570278819.a n = A098655 n

end A098655

/-! ## A098655.P3056139653969613695

`A135530(2*n+1)+A103424(n+1)*A135530(n+1)`
-/

namespace A098655.P3056139653969613695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (2 * n + 1) + A103424 (n + 1) * A135530 (n + 1)

end

end A098655.P3056139653969613695

namespace A098655

/-- `A135530(2*n+1)+A103424(n+1)*A135530(n+1)` -/
def P3056139653969613695.Spec : Prop :=
  ∀ n, P3056139653969613695.a n = A098655 n

end A098655

/-! ## A098655.P14770662049354095152

`A131575(2*n+1)+A131575(n+1)*A155559(n+1)`
-/

namespace A098655.P14770662049354095152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (2 * n + 1) + A131575 (n + 1) * A155559 (n + 1)

end

end A098655.P14770662049354095152

namespace A098655

/-- `A131575(2*n+1)+A131575(n+1)*A155559(n+1)` -/
def P14770662049354095152.Spec : Prop :=
  ∀ n, P14770662049354095152.a n = A098655 n

end A098655

/-!
# A098656: Expansion of x(1-4x)/((1-2x)(1-8x^2)).

The programs for A098656, the canonical program `A098656.P2498217825696655238` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098656 has offset 0).

The definition of A098656 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x-4x^2)/(1-2x-8x^2+16x^3))` (program `A098656.P2498217825696655238`, by `A098656.P2498217825696655238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098656.P2498217825696655238

`ogf((x-4x^2)/(1-2x-8x^2+16x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098656

/-- `ogf((x-4x^2)/(1-2x-8x^2+16x^3))` -/
def P2498217825696655238.Spec : Prop :=
  ∀ n, P2498217825696655238.a n = A098656 n

theorem P2498217825696655238.correct : P2498217825696655238.Spec := by
  intro n
  simp only [A098656]

end A098656

/-! ## A098656.P3567316492112024890

`2*a(n-1)+8*a(n-2)-16*a(n-3)` with `a(0)=0, a(1)=1, a(2)=-2`
-/

namespace A098656.P3567316492112024890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, -2] fun n a =>
  2 * a (n - 1) + 8 * a (n - 2) - 16 * a (n - 3)

end

end A098656.P3567316492112024890

namespace A098656

/-- `2*a(n-1)+8*a(n-2)-16*a(n-3)` -/
def P3567316492112024890.Spec : Prop :=
  ∀ n, P3567316492112024890.a n = A098656 n

end A098656

/-! ## A098656.P4934628529939944277

`2^(n-1)-2^(3*(n-1)/2)*(1+(-1)^n)/sqrt(2)`
-/

namespace A098656.P4934628529939944277
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - (2 : ℝ) ^ ((3 * ((n : ℤ) - 1) : ℚ) / 2 : ℝ) * (1 + (-1) ^ n : ℝ) / Real.sqrt (2 : ℝ)

end

end A098656.P4934628529939944277

namespace A098656

/-- `2^(n-1)-2^(3*(n-1)/2)*(1+(-1)^n)/sqrt(2)` -/
def P4934628529939944277.Spec : Prop :=
  ∀ n, P4934628529939944277.a n = (A098656 n : ℝ)

end A098656

/-! ## A098656.P6551403937698817045

`Δ[A098657(n)]%A098655(n)`
-/

namespace A098656.P6551403937698817045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A098655 n)

end

end A098656.P6551403937698817045

namespace A098656

/-- `Δ[A098657(n)]%A098655(n)` -/
def P6551403937698817045.Spec : Prop :=
  ∀ n, P6551403937698817045.a n = A098656 n

end A098656

/-! ## A098656.P614167074763575962

`(1-A077957(n))*A011782(n)`
-/

namespace A098656.P614167074763575962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A077957 n) * A011782 n

end

end A098656.P614167074763575962

namespace A098656

/-- `(1-A077957(n))*A011782(n)` -/
def P614167074763575962.Spec : Prop :=
  ∀ n, P614167074763575962.a n = A098656 n

end A098656

/-! ## A098656.P1240796789464989482

`(1-A077957(n))*A131577(n)`
-/

namespace A098656.P1240796789464989482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A077957 n) * A131577 n

end

end A098656.P1240796789464989482

namespace A098656

/-- `(1-A077957(n))*A131577(n)` -/
def P1240796789464989482.Spec : Prop :=
  ∀ n, P1240796789464989482.a n = A098656 n

end A098656

/-! ## A098656.P7742018044691333033

`(2-A052552(n))*A011782(n)`
-/

namespace A098656.P7742018044691333033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A052552 n) * A011782 n

end

end A098656.P7742018044691333033

namespace A098656

/-- `(2-A052552(n))*A011782(n)` -/
def P7742018044691333033.Spec : Prop :=
  ∀ n, P7742018044691333033.a n = A098656 n

end A098656

/-! ## A098656.P6671242555445220263

`(2-A052552(n))*A131577(n)`
-/

namespace A098656.P6671242555445220263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A052552 n) * A131577 n

end

end A098656.P6671242555445220263

namespace A098656

/-- `(2-A052552(n))*A131577(n)` -/
def P6671242555445220263.Spec : Prop :=
  ∀ n, P6671242555445220263.a n = A098656 n

end A098656

/-! ## A098656.P3835069521362329818

`(1-A131575(n+1))*A158780(2*n)`
-/

namespace A098656.P3835069521362329818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A131575 (n + 1)) * A158780 (2 * n)

end

end A098656.P3835069521362329818

namespace A098656

/-- `(1-A131575(n+1))*A158780(2*n)` -/
def P3835069521362329818.Spec : Prop :=
  ∀ n, P3835069521362329818.a n = A098656 n

end A098656

/-! ## A098656.P4550010097066944441

`(A000051(n)-A131575(3*n+1)-1)/2`
-/

namespace A098656.P4550010097066944441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000051 n - A131575 (3 * n + 1) - 1 : ℚ) / 2

end

end A098656.P4550010097066944441

namespace A098656

/-- `(A000051(n)-A131575(3*n+1)-1)/2` -/
def P4550010097066944441.Spec : Prop :=
  ∀ n, P4550010097066944441.a n = (A098656 n : ℚ)

end A098656

/-! ## A098656.P9271327436315789399

`(A005418(n+1)-A016116(n)²)*A016116(n)`
-/

namespace A098656.P9271327436315789399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005418 (n + 1) - A016116 n ^ 2) * A016116 n

end

end A098656.P9271327436315789399

namespace A098656

/-- `(A005418(n+1)-A016116(n)²)*A016116(n)` -/
def P9271327436315789399.Spec : Prop :=
  ∀ n, P9271327436315789399.a n = A098656 n

end A098656

/-!
# A098657: Expansion of (1-x-4x^2)/((1-2x)(1-8x^2)).

The programs for A098657, the canonical program `A098657.P5463414894226082357` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098657 has offset 0).

The definition of A098657 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-4x^2)/(1-2x-8x^2+16x^3))` (program `A098657.P5463414894226082357`, by `A098657.P5463414894226082357.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A098657.P9186369411362068826

`2^((3*n-4)/2)*(1+(-1)^n)+2^(n-1)`
-/

namespace A098657.P9186369411362068826
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (((3 * n : ℤ) - 4 : ℚ) / 2 : ℝ) * (1 + (-1) ^ n : ℝ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)

end

end A098657.P9186369411362068826

namespace A098657

/-- `2^((3*n-4)/2)*(1+(-1)^n)+2^(n-1)` -/
def P9186369411362068826.Spec : Prop :=
  ∀ n, P9186369411362068826.a n = (A098657 n : ℝ)

end A098657

/-! ## A098657.P5463414894226082357

`ogf((1-x-4x^2)/(1-2x-8x^2+16x^3))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098657

/-- `ogf((1-x-4x^2)/(1-2x-8x^2+16x^3))` -/
def P5463414894226082357.Spec : Prop :=
  ∀ n, P5463414894226082357.a n = A098657 n

theorem P5463414894226082357.correct : P5463414894226082357.Spec := by
  intro n
  simp only [A098657]

end A098657

/-! ## A098657.P2287606015935764903

`2^(n-1)*A052552(n)`
-/

namespace A098657.P2287606015935764903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A052552 n : ℚ)

end

end A098657.P2287606015935764903

namespace A098657

/-- `2^(n-1)*A052552(n)` -/
def P2287606015935764903.Spec : Prop :=
  ∀ n, P2287606015935764903.a n = (A098657 n : ℚ)

end A098657

/-! ## A098657.P1590680562879948519

`(A077957(n)+1)*2^(n-1)`
-/

namespace A098657.P1590680562879948519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077957 n + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A098657.P1590680562879948519

namespace A098657

/-- `(A077957(n)+1)*2^(n-1)` -/
def P1590680562879948519.Spec : Prop :=
  ∀ n, P1590680562879948519.a n = (A098657 n : ℚ)

end A098657

/-! ## A098657.P18220646067426478209

`lcm(ceil(2^(n-1)), Δ[A005418(n+1)])`
-/

namespace A098657.P18220646067426478209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ (f1 (n + 1) - f1 n)

end

end A098657.P18220646067426478209

namespace A098657

/-- `lcm(ceil(2^(n-1)), Δ[A005418(n+1)])` -/
def P18220646067426478209.Spec : Prop :=
  ∀ n, (P18220646067426478209.a n : ℤ) = A098657 n

end A098657

/-! ## A098657.P15446573695086171147

`lcm(Δ[A005418(n+1)], A011782(n))`
-/

namespace A098657.P15446573695086171147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A011782 n)

end

end A098657.P15446573695086171147

namespace A098657

/-- `lcm(Δ[A005418(n+1)], A011782(n))` -/
def P15446573695086171147.Spec : Prop :=
  ∀ n, (P15446573695086171147.a n : ℤ) = A098657 n

end A098657

/-! ## A098657.P583197730266142796

`lcm(Δ[A056326(n+1)], A117575(2*n))`
-/

namespace A098657.P583197730266142796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A117575 (2 * n))

end

end A098657.P583197730266142796

namespace A098657

/-- `lcm(Δ[A056326(n+1)], A117575(2*n))` -/
def P583197730266142796.Spec : Prop :=
  ∀ n, (P583197730266142796.a n : ℤ) = A098657 n

end A098657

/-! ## A098657.P15247527636452513792

`(A131575(3*n+1)+A000051(n)-1)/2`
-/

namespace A098657.P15247527636452513792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131575 (3 * n + 1) + A000051 n - 1 : ℚ) / 2

end

end A098657.P15247527636452513792

namespace A098657

/-- `(A131575(3*n+1)+A000051(n)-1)/2` -/
def P15247527636452513792.Spec : Prop :=
  ∀ n, P15247527636452513792.a n = (A098657 n : ℚ)

end A098657

/-! ## A098657.P2701227281352666164

`round((A131575(3*n+1)+A083318(n)-1)/2)`
-/

namespace A098657.P2701227281352666164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A131575 (3 * n + 1) + A083318 n - 1 : ℚ) / 2)

end

end A098657.P2701227281352666164

namespace A098657

/-- `round((A131575(3*n+1)+A083318(n)-1)/2)` -/
def P2701227281352666164.Spec : Prop :=
  ∀ n, P2701227281352666164.a n = A098657 n

end A098657

/-! ## A098657.P17781999112804649038

`gcd(A131572(n+1)*A137173(n+1), A137173(2*n))`
-/

namespace A098657.P17781999112804649038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131572 (n + 1) * A137173 (n + 1)) (A137173 (2 * n))

end

end A098657.P17781999112804649038

namespace A098657

/-- `gcd(A131572(n+1)*A137173(n+1), A137173(2*n))` -/
def P17781999112804649038.Spec : Prop :=
  ∀ n, (P17781999112804649038.a n : ℤ) = A098657 n

end A098657

/-!
# A098658: a(n) = 3^n*(2*n)!/(n!)^2.

The programs for A098658, the canonical program `A098658.P14881965061736061030` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098658 has offset 0).

The definition of A098658 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098658.P14881965061736061030

`3^n*A000984(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098658

/-- `3^n*A000984(n)` -/
def P14881965061736061030.Spec : Prop :=
  ∀ n, P14881965061736061030.a n = A098658 n

theorem P14881965061736061030.correct : P14881965061736061030.Spec := by
  intro n
  simp only [A098658]

end A098658

/-! ## A098658.P2492292936595096019

`3^n*(2*n)!/n!²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A098658.P2492292936595096019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ n * Nat.factorial (2 * n) : ℚ) / (Nat.factorial n ^ 2 : ℚ)

end

end A098658.P2492292936595096019

namespace A098658

/-- `3^n*(2*n)!/n!²` -/
def P2492292936595096019.Spec : Prop :=
  ∀ n, P2492292936595096019.a n = (A098658 n : ℚ)

end A098658

/-! ## A098658.P13143303829693043534

`3^n*C(2*n, n)`
-/

namespace A098658.P13143303829693043534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * Nat.choose (2 * n) n

end

end A098658.P13143303829693043534

namespace A098658

/-- `3^n*C(2*n, n)` -/
def P13143303829693043534.Spec : Prop :=
  ∀ n, (P13143303829693043534.a n : ℤ) = A098658 n

theorem P13143303829693043534.correct : P13143303829693043534.Spec := by
  intro n
  simp only [A098658, Nat.add_sub_cancel, A098658.P13143303829693043534.a, A098658.P14881965061736061030.a, A000984, A000984.P7946844122574426130.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A098658

/-! ## A098658.P1819542599255767977

`(12-6/n)*a(n-1)` with `a(0)=1`
-/

namespace A098658.P1819542599255767977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (12 - 6 / (n : ℚ)) * a (n - 1)

end

end A098658.P1819542599255767977

namespace A098658

/-- `(12-6/n)*a(n-1)` -/
def P1819542599255767977.Spec : Prop :=
  ∀ n, P1819542599255767977.a n = (A098658 n : ℚ)

end A098658

/-! ## A098658.P16496388449990333251

`3*2*(2-n^(-1))*a(n-1)` with `a(0)=1`
-/

namespace A098658.P16496388449990333251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (2 * ((2 - (n : ℚ) ^ (-1 : ℤ)) * a (n - 1)))

end

end A098658.P16496388449990333251

namespace A098658

/-- `3*2*(2-n^(-1))*a(n-1)` -/
def P16496388449990333251.Spec : Prop :=
  ∀ n, P16496388449990333251.a n = (A098658 n : ℚ)

end A098658

/-! ## A098658.P850482533075456792

`A386825(∑[n])`
-/

namespace A098658.P850482533075456792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386825 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098658.P850482533075456792

namespace A098658

/-- `A386825(∑[n])` -/
def P850482533075456792.Spec : Prop :=
  ∀ n, P850482533075456792.a n = A098658 n

end A098658

/-! ## A098658.P7363749556055625533

`record[A386825(n)]`
-/

namespace A098658.P7363749556055625533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098658.P7363749556055625533

namespace A098658

/-- `record[A386825(n)]` -/
def P7363749556055625533.Spec : Prop :=
  ∀ n, P7363749556055625533.a n = A098658 n

end A098658

/-! ## A098658.P8321969578926044391

`A098662(2*n)`
-/

namespace A098658.P8321969578926044391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098662 (2 * n)

end

end A098658.P8321969578926044391

namespace A098658

/-- `A098662(2*n)` -/
def P8321969578926044391.Spec : Prop :=
  ∀ n, P8321969578926044391.a n = A098658 n

end A098658

/-! ## A098658.P6221097695685743095

`A103978(2*n)`
-/

namespace A098658.P6221097695685743095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103978 (2 * n)

end

end A098658.P6221097695685743095

namespace A098658

/-- `A103978(2*n)` -/
def P6221097695685743095.Spec : Prop :=
  ∀ n, P6221097695685743095.a n = A098658 n

end A098658

/-! ## A098658.P1811060639689561516

`(n+1)*A005159(n)`
-/

namespace A098658.P1811060639689561516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005159 n

end

end A098658.P1811060639689561516

namespace A098658

/-- `(n+1)*A005159(n)` -/
def P1811060639689561516.Spec : Prop :=
  ∀ n, P1811060639689561516.a n = A098658 n

end A098658

/-!
# A098659: Expansion of 1/sqrt((1-7*x)^2-24*x^2).

The programs for A098659, there is no canonical definition to state claims against.
-/

/-! ## A098659.P14175842570634223250

`A307883(eq[6, A025581(n)])`
-/

namespace A098659.P14175842570634223250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307883 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098659.P14175842570634223250

/-! ## A098659.P14817514009486705644

`A307883(A000124(n+6)+n-1)`
-/

namespace A098659.P14817514009486705644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307883 (A000124 (n + 6) + ((n : ℤ) - 1)).toNat

end

end A098659.P14817514009486705644

/-! ## A098659.P8192151126848797347

`A307883(2*n+A000124(n+5)+5)`
-/

namespace A098659.P8192151126848797347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307883 ((2 * n : ℤ) + (A000124 (n + 5) + 5)).toNat

end

end A098659.P8192151126848797347

/-! ## A098659.P17294380588424538113

`A081580(∑[4*n])`
-/

namespace A098659.P17294380588424538113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081580 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098659.P17294380588424538113

/-! ## A098659.P1731419978999900217

`record[A081580(gcd(n, A114327(n)))]`
-/

namespace A098659.P1731419978999900217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081580 (Int.gcd (n : ℤ) (A114327 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098659.P1731419978999900217

/-!
# A098660: E.g.f. BesselI(0,2*sqrt(2)*x) + BesselI(1,2*sqrt(2)*x)/sqrt(2).

The programs for A098660, the canonical program `A098660.P2498005855463081149` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098660 has offset 0).

The definition of A098660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098660.P2498005855463081149

`C(n, floor(n/2))*2^floor(n/2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098660

/-- `C(n, floor(n/2))*2^floor(n/2)` -/
def P2498005855463081149.Spec : Prop :=
  ∀ n, P2498005855463081149.a n = (A098660 n : ℚ)

end A098660

/-! ## A098660.P16896726556558867989

`n*a(n-1)/∑[n%2]*gcd(2, n)` with `a(0)=1`
-/

namespace A098660.P16896726556558867989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) * (Nat.gcd 2 n : ℚ)

end

end A098660.P16896726556558867989

namespace A098660

/-- `n*a(n-1)/∑[n%2]*gcd(2, n)` -/
def P16896726556558867989.Spec : Prop :=
  ∀ n, P16896726556558867989.a n = (A098660 n : ℚ)

end A098660

/-! ## A098660.P15371019227599298164

`2^floor(n/2)*A001405(n)`
-/

namespace A098660.P15371019227599298164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (A001405 n : ℚ)

end

end A098660.P15371019227599298164

namespace A098660

/-- `2^floor(n/2)*A001405(n)` -/
def P15371019227599298164.Spec : Prop :=
  ∀ n, P15371019227599298164.a n = (A098660 n : ℚ)

end A098660

/-! ## A098660.P3924362219718317642

`abs(A126930(n))*2^floor(n/2)`
-/

namespace A098660.P3924362219718317642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A126930 n| : ℚ) * (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A098660.P3924362219718317642

namespace A098660

/-- `abs(A126930(n))*2^floor(n/2)` -/
def P3924362219718317642.Spec : Prop :=
  ∀ n, P3924362219718317642.a n = (A098660 n : ℚ)

end A098660

/-! ## A098660.P17778462134370194482

`n*a(n-1)/∑[n%2]*A040001(n)` with `a(0)=1`
-/

namespace A098660.P17778462134370194482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) * (A040001 n : ℚ)

end

end A098660.P17778462134370194482

namespace A098660

/-- `n*a(n-1)/∑[n%2]*A040001(n)` -/
def P17778462134370194482.Spec : Prop :=
  ∀ n, P17778462134370194482.a n = (A098660 n : ℚ)

end A098660

/-! ## A098660.P975133004559914521

`A001405(n)*A016116(n)`
-/

namespace A098660.P975133004559914521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A016116 n

end

end A098660.P975133004559914521

namespace A098660

/-- `A001405(n)*A016116(n)` -/
def P975133004559914521.Spec : Prop :=
  ∀ n, P975133004559914521.a n = A098660 n

end A098660

/-! ## A098660.P16729933104452862507

`abs(A016116(n)*A126930(n))`
-/

namespace A098660.P16729933104452862507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016116 n * A126930 n|

end

end A098660.P16729933104452862507

namespace A098660

/-- `abs(A016116(n)*A126930(n))` -/
def P16729933104452862507.Spec : Prop :=
  ∀ n, P16729933104452862507.a n = A098660 n

end A098660

/-! ## A098660.P13528648482224896245

`∏[A257088(n)/A065033(n)]`
-/

namespace A098660.P13528648482224896245
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257088 n : ℚ) / (A065033 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098660.P13528648482224896245

namespace A098660

/-- `∏[A257088(n)/A065033(n)]` -/
def P13528648482224896245.Spec : Prop :=
  ∀ n, P13528648482224896245.a n = (A098660 n : ℚ)

end A098660

/-! ## A098660.P10680740798655623994

`(A014495(n)+1)*A016116(n)`
-/

namespace A098660.P10680740798655623994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014495 n + 1) * A016116 n

end

end A098660.P10680740798655623994

namespace A098660

/-- `(A014495(n)+1)*A016116(n)` -/
def P10680740798655623994.Spec : Prop :=
  ∀ n, P10680740798655623994.a n = A098660 n

end A098660

/-! ## A098660.P12009615261472948235

`A016116(n)*A210736(n+1)`
-/

namespace A098660.P12009615261472948235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A210736 (n + 1)

end

end A098660.P12009615261472948235

namespace A098660

/-- `A016116(n)*A210736(n+1)` -/
def P12009615261472948235.Spec : Prop :=
  ∀ n, P12009615261472948235.a n = A098660 n

end A098660

/-! ## A098660.P483478219485905967

`A001405(n)*A158780(n+2)`
-/

namespace A098660.P483478219485905967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A158780 (n + 2)

end

end A098660.P483478219485905967

namespace A098660

/-- `A001405(n)*A158780(n+2)` -/
def P483478219485905967.Spec : Prop :=
  ∀ n, P483478219485905967.a n = A098660 n

end A098660

/-! ## A098660.P4923133093505849316

`A001405(n)*A011782(A008619(n))`
-/

namespace A098660.P4923133093505849316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A011782 (A008619 n).toNat

end

end A098660.P4923133093505849316

namespace A098660

/-- `A001405(n)*A011782(A008619(n))` -/
def P4923133093505849316.Spec : Prop :=
  ∀ n, P4923133093505849316.a n = A098660 n

end A098660

/-! ## A098660.P10304809569117890779

`A001405(n)*A045674(A052928(n)+1)`
-/

namespace A098660.P10304809569117890779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A045674 (A052928 n + 1).toNat

end

end A098660.P10304809569117890779

namespace A098660

/-- `A001405(n)*A045674(A052928(n)+1)` -/
def P10304809569117890779.Spec : Prop :=
  ∀ n, P10304809569117890779.a n = A098660 n

end A098660

/-! ## A098660.P4182605672766143883

`A011782(A008619(n))*A210736(n+1)`
-/

namespace A098660.P4182605672766143883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A008619 n).toNat * A210736 (n + 1)

end

end A098660.P4182605672766143883

namespace A098660

/-- `A011782(A008619(n))*A210736(n+1)` -/
def P4182605672766143883.Spec : Prop :=
  ∀ n, P4182605672766143883.a n = A098660 n

end A098660

/-! ## A098660.P15976562583916691766

`A045674(A109613(n))*A210736(n+1)`
-/

namespace A098660.P15976562583916691766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045674 (A109613 n).toNat * A210736 (n + 1)

end

end A098660.P15976562583916691766

namespace A098660

/-- `A045674(A109613(n))*A210736(n+1)` -/
def P15976562583916691766.Spec : Prop :=
  ∀ n, P15976562583916691766.a n = A098660 n

end A098660

/-! ## A098660.P7303571162127544599

`(A052955(n+1)-A052955(n))*A210736(n+1)`
-/

namespace A098660.P7303571162127544599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052955 (n + 1) - A052955 n) * A210736 (n + 1)

end

end A098660.P7303571162127544599

namespace A098660

/-- `(A052955(n+1)-A052955(n))*A210736(n+1)` -/
def P7303571162127544599.Spec : Prop :=
  ∀ n, P7303571162127544599.a n = A098660 n

end A098660

/-! ## A098660.P1856722432804461075

`A098664(n)/A016116(n)`
-/

namespace A098660.P1856722432804461075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098664 n : ℚ) / (A016116 n : ℚ)

end

end A098660.P1856722432804461075

namespace A098660

/-- `A098664(n)/A016116(n)` -/
def P1856722432804461075.Spec : Prop :=
  ∀ n, P1856722432804461075.a n = (A098660 n : ℚ)

end A098660

/-! ## A098660.P7020510558922296056

`A060899(n)/A060546(n)`
-/

namespace A098660.P7020510558922296056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060899 n : ℚ) / (A060546 n : ℚ)

end

end A098660.P7020510558922296056

namespace A098660

/-- `A060899(n)/A060546(n)` -/
def P7020510558922296056.Spec : Prop :=
  ∀ n, P7020510558922296056.a n = (A098660 n : ℚ)

end A098660

/-! ## A098660.P13569189964402228707

`A038207(A007590(n+1))`
-/

namespace A098660.P13569189964402228707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 (A007590 (n + 1)).toNat

end

end A098660.P13569189964402228707

namespace A098660

/-- `A038207(A007590(n+1))` -/
def P13569189964402228707.Spec : Prop :=
  ∀ n, P13569189964402228707.a n = A098660 n

end A098660

/-!
# A098661: a(n) = sum[i=1,n](i-th prime of Erdős-Selfridge classification i+). Cumulative sums of A101253.

The programs for A098661, there is no canonical definition to state claims against.
-/

/-! ## A098661.P15781187814875409212

`∑[A101253(n+1)]`
-/

namespace A098661.P15781187814875409212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098661.P15781187814875409212

/-! ## A098661.P10281273780673943112

`∑[record[A101253(A000119(n))]]`
-/

namespace A098661.P10281273780673943112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101253 (A000119 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098661.P10281273780673943112

/-! ## A098661.P10998500657212242232

`∑[record[A101253(A028920(n))]]`
-/

namespace A098661.P10998500657212242232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101253 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098661.P10998500657212242232

/-! ## A098661.P2144171705353441840

`∑[record[A101253(A059126(n))]]`
-/

namespace A098661.P2144171705353441840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101253 (A059126 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098661.P2144171705353441840

/-! ## A098661.P17558499756732652365

`∑[record[A101253(A106466(n))]]`
-/

namespace A098661.P17558499756732652365
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101253 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098661.P17558499756732652365

/-!
# A098662: Expansion of e.g.f. BesselI(0,2*sqrt(3)*x) + BesselI(1,2*sqrt(3)*x)/sqrt(3).

The programs for A098662, the canonical program `A098662.P3829456231515821937` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098662 has offset 0).

The definition of A098662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098662.P3829456231515821937

`C(n, floor(n/2))*3^floor(n/2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098662

/-- `C(n, floor(n/2))*3^floor(n/2)` -/
def P3829456231515821937.Spec : Prop :=
  ∀ n, P3829456231515821937.a n = (A098662 n : ℚ)

end A098662

/-! ## A098662.P9996605735921729172

`n*a(n-1)/∑[n%2]*gcd(3, n%2)` with `a(0)=1`
-/

namespace A098662.P9996605735921729172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) * (Nat.gcd 3 (n % 2) : ℚ)

end

end A098662.P9996605735921729172

namespace A098662

/-- `n*a(n-1)/∑[n%2]*gcd(3, n%2)` -/
def P9996605735921729172.Spec : Prop :=
  ∀ n, P9996605735921729172.a n = (A098662 n : ℚ)

end A098662

/-! ## A098662.P7867973163066554578

`n*a(n-1)/∑[n%2]*Δ[A014601(n)]` with `a(0)=1`
-/

namespace A098662.P7867973163066554578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) * (f2 (n + 1) - f2 n : ℚ)

end

end A098662.P7867973163066554578

namespace A098662

/-- `n*a(n-1)/∑[n%2]*Δ[A014601(n)]` -/
def P7867973163066554578.Spec : Prop :=
  ∀ n, P7867973163066554578.a n = (A098662 n : ℚ)

end A098662

/-! ## A098662.P9081003762605022394

`A001405(n)*A108411(n)`
-/

namespace A098662.P9081003762605022394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A108411 n

end

end A098662.P9081003762605022394

namespace A098662

/-- `A001405(n)*A108411(n)` -/
def P9081003762605022394.Spec : Prop :=
  ∀ n, P9081003762605022394.a n = A098662 n

end A098662

/-! ## A098662.P15199402940961041640

`Δ[A038754(n)]*A001405(n)`
-/

namespace A098662.P15199402940961041640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001405 n

end

end A098662.P15199402940961041640

namespace A098662

/-- `Δ[A038754(n)]*A001405(n)` -/
def P15199402940961041640.Spec : Prop :=
  ∀ n, P15199402940961041640.a n = A098662 n

end A098662

/-! ## A098662.P15276576273518922777

`A001405(n)*A111575(2*n)`
-/

namespace A098662.P15276576273518922777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A111575 (2 * n)

end

end A098662.P15276576273518922777

namespace A098662

/-- `A001405(n)*A111575(2*n)` -/
def P15276576273518922777.Spec : Prop :=
  ∀ n, P15276576273518922777.a n = A098662 n

end A098662

/-! ## A098662.P2068807071308452218

`(A014495(n)+1)*Δ[A038754(n)]`
-/

namespace A098662.P2068807071308452218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014495 n + 1) * (f1 (n + 1) - f1 n)

end

end A098662.P2068807071308452218

namespace A098662

/-- `(A014495(n)+1)*Δ[A038754(n)]` -/
def P2068807071308452218.Spec : Prop :=
  ∀ n, P2068807071308452218.a n = A098662 n

end A098662

/-! ## A098662.P16136068902935561059

`Δ[A062318(n+1)]*A001405(n)`
-/

namespace A098662.P16136068902935561059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062318 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001405 n

end

end A098662.P16136068902935561059

namespace A098662

/-- `Δ[A062318(n+1)]*A001405(n)` -/
def P16136068902935561059.Spec : Prop :=
  ∀ n, P16136068902935561059.a n = A098662 n

end A098662

/-! ## A098662.P6114980091656528342

`A000244(A004526(n))*A001405(n)`
-/

namespace A098662.P6114980091656528342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A004526 n).toNat * A001405 n

end

end A098662.P6114980091656528342

namespace A098662

/-- `A000244(A004526(n))*A001405(n)` -/
def P6114980091656528342.Spec : Prop :=
  ∀ n, P6114980091656528342.a n = A098662 n

end A098662

/-! ## A098662.P16047042664662623739

`(A038754(n+1)-A038754(n))*A001405(n)`
-/

namespace A098662.P16047042664662623739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A038754 (n + 1) - A038754 n) * A001405 n

end

end A098662.P16047042664662623739

namespace A098662

/-- `(A038754(n+1)-A038754(n))*A001405(n)` -/
def P16047042664662623739.Spec : Prop :=
  ∀ n, P16047042664662623739.a n = A098662 n

end A098662

/-! ## A098662.P11550472466786494665

`A027465(∑[char[2*n+1]+n])`
-/

namespace A098662.P11550472466786494665
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098662.P11550472466786494665

namespace A098662

/-- `A027465(∑[char[2*n+1]+n])` -/
def P11550472466786494665.Spec : Prop :=
  ∀ n, P11550472466786494665.a n = A098662 n

end A098662

/-! ## A098662.P2016784914540528361

`A013610(A004526(n)+∑[n])`
-/

namespace A098662.P2016784914540528361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A004526 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A098662.P2016784914540528361

namespace A098662

/-- `A013610(A004526(n)+∑[n])` -/
def P2016784914540528361.Spec : Prop :=
  ∀ n, P2016784914540528361.a n = A098662 n

end A098662

/-!
# A098663: a(n) = Sum_{k=0..n} binomial(n,k) * binomial(n+1,k+1) * 3^k.

The programs for A098663, the canonical program `A098663.P8436479234476084253` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098663 has offset 0).

The definition of A098663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098663.P3597624739841254138

`A255688(n+1)/3`
-/

namespace A098663.P3597624739841254138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255688 (n + 1) : ℚ) / 3

end

end A098663.P3597624739841254138

namespace A098663

/-- `A255688(n+1)/3` -/
def P3597624739841254138.Spec : Prop :=
  ∀ n, P3597624739841254138.a n = (A098663 n : ℚ)

end A098663

/-! ## A098663.P9178635991149073570

`Δ[∑[A255688(n)]/3]`
-/

namespace A098663.P9178635991149073570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255688 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098663.P9178635991149073570

namespace A098663

/-- `Δ[∑[A255688(n)]/3]` -/
def P9178635991149073570.Spec : Prop :=
  ∀ n, P9178635991149073570.a n = (A098663 n : ℚ)

end A098663

/-! ## A098663.P14384278745637722582

`A331323(n)/(n+1)`
-/

namespace A098663.P14384278745637722582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331323 n : ℚ) / (n + 1 : ℚ)

end

end A098663.P14384278745637722582

namespace A098663

/-- `A331323(n)/(n+1)` -/
def P14384278745637722582.Spec : Prop :=
  ∀ n, P14384278745637722582.a n = (A098663 n : ℚ)

end A098663

/-! ## A098663.P8436479234476084253

`floor(A331323(n)/A028242(2*n))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098663

/-- `floor(A331323(n)/A028242(2*n))` -/
def P8436479234476084253.Spec : Prop :=
  ∀ n, P8436479234476084253.a n = A098663 n

theorem P8436479234476084253.correct : P8436479234476084253.Spec := by
  intro n
  simp only [A098663]

end A098663

/-! ## A098663.P6809803962919483187

`floor(A331323(n)/(A005408(n)-n))`
-/

namespace A098663.P6809803962919483187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A331323 n : ℚ) / (A005408 n - (n : ℤ) : ℚ)⌋

end

end A098663.P6809803962919483187

namespace A098663

/-- `floor(A331323(n)/(A005408(n)-n))` -/
def P6809803962919483187.Spec : Prop :=
  ∀ n, P6809803962919483187.a n = A098663 n

end A098663

/-! ## A098663.P16458075477280997169

`or(A331323(n)/A028242(2*n), A000007(n))`
-/

namespace A098663.P16458075477280997169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A331323 n : ℚ) / (A028242 (2 * n) : ℚ))) (A000007 n)

end

end A098663.P16458075477280997169

namespace A098663

/-- `or(A331323(n)/A028242(2*n), A000007(n))` -/
def P16458075477280997169.Spec : Prop :=
  ∀ n, P16458075477280997169.a n = A098663 n

end A098663

/-! ## A098663.P196629953296382147

`A331323(n)/A028242(2*n)*A007318(∑[n])`
-/

namespace A098663.P196629953296382147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331323 n : ℚ) / (A028242 (2 * n) : ℚ) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A098663.P196629953296382147

namespace A098663

/-- `A331323(n)/A028242(2*n)*A007318(∑[n])` -/
def P196629953296382147.Spec : Prop :=
  ∀ n, P196629953296382147.a n = (A098663 n : ℚ)

end A098663

/-! ## A098663.P1023307530760398290

`A331511(Δ[A026054(n+3)])/(n+1)`
-/

namespace A098663.P1023307530760398290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331511 (f1 (n + 1) - f1 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A098663.P1023307530760398290

namespace A098663

/-- `A331511(Δ[A026054(n+3)])/(n+1)` -/
def P1023307530760398290.Spec : Prop :=
  ∀ n, P1023307530760398290.a n = (A098663 n : ℚ)

end A098663

/-!
# A098664: Expansion of e.g.f. BesselI(0,4*x)+BesselI(1,4*x)/2.

The programs for A098664, the canonical program `A098664.P8091699671904529425` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098664 has offset 0).

The definition of A098664 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098664.P8091699671904529425

`C(n, floor(n/2))*4^floor(n/2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A098664

/-- `C(n, floor(n/2))*4^floor(n/2)` -/
def P8091699671904529425.Spec : Prop :=
  ∀ n, P8091699671904529425.a n = (A098664 n : ℚ)

end A098664

/-! ## A098664.P2651681863803549891

`abs(A126930(n))*(2^floor(n/2))²`
-/

namespace A098664.P2651681863803549891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A126930 n| : ℚ) * ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) ^ 2

end

end A098664.P2651681863803549891

namespace A098664

/-- `abs(A126930(n))*(2^floor(n/2))²` -/
def P2651681863803549891.Spec : Prop :=
  ∀ n, P2651681863803549891.a n = (A098664 n : ℚ)

end A098664

/-! ## A098664.P589139308458321830

`A016116(n)*A098660(n)`
-/

namespace A098664.P589139308458321830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A098660 n

end

end A098664.P589139308458321830

namespace A098664

/-- `A016116(n)*A098660(n)` -/
def P589139308458321830.Spec : Prop :=
  ∀ n, P589139308458321830.a n = A098664 n

end A098664

/-! ## A098664.P16572577519980791304

`A001405(n)*A213173(n)`
-/

namespace A098664.P16572577519980791304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A213173 n

end

end A098664.P16572577519980791304

namespace A098664

/-- `A001405(n)*A213173(n)` -/
def P16572577519980791304.Spec : Prop :=
  ∀ n, P16572577519980791304.a n = A098664 n

end A098664

/-! ## A098664.P4022743475128924948

`A060899(n)/A000034(n)`
-/

namespace A098664.P4022743475128924948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060899 n : ℚ) / (A000034 n : ℚ)

end

end A098664.P4022743475128924948

namespace A098664

/-- `A060899(n)/A000034(n)` -/
def P4022743475128924948.Spec : Prop :=
  ∀ n, P4022743475128924948.a n = (A098664 n : ℚ)

end A098664

/-! ## A098664.P15900461244048032148

`A016116(n)²*A001405(n)`
-/

namespace A098664.P15900461244048032148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n ^ 2 * A001405 n

end

end A098664.P15900461244048032148

namespace A098664

/-- `A016116(n)²*A001405(n)` -/
def P15900461244048032148.Spec : Prop :=
  ∀ n, P15900461244048032148.a n = A098664 n

end A098664

/-! ## A098664.P18059789170371239800

`A001405(n)*A011782(or(1, n))`
-/

namespace A098664.P18059789170371239800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A011782 (Nat.lor 1 n)

end

end A098664.P18059789170371239800

namespace A098664

/-- `A001405(n)*A011782(or(1, n))` -/
def P18059789170371239800.Spec : Prop :=
  ∀ n, P18059789170371239800.a n = A098664 n

end A098664

/-! ## A098664.P724570182055510917

`abs(A016116(n)²*A126930(n))`
-/

namespace A098664.P724570182055510917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016116 n ^ 2 * A126930 n|

end

end A098664.P724570182055510917

namespace A098664

/-- `abs(A016116(n)²*A126930(n))` -/
def P724570182055510917.Spec : Prop :=
  ∀ n, P724570182055510917.a n = A098664 n

end A098664

/-! ## A098664.P6670176115815651712

`Δ[A052955(n)]²*A001405(n)`
-/

namespace A098664.P6670176115815651712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * A001405 n

end

end A098664.P6670176115815651712

namespace A098664

/-- `Δ[A052955(n)]²*A001405(n)` -/
def P6670176115815651712.Spec : Prop :=
  ∀ n, P6670176115815651712.a n = A098664 n

end A098664

/-! ## A098664.P12208964212631169792

`∏[A040001(n)²]*A001405(n)`
-/

namespace A098664.P12208964212631169792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A001405 n

end

end A098664.P12208964212631169792

namespace A098664

/-- `∏[A040001(n)²]*A001405(n)` -/
def P12208964212631169792.Spec : Prop :=
  ∀ n, P12208964212631169792.a n = A098664 n

end A098664

/-! ## A098664.P13026709224781308781

`(A014495(n)+1)*A016116(n)²`
-/

namespace A098664.P13026709224781308781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014495 n + 1) * A016116 n ^ 2

end

end A098664.P13026709224781308781

namespace A098664

/-- `(A014495(n)+1)*A016116(n)²` -/
def P13026709224781308781.Spec : Prop :=
  ∀ n, P13026709224781308781.a n = A098664 n

end A098664

/-! ## A098664.P3571742762470542642

`A117575(n+1)²*A001405(n)`
-/

namespace A098664.P3571742762470542642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117575 (n + 1) ^ 2 * A001405 n

end

end A098664.P3571742762470542642

namespace A098664

/-- `A117575(n+1)²*A001405(n)` -/
def P3571742762470542642.Spec : Prop :=
  ∀ n, P3571742762470542642.a n = A098664 n

end A098664

/-! ## A098664.P8118130018806500405

`A000302(A004526(n))*A001405(n)`
-/

namespace A098664.P8118130018806500405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A004526 n).toNat * A001405 n

end

end A098664.P8118130018806500405

namespace A098664

/-- `A000302(A004526(n))*A001405(n)` -/
def P8118130018806500405.Spec : Prop :=
  ∀ n, P8118130018806500405.a n = A098664 n

end A098664

/-! ## A098664.P7019113544577447024

`A000079(A052928(n))*A001405(n)`
-/

namespace A098664.P7019113544577447024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A052928 n).toNat * A001405 n

end

end A098664.P7019113544577447024

namespace A098664

/-- `A000079(A052928(n))*A001405(n)` -/
def P7019113544577447024.Spec : Prop :=
  ∀ n, P7019113544577447024.a n = A098664 n

end A098664

/-! ## A098664.P15854991421879581003

`A000079(A004526(n))*A098660(n)`
-/

namespace A098664.P15854991421879581003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004526 n).toNat * A098660 n

end

end A098664.P15854991421879581003

namespace A098664

/-- `A000079(A004526(n))*A098660(n)` -/
def P15854991421879581003.Spec : Prop :=
  ∀ n, P15854991421879581003.a n = A098664 n

end A098664

/-! ## A098664.P7015122107241472306

`A001405(n)*A011782(A109613(n))`
-/

namespace A098664.P7015122107241472306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A011782 (A109613 n).toNat

end

end A098664.P7015122107241472306

namespace A098664

/-- `A001405(n)*A011782(A109613(n))` -/
def P7015122107241472306.Spec : Prop :=
  ∀ n, P7015122107241472306.a n = A098664 n

end A098664

/-! ## A098664.P3776022559905292947

`A011782(A008619(n))²*A001405(n)`
-/

namespace A098664.P3776022559905292947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A008619 n).toNat ^ 2 * A001405 n

end

end A098664.P3776022559905292947

namespace A098664

/-- `A011782(A008619(n))²*A001405(n)` -/
def P3776022559905292947.Spec : Prop :=
  ∀ n, P3776022559905292947.a n = A098664 n

end A098664

/-! ## A098664.P11257331793588240821

`∏[A257088(A257088(n))/A065033(n)]`
-/

namespace A098664.P11257331793588240821
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257088 (A257088 n).toNat : ℚ) / (A065033 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098664.P11257331793588240821

namespace A098664

/-- `∏[A257088(A257088(n))/A065033(n)]` -/
def P11257331793588240821.Spec : Prop :=
  ∀ n, P11257331793588240821.a n = (A098664 n : ℚ)

end A098664

/-! ## A098664.P5301544408933600542

`A000079(2*A004526(n))*A001405(n)`
-/

namespace A098664.P5301544408933600542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * A004526 n).toNat * A001405 n

end

end A098664.P5301544408933600542

namespace A098664

/-- `A000079(2*A004526(n))*A001405(n)` -/
def P5301544408933600542.Spec : Prop :=
  ∀ n, P5301544408933600542.a n = A098664 n

end A098664

/-! ## A098664.P7785702203565083584

`A016116(n)*A210736(n+1)*A016116(n)`
-/

namespace A098664.P7785702203565083584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 n * A210736 (n + 1) * A016116 n

end

end A098664.P7785702203565083584

namespace A098664

/-- `A016116(n)*A210736(n+1)*A016116(n)` -/
def P7785702203565083584.Spec : Prop :=
  ∀ n, P7785702203565083584.a n = A098664 n

end A098664

/-!
# A098665: a(n) = Sum_{k = 0..n} binomial(n,k) * binomial(n+1,k+1) * 4^k.

The programs for A098665, the canonical program `A098665.P5673322444532997734` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098665 has offset 0).

The definition of A098665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A098665.P5673322444532997734

`A084771(n)+n*A059231(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A098665

/-- `A084771(n)+n*A059231(n)` -/
def P5673322444532997734.Spec : Prop :=
  ∀ n, P5673322444532997734.a n = A098665 n

theorem P5673322444532997734.correct : P5673322444532997734.Spec := by
  intro n
  simp only [A098665]

end A098665

/-! ## A098665.P6888895765293443070

`A084771(n)+n*A127846(n)`
-/

namespace A098665.P6888895765293443070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084771 n + (n : ℤ) * A127846 n

end

end A098665.P6888895765293443070

namespace A098665

/-- `A084771(n)+n*A127846(n)` -/
def P6888895765293443070.Spec : Prop :=
  ∀ n, P6888895765293443070.a n = A098665 n

end A098665

/-! ## A098665.P18227340626010501534

`A331511(eq[6, A025581(n)])/(n+1)`
-/

namespace A098665.P18227340626010501534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331511 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / (n + 1 : ℚ)

end

end A098665.P18227340626010501534

namespace A098665

/-- `A331511(eq[6, A025581(n)])/(n+1)` -/
def P18227340626010501534.Spec : Prop :=
  ∀ n, P18227340626010501534.a n = (A098665 n : ℚ)

end A098665

/-! ## A098665.P10532061239402661519

`∑[A035002(2*(n+1)²)]`
-/

namespace A098665.P10532061239402661519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035002 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098665.P10532061239402661519

namespace A098665

/-- `∑[A035002(2*(n+1)²)]` -/
def P10532061239402661519.Spec : Prop :=
  ∀ n, P10532061239402661519.a n = A098665 n

end A098665

/-! ## A098665.P17293135335589799404

`a(n-1)+A035002(2*(n+1)²)+A000038(n)` with `a(0)=1`
-/

namespace A098665.P17293135335589799404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A035002 (2 * (n + 1) ^ 2) + A000038 n)

end

end A098665.P17293135335589799404

namespace A098665

/-- `a(n-1)+A035002(2*(n+1)²)+A000038(n)` -/
def P17293135335589799404.Spec : Prop :=
  ∀ n, P17293135335589799404.a n = A098665 n

end A098665

/-!
# A098666: Triangle read by rows, 1<=k<=n: the n-th row contains the first n numbers after pairwise reducing all common divisors from left to right.

The programs for A098666, there is no canonical definition to state claims against.
-/

/-! ## A098666.P8791885835406291766

`A014963(A111377(n+1)%A096636(n))`
-/

namespace A098666.P8791885835406291766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.tmod (A111377 (n + 1)) (A096636 n)).toNat

end

end A098666.P8791885835406291766

/-! ## A098666.P17888039749427291651

`A014963(A111377(n+1))%A046002(n+1)`
-/

namespace A098666.P17888039749427291651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (A111377 (n + 1)).toNat) (A046002 (n + 1))

end

end A098666.P17888039749427291651

/-! ## A098666.P7778954411203029246

`gcd(A014963(A111377(n+1)), A156173(n+1))`
-/

namespace A098666.P7778954411203029246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014963 (A111377 (n + 1)).toNat) (A156173 (n + 1))

end

end A098666.P7778954411203029246

/-! ## A098666.P9491436498379930635

`A014963(A111377(n+1)^A133233(n))`
-/

namespace A098666.P9491436498379930635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A111377 (n + 1) : ℚ) ^ (A133233 n : ℤ))).toNat

end

end A098666.P9491436498379930635

/-! ## A098666.P12479296180015869915

`A014963(lcm(A076014(n+1), A111377(n+1)))`
-/

namespace A098666.P12479296180015869915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.lcm (A076014 (n + 1)) (A111377 (n + 1)))

end

end A098666.P12479296180015869915

/-!
# A098668: Right edge of triangle A098666.

The programs for A098668, there is no canonical definition to state claims against.
-/

/-! ## A098668.P18275506328073130142

`(n+2)/ratio[A131120(n+2)]`
-/

namespace A098668.P18275506328073130142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131120 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A098668.P18275506328073130142

/-! ## A098668.P5312028697129127065

`(n+1)/gcd(n+1, A008339(n+1))`
-/

namespace A098668.P5312028697129127065
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A008339 (n + 1)) : ℚ)

end

end A098668.P5312028697129127065

/-! ## A098668.P15351781107695982569

`lcm(A000027(n+1), A008339(n+1))/A008339(n+1)`
-/

namespace A098668.P15351781107695982569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A008339 (n + 1)) : ℚ) / (A008339 (n + 1) : ℚ)

end

end A098668.P15351781107695982569

/-! ## A098668.P925058269955288595

`A131120(n+2)/gcd(A131120(n+2), A131120(n+3))`
-/

namespace A098668.P925058269955288595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131120 (n + 2) : ℚ) / (Int.gcd (A131120 (n + 2)) (A131120 (n + 3)) : ℚ)

end

end A098668.P925058269955288595

/-! ## A098668.P1073988573503907488

`(n+1)/ratio[A131121(n+1)]`
-/

namespace A098668.P1073988573503907488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131121 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A098668.P1073988573503907488

/-!
# A098669: Numbers of rows ending with ones in triangle A098666.

The programs for A098669, there is no canonical definition to state claims against.
-/

/-! ## A098669.P9974033077022134812

`eq[1, A098668(n+1)]+1`
-/

namespace A098669.P9974033077022134812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098668 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A098669.P9974033077022134812

/-! ## A098669.P16061974213275041485

`record[(n+5)/A098668(n+5)]`
-/

namespace A098669.P16061974213275041485
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℚ) / (A098668 (n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098669.P16061974213275041485

/-! ## A098669.P15423749347805291039

`A015906(eq[1, A098668(n+1)])`
-/

namespace A098669.P15423749347805291039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A098669.P15423749347805291039

/-! ## A098669.P13270394154177993139

`A015906(lt[A098668(n+1), 2])`
-/

namespace A098669.P13270394154177993139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098668 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A098669.P13270394154177993139

/-! ## A098669.P12198234006932862384

`lt[A002266(A098668(n+1)+3), 1]+1`
-/

namespace A098669.P12198234006932862384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A098668 (n + 1) + 3).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A098669.P12198234006932862384

/-!
# A098670: Start with a(1) = 5. Construct slowest growing sequence such that the statement "the a(n)-th digit is a 2" is true for all n.

The programs for A098670, there is no canonical definition to state claims against.
-/

/-! ## A098670.P7704549352847909024

`A193513(A283251(n))+4`
-/

namespace A098670.P7704549352847909024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193513 (A283251 n).toNat + 4

end

end A098670.P7704549352847909024

/-!
# A098679: Total number of Latin cubes of order n.

The programs for A098679, there is no canonical definition to state claims against.
-/

/-! ## A098679.P14074006877834020804

`(n+1)!*n!*n!*A098843(n+1)`
-/

namespace A098679.P14074006877834020804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) * Nat.factorial n * Nat.factorial n : ℤ) * A098843 (n + 1)

end

end A098679.P14074006877834020804

/-!
# A098681: Largest prime smaller than n^n.

The programs for A098681, there is no canonical definition to state claims against.
-/

/-! ## A098681.P9660171702425056085

`(n+2)^(n+2)-A074967(n+2)`
-/

namespace A098681.P9660171702425056085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ (n + 2) : ℤ) - A074967 (n + 2)

end

end A098681.P9660171702425056085

/-! ## A098681.P15088082841873616611

`A098682(n+2)-A161503(n+2)`
-/

namespace A098681.P15088082841873616611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098682 (n + 2) - A161503 (n + 2)

end

end A098681.P15088082841873616611

/-! ## A098681.P9588852987945607217

`A098682(n+2)-(A074967(n+2)+A074966(n+2))`
-/

namespace A098681.P9588852987945607217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098682 (n + 2) - (A074967 (n + 2) + A074966 (n + 2))

end

end A098681.P9588852987945607217

/-! ## A098681.P8857597805392060112

`A000312(n+2)-(A161503(n+2)-A074966(n+2))`
-/

namespace A098681.P8857597805392060112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 2) - (A161503 (n + 2) - A074966 (n + 2))

end

end A098681.P8857597805392060112

/-! ## A098681.P3677634098964952148

`A000312(n+2)-(A074966(n+2)+2*A333184(n+2))`
-/

namespace A098681.P3677634098964952148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 2) - (A074966 (n + 2) + 2 * A333184 (n + 2))

end

end A098681.P3677634098964952148

/-! ## A098681.P12308643208707904925

`A000312(n+2)-(A333184(n+2)+A025480(A161503(n+2)))`
-/

namespace A098681.P12308643208707904925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (n + 2) - (A333184 (n + 2) + A025480 (A161503 (n + 2)).toNat)

end

end A098681.P12308643208707904925

/-!
# A098682: Smallest prime larger than n^n.

The programs for A098682, there is no canonical definition to state claims against.
-/

/-! ## A098682.P15852354741324855611

`A074966(n+1)+(n+1)^(n+1)`
-/

namespace A098682.P15852354741324855611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074966 (n + 1) + ((n + 1) ^ (n + 1) : ℤ)

end

end A098682.P15852354741324855611

/-! ## A098682.P493658748690638311

`A048861(n+1)+A074966(n+1)+1`
-/

namespace A098682.P493658748690638311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048861 (n + 1) + (A074966 (n + 1) + 1)

end

end A098682.P493658748690638311

/-! ## A098682.P8633203663727812857

`A048861(n+1)+A020725(A074966(n+1))`
-/

namespace A098682.P8633203663727812857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048861 (n + 1) + A020725 (A074966 (n + 1)).toNat

end

end A098682.P8633203663727812857

/-! ## A098682.P5999752574052645081

`A340959(A058331(n+1))`
-/

namespace A098682.P5999752574052645081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (A058331 (n + 1)).toNat

end

end A098682.P5999752574052645081

/-! ## A098682.P3827431443821785740

`A340959(A097080(n+1)+2*n)`
-/

namespace A098682.P3827431443821785740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340959 (A097080 (n + 1) + (2 * n : ℤ)).toNat

end

end A098682.P3827431443821785740

/-!
# A098683: Numbers n such that pi(n) = prime(d_1)*prime(d_2)*...*prime(d_k) where d_1 d_2 ... d_k is the decimal expansion of n.

The programs for A098683, there is no canonical definition to state claims against.
-/

/-! ## A098683.P660002820923646533

`A160040(A321292(n+1)+A029962(n+1))`
-/

namespace A098683.P660002820923646533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160040 (A321292 (n + 1) + A029962 (n + 1)).toNat

end

end A098683.P660002820923646533

/-!
# A098690: Number of solutions to rev(x^2)=rev(x)^2 below 10^n.

The programs for A098690, there is no canonical definition to state claims against.
-/

/-! ## A098690.P3240586412457070860

`∑[A098701(n+1)]`
-/

namespace A098690.P3240586412457070860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098690.P3240586412457070860

/-! ## A098690.P5039671102979328753

`A225301(n+1)-1`
-/

namespace A098690.P5039671102979328753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225301 (n + 1) - 1

end

end A098690.P5039671102979328753

/-! ## A098690.P8051395261440331895

`∑[record[A098701(A020986(n))]]`
-/

namespace A098690.P8051395261440331895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098701 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098690.P8051395261440331895

/-! ## A098690.P9010807612391237296

`∑[record[A098701(A028920(n))]]`
-/

namespace A098690.P9010807612391237296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098701 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098690.P9010807612391237296

/-! ## A098690.P16525589508034855313

`∑[record[A098701(A051340(n))]]`
-/

namespace A098690.P16525589508034855313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098701 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A098690.P16525589508034855313

/-!
# A098692: Main diagonal of array in A098691.

The programs for A098692, there is no canonical definition to state claims against.
-/

/-! ## A098692.P11943157128496336807

`A098691(A001844(n)+1)`
-/

namespace A098692.P11943157128496336807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098691 (A001844 n + 1).toNat

end

end A098692.P11943157128496336807

/-! ## A098692.P7486016605808839632

`A098691(A051890(n+1))`
-/

namespace A098692.P7486016605808839632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098691 (A051890 (n + 1)).toNat

end

end A098692.P7486016605808839632

/-! ## A098692.P2096143792164897808

`A098691(A046092(n)+2)`
-/

namespace A098692.P2096143792164897808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098691 (A046092 n + 2).toNat

end

end A098692.P2096143792164897808

/-! ## A098692.P17016497787074214782

`A098691(xor(3, A001844(n)))`
-/

namespace A098692.P17016497787074214782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098691 (Int.xor 3 (A001844 n)).toNat

end

end A098692.P17016497787074214782

/-! ## A098692.P13023968595140790210

`A098691(∑[A008574(n)]+1)`
-/

namespace A098692.P13023968595140790210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098691 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A098692.P13023968595140790210

/-!
# A098693: G.f.: q*Product_{k>0} (1-q^(12k))(1+q^(12k-1))(1+q^(12k-11))/(1-q^k).

The programs for A098693, there is no canonical definition to state claims against.
-/

/-! ## A098693.P15348979537330143440

`A122928(n+1)`
-/

namespace A098693.P15348979537330143440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122928 (n + 1)

end

end A098693.P15348979537330143440

/-! ## A098693.P1022768297748767253

`record[A122928(n)-char[1]]`
-/

namespace A098693.P1022768297748767253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122928 n - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A098693.P1022768297748767253

/-! ## A098693.P3432213279623671270

`A098151(n+1)/2`
-/

namespace A098693.P3432213279623671270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098151 (n + 1) : ℚ) / 2

end

end A098693.P3432213279623671270

/-! ## A098693.P4467671344895170546

`abs(A132002(n+1)/2)`
-/

namespace A098693.P4467671344895170546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A132002 (n + 1) : ℚ) / 2|

end

end A098693.P4467671344895170546

/-! ## A098693.P17948543832153328317

`A132002(n+1)/A280560(n+1)`
-/

namespace A098693.P17948543832153328317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132002 (n + 1) : ℚ) / (A280560 (n + 1) : ℚ)

end

end A098693.P17948543832153328317

/-! ## A098693.P18083273246762894728

`A033999(n+1)/2*A132002(n+1)`
-/

namespace A098693.P18083273246762894728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) : ℚ) / 2 * (A132002 (n + 1) : ℚ)

end

end A098693.P18083273246762894728

/-! ## A098693.P18023832540958391608

`gcd(A000038(n+1), A132002(n+1))/2`
-/

namespace A098693.P18023832540958391608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 (n + 1)) (A132002 (n + 1)) : ℚ) / 2

end

end A098693.P18023832540958391608

/-! ## A098693.P17166403736305596254

`lcm(A000034(n+1), A132002(n+1))/2`
-/

namespace A098693.P17166403736305596254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A132002 (n + 1)) : ℚ) / 2

end

end A098693.P17166403736305596254

/-! ## A098693.P12372652334427351230

`Δ[∑[A098151(n)]/2]`
-/

namespace A098693.P12372652334427351230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098151 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A098693.P12372652334427351230

/-! ## A098693.P7947237843874891355

`abs(A139139(3*(n+1)))`
-/

namespace A098693.P7947237843874891355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139139 (3 * (n + 1))|

end

end A098693.P7947237843874891355

/-! ## A098693.P2825163917492118707

`A122792(3*(n+1))/2`
-/

namespace A098693.P2825163917492118707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122792 (3 * (n + 1)) : ℚ) / 2

end

end A098693.P2825163917492118707

/-! ## A098693.P2117010234352663520

`A252706(3*(n+1))/2`
-/

namespace A098693.P2117010234352663520
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252706 (3 * (n + 1)) : ℚ) / 2

end

end A098693.P2117010234352663520

/-!
# A098694: Double-superfactorials: a(n) = Product_{k=1..n} (2k)!.

The programs for A098694, there is no canonical definition to state claims against.
-/

/-! ## A098694.P7307348873531224198

`A121835(n)*A006125(n+1)`
-/

namespace A098694.P7307348873531224198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121835 n * A006125 (n + 1)

end

end A098694.P7307348873531224198

/-! ## A098694.P604812570530806504

`∏[(2*n)!]`
-/

namespace A098694.P604812570530806504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098694.P604812570530806504

/-! ## A098694.P15869111254010460116

`∏[record[∏[xor(1, -n)]]]`
-/

namespace A098694.P15869111254010460116
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098694.P15869111254010460116

/-! ## A098694.P15094006782683258930

`∏[record[(n%4+n)!]]`
-/

namespace A098694.P15094006782683258930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 4 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098694.P15094006782683258930

/-! ## A098694.P11321072185385238052

`∏[record[and(n, n+1)!]]`
-/

namespace A098694.P11321072185385238052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land n (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098694.P11321072185385238052

/-!
# A098695: a(n) = 2^(n(n-1)/2) * Product_{k=1..n} k!.

The programs for A098695, the canonical program `A098695.P3947211978106811316` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A098695 has offset 0).

The definition of A098695 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A098695.P3947211978106811316

`A006125(n)*A000178(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A098695

/-- `A006125(n)*A000178(n)` -/
def P3947211978106811316.Spec : Prop :=
  ∀ n, P3947211978106811316.a n = A098695 n

theorem P3947211978106811316.correct : P3947211978106811316.Spec := by
  intro n
  simp only [A098695]

end A098695

/-! ## A098695.P11577547705973135220

`∏[∏[(2*n)^floor(atan(n))]]`
-/

namespace A098695.P11577547705973135220
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098695.P11577547705973135220

namespace A098695

/-- `∏[∏[(2*n)^floor(atan(n))]]` -/
def P11577547705973135220.Spec : Prop :=
  ∀ n, P11577547705973135220.a n = (A098695 n : ℚ)

end A098695

/-! ## A098695.P13914693926116201388

`∏[ceil(2^(n-1)*n!)]`
-/

namespace A098695.P13914693926116201388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098695.P13914693926116201388

namespace A098695

/-- `∏[ceil(2^(n-1)*n!)]` -/
def P13914693926116201388.Spec : Prop :=
  ∀ n, P13914693926116201388.a n = A098695 n

end A098695

/-! ## A098695.P3165695227255747239

`∏[round(2^(n-1)*n!)]`
-/

namespace A098695.P3165695227255747239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial n : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098695.P3165695227255747239

namespace A098695

/-- `∏[round(2^(n-1)*n!)]` -/
def P3165695227255747239.Spec : Prop :=
  ∀ n, P3165695227255747239.a n = A098695 n

end A098695

/-! ## A098695.P14695147217768554293

`∏[ceil(2^n*n!/2)]`
-/

namespace A098695.P14695147217768554293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 ^ n * Nat.factorial n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A098695.P14695147217768554293

namespace A098695

/-- `∏[ceil(2^n*n!/2)]` -/
def P14695147217768554293.Spec : Prop :=
  ∀ n, P14695147217768554293.a n = A098695 n

end A098695

/-!
# A098696: Main diagonal of array in A073146.

The programs for A098696, there is no canonical definition to state claims against.
-/

/-! ## A098696.P12656476489806542613

`A073146(∑[4*n])`
-/

namespace A098696.P12656476489806542613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073146 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098696.P12656476489806542613

/-! ## A098696.P1407030314466536455

`2^n*A059516(n)`
-/

namespace A098696.P1407030314466536455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A059516 n

end

end A098696.P1407030314466536455

/-! ## A098696.P646055406626628257

`(A178334(n)+1)*A340837(n)`
-/

namespace A098696.P646055406626628257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + 1) * A340837 n

end

end A098696.P646055406626628257

/-! ## A098696.P3240694844219724966

`A059516(n)*A166444(n+2)`
-/

namespace A098696.P3240694844219724966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059516 n * A166444 (n + 2)

end

end A098696.P3240694844219724966

/-! ## A098696.P1275143678772861914

`A020639(A004277(n))*A340837(n)`
-/

namespace A098696.P1275143678772861914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A340837 n

end

end A098696.P1275143678772861914

/-!
# A098698: Main diagonal of array in A098697.

The programs for A098698, there is no canonical definition to state claims against.
-/

/-! ## A098698.P4474888209779351225

`A098697(∑[4*n])`
-/

namespace A098698.P4474888209779351225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098697 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A098698.P4474888209779351225

